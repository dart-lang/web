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

import 'webgl1.dart';
import 'webxr.dart';
import 'webxrlayers.dart';

typedef XRDepthType = String;
typedef XRDepthUsage = String;
typedef XRDepthDataFormat = String;
extension type XRDepthStateInit._(JSObject _) implements JSObject {
  external factory XRDepthStateInit({
    required JSArray<JSString> usagePreference,
    required JSArray<JSString> dataFormatPreference,
    JSArray<JSString> depthTypeRequest,
    bool matchDepthView,
  });

  external JSArray<JSString> get usagePreference;
  external set usagePreference(JSArray<JSString> value);
  external JSArray<JSString> get dataFormatPreference;
  external set dataFormatPreference(JSArray<JSString> value);
  external JSArray<JSString> get depthTypeRequest;
  external set depthTypeRequest(JSArray<JSString> value);
  external bool get matchDepthView;
  external set matchDepthView(bool value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRDepthInformation).
extension type XRDepthInformation._(JSObject _) implements JSObject {
  /// The _read-only_ **`width`** property of the [XRDepthInformation] interface
  /// contains the width of the depth buffer (number of columns).
  external int get width;

  /// The _read-only_ **`height`** property of the [XRDepthInformation]
  /// interface contains the height of the depth buffer (number of rows).
  external int get height;

  /// The _read-only_ **`normDepthBufferFromNormView`** property of the
  /// [XRDepthInformation] interface contains the 3D geometric transform that
  /// needs to be applied when indexing into the depth buffer.
  external XRRigidTransform get normDepthBufferFromNormView;

  /// The _read-only_ **`rawValueToMeters`** property of the
  /// [XRDepthInformation] interface contains the scale factor by which the raw
  /// depth values must be multiplied in order to get the depths in meters.
  ///
  /// For CPU depth information, see also the
  /// [XRCPUDepthInformation.getDepthInMeters] method.
  external double get rawValueToMeters;
  external JSFloat32Array get projectionMatrix;
  external XRRigidTransform get transform;
}

/// The **`XRCPUDepthInformation`** interface contains depth information from
/// the CPU (returned by [XRFrame.getDepthInformation]).
///
/// This interface inherits properties from its parent, [XRDepthInformation].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRCPUDepthInformation).
extension type XRCPUDepthInformation._(JSObject _)
    implements XRDepthInformation, JSObject {
  /// The **`getDepthInMeters()`** method of the [XRCPUDepthInformation]
  /// interface returns the depth in meters at (x, y) in normalized view
  /// coordinates (origin in the top left corner).
  external double getDepthInMeters(
    num x,
    num y,
  );

  /// The _read-only_ **`data`** property of the [XRCPUDepthInformation]
  /// interface is an `ArrayBuffer` containing depth-buffer information in raw
  /// format.
  ///
  /// The data is stored in row-major format, without padding, with each entry
  /// corresponding to distance from the view's near plane to the users'
  /// environment, in unspecified units. The size of each data entry and the
  /// type is determined by [XRSession.depthDataFormat]. The values can be
  /// converted from unspecified units to meters by multiplying them by
  /// [XRDepthInformation.rawValueToMeters]. The
  /// [XRDepthInformation.normDepthBufferFromNormView] property can be used to
  /// transform from normalized view coordinates (an origin in the top left
  /// corner of the view, with X axis growing to the right, and Y axis growing
  /// downward) into the depth buffer's coordinate system.
  external JSArrayBuffer get data;
}

/// The **`XRWebGLDepthInformation`** interface contains depth information from
/// the GPU/WebGL (returned by [XRWebGLBinding.getDepthInformation]).
///
/// This interface inherits properties from its parent, [XRDepthInformation].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XRWebGLDepthInformation).
extension type XRWebGLDepthInformation._(JSObject _)
    implements XRDepthInformation, JSObject {
  /// The _read-only_ **`texture`** property of the [XRWebGLDepthInformation]
  /// interface is a [WebGLTexture] containing depth buffer information as an
  /// opaque texture.
  external WebGLTexture get texture;
  external XRTextureType get textureType;
  external int? get imageIndex;
}
