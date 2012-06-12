
grammar t058rewriteAST76;
options {language=Dart;output=AST;}
tokens {EXPR;}
decl : type ID '=' INT ';' -> ^(EXPR type ID INT) ;
type : 'int' | 'float' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;