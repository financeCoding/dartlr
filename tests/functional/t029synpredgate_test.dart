// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t029synpredgate_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t029synpredgate.dart");

#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();

  test("testValid1_t029synpredgate", () {
    ANTLRStringStream stream = new ANTLRStringStream("ac");
    t029synpredgate lexer = new t029synpredgate(stream);
    
    Token token = lexer.nextToken();
    expect(token.type).equals(6);
    expect(token.text).equals('a');
    token = lexer.nextToken();
  });
}
