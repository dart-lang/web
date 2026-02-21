// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

extension type HTMLPortalElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLPortalElement] using the tag 'portal'.
  HTMLPortalElement() : _ = document.createElement('portal');

  external JSPromise<JSAny?> activate([PortalActivateOptions options]);
  external void postMessage(
    JSAny? message, [
    StructuredSerializeOptions options,
  ]);
  external String get src;
  external set src(String value);
  external String get referrerPolicy;
  external set referrerPolicy(String value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}
extension type PortalActivateOptions._(JSObject _)
    implements StructuredSerializeOptions, JSObject {
  external factory PortalActivateOptions({
    JSArray<JSObject> transfer,
    JSAny? data,
  });

  external JSAny? get data;
  external set data(JSAny? value);
}
extension type PortalHost._(JSObject _) implements EventTarget, JSObject {
  external void postMessage(
    JSAny? message, [
    StructuredSerializeOptions options,
  ]);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
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
  external factory PortalActivateEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    JSAny? data,
  });

  external JSAny? get data;
  external set data(JSAny? value);
}
