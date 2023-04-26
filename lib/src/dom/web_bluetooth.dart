// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'permissions.dart';
import 'webidl.dart';

typedef UUID = JSString;
typedef BluetoothServiceUUID = JSAny;
typedef BluetoothCharacteristicUUID = JSAny;
typedef BluetoothDescriptorUUID = JSAny;

@JS()
@staticInterop
@anonymous
class BluetoothDataFilterInit {
  external factory BluetoothDataFilterInit({
    BufferSource dataPrefix,
    BufferSource mask,
  });
}

extension BluetoothDataFilterInitExtension on BluetoothDataFilterInit {
  external set dataPrefix(BufferSource value);
  external BufferSource get dataPrefix;
  external set mask(BufferSource value);
  external BufferSource get mask;
}

@JS()
@staticInterop
@anonymous
class BluetoothManufacturerDataFilterInit implements BluetoothDataFilterInit {
  external factory BluetoothManufacturerDataFilterInit(
      {required JSNumber companyIdentifier});
}

extension BluetoothManufacturerDataFilterInitExtension
    on BluetoothManufacturerDataFilterInit {
  external set companyIdentifier(JSNumber value);
  external JSNumber get companyIdentifier;
}

@JS()
@staticInterop
@anonymous
class BluetoothServiceDataFilterInit implements BluetoothDataFilterInit {
  external factory BluetoothServiceDataFilterInit(
      {required BluetoothServiceUUID service});
}

extension BluetoothServiceDataFilterInitExtension
    on BluetoothServiceDataFilterInit {
  external set service(BluetoothServiceUUID value);
  external BluetoothServiceUUID get service;
}

@JS()
@staticInterop
@anonymous
class BluetoothLEScanFilterInit {
  external factory BluetoothLEScanFilterInit({
    JSArray services,
    JSString name,
    JSString namePrefix,
    JSArray manufacturerData,
    JSArray serviceData,
  });
}

extension BluetoothLEScanFilterInitExtension on BluetoothLEScanFilterInit {
  external set services(JSArray value);
  external JSArray get services;
  external set name(JSString value);
  external JSString get name;
  external set namePrefix(JSString value);
  external JSString get namePrefix;
  external set manufacturerData(JSArray value);
  external JSArray get manufacturerData;
  external set serviceData(JSArray value);
  external JSArray get serviceData;
}

@JS()
@staticInterop
@anonymous
class RequestDeviceOptions {
  external factory RequestDeviceOptions({
    JSArray filters,
    JSArray exclusionFilters,
    JSArray optionalServices,
    JSArray optionalManufacturerData,
    JSBoolean acceptAllDevices,
  });
}

extension RequestDeviceOptionsExtension on RequestDeviceOptions {
  external set filters(JSArray value);
  external JSArray get filters;
  external set exclusionFilters(JSArray value);
  external JSArray get exclusionFilters;
  external set optionalServices(JSArray value);
  external JSArray get optionalServices;
  external set optionalManufacturerData(JSArray value);
  external JSArray get optionalManufacturerData;
  external set acceptAllDevices(JSBoolean value);
  external JSBoolean get acceptAllDevices;
}

@JS('Bluetooth')
@staticInterop
class Bluetooth
    implements
        EventTarget,
        BluetoothDeviceEventHandlers,
        CharacteristicEventHandlers,
        ServiceEventHandlers {}

extension BluetoothExtension on Bluetooth {
  external JSPromise getAvailability();
  external JSPromise getDevices();
  external JSPromise requestDevice([RequestDeviceOptions options]);
  external set onavailabilitychanged(EventHandler value);
  external EventHandler get onavailabilitychanged;
  external BluetoothDevice? get referringDevice;
}

@JS()
@staticInterop
@anonymous
class BluetoothPermissionDescriptor implements PermissionDescriptor {
  external factory BluetoothPermissionDescriptor({
    JSString deviceId,
    JSArray filters,
    JSArray optionalServices,
    JSArray optionalManufacturerData,
    JSBoolean acceptAllDevices,
  });
}

extension BluetoothPermissionDescriptorExtension
    on BluetoothPermissionDescriptor {
  external set deviceId(JSString value);
  external JSString get deviceId;
  external set filters(JSArray value);
  external JSArray get filters;
  external set optionalServices(JSArray value);
  external JSArray get optionalServices;
  external set optionalManufacturerData(JSArray value);
  external JSArray get optionalManufacturerData;
  external set acceptAllDevices(JSBoolean value);
  external JSBoolean get acceptAllDevices;
}

