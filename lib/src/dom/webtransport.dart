// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'hr_time.dart';
import 'streams.dart';
import 'webidl.dart';

typedef WebTransportReliabilityMode = String;
typedef WebTransportCongestionControl = String;
typedef WebTransportErrorSource = String;

@JS('WebTransportDatagramDuplexStream')
@staticInterop
class WebTransportDatagramDuplexStream implements JSObject {}

extension WebTransportDatagramDuplexStreamExtension
    on WebTransportDatagramDuplexStream {
  external ReadableStream get readable;
  external WritableStream get writable;
  external int get maxDatagramSize;
  external set incomingMaxAge(double value);
  external double get incomingMaxAge;
  external set outgoingMaxAge(double value);
  external double get outgoingMaxAge;
  external set incomingHighWaterMark(double value);
  external double get incomingHighWaterMark;
  external set outgoingHighWaterMark(double value);
  external double get outgoingHighWaterMark;
}

@JS('WebTransport')
@staticInterop
class WebTransport implements JSObject {
  external factory WebTransport(
    String url, [
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
  external JSPromise get draining;
  external WebTransportDatagramDuplexStream get datagrams;
  external ReadableStream get incomingBidirectionalStreams;
  external ReadableStream get incomingUnidirectionalStreams;
}

@JS()
@staticInterop
@anonymous
class WebTransportHash implements JSObject {
  external factory WebTransportHash({
    String algorithm,
    BufferSource value,
  });
}

extension WebTransportHashExtension on WebTransportHash {
  external set algorithm(String value);
  external String get algorithm;
  external set value(BufferSource value);
  external BufferSource get value;
}

@JS()
@staticInterop
@anonymous
class WebTransportOptions implements JSObject {
  external factory WebTransportOptions({
    bool allowPooling,
    bool requireUnreliable,
    JSArray serverCertificateHashes,
    WebTransportCongestionControl congestionControl,
  });
}

extension WebTransportOptionsExtension on WebTransportOptions {
  external set allowPooling(bool value);
  external bool get allowPooling;
  external set requireUnreliable(bool value);
  external bool get requireUnreliable;
  external set serverCertificateHashes(JSArray value);
  external JSArray get serverCertificateHashes;
  external set congestionControl(WebTransportCongestionControl value);
  external WebTransportCongestionControl get congestionControl;
}

@JS()
@staticInterop
@anonymous
class WebTransportCloseInfo implements JSObject {
  external factory WebTransportCloseInfo({
    int closeCode,
    String reason,
  });
}

extension WebTransportCloseInfoExtension on WebTransportCloseInfo {
  external set closeCode(int value);
  external int get closeCode;
  external set reason(String value);
  external String get reason;
}

@JS()
@staticInterop
@anonymous
class WebTransportSendStreamOptions implements JSObject {
  external factory WebTransportSendStreamOptions({int? sendOrder});
}

extension WebTransportSendStreamOptionsExtension
    on WebTransportSendStreamOptions {
  external set sendOrder(int? value);
  external int? get sendOrder;
}

@JS()
@staticInterop
@anonymous
class WebTransportStats implements JSObject {
  external factory WebTransportStats({
    DOMHighResTimeStamp timestamp,
    int bytesSent,
    int packetsSent,
    int packetsLost,
    int numOutgoingStreamsCreated,
    int numIncomingStreamsCreated,
    int bytesReceived,
    int packetsReceived,
    DOMHighResTimeStamp smoothedRtt,
    DOMHighResTimeStamp rttVariation,
    DOMHighResTimeStamp minRtt,
    WebTransportDatagramStats datagrams,
    int? estimatedSendRate,
  });
}

extension WebTransportStatsExtension on WebTransportStats {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set bytesSent(int value);
  external int get bytesSent;
  external set packetsSent(int value);
  external int get packetsSent;
  external set packetsLost(int value);
  external int get packetsLost;
  external set numOutgoingStreamsCreated(int value);
  external int get numOutgoingStreamsCreated;
  external set numIncomingStreamsCreated(int value);
  external int get numIncomingStreamsCreated;
  external set bytesReceived(int value);
  external int get bytesReceived;
  external set packetsReceived(int value);
  external int get packetsReceived;
  external set smoothedRtt(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get smoothedRtt;
  external set rttVariation(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get rttVariation;
  external set minRtt(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get minRtt;
  external set datagrams(WebTransportDatagramStats value);
  external WebTransportDatagramStats get datagrams;
  external set estimatedSendRate(int? value);
  external int? get estimatedSendRate;
}

@JS()
@staticInterop
@anonymous
class WebTransportDatagramStats implements JSObject {
  external factory WebTransportDatagramStats({
    DOMHighResTimeStamp timestamp,
    int expiredOutgoing,
    int droppedIncoming,
    int lostOutgoing,
  });
}

extension WebTransportDatagramStatsExtension on WebTransportDatagramStats {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set expiredOutgoing(int value);
  external int get expiredOutgoing;
  external set droppedIncoming(int value);
  external int get droppedIncoming;
  external set lostOutgoing(int value);
  external int get lostOutgoing;
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
class WebTransportSendStreamStats implements JSObject {
  external factory WebTransportSendStreamStats({
    DOMHighResTimeStamp timestamp,
    int bytesWritten,
    int bytesSent,
    int bytesAcknowledged,
  });
}

extension WebTransportSendStreamStatsExtension on WebTransportSendStreamStats {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set bytesWritten(int value);
  external int get bytesWritten;
  external set bytesSent(int value);
  external int get bytesSent;
  external set bytesAcknowledged(int value);
  external int get bytesAcknowledged;
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
class WebTransportReceiveStreamStats implements JSObject {
  external factory WebTransportReceiveStreamStats({
    DOMHighResTimeStamp timestamp,
    int bytesReceived,
    int bytesRead,
  });
}

extension WebTransportReceiveStreamStatsExtension
    on WebTransportReceiveStreamStats {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set bytesReceived(int value);
  external int get bytesReceived;
  external set bytesRead(int value);
  external int get bytesRead;
}

@JS('WebTransportBidirectionalStream')
@staticInterop
class WebTransportBidirectionalStream implements JSObject {}

extension WebTransportBidirectionalStreamExtension
    on WebTransportBidirectionalStream {
  external WebTransportReceiveStream get readable;
  external WebTransportSendStream get writable;
}

@JS('WebTransportError')
@staticInterop
class WebTransportError implements DOMException {
  external factory WebTransportError([
    String message,
    WebTransportErrorOptions options,
  ]);
}

extension WebTransportErrorExtension on WebTransportError {
  external WebTransportErrorSource get source;
  external int? get streamErrorCode;
}

@JS()
@staticInterop
@anonymous
class WebTransportErrorOptions implements JSObject {
  external factory WebTransportErrorOptions({
    WebTransportErrorSource source,
    int? streamErrorCode,
  });
}

extension WebTransportErrorOptionsExtension on WebTransportErrorOptions {
  external set source(WebTransportErrorSource value);
  external WebTransportErrorSource get source;
  external set streamErrorCode(int? value);
  external int? get streamErrorCode;
}
