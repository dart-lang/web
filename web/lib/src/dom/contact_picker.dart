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

import 'fileapi.dart';

typedef ContactProperty = String;

/// The **`ContactAddress`** interface of the
/// [Contact Picker API](https://developer.mozilla.org/en-US/docs/Web/API/Contact_Picker_API)
/// represents a physical address. Instances of this interface are retrieved
/// from the `address` property of the objects returned by
/// [ContactsManager.getProperties].
///
/// It may be useful to refer to the Universal Postal Union website's
/// [Addressing S42 standard](https://www.upu.int/en/Postal-Solutions/Programmes-Services/Addressing-Solutions#addressing-s42-standard)
/// materials, which provide information about international standards for
/// postal addresses.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ContactAddress).
extension type ContactAddress._(JSObject _) implements JSObject {
  /// The **`toJSON()`** method of the [ContactAddress] interface is a standard
  /// serializer that returns a JSON representation of the `ContactAddress`
  /// object's properties.
  external JSObject toJSON();

  /// The **`city`** read-only property of the [ContactAddress] interface
  /// returns a string containing the city or town portion of the address.
  external String get city;

  /// The **`country`** read-only property of the [ContactAddress] interface is
  /// a string identifying the address's country using the
  /// [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
  /// standard. The string is always in its canonical upper-case form.
  ///
  /// Some examples of valid `country` values: `"US"`, `"GB"`, `"CN"`, or
  /// `"JP"`.
  external String get country;

  /// The read-only **`dependentLocality`** property of the [ContactAddress]
  /// interface is a string containing a locality or sublocality designation
  /// within a city, such as a neighborhood, borough, district, or, in the
  /// United Kingdom, a dependent locality. Also known as a _post town_.
  external String get dependentLocality;

  /// The **`organization`** read-only property of the [ContactAddress]
  /// interface returns a string containing the name of the organization, firm,
  /// company, or institution at the address.
  external String get organization;

  /// The read-only **`phone`** property of the [ContactAddress] interface
  /// returns a string containing the telephone number of the recipient or
  /// contact person at the address.
  external String get phone;

  /// The **`postalCode`** read-only property of the [ContactAddress] interface
  /// returns a string containing a code used by a jurisdiction for mail
  /// routing, for example, the
  /// [ZIP Code](https://en.wikipedia.org/wiki/ZIP_Code) in the United States or
  /// the
  /// [Postal Index Number](https://en.wikipedia.org/wiki/Postal_Index_Number)
  /// (PIN code) in India.
  external String get postalCode;

  /// The read-only **`recipient`** property of the [ContactAddress] interface
  /// returns a string containing the name of the recipient, purchaser, or
  /// contact person at the address.
  external String get recipient;

  /// The read-only **`region`** property of the [ContactAddress] interface
  /// returns a string containing the top-level administrative subdivision of
  /// the country in which the address is located. This may be a state,
  /// province, oblast, or prefecture.
  external String get region;

  /// The **`sortingCode`** read-only property of the [ContactAddress] interface
  /// returns a string containing a postal sorting code such as is used in
  /// France.
  external String get sortingCode;

  /// The **`addressLine`** read-only property of the [ContactAddress] interface
  /// is an array of strings, each specifying a line of the address that is not
  /// covered by one of the other properties of `ContactAddress`. The array may
  /// include the street name, the house number, apartment number, the rural
  /// delivery route, descriptive instructions, or the post office box.
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

  external JSArray<ContactAddress> get address;
  external set address(JSArray<ContactAddress> value);
  external JSArray<JSString> get email;
  external set email(JSArray<JSString> value);
  external JSArray<Blob> get icon;
  external set icon(JSArray<Blob> value);
  external JSArray<JSString> get name;
  external set name(JSArray<JSString> value);
  external JSArray<JSString> get tel;
  external set tel(JSArray<JSString> value);
}
extension type ContactsSelectOptions._(JSObject _) implements JSObject {
  external factory ContactsSelectOptions({bool multiple});

  external bool get multiple;
  external set multiple(bool value);
}

/// The **`ContactsManager`** interface of the
/// [Contact Picker API](https://developer.mozilla.org/en-US/docs/Web/API/Contact_Picker_API)
/// allows users to select entries from their contact list and share limited
/// details of the selected entries with a website or application.
///
/// The `ContactsManager` is available through the global [navigator.contacts]
/// property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ContactsManager).
extension type ContactsManager._(JSObject _) implements JSObject {
  /// The **`getProperties()`** method of the
  /// [ContactsManager] interface returns a `Promise` which resolves
  /// with an `Array` of `strings` indicating which contact
  /// properties are available.
  external JSPromise<JSArray<JSString>> getProperties();

  /// The **`select()`** method of the
  /// [ContactsManager] interface returns a `Promise` which, when
  /// resolved, presents the user with a contact picker which allows them to
  /// select contact(s)
  /// they wish to share. This method requires a user gesture for the `Promise`
  /// to
  /// resolve.
  external JSPromise<JSArray<ContactInfo>> select(
    JSArray<JSString> properties, [
    ContactsSelectOptions options,
  ]);
}
