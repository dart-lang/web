import 'dart:js_interop';

import '../ast.dart';
import 'parser.dart';

import '../js/typescript.dart' as ts;
import '../js/typescript.types.dart';

class TransformResult {
  ProgramDeclarationMap programMap;

  TransformResult._(this.programMap);

  Map<String, String> generate() {
    // programMap.forEach((file, declMap) {

    // });
  }
}

class TransformationOptions {
  /// whether we are outputting to a single file or to multiple files
  bool singleFile;

  TransformationOptions({
    this.singleFile = true
  });
}

typedef DeclarationMap = Map<String, Node>;
typedef ProgramDeclarationMap = Map<String, DeclarationMap>;

TransformResult transform(ParserResult parsedDeclarations, TransformationOptions options) {
  // 1. get a map of parsed declarations for each file
  final ProgramDeclarationMap programDeclarationMap = {};

  // 2. start with the first file in the 
  for (final file in parsedDeclarations.files) {
    // 2a. check if the file is already parsed
    if (programDeclarationMap[file] != null) continue;

    final src = parsedDeclarations.program.getSourceFile(file);
    if (src == null) continue;

    // 2b. set up an export map

    // 2d. begin traversing declarations
    final map = transformDeclarations(src, programDeclarationMap);

    // 2e. set up namer (naming declarations)

    // 2f. resolve declaration
    // - convert raw types to actual referred types
    // - give unique naming to functions (method overloading)

    // 2g. add declaration to list
    programDeclarationMap.addAll({
      file: map
    });
  }

  return TransformResult._(programDeclarationMap);
}

/// params: source, files input, export map (modifiable), type map
DeclarationMap transformDeclarations(ts.TSSourceFile source, ProgramDeclarationMap programMap) {
  // TODO: Use ID rather than name for indexing
  // To support 
  final DeclarationMap declarationMap = {};

  ts.forEachChild(source, ((TSNode node) {
    final decs = transformDeclaration(node, declarationMap, programMap);
    declarationMap.addAll({ for (final node in decs) node.name : node });
  }).jsify() as ts.TSNodeCallback);

  // TODO: Type Resolution

  return declarationMap;
}

List<Node> transformDeclaration(TSNode node, DeclarationMap declarationMap, ProgramDeclarationMap programMap) {
  return switch (node.kind) {
      TSSyntaxKind.VariableStatement => 
        transformVariable(node as TSVariableStatement, declarationMap, programMap),
      _ => throw Exception('Unsupported Declaration Kind')
    };
}

List<VariableNode> transformVariable(
  TSVariableStatement decl,
  DeclarationMap declarationMap,
  ProgramDeclarationMap programMap
) {
  // get the modifier of the declaration
  final modifiers = decl.modifiers.toDart as List<TSNode>;
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

  return (decl.declarationList.declarations
    .toDart as List<TSVariableDeclaration>).map((d) {
      return VariableNode(
        name: d.name.text, 
        type: d.type == null ? PrimitiveTypeNode.any 
          : parseType(d.type!, declarationMap, programMap), 
        modifier: modifier, 
        exported: isExported
      );
  }).toList();
}

/// Parses the type 
TypeNode parseType(TSTypeNode type, DeclarationMap declarationMap, ProgramDeclarationMap programMap) {
  if (type.kind == TSSyntaxKind.UnionType) {
    // parse union type
    return UnionTypeNode(types: ((type as TSUnionTypeNode)
      .types.toDart as List<TSTypeNode>)
      .map<TypeNode>((TSTypeNode node) => parseType(type, declarationMap, programMap))
      .toList()
    );
  }

  if (type.kind == TSSyntaxKind.TypeReference) {
    // reference type
    final refType = type as TSTypeReferenceNode;

    // TODO: Rather than passing the name of the type, we should extract the declaration
    //  The thing about doing this is how to parse the declarations if they do not exist at the moment
    //  Maybe: make this raw, then build afterwards with a resolve command
    final name = refType.typeName.text;
    final typeArguments = refType.typeArguments?.toDart as List<TSTypeNode>?;

    return ReferredTypeNode(
      name: name,
      typeParams: (typeArguments ?? [])
        .map((node) => parseType(type, declarationMap, programMap)).toList()
    );
  }

  // TODO: `typeof`
  
  // check for its kind
  return switch (type.kind) {
    TSSyntaxKind.StringKeyword => PrimitiveTypeNode.string,
    TSSyntaxKind.AnyKeyword => PrimitiveTypeNode.any,
    TSSyntaxKind.ObjectKeyword => PrimitiveTypeNode.object,
    TSSyntaxKind.NumberKeyword => PrimitiveTypeNode.number,
    TSSyntaxKind.UndefinedKeyword => PrimitiveTypeNode.undefined,
    TSSyntaxKind.UnknownKeyword => PrimitiveTypeNode.unknown,
    _ => throw UnsupportedError(
      'The given type with kind ${type.kind} is not supported yet')
  };
}