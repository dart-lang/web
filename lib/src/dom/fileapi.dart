// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library fileapi;

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

  external Blob slice([
    int start,
    int end,
    String contentType,
  ]);
  external ReadableStream stream();
  external JSPromise text();
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
  external File? item(int index);
  external int get length;
}
extension type FileReader._(JSObject _) implements EventTarget, JSObject {
  external factory FileReader();

  external static int get EMPTY;
  external static int get LOADING;
  external static int get DONE;
  external void readAsArrayBuffer(Blob blob);
  external void readAsBinaryString(Blob blob);
  external void readAsText(
    Blob blob, [
    String encoding,
  ]);
  external void readAsDataURL(Blob blob);
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

  external JSArrayBuffer readAsArrayBuffer(Blob blob);
  external String readAsBinaryString(Blob blob);
  external String readAsText(
    Blob blob, [
    String encoding,
  ]);
  external String readAsDataURL(Blob blob);
}
