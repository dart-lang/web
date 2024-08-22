// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

typedef ErrorCallback = JSFunction;
typedef FileSystemEntryCallback = JSFunction;
typedef FileSystemEntriesCallback = JSFunction;
typedef FileCallback = JSFunction;

/// The **`FileSystemEntry`** interface of the File and Directory Entries API
/// represents a single entry in a file system. The entry can be a file or a
/// directory (directories are represented by the [FileSystemDirectoryEntry]
/// interface). It includes methods for working with files—including copying,
/// moving, removing, and reading files—as well as information about a file it
/// points to—including the file name and its path from the root to the entry.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemEntry).
extension type FileSystemEntry._(JSObject _) implements JSObject {
  /// The [FileSystemEntry] interface's method
  /// **`getParent()`** obtains a
  /// [FileSystemDirectoryEntry].
  external void getParent([
    FileSystemEntryCallback successCallback,
    ErrorCallback errorCallback,
  ]);

  /// The read-only **`isFile`** property of
  /// the [FileSystemEntry] interface is `true` if the entry
  /// represents a file (meaning it's a [FileSystemFileEntry]) and
  /// `false` if it's not.
  ///
  /// You can also use [FileSystemEntry.isDirectory] to determine
  /// if the entry is a directory.
  ///
  /// > **Warning:** You should not assume that any entry which isn't a file is
  /// > a directory or vice versa.
  /// > There are other types of file descriptors on many operating systems. Be
  /// > sure to use
  /// > both `isDirectory` and `isFile` as needed to ensure that the
  /// > entry is something you know how to work with.
  external bool get isFile;

  /// The read-only **`isDirectory`**
  /// property of the [FileSystemEntry] interface is `true` if the
  /// entry represents a directory (meaning it's a [FileSystemDirectoryEntry])
  /// and `false` if it's not.
  ///
  /// You can also use [FileSystemEntry.isFile] to determine if the
  /// entry is a file.
  ///
  /// > **Warning:** You should not assume that any entry which isn't a
  /// > directory is a file or vice versa.
  /// > There are other types of file descriptors on many operating systems. Be
  /// > sure to use
  /// > both `isDirectory` and `isFile` as needed to ensure that the
  /// > entry is something you know how to work with.
  external bool get isDirectory;

  /// The read-only **`name`** property of
  /// the [FileSystemEntry] interface returns a string
  /// specifying the entry's name; this is the entry within its parent directory
  /// (the last
  /// component of the path as indicated by the [FileSystemEntry.fullPath]
  /// property).
  external String get name;

  /// The read-only **`fullPath`** property
  /// of the [FileSystemEntry] interface returns a string
  /// specifying the full, absolute path from the file system's root to the file
  /// represented
  /// by the entry.
  ///
  /// This can also be thought of as a path which is relative to the root
  /// directory, with a
  /// "/" prepended to it to make it absolute.
  external String get fullPath;

  /// The read-only **`filesystem`**
  /// property of the [FileSystemEntry] interface contains a
  /// [FileSystem] object that represents the file system on which the entry
  /// resides.
  external FileSystem get filesystem;
}

/// The **`FileSystemDirectoryEntry`** interface of the
/// [File and Directory Entries API](https://developer.mozilla.org/en-US/docs/Web/API/File_and_Directory_Entries_API)
/// represents a directory in a file system. It provides methods which make it
/// possible to access and manipulate the files in a directory, as well as to
/// access the entries within the directory.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryEntry).
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

  external bool get create;
  external set create(bool value);
  external bool get exclusive;
  external set exclusive(bool value);
}

/// The `FileSystemDirectoryReader` interface of the
/// [File and Directory Entries API](https://developer.mozilla.org/en-US/docs/Web/API/File_and_Directory_Entries_API)
/// lets you access the [FileSystemFileEntry]-based objects (generally
/// [FileSystemFileEntry] or [FileSystemDirectoryEntry]) representing each entry
/// in a directory.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemDirectoryReader).
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

/// The **`FileSystemFileEntry`** interface of the
/// [File and Directory Entries API](https://developer.mozilla.org/en-US/docs/Web/API/File_and_Directory_Entries_API/Introduction)
/// represents a file in a file system. It offers properties describing the
/// file's attributes, as well as the [FileSystemFileEntry.file] method, which
/// creates a [File] object that can be used to read the file.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FileSystemFileEntry).
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

/// The File and Directory Entries API interface **`FileSystem`** is used to
/// represent a file system. These objects can be obtained from the
/// [FileSystemEntry.filesystem] property on any file system entry. Some
/// browsers offer additional APIs to create and manage file systems, such as
/// Chrome's [Window.requestFileSystem] method.
///
/// This interface will not grant you access to the users' filesystem. Instead,
/// you will have a "virtual drive" within the browser sandbox if you want to
/// gain access to the users' file system, you need to invoke the user, for
/// example by installing a Chrome extension. The relevant Chrome API can be
/// found
/// [here](https://developer.chrome.com/docs/extensions/reference/fileSystem/).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FileSystem).
extension type FileSystem._(JSObject _) implements JSObject {
  /// The read-only **`name`** property of the
  /// [FileSystem] interface indicates the file system's name. This
  /// string is unique among all file systems currently exposed by the
  /// [File and Directory Entries API](https://developer.mozilla.org/en-US/docs/Web/API/File_and_Directory_Entries_API).
  external String get name;

  /// The read-only **`root`** property of the
  /// [FileSystem] interface specifies a [FileSystemDirectoryEntry]
  /// object representing the root directory of the file system, for use with
  /// the
  /// [File and Directory Entries API](https://developer.mozilla.org/en-US/docs/Web/API/File_and_Directory_Entries_API).
  external FileSystemDirectoryEntry get root;
}
