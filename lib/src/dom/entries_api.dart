// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef ErrorCallback = JSFunction;
typedef FileSystemEntryCallback = JSFunction;
typedef FileSystemEntriesCallback = JSFunction;
typedef FileCallback = JSFunction;

@JS('FileSystemEntry')
@staticInterop
class FileSystemEntry {
  external factory FileSystemEntry();
}

extension FileSystemEntryExtension on FileSystemEntry {
  external JSBoolean get isFile;
  external JSBoolean get isDirectory;
  external JSString get name;
  external JSString get fullPath;
  external FileSystem get filesystem;
  external JSVoid getParent();
  external JSVoid getParent1(FileSystemEntryCallback successCallback);
  external JSVoid getParent2(
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  );
}

@JS('FileSystemDirectoryEntry')
@staticInterop
class FileSystemDirectoryEntry extends FileSystemEntry {
  external factory FileSystemDirectoryEntry();
}

extension FileSystemDirectoryEntryExtension on FileSystemDirectoryEntry {
  external FileSystemDirectoryReader createReader();
  external JSVoid getFile();
  external JSVoid getFile1(JSString? path);
  external JSVoid getFile2(
    JSString? path,
    FileSystemFlags options,
  );
  external JSVoid getFile3(
    JSString? path,
    FileSystemFlags options,
    FileSystemEntryCallback successCallback,
  );
  external JSVoid getFile4(
    JSString? path,
    FileSystemFlags options,
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  );
  external JSVoid getDirectory();
  external JSVoid getDirectory1(JSString? path);
  external JSVoid getDirectory2(
    JSString? path,
    FileSystemFlags options,
  );
  external JSVoid getDirectory3(
    JSString? path,
    FileSystemFlags options,
    FileSystemEntryCallback successCallback,
  );
  external JSVoid getDirectory4(
    JSString? path,
    FileSystemFlags options,
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  );
}

@JS('FileSystemFlags')
@staticInterop
class FileSystemFlags {
  external factory FileSystemFlags();
}

extension FileSystemFlagsExtension on FileSystemFlags {}

@JS('FileSystemDirectoryReader')
@staticInterop
class FileSystemDirectoryReader {
  external factory FileSystemDirectoryReader();
}

extension FileSystemDirectoryReaderExtension on FileSystemDirectoryReader {
  external JSVoid readEntries(FileSystemEntriesCallback successCallback);
  external JSVoid readEntries1(
    FileSystemEntriesCallback successCallback,
    ErrorCallback errorCallback,
  );
}

@JS('FileSystemFileEntry')
@staticInterop
class FileSystemFileEntry extends FileSystemEntry {
  external factory FileSystemFileEntry();
}

extension FileSystemFileEntryExtension on FileSystemFileEntry {
  external JSVoid file(FileCallback successCallback);
  external JSVoid file1(
    FileCallback successCallback,
    ErrorCallback errorCallback,
  );
}

@JS('FileSystem')
@staticInterop
class FileSystem {
  external factory FileSystem();
}

extension FileSystemExtension on FileSystem {
  external JSString get name;
  external FileSystemDirectoryEntry get root;
}
