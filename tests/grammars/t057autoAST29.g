grammar t057autoAST29;
options {language=Dart;output=AST;}
a : x=~ID '+' INT ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') {$channel = HIDDEN;} ;
