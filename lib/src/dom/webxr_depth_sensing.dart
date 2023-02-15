// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'webgl1.dart';
import 'webxr.dart';

typedef XRDepthUsage = JSString;
typedef XRDepthDataFormat = JSString;

@JS('XRDepthStateInit')
@staticInterop
class XRDepthStateInit {
  external factory XRDepthStateInit();
}

extension XRDepthStateInitExtension on XRDepthStateInit {}

@JS('XRDepthInformation')
@staticInterop
class XRDepthInformation {
  external factory XRDepthInformation();
}

extension XRDepthInformationExtension on XRDepthInformation {
  external JSNumber get width;
  external JSNumber get height;
  external XRRigidTransform get normDepthBufferFromNormView;
  external JSNumber get rawValueToMeters;
}

@JS('XRCPUDepthInformation')
@staticInterop
class XRCPUDepthInformation extends XRDepthInformation {
  external factory XRCPUDepthInformation();
}

extension XRCPUDepthInformationExtension on XRCPUDepthInformation {
  external JSArrayBuffer get data;
  external JSNumber getDepthInMeters(
    JSNumber x,
    JSNumber y,
  );
}

@JS('XRWebGLDepthInformation')
@staticInterop
class XRWebGLDepthInformation extends XRDepthInformation {
  external factory XRWebGLDepthInformation();
}

extension XRWebGLDepthInformationExtension on XRWebGLDepthInformation {
  external WebGLTexture get texture;
}
