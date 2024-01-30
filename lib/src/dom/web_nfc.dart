// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef NDEFMessageSource = JSAny;
extension type NDEFMessage._(JSObject _) implements JSObject {
  external factory NDEFMessage(NDEFMessageInit messageInit);

  external JSArray<NDEFRecord> get records;
}
extension type NDEFMessageInit._(JSObject _) implements JSObject {
  external factory NDEFMessageInit({required JSArray<NDEFRecordInit> records});

  external set records(JSArray<NDEFRecordInit> value);
  external JSArray<NDEFRecordInit> get records;
}
extension type NDEFRecord._(JSObject _) implements JSObject {
  external factory NDEFRecord(NDEFRecordInit recordInit);

  external JSArray<NDEFRecord>? toRecords();
  external String get recordType;
  external String? get mediaType;
  external String? get id;
  external JSDataView? get data;
  external String? get encoding;
  external String? get lang;
}
extension type NDEFRecordInit._(JSObject _) implements JSObject {
  external factory NDEFRecordInit({
    required String recordType,
    String mediaType,
    String id,
    String encoding,
    String lang,
    JSAny? data,
  });

  external set recordType(String value);
  external String get recordType;
  external set mediaType(String value);
  external String get mediaType;
  external set id(String value);
  external String get id;
  external set encoding(String value);
  external String get encoding;
  external set lang(String value);
  external String get lang;
  external set data(JSAny? value);
  external JSAny? get data;
}
extension type NDEFReader._(JSObject _) implements EventTarget, JSObject {
  external factory NDEFReader();

  external JSPromise<JSAny?> scan([NDEFScanOptions options]);
  external JSPromise<JSAny?> write(
    NDEFMessageSource message, [
    NDEFWriteOptions options,
  ]);
  external JSPromise<JSAny?> makeReadOnly([NDEFMakeReadOnlyOptions options]);
  external set onreading(EventHandler value);
  external EventHandler get onreading;
  external set onreadingerror(EventHandler value);
  external EventHandler get onreadingerror;
}
extension type NDEFReadingEvent._(JSObject _) implements Event, JSObject {
  external factory NDEFReadingEvent(
    String type,
    NDEFReadingEventInit readingEventInitDict,
  );

  external String get serialNumber;
  external NDEFMessage get message;
}
extension type NDEFReadingEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory NDEFReadingEventInit({
    String? serialNumber,
    required NDEFMessageInit message,
  });

  external set serialNumber(String? value);
  external String? get serialNumber;
  external set message(NDEFMessageInit value);
  external NDEFMessageInit get message;
}
extension type NDEFWriteOptions._(JSObject _) implements JSObject {
  external factory NDEFWriteOptions({
    bool overwrite,
    AbortSignal? signal,
  });

  external set overwrite(bool value);
  external bool get overwrite;
  external set signal(AbortSignal? value);
  external AbortSignal? get signal;
}
extension type NDEFMakeReadOnlyOptions._(JSObject _) implements JSObject {
  external factory NDEFMakeReadOnlyOptions({AbortSignal? signal});

  external set signal(AbortSignal? value);
  external AbortSignal? get signal;
}
extension type NDEFScanOptions._(JSObject _) implements JSObject {
  external factory NDEFScanOptions({AbortSignal signal});

  external set signal(AbortSignal value);
  external AbortSignal get signal;
}
