// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef PermissionState = String;
extension type Permissions._(JSObject _) implements JSObject {
  external JSPromise request(JSObject permissionDesc);

  /// The **`Permissions.revoke()`** method of the
  /// [Permissions] interface reverts a currently set permission back to its
  /// default state, which is usually `prompt`.
  /// This method is called on the global [Permissions] object
  /// [navigator.permissions].
  external JSPromise revoke(JSObject permissionDesc);

  /// The **`Permissions.query()`** method of the [Permissions] interface
  /// returns the state of a user permission on the global scope.
  external JSPromise query(JSObject permissionDesc);
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
