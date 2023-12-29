// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';

typedef XRDOMOverlayType = String;
extension type XRDOMOverlayInit._(JSObject _) implements JSObject {
  external factory XRDOMOverlayInit({required Element root});
}

extension XRDOMOverlayInitExtension on XRDOMOverlayInit {
  external set root(Element value);
  external Element get root;
}

extension type XRDOMOverlayState._(JSObject _) implements JSObject {
  external factory XRDOMOverlayState({XRDOMOverlayType type});
}

extension XRDOMOverlayStateExtension on XRDOMOverlayState {
  external set type(XRDOMOverlayType value);
  external XRDOMOverlayType get type;
}
