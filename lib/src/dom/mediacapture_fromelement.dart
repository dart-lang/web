// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/mediacapture_streams.dart';

@JS('CanvasCaptureMediaStreamTrack')
@staticInterop
class CanvasCaptureMediaStreamTrack extends MediaStreamTrack {
  external factory CanvasCaptureMediaStreamTrack();
}

extension CanvasCaptureMediaStreamTrackExtension
    on CanvasCaptureMediaStreamTrack {
  external HTMLCanvasElement get canvas;
  external JSVoid requestFrame();
}
