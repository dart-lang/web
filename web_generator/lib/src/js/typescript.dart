// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@JS('ts')
library;

import 'dart:js_interop';

import 'package:meta/meta.dart';

import 'typescript.types.dart';

@JS()
external TSProgram createProgram(
    JSArray<JSString> files, TSCompilerOptions options);

@JS()
external TSSourceFile createSourceFile(
  String filename,
  String contents,
);

@JS()
external void forEachChild<T extends JSAny>(
    TSNode node, TSNodeCallback<T> cbNode,
    [TSNodeArrayCallback<T>? cdNodes]);

@JS()
external bool isTypeReferenceNode(TSNode node);

@JS()
external bool isThisTypeNode(TSNode node);

@JS()
external TSLineAndCharacter getLineAndCharacterOfPosition(
    TSSourceFile sourceFile, int position);

@JS()
external String flattenDiagnosticMessageText(JSAny? diag, String newLine,
    [int indent]);

@JS('CompilerOptions')
extension type TSCompilerOptions._(JSObject _) implements JSObject {
  external TSCompilerOptions({bool? allowJs, bool? declaration});
  factory TSCompilerOptions.fromJSObject(JSObject object) => TSCompilerOptions._(object);
  external bool? get allowJs;
  external bool? get declaration;
}

@JS('Program')
extension type TSProgram._(JSObject _) implements JSObject {
  external TSSourceFile? getSourceFile(String file);
  external TSTypeChecker getTypeChecker();

  /// Diagnostics related to syntax errors
  external JSArray<TSDiagnosticWithLocation> getSyntacticDiagnostics([
    TSSourceFile? sourceFile,
  ]);

  /// Diagnostics related to type-checking
  external JSArray<TSDiagnostic> getSemanticDiagnostics([
    TSSourceFile? sourceFile,
  ]);

  /// Diagnostics related to the .d.ts file itself
  external JSArray<TSDiagnosticWithLocation> getDeclarationDiagnostics([
    TSSourceFile? sourceFile,
  ]);
}

@JS('DiagnosticRelatedInformation')
extension type TSDiagnosticRelatedInformation._(JSObject _)
    implements JSObject {
  external TSSourceFile? file;
  external int code;

  /// [String] or `TSDiagnosticMessageChain` (unimplemented)
  external JSAny messageText;
  external int? start;
}

@JS('Diagnostic')
extension type TSDiagnostic._(JSObject _)
    implements TSDiagnosticRelatedInformation {
  external String? source;
  external JSArray<TSDiagnosticRelatedInformation>? relatedInformation;

  @doNotStore
  external JSObject? get reportsUnnecessary;
  @doNotStore
  external JSObject? get reportsDeprecated;
}

@JS('DiagnosticWithLocation')
extension type TSDiagnosticWithLocation._(JSObject _) implements TSDiagnostic {
  external TSSourceFile file;
  external int start;
  external int length;
}

@JS('TypeChecker')
extension type TSTypeChecker._(JSObject _) implements JSObject {
  external TSSymbol? getSymbolAtLocation(TSNode node);
  external TSSymbol getAliasedSymbol(TSSymbol symbol);
  external TSType? getTypeFromTypeNode(TSTypeNode type);
  external String getFullyQualifiedName(TSSymbol symbol);
  external TSType getTypeOfSymbol(TSSymbol symbol);
}

// TODO: Can we make use of `FileReference`s
@JS('SourceFile')
extension type TSSourceFile._(JSObject _) implements TSDeclaration {
  external String fileName;
  external String? moduleName;
  external String text;
}

extension type TSNodeCallback<T extends JSAny>._(JSObject _)
    implements JSObject {
  external T? call(TSNode node);
}

extension type TSNodeArrayCallback<T extends JSAny>._(JSObject _)
    implements JSObject {
  external T? call(TSNodeArray<TSNode> nodes);
}

@JS('LineAndCharacter')
extension type TSLineAndCharacter._(JSObject _) implements JSObject {
  external JSNumber get line;
  external JSNumber get character;
}
