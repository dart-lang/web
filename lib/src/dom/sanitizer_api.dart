// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';

typedef AttributeMatchList = JSAny;

/// The **`Sanitizer`** interface of the [HTML Sanitizer API] is used to
/// sanitize untrusted strings of HTML, [Document] and [DocumentFragment]
/// objects.
/// After sanitization, unwanted elements or attributes are removed, and the
/// returned objects can safely be inserted into a document's DOM.
///
/// A **`Sanitizer`** object is also used by the [Element.setHTML] method to
/// parse and sanitize a string of HTML, and immediately insert it into an
/// element.
///
/// The default configuration strips out XSS-relevant input by default,
/// including `script` tags, custom elements, and comments.
/// This configuration may be customized using constructor options.
@JS('Sanitizer')
@staticInterop
class Sanitizer {
  external factory Sanitizer([SanitizerConfig config]);

  external static SanitizerConfig getDefaultConfiguration();
}

extension SanitizerExtension on Sanitizer {
  /// The **`sanitize()`** method of the [Sanitizer] interface is used to
  /// sanitize a tree of DOM nodes, removing any unwanted elements or
  /// attributes.
  ///
  /// It should be used when the data to be sanitized is already available as
  /// DOM nodes.
  /// For example when sanitizing a `Document` instance in a frame.
  ///
  /// The default `Sanitizer()` configuration strips out XSS-relevant input by
  /// default, including `script` tags, custom elements, and comments.
  /// The sanitizer configuration may be customized using [Sanitizer.Sanitizer]
  /// constructor options.
  ///
  /// > **Note:** To sanitize strings, instead use [Element.setHTML].
  /// > See [HTML Sanitizer API] for more information.
  external DocumentFragment sanitize(JSObject input);
  external Element? sanitizeFor(
    String element,
    String input,
  );
  external SanitizerConfig getConfiguration();
}

@JS()
@staticInterop
@anonymous
class SetHTMLOptions {
  external factory SetHTMLOptions({Sanitizer sanitizer});
}

extension SetHTMLOptionsExtension on SetHTMLOptions {
  external set sanitizer(Sanitizer value);
  external Sanitizer get sanitizer;
}

@JS()
@staticInterop
@anonymous
class SanitizerConfig {
  external factory SanitizerConfig({
    JSArray allowElements,
    JSArray blockElements,
    JSArray dropElements,
    AttributeMatchList allowAttributes,
    AttributeMatchList dropAttributes,
    bool allowCustomElements,
    bool allowUnknownMarkup,
    bool allowComments,
  });
}

extension SanitizerConfigExtension on SanitizerConfig {
  external set allowElements(JSArray value);
  external JSArray get allowElements;
  external set blockElements(JSArray value);
  external JSArray get blockElements;
  external set dropElements(JSArray value);
  external JSArray get dropElements;
  external set allowAttributes(AttributeMatchList value);
  external AttributeMatchList get allowAttributes;
  external set dropAttributes(AttributeMatchList value);
  external AttributeMatchList get dropAttributes;
  external set allowCustomElements(bool value);
  external bool get allowCustomElements;
  external set allowUnknownMarkup(bool value);
  external bool get allowUnknownMarkup;
  external set allowComments(bool value);
  external bool get allowComments;
}
