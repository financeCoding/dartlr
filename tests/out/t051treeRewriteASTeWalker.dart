// $ANTLR 3.4 t051treeRewriteASTeWalker.g 2012-06-07 21:59:36
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t051treeRewriteASTeWalker extends TreeParser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<TreeParser> get delegates() => <TreeParser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t051treeRewriteASTeWalker(TreeNodeStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t051treeRewriteASTeWalker.fromRecognizerSharedState
    (TreeNodeStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t051treeRewriteASTeWalker._tokenNames;

  String get grammarFileName() => "t051treeRewriteASTeWalker.g";

  String getRecognizerClassName() => "t051treeRewriteASTeWalker";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t051treeRewriteASTeWalker.g:
   9:1: a : ( ^( ID INT ) )+ -> ( INT )+ ( ID )+ ;*/
  t051treeRewriteASTeWalker_a_return a() {
    this.traceIn("a", 1);
    t051treeRewriteASTeWalker_a_return retval = new t051treeRewriteASTeWalker_a_return();
    retval.start = this.input.LT(1);


    CommonTree root_0 = null;

    CommonTree _first_0 = null;
    CommonTree _last = null;

    CommonTree ID1 = null;
    CommonTree INT2 = null;

    CommonTree ID1_tree=null;
    CommonTree INT2_tree=null;
    RewriteRuleNodeStream stream_INT=new RewriteRuleNodeStream(this._adaptor,"token INT");
    RewriteRuleNodeStream stream_ID=new RewriteRuleNodeStream(this._adaptor,"token ID");

    try {
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTeWalker.g:
       9:3: ( ( ^( ID INT ) )+ -> ( INT )+ ( ID )+ )*/
      /* ../runtime/dart/tests/grammars/t051treeRewriteASTeWalker.g:
       9:5: ( ^( ID INT ) )+*/
      {
      	/* ../runtime/dart/tests/grammars/t051treeRewriteASTeWalker.g:
      	 9:5: ( ^( ID INT ) )+*/
      	int cnt1 = 0;
      	loop1:
      	do {
      	  int alt1 = 2;
      	  int LA1_0 = this.input.LA(1);

      	  if((LA1_0 == 4/*ID*/)) {
      	    alt1 = 1;
      	  }


      	  switch (alt1) {
      			case 1 :
      			  /* ../runtime/dart/tests/grammars/t051treeRewriteASTeWalker.g:
      			   9:6: ^( ID INT )*/
      			  {
      			  	_last = this.input.LT(1);
      			  	{
      			  	CommonTree _save_last_1 = _last;
      			  	CommonTree _first_1 = null;
      			  	CommonTree root_1 = this._adaptor.nil();
      			  	_last = this.input.LT(1);
      			  	ID1 = this.matchSymbol(this.input,
      			  	    ID,FOLLOW_ID_in_a54); 
      			  	 
      			  	stream_ID.add(ID1);


      			  		this.matchSymbol(input, Token.DOWN, null); 
      			  		_last = this.input.LT(1);
      			  		INT2 = this.matchSymbol(this.input,
      			  		    INT,FOLLOW_INT_in_a56); 
      			  		 
      			  		stream_INT.add(INT2);


      			  		this.matchSymbol(input, Token.UP, null); 
      			  	  this._adaptor.addChild(root_0, root_1);
      			  	  _last = _save_last_1;
      			  	}


      			  }
      			  break;

      			default :
      		    if(cnt1 >= 1) break loop1;
      	        EarlyExitException eee = new EarlyExitException(1, this.input);
      	        throw eee;
      	  }
      	  cnt1++;
      	} while(true);


      	// AST REWRITE
      	// elements: ID, INT
      	// token labels: 
      	// rule labels: retval
      	// token list labels: 
      	// rule list labels: 
      	// wildcard labels: 
      	retval.tree = root_0;
      	RewriteRuleSubtreeStream stream_retval = new RewriteRuleSubtreeStream(this._adaptor,"rule retval",retval!=null?retval.tree:null);

      	root_0 = this._adaptor.nil();
      	/* 9:18: -> ( INT )+ ( ID )+*/
      	{
      	    if(!(stream_INT.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_INT.hasNext()) {
      	        this._adaptor.addChild(root_0, stream_INT.nextNode());

      	    }
      	    stream_INT.reset();

      	    if(!(stream_ID.hasNext())) {
      	        throw new RewriteEarlyExitException();
      	    }
      	    while ( stream_ID.hasNext()) {
      	        this._adaptor.addChild(root_0, stream_ID.nextNode());

      	    }
      	    stream_ID.reset();

      	}


      	retval.tree = root_0;

      }

        retval.tree = this._adaptor.rulePostProcessing(root_0);

    }
    catch (RecognitionException re) {
      this.reportError(re);
      this.recover(re, this.input);
    }

  	finally {
  	  // do for sure before leaving
      this.traceOut("a", 1);
  	}
  	return retval;
  }
  // $ANTLR end "a"



 

  static BitSet _FOLLOW_ID_in_a54 = null;
  static BitSet get FOLLOW_ID_in_a54() {
    if(_FOLLOW_ID_in_a54 == null) 
      _FOLLOW_ID_in_a54 = 
        new BitSet.fromList([0x0000000000000004]);
    return _FOLLOW_ID_in_a54;
  }

  static BitSet _FOLLOW_INT_in_a56 = null;
  static BitSet get FOLLOW_INT_in_a56() {
    if(_FOLLOW_INT_in_a56 == null) 
      _FOLLOW_INT_in_a56 = 
        new BitSet.fromList([0x0000000000000008]);
    return _FOLLOW_INT_in_a56;
  }



 }




class t051treeRewriteASTeWalker_a_return extends TreeRuleReturnScope {
  CommonTree _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
