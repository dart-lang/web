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

/// The **`XRLightProbe`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// contains lighting information at a given point in the user's environment.
/// You can get an `XRLighting` object using the [XRSession.requestLightProbe]
/// method.
///
/// This object doesn't itself contain lighting values, but it is used to
/// collect lighting states for each [XRFrame]. See [XRLightEstimate] for the
/// estimated lighting values for an `XRLightProbe`.
@JS('XRLightProbe')
@staticInterop
class XRLightProbe implements EventTarget {}

extension XRLightProbeExtension on XRLightProbe {
  external XRSpace get probeSpace;
  external set onreflectionchange(EventHandler value);
  external EventHandler get onreflectionchange;
}

/// The **`XRLightEstimate`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// provides the estimated lighting values for an [XRLightProbe] at the time
/// represented by an [XRFrame].
///
/// To get an `XRLightEstimate` object, call the [XRFrame.getLightEstimate]
/// method.
@JS('XRLightEstimate')
@staticInterop
class XRLightEstimate {}

extension XRLightEstimateExtension on XRLightEstimate {
  external JSFloat32Array get sphericalHarmonicsCoefficients;
  external DOMPointReadOnly get primaryLightDirection;
  external DOMPointReadOnly get primaryLightIntensity;
}

@JS()
@staticInterop
@anonymous
class XRLightProbeInit {
  external factory XRLightProbeInit({XRReflectionFormat reflectionFormat});
}

extension XRLightProbeInitExtension on XRLightProbeInit {
  external set reflectionFormat(XRReflectionFormat value);
  external XRReflectionFormat get reflectionFormat;
}
