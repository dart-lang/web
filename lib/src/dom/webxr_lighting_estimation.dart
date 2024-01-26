// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'geometry.dart';
import 'html.dart';
import 'webxr.dart';

typedef XRReflectionFormat = String;
extension type XRLightProbe._(JSObject _) implements EventTarget, JSObject {
  external XRSpace get probeSpace;
  external set onreflectionchange(EventHandler value);
  external EventHandler get onreflectionchange;
}
extension type XRLightEstimate._(JSObject _) implements JSObject {
  external JSFloat32Array get sphericalHarmonicsCoefficients;
  external DOMPointReadOnly get primaryLightDirection;
  external DOMPointReadOnly get primaryLightIntensity;
}
extension type XRLightProbeInit._(JSObject _) implements JSObject {
  external factory XRLightProbeInit({XRReflectionFormat reflectionFormat});

  external set reflectionFormat(XRReflectionFormat value);
  external XRReflectionFormat get reflectionFormat;
}
