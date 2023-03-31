// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';

typedef BinaryType = JSString;

@JS('WebSocket')
@staticInterop
class WebSocket implements EventTarget {
  external factory WebSocket(
    JSString url, [
    JSAny protocols,
  ]);

  external static JSNumber get CONNECTING;
  external static JSNumber get OPEN;
  external static JSNumber get CLOSING;
  external static JSNumber get CLOSED;
}

extension WebSocketExtension on WebSocket {
  external JSVoid close([
    JSNumber code,
    JSString reason,
  ]);
  external JSVoid send(JSAny data);
  external JSString get url;
  external JSNumber get readyState;
  external JSNumber get bufferedAmount;
  external set onopen(EventHandler value);
  external EventHandler get onopen;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
  external JSString get extensions;
  external JSString get protocol;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set binaryType(BinaryType value);
  external BinaryType get binaryType;
}

@JS('CloseEvent')
@staticInterop
class CloseEvent implements Event {
  external factory CloseEvent(
    JSString type, [
    CloseEventInit eventInitDict,
  ]);
}

extension CloseEventExtension on CloseEvent {
  external JSBoolean get wasClean;
  external JSNumber get code;
  external JSString get reason;
}

@JS()
@staticInterop
@anonymous
class CloseEventInit implements EventInit {
  external factory CloseEventInit({
    JSBoolean wasClean,
    JSNumber code,
    JSString reason,
  });
}

extension CloseEventInitExtension on CloseEventInit {
  external set wasClean(JSBoolean value);
  external JSBoolean get wasClean;
  external set code(JSNumber value);
  external JSNumber get code;
  external set reason(JSString value);
  external JSString get reason;
}
