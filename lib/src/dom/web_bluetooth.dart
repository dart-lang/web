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
import 'permissions.dart';
import 'webidl.dart';

typedef UUID = String;
typedef BluetoothServiceUUID = JSAny;
typedef BluetoothCharacteristicUUID = JSAny;
typedef BluetoothDescriptorUUID = JSAny;
extension type BluetoothDataFilterInit._(JSObject _) implements JSObject {
  external factory BluetoothDataFilterInit({
    BufferSource dataPrefix,
    BufferSource mask,
  });

  external set dataPrefix(BufferSource value);
  external BufferSource get dataPrefix;
  external set mask(BufferSource value);
  external BufferSource get mask;
}
extension type BluetoothManufacturerDataFilterInit._(JSObject _)
    implements BluetoothDataFilterInit, JSObject {
  external factory BluetoothManufacturerDataFilterInit(
      {required int companyIdentifier});

  external set companyIdentifier(int value);
  external int get companyIdentifier;
}
extension type BluetoothServiceDataFilterInit._(JSObject _)
    implements BluetoothDataFilterInit, JSObject {
  external factory BluetoothServiceDataFilterInit(
      {required BluetoothServiceUUID service});

  external set service(BluetoothServiceUUID value);
  external BluetoothServiceUUID get service;
}
extension type BluetoothLEScanFilterInit._(JSObject _) implements JSObject {
  external factory BluetoothLEScanFilterInit({
    JSArray services,
    String name,
    String namePrefix,
    JSArray manufacturerData,
    JSArray serviceData,
  });

  external set services(JSArray value);
  external JSArray get services;
  external set name(String value);
  external String get name;
  external set namePrefix(String value);
  external String get namePrefix;
  external set manufacturerData(JSArray value);
  external JSArray get manufacturerData;
  external set serviceData(JSArray value);
  external JSArray get serviceData;
}
extension type RequestDeviceOptions._(JSObject _) implements JSObject {
  external factory RequestDeviceOptions({
    JSArray filters,
    JSArray exclusionFilters,
    JSArray optionalServices,
    JSArray optionalManufacturerData,
    bool acceptAllDevices,
  });

  external set filters(JSArray value);
  external JSArray get filters;
  external set exclusionFilters(JSArray value);
  external JSArray get exclusionFilters;
  external set optionalServices(JSArray value);
  external JSArray get optionalServices;
  external set optionalManufacturerData(JSArray value);
  external JSArray get optionalManufacturerData;
  external set acceptAllDevices(bool value);
  external bool get acceptAllDevices;
}
extension type Bluetooth._(JSObject _) implements EventTarget, JSObject {
  /// The **`getAvailability()`** method of the [Bluetooth] interface returns
  /// `true` if the device has a Bluetooth adapter, and false otherwise (unless
  /// the user has configured the browser to not expose a real value).
  ///
  /// > **Note:** A user might not allow use of Web Bluetooth API, even if
  /// > `getAvailability()` returns `true`
  /// > ([Bluetooth.requestDevice] might
  /// > not resolve with a [BluetoothDevice]). Also, a user can configure their
  /// > browser to return a fixed value instead of a real one.
  external JSPromise getAvailability();

  /// The **`getDevices()`** method of
  /// [Bluetooth] interface of
  /// [Web Bluetooth API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Bluetooth_API)
  /// exposes the
  /// Bluetooth devices this origin is allowed to access. This method does not
  /// display any
  /// permission prompts.
  ///
  /// > **Note:** This method returns a [BluetoothDevice] for each
  /// > device the origin is currently allowed to access, even the ones that are
  /// > out of range
  /// > or powered off.
  external JSPromise getDevices();

