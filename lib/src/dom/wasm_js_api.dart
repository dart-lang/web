// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library wasm_js_api;

import 'dart:js_interop';

import 'webidl.dart';

typedef ImportExportKind = String;
typedef TableKind = String;
typedef ValueType = String;
extension type WebAssemblyInstantiatedSource._(JSObject _) implements JSObject {
  external factory WebAssemblyInstantiatedSource({
    required Module module,
    required Instance instance,
  });

  external set module(Module value);
  external Module get module;
  external set instance(Instance value);
  external Instance get instance;
}
@JS()
external $WebAssembly get WebAssembly;
@JS('WebAssembly')
extension type $WebAssembly._(JSObject _) implements JSObject {
  external bool validate(BufferSource bytes);
  external JSPromise compile(BufferSource bytes);
  external JSPromise instantiate(
    JSObject bytesOrModuleObject, [
    JSObject importObject,
  ]);
  external JSPromise compileStreaming(JSPromise source);
  external JSPromise instantiateStreaming(
    JSPromise source, [
    JSObject importObject,
  ]);
}
extension type ModuleExportDescriptor._(JSObject _) implements JSObject {
  external factory ModuleExportDescriptor({
    required String name,
    required ImportExportKind kind,
  });

  external set name(String value);
  external String get name;
  external set kind(ImportExportKind value);
  external ImportExportKind get kind;
}
extension type ModuleImportDescriptor._(JSObject _) implements JSObject {
  external factory ModuleImportDescriptor({
    required String module,
    required String name,
    required ImportExportKind kind,
  });

  external set module(String value);
  external String get module;
  external set name(String value);
  external String get name;
  external set kind(ImportExportKind value);
  external ImportExportKind get kind;
}
extension type Module._(JSObject _) implements JSObject {
  external factory Module(BufferSource bytes);

  external static JSArray exports(Module moduleObject);
  external static JSArray imports(Module moduleObject);
  external static JSArray customSections(
    Module moduleObject,
    String sectionName,
  );
}
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

  external set initial(int value);
  external int get initial;
  external set maximum(int value);
  external int get maximum;
}
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

  external set element(TableKind value);
  external TableKind get element;
  external set initial(int value);
  external int get initial;
  external set maximum(int value);
  external int get maximum;
}
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

  external set value(ValueType value);
  external ValueType get value;
  external set mutable(bool value);
  external bool get mutable;
}
extension type Global._(JSObject _) implements JSObject {
  external factory Global(
    GlobalDescriptor descriptor, [
    JSAny? v,
  ]);

  external JSAny? valueOf();
  external set value(JSAny? value);
  external JSAny? get value;
}
