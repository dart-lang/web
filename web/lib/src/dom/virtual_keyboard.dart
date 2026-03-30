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
import 'geometry.dart';
import 'html.dart';

/// The **`VirtualKeyboard`** interface of the
/// [VirtualKeyboard API](https://developer.mozilla.org/en-US/docs/Web/API/VirtualKeyboard_API)
/// is useful on devices that have on-screen virtual keyboards, such as tablets,
/// mobile phones, or other devices where a hardware keyboard may not be
/// available.
///
/// The `VirtualKeyboard` interface makes it possible to opt out of the
/// automatic way browsers handle on-screen virtual keyboards by reducing the
/// height of the viewport to make room for the virtual keyboard. You can
/// prevent the browser from changing the size of the viewport, detect the
/// position and size of the virtual keyboard — adapting the layout of your web
/// page as a follow-up — and programmatically show or hide the virtual
/// keyboard.
///
/// You access the `VirtualKeyboard` interface by using
/// [navigator.virtualKeyboard].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/VirtualKeyboard).
extension type VirtualKeyboard._(JSObject _) implements EventTarget, JSObject {
  /// The **`show()`** method of the [VirtualKeyboard] interface
  /// programmatically shows the on-screen virtual keyboard. This is useful when
  /// the page needs to implement its own virtual keyboard logic, especially
  /// when using the `virtualkeyboardpolicy` attribute on `contenteditable`
  /// elements as explained in
  /// [Control the virtual keyboard on `contenteditable` elements](https://developer.mozilla.org/en-US/docs/Web/API/VirtualKeyboard_API#control_the_virtual_keyboard_on_contenteditable_elements).
  ///
  /// This method only works if the currently-focused element is a form control
  /// — such as an `input` or `textarea` element — or if the focused element is
  /// [`contenteditable`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/contenteditable),
  /// and the currently-focused element's
  /// [`virtualKeyboardPolicy`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/virtualkeyboardpolicy)
  /// attribute is set to `manual` and
  /// [`inputmode`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/inputmode)
  /// isn't set to `none`.
  ///
  /// The `show()` method always returns `undefined` and triggers a
  /// [VirtualKeyboard.geometrychange_event] event.
  external void show();

  /// The **`hide()`** method of the [VirtualKeyboard] interface
  /// programmatically hides the on-screen virtual keyboard. This is useful when
  /// the page needs to implement its own virtual keyboard logic by using the
  /// [VirtualKeyboard_API].
  ///
  /// This method only works if the currently-focused element's
  /// [`virtualKeyboardPolicy`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/virtualkeyboardpolicy)
  /// attribute is set to `manual` and
  /// [`inputmode`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/inputmode)
  /// isn't set to `none`.
  ///
  /// The `hide()` method always returns `undefined` and triggers a
  /// [VirtualKeyboard.geometrychange_event] event.
  external void hide();

  /// The **`boundingRect`** property of the [VirtualKeyboard] interface
  /// contains a [DOMRect] indicating the position and size of the on-screen
  /// virtual keyboard that overlays the web page.
  ///
  /// The on-screen virtual keyboard will overlay the viewport when the
  /// [VirtualKeyboard_API] is used to prevent the browser from resizing the
  /// viewport automatically. This is done by setting the
  /// [VirtualKeyboard.overlaysContent] property to `true`.
  external DOMRect get boundingRect;

  /// The **`overlaysContent`** property of the VirtualKeyboard interface can be
  /// used to opt out of the automatic way in which browsers handle on-screen
  /// virtual keyboards by reducing the size of the viewport to make space for
  /// them.
  ///
  /// If the `overlaysContent` property is set to `true`, the browser no longer
  /// resizes the viewport when the virtual keyboard appears. The virtual
  /// keyboard instead overlays the content of the web page, and you can adapt
  /// the page layout as appropriate using the [VirtualKeyboard_API] and your
  /// own custom CSS and JavaScript.
  external bool get overlaysContent;
  external set overlaysContent(bool value);
  external EventHandler get ongeometrychange;
  external set ongeometrychange(EventHandler value);
}
