
@JS('ts')
library;

import 'dart:js_interop';

import 'package:meta/meta.dart';

@JS('SyntaxKind')
extension type const TSSyntaxKind._(int _) {
  /// declarations
  static const TSSyntaxKind ClassDeclaration = TSSyntaxKind._(263);
  static const TSSyntaxKind VariableStatement = TSSyntaxKind._(243);
  static const TSSyntaxKind VariableDeclaration = TSSyntaxKind._(260);
  static const TSSyntaxKind InterfaceDeclaration = TSSyntaxKind._(264);
  static const TSSyntaxKind FunctionDeclaration = TSSyntaxKind._(262);
  static const TSSyntaxKind ExportDeclaration = TSSyntaxKind._(278);

  /// keywords
  static const TSSyntaxKind ExportKeyword = TSSyntaxKind._(95);
  static const TSSyntaxKind DeclareKeyword = TSSyntaxKind._(138);
  static const TSSyntaxKind ExtendsKeyword = TSSyntaxKind._(96);
  static const TSSyntaxKind ImplementsKeyword = TSSyntaxKind._(119);

  // types that are keywords
  static const TSSyntaxKind StringKeyword = TSSyntaxKind._(154);
  static const TSSyntaxKind ObjectKeyword = TSSyntaxKind._(151);
  static const TSSyntaxKind AnyKeyword = TSSyntaxKind._(133);
  static const TSSyntaxKind NumberKeyword = TSSyntaxKind._(150);
  static const TSSyntaxKind UndefinedKeyword = TSSyntaxKind._(157);
  static const TSSyntaxKind SetKeyword = TSSyntaxKind._(153);
  static const TSSyntaxKind UnknownKeyword = TSSyntaxKind._(159);

  // types
  static const TSSyntaxKind UnionType = TSSyntaxKind._(192);
  static const TSSyntaxKind TypeReference = TSSyntaxKind._(183);

  /// Other
  static const TSSyntaxKind Identifier = TSSyntaxKind._(80);
  static const TSSyntaxKind TypeParameter = TSSyntaxKind._(168);
  static const TSSyntaxKind HeritageClause = TSSyntaxKind._(298);
  static const TSSyntaxKind ExpressionWithTypeArguments = TSSyntaxKind._(233);
}

@JS('NodeFlags')
extension type const TSNodeFlags._(int _) implements int {
  static const TSNodeFlags None = TSNodeFlags._(0);
  static const TSNodeFlags Let = TSNodeFlags._(1);
  static const TSNodeFlags Const = TSNodeFlags._(2);
}

@JS('Node') 
extension type TSNode._(JSObject _) implements JSObject {
  external TSSyntaxKind get kind;
  external TSNode get parent;
  external TSNodeFlags get flags;
}

@JS('TypeNode')
extension type TSTypeNode._(JSObject _) implements TSNode {}

@JS('UnionTypeNode')
extension type TSUnionTypeNode._(JSObject _) implements TSTypeNode {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.UnionType;
  external TSNodeArray<TSTypeNode> get types;
}

@JS('TypeReferenceNode')
extension type TSTypeReferenceNode._(JSObject _) implements TSTypeNode {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.TypeReference;

  external TSIdentifier get typeName;
  external TSNodeArray<TSTypeNode>? get typeArguments;

}

@JS('Declaration') 
extension type TSDeclaration._(JSObject _) implements TSNode {}

@JS('Statement') 
extension type TSStatement._(JSObject _) implements TSNode {}

@JS('Identifier')
extension type TSIdentifier._(JSObject _) implements JSObject {
  external String get text;
}

@JS('VariableDeclaration')
extension type TSVariableStatement._(JSObject _) implements TSStatement {
  external TSVariableDeclarationList get declarationList;
  external TSNodeArray<TSNode> get modifiers;
}

@JS('VariableDeclaration')
extension type TSVariableDeclaration._(JSObject _) implements TSDeclaration {
  external TSIdentifier get name;
  external TSTypeNode? get type;
}

@JS('VariableDeclarationList')
extension type TSVariableDeclarationList._(JSObject _) implements TSNode {
  external TSNodeArray<TSVariableDeclaration> get declarations;
}

@JS('NodeArray') 
extension type TSNodeArray<T extends TSNode>._(JSArray _) implements JSArray {}