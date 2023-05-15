// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
@staticInterop
@anonymous
class ViewportMediaStreamConstraints implements JSObject {
  external factory ViewportMediaStreamConstraints({
    JSAny? video,
    JSAny? audio,
  });
}

extension ViewportMediaStreamConstraintsExtension
    on ViewportMediaStreamConstraints {
  external set video(JSAny? value);
  external JSAny? get video;
  external set audio(JSAny? value);
  external JSAny? get audio;
}
