// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'uievents.dart';

typedef SpatialNavigationDirection = String;
typedef FocusableAreaSearchMode = String;
extension type FocusableAreasOption._(JSObject _) implements JSObject {
  external factory FocusableAreasOption({FocusableAreaSearchMode mode});

  external set mode(FocusableAreaSearchMode value);
  external FocusableAreaSearchMode get mode;
}
extension type SpatialNavigationSearchOptions._(JSObject _)
    implements JSObject {
  external factory SpatialNavigationSearchOptions({
    JSArray? candidates,
    Node? container,
  });

  external set candidates(JSArray? value);
  external JSArray? get candidates;
  external set container(Node? value);
  external Node? get container;
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
    SpatialNavigationDirection dir,
    EventTarget? relatedTarget,
  });

  external set dir(SpatialNavigationDirection value);
  external SpatialNavigationDirection get dir;
  external set relatedTarget(EventTarget? value);
  external EventTarget? get relatedTarget;
}
