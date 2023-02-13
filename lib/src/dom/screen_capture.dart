// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef CaptureStartFocusBehavior = JSString;
typedef SelfCapturePreferenceEnum = JSString;
typedef SystemAudioPreferenceEnum = JSString;
typedef SurfaceSwitchingPreferenceEnum = JSString;
typedef DisplayCaptureSurfaceType = JSString;
typedef CursorCaptureConstraint = JSString;

@JS('CaptureController')
@staticInterop
class CaptureController {
  external factory CaptureController();
}

extension CaptureControllerExtension on CaptureController {
  external JSUndefined setFocusBehavior(
      CaptureStartFocusBehavior focusBehavior);
}

@JS('DisplayMediaStreamOptions')
@staticInterop
class DisplayMediaStreamOptions {
  external factory DisplayMediaStreamOptions();
}

extension DisplayMediaStreamOptionsExtension on DisplayMediaStreamOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}
