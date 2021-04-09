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

val expr :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Types.exp
