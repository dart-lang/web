// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef BinaryType = JSString;

@JS('WebSocket')
@staticInterop
class WebSocket extends EventTarget {
  external factory WebSocket();
  external factory WebSocket.a1(JSString url);
  external factory WebSocket.a1_1(JSString url, JSAny protocols);
  external static JSNumber get CONNECTING;
  external static JSNumber get OPEN;
  external static JSNumber get CLOSING;
  external static JSNumber get CLOSED;
}

extension WebSocketExtension on WebSocket {
  external JSString get url;
  external JSNumber get readyState;
  external JSNumber get bufferedAmount;
  external EventHandler get onopen;
  external set onopen(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external JSString get extensions;
  external JSString get protocol;
  external JSUndefined close();
  external JSUndefined close_1(JSNumber code);
  external JSUndefined close_2(JSNumber code, JSString reason);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external BinaryType get binaryType;
  external set binaryType(BinaryType value);
  external JSUndefined send(JSAny data);
}

@JS('CloseEvent')
@staticInterop
class CloseEvent extends Event {
  external factory CloseEvent();
  external factory CloseEvent.a1(JSString type);
  external factory CloseEvent.a1_1(JSString type, CloseEventInit eventInitDict);
}

extension CloseEventExtension on CloseEvent {
  external JSBoolean get wasClean;
  external JSNumber get code;
  external JSString get reason;
}

@JS('CloseEventInit')
@staticInterop
class CloseEventInit extends EventInit {
  external factory CloseEventInit();
}

extension CloseEventInitExtension on CloseEventInit {
  // TODO
  // TODO
  // TODO
}
