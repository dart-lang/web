// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import '../js/node.dart';
import '../js/typescript.dart' as ts;

class ParserResult {
  ts.TSProgram program;
  Iterable<String> files;

  ParserResult({required this.program, required this.files});
}

/// Parses the given TypeScript declaration [files], provides any diagnostics,
/// if any, and generates a [ts.TSProgram] for transformation
ParserResult parseDeclarationFiles(Iterable<String> files) {
  final program = ts.createProgram(files.jsify() as JSArray<JSString>,
      ts.TSCompilerOptions(declaration: true));

  // get diagnostics
  final diagnostics = [
    ...program.getSemanticDiagnostics().toDart,
    ...program.getSyntacticDiagnostics().toDart,
    ...program.getDeclarationDiagnostics().toDart,
  ];

  // handle diagnostics
  for (final diagnostic in diagnostics) {
    if (diagnostic.file case final diagnosticFile?) {
      final ts.TSLineAndCharacter(line: line, character: char) =
          ts.getLineAndCharacterOfPosition(diagnosticFile, diagnostic.start!);
      final message =
          ts.flattenDiagnosticMessageText(diagnostic.messageText, '\n');
      printErr('${diagnosticFile.fileName} '
          '(${line.toDartInt + 1},${char.toDartInt + 1}): $message');
    }
  }

  if (diagnostics.isNotEmpty) {
    // exit
    exit(1);
  }

  return ParserResult(program: program, files: files);
}
