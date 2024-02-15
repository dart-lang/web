// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';

typedef AttributeMatchList = JSObject;
extension type Sanitizer._(JSObject _) implements JSObject {
  external factory Sanitizer([SanitizerConfig config]);

  external static SanitizerConfig getDefaultConfiguration();
  external DocumentFragment sanitize(JSObject input);
  external Element? sanitizeFor(
    String element,
    String input,
  );
  external SanitizerConfig getConfiguration();
}
extension type SetHTMLOptions._(JSObject _) implements JSObject {
  external factory SetHTMLOptions({Sanitizer sanitizer});

  external set sanitizer(Sanitizer value);
  external Sanitizer get sanitizer;
}
extension type SanitizerConfig._(JSObject _) implements JSObject {
  external factory SanitizerConfig({
    JSArray<JSString> allowElements,
    JSArray<JSString> blockElements,
    JSArray<JSString> dropElements,
    AttributeMatchList allowAttributes,
    AttributeMatchList dropAttributes,
    bool allowCustomElements,
    bool allowUnknownMarkup,
    bool allowComments,
  });

  external set allowElements(JSArray<JSString> value);
  external JSArray<JSString> get allowElements;
  external set blockElements(JSArray<JSString> value);
  external JSArray<JSString> get blockElements;
  external set dropElements(JSArray<JSString> value);
  external JSArray<JSString> get dropElements;
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
