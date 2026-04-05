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

typedef XRDOMOverlayType = String;
extension type XRDOMOverlayInit._(JSObject _) implements JSObject {
  external factory XRDOMOverlayInit({required Element root});

  external Element get root;
  external set root(Element value);
}
extension type XRDOMOverlayState._(JSObject _) implements JSObject {
  external factory XRDOMOverlayState({XRDOMOverlayType type});

  external XRDOMOverlayType get type;
  external set type(XRDOMOverlayType value);
}
