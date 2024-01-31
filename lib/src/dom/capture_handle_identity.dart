// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

extension type CaptureHandleConfig._(JSObject _) implements JSObject {
  external factory CaptureHandleConfig({
    bool exposeOrigin,
    String handle,
    JSArray<JSString> permittedOrigins,
  });

  external set exposeOrigin(bool value);
  external bool get exposeOrigin;
  external set handle(String value);
  external String get handle;
  external set permittedOrigins(JSArray<JSString> value);
  external JSArray<JSString> get permittedOrigins;
}
extension type CaptureHandle._(JSObject _) implements JSObject {
  external factory CaptureHandle({
    String origin,
    String handle,
  });

  external set origin(String value);
  external String get origin;
  external set handle(String value);
  external String get handle;
}
