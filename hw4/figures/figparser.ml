type token =
  | NUM of (int)
  | STRING of (string)
  | IDENT of (string)
  | CAPTION
  | ABOVE
  | LEFT
  | RIGHT
  | BELOW
  | OVER
  | LBRACE
  | RBRACE
  | LPAREN
  | RPAREN
  | HORIZ
  | VERT
  | BORDER
  | EOF

open Parsing;;
let _ = parse_error;;
# 2 "figparser.mly"
    open Figures
    exception ImplementMe
# 26 "figparser.ml"
let yytransl_const = [|
  260 (* CAPTION *);
  261 (* ABOVE *);
  262 (* LEFT *);
  263 (* RIGHT *);
  264 (* BELOW *);
  265 (* OVER *);
  266 (* LBRACE *);
  267 (* RBRACE *);
  268 (* LPAREN *);
  269 (* RPAREN *);
  270 (* HORIZ *);
  271 (* VERT *);
  272 (* BORDER *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* NUM *);
  258 (* STRING *);
  259 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\005\000\005\000\002\000\002\000\003\000\
\003\000\003\000\003\000\003\000\006\000\006\000\007\000\007\000\
\008\000\008\000\009\000\009\000\004\000\004\000\004\000\000\000"

let yylen = "\002\000\
\005\000\005\000\001\000\001\000\000\000\001\000\002\000\006\000\
\006\000\006\000\006\000\006\000\000\000\001\000\000\000\001\000\
\000\000\001\000\000\000\001\000\003\000\004\000\005\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\024\000\003\000\000\000\
\018\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\
\014\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\021\000\000\000\000\000\000\000\
\000\000\000\000\000\000\001\000\007\000\000\000\022\000\002\000\
\008\000\011\000\010\000\009\000\012\000\023\000"

let yydgoto = "\002\000\
\006\000\025\000\026\000\010\000\011\000\018\000\000\000\012\000\
\000\000"

let yysindex = "\009\000\
\019\255\000\000\004\255\010\255\010\255\000\000\000\000\008\255\
\000\000\000\000\005\255\001\255\009\255\016\255\020\255\002\255\
\000\000\033\255\020\255\010\255\010\255\010\255\010\255\010\255\
\025\255\020\255\021\255\036\255\000\000\028\255\027\255\029\255\
\030\255\031\255\032\255\000\000\000\000\039\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\254\254\254\254\000\000\000\000\000\000\
\000\000\000\000\000\000\044\255\000\000\000\000\000\000\044\255\
\000\000\000\000\000\000\000\255\000\255\000\255\000\255\000\255\
\000\000\037\255\044\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\243\255\046\000\006\000\044\000\249\255\000\000\000\000\
\000\000"

let yytablesize = 49
let yytable = "\017\000\
\017\000\017\000\017\000\016\000\027\000\030\000\008\000\005\000\
\028\000\001\000\009\000\014\000\037\000\017\000\015\000\017\000\
\017\000\017\000\019\000\038\000\020\000\021\000\022\000\023\000\
\024\000\031\000\032\000\033\000\034\000\035\000\003\000\003\000\
\004\000\005\000\029\000\036\000\017\000\039\000\040\000\041\000\
\046\000\042\000\043\000\044\000\045\000\013\000\007\000\006\000\
\013\000"

let yycheck = "\002\001\
\003\001\002\001\003\001\003\001\003\001\019\000\003\001\010\001\
\016\000\001\000\001\001\004\001\026\000\016\001\010\001\016\001\
\016\001\016\001\010\001\027\000\005\001\006\001\007\001\008\001\
\009\001\020\000\021\000\022\000\023\000\024\000\012\001\012\001\
\014\001\015\001\002\001\011\001\016\001\002\001\011\001\013\001\
\002\001\013\001\013\001\013\001\013\001\002\001\001\000\011\001\
\005\000"

let yynames_const = "\
  CAPTION\000\
  ABOVE\000\
  LEFT\000\
  RIGHT\000\
  BELOW\000\
  OVER\000\
  LBRACE\000\
  RBRACE\000\
  LPAREN\000\
  RPAREN\000\
  HORIZ\000\
  VERT\000\
  BORDER\000\
  EOF\000\
  "

let yynames_block = "\
  NUM\000\
  STRING\000\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'optcap) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Figures.cell list) in
    Obj.repr(
# 25 "figparser.mly"
                                      ( let t = table_one_row _4 in
					match _2 with
					| Some div ->
					   table_one_col
					     [tabcell None t; tabcell None div]
					| None -> t
				      )
# 148 "figparser.ml"
               : Figures.content))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'optcap) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Figures.cell list) in
    Obj.repr(
# 32 "figparser.mly"
                                     ( let t = table_one_col _4 in
					match _2 with
					| Some div ->
					   table_one_row
					     [tabcell None t; tabcell None div]
					| None -> t
				      )
# 162 "figparser.ml"
               : Figures.content))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Figures.content) in
    Obj.repr(
# 39 "figparser.mly"
                                      ( _1 )
# 169 "figparser.ml"
               : Figures.content))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Figures.content) in
    Obj.repr(
# 43 "figparser.mly"
                                           ( Some _1 )
# 176 "figparser.ml"
               : 'optcap))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "figparser.mly"
                                           ( None )
# 182 "figparser.ml"
               : 'optcap))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Figures.content) in
    Obj.repr(
# 50 "figparser.mly"
                      ( [(tabcell None _1)] )
# 189 "figparser.ml"
               : Figures.cell list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Figures.content) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Figures.cell list) in
    Obj.repr(
# 52 "figparser.mly"
                     ( (tabcell None _1) :: _2  )
# 197 "figparser.ml"
               : Figures.cell list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : Figures.content) in
    Obj.repr(
# 59 "figparser.mly"
                                            ( table_one_col
	[(tabcell None _5); (tabcell (Some _2) nocontent)] )
# 206 "figparser.ml"
               : Figures.content))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : Figures.content) in
    Obj.repr(
# 62 "figparser.mly"
                                            ( table_one_col 
        [(tabcell (Some _2) nocontent); (tabcell None _5)] )
# 215 "figparser.ml"
               : Figures.content))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : Figures.content) in
    Obj.repr(
# 65 "figparser.mly"
                                            ( table_one_row
        [(tabcell (Some _2) nocontent); (tabcell None _5)] )
# 224 "figparser.ml"
               : Figures.content))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : Figures.content) in
    Obj.repr(
# 68 "figparser.mly"
                                           ( table_one_row
        [(tabcell None _5); (tabcell (Some _2) nocontent)] )
# 233 "figparser.ml"
               : Figures.content))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : Figures.content) in
    Obj.repr(
# 71 "figparser.mly"
                                           ( table_one_row
        [(tabcell (Some _2) _5)] )
# 242 "figparser.ml"
               : Figures.content))
