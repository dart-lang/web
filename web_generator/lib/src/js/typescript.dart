@JS('ts')
library;

import 'dart:js_interop';

import 'typescript.types.dart';

@JS('CompilerOptions')
extension type TSCompilerOptions._(JSObject _) implements JSObject {
  external TSCompilerOptions({bool? allowJs, bool? declaration});
  external bool? get allowJs;
  external bool? get declaration;
}

@JS('Program')
extension type TSProgram._(JSObject _) implements JSObject {
  external TSSourceFile? getSourceFile(String file);
}

@JS('SourceFile')
extension type TSSourceFile._(JSObject _) implements TSNode {}

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

extension type TSNodeCallback<T extends JSAny>._(JSObject _)
    implements JSObject {
  external T? call(TSNode node);
}

extension type TSNodeArrayCallback<T extends JSAny>._(JSObject _)
    implements JSObject {
  external T? call(TSNodeArray<TSNode> nodes);
}
