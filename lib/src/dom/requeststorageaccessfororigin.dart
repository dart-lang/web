// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'permissions.dart';

@JS()
@staticInterop
@anonymous
class TopLevelStorageAccessPermissionDescriptor extends PermissionDescriptor {
  external factory TopLevelStorageAccessPermissionDescriptor(
      {JSString requestedOrigin = ''});
}

extension TopLevelStorageAccessPermissionDescriptorExtension
    on TopLevelStorageAccessPermissionDescriptor {
  external set requestedOrigin(JSString value);
  external JSString get requestedOrigin;
}
