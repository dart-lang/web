// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'fs.dart';
import 'permissions.dart';

typedef StartInDirectory = JSAny;
typedef FileSystemPermissionMode = String;
typedef WellKnownDirectory = String;
extension type FileSystemPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory FileSystemPermissionDescriptor({
    required FileSystemHandle handle,
    FileSystemPermissionMode mode,
  });
}

extension FileSystemPermissionDescriptorExtension
    on FileSystemPermissionDescriptor {
  external set handle(FileSystemHandle value);
  external FileSystemHandle get handle;
  external set mode(FileSystemPermissionMode value);
  external FileSystemPermissionMode get mode;
}

extension type FileSystemHandlePermissionDescriptor._(JSObject _)
    implements JSObject {
  external factory FileSystemHandlePermissionDescriptor(
      {FileSystemPermissionMode mode});
}

extension FileSystemHandlePermissionDescriptorExtension
    on FileSystemHandlePermissionDescriptor {
  external set mode(FileSystemPermissionMode value);
  external FileSystemPermissionMode get mode;
}

extension type FilePickerAcceptType._(JSObject _) implements JSObject {
  external factory FilePickerAcceptType({
    String description,
    JSAny accept,
  });
}

extension FilePickerAcceptTypeExtension on FilePickerAcceptType {
  external set description(String value);
  external String get description;
  external set accept(JSAny value);
  external JSAny get accept;
}

extension type FilePickerOptions._(JSObject _) implements JSObject {
  external factory FilePickerOptions({
    JSArray types,
    bool excludeAcceptAllOption,
    String id,
    StartInDirectory startIn,
  });
}

extension FilePickerOptionsExtension on FilePickerOptions {
  external set types(JSArray value);
  external JSArray get types;
  external set excludeAcceptAllOption(bool value);
  external bool get excludeAcceptAllOption;
  external set id(String value);
  external String get id;
  external set startIn(StartInDirectory value);
  external StartInDirectory get startIn;
}

extension type OpenFilePickerOptions._(JSObject _)
    implements FilePickerOptions, JSObject {
  external factory OpenFilePickerOptions({bool multiple});
}

extension OpenFilePickerOptionsExtension on OpenFilePickerOptions {
  external set multiple(bool value);
  external bool get multiple;
}

extension type SaveFilePickerOptions._(JSObject _)
    implements FilePickerOptions, JSObject {
  external factory SaveFilePickerOptions({String? suggestedName});
}

extension SaveFilePickerOptionsExtension on SaveFilePickerOptions {
  external set suggestedName(String? value);
  external String? get suggestedName;
}

extension type DirectoryPickerOptions._(JSObject _) implements JSObject {
  external factory DirectoryPickerOptions({
    String id,
    StartInDirectory startIn,
    FileSystemPermissionMode mode,
  });
}

extension DirectoryPickerOptionsExtension on DirectoryPickerOptions {
  external set id(String value);
  external String get id;
  external set startIn(StartInDirectory value);
  external StartInDirectory get startIn;
  external set mode(FileSystemPermissionMode value);
  external FileSystemPermissionMode get mode;
}
