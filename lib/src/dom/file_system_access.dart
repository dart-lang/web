// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'fs.dart';
import 'permissions.dart';

typedef StartInDirectory = JSAny?;
typedef FileSystemPermissionMode = JSString;
typedef WellKnownDirectory = JSString;

@JS()
@staticInterop
@anonymous
class FileSystemPermissionDescriptor implements PermissionDescriptor {
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

@JS()
@staticInterop
@anonymous
class FileSystemHandlePermissionDescriptor implements JSObject {
  external factory FileSystemHandlePermissionDescriptor(
      {FileSystemPermissionMode mode});
}

extension FileSystemHandlePermissionDescriptorExtension
    on FileSystemHandlePermissionDescriptor {
  external set mode(FileSystemPermissionMode value);
  external FileSystemPermissionMode get mode;
}

@JS()
@staticInterop
@anonymous
class FilePickerAcceptType implements JSObject {
  external factory FilePickerAcceptType({
    JSString description,
    JSAny? accept,
  });
}

extension FilePickerAcceptTypeExtension on FilePickerAcceptType {
  external set description(JSString value);
  external JSString get description;
  external set accept(JSAny? value);
  external JSAny? get accept;
}

@JS()
@staticInterop
@anonymous
class FilePickerOptions implements JSObject {
  external factory FilePickerOptions({
    JSArray types,
    JSBoolean excludeAcceptAllOption,
    JSString id,
    StartInDirectory startIn,
  });
}

extension FilePickerOptionsExtension on FilePickerOptions {
  external set types(JSArray value);
  external JSArray get types;
  external set excludeAcceptAllOption(JSBoolean value);
  external JSBoolean get excludeAcceptAllOption;
  external set id(JSString value);
  external JSString get id;
  external set startIn(StartInDirectory value);
  external StartInDirectory get startIn;
}

@JS()
@staticInterop
@anonymous
class OpenFilePickerOptions implements FilePickerOptions {
  external factory OpenFilePickerOptions({JSBoolean multiple});
}

extension OpenFilePickerOptionsExtension on OpenFilePickerOptions {
  external set multiple(JSBoolean value);
  external JSBoolean get multiple;
}

@JS()
@staticInterop
@anonymous
class SaveFilePickerOptions implements FilePickerOptions {
  external factory SaveFilePickerOptions({JSString? suggestedName});
}

extension SaveFilePickerOptionsExtension on SaveFilePickerOptions {
  external set suggestedName(JSString? value);
  external JSString? get suggestedName;
}

@JS()
@staticInterop
@anonymous
class DirectoryPickerOptions implements JSObject {
  external factory DirectoryPickerOptions({
    JSString id,
    StartInDirectory startIn,
    FileSystemPermissionMode mode,
  });
}

extension DirectoryPickerOptionsExtension on DirectoryPickerOptions {
  external set id(JSString value);
  external JSString get id;
  external set startIn(StartInDirectory value);
  external StartInDirectory get startIn;
  external set mode(FileSystemPermissionMode value);
  external FileSystemPermissionMode get mode;
}
