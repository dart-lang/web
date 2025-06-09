
@JS('ts')
library;

import 'dart:js_interop';

@JS('SyntaxKind')
extension type const TSSyntaxKind._(int _) {
  /// declarations
  static const TSSyntaxKind ClassDeclaration = TSSyntaxKind._(263);
  static const TSSyntaxKind VariableDeclaration = TSSyntaxKind._(260);
  static const TSSyntaxKind InterfaceDeclaration = TSSyntaxKind._(264);
  static const TSSyntaxKind FunctionDeclaration = TSSyntaxKind._(262);
  static const TSSyntaxKind ExportDeclaration = TSSyntaxKind._(278);

  /// keywords
  static const TSSyntaxKind ExportKeyword = TSSyntaxKind._(95);
  static const TSSyntaxKind DeclareKeyword = TSSyntaxKind._(138);
  static const TSSyntaxKind ExtendsKeyword = TSSyntaxKind._(96);
  static const TSSyntaxKind ImplementsKeyword = TSSyntaxKind._(119);

  /// Other
  static const TSSyntaxKind Identifier = TSSyntaxKind._(80);
  static const TSSyntaxKind TypeParameter = TSSyntaxKind._(168);
  static const TSSyntaxKind HeritageClause = TSSyntaxKind._(298);
  static const TSSyntaxKind ExpressionWithTypeArguments = TSSyntaxKind._(233);
}

@JS('Node') 
extension type TSNode._(JSObject _) implements JSObject {
  external TSSyntaxKind get kind;
  external TSNode get parent;
}

@JS('Declaration') 
extension type TSDeclaration._(JSObject _) implements TSNode {}

@JS('VariableDeclaration')
extension type TSVariableDeclaration._(JSObject _) implements TSDeclaration {
  
}

@JS('NodeArray') 
extension type TSNodeArray<T extends TSNode>._(JSArray _) implements JSArray {}