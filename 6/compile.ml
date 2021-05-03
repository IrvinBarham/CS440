open Tac
exception ImplementMe

(*>* Problem 1.1 *>*)
let rec compile_intexpr (e: intexpr) : code * addr =
	match e with 
  	|Num i -> let z = new_var() in ([Copy (z, ANum i)], ANum i)
  	|Var x -> let z = new_var() in ([Copy (z, AVar x)], AVar z)
  	|NBinop (op, e1, e2) -> let v1 = compile_intexpr e1 in 
        	let v2 = compile_intexpr e2 in 
                match v1, v2 with 
                |(c1, vv1), (c2, vv2) -> let z = new_var() in (c1 @ c2 @ [Binop (z, op, vv1, vv2)], AVar z)

(*>* Problem 1.2 *>*)
let rec compile_boolexpr (e: boolexpr) (t: label) (f: label) : code =
	match e with
  	|Relop (Lt, e1, e2) -> let (c, v) = compile_intexpr(NBinop (Minus, e1, e2)) in c @ [(JumpIfNeg (t, v)); (Jump f)] 
  	|Relop (Gt, e1, e2) -> let (c, v) = compile_intexpr(NBinop (Minus, e1, NBinop (Plus, e2, Num 1))) in c @ [(JumpIfNeg (f, v)); (Jump t)] 
  	|Relop (Eq, e1, e2) -> let (c, v) = compile_intexpr(NBinop (Minus, e1, e2)) in c @ [(JumpIfZero (t, v)); (Jump f)] 
  	|Relop (Le, e1, e2) -> compile_boolexpr (Relop (Gt, e1, e2)) f t
  	|Relop (Ge, e1, e2) -> compile_boolexpr (Relop (Lt, e1, e2)) f t
  	|Relop (Ne, e1, e2) -> compile_boolexpr (Relop (Eq, e1, e2)) f t
  	|And (e1, e2) -> let n_label = new_label () in compile_boolexpr e1 n_label f @ [Label n_label] @ compile_boolexpr e2 t f
  	|Or (e1, e2) -> let n_label = new_label () in compile_boolexpr e1 t n_label @ [Label n_label] @ compile_boolexpr e2 t f
  	|Not e1 -> compile_boolexpr e f t

(*>* Problem 1.3 *>*)
let rec compile_stmt (s: stmt) : code =
 	match s with
  	|Assign (x, e) -> let (c, v) = compile_intexpr(e) in c @ [Copy (x, v)]
  	|If (e, ifb, None) -> let (lif, lend) = (new_label (), new_label()) in 
                                            compile_boolexpr e lif lend @ [Label lif] @ compile_stmt ifb @ [Label lend] 
  	|If (e, ifb, Some elseb) -> let (lif, lelse, lend) = (new_label (), new_label(), new_label ()) in 
                                                        compile_boolexpr e lif lelse @ [Label lif] @ compile_stmt ifb @ [Jump lend ; Label lelse] @ compile_stmt elseb @ [Label lend]
  	|While (e, s) -> let (lb, lend, lsrt) = (new_label(), new_label(), new_label()) in 
                                                    [Label lsrt] @ compile_boolexpr e lb lend @ [Label lb] @ compile_stmt s @ [Jump lsrt; Label lend]
  	|Return e -> let (c, v) = compile_intexpr e in c @ [Ret v]
  	|Block b -> List.concat (List.map compile_stmt b)
