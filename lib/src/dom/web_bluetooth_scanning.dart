// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'permissions.dart';
import 'web_bluetooth.dart';

@JS()
@staticInterop
@anonymous
class BluetoothLEScanOptions {
  external factory BluetoothLEScanOptions({
    JSArray filters,
    bool keepRepeatedDevices,
    bool acceptAllAdvertisements,
  });
}

extension BluetoothLEScanOptionsExtension on BluetoothLEScanOptions {
  external set filters(JSArray value);
  external JSArray get filters;
  external set keepRepeatedDevices(bool value);
  external bool get keepRepeatedDevices;
  external set acceptAllAdvertisements(bool value);
  external bool get acceptAllAdvertisements;
}

@JS('BluetoothDataFilter')
@staticInterop
class BluetoothDataFilter {
  external factory BluetoothDataFilter([BluetoothDataFilterInit init]);
}

extension BluetoothDataFilterExtension on BluetoothDataFilter {
  external JSArrayBuffer get dataPrefix;
  external JSArrayBuffer get mask;
}

@JS('BluetoothManufacturerDataFilter')
@staticInterop
class BluetoothManufacturerDataFilter {
  external factory BluetoothManufacturerDataFilter([JSObject init]);
}

extension BluetoothManufacturerDataFilterExtension
    on BluetoothManufacturerDataFilter {}

@JS('BluetoothServiceDataFilter')
@staticInterop
class BluetoothServiceDataFilter {
  external factory BluetoothServiceDataFilter([JSObject init]);
}

extension BluetoothServiceDataFilterExtension on BluetoothServiceDataFilter {}

@JS('BluetoothLEScanFilter')
@staticInterop
class BluetoothLEScanFilter {
  external factory BluetoothLEScanFilter([BluetoothLEScanFilterInit init]);
}

extension BluetoothLEScanFilterExtension on BluetoothLEScanFilter {
  external String? get name;
  external String? get namePrefix;
  external JSArray get services;
  external BluetoothManufacturerDataFilter get manufacturerData;
  external BluetoothServiceDataFilter get serviceData;
}

@JS('BluetoothLEScan')
@staticInterop
class BluetoothLEScan {}

extension BluetoothLEScanExtension on BluetoothLEScan {
  external void stop();
  external JSArray get filters;
  external bool get keepRepeatedDevices;
  external bool get acceptAllAdvertisements;
  external bool get active;
}

@JS()
@staticInterop
@anonymous
class BluetoothLEScanPermissionDescriptor implements PermissionDescriptor {
  external factory BluetoothLEScanPermissionDescriptor({
    JSArray filters,
    bool keepRepeatedDevices,
    bool acceptAllAdvertisements,
  });
}

extension BluetoothLEScanPermissionDescriptorExtension
    on BluetoothLEScanPermissionDescriptor {
  external set filters(JSArray value);
  external JSArray get filters;
  external set keepRepeatedDevices(bool value);
  external bool get keepRepeatedDevices;
  external set acceptAllAdvertisements(bool value);
  external bool get acceptAllAdvertisements;
}

@JS('BluetoothLEScanPermissionResult')
@staticInterop
class BluetoothLEScanPermissionResult implements PermissionStatus {}

extension BluetoothLEScanPermissionResultExtension
    on BluetoothLEScanPermissionResult {
  external set scans(JSArray value);
  external JSArray get scans;
}
