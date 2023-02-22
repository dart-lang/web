// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'file_system_access.dart';
import 'streams.dart';
import 'webidl.dart';

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
  external JSPromise queryPermission1(
      FileSystemHandlePermissionDescriptor descriptor);
  external JSPromise requestPermission();
  external JSPromise requestPermission1(
      FileSystemHandlePermissionDescriptor descriptor);
  external FileSystemHandleKind get kind;
  external JSString get name;
  external JSPromise isSameEntry(FileSystemHandle other);
}

@JS()
@staticInterop
@anonymous
class FileSystemCreateWritableOptions {
  external factory FileSystemCreateWritableOptions(
      {JSBoolean keepExistingData = false});
}

extension FileSystemCreateWritableOptionsExtension
    on FileSystemCreateWritableOptions {
  external set keepExistingData(JSBoolean value);
  external JSBoolean get keepExistingData;
}

@JS('FileSystemFileHandle')
@staticInterop
class FileSystemFileHandle extends FileSystemHandle {
  external factory FileSystemFileHandle();
}

extension FileSystemFileHandleExtension on FileSystemFileHandle {
  external JSPromise getFile();
  external JSPromise createWritable();
  external JSPromise createWritable1(FileSystemCreateWritableOptions options);
  external JSPromise createSyncAccessHandle();
}

@JS()
@staticInterop
@anonymous
class FileSystemGetFileOptions {
  external factory FileSystemGetFileOptions({JSBoolean create = false});
}

extension FileSystemGetFileOptionsExtension on FileSystemGetFileOptions {
  external set create(JSBoolean value);
  external JSBoolean get create;
}

@JS()
@staticInterop
@anonymous
class FileSystemGetDirectoryOptions {
  external factory FileSystemGetDirectoryOptions({JSBoolean create = false});
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
  external factory FileSystemRemoveOptions({JSBoolean recursive = false});
}

extension FileSystemRemoveOptionsExtension on FileSystemRemoveOptions {
  external set recursive(JSBoolean value);
  external JSBoolean get recursive;
}

@JS('FileSystemDirectoryHandle')
@staticInterop
class FileSystemDirectoryHandle extends FileSystemHandle {
  external factory FileSystemDirectoryHandle();
}

extension FileSystemDirectoryHandleExtension on FileSystemDirectoryHandle {
  external JSPromise getFileHandle(JSString name);
  external JSPromise getFileHandle1(
    JSString name,
    FileSystemGetFileOptions options,
  );
  external JSPromise getDirectoryHandle(JSString name);
  external JSPromise getDirectoryHandle1(
    JSString name,
    FileSystemGetDirectoryOptions options,
  );
  external JSPromise removeEntry(JSString name);
  external JSPromise removeEntry1(
    JSString name,
    FileSystemRemoveOptions options,
  );
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
class FileSystemWritableFileStream extends WritableStream {
  external factory FileSystemWritableFileStream();
}

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
class FileSystemSyncAccessHandle {
  external factory FileSystemSyncAccessHandle();
}

extension FileSystemSyncAccessHandleExtension on FileSystemSyncAccessHandle {
  external JSNumber read(BufferSource buffer);
  external JSNumber read1(
    BufferSource buffer,
    FileSystemReadWriteOptions options,
  );
  external JSNumber write(BufferSource buffer);
  external JSNumber write1(
    BufferSource buffer,
    FileSystemReadWriteOptions options,
  );
  external JSVoid truncate(JSNumber newSize);
  external JSNumber getSize();
  external JSVoid flush();
  external JSVoid close();
}