; (fun __caml_parser_env ->
    Obj.repr(
# 77 "figparser.mly"
                                           ( false )
# 248 "figparser.ml"
               : 'optborder))
; (fun __caml_parser_env ->
    Obj.repr(
# 78 "figparser.mly"
                                           ( true )
# 254 "figparser.ml"
               : 'optborder))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "figparser.mly"
                                           ( None )
# 260 "figparser.ml"
               : 'optfont))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 83 "figparser.mly"
                                           ( Some _1 )
# 267 "figparser.ml"
               : 'optfont))
; (fun __caml_parser_env ->
    Obj.repr(
# 87 "figparser.mly"
                                           ( None )
# 273 "figparser.ml"
               : 'optsize))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 88 "figparser.mly"
                                           ( Some _1 )
# 280 "figparser.ml"
               : 'optsize))
; (fun __caml_parser_env ->
    Obj.repr(
# 92 "figparser.mly"
                                           ( None )
# 286 "figparser.ml"
               : 'optcolor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 93 "figparser.mly"
                                           ( Some _1 )
# 293 "figparser.ml"
               : 'optcolor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'optsize) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'optborder) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 98 "figparser.mly"
                                     ( div Center None _1 None _2 _3 )
# 302 "figparser.ml"
               : Figures.content))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'optsize) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'optborder) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 100 "figparser.mly"
                                     ( div Center (Some _2) _1 None _3 _4 )
# 312 "figparser.ml"
               : Figures.content))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'optsize) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'optborder) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 102 "figparser.mly"
                                     ( div Center (Some _2) _1 (Some _3) _4 _5 )
# 323 "figparser.ml"
               : Figures.content))
(* Entry figure *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let figure (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Figures.content)
