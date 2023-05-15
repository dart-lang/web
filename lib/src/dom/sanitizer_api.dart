// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';

typedef AttributeMatchList = JSAny?;

@JS('Sanitizer')
@staticInterop
class Sanitizer implements JSObject {
  external factory Sanitizer([SanitizerConfig config]);

  external static SanitizerConfig getDefaultConfiguration();
}

extension SanitizerExtension on Sanitizer {
  external DocumentFragment sanitize(JSAny? input);
  external Element? sanitizeFor(
    JSString element,
    JSString input,
  );
  external SanitizerConfig getConfiguration();
}

@JS()
@staticInterop
@anonymous
class SetHTMLOptions implements JSObject {
  external factory SetHTMLOptions({Sanitizer sanitizer});
}

extension SetHTMLOptionsExtension on SetHTMLOptions {
  external set sanitizer(Sanitizer value);
  external Sanitizer get sanitizer;
}

@JS()
@staticInterop
@anonymous
class SanitizerConfig implements JSObject {
  external factory SanitizerConfig({
    JSArray allowElements,
    JSArray blockElements,
    JSArray dropElements,
    AttributeMatchList allowAttributes,
    AttributeMatchList dropAttributes,
    JSBoolean allowCustomElements,
    JSBoolean allowUnknownMarkup,
    JSBoolean allowComments,
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
  external set allowCustomElements(JSBoolean value);
  external JSBoolean get allowCustomElements;
  external set allowUnknownMarkup(JSBoolean value);
  external JSBoolean get allowUnknownMarkup;
  external set allowComments(JSBoolean value);
  external JSBoolean get allowComments;
}
