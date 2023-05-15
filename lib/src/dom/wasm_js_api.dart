// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webidl.dart';

typedef ImportExportKind = JSString;
typedef TableKind = JSString;
typedef ValueType = JSString;

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
  external JSBoolean validate(BufferSource bytes);
  external JSPromise compile(BufferSource bytes);
  external JSPromise instantiate(
    JSAny bytesOrModuleObject, [
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
    required JSString name,
    required ImportExportKind kind,
  });
}

extension ModuleExportDescriptorExtension on ModuleExportDescriptor {
  external set name(JSString value);
  external JSString get name;
  external set kind(ImportExportKind value);
  external ImportExportKind get kind;
}

@JS()
@staticInterop
@anonymous
class ModuleImportDescriptor implements JSObject {
  external factory ModuleImportDescriptor({
    required JSString module,
    required JSString name,
    required ImportExportKind kind,
  });
}

extension ModuleImportDescriptorExtension on ModuleImportDescriptor {
  external set module(JSString value);
  external JSString get module;
  external set name(JSString value);
  external JSString get name;
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
    JSString sectionName,
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
    required JSNumber initial,
    JSNumber maximum,
  });
}

extension MemoryDescriptorExtension on MemoryDescriptor {
  external set initial(JSNumber value);
  external JSNumber get initial;
  external set maximum(JSNumber value);
  external JSNumber get maximum;
}

@JS('Memory')
@staticInterop
class Memory implements JSObject {
  external factory Memory(MemoryDescriptor descriptor);
}

extension MemoryExtension on Memory {
  external JSNumber grow(JSNumber delta);
  external JSArrayBuffer get buffer;
}

@JS()
@staticInterop
@anonymous
class TableDescriptor implements JSObject {
  external factory TableDescriptor({
    required TableKind element,
    required JSNumber initial,
    JSNumber maximum,
  });
}

extension TableDescriptorExtension on TableDescriptor {
  external set element(TableKind value);
  external TableKind get element;
  external set initial(JSNumber value);
  external JSNumber get initial;
  external set maximum(JSNumber value);
  external JSNumber get maximum;
}

@JS('Table')
@staticInterop
class Table implements JSObject {
  external factory Table(
    TableDescriptor descriptor, [
    JSAny value,
  ]);
}

extension TableExtension on Table {
  external JSNumber grow(
    JSNumber delta, [
    JSAny value,
  ]);
  external JSAny get(JSNumber index);
  external JSVoid set(
    JSNumber index, [
    JSAny value,
  ]);
  external JSNumber get length;
}

@JS()
@staticInterop
@anonymous
class GlobalDescriptor implements JSObject {
  external factory GlobalDescriptor({
    required ValueType value,
    JSBoolean mutable,
  });
}

extension GlobalDescriptorExtension on GlobalDescriptor {
  external set value(ValueType value);
  external ValueType get value;
  external set mutable(JSBoolean value);
  external JSBoolean get mutable;
}

@JS('Global')
@staticInterop
class Global implements JSObject {
  external factory Global(
    GlobalDescriptor descriptor, [
    JSAny v,
  ]);
}

extension GlobalExtension on Global {
  external JSAny valueOf();
  external set value(JSAny value);
  external JSAny get value;
}
