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

@JS('NamedFlowMap')
@staticInterop
class NamedFlowMap {}

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
