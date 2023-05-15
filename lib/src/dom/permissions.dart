// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef PermissionState = JSString;

@JS('Permissions')
@staticInterop
class Permissions implements JSObject {}

extension PermissionsExtension on Permissions {
  external JSPromise request(JSObject permissionDesc);
  external JSPromise revoke(JSObject permissionDesc);
  external JSPromise query(JSObject permissionDesc);
}

@JS()
@staticInterop
@anonymous
class PermissionDescriptor implements JSObject {
  external factory PermissionDescriptor({required JSString name});
}

extension PermissionDescriptorExtension on PermissionDescriptor {
  external set name(JSString value);
  external JSString get name;
}

@JS('PermissionStatus')
@staticInterop
class PermissionStatus implements EventTarget {}

extension PermissionStatusExtension on PermissionStatus {
  external PermissionState get state;
  external JSString get name;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

@JS()
@staticInterop
@anonymous
class PermissionSetParameters implements JSObject {
  external factory PermissionSetParameters({
    required PermissionDescriptor descriptor,
    required PermissionState state,
  });
}

extension PermissionSetParametersExtension on PermissionSetParameters {
  external set descriptor(PermissionDescriptor value);
  external PermissionDescriptor get descriptor;
  external set state(PermissionState value);
  external PermissionState get state;
}
