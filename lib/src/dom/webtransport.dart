// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'streams.dart';
import 'webidl.dart';

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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebTransportDatagramDuplexStream).
extension type WebTransportDatagramDuplexStream._(JSObject _)
    implements JSObject {
  /// The **`readable`** read-only property of the
  /// [WebTransportDatagramDuplexStream] interface returns a [ReadableStream]
  /// instance that can be used to unreliably read incoming datagrams from the
  /// stream.
  ///
  /// "Unreliably" means that transmission of data is not guaranteed, nor is
  /// arrival in a specific order. This is fine in some situations and provides
  /// very fast delivery. For example, you might want to transmit regular game
  /// state updates where each message supersedes the last one that arrives, and
  /// order is not important.
  external ReadableStream get readable;

  /// The **`writable`** read-only property of the
  /// [WebTransportDatagramDuplexStream] interface returns a [WritableStream]
  /// instance that can be used to unreliably write outgoing datagrams to the
  /// stream.
  ///
  /// "Unreliably" means that transmission of data is not guaranteed, nor is
  /// arrival in a specific order. This is fine in some situations and provides
  /// very fast delivery. For example, you might want to transmit regular game
  /// state updates where each message supersedes the last one that arrives, and
  /// order is not important.
  external WritableStream get writable;

  /// The **`maxDatagramSize`** read-only property of the
  /// [WebTransportDatagramDuplexStream] interface returns the maximum allowable
  /// size of outgoing datagrams, in bytes, that can be written to
  /// [WebTransportDatagramDuplexStream.writable].
  external int get maxDatagramSize;

  /// The **`incomingMaxAge`** property of the
  /// [WebTransportDatagramDuplexStream] interface gets or sets the maximum age
  /// for incoming datagrams, in milliseconds.
  external double? get incomingMaxAge;
  external set incomingMaxAge(num? value);

  /// The **`outgoingMaxAge`** property of the
  /// [WebTransportDatagramDuplexStream] interface gets or sets the maximum age
  /// for outgoing datagrams, in milliseconds.
  external double? get outgoingMaxAge;
  external set outgoingMaxAge(num? value);

  /// The **`incomingHighWaterMark`** property of the
  /// [WebTransportDatagramDuplexStream] interface gets or sets the high water
  /// mark for incoming chunks of data — this is the maximum size, in chunks,
  /// that the incoming [ReadableStream]'s internal queue can reach before it is
  /// considered full. See
  /// [Internal queues and queuing strategies](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API/Concepts#internal_queues_and_queuing_strategies)
  /// for more information.
  external double get incomingHighWaterMark;
  external set incomingHighWaterMark(num value);

  /// The **`outgoingHighWaterMark`** property of the
  /// [WebTransportDatagramDuplexStream] interface gets or sets the high water
  /// mark for outgoing chunks of data — this is the maximum size, in chunks,
  /// that the outgoing [WritableStream]'s internal queue can reach before it is
  /// considered full. See
  /// [Internal queues and queuing strategies](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API/Concepts#internal_queues_and_queuing_strategies)
  /// for more information.
  external double get outgoingHighWaterMark;
  external set outgoingHighWaterMark(num value);
}

/// The **`WebTransport`** interface of the [WebTransport API] provides
/// functionality to enable a user agent to connect to an HTTP/3 server,
/// initiate reliable and unreliable transport in either or both directions, and
/// close the connection once it is no longer needed.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebTransport).
extension type WebTransport._(JSObject _) implements JSObject {
  external factory WebTransport(
    String url, [
    WebTransportOptions options,
  ]);

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
  external JSPromise<WebTransportBidirectionalStream> createBidirectionalStream(
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
  external JSPromise<JSObject> createUnidirectionalStream(
      [WebTransportSendStreamOptions options]);

  /// The **`ready`** read-only property of the [WebTransport] interface returns
  /// a promise that resolves when the transport is ready to use.
  external JSPromise<JSAny?> get ready;

  /// The **`closed`** read-only property of the [WebTransport] interface
  /// returns a promise that resolves when the transport is closed.
  external JSPromise<WebTransportCloseInfo> get closed;

  /// The **`datagrams`** read-only property of the [WebTransport] interface
  /// returns a [WebTransportDatagramDuplexStream] instance that can be used to
  /// send and receive datagrams — unreliable data transmission.
  ///
  /// "Unreliable" means that transmission of data is not guaranteed, nor is
  /// arrival in a specific order. This is fine in some situations and provides
  /// very fast delivery. For example, you might want to transmit regular game
  /// state updates where each message supersedes the last one that arrives, and
  /// order is not important.
  external WebTransportDatagramDuplexStream get datagrams;

  /// The **`incomingBidirectionalStreams`** read-only property of the
  /// [WebTransport] interface represents one or more bidirectional streams
  /// opened by the server. Returns a [ReadableStream] of
  /// [WebTransportBidirectionalStream] objects. Each one can be used to
  /// reliably read data from the server and write data back to it.
  ///
  /// "Reliable" means that transmission and order of data are guaranteed. This
  /// provides slower delivery (albeit faster than with WebSockets) than
  /// [WebTransport.datagrams], but is needed in situations where reliability
  /// and ordering are important, like chat applications.
  external ReadableStream get incomingBidirectionalStreams;

  /// The **`incomingUnidirectionalStreams`** read-only property of the
  /// [WebTransport] interface represents one or more unidirectional streams
  /// opened by the server. Returns a [ReadableStream] of
  /// [WebTransportReceiveStream] objects. Each one can be used to reliably read
  /// data from the server.
  ///
  /// "Reliable" means that transmission and order of data are guaranteed. This
  /// provides slower delivery (albeit faster than with WebSockets) than
  /// [WebTransport.datagrams], but is needed in situations where reliability
  /// and ordering are important, like chat applications.
  external ReadableStream get incomingUnidirectionalStreams;
}
extension type WebTransportHash._(JSObject _) implements JSObject {
  external factory WebTransportHash({
    String algorithm,
    BufferSource value,
  });

