// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:path/path.dart' as p;

import '../config.dart';
import '../js/filesystem_api.dart';
import '../js/node.dart';
import '../js/typescript.dart' as ts;

class PreProcessResult {
  final List<String> modules;
  final List<String> referenceLibs;
  final List<String> referenceTypes;

  const PreProcessResult(
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

/// Parses the given TypeScript declaration files in the [config],
/// provides diagnostics if any, and generates a [ts.TSProgram]
/// for transformation.
///
/// If a TS Config is passed, this function also produces compiler
/// options from the TS config file/config object to use alongside the compiler
ParserResult parseDeclarationFiles(Config config) {
  final files = config.input;
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

  final ignoreErrors = config.ignoreErrors;

  // create host for parsing TS configuration
  // TODO: @srujzs we can also create our own host
  //  Do you think we should allow TS handle such functions,
  //  or we should ourselves
  final host = ts.sys;
  var compilerOptions = ts.TSCompilerOptions(declaration: true);
  if (config.tsConfigFile case final tsConfigFile?) {
    final parsedCommandLine = ts.getParsedCommandLineOfConfigFile(
        p.absolute(tsConfigFile),
        ts.TSCompilerOptions(declaration: true),
        host);

    if (parsedCommandLine != null) {
      compilerOptions = parsedCommandLine.options;

      final diagnostics = parsedCommandLine.errors.toDart;

      // handle any diagnostics
      handleDiagnostics(diagnostics);
      if (!ignoreErrors && diagnostics.isNotEmpty) {
        exit(1);
      }
    }
  } else if (config.tsConfig case final tsConfig?
      when config.filename != null) {
    final parsedCommandLine = ts.parseJsonConfigFileContent(
        tsConfig.jsify() as JSObject,
        host,
        p.dirname(config.filename!.toFilePath()),
        ts.TSCompilerOptions(declaration: true));

    compilerOptions = parsedCommandLine.options;

    final diagnostics = parsedCommandLine.errors.toDart;

    // handle any diagnostics
    handleDiagnostics(diagnostics);
    if (!ignoreErrors && diagnostics.isNotEmpty) {
      exit(1);
    }
  }

  final program =
      ts.createProgram(files.jsify() as JSArray<JSString>, compilerOptions);

  // get diagnostics
  final diagnostics = [
    ...program.getSemanticDiagnostics().toDart,
    ...program.getSyntacticDiagnostics().toDart,
    ...program.getDeclarationDiagnostics().toDart,
  ];

  // handle diagnostics
  handleDiagnostics(diagnostics);

  if (diagnostics.isNotEmpty && !ignoreErrors) {
    // exit
    exit(1);
  }

  return ParserResult(program: program, files: files);
}

void handleDiagnostics(List<ts.TSDiagnostic> diagnostics) {
  for (final diagnostic in diagnostics) {
    if (diagnostic.file case final diagnosticFile?) {
      final ts.TSLineAndCharacter(line: line, character: char) =
          ts.getLineAndCharacterOfPosition(diagnosticFile, diagnostic.start!);
      final message =
          ts.flattenDiagnosticMessageText(diagnostic.messageText, '\n');
      printErr('${diagnosticFile.fileName} '
          '(${line.toDartInt + 1},${char.toDartInt + 1}): $message');
    } else {
      final message =
          ts.flattenDiagnosticMessageText(diagnostic.messageText, '\n');
      printErr('(anonymous): $message');
    }
  }
}
