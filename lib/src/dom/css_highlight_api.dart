// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Highlight).
extension type Highlight._(JSObject _) implements JSObject {
  external factory Highlight(AbstractRange initialRanges);

  /// It is possible to create [Range] objects that overlap in a document.
  ///
  /// When overlapping ranges are used by multiple different [Highlight]
  /// objects, and when those highlights are styled using  pseudo-elements, this
  /// may lead to conflicting styles.
  ///
  /// If two text ranges overlap and are both highlighted using the
  /// [css_custom_highlight_api], and if they're both styled using the `color`
  /// CSS property, the browser needs to decide which color should be used for
  /// styling the text in the overlapping part.
  ///
  /// By default, all highlights have the same priority and the browser chooses
  /// the most recently registered highlight to style the overlapping parts.
  ///
  /// The `priority` property of the [Highlight] interface is a `Number` used to
  /// change this default behavior and determine which highlight's styles should
  /// be used to resolve style conflicts in overlapping parts.
  ///
  /// Note that all the styles of a highlight are applied and the browser only
  /// needs to resolve conflicts when the same CSS properties are used by
  /// multiple overlapping highlights. The highlight style conflict resolution
  /// also does not depend on the order in which the  pseudo-elements rules
  /// appear in the source, or whether or not CSS properties are marked as
  /// `!important`.
  external int get priority;
  external set priority(int value);

  /// The `type` property of the [Highlight] interface is an enumerated `String`
  /// used to specify the meaning of the highlight. This allows assistive
  /// technologies, such as screen readers, to include this meaning when
  /// exposing the highlight to users.
  ///
  /// By default, a highlight object will have its type set to `highlight`, but
  /// you can change it to `spelling-error` or `grammar-error`.
  external HighlightType get type;
  external set type(HighlightType value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HighlightRegistry).
extension type HighlightRegistry._(JSObject _) implements JSObject {}
