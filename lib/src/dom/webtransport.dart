// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'hr_time.dart';
import 'streams.dart';
import 'webidl.dart';

typedef WebTransportReliabilityMode = JSString;
typedef WebTransportCongestionControl = JSString;
typedef WebTransportErrorSource = JSString;

@JS('WebTransportDatagramDuplexStream')
@staticInterop
class WebTransportDatagramDuplexStream {}

extension WebTransportDatagramDuplexStreamExtension
    on WebTransportDatagramDuplexStream {
  external ReadableStream get readable;
  external WritableStream get writable;
  external JSNumber get maxDatagramSize;
  external set incomingMaxAge(JSNumber value);
  external JSNumber get incomingMaxAge;
  external set outgoingMaxAge(JSNumber value);
  external JSNumber get outgoingMaxAge;
  external set incomingHighWaterMark(JSNumber value);
  external JSNumber get incomingHighWaterMark;
  external set outgoingHighWaterMark(JSNumber value);
  external JSNumber get outgoingHighWaterMark;
}

@JS('WebTransport')
@staticInterop
class WebTransport {
  external factory WebTransport(
    JSString url, [
    WebTransportOptions options,
  ]);
}

extension WebTransportExtension on WebTransport {
  external JSPromise getStats();
  external JSVoid close([WebTransportCloseInfo closeInfo]);
  external JSPromise createBidirectionalStream(
      [WebTransportSendStreamOptions options]);
  external JSPromise createUnidirectionalStream(
      [WebTransportSendStreamOptions options]);
  external JSPromise get ready;
  external WebTransportReliabilityMode get reliability;
  external WebTransportCongestionControl get congestionControl;
  external JSPromise get closed;
  external WebTransportDatagramDuplexStream get datagrams;
  external ReadableStream get incomingBidirectionalStreams;
  external ReadableStream get incomingUnidirectionalStreams;
}

@JS()
@staticInterop
@anonymous
class WebTransportHash {
  external factory WebTransportHash({
    JSString algorithm,
    BufferSource value,
  });
}

extension WebTransportHashExtension on WebTransportHash {
  external set algorithm(JSString value);
  external JSString get algorithm;
  external set value(BufferSource value);
  external BufferSource get value;
}

@JS()
@staticInterop
@anonymous
class WebTransportOptions {
  external factory WebTransportOptions({
    JSBoolean allowPooling = false,
    JSBoolean requireUnreliable = false,
    JSArray serverCertificateHashes,
    WebTransportCongestionControl congestionControl = 'default',
  });
}

extension WebTransportOptionsExtension on WebTransportOptions {
  external set allowPooling(JSBoolean value);
  external JSBoolean get allowPooling;
  external set requireUnreliable(JSBoolean value);
  external JSBoolean get requireUnreliable;
  external set serverCertificateHashes(JSArray value);
  external JSArray get serverCertificateHashes;
  external set congestionControl(WebTransportCongestionControl value);
  external WebTransportCongestionControl get congestionControl;
}

@JS()
@staticInterop
@anonymous
class WebTransportCloseInfo {
  external factory WebTransportCloseInfo({
    JSNumber closeCode = 0,
    JSString reason = '',
  });
}

extension WebTransportCloseInfoExtension on WebTransportCloseInfo {
  external set closeCode(JSNumber value);
  external JSNumber get closeCode;
  external set reason(JSString value);
  external JSString get reason;
}

@JS()
@staticInterop
@anonymous
class WebTransportSendStreamOptions {
  external factory WebTransportSendStreamOptions({JSNumber? sendOrder});
}

extension WebTransportSendStreamOptionsExtension
    on WebTransportSendStreamOptions {
  external set sendOrder(JSNumber? value);
  external JSNumber? get sendOrder;
}

@JS()
@staticInterop
@anonymous
class WebTransportStats {
  external factory WebTransportStats({
    DOMHighResTimeStamp timestamp,
    JSNumber bytesSent,
    JSNumber packetsSent,
    JSNumber packetsLost,
    JSNumber numOutgoingStreamsCreated,
    JSNumber numIncomingStreamsCreated,
    JSNumber bytesReceived,
    JSNumber packetsReceived,
    DOMHighResTimeStamp smoothedRtt,
    DOMHighResTimeStamp rttVariation,
    DOMHighResTimeStamp minRtt,
    WebTransportDatagramStats datagrams,
  });
}

