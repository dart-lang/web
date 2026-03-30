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
import 'input_device_capabilities.dart';
import 'uievents.dart';

typedef SpatialNavigationDirection = String;
typedef FocusableAreaSearchMode = String;
extension type FocusableAreasOption._(JSObject _) implements JSObject {
  external factory FocusableAreasOption({FocusableAreaSearchMode mode});

  external FocusableAreaSearchMode get mode;
  external set mode(FocusableAreaSearchMode value);
}
extension type SpatialNavigationSearchOptions._(JSObject _)
    implements JSObject {
  external factory SpatialNavigationSearchOptions({
    JSArray<Node>? candidates,
    Node? container,
  });

  external JSArray<Node>? get candidates;
  external set candidates(JSArray<Node>? value);
  external Node? get container;
  external set container(Node? value);
}
extension type NavigationEvent._(JSObject _) implements UIEvent, JSObject {
  external factory NavigationEvent(
    String type, [
    NavigationEventInit eventInitDict,
  ]);

  external SpatialNavigationDirection get dir;
  external EventTarget? get relatedTarget;
}
extension type NavigationEventInit._(JSObject _)
    implements UIEventInit, JSObject {
  external factory NavigationEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    Window? view,
    int detail,
    InputDeviceCapabilities? sourceCapabilities,
    int which,
    SpatialNavigationDirection dir,
    EventTarget? relatedTarget,
  });

  external SpatialNavigationDirection get dir;
  external set dir(SpatialNavigationDirection value);
  external EventTarget? get relatedTarget;
  external set relatedTarget(EventTarget? value);
}
