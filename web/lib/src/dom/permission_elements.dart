// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'geolocation.dart';
import 'html.dart';
import 'permissions.dart';

typedef InPagePermissionMixinBlockerReason = String;
extension type HTMLPermissionElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLPermissionElement] using the tag 'permission'.
  HTMLPermissionElement() : _ = document.createElement('permission');

  external static bool isTypeSupported(String type);
  external String get type;
  external set type(String value);
  external bool get isValid;
  external InPagePermissionMixinBlockerReason get invalidReason;
  external PermissionState get initialPermissionStatus;
  external PermissionState get permissionStatus;
  external EventHandler get onpromptaction;
  external set onpromptaction(EventHandler value);
  external EventHandler get onpromptdismiss;
  external set onpromptdismiss(EventHandler value);
  external EventHandler get onvalidationstatuschange;
  external set onvalidationstatuschange(EventHandler value);
}
extension type HTMLGeolocationElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLGeolocationElement] using the tag 'geolocation'.
  HTMLGeolocationElement() : _ = document.createElement('geolocation');

  external GeolocationPosition? get position;
  external GeolocationPositionError? get error;
  external bool get autolocate;
  external set autolocate(bool value);
  external bool get watch;
  external set watch(bool value);
  external EventHandler get onlocation;
  external set onlocation(EventHandler value);
  external bool get isValid;
  external InPagePermissionMixinBlockerReason get invalidReason;
  external PermissionState get initialPermissionStatus;
  external PermissionState get permissionStatus;
  external EventHandler get onpromptaction;
  external set onpromptaction(EventHandler value);
  external EventHandler get onpromptdismiss;
  external set onpromptdismiss(EventHandler value);
  external EventHandler get onvalidationstatuschange;
  external set onvalidationstatuschange(EventHandler value);
}
