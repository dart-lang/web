// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef ImportExportKind = JSString;
typedef TableKind = JSString;
typedef ValueType = JSString;

@JS('WebAssemblyInstantiatedSource')
@staticInterop
class WebAssemblyInstantiatedSource {
  external factory WebAssemblyInstantiatedSource();
}

extension WebAssemblyInstantiatedSourceExtension
    on WebAssemblyInstantiatedSource {
  // TODO
  // TODO
}

@JS()
external _WebAssembly get WebAssembly;

@JS('WebAssembly')
@staticInterop
class _WebAssembly {
  external factory _WebAssembly();
}

extension _WebAssemblyExtension on _WebAssembly {
  external JSBoolean validate(BufferSource bytes);
  external JSPromise compile(BufferSource bytes);
  external JSPromise instantiate(BufferSource bytes);
  external JSPromise instantiate_1(BufferSource bytes, JSObject importObject);
  @JS('instantiate')
  external JSPromise instantiate1(Module moduleObject);
  @JS('instantiate')
  external JSPromise instantiate1_1(Module moduleObject, JSObject importObject);
  external JSPromise compileStreaming(JSPromise source);
  external JSPromise instantiateStreaming(JSPromise source);
  external JSPromise instantiateStreaming_1(
      JSPromise source, JSObject importObject);
}

@JS('ModuleExportDescriptor')
@staticInterop
class ModuleExportDescriptor {
  external factory ModuleExportDescriptor();
}

extension ModuleExportDescriptorExtension on ModuleExportDescriptor {
  // TODO
  // TODO
}

@JS('ModuleImportDescriptor')
@staticInterop
class ModuleImportDescriptor {
  external factory ModuleImportDescriptor();
}

extension ModuleImportDescriptorExtension on ModuleImportDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS('Module')
@staticInterop
class Module {
  external factory Module();
  external factory Module.a1(BufferSource bytes);
  external static JSArray exports(Module moduleObject);
  external static JSArray imports(Module moduleObject);
  external static JSArray customSections(
      Module moduleObject, JSString sectionName);
}

@JS('Instance')
@staticInterop
class Instance {
  external factory Instance();
  external factory Instance.a1(Module module);
  external factory Instance.a1_1(Module module, JSObject importObject);
}

extension InstanceExtension on Instance {
  external JSObject get exports;
}

@JS('MemoryDescriptor')
@staticInterop
class MemoryDescriptor {
  external factory MemoryDescriptor();
}

extension MemoryDescriptorExtension on MemoryDescriptor {
  // TODO
  // TODO
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

@JS('TableDescriptor')
@staticInterop
class TableDescriptor {
  external factory TableDescriptor();
}

extension TableDescriptorExtension on TableDescriptor {
  // TODO
  // TODO
  // TODO
}

@JS('Table')
@staticInterop
class Table {
  external factory Table();
  external factory Table.a1(TableDescriptor descriptor);
  external factory Table.a1_1(TableDescriptor descriptor, JSAny value);
}

extension TableExtension on Table {
  external JSNumber grow(JSNumber delta);
  external JSNumber grow_1(JSNumber delta, JSAny value);
  external JSAny get(JSNumber index);
  external JSUndefined set(JSNumber index);
  external JSUndefined set_1(JSNumber index, JSAny value);
  external JSNumber get length;
}

@JS('GlobalDescriptor')
@staticInterop
class GlobalDescriptor {
  external factory GlobalDescriptor();
}

extension GlobalDescriptorExtension on GlobalDescriptor {
  // TODO
  // TODO
}

@JS('Global')
@staticInterop
class Global {
  external factory Global();
  external factory Global.a1(GlobalDescriptor descriptor);
  external factory Global.a1_1(GlobalDescriptor descriptor, JSAny v);
}

extension GlobalExtension on Global {
  external JSAny valueOf();
  external JSAny get value;
  external set value(JSAny value);
}
