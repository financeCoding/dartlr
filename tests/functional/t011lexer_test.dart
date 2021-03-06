// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t011lexer_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t011lexer.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test('testValid_t011lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("foobar _Ab98_5 \n A12sdf");
    Lexer lexer = new t011lexer(stream);
    
    Token token = lexer.nextToken(); 
    expect(token.type).equals(t011lexer.IDENTIFIER);
    expect(token.dynamic.startIndex).equals(0);
    expect(token.dynamic.stopIndex).equals(5);
    expect(token.text).equals("foobar");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t011lexer.WS);
    expect(token.dynamic.startIndex).equals(6);
    expect(token.dynamic.stopIndex).equals(6);
    expect(token.text).equals(" ");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t011lexer.IDENTIFIER);
    expect(token.dynamic.startIndex).equals(7);
    expect(token.dynamic.stopIndex).equals(13);
    expect(token.text).equals("_Ab98_5");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t011lexer.WS);
    expect(token.dynamic.startIndex).equals(14);
    expect(token.dynamic.stopIndex).equals(16);
    expect(token.text).equals(" \n ");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t011lexer.IDENTIFIER);
    expect(token.dynamic.startIndex).equals(17);
    expect(token.dynamic.stopIndex).equals(22);
    expect(token.text).equals("A12sdf");
    
    token = lexer.nextToken();
    expect(token.type).equals(t011lexer.EOF);
  });
  
  test('testMalformedInput_t011lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("a-b");
    Lexer lexer = new t011lexer(stream);
    lexer.nextToken();
    Token token = lexer.nextToken();
    String expected = "line 1:1 no viable alternative at character '-'";
    expect(lexer.reportedErrors.last()).equals(expected);
  });
}
