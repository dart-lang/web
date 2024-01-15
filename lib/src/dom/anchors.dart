// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'status.dart';
import 'webxr.dart';

@JS('XRAnchor')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class XRAnchor {}

extension XRAnchorExtension on XRAnchor {
  external JSPromise requestPersistentHandle();
  external void delete();
  external XRSpace get anchorSpace;
}

@JS('XRAnchorSet')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class XRAnchorSet {}

extension XRAnchorSetExtension on XRAnchorSet {}
