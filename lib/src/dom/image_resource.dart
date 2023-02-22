// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS()
@staticInterop
@anonymous
class ImageResource {
  external factory ImageResource({
    required JSString src,
    JSString sizes,
    JSString type,
    JSString label,
  });
}

extension ImageResourceExtension on ImageResource {
  external set src(JSString value);
  external JSString get src;
  external set sizes(JSString value);
  external JSString get sizes;
  external set type(JSString value);
  external JSString get type;
  external set label(JSString value);
  external JSString get label;
}
