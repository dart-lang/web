// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@JS('ts')
library;

import 'dart:js_interop';

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

@JS('CompilerOptions')
extension type TSCompilerOptions._(JSObject _) implements JSObject {
  external TSCompilerOptions({bool? allowJs, bool? declaration});
  external bool? get allowJs;
  external bool? get declaration;
}

@JS('Program')
extension type TSProgram._(JSObject _) implements JSObject {
  external TSSourceFile? getSourceFile(String file);
  external TSTypeChecker getTypeChecker();
}

@JS('TypeChecker')
extension type TSTypeChecker._(JSObject _) implements JSObject {
  external TSSymbol? getSymbolAtLocation(TSNode node);
}

@JS('SourceFile')
extension type TSSourceFile._(JSObject _) implements TSNode {}

extension type TSNodeCallback<T extends JSAny>._(JSObject _)
    implements JSObject {
  external T? call(TSNode node);
}

extension type TSNodeArrayCallback<T extends JSAny>._(JSObject _)
    implements JSObject {
  external T? call(TSNodeArray<TSNode> nodes);
}
