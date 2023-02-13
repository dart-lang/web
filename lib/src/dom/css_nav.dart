// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef SpatialNavigationDirection = JSString;
typedef FocusableAreaSearchMode = JSString;

@JS('FocusableAreasOption')
@staticInterop
class FocusableAreasOption {
  external factory FocusableAreasOption();
}

extension FocusableAreasOptionExtension on FocusableAreasOption {
  // TODO
}

@JS('SpatialNavigationSearchOptions')
@staticInterop
class SpatialNavigationSearchOptions {
  external factory SpatialNavigationSearchOptions();
}

extension SpatialNavigationSearchOptionsExtension
    on SpatialNavigationSearchOptions {
  // TODO
  // TODO
}

@JS('NavigationEvent')
@staticInterop
class NavigationEvent extends UIEvent {
  external factory NavigationEvent();
  external factory NavigationEvent.a1(JSString type);
  external factory NavigationEvent.a1_1(
      JSString type, NavigationEventInit eventInitDict);
}

extension NavigationEventExtension on NavigationEvent {
  external SpatialNavigationDirection get dir;
  external EventTarget? get relatedTarget;
}

@JS('NavigationEventInit')
@staticInterop
class NavigationEventInit extends UIEventInit {
  external factory NavigationEventInit();
}

extension NavigationEventInitExtension on NavigationEventInit {
  // TODO
  // TODO
}
