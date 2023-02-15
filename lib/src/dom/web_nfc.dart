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

@JS('NDEFMessageInit')
@staticInterop
class NDEFMessageInit {
  external factory NDEFMessageInit();
}

extension NDEFMessageInitExtension on NDEFMessageInit {}

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

@JS('NDEFRecordInit')
@staticInterop
class NDEFRecordInit {
  external factory NDEFRecordInit();
}

extension NDEFRecordInitExtension on NDEFRecordInit {}

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

@JS('NDEFReadingEventInit')
@staticInterop
class NDEFReadingEventInit extends EventInit {
  external factory NDEFReadingEventInit();
}

extension NDEFReadingEventInitExtension on NDEFReadingEventInit {}

@JS('NDEFWriteOptions')
@staticInterop
class NDEFWriteOptions {
  external factory NDEFWriteOptions();
}

extension NDEFWriteOptionsExtension on NDEFWriteOptions {}

@JS('NDEFMakeReadOnlyOptions')
@staticInterop
class NDEFMakeReadOnlyOptions {
  external factory NDEFMakeReadOnlyOptions();
}

extension NDEFMakeReadOnlyOptionsExtension on NDEFMakeReadOnlyOptions {}

@JS('NDEFScanOptions')
@staticInterop
class NDEFScanOptions {
  external factory NDEFScanOptions();
}

extension NDEFScanOptionsExtension on NDEFScanOptions {}
