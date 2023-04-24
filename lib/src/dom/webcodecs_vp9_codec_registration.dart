// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
@staticInterop
@anonymous
class VideoEncoderEncodeOptionsForVp9 {
  external factory VideoEncoderEncodeOptionsForVp9({JSNumber? quantizer});
}

extension VideoEncoderEncodeOptionsForVp9Extension
    on VideoEncoderEncodeOptionsForVp9 {
  external set quantizer(JSNumber? value);
  external JSNumber? get quantizer;
}
