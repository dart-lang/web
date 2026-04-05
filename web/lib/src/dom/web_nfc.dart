// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/NDEFMessage).
extension type NDEFMessage._(JSObject _) implements JSObject {
  external factory NDEFMessage(NDEFMessageInit messageInit);

  /// The `records` property of
  /// [NDEFMessage] interface represents a list of [NDEFRecord]s
  /// present in the NDEF message.
  external JSArray<NDEFRecord> get records;
}
extension type NDEFMessageInit._(JSObject _) implements JSObject {
  external factory NDEFMessageInit({required JSArray<NDEFRecordInit> records});

  external JSArray<NDEFRecordInit> get records;
  external set records(JSArray<NDEFRecordInit> value);
}

/// The **`NDEFRecord`** interface of the
/// [Web NFC API](https://developer.mozilla.org/en-US/docs/Web/API/Web_NFC_API)
/// provides data that can be read from, or written to, compatible NFC devices,
/// e.g. NFC tags supporting NDEF.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/NDEFRecord).
extension type NDEFRecord._(JSObject _) implements JSObject {
  external factory NDEFRecord(NDEFRecordInit recordInit);

  /// The **`toRecords()`**
  /// method of the [NDEFRecord] interface converts
  /// [NDEFRecord.data] to a sequence of records based on
  /// [NDEFRecord.recordType], and returns the result. This allows
  /// parsing the payloads of record types which may contain nested records,
  /// such
  /// as smart poster and external type records.
  external JSArray<NDEFRecord>? toRecords();

  /// The **`recordType`**
  /// property of the [NDEFRecord] interface returns the record type of the
  /// record.
  external String get recordType;

  /// The **`mediaType`**
  /// property of the [NDEFRecord] interface returns the  of the record. This
  /// value will be `null` if `recordType` is not equal to `"mime"`.
  external String? get mediaType;

  /// The **`id`** property of the
  /// [NDEFRecord] interface returns the record identifier, which is an
  /// absolute or relative URL used to identify the record.
  ///
  /// This identifier is created by the generator of the record which is solely
  /// responsible
  /// for enforcing record identifier uniqueness. Web NFC does not sign the NFC
  /// content, thus
  /// record consumer should not make any assumptions about integrity or
  /// authenticity of the
  /// identifier or any other part of the records.
  external String? get id;

  /// The **`data`**
  /// property of the [NDEFRecord] interface returns a
  /// `DataView` containing the raw bytes of the record's payload.
  external JSDataView? get data;

  /// The **`encoding`**
  /// property of the [NDEFRecord] interface returns the encoding of
  /// a textual payload, or `null` otherwise.
  external String? get encoding;

  /// The **`lang`**
  /// property of the [NDEFRecord] interface returns the language of
  /// a textual payload, or `null` if one was not supplied.
  ///
  /// The record might be missing a language tag, for example, if the recorded
  /// information is
  /// not locale-specific.
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

  external String get recordType;
  external set recordType(String value);
  external String get mediaType;
  external set mediaType(String value);
  external String get id;
  external set id(String value);
  external String get encoding;
  external set encoding(String value);
  external String get lang;
  external set lang(String value);
  external JSAny? get data;
  external set data(JSAny? value);
}

/// The **`NDEFReader`** interface of the
/// [Web NFC API](https://developer.mozilla.org/en-US/docs/Web/API/Web_NFC_API)
/// is used to read from and write data to compatible NFC devices, e.g. NFC tags
/// supporting NDEF, when these devices are within the reader's magnetic
/// induction field.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/NDEFReader).
extension type NDEFReader._(JSObject _) implements EventTarget, JSObject {
  external factory NDEFReader();

  /// The `scan()` method of the [NDEFReader] interface activates a reading
  /// device and returns a `Promise` that either resolves when an NFC tag read
  /// operation is scheduled or rejects if a hardware or permission error is
  /// encountered. This method triggers a permission prompt if the "nfc"
  /// permission has not been previously granted.
  external JSPromise<JSAny?> scan([NDEFScanOptions options]);

  /// The `write()` method of the [NDEFReader] interface attempts to write an
  /// NDEF message to a tag and returns a `Promise` that either resolves when a
  /// message has been written to the tag or rejects if a hardware or permission
  /// error is encountered. This method triggers a permission prompt if the
  /// "nfc" permission has not been previously granted.
  external JSPromise<JSAny?> write(
    NDEFMessageSource message, [
    NDEFWriteOptions options,
  ]);
  external JSPromise<JSAny?> makeReadOnly([NDEFMakeReadOnlyOptions options]);
  external EventHandler get onreading;
  external set onreading(EventHandler value);
  external EventHandler get onreadingerror;
  external set onreadingerror(EventHandler value);
}

/// The **`NDEFReadingEvent`** interface of the
/// [Web NFC API](https://developer.mozilla.org/en-US/docs/Web/API/Web_NFC_API)
/// represents events dispatched on new NFC readings obtained by [NDEFReader].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/NDEFReadingEvent).
extension type NDEFReadingEvent._(JSObject _) implements Event, JSObject {
  external factory NDEFReadingEvent(
    String type,
    NDEFReadingEventInit readingEventInitDict,
  );

  /// The **`serialNumber`** property of the [NDEFReadingEvent] interface
  /// returns the serial number of the device, which is used for anti-collision
  /// and identification, or an empty string if no serial number is available.
  external String get serialNumber;

  /// The **`message`** property of the [NDEFReadingEvent] interface returns an
  /// [NDEFMessage] object containing the received message.
  external NDEFMessage get message;
}
extension type NDEFReadingEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory NDEFReadingEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    String? serialNumber,
    required NDEFMessageInit message,
  });

  external String? get serialNumber;
  external set serialNumber(String? value);
  external NDEFMessageInit get message;
  external set message(NDEFMessageInit value);
}
extension type NDEFWriteOptions._(JSObject _) implements JSObject {
  external factory NDEFWriteOptions({
    bool overwrite,
    AbortSignal? signal,
  });

  external bool get overwrite;
  external set overwrite(bool value);
  external AbortSignal? get signal;
  external set signal(AbortSignal? value);
}
extension type NDEFMakeReadOnlyOptions._(JSObject _) implements JSObject {
  external factory NDEFMakeReadOnlyOptions({AbortSignal? signal});

  external AbortSignal? get signal;
  external set signal(AbortSignal? value);
}
extension type NDEFScanOptions._(JSObject _) implements JSObject {
  external factory NDEFScanOptions({AbortSignal signal});

  external AbortSignal get signal;
  external set signal(AbortSignal value);
}
