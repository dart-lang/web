// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'webidl.dart';

typedef ImportExportKind = JSString;
typedef TableKind = JSString;
typedef ValueType = JSString;

@JS()
@staticInterop
@anonymous
class WebAssemblyInstantiatedSource {
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
abstract class $WebAssembly {
  external factory $WebAssembly();
}

extension $WebAssemblyExtension on $WebAssembly {
  external JSBoolean validate(BufferSource bytes);
  external JSPromise compile(BufferSource bytes);
  external JSPromise instantiate(BufferSource bytes);
  external JSPromise instantiate1(
    BufferSource bytes,
    JSObject importObject,
  );
  @JS('instantiate')
  external JSPromise instantiate_1_(Module moduleObject);
  @JS('instantiate')
  external JSPromise instantiate_1_1(
    Module moduleObject,
    JSObject importObject,
  );
  external JSPromise compileStreaming(JSPromise source);
  external JSPromise instantiateStreaming(JSPromise source);
  external JSPromise instantiateStreaming1(
    JSPromise source,
    JSObject importObject,
  );
}

@JS()
@staticInterop
@anonymous
class ModuleExportDescriptor {
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
class ModuleImportDescriptor {
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
class Module {
  external factory Module();

  external factory Module.a1(BufferSource bytes);

  external static JSArray exports(Module moduleObject);
  external static JSArray imports(Module moduleObject);
  external static JSArray customSections(
    Module moduleObject,
    JSString sectionName,
  );
}

@JS('Instance')
@staticInterop
class Instance {
  external factory Instance();

  external factory Instance.a1(Module module);

  external factory Instance.a2(
    Module module,
    JSObject importObject,
  );
}

extension InstanceExtension on Instance {
  external JSObject get exports;
}

@JS()
@staticInterop
@anonymous
class MemoryDescriptor {
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
class Memory {
  external factory Memory();

  external factory Memory.a1(MemoryDescriptor descriptor);
}

extension MemoryExtension on Memory {
  external JSNumber grow(JSNumber delta);
  external JSArrayBuffer get buffer;
}

@JS()
@staticInterop
@anonymous
class TableDescriptor {
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
class Table {
  external factory Table();

  external factory Table.a1(TableDescriptor descriptor);

  external factory Table.a2(
    TableDescriptor descriptor,
    JSAny value,
  );
}

extension TableExtension on Table {
  external JSNumber grow(JSNumber delta);
  external JSNumber grow1(
    JSNumber delta,
    JSAny value,
  );
  external JSAny get(JSNumber index);
  external JSVoid set(JSNumber index);
  external JSVoid set1(
    JSNumber index,
    JSAny value,
  );
  external JSNumber get length;
}

@JS()
@staticInterop
@anonymous
class GlobalDescriptor {
  external factory GlobalDescriptor({
    required ValueType value,
    JSBoolean mutable = false,
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
class Global {
  external factory Global();

  external factory Global.a1(GlobalDescriptor descriptor);

  external factory Global.a2(
    GlobalDescriptor descriptor,
    JSAny v,
  );
}

extension GlobalExtension on Global {
  external JSAny valueOf();
  external set value(JSAny value);
  external JSAny get value;
}
