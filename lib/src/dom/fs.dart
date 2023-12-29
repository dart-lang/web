// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'file_system_access.dart';
import 'streams.dart';
import 'webidl.dart';

typedef FileSystemWriteChunkType = JSAny;
typedef FileSystemHandleKind = String;
typedef WriteCommandType = String;
extension type FileSystemHandle._(JSObject _) implements JSObject {}

extension FileSystemHandleExtension on FileSystemHandle {
  external JSPromise queryPermission(
      [FileSystemHandlePermissionDescriptor descriptor]);
  external JSPromise requestPermission(
      [FileSystemHandlePermissionDescriptor descriptor]);
  external JSPromise isSameEntry(FileSystemHandle other);
  external FileSystemHandleKind get kind;
  external String get name;
}

extension type FileSystemCreateWritableOptions._(JSObject _)
    implements JSObject {
  external factory FileSystemCreateWritableOptions({bool keepExistingData});
}

extension FileSystemCreateWritableOptionsExtension
    on FileSystemCreateWritableOptions {
  external set keepExistingData(bool value);
  external bool get keepExistingData;
}

extension type FileSystemFileHandle._(JSObject _)
    implements FileSystemHandle, JSObject {}

extension FileSystemFileHandleExtension on FileSystemFileHandle {
  external JSPromise getFile();
  external JSPromise createWritable([FileSystemCreateWritableOptions options]);
  external JSPromise createSyncAccessHandle();
}

extension type FileSystemGetFileOptions._(JSObject _) implements JSObject {
  external factory FileSystemGetFileOptions({bool create});
}

extension FileSystemGetFileOptionsExtension on FileSystemGetFileOptions {
  external set create(bool value);
  external bool get create;
}

extension type FileSystemGetDirectoryOptions._(JSObject _) implements JSObject {
  external factory FileSystemGetDirectoryOptions({bool create});
}

extension FileSystemGetDirectoryOptionsExtension
    on FileSystemGetDirectoryOptions {
  external set create(bool value);
  external bool get create;
}

extension type FileSystemRemoveOptions._(JSObject _) implements JSObject {
  external factory FileSystemRemoveOptions({bool recursive});
}

extension FileSystemRemoveOptionsExtension on FileSystemRemoveOptions {
  external set recursive(bool value);
  external bool get recursive;
}

extension type FileSystemDirectoryHandle._(JSObject _)
    implements FileSystemHandle, JSObject {}

extension FileSystemDirectoryHandleExtension on FileSystemDirectoryHandle {
  external JSPromise getFileHandle(
    String name, [
    FileSystemGetFileOptions options,
  ]);
  external JSPromise getDirectoryHandle(
    String name, [
    FileSystemGetDirectoryOptions options,
  ]);
  external JSPromise removeEntry(
    String name, [
    FileSystemRemoveOptions options,
  ]);
  external JSPromise resolve(FileSystemHandle possibleDescendant);
}

extension type WriteParams._(JSObject _) implements JSObject {
  external factory WriteParams({
    required WriteCommandType type,
    int? size,
    int? position,
    JSAny? data,
  });
}

extension WriteParamsExtension on WriteParams {
  external set type(WriteCommandType value);
  external WriteCommandType get type;
  external set size(int? value);
  external int? get size;
  external set position(int? value);
  external int? get position;
  external set data(JSAny? value);
  external JSAny? get data;
}

extension type FileSystemWritableFileStream._(JSObject _)
    implements WritableStream, JSObject {}

extension FileSystemWritableFileStreamExtension
    on FileSystemWritableFileStream {
  external JSPromise write(FileSystemWriteChunkType data);
  external JSPromise seek(int position);
  external JSPromise truncate(int size);
}

extension type FileSystemReadWriteOptions._(JSObject _) implements JSObject {
  external factory FileSystemReadWriteOptions({int at});
}

extension FileSystemReadWriteOptionsExtension on FileSystemReadWriteOptions {
  external set at(int value);
  external int get at;
}

extension type FileSystemSyncAccessHandle._(JSObject _) implements JSObject {}

extension FileSystemSyncAccessHandleExtension on FileSystemSyncAccessHandle {
  external int read(
    AllowSharedBufferSource buffer, [
    FileSystemReadWriteOptions options,
  ]);
  external int write(
    AllowSharedBufferSource buffer, [
    FileSystemReadWriteOptions options,
  ]);
  external void truncate(int newSize);
  external int getSize();
  external void flush();
  external void close();
}
