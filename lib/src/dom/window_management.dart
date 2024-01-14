// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'cssom_view.dart';
import 'dom.dart';
import 'html.dart';

/// The **`ScreenDetails`** interface of the
/// [Window Management API](https://developer.mozilla.org/en-US/docs/Web/API/Window_Management_API)
/// represents the details of all the screens available to the user's device.
///
/// This information is accessed via the [Window.getScreenDetails] method.
///
/// > **Note:** `ScreenDetails` is a live object, meaning that it updates as the
/// > available screens change. You can therefore keep querying the same object
/// > to get updated values, rather than repeatedly calling
/// > `getScreenDetails()`.
@JS('ScreenDetails')
@staticInterop
class ScreenDetails implements EventTarget {}

extension ScreenDetailsExtension on ScreenDetails {
  external JSArray get screens;
  external ScreenDetailed get currentScreen;
  external set onscreenschange(EventHandler value);
  external EventHandler get onscreenschange;
  external set oncurrentscreenchange(EventHandler value);
  external EventHandler get oncurrentscreenchange;
}

/// The **`ScreenDetailed`** interface of the
/// [Window Management API](https://developer.mozilla.org/en-US/docs/Web/API/Window_Management_API)
/// represents detailed information about one specific screen available to the
/// user's device.
///
/// `ScreenDetailed` objects can be accessed via the [ScreenDetails.screens] and
/// [ScreenDetails.currentScreen] properties.
@JS('ScreenDetailed')
@staticInterop
class ScreenDetailed implements Screen {}

extension ScreenDetailedExtension on ScreenDetailed {
  external int get availLeft;
  external int get availTop;
  external int get left;
  external int get top;
  external bool get isPrimary;
  external bool get isInternal;
  external num get devicePixelRatio;
  external String get label;
}
