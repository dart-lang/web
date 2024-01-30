// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'fileapi.dart';

extension type ShareData._(JSObject _) implements JSObject {
  external factory ShareData({
    JSArray<File> files,
    String title,
    String text,
    String url,
  });

  external set files(JSArray<File> value);
  external JSArray<File> get files;
  external set title(String value);
  external String get title;
  external set text(String value);
  external String get text;
  external set url(String value);
  external String get url;
}
