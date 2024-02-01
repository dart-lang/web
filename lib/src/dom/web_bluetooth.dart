// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

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
  external JSPromise getAvailability();
  external JSPromise getDevices();
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
  external JSPromise connect();
  external void disconnect();
  external JSPromise getPrimaryService(BluetoothServiceUUID service);
  external JSPromise getPrimaryServices([BluetoothServiceUUID service]);
  external BluetoothDevice get device;
  external bool get connected;
}
extension type BluetoothRemoteGATTService._(JSObject _)
    implements EventTarget, JSObject {
  external JSPromise getCharacteristic(
      BluetoothCharacteristicUUID characteristic);
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
  external JSPromise getDescriptor(BluetoothDescriptorUUID descriptor);
  external JSPromise getDescriptors([BluetoothDescriptorUUID descriptor]);
  external JSPromise readValue();
  external JSPromise writeValue(BufferSource value);
  external JSPromise writeValueWithResponse(BufferSource value);
  external JSPromise writeValueWithoutResponse(BufferSource value);
  external JSPromise startNotifications();
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
  external JSPromise readValue();
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
