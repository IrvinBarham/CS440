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

val prog :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Tac.stmt
