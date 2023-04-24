// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'file_system_access.dart';
import 'streams.dart';
import 'webidl.dart';

typedef FileSystemWriteChunkType = JSAny;
typedef FileSystemHandleKind = JSString;
typedef WriteCommandType = JSString;

@JS('FileSystemHandle')
@staticInterop
class FileSystemHandle {}

extension FileSystemHandleExtension on FileSystemHandle {
  external JSPromise queryPermission(
      [FileSystemHandlePermissionDescriptor descriptor]);
  external JSPromise requestPermission(
      [FileSystemHandlePermissionDescriptor descriptor]);
  external JSPromise isSameEntry(FileSystemHandle other);
  external FileSystemHandleKind get kind;
  external JSString get name;
}

@JS()
@staticInterop
@anonymous
class FileSystemCreateWritableOptions {
  external factory FileSystemCreateWritableOptions(
      {JSBoolean keepExistingData});
}

extension FileSystemCreateWritableOptionsExtension
    on FileSystemCreateWritableOptions {
  external set keepExistingData(JSBoolean value);
  external JSBoolean get keepExistingData;
}

@JS('FileSystemFileHandle')
@staticInterop
class FileSystemFileHandle implements FileSystemHandle {}

extension FileSystemFileHandleExtension on FileSystemFileHandle {
  external JSPromise getFile();
  external JSPromise createWritable([FileSystemCreateWritableOptions options]);
  external JSPromise createSyncAccessHandle();
}

@JS()
@staticInterop
@anonymous
class FileSystemGetFileOptions {
  external factory FileSystemGetFileOptions({JSBoolean create});
}

extension FileSystemGetFileOptionsExtension on FileSystemGetFileOptions {
  external set create(JSBoolean value);
  external JSBoolean get create;
}

@JS()
@staticInterop
@anonymous
class FileSystemGetDirectoryOptions {
  external factory FileSystemGetDirectoryOptions({JSBoolean create});
}

extension FileSystemGetDirectoryOptionsExtension
    on FileSystemGetDirectoryOptions {
  external set create(JSBoolean value);
  external JSBoolean get create;
}

@JS()
@staticInterop
@anonymous
class FileSystemRemoveOptions {
  external factory FileSystemRemoveOptions({JSBoolean recursive});
}

extension FileSystemRemoveOptionsExtension on FileSystemRemoveOptions {
  external set recursive(JSBoolean value);
  external JSBoolean get recursive;
}

@JS('FileSystemDirectoryHandle')
@staticInterop
class FileSystemDirectoryHandle implements FileSystemHandle {}

extension FileSystemDirectoryHandleExtension on FileSystemDirectoryHandle {
  external JSPromise getFileHandle(
    JSString name, [
    FileSystemGetFileOptions options,
  ]);
  external JSPromise getDirectoryHandle(
    JSString name, [
    FileSystemGetDirectoryOptions options,
  ]);
  external JSPromise removeEntry(
    JSString name, [
    FileSystemRemoveOptions options,
  ]);
  external JSPromise resolve(FileSystemHandle possibleDescendant);
}

@JS()
@staticInterop
@anonymous
class WriteParams {
  external factory WriteParams({
    required WriteCommandType type,
    JSNumber? size,
    JSNumber? position,
    JSAny? data,
  });
}

extension WriteParamsExtension on WriteParams {
  external set type(WriteCommandType value);
  external WriteCommandType get type;
  external set size(JSNumber? value);
  external JSNumber? get size;
  external set position(JSNumber? value);
  external JSNumber? get position;
  external set data(JSAny? value);
  external JSAny? get data;
}

@JS('FileSystemWritableFileStream')
@staticInterop
class FileSystemWritableFileStream implements WritableStream {}

extension FileSystemWritableFileStreamExtension
    on FileSystemWritableFileStream {
  external JSPromise write(FileSystemWriteChunkType data);
  external JSPromise seek(JSNumber position);
  external JSPromise truncate(JSNumber size);
}

@JS()
@staticInterop
@anonymous
class FileSystemReadWriteOptions {
  external factory FileSystemReadWriteOptions({JSNumber at});
}

extension FileSystemReadWriteOptionsExtension on FileSystemReadWriteOptions {
  external set at(JSNumber value);
  external JSNumber get at;
}

@JS('FileSystemSyncAccessHandle')
@staticInterop
class FileSystemSyncAccessHandle {}

extension FileSystemSyncAccessHandleExtension on FileSystemSyncAccessHandle {
  external JSNumber read(
    BufferSource buffer, [
    FileSystemReadWriteOptions options,
  ]);
  external JSNumber write(
    BufferSource buffer, [
    FileSystemReadWriteOptions options,
  ]);
  external JSVoid truncate(JSNumber newSize);
  external JSNumber getSize();
  external JSVoid flush();
  external JSVoid close();
}
