// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

extension type AV1EncoderConfig._(JSObject _) implements JSObject {
  external factory AV1EncoderConfig({bool forceScreenContentTools});

  external set forceScreenContentTools(bool value);
  external bool get forceScreenContentTools;
}
extension type VideoEncoderEncodeOptionsForAv1._(JSObject _)
    implements JSObject {
  external factory VideoEncoderEncodeOptionsForAv1({int? quantizer});

  external set quantizer(int? value);
  external int? get quantizer;
}
