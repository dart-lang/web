import 'dart:js_interop';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import '../ast.dart';
import '../js/typescript.dart' as ts;
import '../js/typescript.types.dart';
import 'namer.dart';
import 'parser.dart';
import 'transform/transformer.dart';

class TransformResult {
  ProgramDeclarationMap programMap;

  TransformResult._(this.programMap);

  Map<String, String> generate() {
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    final formatter =
        DartFormatter(languageVersion: DartFormatter.latestLanguageVersion);
    return programMap.map((file, declMap) {
      final specs = declMap.decls.values.map((d) {
        return switch (d) {
          final Node n => n.emit(),
          final Type t => [t.emit()],
        };
      }).reduce((val, element) => [...val, ...element]);
      final lib = Library((l) => l..body.addAll(specs));
      return MapEntry(file, formatter.format('${lib.accept(emitter)}'));
    });
  }
}

class TransformationOptions {
  /// whether we are outputting to a single file or to multiple files
  bool singleFile;

  TransformationOptions({this.singleFile = true});
}

extension type DeclarationMap(Map<String, Decl> decls)
    implements Map<String, Decl> {
  List<Decl> findByName(String name) {
    return decls.entries
        .where((e) => UniqueNamer.parse(e.key).name == name)
        .map((e) => e.value)
        .toList();
  }

  void add(Decl decl) => update(
        decl.id,
        (d) => decl,
        ifAbsent: () => decl,
      );

  Decl findOrPut(String name, Decl Function() ifNotExists) {
    final output = decls[name];
    if (output == null) {
      final ifNotExistsValue = ifNotExists();
      decls[name] = ifNotExistsValue;
      return ifNotExistsValue;
    } else {
      return output;
    }
  }
}

typedef ProgramDeclarationMap = Map<String, DeclarationMap>;

TransformResult transform(ParserResult parsedDeclarations,
    {TransformationOptions? options}) {
  // 1. get a map of parsed declarations for each file
  final programDeclarationMap = <String, DeclarationMap>{};

  // 2. start with the first file in the
  for (final file in parsedDeclarations.files) {
    // 2a. check if the file is already parsed
    if (programDeclarationMap[file] != null) continue;

    transformFile(parsedDeclarations.program, file, programDeclarationMap);
  }

  return TransformResult._(programDeclarationMap);
}

void transformFile(ts.TSProgram program, String file,
    Map<String, DeclarationMap> programDeclarationMap) {
  final src = program.getSourceFile(file);
  if (src == null) return;

  final typeChecker = program.getTypeChecker();

  // 2b. set up an export set containing IDs of declarations to export

  // 2e. set up namer (naming declarations)

  final transformer = Transformer(programDeclarationMap, typeChecker);

  // 2d. begin traversing declarations
  ts.forEachChild(
      src,
      ((TSNode node) {
        // ignore end of file
        if (node.kind == TSSyntaxKind.EndOfFileToken) return;

        transformer.transform(node);
      }).toJS as ts.TSNodeCallback);

  // 2f. resolve declaration
  // filter
  final resolvedMap = transformer.filter();

  // 2g. add declaration to list
  programDeclarationMap.addAll({file: resolvedMap});
}
