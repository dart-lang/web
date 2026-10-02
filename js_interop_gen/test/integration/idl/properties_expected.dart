// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_ignore

@JS()
library;

import 'dart:js_interop';

extension type PropertyTest._(JSObject _) implements JSObject {
  static const bool DEBUG = false;

  external static int get testCount;
  external String operator [](JSAny indexOrName);
  external void operator []=(int index, String value);
  external String get title;
  external set title(String value);
  external int get createdAt;
  external String? get optionalName;
  external set optionalName(String? value);
  external JSArray<JSString> get tags;
  external set tags(JSArray<JSString> value);
  external JSUint8Array get binaryData;
  external set binaryData(JSUint8Array value);
  external JSAny? get flexibleValue;
  external set flexibleValue(JSAny? value);
  external String get testInfo;
  external set testInfo(String value);
}

/// The **`MouseEvent`** interface represents events that occur due to the user
/// interacting with a pointing device (such as a mouse).
/// Common events using this interface include [Element.click_event],
/// [Element.dblclick_event], [Element.mouseup_event],
/// [Element.mousedown_event].
///
/// `MouseEvent` derives from [UIEvent], which in turn derives from [Event].
/// Though the [MouseEvent.initMouseEvent] method is kept for backward
/// compatibility, creating of a `MouseEvent` object should be done using the
/// [MouseEvent.MouseEvent] constructor.
///
/// Several more specific events are based on `MouseEvent`, including
/// [WheelEvent], [DragEvent], and [PointerEvent].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent).
extension type MouseEvent._(JSObject _) implements JSObject {
  /// The **`screenX`** read-only property of the [MouseEvent] interface
  /// provides the horizontal coordinate (offset) of the mouse pointer in
  /// [screen coordinates](https://developer.mozilla.org/en-US/docs/Web/CSS/CSSOM_view/Coordinate_systems#screen).
  ///
  /// > [!NOTE]
  /// > In a multiscreen environment, screens aligned horizontally will be
  /// > treated as a single device, and so the range of the `screenX` value will
  /// > increase to the combined width of the screens.
  external double get screenX;

  /// The **`screenY`** read-only property of the [MouseEvent] interface
  /// provides the vertical coordinate (offset) of the mouse pointer in
  /// [screen coordinates](https://developer.mozilla.org/en-US/docs/Web/CSS/CSSOM_view/Coordinate_systems#screen).
  external double get screenY;

  /// The **`clientX`** read-only property of the [MouseEvent] interface
  /// provides the horizontal coordinate within the application's  at which the
  /// event occurred (as opposed to the coordinate within the page).
  ///
  /// For example, clicking on the left edge of the viewport will always result
  /// in a mouse event with a `clientX` value of `0`, regardless of whether the
  /// page is scrolled horizontally.
  external double get clientX;

  /// The **`clientY`** read-only property of the [MouseEvent] interface
  /// provides the vertical coordinate within the application's  at which the
  /// event occurred (as opposed to the coordinate within the page).
  ///
  /// For example, clicking on the top edge of the viewport will always result
  /// in a mouse event with a `clientY` value of `0`, regardless of whether the
  /// page is scrolled vertically.
  external double get clientY;

  /// The **`MouseEvent.button`** read-only property indicates which button was
  /// pressed on the mouse to trigger the event.
  ///
  /// This property only guarantees to indicate which buttons are pressed during
  /// events caused by pressing or releasing one or multiple buttons.
  /// As such, it is not reliable for events such as [Element.mouseenter_event],
  /// [Element.mouseleave_event], [Element.mouseover_event],
  /// [Element.mouseout_event], or [Element.mousemove_event].
  ///
  /// Users may change the configuration of buttons on their pointing device so
  /// that if an event's button property is zero, it may not have been caused by
  /// the button that is physically left–most on the pointing device; however,
  /// it should behave as if the left button was clicked in the standard button
  /// layout.
  ///
  /// > [!NOTE]
  /// > Do not confuse this property with the [MouseEvent.buttons] property,
  /// > which indicates which buttons are pressed for all mouse events types.
  external int get button;
}
extension type MouseEventInit._(JSObject _) implements JSObject {
  external factory MouseEventInit({
    num screenX,
    num screenY,
    num clientX,
    num clientY,
    int button,
  });

  external double get screenX;
  external set screenX(num value);
  external double get screenY;
  external set screenY(num value);
  external double get clientX;
  external set clientX(num value);
  external double get clientY;
  external set clientY(num value);
  external int get button;
  external set button(int value);
}
