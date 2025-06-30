// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import '../js/typescript.dart' as ts;

class ParserResult {
  ts.TSProgram program;
  Iterable<String> files;

  ParserResult({required this.program, required this.files});
}

ParserResult parseDeclarationFiles(Iterable<String> files) {
  final program = ts.createProgram(files.jsify() as JSArray<JSString>,
      ts.TSCompilerOptions(declaration: true));

  return ParserResult(program: program, files: files);
}
