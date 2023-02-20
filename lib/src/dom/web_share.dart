// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS()
@staticInterop
@anonymous
class ShareData {
  external factory ShareData({
    JSArray files,
    JSString title,
    JSString text,
    JSString url,
  });
}

extension ShareDataExtension on ShareData {
  external set files(JSArray value);
  external JSArray get files;
  external set title(JSString value);
  external JSString get title;
  external set text(JSString value);
  external JSString get text;
  external set url(JSString value);
  external JSString get url;
}
