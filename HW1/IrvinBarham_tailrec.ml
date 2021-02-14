(*** IIT CS 440, Spring 2021 ***)
(*** Homework 1 ***)
(*Irvin Barham*)
exception ImplementMe
;;

(** Tail Recursion **)

(*>* Problem 1.1 *>*)
let fact (n: int) : int =
	let rec helper n a =
        	if n > 0 then helper (n - 1) (a * n)
        	else a in helper n 1
;;

assert (fact 5 = 120);;

(*>* Problem 1.2 *>*)
let split (l: 'a list) : 'a list * 'a list =
    let rec helper_split a1 a2 = function
    |[] -> a1, a2
    |h::t -> helper_split a2 (h::a1) t
    in helper_split [] [] l
;;

(*>* Problem 1.3 *>*)
let reverse l =
	let rec helper_reverse acc = function
	|[] -> acc
	|h::t -> helper_reverse (h::acc) t
	in
	helper_reverse [] l
;;

let foldr (f: 'a -> 'b -> 'b) (l: 'a list) (u: 'b)  =
	let rev = reverse l
	in
	let rec foldr_helper acc = function
		|[] -> acc
		|h::t -> foldr_helper (f h acc) t
 	in
 	foldr_helper u rev
;;

