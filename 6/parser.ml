type token =
  | NUM of (int)
  | IDENT of (string)
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
  | NE
  | EQ
  | EQUAL
  | IF
  | ELSE
  | LBRACE
  | RBRACE
  | WHILE
  | LPAREN
  | RPAREN
  | SEMI
  | RETURN
  | EOF

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
    open Tac
# 33 "parser.ml"
let yytransl_const = [|
  259 (* PLUS *);
  260 (* MINUS *);
  261 (* TIMES *);
  262 (* DIV *);
  263 (* AND *);
  264 (* OR *);
  265 (* LT *);
  266 (* LE *);
  267 (* GT *);
  268 (* GE *);
  269 (* NE *);
  270 (* EQ *);
  271 (* EQUAL *);
  272 (* IF *);
  273 (* ELSE *);
  274 (* LBRACE *);
  275 (* RBRACE *);
  276 (* WHILE *);
  277 (* LPAREN *);
  278 (* RPAREN *);
  279 (* SEMI *);
  280 (* RETURN *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* NUM *);
  258 (* IDENT *);
    0|]

let yylhs = "\255\255\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\004\000\004\000\004\000\004\000\004\000\006\000\006\000\005\000\
\005\000\001\000\000\000"

let yylen = "\002\000\
\001\000\001\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\004\000\005\000\003\000\003\000\003\000\002\000\000\000\001\000\
\003\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\027\000\000\000\
\000\000\000\000\001\000\002\000\000\000\000\000\000\000\000\000\
\000\000\000\000\022\000\026\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\024\000\000\000\020\000\000\000\
\021\000\017\000\007\000\016\000\000\000\000\000\005\000\006\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\025\000\018\000"

let yydgoto = "\002\000\
\007\000\014\000\015\000\008\000\038\000\009\000"

let yysindex = "\010\000\
\176\255\000\000\007\255\044\255\044\255\087\255\000\000\176\255\
\020\000\087\255\000\000\000\000\044\255\230\255\156\255\156\255\
\087\255\198\255\000\000\000\000\202\255\206\255\028\255\087\255\
\087\255\087\255\087\255\087\255\087\255\087\255\087\255\087\255\
\087\255\044\255\044\255\176\255\000\000\009\255\000\000\226\255\
\000\000\000\000\000\000\000\000\033\255\033\255\000\000\000\000\
\246\255\246\255\246\255\246\255\246\255\246\255\041\255\041\255\
\011\255\173\255\000\000\000\000"

let yyrindex = "\000\000\
\024\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\022\255\000\000\001\000\000\000\000\000\
\000\000\000\000\000\000\000\000\005\255\059\255\000\000\000\000\
\078\255\085\255\104\255\111\255\130\255\137\255\149\255\166\255\
\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\027\000\253\255\245\255\240\255\254\255"

