// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t007lexer_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t007lexer.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();
  
  test('testValid_t007lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("fofababbooabb");
    Lexer lexer = new t007lexer(stream);
    
    Token token = lexer.nextToken(); 
    expect(token.type).equals(t007lexer.FOO);
    expect(token.dynamic.startIndex).equals(0);
    expect(token.dynamic.stopIndex).equals(1);
    expect(token.text).equals("fo");
    
    token = lexer.nextToken(); 
    expect(token.type).equals(t007lexer.FOO);
    expect(token.dynamic.startIndex).equals(2);
    expect(token.dynamic.stopIndex).equals(12);
    expect(token.text).equals("fababbooabb");
    
    token = lexer.nextToken();
    expect(token.type).equals(t007lexer.EOF);
  });
  
  test('testMalformedInput_t007lexer', () {
    ANTLRStringStream stream = new ANTLRStringStream("foaboao");
    Lexer lexer = new t007lexer(stream);
    Token token = lexer.nextToken();
    String expected = "line 1:6 required(...)+ loop "
               "did not match anything at character 'o'";
    expect(lexer.reportedErrors.last()).equals(expected);
  });
}
