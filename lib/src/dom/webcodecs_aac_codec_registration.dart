// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef AacBitstreamFormat = String;
extension type AacEncoderConfig._(JSObject _) implements JSObject {
  external factory AacEncoderConfig({AacBitstreamFormat format});
}

extension AacEncoderConfigExtension on AacEncoderConfig {
  external set format(AacBitstreamFormat value);
  external AacBitstreamFormat get format;
}
