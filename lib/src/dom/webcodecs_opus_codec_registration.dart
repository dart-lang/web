// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef OpusBitstreamFormat = String;
extension type OpusEncoderConfig._(JSObject _) implements JSObject {
  external factory OpusEncoderConfig({
    OpusBitstreamFormat format,
    int frameDuration,
    int complexity,
    int packetlossperc,
    bool useinbandfec,
    bool usedtx,
  });

  external set format(OpusBitstreamFormat value);
  external OpusBitstreamFormat get format;
  external set frameDuration(int value);
  external int get frameDuration;
  external set complexity(int value);
  external int get complexity;
  external set packetlossperc(int value);
  external int get packetlossperc;
  external set useinbandfec(bool value);
  external bool get useinbandfec;
  external set usedtx(bool value);
  external bool get usedtx;
}
