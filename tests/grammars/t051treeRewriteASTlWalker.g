// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTlWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTl;
}
a : ^(b INT) ;
b : ID ;
