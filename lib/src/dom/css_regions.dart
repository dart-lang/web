// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';

@JS('NamedFlowMap')
@staticInterop
class NamedFlowMap {
  external factory NamedFlowMap();
}

extension NamedFlowMapExtension on NamedFlowMap {}

@JS('NamedFlow')
@staticInterop
class NamedFlow extends EventTarget {
  external factory NamedFlow();
}

extension NamedFlowExtension on NamedFlow {
  external JSString get name;
  external JSBoolean get overset;
  external JSArray getRegions();
  external JSNumber get firstEmptyRegionIndex;
  external JSArray getContent();
  external JSArray getRegionsByContent(Node node);
}

@JS('Region')
@staticInterop
class Region {
  external factory Region();
}

extension RegionExtension on Region {
  external JSString get regionOverset;
  external JSArray? getRegionFlowRanges();
}
