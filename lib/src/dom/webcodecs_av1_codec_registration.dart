// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
@staticInterop
@anonymous
class AV1EncoderConfig {
  external factory AV1EncoderConfig({JSBoolean forceScreenContentTools});
}

extension AV1EncoderConfigExtension on AV1EncoderConfig {
  external set forceScreenContentTools(JSBoolean value);
  external JSBoolean get forceScreenContentTools;
}

@JS()
@staticInterop
@anonymous
class VideoEncoderEncodeOptionsForAv1 {
  external factory VideoEncoderEncodeOptionsForAv1({JSNumber? quantizer});
}

extension VideoEncoderEncodeOptionsForAv1Extension
    on VideoEncoderEncodeOptionsForAv1 {
  external set quantizer(JSNumber? value);
  external JSNumber? get quantizer;
}
