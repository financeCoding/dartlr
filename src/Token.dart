// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class Token implements Hashable {
  
  static final int EOR_TOKEN_TYPE = 1;

  /** imaginary tree navigation type; traverse "get child" link */
  static final int DOWN = 2;
  
  /** imaginary tree navigation type; finish with a child list */
  static final int UP = 3;

  static final int MIN_TOKEN_TYPE = UP + 1;

  static final int EOF = CharStream.EOF;
  
  static Token _EOF_TOKEN;  
  static Token get EOF_TOKEN() {
    if(_EOF_TOKEN == null) 
      _EOF_TOKEN = new CommonToken(EOF);
    return _EOF_TOKEN;
  }
  
  static Token _INVALID_TOKEN;
  static Token get INVALID_TOKEN() {
    if(_INVALID_TOKEN == null) 
      _INVALID_TOKEN = new CommonToken(INVALID_TOKEN_TYPE);
    return _INVALID_TOKEN;
  }
  
  /** In an action, a lexer rule can set token to this _SKIP_TOKEN and ANTLR
  *  will avoid creating a token for this symbol and try to fetch another.
  */
  static Token _SKIP_TOKEN;
  static Token get SKIP_TOKEN() {
    if(_SKIP_TOKEN == null) 
      _SKIP_TOKEN = new CommonToken(INVALID_TOKEN_TYPE);
    return _SKIP_TOKEN;
  }

  static final int INVALID_TOKEN_TYPE = 0;  

  /** All tokens go to the parser (unless skip() is called in that rule)
   *  on a particular "channel".  The parser tunes to a particular channel
   *  so that whitespace etc... can go to the parser on a "hidden" channel.
   */
  static final int DEFAULT_CHANNEL = 0;
    
  /** Anything on different channel than DEFAULT_CHANNEL is not parsed
   *  by parser.
   */
  static final int HIDDEN_CHANNEL = 99;

  /** Get the text of the token */
  abstract String get text();
  abstract void set text(String text);

  abstract int get type();
  abstract void set type(int ttype);
 
  /**  The line number on which this token was matched; line=1..n */
  abstract int get line();
  abstract void set line(int line);

  /** The index of the first character relative to the beginning of the line 0..n-1 */
  abstract int get charPositionInLine();
  abstract void set charPositionInLine(int pos);

  abstract int get channel();
  abstract void set channel(int channel);

  /** An index from 0..n-1 of the token object in the input stream.
   *  This must be valid in order to use the ANTLRWorks debugger.
   */
  abstract int get tokenIndex();
  abstract void set tokenIndex(int index);

  /** From what character stream was this token created?  You don't have to
   *  implement but it's nice to know where a Token comes from if you have
   *  include files etc... on the input.
   */
  abstract CharStream get inputStream();
  abstract void set inputStream(CharStream input);
  
  abstract int hashCode();
  
}