  /// The **`Bluetooth.requestDevice()`** method of the
  /// [Bluetooth] interface returns a `Promise` to a
  /// [BluetoothDevice] object with the specified options. If there is no
  /// chooser
  /// UI, this method returns the first device matching the criteria.
  external JSPromise requestDevice([RequestDeviceOptions options]);
  external set onavailabilitychanged(EventHandler value);
  external EventHandler get onavailabilitychanged;
  external BluetoothDevice? get referringDevice;
  external set onadvertisementreceived(EventHandler value);
  external EventHandler get onadvertisementreceived;
  external set ongattserverdisconnected(EventHandler value);
  external EventHandler get ongattserverdisconnected;
  external set oncharacteristicvaluechanged(EventHandler value);
  external EventHandler get oncharacteristicvaluechanged;
  external set onserviceadded(EventHandler value);
  external EventHandler get onserviceadded;
  external set onservicechanged(EventHandler value);
  external EventHandler get onservicechanged;
  external set onserviceremoved(EventHandler value);
  external EventHandler get onserviceremoved;
}
extension type BluetoothPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory BluetoothPermissionDescriptor({
    String deviceId,
    JSArray filters,
    JSArray optionalServices,
    JSArray optionalManufacturerData,
    bool acceptAllDevices,
  });

  external set deviceId(String value);
  external String get deviceId;
  external set filters(JSArray value);
  external JSArray get filters;
  external set optionalServices(JSArray value);
  external JSArray get optionalServices;
  external set optionalManufacturerData(JSArray value);
  external JSArray get optionalManufacturerData;
  external set acceptAllDevices(bool value);
  external bool get acceptAllDevices;
}
extension type AllowedBluetoothDevice._(JSObject _) implements JSObject {
  external factory AllowedBluetoothDevice({
    required String deviceId,
    required bool mayUseGATT,
    required JSAny allowedServices,
    required JSArray allowedManufacturerData,
  });

  external set deviceId(String value);
  external String get deviceId;
  external set mayUseGATT(bool value);
  external bool get mayUseGATT;
  external set allowedServices(JSAny value);
  external JSAny get allowedServices;
  external set allowedManufacturerData(JSArray value);
  external JSArray get allowedManufacturerData;
}
extension type BluetoothPermissionStorage._(JSObject _) implements JSObject {
  external factory BluetoothPermissionStorage(
      {required JSArray allowedDevices});

  external set allowedDevices(JSArray value);
  external JSArray get allowedDevices;
}
extension type BluetoothPermissionResult._(JSObject _)
    implements PermissionStatus, JSObject {
  external set devices(JSArray value);
  external JSArray get devices;
}
extension type ValueEvent._(JSObject _) implements Event, JSObject {
  external factory ValueEvent(
    String type, [
    ValueEventInit initDict,
  ]);

  external JSAny? get value;
}
extension type ValueEventInit._(JSObject _) implements EventInit, JSObject {
  external factory ValueEventInit({JSAny? value});

  external set value(JSAny? value);
  external JSAny? get value;
}
extension type BluetoothDevice._(JSObject _) implements EventTarget, JSObject {
  external JSPromise forget();
  external JSPromise watchAdvertisements([WatchAdvertisementsOptions options]);
  external String get id;
  external String? get name;
  external BluetoothRemoteGATTServer? get gatt;
  external bool get watchingAdvertisements;
  external set onadvertisementreceived(EventHandler value);
  external EventHandler get onadvertisementreceived;
  external set ongattserverdisconnected(EventHandler value);
  external EventHandler get ongattserverdisconnected;
  external set oncharacteristicvaluechanged(EventHandler value);
  external EventHandler get oncharacteristicvaluechanged;
  external set onserviceadded(EventHandler value);
  external EventHandler get onserviceadded;
  external set onservicechanged(EventHandler value);
  external EventHandler get onservicechanged;
  external set onserviceremoved(EventHandler value);
  external EventHandler get onserviceremoved;
}
extension type WatchAdvertisementsOptions._(JSObject _) implements JSObject {
  external factory WatchAdvertisementsOptions({AbortSignal signal});

