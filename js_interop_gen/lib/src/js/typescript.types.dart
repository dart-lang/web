// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: constant_identifier_names

@JS('ts')
library;

import 'dart:js_interop';

import 'package:meta/meta.dart';

import 'annotations.dart';
import 'helpers.dart';
import 'typescript.dart';

// TODO: add other flags as needed
extension type const TSTypeFlags._(int _) implements int {
  static const TSTypeFlags BooleanLiteral = TSTypeFlags._(512);
}

extension type const TSSyntaxKind._(num _) {
  /// To be ignored
  static const TSSyntaxKind EndOfFileToken = TSSyntaxKind._(1);

  /// declarations
  static const TSSyntaxKind Parameter = TSSyntaxKind._(170);
  static const TSSyntaxKind PropertyDeclaration = TSSyntaxKind._(173);
  static const TSSyntaxKind MethodDeclaration = TSSyntaxKind._(175);
  static const TSSyntaxKind VariableStatement = TSSyntaxKind._(244);
  static const TSSyntaxKind VariableDeclaration = TSSyntaxKind._(261);
  static const TSSyntaxKind FunctionDeclaration = TSSyntaxKind._(263);
  static const TSSyntaxKind ClassDeclaration = TSSyntaxKind._(264);
  static const TSSyntaxKind InterfaceDeclaration = TSSyntaxKind._(265);
  static const TSSyntaxKind TypeAliasDeclaration = TSSyntaxKind._(266);
  static const TSSyntaxKind EnumDeclaration = TSSyntaxKind._(267);
  static const TSSyntaxKind ModuleDeclaration = TSSyntaxKind._(268);
  static const TSSyntaxKind ImportEqualsDeclaration = TSSyntaxKind._(272);
  static const TSSyntaxKind ImportDeclaration = TSSyntaxKind._(273);
  static const TSSyntaxKind ImportSpecifier = TSSyntaxKind._(277);
  static const TSSyntaxKind ExportDeclaration = TSSyntaxKind._(279);

  static const TSSyntaxKind PropertySignature = TSSyntaxKind._(172);
  static const TSSyntaxKind MethodSignature = TSSyntaxKind._(174);
  static const TSSyntaxKind Constructor = TSSyntaxKind._(177);
  static const TSSyntaxKind GetAccessor = TSSyntaxKind._(178);
  static const TSSyntaxKind SetAccessor = TSSyntaxKind._(179);
  static const TSSyntaxKind CallSignature = TSSyntaxKind._(180);
  static const TSSyntaxKind ConstructSignature = TSSyntaxKind._(181);
  static const TSSyntaxKind IndexSignature = TSSyntaxKind._(182);
  static const TSSyntaxKind ExportAssignment = TSSyntaxKind._(278);

  /// expressions
  static const TSSyntaxKind NumericLiteral = TSSyntaxKind._(9);
  static const TSSyntaxKind StringLiteral = TSSyntaxKind._(11);
  static const TSSyntaxKind FalseKeyword = TSSyntaxKind._(97);
  static const TSSyntaxKind NullKeyword = TSSyntaxKind._(106);
  static const TSSyntaxKind TrueKeyword = TSSyntaxKind._(112);

  /// keywords
  static const TSSyntaxKind ExportKeyword = TSSyntaxKind._(95);
  static const TSSyntaxKind ExtendsKeyword = TSSyntaxKind._(96);
  static const TSSyntaxKind WithKeyword = TSSyntaxKind._(118);
  static const TSSyntaxKind ImplementsKeyword = TSSyntaxKind._(119);
  static const TSSyntaxKind AbstractKeyword = TSSyntaxKind._(128);
  static const TSSyntaxKind AssertKeyword = TSSyntaxKind._(132);
  static const TSSyntaxKind DeclareKeyword = TSSyntaxKind._(138);
  static const TSSyntaxKind KeyOfKeyword = TSSyntaxKind._(143);
  static const TSSyntaxKind ReadonlyKeyword = TSSyntaxKind._(148);
  static const TSSyntaxKind UniqueKeyword = TSSyntaxKind._(158);

