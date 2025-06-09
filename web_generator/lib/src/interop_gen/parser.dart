import 'dart:js_interop';

import 'package:path/path.dart' as p;

import '../js/typescript.dart' as ts;
import '../js/typescript.types.dart';
import '../js/typescript_extensions.dart';

class ParserLibraryResult {
  String name;
  String url;

  List<TSVariableDeclaration> variables;

  ParserLibraryResult({
    required this.name, 
    required this.url,
  }) : variables = [];
}

class ParserResult {
  List<ParserLibraryResult> libraries;

  ParserResult({
    required this.libraries
  });
}


ParserResult parseDeclarationFiles(Iterable<String> files) {
  final program = ts.createProgram(files.jsify() as JSArray<JSString>, 
    ts.TSCompilerOptions(
      declaration: true
    )
  );

  final parserResult = ParserResult(libraries: []);

  for (final file in files) {
    final name = p.basenameWithoutExtension(file);
    final sourceFile = program.getSourceFile(file);

    // TODO: This should throw an error
    if (sourceFile == null) continue;

    parserResult.libraries.add(
      traverseSourceFile(file, sourceFile, name: name)
    );
  }

  return parserResult;
}

ParserLibraryResult traverseSourceFile(String url, 
  ts.TSSourceFile source, {String? name}) {
    name ??= p.basenameWithoutExtension(url);
  
  final declarations = ParserLibraryResult(name: name, url: url);

  final exportedNames = <String, String>{};

  // filter out nodes

  ts.forEachChild(
    source, 
    ((TSNode node) {
      switch (node.kind) {
        case TSSyntaxKind.VariableDeclaration:
          declarations.variables.add(node as TSVariableDeclaration);
        default:
          // TODO: Should throw an unsupported error
          print('WARN: The declaration ${node.kind.name} is not supported');
      }
    }).jsify() as ts.TSNodeCallback
  );


}