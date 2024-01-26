// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'streams.dart';
import 'webidl.dart';

typedef BlobPart = JSAny;
typedef EndingType = String;
extension type Blob._(JSObject _) implements JSObject {
  external factory Blob([
    JSArray blobParts,
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
  external JSPromise text();

  /// The **`arrayBuffer()`** method of the [Blob]
  /// interface returns a `Promise` that resolves with the contents of the blob
  /// as
  /// binary data contained in an `ArrayBuffer`.
  external JSPromise arrayBuffer();
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
extension type File._(JSObject _) implements Blob, JSObject {
  external factory File(
    JSArray fileBits,
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
extension type FileList._(JSObject _) implements JSObject {
  /// The **`item()`** method of the [FileList] interface returns a [File]
  /// object representing the file at the specified index in the file list.
  external File? item(int index);
  external int get length;
}
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
