// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef WebTransportReliabilityMode = JSString;
typedef WebTransportCongestionControl = JSString;
typedef WebTransportErrorSource = JSString;

@JS('WebTransportDatagramDuplexStream')
@staticInterop
class WebTransportDatagramDuplexStream {
  external factory WebTransportDatagramDuplexStream();
}

extension WebTransportDatagramDuplexStreamExtension
    on WebTransportDatagramDuplexStream {
  external ReadableStream get readable;
  external WritableStream get writable;
  external JSNumber get maxDatagramSize;
  external JSNumber? get incomingMaxAge;
  external set incomingMaxAge(JSNumber? value);
  external JSNumber? get outgoingMaxAge;
  external set outgoingMaxAge(JSNumber? value);
  external JSNumber get incomingHighWaterMark;
  external set incomingHighWaterMark(JSNumber value);
  external JSNumber get outgoingHighWaterMark;
  external set outgoingHighWaterMark(JSNumber value);
}

@JS('WebTransport')
@staticInterop
class WebTransport {
  external factory WebTransport();
  external factory WebTransport.a1(JSString url);
  external factory WebTransport.a1_1(JSString url, WebTransportOptions options);
}

extension WebTransportExtension on WebTransport {
  external JSPromise getStats();
  external JSPromise get ready;
  external WebTransportReliabilityMode get reliability;
  external WebTransportCongestionControl get congestionControl;
  external JSPromise get closed;
  external JSUndefined close();
  external JSUndefined close_1(WebTransportCloseInfo closeInfo);
  external WebTransportDatagramDuplexStream get datagrams;
  external JSPromise createBidirectionalStream();
  external JSPromise createBidirectionalStream_1(
      WebTransportSendStreamOptions options);
  external ReadableStream get incomingBidirectionalStreams;
  external JSPromise createUnidirectionalStream();
  external JSPromise createUnidirectionalStream_1(
      WebTransportSendStreamOptions options);
  external ReadableStream get incomingUnidirectionalStreams;
}

@JS('WebTransportHash')
@staticInterop
class WebTransportHash {
  external factory WebTransportHash();
}

extension WebTransportHashExtension on WebTransportHash {
  // TODO
  // TODO
}

@JS('WebTransportOptions')
@staticInterop
class WebTransportOptions {
  external factory WebTransportOptions();
}

extension WebTransportOptionsExtension on WebTransportOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('WebTransportCloseInfo')
@staticInterop
class WebTransportCloseInfo {
  external factory WebTransportCloseInfo();
}

extension WebTransportCloseInfoExtension on WebTransportCloseInfo {
  // TODO
  // TODO
}

@JS('WebTransportSendStreamOptions')
@staticInterop
class WebTransportSendStreamOptions {
  external factory WebTransportSendStreamOptions();
}

extension WebTransportSendStreamOptionsExtension
    on WebTransportSendStreamOptions {
  // TODO
}

@JS('WebTransportStats')
@staticInterop
class WebTransportStats {
  external factory WebTransportStats();
}

extension WebTransportStatsExtension on WebTransportStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('WebTransportDatagramStats')
@staticInterop
class WebTransportDatagramStats {
  external factory WebTransportDatagramStats();
}

extension WebTransportDatagramStatsExtension on WebTransportDatagramStats {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('WebTransportSendStream')
@staticInterop
class WebTransportSendStream extends WritableStream {
  external factory WebTransportSendStream();
}

extension WebTransportSendStreamExtension on WebTransportSendStream {
  external JSPromise getStats();
}

@JS('WebTransportSendStreamStats')
@staticInterop
class WebTransportSendStreamStats {
  external factory WebTransportSendStreamStats();
}

extension WebTransportSendStreamStatsExtension on WebTransportSendStreamStats {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('WebTransportReceiveStream')
@staticInterop
class WebTransportReceiveStream extends ReadableStream {
  external factory WebTransportReceiveStream();
}

extension WebTransportReceiveStreamExtension on WebTransportReceiveStream {
  external JSPromise getStats();
}

@JS('WebTransportReceiveStreamStats')
@staticInterop
class WebTransportReceiveStreamStats {
  external factory WebTransportReceiveStreamStats();
}

extension WebTransportReceiveStreamStatsExtension
    on WebTransportReceiveStreamStats {
  // TODO
  // TODO
  // TODO
}

@JS('WebTransportBidirectionalStream')
@staticInterop
class WebTransportBidirectionalStream {
  external factory WebTransportBidirectionalStream();
}

extension WebTransportBidirectionalStreamExtension
    on WebTransportBidirectionalStream {
  external WebTransportReceiveStream get readable;
  external WebTransportSendStream get writable;
}

@JS('WebTransportError')
@staticInterop
class WebTransportError extends DOMException {
  external factory WebTransportError();
  external factory WebTransportError.a1();
  external factory WebTransportError.a1_1(WebTransportErrorInit init);
}

extension WebTransportErrorExtension on WebTransportError {
  external WebTransportErrorSource get source;
  external JSNumber? get streamErrorCode;
}

@JS('WebTransportErrorInit')
@staticInterop
class WebTransportErrorInit {
  external factory WebTransportErrorInit();
}

extension WebTransportErrorInitExtension on WebTransportErrorInit {
  // TODO
  // TODO
}
