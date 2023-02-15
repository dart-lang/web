// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/geometry.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/webxr.dart';

typedef XRReflectionFormat = JSString;

@JS('XRLightProbe')
@staticInterop
class XRLightProbe extends EventTarget {
  external factory XRLightProbe();
}

extension XRLightProbeExtension on XRLightProbe {
  external XRSpace get probeSpace;
  external set onreflectionchange(EventHandler value);
  external EventHandler get onreflectionchange;
}

@JS('XRLightEstimate')
@staticInterop
class XRLightEstimate {
  external factory XRLightEstimate();
}

extension XRLightEstimateExtension on XRLightEstimate {
  external JSFloat32Array get sphericalHarmonicsCoefficients;
  external DOMPointReadOnly get primaryLightDirection;
  external DOMPointReadOnly get primaryLightIntensity;
}

@JS('XRLightProbeInit')
@staticInterop
class XRLightProbeInit {
  external factory XRLightProbeInit();
}

extension XRLightProbeInitExtension on XRLightProbeInit {}
