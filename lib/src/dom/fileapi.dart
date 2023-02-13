// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef BlobPart = JSAny;
typedef EndingType = JSString;

@JS('Blob')
@staticInterop
class Blob {
  external factory Blob();
  external factory Blob.a1();
  external factory Blob.a1_1(JSArray blobParts);
  external factory Blob.a1_2(JSArray blobParts, BlobPropertyBag options);
}

extension BlobExtension on Blob {
  external JSNumber get size;
  external JSString get type;
  external Blob slice();
  external Blob slice_1(JSNumber start);
  external Blob slice_2(JSNumber start, JSNumber end);
  external Blob slice_3(JSNumber start, JSNumber end, JSString contentType);
  external ReadableStream stream();
  external JSPromise text();
  external JSPromise arrayBuffer();
}

@JS('BlobPropertyBag')
@staticInterop
class BlobPropertyBag {
  external factory BlobPropertyBag();
}

extension BlobPropertyBagExtension on BlobPropertyBag {
  // TODO
  // TODO
}

@JS('File')
@staticInterop
class File extends Blob {
  external factory File();
  external factory File.a1(JSArray fileBits, JSString fileName);
  external factory File.a1_1(
      JSArray fileBits, JSString fileName, FilePropertyBag options);
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

extension FilePropertyBagExtension on FilePropertyBag {
  // TODO
}

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
  external factory FileReader();
  external static JSNumber get EMPTY;
  external static JSNumber get LOADING;
  external static JSNumber get DONE;
}

extension FileReaderExtension on FileReader {
  external JSUndefined readAsArrayBuffer(Blob blob);
  external JSUndefined readAsBinaryString(Blob blob);
  external JSUndefined readAsText(Blob blob);
  external JSUndefined readAsText_1(Blob blob, JSString encoding);
  external JSUndefined readAsDataURL(Blob blob);
  external JSUndefined abort();
  external JSNumber get readyState;
  external JSAny? get result;
  external DOMException? get error;
  external EventHandler get onloadstart;
  external set onloadstart(EventHandler value);
  external EventHandler get onprogress;
  external set onprogress(EventHandler value);
  external EventHandler get onload;
  external set onload(EventHandler value);
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onloadend;
  external set onloadend(EventHandler value);
}

@JS('FileReaderSync')
@staticInterop
class FileReaderSync {
  external factory FileReaderSync();
}

extension FileReaderSyncExtension on FileReaderSync {
  external JSArrayBuffer readAsArrayBuffer(Blob blob);
  external JSString readAsBinaryString(Blob blob);
  external JSString readAsText(Blob blob);
  external JSString readAsText_1(Blob blob, JSString encoding);
  external JSString readAsDataURL(Blob blob);
}
