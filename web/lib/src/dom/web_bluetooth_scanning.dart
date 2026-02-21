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

import 'permissions.dart';
import 'web_bluetooth.dart';

extension type BluetoothLEScanOptions._(JSObject _) implements JSObject {
  external factory BluetoothLEScanOptions({
    JSArray<BluetoothLEScanFilterInit> filters,
    bool keepRepeatedDevices,
    bool acceptAllAdvertisements,
  });

  external JSArray<BluetoothLEScanFilterInit> get filters;
  external set filters(JSArray<BluetoothLEScanFilterInit> value);
  external bool get keepRepeatedDevices;
  external set keepRepeatedDevices(bool value);
  external bool get acceptAllAdvertisements;
  external set acceptAllAdvertisements(bool value);
}
extension type BluetoothDataFilter._(JSObject _) implements JSObject {
  external factory BluetoothDataFilter([BluetoothDataFilterInit init]);

  external JSArrayBuffer get dataPrefix;
  external JSArrayBuffer get mask;
}
extension type BluetoothManufacturerDataFilter._(JSObject _)
    implements JSObject {
  external factory BluetoothManufacturerDataFilter([JSObject init]);
}
extension type BluetoothServiceDataFilter._(JSObject _) implements JSObject {
  external factory BluetoothServiceDataFilter([JSObject init]);
}
extension type BluetoothLEScanFilter._(JSObject _) implements JSObject {
  external factory BluetoothLEScanFilter([BluetoothLEScanFilterInit init]);

  external String? get name;
  external String? get namePrefix;
  external JSArray<JSString> get services;
  external BluetoothManufacturerDataFilter get manufacturerData;
  external BluetoothServiceDataFilter get serviceData;
}
extension type BluetoothLEScan._(JSObject _) implements JSObject {
  external void stop();
  external JSArray<BluetoothLEScanFilter> get filters;
  external bool get keepRepeatedDevices;
  external bool get acceptAllAdvertisements;
  external bool get active;
}
extension type BluetoothLEScanPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory BluetoothLEScanPermissionDescriptor({
    required String name,
    JSArray<BluetoothLEScanFilterInit> filters,
    bool keepRepeatedDevices,
    bool acceptAllAdvertisements,
  });

  external JSArray<BluetoothLEScanFilterInit> get filters;
  external set filters(JSArray<BluetoothLEScanFilterInit> value);
  external bool get keepRepeatedDevices;
  external set keepRepeatedDevices(bool value);
  external bool get acceptAllAdvertisements;
  external set acceptAllAdvertisements(bool value);
}
extension type BluetoothLEScanPermissionResult._(JSObject _)
    implements PermissionStatus, JSObject {
  external JSArray<BluetoothLEScan> get scans;
  external set scans(JSArray<BluetoothLEScan> value);
}
