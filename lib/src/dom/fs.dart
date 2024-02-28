// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'fileapi.dart';
import 'streams.dart';
import 'webidl.dart';

typedef FileSystemWriteChunkType = JSAny;
typedef FileSystemHandleKind = String;
typedef WriteCommandType = String;

/// The **`FileSystemHandle`** interface of the [File System API] is an object
/// which represents a file or directory entry. Multiple handles can represent
/// the same entry. For the most part you do not work with `FileSystemHandle`
/// directly but rather its child interfaces [FileSystemFileHandle] and
/// [FileSystemDirectoryHandle].
extension type FileSystemHandle._(JSObject _) implements JSObject {
  /// The **`isSameEntry()`** method of the
  /// [FileSystemHandle] interface compares two [FileSystemHandle] to see if the
  /// associated entries (either a file or directory) match.
  external JSPromise<JSBoolean> isSameEntry(FileSystemHandle other);
  external FileSystemHandleKind get kind;
  external String get name;
}
extension type FileSystemCreateWritableOptions._(JSObject _)
    implements JSObject {
  external factory FileSystemCreateWritableOptions({bool keepExistingData});

  external set keepExistingData(bool value);
  external bool get keepExistingData;
}

/// The **`FileSystemFileHandle`** interface of the [File System API] represents
/// a handle to a file system entry. The interface is accessed through the
/// [window.showOpenFilePicker] method.
///
/// Note that read and write operations depend on file-access permissions that
/// do not persist after a page refresh if no other tabs for that origin remain
/// open. The [FileSystemHandle.queryPermission] method of the
/// [FileSystemHandle] interface can be used to verify permission state before
/// accessing a file.
extension type FileSystemFileHandle._(JSObject _)
    implements FileSystemHandle, JSObject {
  /// The **`getFile()`** method of the
  /// [FileSystemFileHandle] interface returns a `Promise` which resolves to a
  /// [File] object representing the state on disk of the entry represented by
  /// the handle.
  ///
  /// If the file on disk changes or is removed after this method is called, the
  /// returned
  /// [File] object will likely be no longer readable.
  external JSPromise<File> getFile();

  /// The **`createWritable()`** method of the [FileSystemFileHandle] interface
  /// creates a [FileSystemWritableFileStream] that can be used to write to a
  /// file.
  /// The method returns a `Promise` which resolves to this created stream.
  ///
  /// Any changes made through the stream won't be reflected in the file
  /// represented by the file handle until the stream has been closed.
  /// This is typically implemented by writing data to a temporary file, and
  /// only replacing the file represented by file handle with the temporary file
  /// when the writable filestream is closed.
  external JSPromise<FileSystemWritableFileStream> createWritable(
      [FileSystemCreateWritableOptions options]);

  /// The **`createSyncAccessHandle()`** method of the
  /// [FileSystemFileHandle] interface returns a `Promise` which resolves to a
  /// [FileSystemSyncAccessHandle] object
  /// that can be used to synchronously read from and write to a file. The
  /// synchronous nature of this method brings performance advantages,
  /// but it is only usable inside dedicated
  /// [Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API)
  /// for files within the
  /// [origin private file system](https://developer.mozilla.org/en-US/docs/Web/API/File_System_API/Origin_private_file_system).
  ///
  /// Creating a [FileSystemSyncAccessHandle] takes an exclusive lock on the
  /// file associated with the file handle. This prevents the creation of
  /// further [FileSystemSyncAccessHandle]s or [FileSystemWritableFileStream]s
  /// for the file until the existing access handle is closed.
  external JSPromise<FileSystemSyncAccessHandle> createSyncAccessHandle();
}
extension type FileSystemGetFileOptions._(JSObject _) implements JSObject {
  external factory FileSystemGetFileOptions({bool create});

  external set create(bool value);
  external bool get create;
}
extension type FileSystemGetDirectoryOptions._(JSObject _) implements JSObject {
  external factory FileSystemGetDirectoryOptions({bool create});

  external set create(bool value);
  external bool get create;
}
extension type FileSystemRemoveOptions._(JSObject _) implements JSObject {
  external factory FileSystemRemoveOptions({bool recursive});

  external set recursive(bool value);
  external bool get recursive;
}

