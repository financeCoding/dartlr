// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/** A source of characters for an ANTLR lexer */
interface CharStream extends IntStream {
  
  static final int EOF = -1;  

  /** ANTLR tracks the line information automatically */
  int get line();
  
  /** The index of the character relative to the beginning of the line 0..n-1 */
  int get charPositionInLine();

  /** Because this stream can rewind, we need to be able to reset the line */
  void set line(int line);

  void set charPositionInLine(int pos);
  
  /** For infinite streams, you don't need this; primarily I'm providing
   *  a useful interface for action code.  Just make sure actions don't
   *  use this on streams that don't support it.
   */
  String substring(int start, int stop);

  /** Get the ith character of lookahead.  This is the same usually as
   *  LA(i).  This will be used for labels in the generated
   *  lexer code.  I'd prefer to return a char here type-wise, but it's
   *  probably better to be 32-bit clean and be consistent with LA.
   */
  int LT(int i);  
  
}
