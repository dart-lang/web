// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'fileapi.dart';

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
  external JSArray<JSString> get addressLine;
}
extension type ContactInfo._(JSObject _) implements JSObject {
  external factory ContactInfo({
    JSArray<ContactAddress> address,
    JSArray<JSString> email,
    JSArray<Blob> icon,
    JSArray<JSString> name,
    JSArray<JSString> tel,
  });

  external set address(JSArray<ContactAddress> value);
  external JSArray<ContactAddress> get address;
  external set email(JSArray<JSString> value);
  external JSArray<JSString> get email;
  external set icon(JSArray<Blob> value);
  external JSArray<Blob> get icon;
  external set name(JSArray<JSString> value);
  external JSArray<JSString> get name;
  external set tel(JSArray<JSString> value);
  external JSArray<JSString> get tel;
}
extension type ContactsSelectOptions._(JSObject _) implements JSObject {
  external factory ContactsSelectOptions({bool multiple});

  external set multiple(bool value);
  external bool get multiple;
}
extension type ContactsManager._(JSObject _) implements JSObject {
  external JSPromise<JSArray<JSString>> getProperties();
  external JSPromise<JSArray<ContactInfo>> select(
    JSArray<JSString> properties, [
    ContactsSelectOptions options,
  ]);
}
