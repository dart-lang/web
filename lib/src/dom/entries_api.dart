// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

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
  external JSUndefined getParent();
  external JSUndefined getParent_1(FileSystemEntryCallback successCallback);
  external JSUndefined getParent_2(
      FileSystemEntryCallback successCallback, ErrorCallback errorCallback);
}

@JS('FileSystemDirectoryEntry')
@staticInterop
class FileSystemDirectoryEntry extends FileSystemEntry {
  external factory FileSystemDirectoryEntry();
}

extension FileSystemDirectoryEntryExtension on FileSystemDirectoryEntry {
  external FileSystemDirectoryReader createReader();
  external JSUndefined getFile();
  external JSUndefined getFile_1(JSString? path);
  external JSUndefined getFile_2(JSString? path, FileSystemFlags options);
  external JSUndefined getFile_3(JSString? path, FileSystemFlags options,
      FileSystemEntryCallback successCallback);
  external JSUndefined getFile_4(JSString? path, FileSystemFlags options,
      FileSystemEntryCallback successCallback, ErrorCallback errorCallback);
  external JSUndefined getDirectory();
  external JSUndefined getDirectory_1(JSString? path);
  external JSUndefined getDirectory_2(JSString? path, FileSystemFlags options);
  external JSUndefined getDirectory_3(JSString? path, FileSystemFlags options,
      FileSystemEntryCallback successCallback);
  external JSUndefined getDirectory_4(JSString? path, FileSystemFlags options,
      FileSystemEntryCallback successCallback, ErrorCallback errorCallback);
}

@JS('FileSystemFlags')
@staticInterop
class FileSystemFlags {
  external factory FileSystemFlags();
}

extension FileSystemFlagsExtension on FileSystemFlags {
  // TODO
  // TODO
}

@JS('FileSystemDirectoryReader')
@staticInterop
class FileSystemDirectoryReader {
  external factory FileSystemDirectoryReader();
}

extension FileSystemDirectoryReaderExtension on FileSystemDirectoryReader {
  external JSUndefined readEntries(FileSystemEntriesCallback successCallback);
  external JSUndefined readEntries_1(
      FileSystemEntriesCallback successCallback, ErrorCallback errorCallback);
}

@JS('FileSystemFileEntry')
@staticInterop
class FileSystemFileEntry extends FileSystemEntry {
  external factory FileSystemFileEntry();
}

extension FileSystemFileEntryExtension on FileSystemFileEntry {
  external JSUndefined file(FileCallback successCallback);
  external JSUndefined file_1(
      FileCallback successCallback, ErrorCallback errorCallback);
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
