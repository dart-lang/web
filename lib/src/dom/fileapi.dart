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

import 'dom.dart';
import 'html.dart';
import 'streams.dart';
import 'webidl.dart';

typedef BlobPart = JSAny;
typedef EndingType = String;

/// The **`Blob`** object represents a blob, which is a file-like object of
/// immutable, raw data; they can be read as text or binary data, or converted
/// into a [ReadableStream] so its methods can be used for processing the data.
///
/// Blobs can represent data that isn't necessarily in a JavaScript-native
/// format. The [File] interface is based on `Blob`, inheriting blob
/// functionality and expanding it to support files on the user's system.
extension type Blob._(JSObject _) implements JSObject {
  external factory Blob([
    JSArray<BlobPart> blobParts,
    BlobPropertyBag options,
  ]);

  /// The **`slice()`** method of the [Blob] interface
  /// creates and returns a new `Blob` object which contains data from a subset
  /// of
  /// the blob on which it's called.
  external Blob slice([
    int start,
    int end,
    String contentType,
  ]);

  /// The **`stream()`** method of the [Blob] interface returns a
  /// [ReadableStream] which upon reading returns the data contained within the
  /// `Blob`.
  external ReadableStream stream();

  /// The **`text()`** method of the
  /// [Blob] interface returns a `Promise` that resolves with a
  /// string containing the contents of the blob, interpreted as UTF-8.
  external JSPromise<JSString> text();

  /// The **`arrayBuffer()`** method of the [Blob]
  /// interface returns a `Promise` that resolves with the contents of the blob
  /// as
  /// binary data contained in an `ArrayBuffer`.
  external JSPromise<JSArrayBuffer> arrayBuffer();
  external int get size;
  external String get type;
}
extension type BlobPropertyBag._(JSObject _) implements JSObject {
  external factory BlobPropertyBag({
    String type,
    EndingType endings,
  });

  external set type(String value);
  external String get type;
  external set endings(EndingType value);
  external EndingType get endings;
}

/// The **`File`** interface provides information about files and allows
/// JavaScript in a web page to access their content.
///
/// `File` objects are generally retrieved from a [FileList] object returned as
/// a result of a user selecting files using the `input` element, or from a drag
/// and drop operation's [DataTransfer] object.
///
/// A `File` object is a specific kind of [Blob], and can be used in any context
/// that a Blob can. In particular, [FileReader], [URL.createObjectURL_static],
/// [createImageBitmap], the
/// [`body`](https://developer.mozilla.org/en-US/docs/Web/API/fetch#body) option
/// to [fetch], and [XMLHttpRequest] accept both `Blob`s and `File`s.
///
/// See
/// [Using files from web applications](https://developer.mozilla.org/en-US/docs/Web/API/File_API/Using_files_from_web_applications)
/// for more information and examples.
extension type File._(JSObject _) implements Blob, JSObject {
  external factory File(
    JSArray<BlobPart> fileBits,
    String fileName, [
    FilePropertyBag options,
  ]);

  external String get name;
  external int get lastModified;
  external String get webkitRelativePath;
}
extension type FilePropertyBag._(JSObject _)
    implements BlobPropertyBag, JSObject {
  external factory FilePropertyBag({int lastModified});

  external set lastModified(int value);
  external int get lastModified;
}

