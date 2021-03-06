// $ANTLR 3.4 t058rewriteAST12Parser.g 2012-06-07 21:59:44
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t058rewriteAST12Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS", "'void'"
  ];

  static final int EOF = -1;
  static final int T__7 = 7;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t058rewriteAST12Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t058rewriteAST12Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t058rewriteAST12Parser._tokenNames;

  String get grammarFileName() => "t058rewriteAST12.g";

  String getRecognizerClassName() => "t058rewriteAST12Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t058rewriteAST12.g:
   4:1: a : 'void' ID INT -> 'void' ^( INT ID ) ;*/
  t058rewriteAST12Parser_a_return a() {
    t058rewriteAST12Parser_a_return retval = new t058rewriteAST12Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token string_literal1 = null;
    Token ID2 = null;
    Token INT3 = null;

    Object string_literal1_tree=null;
    Object ID2_tree=null;
    Object INT3_tree=null;
    RewriteRuleTokenStream stream_7=new RewriteRuleTokenStream(this._adaptor,"token 7");
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t058rewriteAST12.g:
       4:3: ( 'void' ID INT -> 'void' ^( INT ID ) )*/
      /* ../runtime/dart/tests/grammars/t058rewriteAST12.g:
       4:5: 'void' ID INT*/
      {
      	string_literal1 = this.matchSymbol(this.input,
      	    7,FOLLOW_7_in_a21); 
      	 
      	stream_7.add(string_literal1);


      	ID2 = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a23); 
      	 
      	stream_ID.add(ID2);


      	INT3 = this.matchSymbol(this.input,
      	    INT,FOLLOW_INT_in_a25); 
      	 
      	stream_INT.add(INT3);


      	// AST REWRITE
      	// elements: ID, 7, INT
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 4:19: -> 'void' ^( INT ID )*/
      	{
      	    this._adaptor.addChild(root_0, 
      	    stream_7.nextNode()
      	    );

      	    /* ../runtime/dart/tests/grammars/t058rewriteAST12.g:
      	     4:29: ^( INT ID )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(
      	    	stream_INT.nextNode()
      	    	, root_1);

      	    	this._adaptor.addChild(root_1, 
      	    	stream_ID.nextNode()
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



 

  static BitSet _FOLLOW_7_in_a21 = null;
  static BitSet get FOLLOW_7_in_a21() {
    if(_FOLLOW_7_in_a21 == null) 
      _FOLLOW_7_in_a21 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_7_in_a21;
  }

  static BitSet _FOLLOW_ID_in_a23 = null;
  static BitSet get FOLLOW_ID_in_a23() {
    if(_FOLLOW_ID_in_a23 == null) 
      _FOLLOW_ID_in_a23 = 
        new BitSet.fromList([0x0000000000000020]);
    return _FOLLOW_ID_in_a23;
  }

  static BitSet _FOLLOW_INT_in_a25 = null;
  static BitSet get FOLLOW_INT_in_a25() {
    if(_FOLLOW_INT_in_a25 == null) 
      _FOLLOW_INT_in_a25 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_INT_in_a25;
  }



 }




class t058rewriteAST12Parser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