  // keywords for scope
  static const TSSyntaxKind PrivateKeyword = TSSyntaxKind._(123);
  static const TSSyntaxKind ProtectedKeyword = TSSyntaxKind._(124);
  static const TSSyntaxKind PublicKeyword = TSSyntaxKind._(125);
  static const TSSyntaxKind StaticKeyword = TSSyntaxKind._(126);

  // types that are keywords
  static const TSSyntaxKind VoidKeyword = TSSyntaxKind._(116);
  static const TSSyntaxKind AnyKeyword = TSSyntaxKind._(133);
  static const TSSyntaxKind BooleanKeyword = TSSyntaxKind._(136);
  static const TSSyntaxKind NeverKeyword = TSSyntaxKind._(146);
  static const TSSyntaxKind NumberKeyword = TSSyntaxKind._(150);
  static const TSSyntaxKind ObjectKeyword = TSSyntaxKind._(151);
  static const TSSyntaxKind SetKeyword = TSSyntaxKind._(153);
  static const TSSyntaxKind StringKeyword = TSSyntaxKind._(154);
  static const TSSyntaxKind SymbolKeyword = TSSyntaxKind._(155);
  static const TSSyntaxKind UndefinedKeyword = TSSyntaxKind._(157);
  static const TSSyntaxKind UnknownKeyword = TSSyntaxKind._(159);
  static const TSSyntaxKind BigIntKeyword = TSSyntaxKind._(163);

  // types
  static const TSSyntaxKind TypePredicate = TSSyntaxKind._(183);
  static const TSSyntaxKind TypeReference = TSSyntaxKind._(184);
  static const TSSyntaxKind FunctionType = TSSyntaxKind._(185);
  static const TSSyntaxKind ConstructorType = TSSyntaxKind._(186);
  static const TSSyntaxKind TypeQuery = TSSyntaxKind._(187);
  static const TSSyntaxKind TypeLiteral = TSSyntaxKind._(188);
  static const TSSyntaxKind ArrayType = TSSyntaxKind._(189);
  static const TSSyntaxKind TupleType = TSSyntaxKind._(190);
  static const TSSyntaxKind UnionType = TSSyntaxKind._(193);
  static const TSSyntaxKind IntersectionType = TSSyntaxKind._(194);
  static const TSSyntaxKind ConditionalType = TSSyntaxKind._(195);
  static const TSSyntaxKind ParenthesizedType = TSSyntaxKind._(197);
  static const TSSyntaxKind ThisType = TSSyntaxKind._(198);
  static const TSSyntaxKind TypeOperator = TSSyntaxKind._(199);
  static const TSSyntaxKind IndexedAccessType = TSSyntaxKind._(200);
  static const TSSyntaxKind LiteralType = TSSyntaxKind._(202);
  static const TSSyntaxKind NamedTupleMember = TSSyntaxKind._(203);

  // Other
  static const TSSyntaxKind Identifier = TSSyntaxKind._(80);
  static const TSSyntaxKind QualifiedName = TSSyntaxKind._(167);
  static const TSSyntaxKind TypeParameter = TSSyntaxKind._(169);
  static const TSSyntaxKind ObjectBindingPattern = TSSyntaxKind._(207);
  static const TSSyntaxKind ArrayBindingPattern = TSSyntaxKind._(208);
  static const TSSyntaxKind PropertyAccessExpression = TSSyntaxKind._(212);
  static const TSSyntaxKind ExpressionWithTypeArguments = TSSyntaxKind._(234);
  static const TSSyntaxKind ModuleBlock = TSSyntaxKind._(269);
  static const TSSyntaxKind NamedImports = TSSyntaxKind._(276);
  static const TSSyntaxKind NamedExports = TSSyntaxKind._(280);
  static const TSSyntaxKind NamespaceExport = TSSyntaxKind._(281);
  static const TSSyntaxKind ExportSpecifier = TSSyntaxKind._(282);
  static const TSSyntaxKind ExternalModuleReference = TSSyntaxKind._(284);
  static const TSSyntaxKind HeritageClause = TSSyntaxKind._(299);
  static const TSSyntaxKind EnumMember = TSSyntaxKind._(307);
  static const TSSyntaxKind SourceFile = TSSyntaxKind._(308);
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
  external TSSourceFile getSourceFile();
}

