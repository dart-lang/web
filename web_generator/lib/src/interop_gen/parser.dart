import 'dart:js_interop';

import '../js/typescript.dart' as ts;
import '../js/typescript.types.dart';

class ParserLibraryResult {
  String name;
  String url;

  List<TSVariableStatement> variables;

  ParserLibraryResult({
    required this.name,
    required this.url,
  }) : variables = [];
}

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
