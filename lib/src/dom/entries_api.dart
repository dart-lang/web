// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef ErrorCallback = JSFunction;
typedef FileSystemEntryCallback = JSFunction;
typedef FileSystemEntriesCallback = JSFunction;
typedef FileCallback = JSFunction;
extension type FileSystemEntry._(JSObject _) implements JSObject {
  /// The [FileSystemEntry] interface's method
  /// **`getParent()`** obtains a
  /// [FileSystemDirectoryEntry].
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
  /// The [FileSystemDirectoryEntry] interface's method
  /// **`createReader()`** returns a
  /// [FileSystemDirectoryReader] object which can be used to read the entries
  /// in
  /// the directory.
  external FileSystemDirectoryReader createReader();

  /// The [FileSystemDirectoryEntry] interface's method
  /// **`getFile()`** returns a
  /// [FileSystemFileEntry] object corresponding to a file contained somewhere
  /// within the directory subtree rooted at the directory on which it's called.
  external void getFile([
    String? path,
    FileSystemFlags options,
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  ]);

  /// The [FileSystemDirectoryEntry] interface's method
  /// **`getDirectory()`** returns a
  /// [FileSystemDirectoryEntry] object corresponding to a directory contained
  /// somewhere within the directory subtree rooted at the directory on which
  /// it's called.
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
  /// The [FileSystemDirectoryReader] interface's **`readEntries()`** method
  /// retrieves the directory entries
  /// within the directory being read and delivers them in an array to a
  /// provided callback function.
  ///
  /// The objects in the array are all based upon [FileSystemEntry].
  /// Generally, they are either [FileSystemFileEntry] objects, which represent
  /// standard files, or [FileSystemDirectoryEntry] objects, which represent
  /// directories.
  external void readEntries(
    FileSystemEntriesCallback successCallback, [
    ErrorCallback errorCallback,
  ]);
}
extension type FileSystemFileEntry._(JSObject _)
    implements FileSystemEntry, JSObject {
  /// The [FileSystemFileEntry] interface's method
  /// **`file()`** returns a
  /// [File] object which can be used to read data from the file represented by
  /// the directory entry.
  external void file(
    FileCallback successCallback, [
    ErrorCallback errorCallback,
  ]);
}
extension type FileSystem._(JSObject _) implements JSObject {
  external String get name;
  external FileSystemDirectoryEntry get root;
}
