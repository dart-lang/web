// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library requeststorageaccessfor;

import 'dart:js_interop';

import 'permissions.dart';

extension type TopLevelStorageAccessPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory TopLevelStorageAccessPermissionDescriptor(
      {String requestedOrigin});

  external set requestedOrigin(String value);
  external String get requestedOrigin;
}
