// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef ContactProperty = String;

/// The **`ContactAddress`** interface of the [contact_picker_api] represents a
/// physical address. Instances of this interface are retrieved from the
/// `address` property of the objects returned by
/// [ContactsManager.getProperties].
///
/// It may be useful to refer to the Universal Postal Union website's
/// [Addressing S42 standard](https://www.upu.int/en/Postal-Solutions/Programmes-Services/Addressing-Solutions#addressing-s42-standard)
/// materials, which provide information about international standards for
/// postal addresses.
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

/// The **`ContactsManager`** interface of the [Contact Picker API] allows users
/// to select entries from their contact list and share limited details of the
/// selected entries with a website or application.
///
/// The `ContactsManager` is available through the global [navigator.contacts]
/// property.
extension type ContactsManager._(JSObject _) implements JSObject {
  /// The **`getProperties()`** method of the
  /// [ContactsManager] interface returns a `Promise` which resolves
  /// with an `Array` of `strings` indicating which contact
  /// properties are available.
  external JSPromise getProperties();

  /// The **`select()`** method of the
  /// [ContactsManager] interface returns a `Promise` which, when
  /// resolved, presents the user with a contact picker which allows them to
  /// select contact(s)
  /// they wish to share. This method requires a user gesture for the `Promise`
  /// to
  /// resolve.
  external JSPromise select(
    JSArray properties, [
    ContactsSelectOptions options,
  ]);
}
