// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'hr_time.dart';
import 'streams.dart';
import 'webidl.dart';

typedef WebTransportReliabilityMode = String;
typedef WebTransportCongestionControl = String;
typedef WebTransportErrorSource = String;
extension type WebTransportDatagramDuplexStream._(JSObject _)
    implements JSObject {
  external ReadableStream get readable;
  external WritableStream get writable;
  external int get maxDatagramSize;
  external set incomingMaxAge(num? value);
  external num? get incomingMaxAge;
  external set outgoingMaxAge(num? value);
  external num? get outgoingMaxAge;
  external set incomingHighWaterMark(num value);
  external num get incomingHighWaterMark;
  external set outgoingHighWaterMark(num value);
  external num get outgoingHighWaterMark;
}
extension type WebTransport._(JSObject _) implements JSObject {
  external factory WebTransport(
    String url, [
    WebTransportOptions options,
  ]);

  external static bool get supportsReliableOnly;
  external JSPromise<WebTransportConnectionStats> getStats();
  external void close([WebTransportCloseInfo closeInfo]);
  external JSPromise<WebTransportBidirectionalStream> createBidirectionalStream(
      [WebTransportSendStreamOptions options]);
  external JSPromise<WebTransportSendStream> createUnidirectionalStream(
      [WebTransportSendStreamOptions options]);
  external WebTransportSendGroup createSendGroup();
  external JSPromise<JSAny?> get ready;
  external WebTransportReliabilityMode get reliability;
  external WebTransportCongestionControl get congestionControl;
  external JSPromise<WebTransportCloseInfo> get closed;
  external JSPromise<JSAny?> get draining;
  external WebTransportDatagramDuplexStream get datagrams;
  external ReadableStream get incomingBidirectionalStreams;
  external ReadableStream get incomingUnidirectionalStreams;
}
extension type WebTransportHash._(JSObject _) implements JSObject {
  external factory WebTransportHash({
    String algorithm,
    BufferSource value,
  });

  external set algorithm(String value);
  external String get algorithm;
  external set value(BufferSource value);
  external BufferSource get value;
}
extension type WebTransportOptions._(JSObject _) implements JSObject {
  external factory WebTransportOptions({
    bool allowPooling,
    bool requireUnreliable,
    JSArray<WebTransportHash> serverCertificateHashes,
    WebTransportCongestionControl congestionControl,
  });

  external set allowPooling(bool value);
  external bool get allowPooling;
  external set requireUnreliable(bool value);
  external bool get requireUnreliable;
  external set serverCertificateHashes(JSArray<WebTransportHash> value);
  external JSArray<WebTransportHash> get serverCertificateHashes;
  external set congestionControl(WebTransportCongestionControl value);
  external WebTransportCongestionControl get congestionControl;
}
extension type WebTransportCloseInfo._(JSObject _) implements JSObject {
  external factory WebTransportCloseInfo({
    int closeCode,
    String reason,
  });

  external set closeCode(int value);
  external int get closeCode;
  external set reason(String value);
  external String get reason;
}
extension type WebTransportSendStreamOptions._(JSObject _) implements JSObject {
  external factory WebTransportSendStreamOptions({
    WebTransportSendGroup? sendGroup,
    int sendOrder,
    bool waitUntilAvailable,
  });

  external set sendGroup(WebTransportSendGroup? value);
  external WebTransportSendGroup? get sendGroup;
  external set sendOrder(int value);
  external int get sendOrder;
  external set waitUntilAvailable(bool value);
  external bool get waitUntilAvailable;
}
extension type WebTransportConnectionStats._(JSObject _) implements JSObject {
  external factory WebTransportConnectionStats({
    int bytesSent,
    int packetsSent,
    int bytesLost,
    int packetsLost,
    int bytesReceived,
    int packetsReceived,
    DOMHighResTimeStamp smoothedRtt,
    DOMHighResTimeStamp rttVariation,
    DOMHighResTimeStamp minRtt,
    WebTransportDatagramStats datagrams,
    int? estimatedSendRate,
  });

  external set bytesSent(int value);
  external int get bytesSent;
  external set packetsSent(int value);
  external int get packetsSent;
  external set bytesLost(int value);
  external int get bytesLost;
  external set packetsLost(int value);
  external int get packetsLost;
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
extension type WebTransportDatagramStats._(JSObject _) implements JSObject {
  external factory WebTransportDatagramStats({
    int droppedIncoming,
    int expiredIncoming,
    int expiredOutgoing,
    int lostOutgoing,
  });

  external set droppedIncoming(int value);
  external int get droppedIncoming;
  external set expiredIncoming(int value);
  external int get expiredIncoming;
  external set expiredOutgoing(int value);
  external int get expiredOutgoing;
  external set lostOutgoing(int value);
  external int get lostOutgoing;
}
extension type WebTransportSendStream._(JSObject _)
    implements WritableStream, JSObject {
  external JSPromise<WebTransportSendStreamStats> getStats();
  external WebTransportWriter getWriter();
  external set sendGroup(WebTransportSendGroup? value);
  external WebTransportSendGroup? get sendGroup;
  external set sendOrder(int value);
  external int get sendOrder;
}
extension type WebTransportSendStreamStats._(JSObject _) implements JSObject {
  external factory WebTransportSendStreamStats({
    int bytesWritten,
    int bytesSent,
    int bytesAcknowledged,
  });

  external set bytesWritten(int value);
  external int get bytesWritten;
  external set bytesSent(int value);
  external int get bytesSent;
  external set bytesAcknowledged(int value);
  external int get bytesAcknowledged;
}
extension type WebTransportSendGroup._(JSObject _) implements JSObject {
  external JSPromise<WebTransportSendStreamStats> getStats();
}
extension type WebTransportReceiveStream._(JSObject _)
    implements ReadableStream, JSObject {
  external JSPromise<WebTransportReceiveStreamStats> getStats();
}
extension type WebTransportReceiveStreamStats._(JSObject _)
    implements JSObject {
  external factory WebTransportReceiveStreamStats({
    int bytesReceived,
    int bytesRead,
  });

  external set bytesReceived(int value);
  external int get bytesReceived;
  external set bytesRead(int value);
  external int get bytesRead;
}
extension type WebTransportBidirectionalStream._(JSObject _)
    implements JSObject {
  external WebTransportReceiveStream get readable;
  external WebTransportSendStream get writable;
}
extension type WebTransportWriter._(JSObject _)
    implements WritableStreamDefaultWriter, JSObject {
  external JSPromise<JSAny?> atomicWrite([JSAny? chunk]);
}
extension type WebTransportError._(JSObject _)
    implements DOMException, JSObject {
  external factory WebTransportError([
    String message,
    WebTransportErrorOptions options,
  ]);

  external WebTransportErrorSource get source;
  external int? get streamErrorCode;
}
extension type WebTransportErrorOptions._(JSObject _) implements JSObject {
  external factory WebTransportErrorOptions({
    WebTransportErrorSource source,
    int? streamErrorCode,
  });

  external set source(WebTransportErrorSource value);
  external WebTransportErrorSource get source;
  external set streamErrorCode(int? value);
  external int? get streamErrorCode;
}
