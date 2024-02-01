// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

typedef ContactProperty = String;
extension type ContactAddress._(JSObject _) implements JSObject {
  external JSObject toJSON();
  external String get city;
  external String get country;
  external String get dependentLocality;
  external String get organization;
  external String get phone;
  external String get postalCode;
  external String get recipient;
  external String get region;
  external String get sortingCode;
  external JSArray get addressLine;
}
extension type ContactInfo._(JSObject _) implements JSObject {
  external factory ContactInfo({
    JSArray address,
    JSArray email,
    JSArray icon,
    JSArray name,
    JSArray tel,
  });

  external set address(JSArray value);
  external JSArray get address;
  external set email(JSArray value);
  external JSArray get email;
  external set icon(JSArray value);
  external JSArray get icon;
  external set name(JSArray value);
  external JSArray get name;
  external set tel(JSArray value);
  external JSArray get tel;
}
extension type ContactsSelectOptions._(JSObject _) implements JSObject {
  external factory ContactsSelectOptions({bool multiple});

  external set multiple(bool value);
  external bool get multiple;
}
extension type ContactsManager._(JSObject _) implements JSObject {
  external JSPromise getProperties();
  external JSPromise select(
    JSArray properties, [
    ContactsSelectOptions options,
  ]);
}
