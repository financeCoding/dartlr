grammar t058rewriteAST70;
options {language=Dart;output=AST;} 
tokens {PARMS;} 
modulo 
 : 'modulo' ID ('(' parms+ ')')? -> ^('modulo' ID ^(PARMS parms+)?) 
 ; 
parms : '#'|ID; 
ID : ('a'..'z' | 'A'..'Z')+;
WS : (' '|'\n') {$channel = HIDDEN;} ;