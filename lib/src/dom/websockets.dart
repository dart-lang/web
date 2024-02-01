// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef BinaryType = String;
extension type WebSocket._(JSObject _) implements EventTarget, JSObject {
  external factory WebSocket(
    String url, [
    JSAny protocols,
  ]);

  external static int get CONNECTING;
  external static int get OPEN;
  external static int get CLOSING;
  external static int get CLOSED;
  external void close([
    int code,
    String reason,
  ]);
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
