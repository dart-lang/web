// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRLightProbe).
extension type XRLightProbe._(JSObject _) implements EventTarget, JSObject {
  /// The _read-only_ **`probeSpace`** property of the [XRLightProbe] interface
  /// returns an [XRSpace] tracking the position and orientation that the
  /// lighting estimations are relative to.
  external XRSpace get probeSpace;
  external EventHandler get onreflectionchange;
  external set onreflectionchange(EventHandler value);
}

/// The **`XRLightEstimate`** interface of the
/// [WebXR Device API](https://developer.mozilla.org/en-US/docs/Web/API/WebXR_Device_API)
/// provides the estimated lighting values for an [XRLightProbe] at the time
/// represented by an [XRFrame].
///
/// To get an `XRLightEstimate` object, call the [XRFrame.getLightEstimate]
/// method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRLightEstimate).
extension type XRLightEstimate._(JSObject _) implements JSObject {
  /// The _read-only_ **`sphericalHarmonicsCoefficients`** property of the
  /// [XRLightEstimate] interface returns a `Float32Array` containing 9
  /// spherical harmonics coefficients.
  ///
  /// Spherical harmonic lighting is a technique that uses spherical functions
  /// instead of standard lighting equations. See
  /// [Wikipedia](https://en.wikipedia.org/wiki/Spherical_harmonic_lighting) for
  /// more information.
  external JSFloat32Array get sphericalHarmonicsCoefficients;

  /// The _read-only_ **`primaryLightDirection`** property of the
  /// [XRLightEstimate] interface returns a [DOMPointReadOnly] representing the
  /// direction to the primary light source from the `probeSpace` of an
  /// [XRLightProbe].
  external DOMPointReadOnly get primaryLightDirection;

  /// The _read-only_ **`primaryLightIntensity`** property of the
  /// [XRLightEstimate] interface returns a [DOMPointReadOnly] representing the
  /// intensity of the primary light source from the `probeSpace` of an
  /// [XRLightProbe].
  external DOMPointReadOnly get primaryLightIntensity;
}
extension type XRLightProbeInit._(JSObject _) implements JSObject {
  external factory XRLightProbeInit({XRReflectionFormat reflectionFormat});

  external XRReflectionFormat get reflectionFormat;
  external set reflectionFormat(XRReflectionFormat value);
}
