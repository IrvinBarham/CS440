(*** IIT CS 440, Spring 2021 ***)
(*** Homework 0 ***)
(* Irvin Barham *)

exception ImplementMe

(** Lists *)

(* IMPORTANT: Do not remove any lines beginning *>*, like the following one.
 * These are used by our autograder and need to be there for you to get points. 
 *)
(*>* Task 4.1 *>*)

let rec stutter (n: int) (x: 'a) : 'a list =
  (* Remove the line "raise ImplementMe" and write your code for Task 4.1
   * here. Do not change the signature above. *)
	match n with
	|0 -> []
	|_ -> x :: (stutter (n - 1) x);;
;;

(* A couple example unit tests. Write these for each function you implement.
 * Uncomment them once you've implemented stutter. *)

assert (stutter 0 5 = []);;
assert (stutter 2 5 = [5; 5]);;


(*>* Task 4.2 *>*)

let rec filter (f: 'a -> bool) (l: 'a list) : 'a list =
	match l with
	|[] -> []
	|h::t -> if f h then h :: (filter f t)
			else filter f t
;;

assert (filter (fun x -> x > 2) [5; 3; 1; 2; 4] = [5; 3; 4]);;
assert (filter (fun x -> x > 5) [5; 3; 1; 2; 4] = []);;

(*>* Task 4.3 *>*)

let rec find (f: 'a -> bool) (l: 'a list) : 'a option =
	match l with
	|[] -> None
	|h::t -> if f h then Some h 
		 else find f t;;	
;;

assert (find (fun x -> x > 2) [5;3;1;2;4] = Some 5);;
assert (find (fun x -> x > 5) [5;3;1;2;4] = None);;

(*>* Task 4.4 *>*)

let rec helper_paren l u = 
	match (l, u) with ([], a) -> a = 0
	|(h::t, a) -> if h = '(' then helper_paren t (a + 1)
			else if h = ')' && a > 0 then helper_paren t (a - 1)
			else if h = ')' then false
			else helper_paren t a
;;

let parens (l: char list) : bool =
	helper_paren l 0
;;

assert (parens ['('; ')'; '('] == false);;
assert (parens ['('; ')'; '('; ')'] == true);;

(*>* Task 4.5 *>*)

let rec index y f x = 
	match y with
	|[] -> -1
	|h::t -> if f h then x else index t f (x + 1)
;;

let rec helper_2D f lines x =
	match lines with
	|[] -> None
	|h::t -> let i = index h f 0
	in
	if i = -1 then helper_2D f t (x + 1)
	else Some (x, i)
;;

let find2D (f: 'a -> bool) (lines: 'a list list) : (int * int) option =
	helper_2D f lines 0
;;

assert (find2D (fun _ -> true) [] = None);;
assert (find2D (fun _ -> true) [[]; []] = None);;
let file =
  [[1;2;3;4;5];
   [5;4;3;2;1];
   [10;9;8;7;6];
   [2;4;6;8;10;12]]
;;
assert (find2D ((=) 5) file = Some (0, 4));;
assert (find2D ((<) 5) file = Some (2, 0));;
assert (find2D ((<) 10) file = Some (3, 5));;
