// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

typedef ErrorCallback = JSFunction;
typedef FileSystemEntryCallback = JSFunction;
typedef FileSystemEntriesCallback = JSFunction;
typedef FileCallback = JSFunction;
extension type FileSystemEntry._(JSObject _) implements JSObject {
  external void getParent([
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  ]);
  external bool get isFile;
  external bool get isDirectory;
  external String get name;
  external String get fullPath;
  external FileSystem get filesystem;
}
extension type FileSystemDirectoryEntry._(JSObject _)
    implements FileSystemEntry, JSObject {
  external FileSystemDirectoryReader createReader();
  external void getFile([
    String? path,
    FileSystemFlags options,
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  ]);
  external void getDirectory([
    String? path,
    FileSystemFlags options,
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  ]);
}
extension type FileSystemFlags._(JSObject _) implements JSObject {
  external factory FileSystemFlags({
    bool create,
    bool exclusive,
  });

  external set create(bool value);
  external bool get create;
  external set exclusive(bool value);
  external bool get exclusive;
}
extension type FileSystemDirectoryReader._(JSObject _) implements JSObject {
  external void readEntries(
    FileSystemEntriesCallback successCallback, [
    ErrorCallback errorCallback,
  ]);
}
extension type FileSystemFileEntry._(JSObject _)
    implements FileSystemEntry, JSObject {
  external void file(
    FileCallback successCallback, [
    ErrorCallback errorCallback,
  ]);
}
extension type FileSystem._(JSObject _) implements JSObject {
  external String get name;
  external FileSystemDirectoryEntry get root;
}