@JS('Token')
extension type TSToken._(JSObject _) implements TSNode {
  @redeclare
  external TSNode get kind;
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

@JS('IntersectionTypeNode')
extension type TSIntersectionTypeNode._(JSObject _) implements TSTypeNode {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.IntersectionType;
  external TSNodeArray<TSTypeNode> get types;
}

@JS('TypeQueryNode')
extension type TSTypeQueryNode._(JSObject _) implements TSTypeNode {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.TypeQuery;

  // TODO(nikeokoronkwo): Change to EntityName to support
  //  qualified names, https://github.com/dart-lang/web/issues/416
  external TSIdentifier get exprName;
  external TSNodeArray<TSTypeNode>? get typeArguments;
}

@JS('TypeReferenceNode')
extension type TSTypeReferenceNode._(JSObject _) implements TSTypeNode {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.TypeReference;

  @UnionOf([TSIdentifier, TSQualifiedName])
  external TSNode get typeName;
  external TSNodeArray<TSTypeNode>? get typeArguments;
}

@JS('LiteralTypeNode')
extension type TSLiteralTypeNode._(JSObject _) implements TSTypeNode {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.LiteralType;

  external TSLiteral get literal;
}

@JS('IndexedAccessType')
extension type TSIndexedAccessType._(JSObject _) implements TSTypeNode {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.IndexedAccessType;

