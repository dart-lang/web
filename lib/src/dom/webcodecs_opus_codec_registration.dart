// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef OpusBitstreamFormat = JSString;

@JS()
@staticInterop
@anonymous
class OpusEncoderConfig {
  external factory OpusEncoderConfig({
    OpusBitstreamFormat format,
    JSNumber frameDuration,
    JSNumber complexity,
    JSNumber packetlossperc,
    JSBoolean useinbandfec,
    JSBoolean usedtx,
  });
}

extension OpusEncoderConfigExtension on OpusEncoderConfig {
  external set format(OpusBitstreamFormat value);
  external OpusBitstreamFormat get format;
  external set frameDuration(JSNumber value);
  external JSNumber get frameDuration;
  external set complexity(JSNumber value);
  external JSNumber get complexity;
  external set packetlossperc(JSNumber value);
  external JSNumber get packetlossperc;
  external set useinbandfec(JSBoolean value);
  external JSBoolean get useinbandfec;
  external set usedtx(JSBoolean value);
  external JSBoolean get usedtx;
}
