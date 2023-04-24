// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webxr.dart';

@JS('XRAnchor')
@staticInterop
class XRAnchor {}

extension XRAnchorExtension on XRAnchor {
  external JSPromise requestPersistentHandle();
  external JSVoid delete();
  external XRSpace get anchorSpace;
}

@JS('XRAnchorSet')
@staticInterop
class XRAnchorSet {}

extension XRAnchorSetExtension on XRAnchorSet {}
