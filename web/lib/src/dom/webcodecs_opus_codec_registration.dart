// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

typedef OpusBitstreamFormat = String;
typedef OpusSignal = String;
typedef OpusApplication = String;
extension type OpusEncoderConfig._(JSObject _) implements JSObject {
  external factory OpusEncoderConfig({
    OpusBitstreamFormat format,
    OpusSignal signal,
    OpusApplication application,
    int frameDuration,
    int complexity,
    int packetlossperc,
    bool useinbandfec,
    bool usedtx,
  });

  external OpusBitstreamFormat get format;
  external set format(OpusBitstreamFormat value);
  external OpusSignal get signal;
  external set signal(OpusSignal value);
  external OpusApplication get application;
  external set application(OpusApplication value);
  external int get frameDuration;
  external set frameDuration(int value);
  external int get complexity;
  external set complexity(int value);
  external int get packetlossperc;
  external set packetlossperc(int value);
  external bool get useinbandfec;
  external set useinbandfec(bool value);
  external bool get usedtx;
  external set usedtx(bool value);
}
