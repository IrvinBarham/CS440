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

val figure :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Figures.content
