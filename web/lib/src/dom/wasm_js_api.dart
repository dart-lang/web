// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'fetch.dart';
import 'webidl.dart';

typedef AddressValue = JSAny?;
typedef ImportExportKind = String;
typedef AddressType = String;
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
extension type WebAssemblyCompileOptions._(JSObject _) implements JSObject {
  external factory WebAssemblyCompileOptions({
    String? importedStringConstants,
    JSArray<JSString> builtins,
  });

  external String? get importedStringConstants;
  external set importedStringConstants(String? value);
  external JSArray<JSString> get builtins;
  external set builtins(JSArray<JSString> value);
}
@JS()
external $WebAssembly get WebAssembly;
@JS('WebAssembly')
extension type $WebAssembly._(JSObject _) implements JSObject {
  external bool validate(
    BufferSource bytes, [
    WebAssemblyCompileOptions options,
  ]);
  external JSPromise<Module> compile(
    BufferSource bytes, [
    WebAssemblyCompileOptions options,
  ]);
  external JSPromise<JSObject> instantiate(
    JSObject bytesOrModuleObject, [
    JSObject importObject,
    WebAssemblyCompileOptions options,
  ]);
  external JSPromise<Module> compileStreaming(
    JSPromise<Response> source, [
    WebAssemblyCompileOptions options,
  ]);
  external JSPromise<WebAssemblyInstantiatedSource> instantiateStreaming(
    JSPromise<Response> source, [
    JSObject importObject,
    WebAssemblyCompileOptions options,
  ]);
  external Tag get JSTag;
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
  external factory Module(
    BufferSource bytes, [
    WebAssemblyCompileOptions options,
  ]);

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
    required AddressValue initial,
    AddressValue maximum,
    AddressType address,
  });

  external AddressValue get initial;
  external set initial(AddressValue value);
  external AddressValue get maximum;
  external set maximum(AddressValue value);
  external AddressType get address;
  external set address(AddressType value);
}
@JS('WebAssembly.Memory')
extension type Memory._(JSObject _) implements JSObject {
  external factory Memory(MemoryDescriptor descriptor);

  external AddressValue grow(AddressValue delta);
  external JSArrayBuffer get buffer;
}
extension type TableDescriptor._(JSObject _) implements JSObject {
  external factory TableDescriptor({
    required TableKind element,
    required AddressValue initial,
    AddressValue maximum,
    AddressType address,
  });

  external TableKind get element;
  external set element(TableKind value);
  external AddressValue get initial;
  external set initial(AddressValue value);
  external AddressValue get maximum;
  external set maximum(AddressValue value);
  external AddressType get address;
  external set address(AddressType value);
}
@JS('WebAssembly.Table')
extension type Table._(JSObject _) implements JSObject {
  external factory Table(
    TableDescriptor descriptor, [
    JSAny? value,
  ]);

  external AddressValue grow(
    AddressValue delta, [
    JSAny? value,
  ]);
  external JSAny? get(AddressValue index);
  external void set(
    AddressValue index, [
    JSAny? value,
  ]);
  external AddressValue get length;
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
extension type TagType._(JSObject _) implements JSObject {
  external factory TagType({required JSArray<JSString> parameters});

  external JSArray<JSString> get parameters;
  external set parameters(JSArray<JSString> value);
}
@JS('WebAssembly.Tag')
extension type Tag._(JSObject _) implements JSObject {
  external factory Tag(TagType type);
}
extension type ExceptionOptions._(JSObject _) implements JSObject {
  external factory ExceptionOptions({bool traceStack});

  external bool get traceStack;
  external set traceStack(bool value);
}
@JS('WebAssembly.Exception')
extension type Exception._(JSObject _) implements JSObject {
  external factory Exception(
    Tag exceptionTag,
    JSArray<JSAny?> payload, [
    ExceptionOptions options,
  ]);

  external JSAny? getArg(int index);
  @JS('is')
  external bool is_(Tag exceptionTag);
}
