(*** IIT CS 440, Spring 2021 ***)
(*** Homework 2 ***)
(*Irvin Barham*)
(** DFA Simulator *)

(* Ignore these next two lines... *)
module D : ParseDFA.DFA_Types =
  struct

    (* These are the type definitions for DFAs *)
    type symbol = char
    type state = int
    type dfa = { states : int; (* Number of states *)
                 (* States are numbered 0 through states
                  * State 0 is the start state *)
                 accept : state list; (* List of accept states *)
                 alpha  : symbol list; (* Alphabet of the DFA *)
                 trans  : (state * symbol * state) list
                   (* List of transitions in the form
                    * (from state, transition symbol, to state) *)
               }

                 (* Ignore the next few lines too. *)
  end

open D
module Parser = ParseDFA.Parser(D)

(* OK, stop ignoring. *)

exception ImplementMe
exception IllformedInput of string

(*>* Problem 2.1 *>*)

(* Returns the new state after seeing symbol symb in state "state".
 * trans_list is the list of transitions for the DFA 
 * Raises IllformedInput with an informative message if the state and
 * symbol aren't found in the transition list *)
let rec transition (trans_list : (state * symbol * state) list)
          (symb : symbol) (state: state) : state = 
	match trans_list with
	|(st1, sy, st2)::t -> if (st1 = state && sy = symb) then st2
				 else transition t symb state
				   |_ -> raise (IllformedInput(Printf.sprintf "State, symbol pair (%d, %c) not in transitions" state symb))
;; 

assert (transition (fst (Parser.parse_file "examples/dfa1")).trans 'a' 0 = 1);;
assert (transition (fst (Parser.parse_file "examples/dfa1")).trans 'b' 1 = 1);;
assert (transition (fst (Parser.parse_file "examples/dfa1")).trans 'c' 1 = 0);;
(*>* Problem 2.2 *>*)

(* Return true if dfa accepts input starting from state, false otherwise
 * Raises IllformedInput with an informative message if a symbol in the
 * input isn't in the alphabet. *)

let rec contains symbols k =
        match symbols with
        |[] -> false
        |h::t -> if h = k then true else contains t k
;;

let rec dfa_sim (dfa: dfa) (state: state) (input: symbol list) : bool =
	match input with
	|[] -> false
	|h::t -> if (contains dfa.alpha h = true && contains dfa.accept (transition dfa.trans h state) = true) 
			then true
		 else dfa_sim dfa (transition dfa.trans h state) t
;;

assert (dfa_sim (fst(Parser.parse_file "examples/dfa1")) 1 ['b'] = true);;
assert (dfa_sim (fst(Parser.parse_file "examples/dfa1")) 1 ['a'] = true);;
assert (dfa_sim (fst(Parser.parse_file "examples/dfa1")) 0 ['b'] = false);;
assert (dfa_sim (fst(Parser.parse_file "examples/dfa1")) 0 ['a'] = true);;
assert (dfa_sim (fst(Parser.parse_file "examples/dfa1")) 1 ['c'] = false);;
assert (dfa_sim (fst(Parser.parse_file "examples/dfa1")) 0 ['d'] = false);;
assert (dfa_sim (fst(Parser.parse_file "examples/dfa1")) 1 ['d'] = true);;