  external set signal(AbortSignal value);
  external AbortSignal get signal;
}
extension type BluetoothManufacturerDataMap._(JSObject _) implements JSObject {}
extension type BluetoothServiceDataMap._(JSObject _) implements JSObject {}
extension type BluetoothAdvertisingEvent._(JSObject _)
    implements Event, JSObject {
  external factory BluetoothAdvertisingEvent(
    String type,
    BluetoothAdvertisingEventInit init,
  );

  external BluetoothDevice get device;
  external JSArray get uuids;
  external String? get name;
  external int? get appearance;
  external int? get txPower;
  external int? get rssi;
  external BluetoothManufacturerDataMap get manufacturerData;
  external BluetoothServiceDataMap get serviceData;
}
extension type BluetoothAdvertisingEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory BluetoothAdvertisingEventInit({
    required BluetoothDevice device,
    JSArray uuids,
    String name,
    int appearance,
    int txPower,
    int rssi,
    BluetoothManufacturerDataMap manufacturerData,
    BluetoothServiceDataMap serviceData,
  });

  external set device(BluetoothDevice value);
  external BluetoothDevice get device;
  external set uuids(JSArray value);
  external JSArray get uuids;
  external set name(String value);
  external String get name;
  external set appearance(int value);
  external int get appearance;
  external set txPower(int value);
  external int get txPower;
  external set rssi(int value);
  external int get rssi;
  external set manufacturerData(BluetoothManufacturerDataMap value);
  external BluetoothManufacturerDataMap get manufacturerData;
  external set serviceData(BluetoothServiceDataMap value);
  external BluetoothServiceDataMap get serviceData;
}
extension type BluetoothRemoteGATTServer._(JSObject _) implements JSObject {
  /// The
  /// **`BluetoothRemoteGATTServer.connect()`** method causes the
  /// script execution environment to connect to `this.device`.
  external JSPromise connect();

  /// The **`BluetoothRemoteGATTServer.disconnect()`** method causes
  /// the script execution environment to disconnect from `this.device`.
  external void disconnect();

  /// The **`BluetoothRemoteGATTServer.getPrimaryService()`** method
  /// returns a promise to the primary [BluetoothRemoteGATTService] offered by
  /// the
  /// Bluetooth device for a specified bluetooth service UUID.
  external JSPromise getPrimaryService(BluetoothServiceUUID service);

