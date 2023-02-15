// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/webxr.dart';

@JS('XRAnchor')
@staticInterop
class XRAnchor {
  external factory XRAnchor();
}

extension XRAnchorExtension on XRAnchor {
  external XRSpace get anchorSpace;
  external JSPromise requestPersistentHandle();
  external JSVoid delete();
}

@JS('XRAnchorSet')
@staticInterop
class XRAnchorSet {
  external factory XRAnchorSet();
}

extension XRAnchorSetExtension on XRAnchorSet {}
