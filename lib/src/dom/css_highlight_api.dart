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

typedef HighlightType = String;

/// The **`Highlight`** interface of the
/// [CSS Custom Highlight API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Custom_Highlight_API)
/// is used to represent a collection of [Range] instances to be styled using
/// the API.
///
/// To style arbitrary ranges in a page, instantiate a new `Highlight` object,
/// add one or more `Range` objects to it, and register it using the
/// [HighlightRegistry].
///
/// A `Highlight` instance is a
/// [`Set`-like object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set#set-like_browser_apis)
/// that can hold one or more `Range` objects.
extension type Highlight._(JSObject _) implements JSObject {
  external factory Highlight(AbstractRange initialRanges);

  external set priority(int value);
  external int get priority;
  external set type(HighlightType value);
  external HighlightType get type;
}

/// The **`HighlightRegistry`** interface of the
/// [CSS Custom Highlight API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Custom_Highlight_API)
/// is used to register [Highlight] objects to be styled using the API.
/// It is accessed via [CSS.highlights_static].
///
/// A `HighlightRegistry` instance is a
/// [`Map`-like object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map#map-like_browser_apis),
/// in which each key is the name string for a custom highlight, and the
/// corresponding value is the associated [Highlight] object.
extension type HighlightRegistry._(JSObject _) implements JSObject {}
