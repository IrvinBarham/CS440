(*** IIT CS 440, Spring 2021 ***)
(*** Homework 2 ***)
(* Irvin Barham *)
(** NFA Simulator *)

(* Same deal here with ignoring some of these lines. *)
module N : ParseNFA.NFA_Types =
  struct
    
    type symbol = char
    type state = int
    (* Type is the same as before except now a transition has a
     * symbol option:
     * (m, Some s, n) is a transition from m to n on seeing symbol s
     * (m, None, n) is an epsilon-transition from m to n
     *)
    type nfa = { states : int;
                 accept : state list;
                 alpha  : symbol list;
                 trans  : (state * symbol option * state) list }

  end

open N
module Parser = ParseNFA.Parser(N)
  
exception IllformedInput of string
exception ImplementMe

(** Some useful helper functions **)

(* Sorts a list and removed duplicates; after you call norm on a list,
 * you can treat it like a set, that is, if (norm l1) = (norm l2), then l1
 * and l2 are equal as sets (have the same elements, regardless of order and
 * multiples)
 *)
let norm l =
  let rec dedup l =
    match l with
    | [] -> []
    | x::t -> x::(dedup (List.filter (fun x' -> x' <> x) t))
  in
  List.sort (fun a b -> a - b) (dedup l)
;;

(* Turns a list of states into a human-readable string. Useful for debugging *)
let string_of_states states =
  Printf.sprintf "{%s}"
    (String.concat ", " (List.map string_of_int states))
;;

(** Your code starts here **)

(*>* Problem 3.1 *>*)

(* Returns a list of states you can be in on seeing symbol symb (which is
 * either Some s for a symbol s, or None for epsilon) in state
 * "state". This is a list and not just a single state because this is
 * an NFA. Note that if symb is None, this should just be the states
 * reachable with one epsilon-transition. *)

let transitions (trans_list : (state * symbol option * state) list)
      (symb: symbol option) (state: state) : state list =
let rec moves (trans_list : (state * symbol option * state) list)
    (symb: symbol option) (state: state) (sts: state list) : state list = 
      match trans_list with 
      |(st1, sy, st2)::t -> if (st1 = state && (sy = symb || sy = None)) 
                          	then moves t symb state (sts @ [st2]) 
                            else moves t symb state sts
      |_ -> sts
  in moves trans_list symb state []
;;

assert (transitions (fst(Parser.parse_file "examples/nfa1")).trans (Some 'a') 0  = [0; 1]);;
assert (transitions (fst(Parser.parse_file "examples/nfa1")).trans (Some 'b') 1  = [2]);;
(*>* Problem 3.2 *>*)

let rec epsilons (trans_list : (state * symbol option * state) list) (state: state)
	(e_sts) : state list =
	match trans_list with
	|(st1, sy, st2)::t -> if (st1 = state && sy = None) 
				then epsilons t state (e_sts @ [st2])
			      else epsilons t state e_sts
	|_ -> e_sts
;; 

(* Returns the list of states accessible by (possibly multiple) epsilon
 * transitions from "states" *)
let rec eps_clos (nfa: nfa) (states: state list) : state list =
	match states with
	|h::t -> (epsilons nfa.trans h [h]) @ (eps_clos nfa t)
	|_ -> []
;;

assert (eps_clos (fst(Parser.parse_file "examples/nfa2")) [0]  = [0; 1; 3]);;

(*>* Problem 3.3 *>*)

(* Returns true if nfa accepts input: "states" is the list of states we
 * might be in currently *)

let rec contains symbols k =
	match symbols with
	|[] -> false
	|h::t -> if h = k then true else contains t k
;;

let rec trans_sts (nfa: nfa) (states': state list) (input: symbol) : state list =  
	match states' with
	|h::t -> norm((transitions nfa.trans(Some input) h) @ (trans_sts nfa t input))
	|_ -> []
;;

let rec check_lists (states: state list) (accept_sts: state list) : bool =
	match states with
	|h::t -> if contains accept_sts h then true
			else check_lists t accept_sts
	|_ -> false
;;

let rec nfa_sim (nfa: nfa) (states: state list) (input: symbol list) : bool =
  let run =
  	let states' = eps_clos nfa states in
  let rec final_st (nfa: nfa) (states': state list) (input: symbol list) : state list =
	match input with
	|h::t -> norm ((trans_sts nfa states' h) @ (final_st nfa states' input))
	|_ -> []
in final_st nfa states' input in
	if check_lists run nfa.accept then true
		else false
;;
