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
class FileSystemEntry implements JSObject {}

extension FileSystemEntryExtension on FileSystemEntry {
  external JSVoid getParent([
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  ]);
  external bool get isFile;
  external bool get isDirectory;
  external String get name;
  external String get fullPath;
  external FileSystem get filesystem;
}

@JS('FileSystemDirectoryEntry')
@staticInterop
class FileSystemDirectoryEntry implements FileSystemEntry {}

extension FileSystemDirectoryEntryExtension on FileSystemDirectoryEntry {
  external FileSystemDirectoryReader createReader();
  external JSVoid getFile([
    String? path,
    FileSystemFlags options,
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  ]);
  external JSVoid getDirectory([
    String? path,
    FileSystemFlags options,
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  ]);
}

@JS()
@staticInterop
@anonymous
class FileSystemFlags implements JSObject {
  external factory FileSystemFlags({
    bool create,
    bool exclusive,
  });
}

extension FileSystemFlagsExtension on FileSystemFlags {
  external set create(bool value);
  external bool get create;
  external set exclusive(bool value);
  external bool get exclusive;
}

@JS('FileSystemDirectoryReader')
@staticInterop
class FileSystemDirectoryReader implements JSObject {}

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
class FileSystem implements JSObject {}

extension FileSystemExtension on FileSystem {
  external String get name;
  external FileSystemDirectoryEntry get root;
}
