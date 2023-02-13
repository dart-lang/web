// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

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

extension NDEFMessageInitExtension on NDEFMessageInit {
  // TODO
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

@JS('NDEFRecordInit')
@staticInterop
class NDEFRecordInit {
  external factory NDEFRecordInit();
}

extension NDEFRecordInitExtension on NDEFRecordInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('NDEFReader')
@staticInterop
class NDEFReader extends EventTarget {
  external factory NDEFReader();
}

extension NDEFReaderExtension on NDEFReader {
  external EventHandler get onreading;
  external set onreading(EventHandler value);
  external EventHandler get onreadingerror;
  external set onreadingerror(EventHandler value);
  external JSPromise scan();
  external JSPromise scan_1(NDEFScanOptions options);
  external JSPromise write(NDEFMessageSource message);
  external JSPromise write_1(
      NDEFMessageSource message, NDEFWriteOptions options);
  external JSPromise makeReadOnly();
  external JSPromise makeReadOnly_1(NDEFMakeReadOnlyOptions options);
}

@JS('NDEFReadingEvent')
@staticInterop
class NDEFReadingEvent extends Event {
  external factory NDEFReadingEvent();
  external factory NDEFReadingEvent.a1(
      JSString type, NDEFReadingEventInit readingEventInitDict);
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

extension NDEFReadingEventInitExtension on NDEFReadingEventInit {
  // TODO
  // TODO
}

@JS('NDEFWriteOptions')
@staticInterop
class NDEFWriteOptions {
  external factory NDEFWriteOptions();
}

extension NDEFWriteOptionsExtension on NDEFWriteOptions {
  // TODO
  // TODO
}

@JS('NDEFMakeReadOnlyOptions')
@staticInterop
class NDEFMakeReadOnlyOptions {
  external factory NDEFMakeReadOnlyOptions();
}

extension NDEFMakeReadOnlyOptionsExtension on NDEFMakeReadOnlyOptions {
  // TODO
}

@JS('NDEFScanOptions')
@staticInterop
class NDEFScanOptions {
  external factory NDEFScanOptions();
}

extension NDEFScanOptionsExtension on NDEFScanOptions {
  // TODO
}
