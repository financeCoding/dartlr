// $ANTLR 3.4 t058rewriteAST4Parser.g 2012-06-07 21:59:47
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST4Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST4Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST4Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST4Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST4.g";

  String getRecognizerClassName() => "t058rewriteAST4Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST4.g:
   4:1: a : ID -> ^( ID[\"x\"] INT ) ;*/
  t058rewriteAST4Parser_a_return a() {
    t058rewriteAST4Parser_a_return retval = new t058rewriteAST4Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token ID1 = null;

    Object ID1_tree=null;
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST4.g:
       4:3: ( ID -> ^( ID[\"x\"] INT ) )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST4.g:
       4:5: ID*/
      {
      	ID1 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a21); 
      	 
      	stream_ID.add(ID1);


      	// AST REWRITE
      	// elements: ID
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 4:8: -> ^( ID[\"x\"] INT )*/
      	{
      	    /* ../runtime/dart/tests/grammars/t058rewriteAST4.g:
      	     4:11: ^( ID[\"x\"] INT )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	this._adaptor.create(ID, "x")
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, 
      	    	this._adaptor.create(INT, "INT")
      	    	);

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	}


      	retval.tree = root_0;

      }

      retval.stop = this.input.LT(-1);

        retval.tree = this._adaptor.rulePostProcessing(root_0);
        this._adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
  	  retval.tree = this._adaptor.errorNode(input, retval.start, input.LT(-1), re);
    }

  	finally {
  	  // do for sure before leaving
  	}
  	return retval;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_ID_in_a21 = null;
  static BitSet get FOLLOW_ID_in_a21() {
    if(_FOLLOW_ID_in_a21 == null) 
      _FOLLOW_ID_in_a21 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_a21;
  }



 }




class t058rewriteAST4Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
