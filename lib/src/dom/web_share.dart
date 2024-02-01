// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

extension type ShareData._(JSObject _) implements JSObject {
  external factory ShareData({
    JSArray files,
    String title,
    String text,
    String url,
  });

  external set files(JSArray value);
  external JSArray get files;
  external set title(String value);
  external String get title;
  external set text(String value);
  external String get text;
  external set url(String value);
  external String get url;
}