  external String get algorithm;
  external set algorithm(String value);
  external BufferSource get value;
  external set value(BufferSource value);
}
extension type WebTransportOptions._(JSObject _) implements JSObject {
  external factory WebTransportOptions({
    bool allowPooling,
    bool requireUnreliable,
    JSArray<WebTransportHash> serverCertificateHashes,
    WebTransportCongestionControl congestionControl,
    int? anticipatedConcurrentIncomingUnidirectionalStreams,
    int? anticipatedConcurrentIncomingBidirectionalStreams,
  });

  external bool get allowPooling;
  external set allowPooling(bool value);
  external bool get requireUnreliable;
  external set requireUnreliable(bool value);
  external JSArray<WebTransportHash> get serverCertificateHashes;
  external set serverCertificateHashes(JSArray<WebTransportHash> value);
  external WebTransportCongestionControl get congestionControl;
  external set congestionControl(WebTransportCongestionControl value);
  external int? get anticipatedConcurrentIncomingUnidirectionalStreams;
  external set anticipatedConcurrentIncomingUnidirectionalStreams(int? value);
  external int? get anticipatedConcurrentIncomingBidirectionalStreams;
  external set anticipatedConcurrentIncomingBidirectionalStreams(int? value);
}
extension type WebTransportCloseInfo._(JSObject _) implements JSObject {
  external factory WebTransportCloseInfo({
    int closeCode,
    String reason,
  });

  external int get closeCode;
  external set closeCode(int value);
  external String get reason;
  external set reason(String value);
}
extension type WebTransportSendStreamOptions._(JSObject _) implements JSObject {
  external factory WebTransportSendStreamOptions({
    JSObject? sendGroup,
    int sendOrder,
    bool waitUntilAvailable,
  });

  external JSObject? get sendGroup;
  external set sendGroup(JSObject? value);
  external int get sendOrder;
  external set sendOrder(int value);
  external bool get waitUntilAvailable;
  external set waitUntilAvailable(bool value);
}

/// The **`WebTransportBidirectionalStream`** interface of the
/// [WebTransport API] represents a bidirectional stream created by a server or
/// a client that can be used for reliable transport. Provides access to a
/// [WebTransportReceiveStream] for reading incoming data, and a
/// [WebTransportSendStream] for writing outgoing data.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebTransportBidirectionalStream).
extension type WebTransportBidirectionalStream._(JSObject _)
    implements JSObject {
  /// The **`readable`** read-only property of the
  /// [WebTransportBidirectionalStream] interface returns a
  /// [WebTransportReceiveStream] instance that can be used to reliably read
  /// incoming data.
  external JSObject get readable;

  /// The **`writable`** read-only property of the
  /// [WebTransportBidirectionalStream] interface returns a
  /// [WebTransportSendStream] instance that can be used to write outgoing data.
  external JSObject get writable;
}

/// The **`WebTransportError`** interface of the [WebTransport API] represents
/// an error related to the API, which can arise from server errors, network
/// connection problems, or client-initiated abort operations (for example,
/// arising from a [WritableStream.abort] call).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebTransportError).
extension type WebTransportError._(JSObject _)
    implements DOMException, JSObject {
  external factory WebTransportError([
    String message,
    WebTransportErrorOptions options,
  ]);

  /// The **`source`** read-only property of the [WebTransportError] interface
  /// returns an enumerated value indicating the source of the error.
  external WebTransportErrorSource get source;

  /// The **`streamErrorCode`** read-only property of the [WebTransportError]
  /// interface returns a number in the range 0-255 indicating the application
  /// protocol error code for this error, or `null` if one is not available.
  external int? get streamErrorCode;
}
extension type WebTransportErrorOptions._(JSObject _) implements JSObject {
  external factory WebTransportErrorOptions({
    WebTransportErrorSource source,
    int? streamErrorCode,
  });

  external WebTransportErrorSource get source;
  external set source(WebTransportErrorSource value);
  external int? get streamErrorCode;
  external set streamErrorCode(int? value);
}