/// The **`FileList`** interface represents an object of this type returned by
/// the `files` property of the HTML `input` element; this lets you access the
/// list of files selected with the `<input type="file">` element. It's also
/// used for a list of files dropped into web content when using the drag and
/// drop API; see the [DataTransfer] object for details on this usage.
///
/// All `<input>` element nodes have a `files` attribute of type `FileList` on
/// them which allows access to the items in this list. For example, if the HTML
/// includes the following file input:
///
/// ```html
/// <input id="fileItem" type="file" />
/// ```
///
/// The following line of code fetches the first file in the node's file list as
/// a [File] object:
///
/// ```js
/// const file = document.getElementById("fileItem").files[0];
/// ```
///
/// > **Note:** This interface was an
/// > [attempt to create an unmodifiable list](https://stackoverflow.com/questions/74630989/why-use-domstringlist-rather-than-an-array/74641156#74641156)
/// > and only continues to be supported to not break code that's already using
/// > it. Modern APIs use types that wrap around ECMAScript array types instead,
/// > so you can treat them like ECMAScript arrays, and at the same time impose
/// > additional semantics on their usage (such as making their items
/// > read-only).
extension type FileList._(JSObject _) implements JSObject {
  /// The **`item()`** method of the [FileList] interface returns a [File]
  /// object representing the file at the specified index in the file list.
  external File? item(int index);
  external int get length;
}

/// The **`FileReader`** object lets web applications asynchronously read the
/// contents of files (or raw data buffers) stored on the user's computer, using
/// [File] or [Blob] objects to specify the file or data to read.
///
/// File objects may be obtained from a [FileList] object returned as a result
/// of a user selecting files using the `input` element, or from a drag and drop
/// operation's [DataTransfer] object.
///
/// `FileReader` can only access the contents of files that the user has
/// explicitly selected, either using an HTML `<input type="file">` element or
/// by drag and drop. It cannot be used to read a file by pathname from the
/// user's file system. To read files on the client's file system by pathname,
/// use the
/// [File System Access API](https://developer.mozilla.org/en-US/docs/Web/API/File_System_API).
/// To read server-side files, use [fetch], with
/// [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) permission if
/// reading cross-domain.
extension type FileReader._(JSObject _) implements EventTarget, JSObject {
  external factory FileReader();

  external static int get EMPTY;
  external static int get LOADING;
  external static int get DONE;

  /// The **`readAsArrayBuffer()`** method of the [FileReader] interface is used
  /// to start reading the
  /// contents of a specified [Blob] or [File]. When the read
  /// operation is finished, the [FileReader.readyState] becomes
  /// `DONE`, and the [FileReader/loadend_event] is
  /// triggered. At that time, the [FileReader.result] attribute
  /// contains an `ArrayBuffer` representing the file's data.
  ///
  /// > **Note:** The [Blob.arrayBuffer] method is a newer promise-based API to
  /// > read a
  /// > file as an array buffer.
  external void readAsArrayBuffer(Blob blob);

  /// > **Note:** This method is deprecated in favor of
  /// > [FileReader.readAsArrayBuffer].
  ///
  /// The **`readAsBinaryString`** method of the [FileReader] interface is used
  /// to start reading the contents of the
  /// specified [Blob] or [File]. When the read operation is
  /// finished, the [FileReader.readyState] becomes
  /// `DONE`, and the [FileReader.loadend_event] is triggered. At that time, the
  /// [FileReader.result] attribute contains the raw binary data from
  /// the file.
  ///
  /// Note that this method was once removed from the File API specification,
  /// but
  /// re-introduced for backward compatibility.
  /// Using [FileReader.readAsArrayBuffer] is recommended.
  external void readAsBinaryString(Blob blob);

  /// The **`readAsText()`** method of the [FileReader] interface is used to
  /// read the contents of the specified [Blob] or [File].
  /// When the read operation is complete, the [FileReader.readyState] is
  /// changed to `DONE`,
  /// the [FileReader/loadend_event] event is triggered, and the
  /// [FileReader.result] property contains the contents of the file as a text
  /// string.
  ///
  /// > **Note:** The [Blob.text] method is a newer promise-based API to read a
  /// > file as text.
  ///
  /// > **Note:** This method loads the entire file's content into memory and is
  /// > not suitable for large files. Prefer
  /// > [`readAsArrayBuffer()`](/en-US/docs/Web/API/FileReader/readAsArrayBuffer)
  /// > for large files.
  external void readAsText(
    Blob blob, [
    String encoding,
  ]);

