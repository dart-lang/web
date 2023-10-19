// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webidl.dart';

typedef ImportExportKind = String;
typedef TableKind = String;
typedef ValueType = String;

@JS()
@staticInterop
@anonymous
class WebAssemblyInstantiatedSource implements JSObject {
  external factory WebAssemblyInstantiatedSource({
    required Module module,
    required Instance instance,
  });
}

extension WebAssemblyInstantiatedSourceExtension
    on WebAssemblyInstantiatedSource {
  external set module(Module value);
  external Module get module;
  external set instance(Instance value);
  external Instance get instance;
}

@JS()
external $WebAssembly get WebAssembly;

@JS('WebAssembly')
@staticInterop
abstract class $WebAssembly {}

extension $WebAssemblyExtension on $WebAssembly {
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

@JS()
@staticInterop
@anonymous
class ModuleExportDescriptor implements JSObject {
  external factory ModuleExportDescriptor({
    required String name,
    required ImportExportKind kind,
  });
}

extension ModuleExportDescriptorExtension on ModuleExportDescriptor {
  external set name(String value);
  external String get name;
  external set kind(ImportExportKind value);
  external ImportExportKind get kind;
}

@JS()
@staticInterop
@anonymous
class ModuleImportDescriptor implements JSObject {
  external factory ModuleImportDescriptor({
    required String module,
    required String name,
    required ImportExportKind kind,
  });
}

extension ModuleImportDescriptorExtension on ModuleImportDescriptor {
  external set module(String value);
  external String get module;
  external set name(String value);
  external String get name;
  external set kind(ImportExportKind value);
  external ImportExportKind get kind;
}

@JS('Module')
@staticInterop
class Module implements JSObject {
  external factory Module(BufferSource bytes);

  external static JSArray exports(Module moduleObject);
  external static JSArray imports(Module moduleObject);
  external static JSArray customSections(
    Module moduleObject,
    String sectionName,
  );
}

@JS('Instance')
@staticInterop
class Instance implements JSObject {
  external factory Instance(
    Module module, [
    JSObject importObject,
  ]);
}

extension InstanceExtension on Instance {
  external JSObject get exports;
}

@JS()
@staticInterop
@anonymous
class MemoryDescriptor implements JSObject {
  external factory MemoryDescriptor({
    required int initial,
    int maximum,
  });
}

extension MemoryDescriptorExtension on MemoryDescriptor {
  external set initial(int value);
  external int get initial;
  external set maximum(int value);
  external int get maximum;
}

@JS('Memory')
@staticInterop
class Memory implements JSObject {
  external factory Memory(MemoryDescriptor descriptor);
}

extension MemoryExtension on Memory {
  external int grow(int delta);
  external JSArrayBuffer get buffer;
}

@JS()
@staticInterop
@anonymous
class TableDescriptor implements JSObject {
  external factory TableDescriptor({
    required TableKind element,
    required int initial,
    int maximum,
  });
}

extension TableDescriptorExtension on TableDescriptor {
  external set element(TableKind value);
  external TableKind get element;
  external set initial(int value);
  external int get initial;
  external set maximum(int value);
  external int get maximum;
}

@JS('Table')
@staticInterop
class Table implements JSObject {
  external factory Table(
    TableDescriptor descriptor, [
    JSAny? value,
  ]);
}

extension TableExtension on Table {
  external int grow(
    int delta, [
    JSAny? value,
  ]);
  external JSAny? get(int index);
  external JSVoid set(
    int index, [
    JSAny? value,
  ]);
  external int get length;
}

@JS()
@staticInterop
@anonymous
class GlobalDescriptor implements JSObject {
  external factory GlobalDescriptor({
    required ValueType value,
    bool mutable,
  });
}

extension GlobalDescriptorExtension on GlobalDescriptor {
  external set value(ValueType value);
  external ValueType get value;
  external set mutable(bool value);
  external bool get mutable;
}

@JS('Global')
@staticInterop
class Global implements JSObject {
  external factory Global(
    GlobalDescriptor descriptor, [
    JSAny? v,
  ]);
}

extension GlobalExtension on Global {
  external JSAny? valueOf();
  external set value(JSAny? value);
  external JSAny? get value;
}
