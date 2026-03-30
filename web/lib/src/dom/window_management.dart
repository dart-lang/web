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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ScreenDetails).
extension type ScreenDetails._(JSObject _) implements EventTarget, JSObject {
  /// The **`screens`** read-only property of the
  /// [ScreenDetails] interface contains an array of [ScreenDetailed] objects,
  /// each one representing detailed information about one specific screen
  /// available to the user's device.
  external JSArray<ScreenDetailed> get screens;

  /// The **`currentScreen`** read-only property of the
  /// [ScreenDetails] interface contains a single [ScreenDetailed] object
  /// representing detailed information about the screen that the current
  /// browser window is displayed in.
  external ScreenDetailed get currentScreen;
  external EventHandler get onscreenschange;
  external set onscreenschange(EventHandler value);
  external EventHandler get oncurrentscreenchange;
  external set oncurrentscreenchange(EventHandler value);
}

/// The **`ScreenDetailed`** interface of the
/// [Window Management API](https://developer.mozilla.org/en-US/docs/Web/API/Window_Management_API)
/// represents detailed information about one specific screen available to the
/// user's device.
///
/// `ScreenDetailed` objects can be accessed via the [ScreenDetails.screens] and
/// [ScreenDetails.currentScreen] properties.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ScreenDetailed).
extension type ScreenDetailed._(JSObject _) implements Screen, JSObject {
  /// The **`availLeft`** read-only property of the
  /// [ScreenDetailed] interface is a number representing the x-coordinate
  /// (left-hand edge) of the available screen area inside the OS virtual screen
  /// arrangement, relative to the
  /// [multi-screen origin](https://developer.mozilla.org/en-US/docs/Web/API/Window_Management_API/Multi-screen_origin).
  ///
  /// This is equal to the [ScreenDetailed.left] property, plus the width of any
  /// OS UI element drawn on the left of the screen. Windows cannot be placed in
  /// those areas, so `availLeft` is useful for giving you the left boundary of
  /// the actual area available to open or place windows.
  ///
  /// > [!NOTE]
  /// > A non-standard implementation of the `availLeft` property is available
  /// > on the `Screen` interface in all browsers. See the
  /// > [Non-standard example](#non-standard_example) below for usage details,
  /// > and see the
  /// > [`Screen`](https://developer.mozilla.org/en-US/docs/Web/API/Screen#browser_compatibility)
  /// > reference page for browser support information relating to the
  /// > non-standard implementation.
  external int get availLeft;

  /// The **`availTop`** read-only property of the
  /// [ScreenDetailed] interface is a number representing the y-coordinate (top
  /// edge) of the available screen area inside the OS virtual screen
  /// arrangement, relative to the
  /// [multi-screen origin](https://developer.mozilla.org/en-US/docs/Web/API/Window_Management_API/Multi-screen_origin).
  ///
  /// This is equal to the [ScreenDetailed.top] property, plus the height of any
  /// OS UI element drawn at the top of the screen. Windows cannot be placed in
  /// those areas, so `availTop` is useful for giving you the top boundary of
  /// the actual area available to open or place windows.
  ///
  /// > [!NOTE]
  /// > A non-standard implementation of the `availTop` property is available on
  /// > the `Screen` interface in all browsers. See the
  /// > [Non-standard example](#non-standard_example) below for usage details,
  /// > and see the
  /// > [`Screen`](https://developer.mozilla.org/en-US/docs/Web/API/Screen#browser_compatibility)
  /// > reference page for browser support information relating to the
  /// > non-standard implementation.
  external int get availTop;

  /// The **`left`** read-only property of the
  /// [ScreenDetailed] interface is a number representing the x-coordinate
  /// (left-hand edge) of the total screen area inside the OS virtual screen
  /// arrangement, relative to the
  /// [multi-screen origin](https://developer.mozilla.org/en-US/docs/Web/API/Window_Management_API/Multi-screen_origin).
  ///
  /// This is equal to the true left-hand edge, ignoring any OS UI element drawn
  /// at the left of the screen. Windows cannot be placed in those areas; to get
  /// the left-hand coordinate of the screen area that windows can be placed in,
  /// use [ScreenDetailed.availLeft].
  ///
  /// > [!NOTE]
  /// > In Firefox, a non-standard implementation of the `left` property is
  /// > available on the `Screen` interface. See the
  /// > [Non-standard example](#non-standard_example) below for usage details,
  /// > and see the
  /// > [`Screen`](https://developer.mozilla.org/en-US/docs/Web/API/Screen#browser_compatibility)
  /// > reference page for browser support information relating to the
  /// > non-standard implementation.
  external int get left;

  /// The **`top`** read-only property of the
  /// [ScreenDetailed] interface is a number representing the y-coordinate (top
  /// edge) of the total screen area inside the OS virtual screen arrangement,
  /// relative to the
  /// [multi-screen origin](https://developer.mozilla.org/en-US/docs/Web/API/Window_Management_API/Multi-screen_origin).
  ///
  /// This is equal to the true top edge, ignoring any OS UI element drawn at
  /// the top of the screen. Windows cannot be placed in those areas; to get the
  /// top coordinate of the screen area that windows can be placed in, use
  /// [ScreenDetailed.availTop].
  ///
  /// > [!NOTE]
  /// > In Firefox, a non-standard implementation of the `top` property is
  /// > available on the `Screen` interface. See the
  /// > [Non-standard example](#non-standard_example) below for usage details,
  /// > and see the
  /// > [`Screen`](https://developer.mozilla.org/en-US/docs/Web/API/Screen#browser_compatibility)
  /// > reference page for browser support information relating to the
  /// > non-standard implementation.
  external int get top;

  /// The **`isPrimary`** read-only property of the
  /// [ScreenDetailed] interface is a boolean indicating whether the screen is
  /// set as the operating system (OS) primary screen or not.
  ///
  /// The OS hosting the browser will have one primary screen, and one or more
  /// secondary screens. The primary screen can usually be specified by the user
  /// via OS settings, and generally contains OS UI features such as the
  /// taskbar/icon dock. The primary screen may change for a number of reasons,
  /// such as a screen being unplugged.
  external bool get isPrimary;

  /// The **`isInternal`** read-only property of the
  /// [ScreenDetailed] interface is a boolean indicating whether the screen is
  /// internal to the device or external. External devices are generally
  /// manufactured separately from the device they are attached to and can be
  /// connected and disconnected as needed, whereas internal screens are part of
  /// the device and not intended to be disconnected.
  external bool get isInternal;

  /// The **`devicePixelRatio`** read-only property of the
  /// [ScreenDetailed] interface is a number representing the screen's  ratio.
  ///
  /// This is the same as the value returned by [Window.devicePixelRatio],
  /// except that `Window.devicePixelRatio`:
  ///
  /// - always returns the device pixel ratio for the
  ///   [ScreenDetails.currentScreen].
  /// - also includes scaling of the window itself, i.e. page zoom (at least on
  ///   some browser implementations).
  external double get devicePixelRatio;

  /// The **`label`** read-only property of the
  /// [ScreenDetailed] interface is a string providing a descriptive label for
  /// the screen, for example "Built-in Retina Display".
  ///
  /// This is useful for constructing a list of options to display to the user
  /// if you want them to choose a screen to display content on.
  external String get label;
}