let yytablesize = 281
let yytable = "\039\000\
\019\000\016\000\023\000\037\000\037\000\019\000\003\000\003\000\
\003\000\023\000\001\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\020\000\003\000\010\000\003\000\023\000\
\003\000\058\000\003\000\003\000\003\000\059\000\055\000\056\000\
\018\000\057\000\034\000\035\000\021\000\026\000\027\000\022\000\
\023\000\060\000\000\000\040\000\011\000\012\000\037\000\034\000\
\035\000\044\000\045\000\046\000\047\000\048\000\049\000\050\000\
\051\000\052\000\053\000\054\000\004\000\004\000\004\000\000\000\
\013\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
\004\000\000\000\004\000\000\000\004\000\000\000\004\000\011\000\
\004\000\004\000\004\000\000\000\011\000\011\000\012\000\011\000\
\012\000\000\000\000\000\012\000\012\000\011\000\000\000\011\000\
\000\000\011\000\000\000\011\000\012\000\011\000\012\000\000\000\
\012\000\013\000\012\000\017\000\012\000\000\000\013\000\013\000\
\014\000\000\000\000\000\000\000\000\000\014\000\014\000\013\000\
\000\000\013\000\000\000\013\000\000\000\013\000\014\000\013\000\
\014\000\000\000\014\000\015\000\014\000\000\000\014\000\000\000\
\015\000\015\000\010\000\000\000\000\000\000\000\000\000\010\000\
\010\000\015\000\000\000\015\000\000\000\015\000\008\000\015\000\
\010\000\015\000\010\000\000\000\010\000\003\000\010\000\000\000\
\010\000\000\000\034\000\035\000\008\000\000\000\008\000\009\000\
\008\000\000\000\008\000\004\000\008\000\036\000\003\000\005\000\
\000\000\003\000\000\000\006\000\000\000\009\000\000\000\009\000\
\000\000\009\000\000\000\009\000\004\000\009\000\036\000\004\000\
\005\000\000\000\000\000\005\000\006\000\000\000\000\000\006\000\
\024\000\025\000\026\000\027\000\024\000\025\000\026\000\027\000\
\024\000\025\000\026\000\027\000\000\000\000\000\028\000\029\000\
\030\000\031\000\032\000\033\000\041\000\000\000\000\000\000\000\
\042\000\000\000\000\000\043\000\024\000\025\000\026\000\027\000\
\024\000\025\000\026\000\027\000\000\000\000\000\028\000\029\000\
\030\000\031\000\032\000\033\000\000\000\000\000\000\000\043\000\
\024\000\025\000\026\000\027\000\000\000\000\000\000\000\000\000\
\000\000\000\000\019\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\019\000\000\000\000\000\019\000\019\000\023\000\000\000\000\000\
\019\000"

let yycheck = "\016\000\
\000\000\005\000\000\000\015\000\016\000\008\000\002\001\003\001\
\004\001\013\000\001\000\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\014\001\000\000\016\001\015\001\018\001\000\000\
\020\001\017\001\022\001\023\001\024\001\019\001\034\000\035\000\
\006\000\036\000\007\001\008\001\010\000\005\001\006\001\013\000\
\019\001\058\000\255\255\017\000\001\001\002\001\058\000\007\001\
\008\001\022\001\024\000\025\000\026\000\027\000\028\000\029\000\
\030\000\031\000\032\000\033\000\002\001\003\001\004\001\255\255\
\021\001\007\001\008\001\009\001\010\001\011\001\012\001\013\001\
\014\001\255\255\016\001\255\255\018\001\255\255\020\001\002\001\
\022\001\023\001\024\001\255\255\007\001\008\001\002\001\001\001\
\002\001\255\255\255\255\007\001\008\001\016\001\255\255\018\001\
\255\255\020\001\255\255\022\001\016\001\024\001\018\001\255\255\
\020\001\002\001\022\001\021\001\024\001\255\255\007\001\008\001\
\002\001\255\255\255\255\255\255\255\255\007\001\008\001\016\001\
\255\255\018\001\255\255\020\001\255\255\022\001\016\001\024\001\
\018\001\255\255\020\001\002\001\022\001\255\255\024\001\255\255\
\007\001\008\001\002\001\255\255\255\255\255\255\255\255\007\001\
\008\001\016\001\255\255\018\001\255\255\020\001\002\001\022\001\
\016\001\024\001\018\001\255\255\020\001\002\001\022\001\255\255\
\024\001\255\255\007\001\008\001\016\001\255\255\018\001\002\001\
\020\001\255\255\022\001\016\001\024\001\018\001\002\001\020\001\
\255\255\002\001\255\255\024\001\255\255\016\001\255\255\018\001\
\255\255\020\001\255\255\022\001\016\001\024\001\018\001\016\001\
\020\001\255\255\255\255\020\001\024\001\255\255\255\255\024\001\
\003\001\004\001\005\001\006\001\003\001\004\001\005\001\006\001\
\003\001\004\001\005\001\006\001\255\255\255\255\009\001\010\001\
\011\001\012\001\013\001\014\001\023\001\255\255\255\255\255\255\
\023\001\255\255\255\255\022\001\003\001\004\001\005\001\006\001\
\003\001\004\001\005\001\006\001\255\255\255\255\009\001\010\001\
\011\001\012\001\013\001\014\001\255\255\255\255\255\255\022\001\
\003\001\004\001\005\001\006\001\255\255\255\255\255\255\255\255\
\255\255\255\255\002\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\016\001\255\255\255\255\019\001\020\001\019\001\255\255\255\255\
\024\001"

