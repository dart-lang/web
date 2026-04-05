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

import 'fs.dart';
import 'permissions.dart';

typedef StartInDirectory = JSAny;
typedef FileSystemPermissionMode = String;
typedef WellKnownDirectory = String;
extension type FileSystemPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory FileSystemPermissionDescriptor({
    required String name,
    required FileSystemHandle handle,
    FileSystemPermissionMode mode,
  });

  external FileSystemHandle get handle;
  external set handle(FileSystemHandle value);
  external FileSystemPermissionMode get mode;
  external set mode(FileSystemPermissionMode value);
}
extension type FileSystemHandlePermissionDescriptor._(JSObject _)
    implements JSObject {
  external factory FileSystemHandlePermissionDescriptor(
      {FileSystemPermissionMode mode});

  external FileSystemPermissionMode get mode;
  external set mode(FileSystemPermissionMode value);
}
extension type FilePickerAcceptType._(JSObject _) implements JSObject {
  external factory FilePickerAcceptType({
    String description,
    JSObject accept,
  });

  external String get description;
  external set description(String value);
  external JSObject get accept;
  external set accept(JSObject value);
}
extension type FilePickerOptions._(JSObject _) implements JSObject {
  external factory FilePickerOptions({
    JSArray<FilePickerAcceptType> types,
    bool excludeAcceptAllOption,
    String id,
    StartInDirectory startIn,
  });

  external JSArray<FilePickerAcceptType> get types;
  external set types(JSArray<FilePickerAcceptType> value);
  external bool get excludeAcceptAllOption;
  external set excludeAcceptAllOption(bool value);
  external String get id;
  external set id(String value);
  external StartInDirectory get startIn;
  external set startIn(StartInDirectory value);
}
extension type OpenFilePickerOptions._(JSObject _)
    implements FilePickerOptions, JSObject {
  external factory OpenFilePickerOptions({
    JSArray<FilePickerAcceptType> types,
    bool excludeAcceptAllOption,
    String id,
    StartInDirectory startIn,
    bool multiple,
  });

  external bool get multiple;
  external set multiple(bool value);
}
extension type SaveFilePickerOptions._(JSObject _)
    implements FilePickerOptions, JSObject {
  external factory SaveFilePickerOptions({
    JSArray<FilePickerAcceptType> types,
    bool excludeAcceptAllOption,
    String id,
    StartInDirectory startIn,
    String? suggestedName,
  });

  external String? get suggestedName;
  external set suggestedName(String? value);
}
extension type DirectoryPickerOptions._(JSObject _) implements JSObject {
  external factory DirectoryPickerOptions({
    String id,
    StartInDirectory startIn,
    FileSystemPermissionMode mode,
  });

  external String get id;
  external set id(String value);
  external StartInDirectory get startIn;
  external set startIn(StartInDirectory value);
  external FileSystemPermissionMode get mode;
  external set mode(FileSystemPermissionMode value);
}
