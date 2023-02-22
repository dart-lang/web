// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'uievents.dart';

typedef SpatialNavigationDirection = JSString;
typedef FocusableAreaSearchMode = JSString;

@JS()
@staticInterop
@anonymous
class FocusableAreasOption {
  external factory FocusableAreasOption({FocusableAreaSearchMode mode});
}

extension FocusableAreasOptionExtension on FocusableAreasOption {
  external set mode(FocusableAreaSearchMode value);
  external FocusableAreaSearchMode get mode;
}

@JS()
@staticInterop
@anonymous
class SpatialNavigationSearchOptions {
  external factory SpatialNavigationSearchOptions({
    JSArray? candidates,
    Node? container,
  });
}

extension SpatialNavigationSearchOptionsExtension
    on SpatialNavigationSearchOptions {
  external set candidates(JSArray? value);
  external JSArray? get candidates;
  external set container(Node? value);
  external Node? get container;
}

@JS('NavigationEvent')
@staticInterop
class NavigationEvent extends UIEvent {
  external factory NavigationEvent();

  external factory NavigationEvent.a1(JSString type);

  external factory NavigationEvent.a2(
    JSString type,
    NavigationEventInit eventInitDict,
  );
}

extension NavigationEventExtension on NavigationEvent {
  external SpatialNavigationDirection get dir;
  external EventTarget? get relatedTarget;
}

@JS()
@staticInterop
@anonymous
class NavigationEventInit extends UIEventInit {
  external factory NavigationEventInit({
    SpatialNavigationDirection dir,
    EventTarget? relatedTarget,
  });
}

extension NavigationEventInitExtension on NavigationEventInit {
  external set dir(SpatialNavigationDirection value);
  external SpatialNavigationDirection get dir;
  external set relatedTarget(EventTarget? value);
  external EventTarget? get relatedTarget;
}
