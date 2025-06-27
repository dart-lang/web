// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: constant_identifier_names

@JS('ts')
library;

import 'dart:js_interop';

import 'package:meta/meta.dart';

import 'typescript.dart';

extension type const TSSyntaxKind._(num _) {
  /// To be ignored
  static const TSSyntaxKind EndOfFileToken = TSSyntaxKind._(1);

  /// declarations
  static const TSSyntaxKind ClassDeclaration = TSSyntaxKind._(263);
  static const TSSyntaxKind VariableStatement = TSSyntaxKind._(243);
  static const TSSyntaxKind VariableDeclaration = TSSyntaxKind._(260);
  static const TSSyntaxKind InterfaceDeclaration = TSSyntaxKind._(264);
  static const TSSyntaxKind FunctionDeclaration = TSSyntaxKind._(262);
  static const TSSyntaxKind ExportDeclaration = TSSyntaxKind._(278);
  static const TSSyntaxKind Parameter = TSSyntaxKind._(169);

  /// keywords
  static const TSSyntaxKind ExportKeyword = TSSyntaxKind._(95);
  static const TSSyntaxKind DeclareKeyword = TSSyntaxKind._(138);
  static const TSSyntaxKind ExtendsKeyword = TSSyntaxKind._(96);
  static const TSSyntaxKind ImplementsKeyword = TSSyntaxKind._(119);

  // types that are keywords
  static const TSSyntaxKind StringKeyword = TSSyntaxKind._(154);
  static const TSSyntaxKind NumberKeyword = TSSyntaxKind._(150);
  static const TSSyntaxKind BooleanKeyword = TSSyntaxKind._(136);
  static const TSSyntaxKind ObjectKeyword = TSSyntaxKind._(151);
  static const TSSyntaxKind AnyKeyword = TSSyntaxKind._(133);
  static const TSSyntaxKind UndefinedKeyword = TSSyntaxKind._(157);
  static const TSSyntaxKind SetKeyword = TSSyntaxKind._(153);
  static const TSSyntaxKind UnknownKeyword = TSSyntaxKind._(159);
  static const TSSyntaxKind VoidKeyword = TSSyntaxKind._(116);

  // types
  static const TSSyntaxKind UnionType = TSSyntaxKind._(192);
  static const TSSyntaxKind TypeReference = TSSyntaxKind._(183);
  static const TSSyntaxKind ArrayType = TSSyntaxKind._(188);

  /// Other
  static const TSSyntaxKind Identifier = TSSyntaxKind._(80);
  static const TSSyntaxKind ObjectBindingPattern = TSSyntaxKind._(206);
  static const TSSyntaxKind ArrayBindingPattern = TSSyntaxKind._(207);
  static const TSSyntaxKind TypeParameter = TSSyntaxKind._(168);
  static const TSSyntaxKind HeritageClause = TSSyntaxKind._(298);
  static const TSSyntaxKind ExpressionWithTypeArguments = TSSyntaxKind._(233);
}

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
  external String getText([TSSourceFile? sourceFile]);
  external String getFullText([TSSourceFile? sourceFile]);
}

@JS('TypeNode')
extension type TSTypeNode._(JSObject _) implements TSNode {}

@JS('ArrayTypeNode')
extension type TSArrayTypeNode._(JSObject _) implements TSTypeNode {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.ArrayType;
  external TSTypeNode get elementType;
}

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
extension type TSIdentifier._(JSObject _) implements TSDeclaration {
  external String get text;
}

@JS('VariableStatement')
extension type TSVariableStatement._(JSObject _) implements TSStatement {
  external TSVariableDeclarationList get declarationList;
  external TSNodeArray<TSNode> get modifiers;
}

@JS('VariableDeclarationList')
extension type TSVariableDeclarationList._(JSObject _) implements TSNode {
  external TSNodeArray<TSVariableDeclaration> get declarations;
}

@JS('VariableDeclaration')
extension type TSVariableDeclaration._(JSObject _) implements TSDeclaration {
  external TSIdentifier get name;
  external TSTypeNode? get type;
}

@JS('FunctionDeclaration')
extension type TSFunctionDeclaration._(JSObject _) implements TSDeclaration {
  external TSIdentifier get name;
  external TSTypeNode? get type;
  external TSNode? get asteriskToken;
  external TSNodeArray<TSParameterDeclaration> get parameters;
  external TSNodeArray<TSTypeParameterDeclaration>? get typeParameters;
  external TSNodeArray<TSNode> get modifiers;
}

@JS('ParameterDeclaration')
extension type TSParameterDeclaration._(JSObject _) implements TSDeclaration {
  external TSNode get name;
  external TSTypeNode? get type;
  external TSNodeArray<TSNode>? get modifiers;
  external TSNode? get questionToken;
  external TSNode? get dotDotDotToken;
}

@JS('TypeParameterDeclaration')
extension type TSTypeParameterDeclaration._(JSObject _)
    implements TSDeclaration {
  external TSIdentifier get name;
  external TSTypeNode? get constraint;
}

@JS('NodeArray')
extension type TSNodeArray<T extends TSNode>._(JSArray<T> _)
    implements JSArray<T> {}

@JS('Symbol')
extension type TSSymbol._(JSObject _) implements JSObject {
  external String get name;
  external JSArray<TSDeclaration>? getDeclarations();
}