/// The **`FileSystemDirectoryHandle`** interface of the [File System API]
/// provides a handle to a file system directory.
///
/// The interface can be accessed via the [window.showDirectoryPicker],
/// [StorageManager.getDirectory], [DataTransferItem.getAsFileSystemHandle], and
/// [FileSystemDirectoryHandle.getDirectoryHandle] methods.
extension type FileSystemDirectoryHandle._(JSObject _)
    implements FileSystemHandle, JSObject {
  /// The **`getFileHandle()`** method of the
  /// [FileSystemDirectoryHandle] interface returns a
  /// [FileSystemFileHandle] for a file with the specified name, within the
  /// directory the method is called.
  external JSPromise<FileSystemFileHandle> getFileHandle(
    String name, [
    FileSystemGetFileOptions options,
  ]);

  /// The **`getDirectoryHandle()`** method of the
  /// [FileSystemDirectoryHandle] interface returns a
  /// [FileSystemDirectoryHandle] for a subdirectory with the specified name
  /// within the directory handle on which the method is called.
  external JSPromise<FileSystemDirectoryHandle> getDirectoryHandle(
    String name, [
    FileSystemGetDirectoryOptions options,
  ]);

  /// The **`removeEntry()`** method of the
  /// [FileSystemDirectoryHandle] interface attempts to remove an entry if the
  /// directory handle contains a file or directory called the name specified.
  external JSPromise<JSAny?> removeEntry(
    String name, [
    FileSystemRemoveOptions options,
  ]);

  /// The **`resolve()`** method of the
  /// [FileSystemDirectoryHandle] interface returns an `Array` of
  /// directory names from the parent handle to the specified child entry, with
  /// the name of
  /// the child entry as the last array item.
  external JSPromise<JSArray<JSString>?> resolve(
      FileSystemHandle possibleDescendant);
}
extension type WriteParams._(JSObject _) implements JSObject {
  external factory WriteParams({
    required WriteCommandType type,
    int? size,
    int? position,
    JSAny? data,
  });

  external set type(WriteCommandType value);
  external WriteCommandType get type;
  external set size(int? value);
  external int? get size;
  external set position(int? value);
  external int? get position;
  external set data(JSAny? value);
  external JSAny? get data;
}

/// The **`FileSystemWritableFileStream`** interface of the [File System API] is
/// a [WritableStream] object with additional convenience methods, which
/// operates on a single file on disk. The interface is accessed through the
/// [FileSystemFileHandle.createWritable] method.
extension type FileSystemWritableFileStream._(JSObject _)
    implements WritableStream, JSObject {
  /// The **`write()`** method of the [FileSystemWritableFileStream] interface
  /// writes content into the file the method is called on, at the current file
  /// cursor offset.
  ///
  /// No changes are written to the actual file on disk until the stream has
  /// been closed.
  /// Changes are typically written to a temporary file instead. This method can
  /// also be used to seek to a byte point within the stream and truncate to
  /// modify the total bytes the file contains.
  external JSPromise<JSAny?> write(FileSystemWriteChunkType data);

  /// The **`seek()`** method of the [FileSystemWritableFileStream] interface
  /// updates the current file cursor offset to the position (in bytes)
  /// specified when calling the method.
  external JSPromise<JSAny?> seek(int position);

  /// The **`truncate()`** method of the [FileSystemWritableFileStream]
  /// interface resizes the file associated with the stream to the specified
  /// size in bytes.
  ///
  /// If the size specified is larger than the current file size the file is
  /// padded with `0x00` bytes.
  ///
  /// The file cursor is also updated when `truncate()` is called.
  /// If the offset is smaller than the size, it remains unchanged.
  /// If the offset is larger than size, the offset is set to that size.
  /// This ensures that subsequent writes do not error.
  ///
  /// No changes are written to the actual file on disk until the stream has
  /// been closed.
  /// Changes are typically written to a temporary file instead.
  external JSPromise<JSAny?> truncate(int size);
}
extension type FileSystemReadWriteOptions._(JSObject _) implements JSObject {
  external factory FileSystemReadWriteOptions({int at});

  external set at(int value);
  external int get at;
}

