// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

typedef ErrorCallback = JSFunction;
typedef FileSystemEntryCallback = JSFunction;
typedef FileSystemEntriesCallback = JSFunction;
typedef FileCallback = JSFunction;

@JS('FileSystemEntry')
@staticInterop
class FileSystemEntry {}

extension FileSystemEntryExtension on FileSystemEntry {
  external JSVoid getParent([
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  ]);
  external JSBoolean get isFile;
  external JSBoolean get isDirectory;
  external JSString get name;
  external JSString get fullPath;
  external FileSystem get filesystem;
}

@JS('FileSystemDirectoryEntry')
@staticInterop
class FileSystemDirectoryEntry implements FileSystemEntry {}

extension FileSystemDirectoryEntryExtension on FileSystemDirectoryEntry {
  external FileSystemDirectoryReader createReader();
  external JSVoid getFile([
    JSString? path,
    FileSystemFlags options,
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  ]);
  external JSVoid getDirectory([
    JSString? path,
    FileSystemFlags options,
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  ]);
}

@JS()
@staticInterop
@anonymous
class FileSystemFlags {
  external factory FileSystemFlags({
    JSBoolean create,
    JSBoolean exclusive,
  });
}

extension FileSystemFlagsExtension on FileSystemFlags {
  external set create(JSBoolean value);
  external JSBoolean get create;
  external set exclusive(JSBoolean value);
  external JSBoolean get exclusive;
}

@JS('FileSystemDirectoryReader')
@staticInterop
class FileSystemDirectoryReader {}

extension FileSystemDirectoryReaderExtension on FileSystemDirectoryReader {
  external JSVoid readEntries(
    FileSystemEntriesCallback successCallback, [
    ErrorCallback errorCallback,
  ]);
}

@JS('FileSystemFileEntry')
@staticInterop
class FileSystemFileEntry implements FileSystemEntry {}

extension FileSystemFileEntryExtension on FileSystemFileEntry {
  external JSVoid file(
    FileCallback successCallback, [
    ErrorCallback errorCallback,
  ]);
}

@JS('FileSystem')
@staticInterop
class FileSystem {}

extension FileSystemExtension on FileSystem {
  external JSString get name;
  external FileSystemDirectoryEntry get root;
}
