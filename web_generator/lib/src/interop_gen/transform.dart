import 'dart:js_interop';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import '../ast.dart';
import '../js/typescript.dart' as ts;
import '../js/typescript.types.dart';
import 'parser.dart';

class TransformResult {
  ProgramDeclarationMap programMap;

  TransformResult._(this.programMap);

  Map<String, String> generate() {
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    final formatter =
        DartFormatter(languageVersion: DartFormatter.latestLanguageVersion);
    return programMap.map((file, declMap) {
      final specs = declMap.values
          .map((d) => d.emit())
          .reduce((val, element) => [...val, ...element]);
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

typedef DeclarationMap = Map<String, Node>;
typedef ProgramDeclarationMap = Map<String, DeclarationMap>;

TransformResult transform(ParserResult parsedDeclarations,
    {TransformationOptions? options}) {
  // 1. get a map of parsed declarations for each file
  final programDeclarationMap = <String, DeclarationMap>{};

  // 2. start with the first file in the
  for (final file in parsedDeclarations.files) {
    // 2a. check if the file is already parsed
    if (programDeclarationMap[file] != null) continue;

    final src = parsedDeclarations.program.getSourceFile(file);
    if (src == null) continue;

    // 2b. set up an export set containing IDs of declarations to export
    final exportSet = <String>{};

    // 2d. begin traversing declarations
    final map = transformDeclarations(src,
        programMap: programDeclarationMap, exportSet: exportSet);

    // 2e. set up namer (naming declarations)

    // 2f. resolve declaration
    // - convert raw types to actual referred types
    // - give unique naming to functions (method overloading)

    // 2g. add declaration to list
    programDeclarationMap.addAll({file: map});
  }

  return TransformResult._(programDeclarationMap);
}

/// params: source, files input, export map (modifiable), type map
DeclarationMap transformDeclarations(ts.TSSourceFile source,
    {ProgramDeclarationMap? programMap, Set<String>? exportSet}) {
  programMap ??= {};
  exportSet ??= {};

  final declarationMap = <String, Node>{};

  ts.forEachChild(
      source,
      ((TSNode node) {
        // ignore end of file
        if (node.kind == TSSyntaxKind.EndOfFileToken) return;

        final decs =
            transformDeclaration(node, declarationMap, programMap!, exportSet!);
        declarationMap.addAll({for (final node in decs) node.id: node});
      }).toJS as ts.TSNodeCallback);

  // TODO: Type Resolution

  return declarationMap;
}

List<Node> transformDeclaration(TSNode node, DeclarationMap declarationMap,
    ProgramDeclarationMap programMap, Set<String> exportSet) {
  return switch (node.kind) {
    TSSyntaxKind.VariableStatement => transformVariable(
        node as TSVariableStatement, declarationMap, programMap),
    _ => throw Exception('Unsupported Declaration Kind: ${node.kind}')
  };
}

List<VariableNode> transformVariable(TSVariableStatement decl,
    DeclarationMap declarationMap, ProgramDeclarationMap programMap) {
  // get the modifier of the declaration
  final modifiers = decl.modifiers.toDart;
  final isExported = modifiers.any((m) {
    return m.kind == TSSyntaxKind.ExportKeyword;
  });

  // TODO: Prefer `decl.flags == 33554432`
  var modifier = VariableModifier.$var;

  // TODO: Prefer `decl.flags == 33554434`
  if ((decl.flags & TSNodeFlags.Const) != 0) {
    modifier = VariableModifier.$const;
    // TODO: Prefer `decl.flags == 33554433`
  } else if ((decl.flags & TSNodeFlags.Let) != 0) {
    modifier = VariableModifier.let;
  }

  return decl.declarationList.declarations.toDart.map((d) {
    return VariableNode(
        name: d.name.text,
        type: d.type == null
            ? PrimitiveType.any
            : parseType(d.type!, declarationMap, programMap),
        modifier: modifier,
        exported: isExported);
  }).toList();
}

/// Parses the type
///
/// TODO(https://github.com/dart-lang/web/issues/384): Add support for literals (i.e individual booleans and `null`)
/// TODO(https://github.com/dart-lang/web/issues/383): Add support for `typeof` types
Type parseType(TSTypeNode type, DeclarationMap declarationMap,
    ProgramDeclarationMap programMap) {
  if (type.kind == TSSyntaxKind.UnionType) {
    final unionType = type as TSUnionTypeNode;
    // parse union type
    return UnionType(
        types: unionType.types.toDart
            .map<Type>((TSTypeNode node) =>
                parseType(node, declarationMap, programMap))
            .toList());
  }

  if (type.kind == TSSyntaxKind.TypeReference) {
    // reference type
    final refType = type as TSTypeReferenceNode;

    // TODO: Rather than passing the name of the type, we should extract
    //  the declaration. The thing about doing this is how to parse
    //  the declarations if they do not exist at the moment
    //  Maybe: make this raw, then build afterwards with a resolve command
    final name = refType.typeName.text;
    final typeArguments = refType.typeArguments?.toDart;

    return RawReferredType(
        name: name,
        typeParams: (typeArguments ?? [])
            .map((node) => parseType(node, declarationMap, programMap))
            .toList());
  }

  // check for its kind
  return switch (type.kind) {
    TSSyntaxKind.StringKeyword => PrimitiveType.string,
    TSSyntaxKind.AnyKeyword => PrimitiveType.any,
    TSSyntaxKind.ObjectKeyword => PrimitiveType.object,
    TSSyntaxKind.NumberKeyword => PrimitiveType.number,
    TSSyntaxKind.UndefinedKeyword => PrimitiveType.undefined,
    TSSyntaxKind.UnknownKeyword => PrimitiveType.unknown,
    TSSyntaxKind.BooleanKeyword => PrimitiveType.boolean,
    _ => throw UnsupportedError(
        'The given type with kind ${type.kind} is not supported yet')
  };
}
