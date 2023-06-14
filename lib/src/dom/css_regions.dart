// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';

@JS('NamedFlowMap')
@staticInterop
class NamedFlowMap implements JSObject {}

extension NamedFlowMapExtension on NamedFlowMap {}

@JS('NamedFlow')
@staticInterop
class NamedFlow implements EventTarget {}

extension NamedFlowExtension on NamedFlow {
  external JSArray getRegions();
  external JSArray getContent();
  external JSArray getRegionsByContent(Node node);
  external String get name;
  external bool get overset;
  external int get firstEmptyRegionIndex;
}

@JS('Region')
@staticInterop
class Region implements JSObject {}

extension RegionExtension on Region {
  external JSArray? getRegionFlowRanges();
  external String get regionOverset;
}
