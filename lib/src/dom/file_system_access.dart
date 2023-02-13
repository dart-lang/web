// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef StartInDirectory = JSAny;
typedef FileSystemPermissionMode = JSString;
typedef WellKnownDirectory = JSString;

@JS('FileSystemPermissionDescriptor')
@staticInterop
class FileSystemPermissionDescriptor extends PermissionDescriptor {
  external factory FileSystemPermissionDescriptor();
}

extension FileSystemPermissionDescriptorExtension
    on FileSystemPermissionDescriptor {
  // TODO
  // TODO
}

@JS('FileSystemHandlePermissionDescriptor')
@staticInterop
class FileSystemHandlePermissionDescriptor {
  external factory FileSystemHandlePermissionDescriptor();
}

extension FileSystemHandlePermissionDescriptorExtension
    on FileSystemHandlePermissionDescriptor {
  // TODO
}

@JS('FilePickerAcceptType')
@staticInterop
class FilePickerAcceptType {
  external factory FilePickerAcceptType();
}

extension FilePickerAcceptTypeExtension on FilePickerAcceptType {
  // TODO
  // TODO
}

@JS('FilePickerOptions')
@staticInterop
class FilePickerOptions {
  external factory FilePickerOptions();
}

extension FilePickerOptionsExtension on FilePickerOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('OpenFilePickerOptions')
@staticInterop
class OpenFilePickerOptions extends FilePickerOptions {
  external factory OpenFilePickerOptions();
}

extension OpenFilePickerOptionsExtension on OpenFilePickerOptions {
  // TODO
}

@JS('SaveFilePickerOptions')
@staticInterop
class SaveFilePickerOptions extends FilePickerOptions {
  external factory SaveFilePickerOptions();
}

extension SaveFilePickerOptionsExtension on SaveFilePickerOptions {
  // TODO
}

@JS('DirectoryPickerOptions')
@staticInterop
class DirectoryPickerOptions {
  external factory DirectoryPickerOptions();
}

extension DirectoryPickerOptionsExtension on DirectoryPickerOptions {
  // TODO
  // TODO
  // TODO
}