  /// The **BluetoothRemoteGATTServer.getPrimaryServices()** method returns a
  /// promise to a list of primary [BluetoothRemoteGATTService] objects offered
  /// by the
  /// Bluetooth device for a specified `BluetoothServiceUUID`.
  external JSPromise getPrimaryServices([BluetoothServiceUUID service]);
  external BluetoothDevice get device;
  external bool get connected;
}
extension type BluetoothRemoteGATTService._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`BluetoothGATTService.getCharacteristic()`** method
  /// returns a `Promise` to an instance of
  /// [BluetoothRemoteGATTCharacteristic] for a given universally unique
  /// identifier
  /// (UUID).
  external JSPromise getCharacteristic(
      BluetoothCharacteristicUUID characteristic);

  /// The **`BluetoothGATTService.getCharacteristics()`** method
  /// returns a `Promise` to a list of [BluetoothRemoteGATTCharacteristic]
  /// instances for a given universally unique identifier (UUID).
  external JSPromise getCharacteristics(
      [BluetoothCharacteristicUUID characteristic]);
  external JSPromise getIncludedService(BluetoothServiceUUID service);
  external JSPromise getIncludedServices([BluetoothServiceUUID service]);
  external BluetoothDevice get device;
  external UUID get uuid;
  external bool get isPrimary;
  external set oncharacteristicvaluechanged(EventHandler value);
  external EventHandler get oncharacteristicvaluechanged;
  external set onserviceadded(EventHandler value);
  external EventHandler get onserviceadded;
  external set onservicechanged(EventHandler value);
  external EventHandler get onservicechanged;
  external set onserviceremoved(EventHandler value);
  external EventHandler get onserviceremoved;
}
extension type BluetoothRemoteGATTCharacteristic._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`BluetoothRemoteGATTCharacteristic.getDescriptor()`** method
  /// returns a `Promise` that resolves to the
  /// first [BluetoothRemoteGATTDescriptor] for a given descriptor UUID.
  external JSPromise getDescriptor(BluetoothDescriptorUUID descriptor);

  /// The **`BluetoothRemoteGATTCharacteristic.getDescriptors()`** method
  /// returns a `Promise` that resolves to an `Array` of all
  /// [BluetoothRemoteGATTDescriptor] objects for a given descriptor UUID.
  external JSPromise getDescriptors([BluetoothDescriptorUUID descriptor]);

  /// The **`BluetoothRemoteGATTCharacteristic.readValue()`** method
  /// returns a `Promise` that resolves to a `DataView` holding a
  /// duplicate of the `value` property if it is available and supported.
  /// Otherwise
  /// it throws an error.
  external JSPromise readValue();

  /// Use [BluetoothRemoteGATTCharacteristic.writeValueWithResponse] and
  /// [BluetoothRemoteGATTCharacteristic.writeValueWithoutResponse] instead.
  ///
  /// The **`BluetoothRemoteGATTCharacteristic.writeValue()`** method sets a
  /// [BluetoothRemoteGATTCharacteristic] object's `value` property to the bytes
  /// contained in a given `ArrayBuffer`, calls
  /// [`WriteCharacteristicValue`(_this_=`this`, _value=value_,
  /// _response_=`"optional"`)](https://webbluetoothcg.github.io/web-bluetooth/#writecharacteristicvalue),
  /// and returns the resulting `Promise`.
  external JSPromise writeValue(BufferSource value);

  /// The **`BluetoothRemoteGATTCharacteristic.writeValueWithResponse()`**
  /// method sets a [BluetoothRemoteGATTCharacteristic] object's `value`
  /// property to the bytes contained in a given `ArrayBuffer`, calls
  /// [`WriteCharacteristicValue`(_this_=`this`, _value=value_,
  /// _response_=`"required"`)](https://webbluetoothcg.github.io/web-bluetooth/#writecharacteristicvalue),
  /// and returns the resulting `Promise`.
  external JSPromise writeValueWithResponse(BufferSource value);

  /// The **`BluetoothRemoteGATTCharacteristic.writeValueWithoutResponse()`**
  /// method sets a [BluetoothRemoteGATTCharacteristic] object's `value`
  /// property to the bytes contained in a given `ArrayBuffer`, calls
  /// [`WriteCharacteristicValue`(_this_=`this`, _value=value_,
  /// _response_=`"never"`)](https://webbluetoothcg.github.io/web-bluetooth/#writecharacteristicvalue),
  /// and returns the resulting `Promise`.
  external JSPromise writeValueWithoutResponse(BufferSource value);

  /// The **`BluetoothRemoteGATTCharacteristic.startNotifications()`** method
  /// returns a `Promise` to the BluetoothRemoteGATTCharacteristic instance when
  /// there is an active notification on it.
  external JSPromise startNotifications();

  /// The **`BluetoothRemoteGATTCharacteristic.stopNotifications()`** method
  /// returns a `Promise` to the BluetoothRemoteGATTCharacteristic instance when
  /// there is no longer an active notification on it.
  external JSPromise stopNotifications();
  external BluetoothRemoteGATTService get service;
  external UUID get uuid;
  external BluetoothCharacteristicProperties get properties;
  external JSDataView? get value;
  external set oncharacteristicvaluechanged(EventHandler value);
  external EventHandler get oncharacteristicvaluechanged;
}
extension type BluetoothCharacteristicProperties._(JSObject _)
    implements JSObject {
  external bool get broadcast;
  external bool get read;
  external bool get writeWithoutResponse;
  external bool get write;
  external bool get notify;
  external bool get indicate;
  external bool get authenticatedSignedWrites;
  external bool get reliableWrite;
  external bool get writableAuxiliaries;
}
extension type BluetoothRemoteGATTDescriptor._(JSObject _) implements JSObject {
  /// The
  /// **`BluetoothRemoteGATTDescriptor.readValue()`**
  /// method returns a `Promise` that resolves to
  /// an `ArrayBuffer` holding a duplicate of the `value` property if
  /// it is available and supported. Otherwise it throws an error.
  external JSPromise readValue();

  /// The **`BluetoothRemoteGATTDescriptor.writeValue()`**
  /// method sets the value property to the bytes contained in
  /// an `ArrayBuffer` and returns a `Promise`.
  external JSPromise writeValue(BufferSource value);
  external BluetoothRemoteGATTCharacteristic get characteristic;
  external UUID get uuid;
  external JSDataView? get value;
}
extension type BluetoothUUID._(JSObject _) implements JSObject {
  external static UUID getService(JSAny name);
  external static UUID getCharacteristic(JSAny name);
  external static UUID getDescriptor(JSAny name);
  external static UUID canonicalUUID(int alias);
}
