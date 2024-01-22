// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'element_capture.dart';
import 'mediacapture_streams.dart';

extension type CropTarget._(JSObject _) implements JSObject {
  external static JSPromise fromElement(Element element);
}
extension type BrowserCaptureMediaStreamTrack._(JSObject _)
    implements MediaStreamTrack, JSObject {
  external JSPromise restrictTo(RestrictionTarget? RestrictionTarget);
  external JSPromise cropTo(CropTarget? cropTarget);
  external BrowserCaptureMediaStreamTrack clone();
}
