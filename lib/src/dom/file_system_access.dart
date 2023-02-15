// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'permissions.dart';

typedef StartInDirectory = JSAny;
typedef FileSystemPermissionMode = JSString;
typedef WellKnownDirectory = JSString;

@JS('FileSystemPermissionDescriptor')
@staticInterop
class FileSystemPermissionDescriptor extends PermissionDescriptor {
  external factory FileSystemPermissionDescriptor();
}

extension FileSystemPermissionDescriptorExtension
    on FileSystemPermissionDescriptor {}

@JS('FileSystemHandlePermissionDescriptor')
@staticInterop
class FileSystemHandlePermissionDescriptor {
  external factory FileSystemHandlePermissionDescriptor();
}

extension FileSystemHandlePermissionDescriptorExtension
    on FileSystemHandlePermissionDescriptor {}

@JS('FilePickerAcceptType')
@staticInterop
class FilePickerAcceptType {
  external factory FilePickerAcceptType();
}

extension FilePickerAcceptTypeExtension on FilePickerAcceptType {}

@JS('FilePickerOptions')
@staticInterop
class FilePickerOptions {
  external factory FilePickerOptions();
}

extension FilePickerOptionsExtension on FilePickerOptions {}

@JS('OpenFilePickerOptions')
@staticInterop
class OpenFilePickerOptions extends FilePickerOptions {
  external factory OpenFilePickerOptions();
}

extension OpenFilePickerOptionsExtension on OpenFilePickerOptions {}

@JS('SaveFilePickerOptions')
@staticInterop
class SaveFilePickerOptions extends FilePickerOptions {
  external factory SaveFilePickerOptions();
}

extension SaveFilePickerOptionsExtension on SaveFilePickerOptions {}

@JS('DirectoryPickerOptions')
@staticInterop
class DirectoryPickerOptions {
  external factory DirectoryPickerOptions();
}

extension DirectoryPickerOptionsExtension on DirectoryPickerOptions {}
