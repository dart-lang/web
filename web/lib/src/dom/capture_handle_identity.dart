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

extension type CaptureHandleConfig._(JSObject _) implements JSObject {
  external factory CaptureHandleConfig({
    bool exposeOrigin,
    String handle,
    JSArray<JSString> permittedOrigins,
  });

  external bool get exposeOrigin;
  external set exposeOrigin(bool value);
  external String get handle;
  external set handle(String value);
  external JSArray<JSString> get permittedOrigins;
  external set permittedOrigins(JSArray<JSString> value);
}
extension type CaptureHandle._(JSObject _) implements JSObject {
  external factory CaptureHandle({
    String origin,
    String handle,
  });

  external String get origin;
  external set origin(String value);
  external String get handle;
  external set handle(String value);
}
