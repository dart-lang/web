// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'streams.dart';
import 'webidl.dart';

typedef BlobPart = JSAny;
typedef EndingType = JSString;

@JS('Blob')
@staticInterop
class Blob {
  external factory Blob([
    JSArray blobParts,
    BlobPropertyBag options,
  ]);
}

extension BlobExtension on Blob {
  external Blob slice([
    JSNumber start,
    JSNumber end,
    JSString contentType,
  ]);
  external ReadableStream stream();
  external JSPromise text();
  external JSPromise arrayBuffer();
  external JSNumber get size;
  external JSString get type;
}

@JS()
@staticInterop
@anonymous
class BlobPropertyBag {
  external factory BlobPropertyBag({
    JSString type,
    EndingType endings,
  });
}

extension BlobPropertyBagExtension on BlobPropertyBag {
  external set type(JSString value);
  external JSString get type;
  external set endings(EndingType value);
  external EndingType get endings;
}

@JS('File')
@staticInterop
class File implements Blob {
  external factory File(
    JSArray fileBits,
    JSString fileName, [
    FilePropertyBag options,
  ]);
}

extension FileExtension on File {
  external JSString get name;
  external JSNumber get lastModified;
  external JSString get webkitRelativePath;
}

@JS()
@staticInterop
@anonymous
class FilePropertyBag implements BlobPropertyBag {
  external factory FilePropertyBag({JSNumber lastModified});
}

extension FilePropertyBagExtension on FilePropertyBag {
  external set lastModified(JSNumber value);
  external JSNumber get lastModified;
}

@JS('FileList')
@staticInterop
class FileList {}

extension FileListExtension on FileList {
  external File? item(JSNumber index);
  external JSNumber get length;
}

@JS('FileReader')
@staticInterop
class FileReader implements EventTarget {
  external factory FileReader();

  external static JSNumber get EMPTY;
  external static JSNumber get LOADING;
  external static JSNumber get DONE;
}

extension FileReaderExtension on FileReader {
  external JSVoid readAsArrayBuffer(Blob blob);
  external JSVoid readAsBinaryString(Blob blob);
  external JSVoid readAsText(
    Blob blob, [
    JSString encoding,
  ]);
  external JSVoid readAsDataURL(Blob blob);
  external JSVoid abort();
  external JSNumber get readyState;
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

@JS('FileReaderSync')
@staticInterop
class FileReaderSync {
  external factory FileReaderSync();
}

extension FileReaderSyncExtension on FileReaderSync {
  external JSArrayBuffer readAsArrayBuffer(Blob blob);
  external JSString readAsBinaryString(Blob blob);
  external JSString readAsText(
    Blob blob, [
    JSString encoding,
  ]);
  external JSString readAsDataURL(Blob blob);
}