  /// The **`readAsDataURL`** method of the [FileReader] interface is used to
  /// read the contents of the specified
  /// [Blob] or [File]. When the read operation is finished, the
  /// [FileReader.readyState] becomes `DONE`, and the
  /// [FileReader/loadend_event] is triggered. At that time, the
  /// [FileReader.result] attribute contains the data as a [data:
  /// URL](/en-US/docs/Web/HTTP/Basics_of_HTTP/Data_URLs) representing the
  /// file's data as a base64 encoded string.
  ///
  /// > **Note:** The blob's [FileReader.result] cannot be
  /// > directly decoded as Base64 without first removing the Data-URL
  /// > declaration preceding
  /// > the Base64-encoded data. To retrieve only the Base64 encoded string,
  /// > first
  /// > remove `data:*/*;base64,` from the result.
  external void readAsDataURL(Blob blob);

  /// The **`abort`** method of the [FileReader] interface aborts the read
  /// operation. Upon return,
  /// the [FileReader.readyState] will be `DONE`.
  external void abort();
  external int get readyState;
  external JSAny? get result;
  external DOMException? get error;
  external set onloadstart(EventHandler value);
  external EventHandler get onloadstart;
  external set onprogress(EventHandler value);
  external EventHandler get onprogress;
  external set onload(EventHandler value);
  external EventHandler get onload;
  external set onabort(EventHandler value);
  external EventHandler get onabort;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onloadend(EventHandler value);
  external EventHandler get onloadend;
}

/// The **`FileReaderSync`** interface allows to read [File] or [Blob] objects
/// synchronously. This interface is
/// [only available](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Functions_and_classes_available_to_workers)
/// in [workers](https://developer.mozilla.org/en-US/docs/Web/API/Worker) as it
/// enables synchronous I/O that could potentially block.
extension type FileReaderSync._(JSObject _) implements JSObject {
  external factory FileReaderSync();

  /// The **`readAsArrayBuffer()`** method of the [FileReaderSync] interface
  /// allows to read [File] or [Blob] objects in a synchronous way into an
  /// `ArrayBuffer`. This interface is
  /// [only available](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Functions_and_classes_available_to_workers)
  /// in [workers](https://developer.mozilla.org/en-US/docs/Web/API/Worker) as
  /// it enables synchronous I/O that could potentially block.
  external JSArrayBuffer readAsArrayBuffer(Blob blob);

  /// > **Note:** This method is deprecated in favor of
  /// > [FileReaderSync.readAsArrayBuffer].
  ///
  /// The **`readAsBinaryString()`** method of the [FileReaderSync] interface
  /// allows to read [File] or [Blob] objects in a synchronous way into a
  /// string. This interface is
  /// [only available](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Functions_and_classes_available_to_workers)
  /// in [workers](https://developer.mozilla.org/en-US/docs/Web/API/Worker) as
  /// it enables synchronous I/O that could potentially block.
  external String readAsBinaryString(Blob blob);

  /// The **`readAsText()`** method of the [FileReaderSync] interface allows to
  /// read [File] or [Blob] objects in a synchronous way into a string. This
  /// interface is
  /// [only available](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Functions_and_classes_available_to_workers)
  /// in [workers](https://developer.mozilla.org/en-US/docs/Web/API/Worker) as
  /// it enables synchronous I/O that could potentially block.
  external String readAsText(
    Blob blob, [
    String encoding,
  ]);

  /// The **`readAsDataURL()`** method of the [FileReaderSync] interface allows
  /// to read [File] or [Blob] objects in a synchronous way into a string
  /// representing a data URL. This interface is
  /// [only available](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Functions_and_classes_available_to_workers)
  /// in [workers](https://developer.mozilla.org/en-US/docs/Web/API/Worker) as
  /// it enables synchronous I/O that could potentially block.
  external String readAsDataURL(Blob blob);
}