let yynames_const = "\
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
  NE\000\
  EQ\000\
  EQUAL\000\
  IF\000\
  ELSE\000\
  LBRACE\000\
  RBRACE\000\
  WHILE\000\
  LPAREN\000\
  RPAREN\000\
  SEMI\000\
  RETURN\000\
  EOF\000\
  "

let yynames_block = "\
  NUM\000\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 29 "parser.mly"
                                           ( Num _1 )
# 228 "parser.ml"
               : 'iexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 30 "parser.mly"
                                           ( Var _1 )
# 235 "parser.ml"
               : 'iexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'iexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'iexpr) in
    Obj.repr(
# 31 "parser.mly"
                                           ( NBinop (Plus, _1, _3) )
# 243 "parser.ml"
               : 'iexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'iexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'iexpr) in
    Obj.repr(
# 32 "parser.mly"
                                           ( NBinop (Minus, _1, _3) )
# 251 "parser.ml"
               : 'iexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'iexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'iexpr) in
    Obj.repr(
# 33 "parser.mly"
                                           ( NBinop (Times, _1, _3) )
# 259 "parser.ml"
               : 'iexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'iexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'iexpr) in
    Obj.repr(
# 34 "parser.mly"
                                           ( NBinop (Div, _1, _3) )
# 267 "parser.ml"
               : 'iexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'iexpr) in
    Obj.repr(
# 35 "parser.mly"
                                           ( _2 )
# 274 "parser.ml"
               : 'iexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'bexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'bexpr) in
    Obj.repr(
# 39 "parser.mly"
                                             ( And (_1, _3) )
# 282 "parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'bexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'bexpr) in
    Obj.repr(
# 40 "parser.mly"
                                             ( Or (_1, _3) )
# 290 "parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'iexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'iexpr) in
    Obj.repr(
# 41 "parser.mly"
                                             ( Relop (Eq, _1, _3) )
# 298 "parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'iexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'iexpr) in
    Obj.repr(
# 42 "parser.mly"
                                             ( Relop (Lt, _1, _3) )
# 306 "parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'iexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'iexpr) in
    Obj.repr(
# 43 "parser.mly"
                                             ( Relop (Le, _1, _3) )
# 314 "parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'iexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'iexpr) in
    Obj.repr(
# 44 "parser.mly"
                                             ( Relop (Gt, _1, _3) )
# 322 "parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'iexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'iexpr) in
    Obj.repr(
# 45 "parser.mly"
                                             ( Relop (Ge, _1, _3) )
# 330 "parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'iexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'iexpr) in
    Obj.repr(
# 46 "parser.mly"
                                             ( Relop (Ne, _1, _3) )
# 338 "parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'bexpr) in
    Obj.repr(
# 47 "parser.mly"
                                             ( _2 )
# 345 "parser.ml"
               : 'bexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'iexpr) in
    Obj.repr(
# 51 "parser.mly"
                                           ( Assign (_1, _3) )
# 353 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'bexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'block) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'block) in
    Obj.repr(
# 52 "parser.mly"
                                           ( If (_2, _3, Some _5) )
# 362 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'bexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'block) in
    Obj.repr(
# 53 "parser.mly"
                                           ( If (_2, _3, None) )
# 370 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'bexpr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'block) in
    Obj.repr(
# 54 "parser.mly"
                                           ( While (_2, _3) )
# 378 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'iexpr) in
    Obj.repr(
# 55 "parser.mly"
                                           ( Return _2 )
# 385 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 59 "parser.mly"
                                           ( _1::_2 )
# 393 "parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "parser.mly"
                                           ( [] )
# 399 "parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 64 "parser.mly"
                                           ( Block [_1] )
# 406 "parser.ml"
               : 'block))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 65 "parser.mly"
                                           ( Block _2 )
# 413 "parser.ml"
               : 'block))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 69 "parser.mly"
                                           ( Block _1 )
# 420 "parser.ml"
               : Tac.stmt))
(* Entry prog *)
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
let prog (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Tac.stmt)