/// The **`FileSystemSyncAccessHandle`** interface of the [File System API]
/// represents a synchronous handle to a file system entry.
///
/// This class is only accessible inside dedicated
/// [Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API)
/// (so that its methods do not block execution on the main thread) for files
/// within the
/// [origin private file system](https://developer.mozilla.org/en-US/docs/Web/API/File_System_API/Origin_private_file_system),
/// which is not visible to end-users.
///
/// As a result, its methods are not subject to the same security checks as
/// methods running on files within the user-visible file system, and so are
/// much more performant. This makes them suitable for significant, large-scale
/// file updates such as [SQLite](https://www.sqlite.org/wasm) database
/// modifications.
///
/// The interface is accessed through the
/// [FileSystemFileHandle.createSyncAccessHandle] method.
///
/// > **Note:** In earlier versions of the spec,
/// > [FileSystemSyncAccessHandle.close], [FileSystemSyncAccessHandle.flush],
/// > [FileSystemSyncAccessHandle.getSize], and
/// > [FileSystemSyncAccessHandle.truncate] were wrongly specified as
/// > asynchronous methods, and older versions of some browsers implement them
/// > in this way. However, all current browsers that support these methods
/// > implement them as synchronous methods.
extension type FileSystemSyncAccessHandle._(JSObject _) implements JSObject {
  /// The **`read()`** method of the
  /// [FileSystemSyncAccessHandle] interface reads the content of the file
  /// associated with the handle into a specified buffer, optionally at a given
  /// offset.
  external int read(
    AllowSharedBufferSource buffer, [
    FileSystemReadWriteOptions options,
  ]);

  /// The **`write()`** method of the
  /// [FileSystemSyncAccessHandle] interface writes the content of a specified
  /// buffer to the file associated with the handle, optionally at a given
  /// offset.
  ///
  /// Files within the
  /// [origin private file system](https://developer.mozilla.org/en-US/docs/Web/API/File_System_API/Origin_private_file_system)
  /// are not visible to end-users, therefore are not subject to the same
  /// security checks as methods running on files within the user-visible file
  /// system. As a result, writes performed using
  /// `FileSystemSyncAccessHandle.write()` are much more performant. This makes
  /// them suitable for significant, large-scale file updates such as
  /// [SQLite](https://www.sqlite.org/wasm) database modifications.
  external int write(
    AllowSharedBufferSource buffer, [
    FileSystemReadWriteOptions options,
  ]);

  /// The **`truncate()`** method of the
  /// [FileSystemSyncAccessHandle] interface resizes the file associated with
  /// the handle to a specified number of bytes.
  ///
  /// > **Note:** In earlier versions of the spec,
  /// > [FileSystemSyncAccessHandle.close], [FileSystemSyncAccessHandle.flush],
  /// > [FileSystemSyncAccessHandle.getSize], and `truncate()` were wrongly
  /// > specified as asynchronous methods, and older versions of some browsers
  /// > implement them in this way. However, all current browsers that support
  /// > these methods implement them as synchronous methods.
  external void truncate(int newSize);

  /// The **`getSize()`** method of the
  /// [FileSystemSyncAccessHandle] interface returns the size of the file
  /// associated with the handle in bytes.
  ///
  /// > **Note:** In earlier versions of the spec,
  /// > [FileSystemSyncAccessHandle.close], [FileSystemSyncAccessHandle.flush],
  /// > `getSize()`, and [FileSystemSyncAccessHandle.truncate] were wrongly
  /// > specified as asynchronous methods, and older versions of some browsers
  /// > implement them in this way. However, all current browsers that support
  /// > these methods implement them as synchronous methods.
  external int getSize();

  /// The **`flush()`** method of the
  /// [FileSystemSyncAccessHandle] interface persists any changes made to the
  /// file associated with the handle via the [FileSystemSyncAccessHandle.write]
  /// method to disk.
  ///
  /// Bear in mind that you only need to call this method if you need the
  /// changes committed to disk at a specific time, otherwise you can leave the
  /// underlying operating system to handle this when it sees fit, which should
  /// be OK in most cases.
  ///
  /// > **Note:** In earlier versions of the spec,
  /// > [FileSystemSyncAccessHandle.close], `flush()`,
  /// > [FileSystemSyncAccessHandle.getSize], and
  /// > [FileSystemSyncAccessHandle.truncate] were wrongly specified as
  /// > asynchronous methods, and older versions of some browsers implement them
  /// > in this way. However, all current browsers that support these methods
  /// > implement them as synchronous methods.
  external void flush();

  /// The **`close()`** method of the
  /// [FileSystemSyncAccessHandle] interface closes an open synchronous file
  /// handle, disabling any further operations on it and releasing the exclusive
  /// lock previously put on the file associated with the file handle.
  ///
  /// > **Note:** In earlier versions of the spec, `close()`,
  /// > [FileSystemSyncAccessHandle.flush],
  /// > [FileSystemSyncAccessHandle.getSize], and
  /// > [FileSystemSyncAccessHandle.truncate] were wrongly specified as
  /// > asynchronous methods, and older versions of some browsers implement them
  /// > in this way. However, all current browsers that support these methods
  /// > implement them as synchronous methods.
  external void close();
}
