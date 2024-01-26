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

typedef NDEFMessageSource = JSAny;

/// The **`NDEFMessage`** interface of the
/// [Web NFC API](https://developer.mozilla.org/en-US/docs/Web/API/Web_NFC_API)
/// represents the content of an NDEF message that has been read from or could
/// be written to an NFC tag. An instance is acquired by calling the
/// `NDEFMessage()` constructor or from the [NDEFReadingEvent.message] property,
/// which is passed to the [NDEFReader.reading_event] event.
extension type NDEFMessage._(JSObject _) implements JSObject {
  external factory NDEFMessage(NDEFMessageInit messageInit);

  external JSArray get records;
}
extension type NDEFMessageInit._(JSObject _) implements JSObject {
  external factory NDEFMessageInit({required JSArray records});

  external set records(JSArray value);
  external JSArray get records;
}

/// The **`NDEFRecord`** interface of the
/// [Web NFC API](https://developer.mozilla.org/en-US/docs/Web/API/Web_NFC_API)
/// provides data that can be read from, or written to, compatible NFC devices,
/// e.g. NFC tags supporting NDEF.
extension type NDEFRecord._(JSObject _) implements JSObject {
  external factory NDEFRecord(NDEFRecordInit recordInit);

  /// The **`toRecords()`**
  /// method of the [NDEFRecord] interface converts
  /// [NDEFRecord.data] to a sequence of records based on
  /// [NDEFRecord.recordType], and returns the result. This allows
  /// parsing the payloads of record types which may contain nested records,
  /// such
  /// as smart poster and external type records.
  external JSArray? toRecords();
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

/// The **`NDEFReader`** interface of the
/// [Web NFC API](https://developer.mozilla.org/en-US/docs/Web/API/Web_NFC_API)
/// is used to read from and write data to compatible NFC devices, e.g. NFC tags
/// supporting NDEF, when these devices are within the reader's magnetic
/// induction field.
extension type NDEFReader._(JSObject _) implements EventTarget, JSObject {
  external factory NDEFReader();

  /// The `scan()` method of the [NDEFReader] interface activates a reading
  /// device and returns a `Promise` that either resolves when an NFC tag read
  /// operation is scheduled or rejects if a hardware or permission error is
  /// encountered. This method triggers a permission prompt if the "nfc"
  /// permission has not been previously granted.
  external JSPromise scan([NDEFScanOptions options]);

  /// The `write()` method of the [NDEFReader] interface attempts to write an
  /// NDEF message to a tag and returns a `Promise` that either resolves when a
  /// message has been written to the tag or rejects if a hardware or permission
  /// error is encountered. This method triggers a permission prompt if the
  /// "nfc" permission has not been previously granted.
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

/// The **`NDEFReadingEvent`** interface of the
/// [Web NFC API](https://developer.mozilla.org/en-US/docs/Web/API/Web_NFC_API)
/// represents events dispatched on new NFC readings obtained by [NDEFReader].
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
