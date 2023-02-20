// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';

typedef NDEFMessageSource = JSAny;

@JS('NDEFMessage')
@staticInterop
class NDEFMessage {
  external factory NDEFMessage();

  external factory NDEFMessage.a1(NDEFMessageInit messageInit);
}

extension NDEFMessageExtension on NDEFMessage {
  external JSArray get records;
}

@JS()
@staticInterop
@anonymous
class NDEFMessageInit {
  external factory NDEFMessageInit({required JSArray records});
}

extension NDEFMessageInitExtension on NDEFMessageInit {
  external set records(JSArray value);
  external JSArray get records;
}

@JS('NDEFRecord')
@staticInterop
class NDEFRecord {
  external factory NDEFRecord();

  external factory NDEFRecord.a1(NDEFRecordInit recordInit);
}

extension NDEFRecordExtension on NDEFRecord {
  external JSString get recordType;
  external JSString? get mediaType;
  external JSString? get id;
  external JSDataView? get data;
  external JSString? get encoding;
  external JSString? get lang;
  external JSArray? toRecords();
}

@JS()
@staticInterop
@anonymous
class NDEFRecordInit {
  external factory NDEFRecordInit({
    required JSString recordType,
    JSString mediaType,
    JSString id,
    JSString encoding,
    JSString lang,
    JSAny data,
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
  external set data(JSAny value);
  external JSAny get data;
}

@JS('NDEFReader')
@staticInterop
class NDEFReader extends EventTarget {
  external factory NDEFReader.a0();
}

extension NDEFReaderExtension on NDEFReader {
  external set onreading(EventHandler value);
  external EventHandler get onreading;
  external set onreadingerror(EventHandler value);
  external EventHandler get onreadingerror;
  external JSPromise scan();
  external JSPromise scan1(NDEFScanOptions options);
  external JSPromise write(NDEFMessageSource message);
  external JSPromise write1(
    NDEFMessageSource message,
    NDEFWriteOptions options,
  );
  external JSPromise makeReadOnly();
  external JSPromise makeReadOnly1(NDEFMakeReadOnlyOptions options);
}

@JS('NDEFReadingEvent')
@staticInterop
class NDEFReadingEvent extends Event {
  external factory NDEFReadingEvent();

  external factory NDEFReadingEvent.a1(
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
class NDEFReadingEventInit extends EventInit {
  external factory NDEFReadingEventInit({
    JSString? serialNumber = '',
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
class NDEFWriteOptions {
  external factory NDEFWriteOptions({
    JSBoolean overwrite = true,
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
class NDEFMakeReadOnlyOptions {
  external factory NDEFMakeReadOnlyOptions({AbortSignal? signal});
}

extension NDEFMakeReadOnlyOptionsExtension on NDEFMakeReadOnlyOptions {
  external set signal(AbortSignal? value);
  external AbortSignal? get signal;
}

@JS()
@staticInterop
@anonymous
class NDEFScanOptions {
  external factory NDEFScanOptions({AbortSignal signal});
}

extension NDEFScanOptionsExtension on NDEFScanOptions {
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}
