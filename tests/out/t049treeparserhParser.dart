// $ANTLR 3.4 t049treeparserhParser.g 2012-06-07 21:59:48
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t049treeparserhParser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "SEMI", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int SEMI = 6;
  static final int WS = 7;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t049treeparserhParser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t049treeparserhParser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t049treeparserhParser._tokenNames;

  String get grammarFileName() => "t049treeparserh.g";

  String getRecognizerClassName() => "t049treeparserhParser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t049treeparserh.g:
   6:1: a : x= ID ( INT )? (y= ID )? SEMI -> ^( $x ( INT )? ( $y)? ) SEMI ;*/
  t049treeparserhParser_a_return a() {
    t049treeparserhParser_a_return retval = new t049treeparserhParser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token x = null;
    Token y = null;
    Token INT1 = null;
    Token SEMI2 = null;

    Object x_tree=null;
    Object y_tree=null;
    Object INT1_tree=null;
    Object SEMI2_tree=null;
    RewriteRuleTokenStream stream_INT=new RewriteRuleTokenStream(this._adaptor,"token INT");
    RewriteRuleTokenStream stream_ID=new RewriteRuleTokenStream(this._adaptor,"token ID");
    RewriteRuleTokenStream stream_SEMI=new RewriteRuleTokenStream(this._adaptor,"token SEMI");

    try {
      /* ../runtime/dart/tests/grammars/t049treeparserh.g:
       6:3: (x= ID ( INT )? (y= ID )? SEMI -> ^( $x ( INT )? ( $y)? ) SEMI )*/
      /* ../runtime/dart/tests/grammars/t049treeparserh.g:
       6:5: x= ID ( INT )? (y= ID )? SEMI*/
      {
      	x = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a33); 
      	 
      	stream_ID.add(x);


      	/* ../runtime/dart/tests/grammars/t049treeparserh.g:
      	 6:10: ( INT )?*/
      	int alt1 = 2;
      	int LA1_0 = this.input.LA(1);

      	if((LA1_0 == 5/*INT*/)) {
      	  alt1 = 1;
      	}
      	switch (alt1) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t049treeparserh.g:
      	     6:10: INT*/
      	    {
      	    	INT1 = this.matchSymbol(this.input,
      	    	    INT,FOLLOW_INT_in_a35); 
      	    	 
      	    	stream_INT.add(INT1);


      	    }
      	    break;

      	}


      	/* ../runtime/dart/tests/grammars/t049treeparserh.g:
      	 6:15: (y= ID )?*/
      	int alt2 = 2;
      	int LA2_0 = this.input.LA(1);

      	if((LA2_0 == 4/*ID*/)) {
      	  alt2 = 1;
      	}
      	switch (alt2) {
      	  case 1 :
      	    /* ../runtime/dart/tests/grammars/t049treeparserh.g:
      	     6:16: y= ID*/
      	    {
      	    	y = this.matchSymbol(this.input,
      	    	    ID,FOLLOW_ID_in_a41); 
      	    	 
      	    	stream_ID.add(y);


      	    }
      	    break;

      	}


      	SEMI2 = this.matchSymbol(this.input,
      	    SEMI,FOLLOW_SEMI_in_a45); 
      	 
      	stream_SEMI.add(SEMI2);


      	// AST REWRITE
      	// elements: x, SEMI, y, INT
      	// token labels: y, x
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleTokenStream stream_y = new RewriteRuleTokenStream(this._adaptor,"token y",y);
      	RewriteRuleTokenStream stream_x = new RewriteRuleTokenStream(this._adaptor,"token x",x);
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 6:28: -> ^( $x ( INT )? ( $y)? ) SEMI*/
      	{
      	    /* ../runtime/dart/tests/grammars/t049treeparserh.g:
      	     6:31: ^( $x ( INT )? ( $y)? )*/
      	    {
      	    	Object root_1 = this._adaptor.nil();
      	    	root_1 = this._adaptor.becomeRoot(stream_x.nextNode(), root_1);

      	    	/* ../runtime/dart/tests/grammars/t049treeparserh.g:
      	    	 6:36: ( INT )?*/
      	    	if(stream_INT.hasNext()) {
      	    	    this._adaptor.addChild(root_1, 
      	    	    stream_INT.nextNode()
      	    	    );

      	    	}
      	    	stream_INT.reset();

      	    	/* ../runtime/dart/tests/grammars/t049treeparserh.g:
      	    	 6:42: ( $y)?*/
      	    	if(stream_y.hasNext()) {
      	    	    this._adaptor.addChild(root_1, stream_y.nextNode());

      	    	}
      	    	stream_y.reset();

      	    	this._adaptor.addChild(root_0, root_1);
      	    }

      	    this._adaptor.addChild(root_0, 
      	    stream_SEMI.nextNode()
      	    );

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



 

  static BitSet _FOLLOW_ID_in_a33 = null;
  static BitSet get FOLLOW_ID_in_a33() {
    if(_FOLLOW_ID_in_a33 == null) 
      _FOLLOW_ID_in_a33 = 
        new BitSet.fromList([0x0000000000000070]);
    return _FOLLOW_ID_in_a33;
  }

  static BitSet _FOLLOW_INT_in_a35 = null;
  static BitSet get FOLLOW_INT_in_a35() {
    if(_FOLLOW_INT_in_a35 == null) 
      _FOLLOW_INT_in_a35 = 
        new BitSet.fromList([0x0000000000000050]);
    return _FOLLOW_INT_in_a35;
  }

  static BitSet _FOLLOW_ID_in_a41 = null;
  static BitSet get FOLLOW_ID_in_a41() {
    if(_FOLLOW_ID_in_a41 == null) 
      _FOLLOW_ID_in_a41 = 
        new BitSet.fromList([0x0000000000000040]);
    return _FOLLOW_ID_in_a41;
  }

  static BitSet _FOLLOW_SEMI_in_a45 = null;
  static BitSet get FOLLOW_SEMI_in_a45() {
    if(_FOLLOW_SEMI_in_a45 == null) 
      _FOLLOW_SEMI_in_a45 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_SEMI_in_a45;
  }



 }




class t049treeparserhParser_a_return extends ParserRuleReturnScope {
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
