// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';

typedef AttributeMatchList = JSAny;
extension type Sanitizer._(JSObject _) implements JSObject {
  external factory Sanitizer([SanitizerConfig config]);

  external static SanitizerConfig getDefaultConfiguration();
}

extension SanitizerExtension on Sanitizer {
  external DocumentFragment sanitize(JSObject input);
  external Element? sanitizeFor(
    String element,
    String input,
  );
  external SanitizerConfig getConfiguration();
}

extension type SetHTMLOptions._(JSObject _) implements JSObject {
  external factory SetHTMLOptions({Sanitizer sanitizer});
}

extension SetHTMLOptionsExtension on SetHTMLOptions {
  external set sanitizer(Sanitizer value);
  external Sanitizer get sanitizer;
}

extension type SanitizerConfig._(JSObject _) implements JSObject {
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
