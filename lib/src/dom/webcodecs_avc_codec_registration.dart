// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef AvcBitstreamFormat = JSString;

@JS()
@staticInterop
@anonymous
class AvcEncoderConfig {
  external factory AvcEncoderConfig({AvcBitstreamFormat format = 'avc'});
}

extension AvcEncoderConfigExtension on AvcEncoderConfig {
  external set format(AvcBitstreamFormat value);
  external AvcBitstreamFormat get format;
}