@JS()
@staticInterop
@anonymous
class AllowedBluetoothDevice {
  external factory AllowedBluetoothDevice({
    required JSString deviceId,
    required JSBoolean mayUseGATT,
    required JSAny allowedServices,
    required JSArray allowedManufacturerData,
  });
}

extension AllowedBluetoothDeviceExtension on AllowedBluetoothDevice {
  external set deviceId(JSString value);
  external JSString get deviceId;
  external set mayUseGATT(JSBoolean value);
  external JSBoolean get mayUseGATT;
  external set allowedServices(JSAny value);
  external JSAny get allowedServices;
  external set allowedManufacturerData(JSArray value);
  external JSArray get allowedManufacturerData;
}

@JS()
@staticInterop
@anonymous
class BluetoothPermissionStorage {
  external factory BluetoothPermissionStorage(
      {required JSArray allowedDevices});
}

extension BluetoothPermissionStorageExtension on BluetoothPermissionStorage {
  external set allowedDevices(JSArray value);
  external JSArray get allowedDevices;
}

@JS('BluetoothPermissionResult')
@staticInterop
class BluetoothPermissionResult implements PermissionStatus {}

extension BluetoothPermissionResultExtension on BluetoothPermissionResult {
  external set devices(JSArray value);
  external JSArray get devices;
}

@JS('ValueEvent')
@staticInterop
class ValueEvent implements Event {
  external factory ValueEvent(
    JSString type, [
    ValueEventInit initDict,
  ]);
}

extension ValueEventExtension on ValueEvent {
  external JSAny get value;
}

@JS()
@staticInterop
@anonymous
class ValueEventInit implements EventInit {
  external factory ValueEventInit({JSAny value});
}

extension ValueEventInitExtension on ValueEventInit {
  external set value(JSAny value);
  external JSAny get value;
}

@JS('BluetoothDevice')
@staticInterop
class BluetoothDevice
    implements
        EventTarget,
        BluetoothDeviceEventHandlers,
        CharacteristicEventHandlers,
        ServiceEventHandlers {}

extension BluetoothDeviceExtension on BluetoothDevice {
  external JSPromise forget();
  external JSPromise watchAdvertisements([WatchAdvertisementsOptions options]);
  external JSString get id;
  external JSString? get name;
  external BluetoothRemoteGATTServer? get gatt;
  external JSBoolean get watchingAdvertisements;
}

@JS()
@staticInterop
@anonymous
class WatchAdvertisementsOptions {
  external factory WatchAdvertisementsOptions({AbortSignal signal});
}

extension WatchAdvertisementsOptionsExtension on WatchAdvertisementsOptions {
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}

@JS('BluetoothManufacturerDataMap')
@staticInterop
class BluetoothManufacturerDataMap {}

extension BluetoothManufacturerDataMapExtension
    on BluetoothManufacturerDataMap {}

@JS('BluetoothServiceDataMap')
@staticInterop
class BluetoothServiceDataMap {}

extension BluetoothServiceDataMapExtension on BluetoothServiceDataMap {}

@JS('BluetoothAdvertisingEvent')
@staticInterop
class BluetoothAdvertisingEvent implements Event {
  external factory BluetoothAdvertisingEvent(
    JSString type,
    BluetoothAdvertisingEventInit init,
  );
}

extension BluetoothAdvertisingEventExtension on BluetoothAdvertisingEvent {
  external BluetoothDevice get device;
  external JSArray get uuids;
  external JSString? get name;
  external JSNumber? get appearance;
  external JSNumber? get txPower;
  external JSNumber? get rssi;
  external BluetoothManufacturerDataMap get manufacturerData;
  external BluetoothServiceDataMap get serviceData;
}

@JS()
@staticInterop
@anonymous
class BluetoothAdvertisingEventInit implements EventInit {
  external factory BluetoothAdvertisingEventInit({
    required BluetoothDevice device,
    JSArray uuids,
    JSString name,
    JSNumber appearance,
    JSNumber txPower,
    JSNumber rssi,
    BluetoothManufacturerDataMap manufacturerData,
    BluetoothServiceDataMap serviceData,
  });
}

