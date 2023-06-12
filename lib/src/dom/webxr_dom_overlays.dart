// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';

typedef XRDOMOverlayType = String;

@JS()
@staticInterop
@anonymous
class XRDOMOverlayInit implements JSObject {
  external factory XRDOMOverlayInit({required Element root});
}

extension XRDOMOverlayInitExtension on XRDOMOverlayInit {
  external set root(Element value);
  external Element get root;
}

@JS()
@staticInterop
@anonymous
class XRDOMOverlayState implements JSObject {
  external factory XRDOMOverlayState({XRDOMOverlayType type});
}

extension XRDOMOverlayStateExtension on XRDOMOverlayState {
  external set type(XRDOMOverlayType value);
  external XRDOMOverlayType get type;
}
