type token =
  | NUM of (int)
  | IDENT of (string)
  | TRUE
  | FALSE
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | AND
  | OR
  | LT
  | LE
  | GT
  | GE
  | EQOP
  | EQUAL
  | IF
  | THEN
  | ELSE
  | APP
  | TO
  | LET
  | IN
  | FUN
  | ARROW
  | EOF

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
    open Types
# 34 "parser.ml"
let yytransl_const = [|
  259 (* TRUE *);
  260 (* FALSE *);
  261 (* PLUS *);
  262 (* MINUS *);
  263 (* TIMES *);
  264 (* DIV *);
  265 (* AND *);
  266 (* OR *);
  267 (* LT *);
  268 (* LE *);
  269 (* GT *);
  270 (* GE *);
  271 (* EQOP *);
  272 (* EQUAL *);
  273 (* IF *);
  274 (* THEN *);
  275 (* ELSE *);
  276 (* APP *);
  277 (* TO *);
  278 (* LET *);
  279 (* IN *);
  280 (* FUN *);
  281 (* ARROW *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* NUM *);
  258 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\002\000\002\000\002\000\000\000"

let yylen = "\002\000\
\001\000\001\000\001\000\004\000\006\000\006\000\004\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\019\000\002\000\020\000\021\000\008\000\009\000\
\010\000\011\000\012\000\013\000\014\000\015\000\016\000\017\000\
\018\000\000\000\000\000\000\000\000\000\022\000\001\000\003\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\007\000\000\000\004\000\000\000\000\000\005\000\006\000"

let yydgoto = "\002\000\
\022\000\023\000\024\000"

let yysindex = "\014\000\
\255\254\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\255\254\255\254\018\255\020\255\000\000\000\000\000\000\
\006\255\004\255\010\255\002\255\255\254\255\254\255\254\255\254\
\013\255\000\000\011\255\000\000\255\254\255\254\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\255\255\000\000\000\000"

let yytablesize = 37
let yytable = "\003\000\
\004\000\005\000\006\000\007\000\008\000\009\000\010\000\011\000\
\012\000\013\000\014\000\015\000\016\000\017\000\001\000\018\000\
\025\000\026\000\019\000\027\000\020\000\028\000\021\000\029\000\
\030\000\031\000\032\000\033\000\034\000\035\000\036\000\037\000\
\000\000\038\000\000\000\039\000\040\000"

let yycheck = "\001\001\
\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\001\000\017\001\
\018\000\019\000\020\001\002\001\022\001\002\001\024\001\018\001\
\021\001\016\001\025\001\029\000\030\000\031\000\032\000\019\001\
\255\255\023\001\255\255\037\000\038\000"

let yynames_const = "\
  TRUE\000\
  FALSE\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIV\000\
  AND\000\
  OR\000\
  LT\000\
  LE\000\
  GT\000\
  GE\000\
  EQOP\000\
  EQUAL\000\
  IF\000\
  THEN\000\
  ELSE\000\
  APP\000\
  TO\000\
  LET\000\
  IN\000\
  FUN\000\
  ARROW\000\
  EOF\000\
  "

let yynames_block = "\
  NUM\000\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'const) in
    Obj.repr(
# 23 "parser.mly"
                                           ( Value (Const _1) )
# 158 "parser.ml"
               : Types.exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 24 "parser.mly"
                                           ( Var _1 )
# 165 "parser.ml"
               : Types.exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'op) in
    Obj.repr(
# 25 "parser.mly"
                                           ( Value (Op _1) )
# 172 "parser.ml"
               : Types.exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Types.exp) in
    Obj.repr(
# 26 "parser.mly"
                                           ( Value (Fun (_2, _4)) )
# 180 "parser.ml"
               : Types.exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : Types.exp) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : Types.exp) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Types.exp) in
    Obj.repr(
# 27 "parser.mly"
                                           ( If (_2, _4, _6) )
# 189 "parser.ml"
               : Types.exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : Types.exp) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Types.exp) in
    Obj.repr(
# 28 "parser.mly"
                                           ( Let (_2, _4, _6) )
# 198 "parser.ml"
               : Types.exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : Types.exp) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Types.exp) in
    Obj.repr(
# 29 "parser.mly"
                                           ( App (_2, _4) )
# 206 "parser.ml"
               : Types.exp))
; (fun __caml_parser_env ->
    Obj.repr(
# 33 "parser.mly"
        ( Plus )
# 212 "parser.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 34 "parser.mly"
        ( Minus )
# 218 "parser.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 35 "parser.mly"
        ( Times )
# 224 "parser.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 36 "parser.mly"
        ( Div )
# 230 "parser.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "parser.mly"
        ( And )
# 236 "parser.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "parser.mly"
        ( Or )
# 242 "parser.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 39 "parser.mly"
        ( Lt )
# 248 "parser.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 40 "parser.mly"
        ( Le )
# 254 "parser.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 41 "parser.mly"
        ( Gt )
# 260 "parser.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 42 "parser.mly"
        ( Ge )
# 266 "parser.ml"
               : 'op))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "parser.mly"
        ( Eq )
# 272 "parser.ml"
               : 'op))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 47 "parser.mly"
                                           ( Int _1 )
# 279 "parser.ml"
               : 'const))
; (fun __caml_parser_env ->
    Obj.repr(
# 48 "parser.mly"
                                           ( True )
# 285 "parser.ml"
               : 'const))
; (fun __caml_parser_env ->
    Obj.repr(
# 49 "parser.mly"
                                           ( False )
# 291 "parser.ml"
               : 'const))
(* Entry expr *)
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
let expr (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Types.exp)
