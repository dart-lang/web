// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef OrientationLockType = String;
typedef OrientationType = String;

/// The **`ScreenOrientation`** interface of the
/// [Screen Orientation API](https://developer.mozilla.org/en-US/docs/Web/API/Screen_Orientation_API)
/// provides information about the current orientation of the document.
///
/// A **`ScreenOrientation`** instance object can be retrieved using the
/// [screen.orientation] property.
extension type ScreenOrientation._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`lock()`** property of the [ScreenOrientation] interface locks the
  /// orientation of the containing document to the specified orientation.
  ///
  /// Typically orientation locking is only enabled on mobile devices, and when
  /// the browser context is full screen.
  /// If locking is supported, then it must work for all the parameter values
  /// listed below.
  external JSPromise<JSAny?> lock(OrientationLockType orientation);

  /// The **`unlock()`** property of the
  /// [ScreenOrientation] interface unlocks the orientation of the containing
  /// document from its default orientation.
  external void unlock();
  external OrientationType get type;
  external int get angle;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}
