// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

extension type HTMLPortalElement._(JSObject _)
    implements HTMLElement, JSObject {
  external factory HTMLPortalElement();

  external JSPromise<JSAny?> activate([PortalActivateOptions options]);
  external void postMessage(
    JSAny? message, [
    StructuredSerializeOptions options,
  ]);
  external set src(String value);
  external String get src;
  external set referrerPolicy(String value);
  external String get referrerPolicy;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
}
extension type PortalActivateOptions._(JSObject _)
    implements StructuredSerializeOptions, JSObject {
  external factory PortalActivateOptions({JSAny? data});

  external set data(JSAny? value);
  external JSAny? get data;
}
extension type PortalHost._(JSObject _) implements EventTarget, JSObject {
  external void postMessage(
    JSAny? message, [
    StructuredSerializeOptions options,
  ]);
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
}
extension type PortalActivateEvent._(JSObject _) implements Event, JSObject {
  external factory PortalActivateEvent(
    String type, [
    PortalActivateEventInit eventInitDict,
  ]);

  external HTMLPortalElement adoptPredecessor();
  external JSAny? get data;
}
extension type PortalActivateEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PortalActivateEventInit({JSAny? data});

  external set data(JSAny? value);
  external JSAny? get data;
}
