// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef FileSystemWriteChunkType = JSAny;
typedef FileSystemHandleKind = JSString;
typedef WriteCommandType = JSString;

@JS('FileSystemHandle')
@staticInterop
class FileSystemHandle {
  external factory FileSystemHandle();
}

extension FileSystemHandleExtension on FileSystemHandle {
  external JSPromise queryPermission();
  external JSPromise queryPermission_1(
      FileSystemHandlePermissionDescriptor descriptor);
  external JSPromise requestPermission();
  external JSPromise requestPermission_1(
      FileSystemHandlePermissionDescriptor descriptor);
  external FileSystemHandleKind get kind;
  external JSString get name;
  external JSPromise isSameEntry(FileSystemHandle other);
}

@JS('FileSystemCreateWritableOptions')
@staticInterop
class FileSystemCreateWritableOptions {
  external factory FileSystemCreateWritableOptions();
}

extension FileSystemCreateWritableOptionsExtension
    on FileSystemCreateWritableOptions {
  // TODO
}

@JS('FileSystemFileHandle')
@staticInterop
class FileSystemFileHandle extends FileSystemHandle {
  external factory FileSystemFileHandle();
}

extension FileSystemFileHandleExtension on FileSystemFileHandle {
  external JSPromise getFile();
  external JSPromise createWritable();
  external JSPromise createWritable_1(FileSystemCreateWritableOptions options);
  external JSPromise createSyncAccessHandle();
}

@JS('FileSystemGetFileOptions')
@staticInterop
class FileSystemGetFileOptions {
  external factory FileSystemGetFileOptions();
}

extension FileSystemGetFileOptionsExtension on FileSystemGetFileOptions {
  // TODO
}

@JS('FileSystemGetDirectoryOptions')
@staticInterop
class FileSystemGetDirectoryOptions {
  external factory FileSystemGetDirectoryOptions();
}

extension FileSystemGetDirectoryOptionsExtension
    on FileSystemGetDirectoryOptions {
  // TODO
}

@JS('FileSystemRemoveOptions')
@staticInterop
class FileSystemRemoveOptions {
  external factory FileSystemRemoveOptions();
}

extension FileSystemRemoveOptionsExtension on FileSystemRemoveOptions {
  // TODO
}

@JS('FileSystemDirectoryHandle')
@staticInterop
class FileSystemDirectoryHandle extends FileSystemHandle {
  external factory FileSystemDirectoryHandle();
}

extension FileSystemDirectoryHandleExtension on FileSystemDirectoryHandle {
  // TODO
  external JSPromise getFileHandle(JSString name);
  external JSPromise getFileHandle_1(
      JSString name, FileSystemGetFileOptions options);
  external JSPromise getDirectoryHandle(JSString name);
  external JSPromise getDirectoryHandle_1(
      JSString name, FileSystemGetDirectoryOptions options);
  external JSPromise removeEntry(JSString name);
  external JSPromise removeEntry_1(
      JSString name, FileSystemRemoveOptions options);
  external JSPromise resolve(FileSystemHandle possibleDescendant);
}

@JS('WriteParams')
@staticInterop
class WriteParams {
  external factory WriteParams();
}

extension WriteParamsExtension on WriteParams {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('FileSystemWritableFileStream')
@staticInterop
class FileSystemWritableFileStream extends WritableStream {
  external factory FileSystemWritableFileStream();
}

extension FileSystemWritableFileStreamExtension
    on FileSystemWritableFileStream {
  external JSPromise write(FileSystemWriteChunkType data);
  external JSPromise seek(JSNumber position);
  external JSPromise truncate(JSNumber size);
}

@JS('FileSystemReadWriteOptions')
@staticInterop
class FileSystemReadWriteOptions {
  external factory FileSystemReadWriteOptions();
}

extension FileSystemReadWriteOptionsExtension on FileSystemReadWriteOptions {
  // TODO
}

@JS('FileSystemSyncAccessHandle')
@staticInterop
class FileSystemSyncAccessHandle {
  external factory FileSystemSyncAccessHandle();
}

extension FileSystemSyncAccessHandleExtension on FileSystemSyncAccessHandle {
  external JSNumber read(BufferSource buffer);
  external JSNumber read_1(
      BufferSource buffer, FileSystemReadWriteOptions options);
  external JSNumber write(BufferSource buffer);
  external JSNumber write_1(
      BufferSource buffer, FileSystemReadWriteOptions options);
  external JSUndefined truncate(JSNumber newSize);
  external JSNumber getSize();
  external JSUndefined flush();
  external JSUndefined close();
}
