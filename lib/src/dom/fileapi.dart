// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/streams.dart';
import 'package:web/src/dom/webidl.dart';

typedef BlobPart = JSAny;
typedef EndingType = JSString;

@JS('Blob')
@staticInterop
class Blob {
  external factory Blob();

  external factory Blob.a1();

  external factory Blob.a2(JSArray blobParts);

  external factory Blob.a3(
    JSArray blobParts,
    BlobPropertyBag options,
  );
}

extension BlobExtension on Blob {
  external JSNumber get size;
  external JSString get type;
  external Blob slice();
  external Blob slice1(JSNumber start);
  external Blob slice2(
    JSNumber start,
    JSNumber end,
  );
  external Blob slice3(
    JSNumber start,
    JSNumber end,
    JSString contentType,
  );
  external ReadableStream stream();
  external JSPromise text();
  external JSPromise arrayBuffer();
}

@JS('BlobPropertyBag')
@staticInterop
class BlobPropertyBag {
  external factory BlobPropertyBag();
}

extension BlobPropertyBagExtension on BlobPropertyBag {}

@JS('File')
@staticInterop
class File extends Blob {
  external factory File();

  external factory File.a1(
    JSArray fileBits,
    JSString fileName,
  );

  external factory File.a2(
    JSArray fileBits,
    JSString fileName,
    FilePropertyBag options,
  );
}

extension FileExtension on File {
  external JSString get name;
  external JSNumber get lastModified;
  external JSString get webkitRelativePath;
}

@JS('FilePropertyBag')
@staticInterop
class FilePropertyBag extends BlobPropertyBag {
  external factory FilePropertyBag();
}

extension FilePropertyBagExtension on FilePropertyBag {}

@JS('FileList')
@staticInterop
class FileList {
  external factory FileList();
}

extension FileListExtension on FileList {
  external File? item(JSNumber index);
  external JSNumber get length;
}

@JS('FileReader')
@staticInterop
class FileReader extends EventTarget {
  external factory FileReader.a0();

  external static JSNumber get EMPTY;
  external static JSNumber get LOADING;
  external static JSNumber get DONE;
}

extension FileReaderExtension on FileReader {
  external JSVoid readAsArrayBuffer(Blob blob);
  external JSVoid readAsBinaryString(Blob blob);
  external JSVoid readAsText(Blob blob);
  external JSVoid readAsText1(
    Blob blob,
    JSString encoding,
  );
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
  external factory FileReaderSync.a0();
}

extension FileReaderSyncExtension on FileReaderSync {
  external JSArrayBuffer readAsArrayBuffer(Blob blob);
  external JSString readAsBinaryString(Blob blob);
  external JSString readAsText(Blob blob);
  external JSString readAsText1(
    Blob blob,
    JSString encoding,
  );
  external JSString readAsDataURL(Blob blob);
}
