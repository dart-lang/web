// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'fetch.dart';
import 'webidl.dart';

typedef ImportExportKind = String;
typedef TableKind = String;
typedef ValueType = String;
extension type WebAssemblyInstantiatedSource._(JSObject _) implements JSObject {
  external factory WebAssemblyInstantiatedSource({
    required Module module,
    required Instance instance,
  });

  external Module get module;
  external set module(Module value);
  external Instance get instance;
  external set instance(Instance value);
}
@JS()
external $WebAssembly get WebAssembly;
@JS('WebAssembly')
extension type $WebAssembly._(JSObject _) implements JSObject {
  external bool validate(BufferSource bytes);
  external JSPromise<Module> compile(BufferSource bytes);
  external JSPromise<JSObject> instantiate(
    JSObject bytesOrModuleObject, [
    JSObject importObject,
  ]);
  external JSPromise<Module> compileStreaming(JSPromise<Response> source);
  external JSPromise<WebAssemblyInstantiatedSource> instantiateStreaming(
    JSPromise<Response> source, [
    JSObject importObject,
  ]);
}
extension type ModuleExportDescriptor._(JSObject _) implements JSObject {
  external factory ModuleExportDescriptor({
    required String name,
    required ImportExportKind kind,
  });

  external String get name;
  external set name(String value);
  external ImportExportKind get kind;
  external set kind(ImportExportKind value);
}
extension type ModuleImportDescriptor._(JSObject _) implements JSObject {
  external factory ModuleImportDescriptor({
    required String module,
    required String name,
    required ImportExportKind kind,
  });

  external String get module;
  external set module(String value);
  external String get name;
  external set name(String value);
  external ImportExportKind get kind;
  external set kind(ImportExportKind value);
}
@JS('WebAssembly.Module')
extension type Module._(JSObject _) implements JSObject {
  external factory Module(BufferSource bytes);

  external static JSArray<ModuleExportDescriptor> exports(Module moduleObject);
  external static JSArray<ModuleImportDescriptor> imports(Module moduleObject);
  external static JSArray<JSArrayBuffer> customSections(
    Module moduleObject,
    String sectionName,
  );
}
@JS('WebAssembly.Instance')
extension type Instance._(JSObject _) implements JSObject {
  external factory Instance(
    Module module, [
    JSObject importObject,
  ]);

  external JSObject get exports;
}
extension type MemoryDescriptor._(JSObject _) implements JSObject {
  external factory MemoryDescriptor({
    required int initial,
    int maximum,
  });

  external int get initial;
  external set initial(int value);
  external int get maximum;
  external set maximum(int value);
}
@JS('WebAssembly.Memory')
extension type Memory._(JSObject _) implements JSObject {
  external factory Memory(MemoryDescriptor descriptor);

  external int grow(int delta);
  external JSArrayBuffer get buffer;
}
extension type TableDescriptor._(JSObject _) implements JSObject {
  external factory TableDescriptor({
    required TableKind element,
    required int initial,
    int maximum,
  });

  external TableKind get element;
  external set element(TableKind value);
  external int get initial;
  external set initial(int value);
  external int get maximum;
  external set maximum(int value);
}
@JS('WebAssembly.Table')
extension type Table._(JSObject _) implements JSObject {
  external factory Table(
    TableDescriptor descriptor, [
    JSAny? value,
  ]);

  external int grow(
    int delta, [
    JSAny? value,
  ]);
  external JSAny? get(int index);
  external void set(
    int index, [
    JSAny? value,
  ]);
  external int get length;
}
extension type GlobalDescriptor._(JSObject _) implements JSObject {
  external factory GlobalDescriptor({
    required ValueType value,
    bool mutable,
  });

  external ValueType get value;
  external set value(ValueType value);
  external bool get mutable;
  external set mutable(bool value);
}
@JS('WebAssembly.Global')
extension type Global._(JSObject _) implements JSObject {
  external factory Global(
    GlobalDescriptor descriptor, [
    JSAny? v,
  ]);

  external JSAny? valueOf();
  external JSAny? get value;
  external set value(JSAny? value);
}
