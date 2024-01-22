// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'hr_time.dart';
import 'webxr.dart';

typedef XRPlaneOrientation = String;

@JS('XRPlane')
@staticInterop
class XRPlane {}

extension XRPlaneExtension on XRPlane {
  external XRSpace get planeSpace;
  external JSArray get polygon;
  external XRPlaneOrientation? get orientation;
  external DOMHighResTimeStamp get lastChangedTime;
  external String? get semanticLabel;
}

@JS('XRPlaneSet')
@staticInterop
class XRPlaneSet {}

extension XRPlaneSetExtension on XRPlaneSet {}
