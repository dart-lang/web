// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('HTMLPortalElement')
@staticInterop
class HTMLPortalElement extends HTMLElement {
  external factory HTMLPortalElement();
}

extension HTMLPortalElementExtension on HTMLPortalElement {
  external JSString get src;
  external set src(JSString value);
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external JSPromise activate();
  external JSPromise activate_1(PortalActivateOptions options);
  external JSUndefined postMessage(JSAny message);
  external JSUndefined postMessage_1(
      JSAny message, StructuredSerializeOptions options);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}

@JS('PortalActivateOptions')
@staticInterop
class PortalActivateOptions extends StructuredSerializeOptions {
  external factory PortalActivateOptions();
}

extension PortalActivateOptionsExtension on PortalActivateOptions {
  // TODO
}

@JS('PortalHost')
@staticInterop
class PortalHost extends EventTarget {
  external factory PortalHost();
}

extension PortalHostExtension on PortalHost {
  external JSUndefined postMessage(JSAny message);
  external JSUndefined postMessage_1(
      JSAny message, StructuredSerializeOptions options);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}

@JS('PortalActivateEvent')
@staticInterop
class PortalActivateEvent extends Event {
  external factory PortalActivateEvent();
  external factory PortalActivateEvent.a1(JSString type);
  external factory PortalActivateEvent.a1_1(
      JSString type, PortalActivateEventInit eventInitDict);
}

extension PortalActivateEventExtension on PortalActivateEvent {
  external JSAny get data;
  external HTMLPortalElement adoptPredecessor();
}

@JS('PortalActivateEventInit')
@staticInterop
class PortalActivateEventInit extends EventInit {
  external factory PortalActivateEventInit();
}

extension PortalActivateEventInitExtension on PortalActivateEventInit {
  // TODO
}
