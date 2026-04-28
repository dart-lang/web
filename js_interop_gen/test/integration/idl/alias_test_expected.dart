// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

@JS()
external Window get window;

/// The **`Window`** interface represents a window containing a  document; the
/// `document` property points to the
/// [DOM document](https://developer.mozilla.org/en-US/docs/Web/API/Document)
/// loaded in that window.
///
/// A window for a given document can be obtained using the
/// [document.defaultView] property.
///
/// A global variable, `window`, representing the window in which the script is
/// running, is exposed to JavaScript code.
///
/// The `Window` interface is home to a variety of functions, namespaces,
/// objects, and constructors which are not necessarily directly associated with
/// the concept of a user interface window. However, the `Window` interface is a
/// suitable place to include these items that need to be globally available.
/// Many of these are documented in the
/// [JavaScript Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference)
/// and the
/// [DOM Reference](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model).
///
/// In a tabbed browser, each tab is represented by its own `Window` object; the
/// global `window` seen by JavaScript code running within a given tab always
/// represents the tab in which the code is running. That said, even in a tabbed
/// browser, some properties and methods still apply to the overall window that
/// contains the tab, such as [Window.resizeTo] and [Window.innerHeight].
/// Generally, anything that can't reasonably pertain to a tab pertains to the
/// window instead.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Window).
extension type Window._(JSObject _) implements JSObject {
  external double get value;
  external set value(num value);
}
extension type TestInterface._(JSObject _) implements JSObject {
  external Window get window;
  external set window(Window value);
}
