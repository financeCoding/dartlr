grammar t049treeparserc;
options {
    language=Dart;
    output=AST;
}
a : b c ;
b : ID INT -> ^(ID INT);
c : ID INT;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\\n') {$channel = HIDDEN;} ;
