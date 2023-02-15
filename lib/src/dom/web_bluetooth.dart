// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';
import 'permissions.dart';
import 'webidl.dart';

typedef UUID = JSString;
typedef BluetoothServiceUUID = JSAny;
typedef BluetoothCharacteristicUUID = JSAny;
typedef BluetoothDescriptorUUID = JSAny;

@JS('BluetoothDataFilterInit')
@staticInterop
class BluetoothDataFilterInit {
  external factory BluetoothDataFilterInit();
}

extension BluetoothDataFilterInitExtension on BluetoothDataFilterInit {}

@JS('BluetoothManufacturerDataFilterInit')
@staticInterop
class BluetoothManufacturerDataFilterInit extends BluetoothDataFilterInit {
  external factory BluetoothManufacturerDataFilterInit();
}

extension BluetoothManufacturerDataFilterInitExtension
    on BluetoothManufacturerDataFilterInit {}

@JS('BluetoothServiceDataFilterInit')
@staticInterop
class BluetoothServiceDataFilterInit extends BluetoothDataFilterInit {
  external factory BluetoothServiceDataFilterInit();
}

extension BluetoothServiceDataFilterInitExtension
    on BluetoothServiceDataFilterInit {}

@JS('BluetoothLEScanFilterInit')
@staticInterop
class BluetoothLEScanFilterInit {
  external factory BluetoothLEScanFilterInit();
}

extension BluetoothLEScanFilterInitExtension on BluetoothLEScanFilterInit {}

@JS('RequestDeviceOptions')
@staticInterop
class RequestDeviceOptions {
  external factory RequestDeviceOptions();
}

extension RequestDeviceOptionsExtension on RequestDeviceOptions {}

@JS('Bluetooth')
@staticInterop
class Bluetooth extends EventTarget
    implements
        BluetoothDeviceEventHandlers,
        CharacteristicEventHandlers,
        ServiceEventHandlers {
  external factory Bluetooth();
}

extension BluetoothExtension on Bluetooth {
  external JSPromise getAvailability();
  external set onavailabilitychanged(EventHandler value);
  external EventHandler get onavailabilitychanged;
  external BluetoothDevice? get referringDevice;
  external JSPromise getDevices();
  external JSPromise requestDevice();
  external JSPromise requestDevice1(RequestDeviceOptions options);
}

@JS('BluetoothPermissionDescriptor')
@staticInterop
class BluetoothPermissionDescriptor extends PermissionDescriptor {
  external factory BluetoothPermissionDescriptor();
}

extension BluetoothPermissionDescriptorExtension
    on BluetoothPermissionDescriptor {}

@JS('AllowedBluetoothDevice')
@staticInterop
class AllowedBluetoothDevice {
  external factory AllowedBluetoothDevice();
}

extension AllowedBluetoothDeviceExtension on AllowedBluetoothDevice {}

@JS('BluetoothPermissionStorage')
@staticInterop
class BluetoothPermissionStorage {
  external factory BluetoothPermissionStorage();
}

extension BluetoothPermissionStorageExtension on BluetoothPermissionStorage {}

@JS('BluetoothPermissionResult')
@staticInterop
class BluetoothPermissionResult extends PermissionStatus {
  external factory BluetoothPermissionResult();
}

extension BluetoothPermissionResultExtension on BluetoothPermissionResult {
  external set devices(JSArray value);
  external JSArray get devices;
}

@JS('ValueEvent')
@staticInterop
class ValueEvent extends Event {
  external factory ValueEvent();

  external factory ValueEvent.a1(JSString type);

  external factory ValueEvent.a2(
    JSString type,
    ValueEventInit initDict,
  );
}

extension ValueEventExtension on ValueEvent {
  external JSAny get value;
}

@JS('ValueEventInit')
@staticInterop
class ValueEventInit extends EventInit {
  external factory ValueEventInit();
}

extension ValueEventInitExtension on ValueEventInit {}

@JS('BluetoothDevice')
@staticInterop
class BluetoothDevice extends EventTarget
    implements
        BluetoothDeviceEventHandlers,
        CharacteristicEventHandlers,
        ServiceEventHandlers {
  external factory BluetoothDevice();
}

extension BluetoothDeviceExtension on BluetoothDevice {
  external JSString get id;
  external JSString? get name;
  external BluetoothRemoteGATTServer? get gatt;
  external JSPromise forget();
  external JSPromise watchAdvertisements();
  external JSPromise watchAdvertisements1(WatchAdvertisementsOptions options);
  external JSBoolean get watchingAdvertisements;
}

@JS('WatchAdvertisementsOptions')
@staticInterop
class WatchAdvertisementsOptions {
  external factory WatchAdvertisementsOptions();
}

extension WatchAdvertisementsOptionsExtension on WatchAdvertisementsOptions {}

@JS('BluetoothManufacturerDataMap')
@staticInterop
class BluetoothManufacturerDataMap {
  external factory BluetoothManufacturerDataMap();
}

extension BluetoothManufacturerDataMapExtension
    on BluetoothManufacturerDataMap {}

