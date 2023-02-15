// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/streams.dart';
import 'package:web/src/dom/webidl.dart';

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
  external set incomingMaxAge(JSNumber? value);
  external JSNumber? get incomingMaxAge;
  external set outgoingMaxAge(JSNumber? value);
  external JSNumber? get outgoingMaxAge;
  external set incomingHighWaterMark(JSNumber value);
  external JSNumber get incomingHighWaterMark;
  external set outgoingHighWaterMark(JSNumber value);
  external JSNumber get outgoingHighWaterMark;
}

@JS('WebTransport')
@staticInterop
class WebTransport {
  external factory WebTransport();

  external factory WebTransport.a1(JSString url);

  external factory WebTransport.a2(
    JSString url,
    WebTransportOptions options,
  );
}

extension WebTransportExtension on WebTransport {
  external JSPromise getStats();
  external JSPromise get ready;
  external WebTransportReliabilityMode get reliability;
  external WebTransportCongestionControl get congestionControl;
  external JSPromise get closed;
  external JSVoid close();
  external JSVoid close1(WebTransportCloseInfo closeInfo);
  external WebTransportDatagramDuplexStream get datagrams;
  external JSPromise createBidirectionalStream();
  external JSPromise createBidirectionalStream1(
      WebTransportSendStreamOptions options);
  external ReadableStream get incomingBidirectionalStreams;
  external JSPromise createUnidirectionalStream();
  external JSPromise createUnidirectionalStream1(
      WebTransportSendStreamOptions options);
  external ReadableStream get incomingUnidirectionalStreams;
}

@JS('WebTransportHash')
@staticInterop
class WebTransportHash {
  external factory WebTransportHash();
}

extension WebTransportHashExtension on WebTransportHash {}

@JS('WebTransportOptions')
@staticInterop
class WebTransportOptions {
  external factory WebTransportOptions();
}

extension WebTransportOptionsExtension on WebTransportOptions {}

@JS('WebTransportCloseInfo')
@staticInterop
class WebTransportCloseInfo {
  external factory WebTransportCloseInfo();
}

extension WebTransportCloseInfoExtension on WebTransportCloseInfo {}

@JS('WebTransportSendStreamOptions')
@staticInterop
class WebTransportSendStreamOptions {
  external factory WebTransportSendStreamOptions();
}

extension WebTransportSendStreamOptionsExtension
    on WebTransportSendStreamOptions {}

@JS('WebTransportStats')
@staticInterop
class WebTransportStats {
  external factory WebTransportStats();
}

extension WebTransportStatsExtension on WebTransportStats {}

@JS('WebTransportDatagramStats')
@staticInterop
class WebTransportDatagramStats {
  external factory WebTransportDatagramStats();
}

extension WebTransportDatagramStatsExtension on WebTransportDatagramStats {}

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

extension WebTransportSendStreamStatsExtension on WebTransportSendStreamStats {}

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
    on WebTransportReceiveStreamStats {}

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

  external factory WebTransportError.a2(WebTransportErrorInit init);
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

extension WebTransportErrorInitExtension on WebTransportErrorInit {}