extension BluetoothAdvertisingEventInitExtension
    on BluetoothAdvertisingEventInit {
  external set device(BluetoothDevice value);
  external BluetoothDevice get device;
  external set uuids(JSArray value);
  external JSArray get uuids;
  external set name(JSString value);
  external JSString get name;
  external set appearance(JSNumber value);
  external JSNumber get appearance;
  external set txPower(JSNumber value);
  external JSNumber get txPower;
  external set rssi(JSNumber value);
  external JSNumber get rssi;
  external set manufacturerData(BluetoothManufacturerDataMap value);
  external BluetoothManufacturerDataMap get manufacturerData;
  external set serviceData(BluetoothServiceDataMap value);
  external BluetoothServiceDataMap get serviceData;
}

@JS('BluetoothRemoteGATTServer')
@staticInterop
class BluetoothRemoteGATTServer {}

extension BluetoothRemoteGATTServerExtension on BluetoothRemoteGATTServer {
  external JSPromise connect();
  external JSVoid disconnect();
  external JSPromise getPrimaryService(BluetoothServiceUUID service);
  external JSPromise getPrimaryServices([BluetoothServiceUUID service]);
  external BluetoothDevice get device;
  external JSBoolean get connected;
}

@JS('BluetoothRemoteGATTService')
@staticInterop
class BluetoothRemoteGATTService
    implements EventTarget, CharacteristicEventHandlers, ServiceEventHandlers {}

extension BluetoothRemoteGATTServiceExtension on BluetoothRemoteGATTService {
  external JSPromise getCharacteristic(
      BluetoothCharacteristicUUID characteristic);
  external JSPromise getCharacteristics(
      [BluetoothCharacteristicUUID characteristic]);
  external JSPromise getIncludedService(BluetoothServiceUUID service);
  external JSPromise getIncludedServices([BluetoothServiceUUID service]);
  external BluetoothDevice get device;
  external UUID get uuid;
  external JSBoolean get isPrimary;
}

@JS('BluetoothRemoteGATTCharacteristic')
@staticInterop
class BluetoothRemoteGATTCharacteristic
    implements EventTarget, CharacteristicEventHandlers {}

extension BluetoothRemoteGATTCharacteristicExtension
    on BluetoothRemoteGATTCharacteristic {
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
}

@JS('BluetoothCharacteristicProperties')
@staticInterop
class BluetoothCharacteristicProperties {}

extension BluetoothCharacteristicPropertiesExtension
    on BluetoothCharacteristicProperties {
  external JSBoolean get broadcast;
  external JSBoolean get read;
  external JSBoolean get writeWithoutResponse;
  external JSBoolean get write;
  external JSBoolean get notify;
  external JSBoolean get indicate;
  external JSBoolean get authenticatedSignedWrites;
  external JSBoolean get reliableWrite;
  external JSBoolean get writableAuxiliaries;
}

@JS('BluetoothRemoteGATTDescriptor')
@staticInterop
class BluetoothRemoteGATTDescriptor {}

extension BluetoothRemoteGATTDescriptorExtension
    on BluetoothRemoteGATTDescriptor {
  external JSPromise readValue();
  external JSPromise writeValue(BufferSource value);
  external BluetoothRemoteGATTCharacteristic get characteristic;
  external UUID get uuid;
  external JSDataView? get value;
}

@JS('CharacteristicEventHandlers')
@staticInterop
class CharacteristicEventHandlers {}

extension CharacteristicEventHandlersExtension on CharacteristicEventHandlers {
  external set oncharacteristicvaluechanged(EventHandler value);
  external EventHandler get oncharacteristicvaluechanged;
}

@JS('BluetoothDeviceEventHandlers')
@staticInterop
class BluetoothDeviceEventHandlers {}

extension BluetoothDeviceEventHandlersExtension
    on BluetoothDeviceEventHandlers {
  external set onadvertisementreceived(EventHandler value);
  external EventHandler get onadvertisementreceived;
  external set ongattserverdisconnected(EventHandler value);
  external EventHandler get ongattserverdisconnected;
}

@JS('ServiceEventHandlers')
@staticInterop
class ServiceEventHandlers {}

extension ServiceEventHandlersExtension on ServiceEventHandlers {
  external set onserviceadded(EventHandler value);
  external EventHandler get onserviceadded;
  external set onservicechanged(EventHandler value);
  external EventHandler get onservicechanged;
  external set onserviceremoved(EventHandler value);
  external EventHandler get onserviceremoved;
}

@JS('BluetoothUUID')
@staticInterop
class BluetoothUUID {
  external static UUID getService(JSAny name);
  external static UUID getCharacteristic(JSAny name);
  external static UUID getDescriptor(JSAny name);
  external static UUID canonicalUUID(JSNumber alias);
}
