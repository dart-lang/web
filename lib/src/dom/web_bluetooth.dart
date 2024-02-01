// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
    JSArray<BluetoothServiceUUID> services,
    String name,
    String namePrefix,
    JSArray<BluetoothManufacturerDataFilterInit> manufacturerData,
    JSArray<BluetoothServiceDataFilterInit> serviceData,
  });

  external set services(JSArray<BluetoothServiceUUID> value);
  external JSArray<BluetoothServiceUUID> get services;
  external set name(String value);
  external String get name;
  external set namePrefix(String value);
  external String get namePrefix;
  external set manufacturerData(
      JSArray<BluetoothManufacturerDataFilterInit> value);
  external JSArray<BluetoothManufacturerDataFilterInit> get manufacturerData;
  external set serviceData(JSArray<BluetoothServiceDataFilterInit> value);
  external JSArray<BluetoothServiceDataFilterInit> get serviceData;
}
extension type RequestDeviceOptions._(JSObject _) implements JSObject {
  external factory RequestDeviceOptions({
    JSArray<BluetoothLEScanFilterInit> filters,
    JSArray<BluetoothLEScanFilterInit> exclusionFilters,
    JSArray<BluetoothServiceUUID> optionalServices,
    JSArray<JSNumber> optionalManufacturerData,
    bool acceptAllDevices,
  });

  external set filters(JSArray<BluetoothLEScanFilterInit> value);
  external JSArray<BluetoothLEScanFilterInit> get filters;
  external set exclusionFilters(JSArray<BluetoothLEScanFilterInit> value);
  external JSArray<BluetoothLEScanFilterInit> get exclusionFilters;
  external set optionalServices(JSArray<BluetoothServiceUUID> value);
  external JSArray<BluetoothServiceUUID> get optionalServices;
  external set optionalManufacturerData(JSArray<JSNumber> value);
  external JSArray<JSNumber> get optionalManufacturerData;
  external set acceptAllDevices(bool value);
  external bool get acceptAllDevices;
}
extension type Bluetooth._(JSObject _) implements EventTarget, JSObject {
  external JSPromise<JSBoolean> getAvailability();
  external JSPromise<JSArray<BluetoothDevice>> getDevices();
  external JSPromise<BluetoothDevice> requestDevice(
      [RequestDeviceOptions options]);
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
    JSArray<BluetoothLEScanFilterInit> filters,
    JSArray<BluetoothServiceUUID> optionalServices,
    JSArray<JSNumber> optionalManufacturerData,
    bool acceptAllDevices,
  });

  external set deviceId(String value);
  external String get deviceId;
  external set filters(JSArray<BluetoothLEScanFilterInit> value);
  external JSArray<BluetoothLEScanFilterInit> get filters;
  external set optionalServices(JSArray<BluetoothServiceUUID> value);
  external JSArray<BluetoothServiceUUID> get optionalServices;
  external set optionalManufacturerData(JSArray<JSNumber> value);
  external JSArray<JSNumber> get optionalManufacturerData;
  external set acceptAllDevices(bool value);
  external bool get acceptAllDevices;
}
extension type AllowedBluetoothDevice._(JSObject _) implements JSObject {
  external factory AllowedBluetoothDevice({
    required String deviceId,
    required bool mayUseGATT,
    required JSAny allowedServices,
    required JSArray<JSNumber> allowedManufacturerData,
  });

  external set deviceId(String value);
  external String get deviceId;
  external set mayUseGATT(bool value);
  external bool get mayUseGATT;
  external set allowedServices(JSAny value);
  external JSAny get allowedServices;
  external set allowedManufacturerData(JSArray<JSNumber> value);
  external JSArray<JSNumber> get allowedManufacturerData;
}
extension type BluetoothPermissionStorage._(JSObject _) implements JSObject {
  external factory BluetoothPermissionStorage(
      {required JSArray<AllowedBluetoothDevice> allowedDevices});

  external set allowedDevices(JSArray<AllowedBluetoothDevice> value);
  external JSArray<AllowedBluetoothDevice> get allowedDevices;
}
extension type BluetoothPermissionResult._(JSObject _)
    implements PermissionStatus, JSObject {
  external set devices(JSArray<BluetoothDevice> value);
  external JSArray<BluetoothDevice> get devices;
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
  external JSPromise<JSAny?> forget();
  external JSPromise<JSAny?> watchAdvertisements(
      [WatchAdvertisementsOptions options]);
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
  external JSArray<JSString> get uuids;
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
    JSArray<JSAny> uuids,
    String name,
    int appearance,
    int txPower,
    int rssi,
    BluetoothManufacturerDataMap manufacturerData,
    BluetoothServiceDataMap serviceData,
  });

  external set device(BluetoothDevice value);
  external BluetoothDevice get device;
  external set uuids(JSArray<JSAny> value);
  external JSArray<JSAny> get uuids;
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
  external JSPromise<BluetoothRemoteGATTServer> connect();
  external void disconnect();
  external JSPromise<BluetoothRemoteGATTService> getPrimaryService(
      BluetoothServiceUUID service);
  external JSPromise<JSArray<BluetoothRemoteGATTService>> getPrimaryServices(
      [BluetoothServiceUUID service]);
  external BluetoothDevice get device;
  external bool get connected;
}
extension type BluetoothRemoteGATTService._(JSObject _)
    implements EventTarget, JSObject {
  external JSPromise<BluetoothRemoteGATTCharacteristic> getCharacteristic(
      BluetoothCharacteristicUUID characteristic);
  external JSPromise<JSArray<BluetoothRemoteGATTCharacteristic>>
      getCharacteristics([BluetoothCharacteristicUUID characteristic]);
  external JSPromise<BluetoothRemoteGATTService> getIncludedService(
      BluetoothServiceUUID service);
  external JSPromise<JSArray<BluetoothRemoteGATTService>> getIncludedServices(
      [BluetoothServiceUUID service]);
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
  external JSPromise<BluetoothRemoteGATTDescriptor> getDescriptor(
      BluetoothDescriptorUUID descriptor);
  external JSPromise<JSArray<BluetoothRemoteGATTDescriptor>> getDescriptors(
      [BluetoothDescriptorUUID descriptor]);
  external JSPromise<JSDataView> readValue();
  external JSPromise<JSAny?> writeValue(BufferSource value);
  external JSPromise<JSAny?> writeValueWithResponse(BufferSource value);
  external JSPromise<JSAny?> writeValueWithoutResponse(BufferSource value);
  external JSPromise<BluetoothRemoteGATTCharacteristic> startNotifications();
  external JSPromise<BluetoothRemoteGATTCharacteristic> stopNotifications();
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
  external JSPromise<JSDataView> readValue();
  external JSPromise<JSAny?> writeValue(BufferSource value);
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
