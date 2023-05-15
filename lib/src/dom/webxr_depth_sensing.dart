// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webgl1.dart';
import 'webxr.dart';

typedef XRDepthUsage = JSString;
typedef XRDepthDataFormat = JSString;

@JS()
@staticInterop
@anonymous
class XRDepthStateInit implements JSObject {
  external factory XRDepthStateInit({
    required JSArray usagePreference,
    required JSArray dataFormatPreference,
  });
}

extension XRDepthStateInitExtension on XRDepthStateInit {
  external set usagePreference(JSArray value);
  external JSArray get usagePreference;
  external set dataFormatPreference(JSArray value);
  external JSArray get dataFormatPreference;
}

@JS('XRDepthInformation')
@staticInterop
class XRDepthInformation implements JSObject {}

extension XRDepthInformationExtension on XRDepthInformation {
  external JSNumber get width;
  external JSNumber get height;
  external XRRigidTransform get normDepthBufferFromNormView;
  external JSNumber get rawValueToMeters;
}

@JS('XRCPUDepthInformation')
@staticInterop
class XRCPUDepthInformation implements XRDepthInformation {}

extension XRCPUDepthInformationExtension on XRCPUDepthInformation {
  external JSNumber getDepthInMeters(
    JSNumber x,
    JSNumber y,
  );
  external JSArrayBuffer get data;
}

@JS('XRWebGLDepthInformation')
@staticInterop
class XRWebGLDepthInformation implements XRDepthInformation {}

extension XRWebGLDepthInformationExtension on XRWebGLDepthInformation {
  external WebGLTexture get texture;
}
