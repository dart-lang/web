// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef PermissionState = String;
extension type Permissions._(JSObject _) implements JSObject {
  external JSPromise<PermissionStatus> request(JSObject permissionDesc);
  external JSPromise<PermissionStatus> revoke(JSObject permissionDesc);
  external JSPromise<PermissionStatus> query(JSObject permissionDesc);
}
extension type PermissionDescriptor._(JSObject _) implements JSObject {
  external factory PermissionDescriptor({required String name});

  external set name(String value);
  external String get name;
}
extension type PermissionStatus._(JSObject _) implements EventTarget, JSObject {
  external PermissionState get state;
  external String get name;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}
extension type PermissionSetParameters._(JSObject _) implements JSObject {
  external factory PermissionSetParameters({
    required PermissionDescriptor descriptor,
    required PermissionState state,
  });

  external set descriptor(PermissionDescriptor value);
  external PermissionDescriptor get descriptor;
  external set state(PermissionState value);
  external PermissionState get state;
}
