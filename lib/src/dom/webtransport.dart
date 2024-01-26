// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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
  external set incomingMaxAge(num value);
  external num get incomingMaxAge;
  external set outgoingMaxAge(num value);
  external num get outgoingMaxAge;
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

  /// The **`getStats()`** method of the [WebTransport] interface asynchronously
  /// returns an object containing HTTP/3 connection statistics.
  external JSPromise getStats();

  /// The **`close()`** method of the [WebTransport] interface closes an ongoing
  /// WebTransport session.
  external void close([WebTransportCloseInfo closeInfo]);

  /// The **`createBidirectionalStream()`** method of the [WebTransport]
  /// interface asynchronously opens and returns a bidirectional stream.
  ///
  /// The method returns a `Promise` that resolves to a
  /// [WebTransportBidirectionalStream] object, which has `readable` and
  /// `writable` properties that can be used to reliably read from and write to
  /// the server.
  /// "Reliable" means that transmission and order of data are guaranteed.
  /// This provides slower delivery (albeit faster than with WebSockets) than
  /// [WebTransport.datagrams], but is needed in situations where reliability
  /// and ordering are important, like chat applications.
  ///
  /// The relative order in which queued bytes are emptied from created streams
  /// can be specified using the `sendOrder` option.
  /// If set, queued bytes in streams with a higher send order are guaranteed to
  /// be sent before queued bytes for streams with a lower send order.
  /// If the order number is not set then the order in which bytes are sent is
  /// implementation dependent.
  /// Note however that even though bytes from higher send-order streams are
  /// sent first, they may not arrive first.
  external JSPromise createBidirectionalStream(
      [WebTransportSendStreamOptions options]);

  /// The **`createUnidirectionalStream()`** method of the [WebTransport]
  /// interface asynchronously opens a unidirectional stream.
  ///
  /// The method returns a `Promise` that resolves to a [WritableStream] object,
  /// which can be used to reliably write data to the server.
  ///
  /// <!-- Note, returns a `WebTransportSendStream` according to spec, but not yet implemented -->
  ///
  /// "Reliable" means that transmission and order of data are guaranteed. This
  /// provides slower delivery (albeit faster than with WebSockets) than
  /// [WebTransport.datagrams], but is needed in situations where reliability
  /// and ordering are important, like chat applications.
  ///
  /// The relative order in which queued bytes are emptied from created streams
  /// can be specified using the `sendOrder` option.
  /// If set, queued bytes in streams with a higher send order are guaranteed to
  /// be sent before queued bytes for streams with a lower send order.
  /// If the order number is not set then the order in which bytes are sent is
  /// implementation dependent.
  /// Note however that even though bytes from higher send-order streams are
  /// sent first, they may not arrive first.
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
    JSArray serverCertificateHashes,
    WebTransportCongestionControl congestionControl,
  });

  external set allowPooling(bool value);
  external bool get allowPooling;
  external set requireUnreliable(bool value);
  external bool get requireUnreliable;
  external set serverCertificateHashes(JSArray value);
  external JSArray get serverCertificateHashes;
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
  external factory WebTransportSendStreamOptions({int? sendOrder});

  external set sendOrder(int? value);
  external int? get sendOrder;
}
extension type WebTransportConnectionStats._(JSObject _) implements JSObject {
  external factory WebTransportConnectionStats({
    DOMHighResTimeStamp timestamp,
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

  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
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
    DOMHighResTimeStamp timestamp,
    int expiredOutgoing,
    int droppedIncoming,
    int lostOutgoing,
  });

  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set expiredOutgoing(int value);
  external int get expiredOutgoing;
  external set droppedIncoming(int value);
  external int get droppedIncoming;
  external set lostOutgoing(int value);
  external int get lostOutgoing;
}
extension type WebTransportSendStream._(JSObject _)
    implements WritableStream, JSObject {
  /// The **`getStats()`** method of the [WebTransportSendStream] interface
  /// asynchronously returns an object containing statistics for the current
  /// stream.
  ///
  /// The statistics include the total number of bytes written to the stream,
  /// the number that have been sent (ignoring packet overhead), and the number
  /// of bytes that have been set at least once, and the number that have been
  /// acknowledged (up until the first sequentially-ordered non-acknowledged
  /// byte).
  /// It therefore provides a measure of how quickly the application is sending
  /// bytes to the server on this particular stream.
  external JSPromise getStats();
  external set sendOrder(int? value);
  external int? get sendOrder;
}
extension type WebTransportSendStreamStats._(JSObject _) implements JSObject {
  external factory WebTransportSendStreamStats({
    DOMHighResTimeStamp timestamp,
    int bytesWritten,
    int bytesSent,
    int bytesAcknowledged,
  });

  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set bytesWritten(int value);
  external int get bytesWritten;
  external set bytesSent(int value);
  external int get bytesSent;
  external set bytesAcknowledged(int value);
  external int get bytesAcknowledged;
}
extension type WebTransportReceiveStream._(JSObject _)
    implements ReadableStream, JSObject {
  /// The **`getStats()`** method of the [WebTransportReceiveStream] interface
  /// asynchronously returns an object containing statistics for the current
  /// stream.
  ///
  /// The statistics include the total number of ordered bytes that have arrived
  /// on this stream (ignoring network overhead, up until the first missing
  /// byte) and the total number that have been read by the application.
  /// It therefore provides a measure of how quickly the application is
  /// consuming bytes from the server on this particular stream.
  external JSPromise getStats();
}
extension type WebTransportReceiveStreamStats._(JSObject _)
    implements JSObject {
  external factory WebTransportReceiveStreamStats({
    DOMHighResTimeStamp timestamp,
    int bytesReceived,
    int bytesRead,
  });

  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
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
