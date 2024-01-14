// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef HevcBitstreamFormat = String;

@JS()
@staticInterop
@anonymous
class HevcEncoderConfig {
  external factory HevcEncoderConfig({HevcBitstreamFormat format});
}

extension HevcEncoderConfigExtension on HevcEncoderConfig {
  external set format(HevcBitstreamFormat value);
  external HevcBitstreamFormat get format;
}

@JS()
@staticInterop
@anonymous
class VideoEncoderEncodeOptionsForHevc {
  external factory VideoEncoderEncodeOptionsForHevc({int? quantizer});
}

extension VideoEncoderEncodeOptionsForHevcExtension
    on VideoEncoderEncodeOptionsForHevc {
  external set quantizer(int? value);
  external int? get quantizer;
}
