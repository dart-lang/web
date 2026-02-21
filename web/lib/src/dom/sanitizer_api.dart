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

typedef SanitizerElement = JSAny;
typedef SanitizerElementWithAttributes = JSAny;
typedef SanitizerAttribute = JSAny;
typedef SanitizerPresets = String;
extension type SetHTMLOptions._(JSObject _) implements JSObject {
  external factory SetHTMLOptions({JSAny sanitizer});

  external JSAny get sanitizer;
  external set sanitizer(JSAny value);
}
extension type SetHTMLUnsafeOptions._(JSObject _) implements JSObject {
  external factory SetHTMLUnsafeOptions({JSAny sanitizer});

  external JSAny get sanitizer;
  external set sanitizer(JSAny value);
}
extension type Sanitizer._(JSObject _) implements JSObject {
  external factory Sanitizer([JSAny configuration]);

  external SanitizerConfig get();
  external bool allowElement(SanitizerElementWithAttributes element);
  external bool removeElement(SanitizerElement element);
  external bool replaceElementWithChildren(SanitizerElement element);
  external bool allowAttribute(SanitizerAttribute attribute);
  external bool removeAttribute(SanitizerAttribute attribute);
  external bool setComments(bool allow);
  external bool setDataAttributes(bool allow);
  external bool removeUnsafe();
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