@JS('BluetoothServiceDataMap')
@staticInterop
class BluetoothServiceDataMap {
  external factory BluetoothServiceDataMap();
}

extension BluetoothServiceDataMapExtension on BluetoothServiceDataMap {}

@JS('BluetoothAdvertisingEvent')
@staticInterop
class BluetoothAdvertisingEvent extends Event {
  external factory BluetoothAdvertisingEvent();

  external factory BluetoothAdvertisingEvent.a1(
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

@JS('BluetoothAdvertisingEventInit')
@staticInterop
class BluetoothAdvertisingEventInit extends EventInit {
  external factory BluetoothAdvertisingEventInit();
}

extension BluetoothAdvertisingEventInitExtension
    on BluetoothAdvertisingEventInit {}

@JS('BluetoothRemoteGATTServer')
@staticInterop
class BluetoothRemoteGATTServer {
  external factory BluetoothRemoteGATTServer();
}

extension BluetoothRemoteGATTServerExtension on BluetoothRemoteGATTServer {
  external BluetoothDevice get device;
  external JSBoolean get connected;
  external JSPromise connect();
  external JSVoid disconnect();
  external JSPromise getPrimaryService(BluetoothServiceUUID service);
  external JSPromise getPrimaryServices();
  external JSPromise getPrimaryServices1(BluetoothServiceUUID service);
}

@JS('BluetoothRemoteGATTService')
@staticInterop
class BluetoothRemoteGATTService extends EventTarget
    implements CharacteristicEventHandlers, ServiceEventHandlers {
  external factory BluetoothRemoteGATTService();
}

extension BluetoothRemoteGATTServiceExtension on BluetoothRemoteGATTService {
  external BluetoothDevice get device;
  external UUID get uuid;
  external JSBoolean get isPrimary;
  external JSPromise getCharacteristic(
      BluetoothCharacteristicUUID characteristic);
  external JSPromise getCharacteristics();
  external JSPromise getCharacteristics1(
      BluetoothCharacteristicUUID characteristic);
  external JSPromise getIncludedService(BluetoothServiceUUID service);
  external JSPromise getIncludedServices();
  external JSPromise getIncludedServices1(BluetoothServiceUUID service);
}

@JS('BluetoothRemoteGATTCharacteristic')
@staticInterop
class BluetoothRemoteGATTCharacteristic extends EventTarget
    implements CharacteristicEventHandlers {
  external factory BluetoothRemoteGATTCharacteristic();
}

extension BluetoothRemoteGATTCharacteristicExtension
    on BluetoothRemoteGATTCharacteristic {
  external BluetoothRemoteGATTService get service;
  external UUID get uuid;
  external BluetoothCharacteristicProperties get properties;
  external JSDataView? get value;
  external JSPromise getDescriptor(BluetoothDescriptorUUID descriptor);
  external JSPromise getDescriptors();
  external JSPromise getDescriptors1(BluetoothDescriptorUUID descriptor);
  external JSPromise readValue();
  external JSPromise writeValue(BufferSource value);
  external JSPromise writeValueWithResponse(BufferSource value);
  external JSPromise writeValueWithoutResponse(BufferSource value);
  external JSPromise startNotifications();
  external JSPromise stopNotifications();
}

@JS('BluetoothCharacteristicProperties')
@staticInterop
class BluetoothCharacteristicProperties {
  external factory BluetoothCharacteristicProperties();
}

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
class BluetoothRemoteGATTDescriptor {
  external factory BluetoothRemoteGATTDescriptor();
}

extension BluetoothRemoteGATTDescriptorExtension
    on BluetoothRemoteGATTDescriptor {
  external BluetoothRemoteGATTCharacteristic get characteristic;
  external UUID get uuid;
  external JSDataView? get value;
  external JSPromise readValue();
  external JSPromise writeValue(BufferSource value);
}

@JS('CharacteristicEventHandlers')
@staticInterop
class CharacteristicEventHandlers {
  external factory CharacteristicEventHandlers();
}

extension CharacteristicEventHandlersExtension on CharacteristicEventHandlers {
  external set oncharacteristicvaluechanged(EventHandler value);
  external EventHandler get oncharacteristicvaluechanged;
}

@JS('BluetoothDeviceEventHandlers')
@staticInterop
class BluetoothDeviceEventHandlers {
  external factory BluetoothDeviceEventHandlers();
}

extension BluetoothDeviceEventHandlersExtension
    on BluetoothDeviceEventHandlers {
  external set onadvertisementreceived(EventHandler value);
  external EventHandler get onadvertisementreceived;
  external set ongattserverdisconnected(EventHandler value);
  external EventHandler get ongattserverdisconnected;
}

@JS('ServiceEventHandlers')
@staticInterop
class ServiceEventHandlers {
  external factory ServiceEventHandlers();
}

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
  external factory BluetoothUUID();

  external static UUID getService(JSAny name);
  external static UUID getCharacteristic(JSAny name);
  external static UUID getDescriptor(JSAny name);
  external static UUID canonicalUUID(JSNumber alias);
}
