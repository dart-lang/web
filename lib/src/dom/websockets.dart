// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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
/// [`WebSocket()`](/en-US/docs/Web/API/WebSocket/WebSocket) constructor.
extension type WebSocket._(JSObject _) implements EventTarget, JSObject {
  external factory WebSocket(
    String url, [
    JSAny protocols,
  ]);

  external static int get CONNECTING;
  external static int get OPEN;
  external static int get CLOSING;
  external static int get CLOSED;

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
  external String get url;
  external int get readyState;
  external int get bufferedAmount;
  external set onopen(EventHandler value);
  external EventHandler get onopen;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
  external String get extensions;
  external String get protocol;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set binaryType(BinaryType value);
  external BinaryType get binaryType;
}

/// A `CloseEvent` is sent to clients using  when the connection is closed. This
/// is delivered to the listener indicated by the `WebSocket` object's `onclose`
/// attribute.
extension type CloseEvent._(JSObject _) implements Event, JSObject {
  external factory CloseEvent(
    String type, [
    CloseEventInit eventInitDict,
  ]);

  external bool get wasClean;
  external int get code;
  external String get reason;
}
extension type CloseEventInit._(JSObject _) implements EventInit, JSObject {
  external factory CloseEventInit({
    bool wasClean,
    int code,
    String reason,
  });

  external set wasClean(bool value);
  external bool get wasClean;
  external set code(int value);
  external int get code;
  external set reason(String value);
  external String get reason;
}