  external TSTypeNode get objectType;
  external TSTypeNode get indexType;
}

@JS('ParenthesizedTypeNode')
extension type TSParenthesizedTypeNode._(JSObject _) implements TSTypeNode {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.ParenthesizedType;
  external TSTypeNode get type;
}

@JS('TypePredicateNode')
extension type TSTypePredicateNode._(JSObject _) implements TSTypeNode {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.TypePredicate;
  external TSIdentifier get parameterName;
  external TSTypeNode? get type;
}

@JS('ConditionalTypeNode')
extension type TSConditionalTypeNode._(JSObject _) implements TSTypeNode {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.ConditionalType;
  external TSTypeNode get checkType;
  external TSTypeNode get extendsType;
  external TSTypeNode get trueType;
  external TSTypeNode get falseType;
}

@JS('TupleTypeNode')
extension type TSTupleTypeNode._(JSObject _) implements TSTypeNode {
  external TSNodeArray<TSTypeNode> get elements;
}

@JS('NamedTupleMember')
extension type TSNamedTupleMember._(JSObject _)
    implements TSTypeNode, TSDeclaration {
  external TSToken? get dotDotDotToken;
  external TSIdentifier get name;
  external TSToken? get questionToken;
  external TSTypeNode get type;
}

@JS('TypeLiteralNode')
extension type TSTypeLiteralNode._(JSObject _)
    implements TSTypeNode, TSDeclaration {
  external TSNodeArray<TSTypeElement> get members;
}

@JS('TypeOperatorNode')
extension type TSTypeOperatorNode._(JSObject _) implements TSTypeNode {
  external TSSyntaxKind operator;
  external TSTypeNode type;
}

@JS('FunctionOrConstructorTypeNodeBase')
extension type TSFunctionOrConstructorTypeNodeBase._(JSObject _)
    implements TSTypeNode, TSSignatureDeclarationBase {
  external TSTypeNode get type;
}

@JS('FunctionTypeNode')
extension type TSFunctionTypeNode._(JSObject _)
    implements TSFunctionOrConstructorTypeNodeBase {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.FunctionType;
}

@JS('ConstructorTypeNode')
extension type TSConstructorTypeNode._(JSObject _)
    implements TSFunctionOrConstructorTypeNodeBase {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.ConstructorType;
  external TSNodeArray<TSNode>? get modifiers;
}

@JS('Expression')
extension type TSExpression._(JSObject _) implements TSNode {}

@JS('LiteralExpression')
extension type TSLiteralExpression._(JSObject _) implements TSExpression {
  external String text;
  external bool? isUnterminated;
}

@JS('PropertyAccessExpression')
extension type TSPropertyAccessExpression._(JSObject _)
    implements TSNamedDeclaration, TSExpression {
  external TSExpression get expression;
  external TSToken? get questionDotToken;
  external TSIdentifier get name;
}

@JS('Declaration')
extension type TSDeclaration._(JSObject _) implements TSNode {}

@JS()
extension type TSLiteral._(JSObject _)
    implements TSLiteralExpression, TSDeclaration {}

@JS('NumericLiteral')
extension type TSNumericLiteral._(JSObject _) implements TSLiteral {
  @redeclare
  TSSyntaxKind get kind => TSSyntaxKind.NumericLiteral;
}

@JS('StringLiteral')
extension type TSStringLiteral._(JSObject _) implements TSLiteral {}

@JS('Statement')
extension type TSStatement._(JSObject _) implements TSNode {}

@JS('Identifier')
extension type TSIdentifier._(JSObject _)
    implements TSExpression, TSDeclaration {
  external String get text;
}

@JS('QualifiedName')
extension type TSQualifiedName._(JSObject _) implements TSNode {
  @UnionOf([TSIdentifier, TSQualifiedName])
  external TSNode get left;
  external TSIdentifier get right;
}

@JS('NamedDeclaration')
extension type TSNamedDeclaration._(JSObject _) implements TSDeclaration {
  // TODO: Support other name specifiers
  external TSIdentifier? get name;
}

@JS('DeclarationStatement')
extension type TSDeclarationStatement._(JSObject _)
    implements TSNamedDeclaration, TSStatement {
  external TSIdentifier? get name;
}

@JS('ImportAttribute')
extension type TSImportAttribute._(JSObject _) implements TSNode {
  external TSIdentifier get name;
  external TSExpression get value;
}

@JS('ImportAttributes')
extension type TSImportAttributes._(JSObject _) implements TSNode {
  external TSSyntaxKind get token;
  external TSNodeArray<TSImportAttribute> get elements;
}

@JS('NamedImports')
extension type TSNamedImports._(JSObject _) implements TSNode {
  @redeclare
  external TSImportClause get parent;
  external TSNodeArray<TSImportSpecifer> get elements;
}

@JS('NamespaceExport')
extension type TSNamespaceExport._(JSObject _) implements TSNamedDeclaration {
  external TSIdentifier get name;
}

@JS('NamedExports')
extension type TSNamedExports._(JSObject _) implements TSNode {
  external TSNodeArray<TSExportSpecifier> get elements;
}

@JS('ExportSpecifier')
extension type TSExportSpecifier._(JSObject _) implements TSNamedDeclaration {
  external bool get isTypeOnly;
  external TSIdentifier get name;
  external TSIdentifier? get propertyName;
}

@JS('ImportSpecifer')
extension type TSImportSpecifer._(JSObject _) implements TSNamedDeclaration {
  external TSIdentifier get name;
  external TSIdentifier? get propertyName;
  external bool get isTypeOnly;
  @redeclare
  external TSNamedImports get parent;
}

@JS('ImportDeclaration')
extension type TSImportDeclaration._(JSObject _) implements TSStatement {
  external TSNodeArray<TSNode>? get modifiers;
  external TSStringLiteral get moduleSpecifier;
  external TSImportAttributes? get attributes;
}

@JS('ImportClause')
extension type TSImportClause._(JSObject _) implements TSNamedDeclaration {
  external bool get isTypeOnly;
  external TSIdentifier? get name;
  external TSNamedDeclaration? get namedBindings;
  @redeclare
  external TSImportDeclaration get parent;
}

@JS('ExportDeclaration')
extension type TSExportDeclaration._(JSObject _)
    implements TSDeclarationStatement {
  external TSNodeArray<TSNode>? get modifiers;
  external bool get isTypeOnly;
  external TSNode? get exportClause;
  external TSExpression? get moduleSpecifier;
  external TSImportAttributes? get attributes;
}

@JS('ExportAssignment')
extension type TSExportAssignment._(JSObject _)
    implements TSDeclarationStatement {
  external TSNodeArray<TSNode>? get modifiers;
  external bool? get isExportEquals;
  external TSExpression get expression;
}

@JS('ImportEqualsDeclaration')
extension type TSImportEqualsDeclaration._(JSObject _)
    implements TSDeclarationStatement {
  @UnionOf([TSSourceFile, TSModuleDeclaration])
  @redeclare
  external TSDeclaration get parent;

  external TSNodeArray<TSNode>? get modifiers;
  external TSIdentifier get name;
  external bool get isTypeOnly;

  @UnionOf([TSIdentifier, TSQualifiedName, TSExternalModuleReference])
  external TSNode get moduleReference;
}

@JS('ExternalModuleReference')
extension type TSExternalModuleReference._(JSObject _) implements TSNode {
  external TSExpression get expression;
}

@JS('VariableStatement')
extension type TSVariableStatement._(JSObject _) implements TSStatement {
  external TSVariableDeclarationList get declarationList;
  external TSNodeArray<TSNode>? get modifiers;
}

@JS('VariableDeclarationList')
extension type TSVariableDeclarationList._(JSObject _) implements TSNode {
  @redeclare
  external TSVariableStatement get parent;
  external TSNodeArray<TSVariableDeclaration> get declarations;
}

@JS('VariableDeclaration')
extension type TSVariableDeclaration._(JSObject _)
    implements TSNamedDeclaration {
  @redeclare
  external TSVariableDeclarationList get parent;
  external TSIdentifier get name;
  external TSTypeNode? get type;
}

@JS('SignatureDeclarationBase')
extension type TSSignatureDeclarationBase._(JSObject _)
    implements TSNamedDeclaration {
  external TSNodeArray<TSParameterDeclaration> get parameters;
  external TSNodeArray<TSTypeParameterDeclaration>? get typeParameters;
  external TSTypeNode? get type;
  external TSIdentifier? get name;
}

@JS('FunctionLikeDeclarationBase')
extension type TSFunctionLikeDeclarationBase._(JSObject _)
    implements TSSignatureDeclarationBase {
  external TSNode? get asteriskToken;
}

@JS('FunctionDeclaration')
extension type TSFunctionDeclaration._(JSObject _)
    implements TSFunctionLikeDeclarationBase {
  external TSIdentifier get name;
  external TSNodeArray<TSNode>? get modifiers;
}

/// A common API for Classes and Interfaces
extension type TSObjectDeclaration<T extends TSDeclaration>._(JSObject _)
    implements TSDeclarationStatement {
  // TODO: May be undefined for classes in default exports
  external TSIdentifier get name;
  external TSNodeArray<TSNode>? get modifiers;
  external TSNodeArray<TSTypeParameterDeclaration>? get typeParameters;
  external TSNodeArray<TSHeritageClause>? get heritageClauses;
  external TSNodeArray<T> get members;
}

// TODO: Will we consider class expressions?
@JS('ClassDeclaration')
extension type TSClassDeclaration._(JSObject _)
    implements TSObjectDeclaration<TSClassElement> {}

@JS('InterfaceDeclaration')
extension type TSInterfaceDeclaration._(JSObject _)
    implements TSObjectDeclaration<TSTypeElement> {}

@JS('HeritageClause')
extension type TSHeritageClause._(JSObject _) implements TSNode {
  external TSObjectDeclaration get parent;
  external TSSyntaxKind get token;
  external TSNodeArray<TSExpressionWithTypeArguments> get types;
}

@JS('ExpressionWithTypeArguments')
extension type TSExpressionWithTypeArguments._(JSObject _)
    implements TSExpression, TSTypeNode {
  external TSExpression get expression;
  external TSNodeArray<TSTypeNode>? get typeArguments;
}

extension type TSPropertyEntity._(JSObject _) implements TSNamedDeclaration {
  external TSNodeArray<TSNode>? get modifiers;
  @UnionOf([TSIdentifier, TSStringLiteral, TSNumericLiteral])
  external TSNode get name;
  external TSToken? get questionToken;
  external TSTypeNode? get type;
}

extension type TSMethodEntity._(JSObject _)
    implements TSFunctionLikeDeclarationBase {
  external TSNodeArray<TSNode>? get modifiers;
  external TSIdentifier get name;
}

extension type TSConstructorEntity._(JSObject _)
    implements TSSignatureDeclarationBase {
  external TSIdentifier? get name;
}

@JS('ClassElement')
extension type TSClassElement._(JSObject _) implements TSNamedDeclaration {
  external TSIdentifier? get name;
}

@JS('PropertyDeclaration')
extension type TSPropertyDeclaration._(JSObject _)
    implements TSClassElement, TSPropertyEntity {
  external TSNode get name;
}

@JS('MethodDeclaration')
extension type TSMethodDeclaration._(JSObject _)
    implements TSMethodEntity, TSClassElement {
  @redeclare
  external TSIdentifier get name;
}

@JS('ConstructorDeclaration')
extension type TSConstructorDeclaration._(JSObject _)
    implements
        TSConstructorEntity,
        TSFunctionLikeDeclarationBase,
        TSClassElement {
  @redeclare
  external TSIdentifier? get name;
  external TSNodeArray<TSNode>? get modifiers;
}

@JS('TypeElement')
extension type TSTypeElement._(JSObject _) implements TSNamedDeclaration {
  external TSIdentifier? get name;
  external TSToken? get questionToken;
}

@JS('PropertySignature')
extension type TSPropertySignature._(JSObject _)
    implements TSTypeElement, TSPropertyEntity {
  external TSNode get name;
  @redeclare
  external TSToken? get questionToken;
}

@JS('MethodSignature')
extension type TSMethodSignature._(JSObject _)
    implements TSMethodEntity, TSTypeElement {
  @redeclare
  external TSIdentifier get name;
}

@JS('CallSignatureDeclaration')
extension type TSCallSignatureDeclaration._(JSObject _)
    implements TSSignatureDeclarationBase, TSTypeElement {
  @redeclare
  external TSIdentifier? get name;
}

@JS('ConstructSignatureDeclaration')
extension type TSConstructSignatureDeclaration._(JSObject _)
    implements TSConstructorEntity, TSTypeElement {
  @redeclare
  external TSIdentifier? get name;
}

@JS('IndexSignatureDeclaration')
extension type TSIndexSignatureDeclaration._(JSObject _)
    implements TSSignatureDeclarationBase, TSClassElement, TSTypeElement {
  external TSNodeArray<TSToken>? get modifiers;
  external TSTypeNode get type;
  external TSIdentifier? get name;
}

// TODO: ObjectLiteralElement implementation as well
@JS('GetAccessorDeclaration')
extension type TSGetAccessorDeclaration._(JSObject _)
    implements TSFunctionLikeDeclarationBase, TSClassElement, TSTypeElement {
  external TSIdentifier get name;
  external TSNodeArray<TSNode>? get modifiers;
}

@JS('SetAccessorDeclaration')
extension type TSSetAccessorDeclaration._(JSObject _)
    implements TSFunctionLikeDeclarationBase, TSClassElement, TSTypeElement {
  external TSIdentifier get name;
  external TSNodeArray<TSNode>? get modifiers;
}

@JS('TypeAliasDeclaration')
extension type TSTypeAliasDeclaration._(JSObject _)
    implements TSDeclarationStatement, TSStatement {
  external TSNodeArray<TSNode>? get modifiers;
  external TSNodeArray<TSTypeParameterDeclaration>? get typeParameters;
  external TSIdentifier get name;
  external TSTypeNode get type;
}

@JS('ParameterDeclaration')
extension type TSParameterDeclaration._(JSObject _) implements TSDeclaration {
  external TSNode get name;
  external TSTypeNode? get type;
  external TSNodeArray<TSNode>? get modifiers;
  external TSNode? get questionToken;
  external TSNode? get dotDotDotToken;
}

@JS('BindingPattern')
extension type TSBindingPattern<E extends TSNamedDeclaration>._(JSObject _)
    implements TSNode {
  external TSNodeArray<E> get elements;
}

@JS('ObjectBindingPattern')
extension type TSObjectBindingPattern._(JSObject _)
    implements TSBindingPattern<TSBindingElement> {}

@JS('ArrayBindingPattern')
extension type TSArrayBindingPattern._(JSObject _)
    implements TSBindingPattern<TSBindingElement> {}

/** We do not need much from this other than its name */
@JS('BindingElement')
extension type TSBindingElement._(JSObject _) implements TSNamedDeclaration {
  external TSNode get name;
}

@JS('TypeParameterDeclaration')
extension type TSTypeParameterDeclaration._(JSObject _)
    implements TSDeclaration {
  external TSIdentifier get name;
  external TSTypeNode? get constraint;
}

@JS('EnumDeclaration')
extension type TSEnumDeclaration._(JSObject _)
    implements TSDeclarationStatement, TSStatement {
  external TSIdentifier get name;
  external TSNodeArray<TSNode>? get modifiers;
  external TSNodeArray<TSEnumMember> get members;
}

@JS('EnumMember')
extension type TSEnumMember._(JSObject _) implements TSNamedDeclaration {
  external TSIdentifier get name;
  external TSExpression? get initializer;
  @redeclare
  external TSEnumDeclaration get parent;
}

@JS('ModuleDeclaration')
extension type TSModuleDeclaration._(JSObject _)
    implements TSDeclarationStatement {
  @UnionOf([TSSourceFile, TSModuleDeclaration])
  @redeclare
  external TSDeclaration get parent;

  @UnionOf([TSIdentifier, TSStringLiteral])
  external TSExpression get name;
  external TSNodeArray<TSNode>? get modifiers;
  @UnionOf([TSModuleBlock, TSNamespaceDeclaration])
  external TSStatement? get body;
}

@JS('NamespaceDeclaration')
extension type TSNamespaceDeclaration._(JSObject _)
    implements TSModuleDeclaration {
  @redeclare
  external TSIdentifier get name;
}

@JS('ModuleBlock')
extension type TSModuleBlock._(JSObject _) implements TSNode, TSStatement {
  @redeclare
  external TSModuleDeclaration get parent;
  external TSNodeArray<TSStatement> get statements;
}

@JS('NodeArray')
extension type TSNodeArray<T extends TSNode>._(JSArray<T> _)
    implements JSArray<T> {}

@JS('Symbol')
extension type TSSymbol._(JSObject _) implements JSObject {
  external String get name;
  external JSArray<TSDeclaration>? getDeclarations();
  external JSArray<TSSymbolDisplayPart> getDocumentationComment(
    TSTypeChecker? typeChecker,
  );
  external JSArray<JSDocTagInfo> getJsDocTags([TSTypeChecker checker]);
  external TSSymbolTable? get exports;
}

typedef TSSymbolTable = JSMap<JSString, TSSymbol>;

@JS('SymbolDisplayPart')
extension type TSSymbolDisplayPart._(JSObject _) implements JSObject {
  external String text;
  external String kind;
}

@JS()
extension type JSDocTagInfo._(JSObject _) implements JSObject {
  external String name;
  external JSArray<TSSymbolDisplayPart>? text;
}

@JS('Type')
extension type TSType._(JSObject _) implements JSObject {
  external TSSymbol get symbol;
  external TSSymbol? get aliasSymbol;
  external bool isTypeParameter();
  external TSTypeFlags get flags;
  external bool isLiteral();
  external bool isStringLiteral();
  external bool isNumberLiteral();
  external bool isUnion();
  external bool isIntersection();
}

@JS('LiteralType')
extension type TSLiteralType._(JSObject _) implements TSType {
  external JSAny? get value;
  // value can be string too, but we might need specific types for that
}

@JS('NumberLiteralType')
extension type TSNumberLiteralType._(JSObject _) implements TSLiteralType {
  @redeclare
  external num get value;
}

@JS('StringLiteralType')
extension type TSStringLiteralType._(JSObject _) implements TSLiteralType {
  @redeclare
  external String get value;
}

// Boolean literal types often just have the flag and maybe an 'intrinsicName'
