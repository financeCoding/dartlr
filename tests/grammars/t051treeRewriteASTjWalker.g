// @@ANTLR Tool Options@@: -trace
tree grammar t051treeRewriteASTjWalker;
options {
    language=Dart;
    output=AST;
    ASTLabelType=CommonTree;
    tokenVocab=t051treeRewriteASTj;
}
a : ^(x=ID y=INT)
  ;
