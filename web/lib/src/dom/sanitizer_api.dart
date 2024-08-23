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

typedef SanitizerElement = JSAny;
typedef SanitizerElementWithAttributes = JSAny;
typedef SanitizerAttribute = JSAny;

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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Sanitizer).
extension type Sanitizer._(JSObject _) implements JSObject {
  external factory Sanitizer([SanitizerConfig config]);
}
extension type SanitizerElementNamespace._(JSObject _) implements JSObject {
  external factory SanitizerElementNamespace({
    required String name,
    String? namespace,
  });

  external String get name;
  external set name(String value);
  external String? get namespace;
  external set namespace(String? value);
}
extension type SanitizerElementNamespaceWithAttributes._(JSObject _)
    implements SanitizerElementNamespace, JSObject {
  external factory SanitizerElementNamespaceWithAttributes({
    required String name,
    String? namespace,
    JSArray<SanitizerAttribute> attributes,
    JSArray<SanitizerAttribute> removeAttributes,
  });

  external JSArray<SanitizerAttribute> get attributes;
  external set attributes(JSArray<SanitizerAttribute> value);
  external JSArray<SanitizerAttribute> get removeAttributes;
  external set removeAttributes(JSArray<SanitizerAttribute> value);
}
extension type SanitizerAttributeNamespace._(JSObject _) implements JSObject {
  external factory SanitizerAttributeNamespace({
    required String name,
    String? namespace,
  });

  external String get name;
  external set name(String value);
  external String? get namespace;
  external set namespace(String? value);
}
extension type SanitizerConfig._(JSObject _) implements JSObject {
  external factory SanitizerConfig({
    JSArray<SanitizerElementWithAttributes> elements,
    JSArray<SanitizerElement> removeElements,
    JSArray<SanitizerElement> replaceWithChildrenElements,
    JSArray<SanitizerAttribute> attributes,
    JSArray<SanitizerAttribute> removeAttributes,
    bool comments,
    bool dataAttributes,
  });

  external JSArray<SanitizerElementWithAttributes> get elements;
  external set elements(JSArray<SanitizerElementWithAttributes> value);
  external JSArray<SanitizerElement> get removeElements;
  external set removeElements(JSArray<SanitizerElement> value);
  external JSArray<SanitizerElement> get replaceWithChildrenElements;
  external set replaceWithChildrenElements(JSArray<SanitizerElement> value);
  external JSArray<SanitizerAttribute> get attributes;
  external set attributes(JSArray<SanitizerAttribute> value);
  external JSArray<SanitizerAttribute> get removeAttributes;
  external set removeAttributes(JSArray<SanitizerAttribute> value);
  external bool get comments;
  external set comments(bool value);
  external bool get dataAttributes;
  external set dataAttributes(bool value);
}
