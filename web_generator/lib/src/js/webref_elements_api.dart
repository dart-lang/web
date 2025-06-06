// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

// Namespace URIs that are needed to construct non-HTML elements.
// https://developer.mozilla.org/en-US/docs/Web/API/Document/createElementNS#important_namespace_uris
const _svgNamespaceURI = 'http://www.w3.org/2000/svg';
const _mathMLNamespaceURI = 'http://www.w3.org/1998/Math/MathML';

/// Gets the URI needed to create an element of type [elementInterface].
String? uriForElement(String elementInterface) {
  if (elementInterface.startsWith('SVG')) return _svgNamespaceURI;
  if (elementInterface.startsWith('MathML')) return _mathMLNamespaceURI;
  // URI is not needed for HTML elements as they can just use `createElement`.
  assert(elementInterface.startsWith('HTML'));
  return null;
}

// TODO(srujzs): Generalize this. It's a bit difficult as it requires knowing
// what sound a word begins with rather than just if it starts with a vowel or
// not.
/// Determines whether [elementInterface] should use the article 'a' or 'an'.
String singularArticleForElement(String elementInterface) {
  if (elementInterface.startsWith('HTML') ||
      elementInterface.startsWith('SVG')) {
    return 'an';
  }
  assert(elementInterface.startsWith('MathML'));
  return 'a';
}

@JS()
external WebRefElements get elements;

extension type WebRefElements._(JSObject _) implements JSObject {
  external JSPromise<JSObject> listAll();
}

extension type ElementsEntries._(JSObject _) implements JSObject {
  external JSArray<ElementEntry>? elements;
}

extension type ElementEntry._(JSObject _) implements JSObject {
  external String? get name;
  external String? get interface;
}
