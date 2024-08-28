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

import 'dom.dart';
import 'html.dart';

typedef BinaryType = String;

/// The `WebSocket` object provides the API for creating and managing a
/// [WebSocket](https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_API)
/// connection to a server, as well as for sending and receiving data on the
/// connection.
///
/// To construct a `WebSocket`, use the
/// [`WebSocket()`](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/WebSocket)
/// constructor.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket).
extension type WebSocket._(JSObject _) implements EventTarget, JSObject {
  external factory WebSocket(
    String url, [
    JSAny protocols,
  ]);

  static const int CONNECTING = 0;

  static const int OPEN = 1;

  static const int CLOSING = 2;

  static const int CLOSED = 3;

  /// The **`WebSocket.close()`** method closes the
  /// [WebSocket] connection or connection attempt, if any. If the connection is
  /// already `CLOSED`, this method does nothing.
  ///
  /// > **Note:** The process of closing the connection begins with a
  /// > [closing handshake](https://www.rfc-editor.org/rfc/rfc6455.html#section-1.4),
  /// > and the `close()` method does not discard previously-sent messages
  /// > before starting that closing handshake; even if the user agent is still
  /// > busy sending those messages, the handshake will only start after the
  /// > messages are sent.
  external void close([
    int code,
    String reason,
  ]);

  /// The **`WebSocket.send()`** method enqueues the specified data
  /// to be transmitted to the server over the WebSocket connection, increasing
  /// the value of
  /// `bufferedAmount` by the number of bytes needed to contain the data. If the
  /// data can't be sent (for example, because it needs to be buffered but the
  /// buffer is
  /// full), the socket is closed automatically.
  /// The browser will throw an exception if you call `send()` when the
  /// connection is in the `CONNECTING` state. If you call `send()` when the
  /// connection is in the `CLOSING` or `CLOSED` states, the browser will
  /// silently discard the data.
  external void send(JSAny data);

  /// The **`WebSocket.url`** read-only property returns the absolute
  /// URL of the [WebSocket] as resolved by the constructor.
  external String get url;

  /// The **`WebSocket.readyState`** read-only property returns the
  /// current state of the [WebSocket] connection.
  external int get readyState;

  /// The **`WebSocket.bufferedAmount`** read-only property returns
  /// the number of bytes of data that have been queued using calls to
  /// [`send()`](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/send)
  /// but
  /// not yet transmitted to the network. This value resets to zero once all
  /// queued data has
  /// been sent. This value does not reset to zero when the connection is
  /// closed; if you keep
  /// calling
  /// [`send()`](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket/send),
  /// this will continue to climb.
  external int get bufferedAmount;
  external EventHandler get onopen;
  external set onopen(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);

  /// The **`WebSocket.extensions`** read-only property returns the
  /// extensions selected by the server. This is currently only the empty string
  /// or a list of
  /// extensions as negotiated by the connection.
  external String get extensions;

  /// The **`WebSocket.protocol`** read-only property returns the
  /// name of the sub-protocol the server selected; this will be one of the
  /// strings specified
  /// in the `protocols` parameter when creating the [WebSocket]
  /// object, or the empty string if no connection is established.
  external String get protocol;
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);

  /// The **`WebSocket.binaryType`** property controls the type of
  /// binary data being received over the WebSocket connection.
  external BinaryType get binaryType;
  external set binaryType(BinaryType value);
}

/// A `CloseEvent` is sent to clients using  when the connection is closed. This
/// is delivered to the listener indicated by the `WebSocket` object's `onclose`
/// attribute.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent).
extension type CloseEvent._(JSObject _) implements Event, JSObject {
  external factory CloseEvent(
    String type, [
    CloseEventInit eventInitDict,
  ]);

  /// The **`wasClean`** read-only property of the [CloseEvent] interface
  /// returns `true` if the connection closed cleanly.
  external bool get wasClean;

  /// The **`code`** read-only property of the [CloseEvent] interface returns a
  /// [WebSocket connection close code](https://www.rfc-editor.org/rfc/rfc6455.html#section-7.1.5)
  /// indicating the reason the server gave for closing the connection.
  external int get code;

  /// The **`reason`** read-only property of the [CloseEvent] interface returns
  /// the
  /// [WebSocket connection close reason](https://www.rfc-editor.org/rfc/rfc6455.html#section-7.1.6)
  /// the server gave for closing the connection; that is, a concise
  /// human-readable prose explanation for the closure.
  external String get reason;
}
extension type CloseEventInit._(JSObject _) implements EventInit, JSObject {
  external factory CloseEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    bool wasClean,
    int code,
    String reason,
  });

  external bool get wasClean;
  external set wasClean(bool value);
  external int get code;
  external set code(int value);
  external String get reason;
  external set reason(String value);
}
