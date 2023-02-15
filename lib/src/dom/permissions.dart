// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';

typedef PermissionState = JSString;

@JS('Permissions')
@staticInterop
class Permissions {
  external factory Permissions();
}

extension PermissionsExtension on Permissions {
  external JSPromise request(JSObject permissionDesc);
  external JSPromise revoke(JSObject permissionDesc);
  external JSPromise query(JSObject permissionDesc);
}

@JS('PermissionDescriptor')
@staticInterop
class PermissionDescriptor {
  external factory PermissionDescriptor();
}

extension PermissionDescriptorExtension on PermissionDescriptor {}

@JS('PermissionStatus')
@staticInterop
class PermissionStatus extends EventTarget {
  external factory PermissionStatus();
}

extension PermissionStatusExtension on PermissionStatus {
  external PermissionState get state;
  external JSString get name;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

@JS('PermissionSetParameters')
@staticInterop
class PermissionSetParameters {
  external factory PermissionSetParameters();
}

extension PermissionSetParametersExtension on PermissionSetParameters {}
