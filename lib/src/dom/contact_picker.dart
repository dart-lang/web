// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef ContactProperty = JSString;

@JS('ContactAddress')
@staticInterop
class ContactAddress {
  external factory ContactAddress();
}

extension ContactAddressExtension on ContactAddress {
  external JSObject toJSON();
  external JSString get city;
  external JSString get country;
  external JSString get dependentLocality;
  external JSString get organization;
  external JSString get phone;
  external JSString get postalCode;
  external JSString get recipient;
  external JSString get region;
  external JSString get sortingCode;
  external JSArray get addressLine;
}

@JS('ContactInfo')
@staticInterop
class ContactInfo {
  external factory ContactInfo();
}

extension ContactInfoExtension on ContactInfo {}

@JS('ContactsSelectOptions')
@staticInterop
class ContactsSelectOptions {
  external factory ContactsSelectOptions();
}

extension ContactsSelectOptionsExtension on ContactsSelectOptions {}

@JS('ContactsManager')
@staticInterop
class ContactsManager {
  external factory ContactsManager();
}

extension ContactsManagerExtension on ContactsManager {
  external JSPromise getProperties();
  external JSPromise select(JSArray properties);
  external JSPromise select1(
    JSArray properties,
    ContactsSelectOptions options,
  );
}
