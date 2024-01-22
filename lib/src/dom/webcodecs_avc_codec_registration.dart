// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef AvcBitstreamFormat = String;
extension type AvcEncoderConfig._(JSObject _) implements JSObject {
  external factory AvcEncoderConfig({AvcBitstreamFormat format});

  external set format(AvcBitstreamFormat value);
  external AvcBitstreamFormat get format;
}
extension type VideoEncoderEncodeOptionsForAvc._(JSObject _)
    implements JSObject {
  external factory VideoEncoderEncodeOptionsForAvc({int? quantizer});

  external set quantizer(int? value);
  external int? get quantizer;
}
