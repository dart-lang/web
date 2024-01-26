// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'webgl1.dart';
import 'webxr.dart';

typedef XRDepthUsage = String;
typedef XRDepthDataFormat = String;
extension type XRDepthStateInit._(JSObject _) implements JSObject {
  external factory XRDepthStateInit({
    required JSArray usagePreference,
    required JSArray dataFormatPreference,
  });

  external set usagePreference(JSArray value);
  external JSArray get usagePreference;
  external set dataFormatPreference(JSArray value);
  external JSArray get dataFormatPreference;
}

/// The **`XRDepthInformation`** interface contains information about the
/// distance from the user's device to the real-world geometry in the user's
/// environment.
///
/// This interface is the parent of:
///
/// - [XRCPUDepthInformation]
///   - : Depth information from the CPU (returned by [XRFrame.getDepthInformation]).
/// - [XRWebGLDepthInformation]
///   - : Depth information from WebGL (returned by [XRWebGLBinding.getDepthInformation]).
///
/// You will usually interact with these child interfaces. However,
/// `XRDepthInformation` provides some useful properties that are inherited:
extension type XRDepthInformation._(JSObject _) implements JSObject {
  external int get width;
  external int get height;
  external XRRigidTransform get normDepthBufferFromNormView;
  external num get rawValueToMeters;
}

/// The **`XRCPUDepthInformation`** interface contains depth information from
/// the CPU (returned by [XRFrame.getDepthInformation]).
///
/// This interface inherits properties from its parent, [XRDepthInformation].
extension type XRCPUDepthInformation._(JSObject _)
    implements XRDepthInformation, JSObject {
  /// The **`getDepthInMeters()`** method of the [XRCPUDepthInformation]
  /// interface returns the depth in meters at (x, y) in normalized view
  /// coordinates (origin in the top left corner).
  external num getDepthInMeters(
    num x,
    num y,
  );
  external JSArrayBuffer get data;
}

/// The **`XRWebGLDepthInformation`** interface contains depth information from
/// the GPU/WebGL (returned by [XRWebGLBinding.getDepthInformation]).
///
/// This interface inherits properties from its parent, [XRDepthInformation].
extension type XRWebGLDepthInformation._(JSObject _)
    implements XRDepthInformation, JSObject {
  external WebGLTexture get texture;
}
