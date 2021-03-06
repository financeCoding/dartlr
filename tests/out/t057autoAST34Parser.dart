// $ANTLR 3.4 t057autoAST34Parser.g 2012-06-07 21:59:42
#library('dart:dartlr');

#import('dart:io');
#import('../../src/DartLRLib.dart');

class t057autoAST34Parser extends Parser {

  static final List<String> _tokenNames = const [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", "ID", "INT", "WS"
  ];

  static final int EOF = -1;
  static final int ID = 4;
  static final int INT = 5;
  static final int WS = 6;
  
  List<Parser> get delegates() => <Parser>[]; 
  
      


  CommonTreeAdaptor _adaptor;


  t057autoAST34Parser(TokenStream input) 
    : super.fromRecognizerSharedState(input, new RecognizerSharedState()) {
	  this._adaptor = new CommonTreeAdaptor();
  }



  t057autoAST34Parser.fromRecognizerSharedState
    (TokenStream input, RecognizerSharedState state) 
      : super.fromRecognizerSharedState(input, state) {
    

	  this._adaptor = new CommonTreeAdaptor();
  }    

	void set treeAdaptor(TreeAdaptor adaptor) {
	  this._adaptor = adaptor;
	}

	TreeAdaptor get treeAdaptor() => this._adaptor;
	
  List<String> get tokenNames() => t057autoAST34Parser._tokenNames;

  String get grammarFileName() => "t057autoAST34.g";

  String getRecognizerClassName() => "t057autoAST34Parser";


  // $ANTLR start "a"
  /* ../runtime/dart/tests/grammars/t057autoAST34.g:
   3:1: a returns [String result] : id= ID id= ID ;*/
  t057autoAST34Parser_a_return a() {
    t057autoAST34Parser_a_return retval = new t057autoAST34Parser_a_return();
    retval.start = this.input.LT(1);


    Object root_0 = null;

    Token id = null;

    Object id_tree=null;

    try {
      /* ../runtime/dart/tests/grammars/t057autoAST34.g:
       3:27: (id= ID id= ID )*/
      /* ../runtime/dart/tests/grammars/t057autoAST34.g:
       3:29: id= ID id= ID*/
      {
      	root_0 = this._adaptor.nil();


      	id = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a26); 

      	id_tree = this._adaptor.createTreeNode(id);
      	this._adaptor.addChild(root_0, id_tree);


      	id = this.matchSymbol(this.input,
      	    ID,FOLLOW_ID_in_a30); 

      	id_tree = this._adaptor.createTreeNode(id);
      	this._adaptor.addChild(root_0, id_tree);


      	retval.result =  "2nd id=${(id != null) ? id.text : null};";


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



 

  static BitSet _FOLLOW_ID_in_a26 = null;
  static BitSet get FOLLOW_ID_in_a26() {
    if(_FOLLOW_ID_in_a26 == null) 
      _FOLLOW_ID_in_a26 = 
        new BitSet.fromList([0x0000000000000010]);
    return _FOLLOW_ID_in_a26;
  }

  static BitSet _FOLLOW_ID_in_a30 = null;
  static BitSet get FOLLOW_ID_in_a30() {
    if(_FOLLOW_ID_in_a30 == null) 
      _FOLLOW_ID_in_a30 = 
        new BitSet.fromList([0x0000000000000002]);
    return _FOLLOW_ID_in_a30;
  }



 }




class t057autoAST34Parser_a_return extends ParserRuleReturnScope {
  String result;
  Object _tree;

  Object get tree() => this._tree;

  void set tree(Object t) {
    this._tree = t;
  } 
}
