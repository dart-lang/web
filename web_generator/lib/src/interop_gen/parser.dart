// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import '../js/filesystem_api.dart';
import '../js/node.dart';
import '../js/typescript.dart' as ts;

class PreProcessResult {
  List<String> modules;
  List<String> referenceLibs;
  List<String> referenceTypes;

  PreProcessResult(
      {this.modules = const [],
      this.referenceLibs = const [],
      this.referenceTypes = const []});
}

class ParserResult {
  ts.TSProgram program;
  Iterable<String> files;
  Map<String, PreProcessResult> preprocessResult;

  ParserResult(
      {required this.program,
      required this.files,
      this.preprocessResult = const {}});
}

/// Parses the given TypeScript declaration [files], provides any diagnostics,
/// if any, and generates a [ts.TSProgram] for transformation
ParserResult parseDeclarationFiles(Iterable<String> files) {
  // preprocess file
  final preProcessResultMap = <String, PreProcessResult>{};

  for (final file in files) {
    final contents = (fs.readFileSync(
            file.toJS, JSReadFileOptions(encoding: 'utf8'.toJS)) as JSString)
        .toDart;
    final preProcessResult = ts.preProcessFile(contents);

    preProcessResultMap[file] = PreProcessResult(
      modules: preProcessResult.ambientExternalModules?.toDart
              .map((t) => t.toDart)
              .toList() ??
          [],
      referenceLibs: preProcessResult.libReferenceDirectives.toDart
          .map((ref) => ref.fileName)
          .toList(),
      referenceTypes: preProcessResult.typeReferenceDirectives.toDart
          .map((ref) => ref.fileName)
          .toList(),
    );
  }

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

  return ParserResult(
      program: program, files: files, preprocessResult: preProcessResultMap);
}