extension WebTransportStatsExtension on WebTransportStats {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set bytesSent(JSNumber value);
  external JSNumber get bytesSent;
  external set packetsSent(JSNumber value);
  external JSNumber get packetsSent;
  external set packetsLost(JSNumber value);
  external JSNumber get packetsLost;
  external set numOutgoingStreamsCreated(JSNumber value);
  external JSNumber get numOutgoingStreamsCreated;
  external set numIncomingStreamsCreated(JSNumber value);
  external JSNumber get numIncomingStreamsCreated;
  external set bytesReceived(JSNumber value);
  external JSNumber get bytesReceived;
  external set packetsReceived(JSNumber value);
  external JSNumber get packetsReceived;
  external set smoothedRtt(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get smoothedRtt;
  external set rttVariation(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get rttVariation;
  external set minRtt(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get minRtt;
  external set datagrams(WebTransportDatagramStats value);
  external WebTransportDatagramStats get datagrams;
}

@JS()
@staticInterop
@anonymous
class WebTransportDatagramStats {
  external factory WebTransportDatagramStats({
    DOMHighResTimeStamp timestamp,
    JSNumber expiredOutgoing,
    JSNumber droppedIncoming,
    JSNumber lostOutgoing,
  });
}

extension WebTransportDatagramStatsExtension on WebTransportDatagramStats {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set expiredOutgoing(JSNumber value);
  external JSNumber get expiredOutgoing;
  external set droppedIncoming(JSNumber value);
  external JSNumber get droppedIncoming;
  external set lostOutgoing(JSNumber value);
  external JSNumber get lostOutgoing;
}

@JS('WebTransportSendStream')
@staticInterop
class WebTransportSendStream implements WritableStream {}

extension WebTransportSendStreamExtension on WebTransportSendStream {
  external JSPromise getStats();
}

@JS()
@staticInterop
@anonymous
class WebTransportSendStreamStats {
  external factory WebTransportSendStreamStats({
    DOMHighResTimeStamp timestamp,
    JSNumber bytesWritten,
    JSNumber bytesSent,
    JSNumber bytesAcknowledged,
  });
}

extension WebTransportSendStreamStatsExtension on WebTransportSendStreamStats {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set bytesWritten(JSNumber value);
  external JSNumber get bytesWritten;
  external set bytesSent(JSNumber value);
  external JSNumber get bytesSent;
  external set bytesAcknowledged(JSNumber value);
  external JSNumber get bytesAcknowledged;
}

@JS('WebTransportReceiveStream')
@staticInterop
class WebTransportReceiveStream implements ReadableStream {}

extension WebTransportReceiveStreamExtension on WebTransportReceiveStream {
  external JSPromise getStats();
}

@JS()
@staticInterop
@anonymous
class WebTransportReceiveStreamStats {
  external factory WebTransportReceiveStreamStats({
    DOMHighResTimeStamp timestamp,
    JSNumber bytesReceived,
    JSNumber bytesRead,
  });
}

extension WebTransportReceiveStreamStatsExtension
    on WebTransportReceiveStreamStats {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set bytesReceived(JSNumber value);
  external JSNumber get bytesReceived;
  external set bytesRead(JSNumber value);
  external JSNumber get bytesRead;
}

@JS('WebTransportBidirectionalStream')
@staticInterop
class WebTransportBidirectionalStream {}

extension WebTransportBidirectionalStreamExtension
    on WebTransportBidirectionalStream {
  external WebTransportReceiveStream get readable;
  external WebTransportSendStream get writable;
}

@JS('WebTransportError')
@staticInterop
class WebTransportError implements DOMException {
  external factory WebTransportError([
    JSString message,
    WebTransportErrorOptions options,
  ]);
}

extension WebTransportErrorExtension on WebTransportError {
  external WebTransportErrorSource get source;
  external JSNumber? get streamErrorCode;
}

@JS()
@staticInterop
@anonymous
class WebTransportErrorOptions {
  external factory WebTransportErrorOptions({
    WebTransportErrorSource source = 'stream',
    JSNumber? streamErrorCode,
  });
}

extension WebTransportErrorOptionsExtension on WebTransportErrorOptions {
  external set source(WebTransportErrorSource value);
  external WebTransportErrorSource get source;
  external set streamErrorCode(JSNumber? value);
  external JSNumber? get streamErrorCode;
}
