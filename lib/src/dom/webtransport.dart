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

/// The **`WebTransportDatagramDuplexStream`** interface of the
/// [WebTransport API] represents a duplex stream that can be used for
/// unreliable transport of datagrams between client and server. Provides access
/// to a [ReadableStream] for reading incoming datagrams, a [WritableStream] for
/// writing outgoing datagrams, and various settings and statistics related to
/// the stream.
///
/// This is accessed via the [WebTransport.datagrams] property.
///
/// "Unreliable" means that transmission of data is not guaranteed, nor is
/// arrival in a specific order. This is fine in some situations and provides
/// very fast delivery. For example, you might want to transmit regular game
/// state updates where each message supersedes the last one that arrives, and
/// order is not important.
@JS('WebTransportDatagramDuplexStream')
@staticInterop
class WebTransportDatagramDuplexStream {}

extension WebTransportDatagramDuplexStreamExtension
    on WebTransportDatagramDuplexStream {
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

/// The **`WebTransport`** interface of the [WebTransport API] provides
/// functionality to enable a user agent to connect to an HTTP/3 server,
/// initiate reliable and unreliable transport in either or both directions, and
/// close the connection once it is no longer needed.
@JS('WebTransport')
@staticInterop
class WebTransport {
  external factory WebTransport(
    String url, [
    WebTransportOptions options,
  ]);
}

extension WebTransportExtension on WebTransport {
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

@JS()
@staticInterop
@anonymous
class WebTransportHash {
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
class WebTransportOptions {
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
class WebTransportCloseInfo {
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
class WebTransportSendStreamOptions {
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
class WebTransportConnectionStats {
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
}

extension WebTransportConnectionStatsExtension on WebTransportConnectionStats {
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

@JS()
@staticInterop
@anonymous
class WebTransportDatagramStats {
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

/// The `WebTransportSendStream` interface of the [WebTransport API] is a
/// specialized [WritableStream] that is used to send outbound data in both
/// unidirectional or bidirectional [WebTransport] streams.
///
/// The send stream is a
/// [writable stream](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API/Using_writable_streams)
/// of
/// [`Uint8Array`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint8Array),
/// that can be written to in order to send data to a server.
/// It additionally provides streaming features such as setting the send order,
/// and getting stream statistics.
///
/// Objects of this type are not constructed directly.
/// When creating a unidirectional stream the
/// [WebTransport.createUnidirectionalStream] returns an object of this type for
/// sending data.
/// When creating a bidirectional stream using
/// [WebTransport.createBidirectionalStream], the method returns a
/// [WebTransportBidirectionalStream], and the send stream object can be
/// obtained from its [WebTransportBidirectionalStream.writable] property.
/// When a bidirectional stream is initiated by the remote end, an object of
/// this type can similarly be obtained using
/// [WebTransport.incomingBidirectionalStreams].
///
/// `WebTransportSendStream` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
@JS('WebTransportSendStream')
@staticInterop
class WebTransportSendStream implements WritableStream {}

extension WebTransportSendStreamExtension on WebTransportSendStream {
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

@JS()
@staticInterop
@anonymous
class WebTransportSendStreamStats {
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

/// The `WebTransportReceiveStream` interface of the [WebTransport API] is a
/// [ReadableStream] that can be used to read from an incoming unidirectional or
/// bidirectional [WebTransport] stream.
///
/// The stream is a
/// [readable byte stream](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API/Using_readable_byte_streams)
/// of
/// [`Uint8Array`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint8Array),
/// and can be consumed using either a BYOB reader
/// ([`ReadableStreamBYOBReader`](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader))
/// or the default reader
/// ([`ReadableStreamDefaultReader`](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader)).
///
/// Objects of this type are not constructed directly.
/// Instead they are obtained using the
/// [`WebTransport.incomingUnidirectionalStream`](/en-US/docs/Web/API/WebTransport/incomingUnidirectionalStreams)
/// property.
///
/// `WebTransportReceiveStream` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
@JS('WebTransportReceiveStream')
@staticInterop
class WebTransportReceiveStream implements ReadableStream {}

extension WebTransportReceiveStreamExtension on WebTransportReceiveStream {
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

@JS()
@staticInterop
@anonymous
class WebTransportReceiveStreamStats {
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

/// The **`WebTransportBidirectionalStream`** interface of the
/// [WebTransport API] represents a bidirectional stream created by a server or
/// a client that can be used for reliable transport. Provides access to a
/// [WebTransportReceiveStream] for reading incoming data, and a
/// [WebTransportSendStream] for writing outgoing data.
@JS('WebTransportBidirectionalStream')
@staticInterop
class WebTransportBidirectionalStream {}

extension WebTransportBidirectionalStreamExtension
    on WebTransportBidirectionalStream {
  external WebTransportReceiveStream get readable;
  external WebTransportSendStream get writable;
}

/// The **`WebTransportError`** interface of the [WebTransport API] represents
/// an error related to the API, which can arise from server errors, network
/// connection problems, or client-initiated abort operations (for example,
/// arising from a [WritableStream.abort] call).
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
class WebTransportErrorOptions {
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
