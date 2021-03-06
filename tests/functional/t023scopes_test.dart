// Copyright (c) 2012, the ANTLR Dart backend project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#library("dart:t023scopes_test");

#import("../../lib/unittest/unittest.dart");
#import("../../lib/unittest/vm_config.dart");
#import("../out/t023scopesLexer.dart");
#import("../out/t023scopesParser.dart");
#import("../../src/DartLRLib.dart");

main() {  
  useVmConfiguration();

  test("testa1_t023scopes", () {
    ANTLRStringStream cstream = new ANTLRStringStream("foobar");
    t023scopesLexer lexer = new t023scopesLexer(cstream);
    CommonTokenStream tstream = new CommonTokenStream(lexer);
    t023scopesParser parser = new t023scopesParser(tstream);

    int expected = parser.reportedErrors.length;
    parser.prog();
    expect(parser.reportedErrors.length).equals(expected);
  });
  
}
