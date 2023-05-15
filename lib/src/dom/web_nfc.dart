// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef NDEFMessageSource = JSAny?;

@JS('NDEFMessage')
@staticInterop
class NDEFMessage implements JSObject {
  external factory NDEFMessage(NDEFMessageInit messageInit);
}

extension NDEFMessageExtension on NDEFMessage {
  external JSArray get records;
}

@JS()
@staticInterop
@anonymous
class NDEFMessageInit implements JSObject {
  external factory NDEFMessageInit({required JSArray records});
}

extension NDEFMessageInitExtension on NDEFMessageInit {
  external set records(JSArray value);
  external JSArray get records;
}

@JS('NDEFRecord')
@staticInterop
class NDEFRecord implements JSObject {
  external factory NDEFRecord(NDEFRecordInit recordInit);
}

extension NDEFRecordExtension on NDEFRecord {
  external JSArray? toRecords();
  external JSString get recordType;
  external JSString? get mediaType;
  external JSString? get id;
  external JSDataView? get data;
  external JSString? get encoding;
  external JSString? get lang;
}

@JS()
@staticInterop
@anonymous
class NDEFRecordInit implements JSObject {
  external factory NDEFRecordInit({
    required JSString recordType,
    JSString mediaType,
    JSString id,
    JSString encoding,
    JSString lang,
    JSAny? data,
  });
}

extension NDEFRecordInitExtension on NDEFRecordInit {
  external set recordType(JSString value);
  external JSString get recordType;
  external set mediaType(JSString value);
  external JSString get mediaType;
  external set id(JSString value);
  external JSString get id;
  external set encoding(JSString value);
  external JSString get encoding;
  external set lang(JSString value);
  external JSString get lang;
  external set data(JSAny? value);
  external JSAny? get data;
}

@JS('NDEFReader')
@staticInterop
class NDEFReader implements EventTarget {
  external factory NDEFReader();
}

extension NDEFReaderExtension on NDEFReader {
  external JSPromise scan([NDEFScanOptions options]);
  external JSPromise write(
    NDEFMessageSource message, [
    NDEFWriteOptions options,
  ]);
  external JSPromise makeReadOnly([NDEFMakeReadOnlyOptions options]);
  external set onreading(EventHandler value);
  external EventHandler get onreading;
  external set onreadingerror(EventHandler value);
  external EventHandler get onreadingerror;
}

@JS('NDEFReadingEvent')
@staticInterop
class NDEFReadingEvent implements Event {
  external factory NDEFReadingEvent(
    JSString type,
    NDEFReadingEventInit readingEventInitDict,
  );
}

extension NDEFReadingEventExtension on NDEFReadingEvent {
  external JSString get serialNumber;
  external NDEFMessage get message;
}

@JS()
@staticInterop
@anonymous
class NDEFReadingEventInit implements EventInit {
  external factory NDEFReadingEventInit({
    JSString? serialNumber,
    required NDEFMessageInit message,
  });
}

extension NDEFReadingEventInitExtension on NDEFReadingEventInit {
  external set serialNumber(JSString? value);
  external JSString? get serialNumber;
  external set message(NDEFMessageInit value);
  external NDEFMessageInit get message;
}

@JS()
@staticInterop
@anonymous
class NDEFWriteOptions implements JSObject {
  external factory NDEFWriteOptions({
    JSBoolean overwrite,
    AbortSignal? signal,
  });
}

extension NDEFWriteOptionsExtension on NDEFWriteOptions {
  external set overwrite(JSBoolean value);
  external JSBoolean get overwrite;
  external set signal(AbortSignal? value);
  external AbortSignal? get signal;
}

@JS()
@staticInterop
@anonymous
class NDEFMakeReadOnlyOptions implements JSObject {
  external factory NDEFMakeReadOnlyOptions({AbortSignal? signal});
}

extension NDEFMakeReadOnlyOptionsExtension on NDEFMakeReadOnlyOptions {
  external set signal(AbortSignal? value);
  external AbortSignal? get signal;
}

@JS()
@staticInterop
@anonymous
class NDEFScanOptions implements JSObject {
  external factory NDEFScanOptions({AbortSignal signal});
}

extension NDEFScanOptionsExtension on NDEFScanOptions {
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}
