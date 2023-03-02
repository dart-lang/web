// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS()
@staticInterop
@anonymous
class CaptureHandleConfig {
  external factory CaptureHandleConfig({
    JSBoolean exposeOrigin,
    JSString handle,
    JSArray permittedOrigins,
  });
}

extension CaptureHandleConfigExtension on CaptureHandleConfig {
  external set exposeOrigin(JSBoolean value);
  external JSBoolean get exposeOrigin;
  external set handle(JSString value);
  external JSString get handle;
  external set permittedOrigins(JSArray value);
  external JSArray get permittedOrigins;
}

@JS()
@staticInterop
@anonymous
class CaptureHandle {
  external factory CaptureHandle({
    JSString origin,
    JSString handle,
  });
}

extension CaptureHandleExtension on CaptureHandle {
  external set origin(JSString value);
  external JSString get origin;
  external set handle(JSString value);
  external JSString get handle;
}
