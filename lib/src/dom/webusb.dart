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

typedef USBTransferStatus = JSString;
typedef USBRequestType = JSString;
typedef USBRecipient = JSString;
typedef USBDirection = JSString;
typedef USBEndpointType = JSString;

@JS()
@staticInterop
@anonymous
class USBDeviceFilter {
  external factory USBDeviceFilter({
    JSNumber vendorId,
    JSNumber productId,
    JSNumber classCode,
    JSNumber subclassCode,
    JSNumber protocolCode,
    JSString serialNumber,
  });
}

extension USBDeviceFilterExtension on USBDeviceFilter {
  external set vendorId(JSNumber value);
  external JSNumber get vendorId;
  external set productId(JSNumber value);
  external JSNumber get productId;
  external set classCode(JSNumber value);
  external JSNumber get classCode;
  external set subclassCode(JSNumber value);
  external JSNumber get subclassCode;
  external set protocolCode(JSNumber value);
  external JSNumber get protocolCode;
  external set serialNumber(JSString value);
  external JSString get serialNumber;
}

@JS()
@staticInterop
@anonymous
class USBDeviceRequestOptions {
  external factory USBDeviceRequestOptions({required JSArray filters});
}

extension USBDeviceRequestOptionsExtension on USBDeviceRequestOptions {
  external set filters(JSArray value);
  external JSArray get filters;
}

@JS('USB')
@staticInterop
class USB extends EventTarget {
  external factory USB();
}

extension USBExtension on USB {
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external JSPromise getDevices();
  external JSPromise requestDevice(USBDeviceRequestOptions options);
}

@JS()
@staticInterop
@anonymous
class USBConnectionEventInit extends EventInit {
  external factory USBConnectionEventInit({required USBDevice device});
}

extension USBConnectionEventInitExtension on USBConnectionEventInit {
  external set device(USBDevice value);
  external USBDevice get device;
}

@JS('USBConnectionEvent')
@staticInterop
class USBConnectionEvent extends Event {
  external factory USBConnectionEvent();

  external factory USBConnectionEvent.a1(
    JSString type,
    USBConnectionEventInit eventInitDict,
  );
}

extension USBConnectionEventExtension on USBConnectionEvent {
  external USBDevice get device;
}

@JS('USBInTransferResult')
@staticInterop
class USBInTransferResult {
  external factory USBInTransferResult();

  external factory USBInTransferResult.a1(USBTransferStatus status);

  external factory USBInTransferResult.a2(
    USBTransferStatus status,
    JSDataView? data,
  );
}

extension USBInTransferResultExtension on USBInTransferResult {
  external JSDataView? get data;
  external USBTransferStatus get status;
}

@JS('USBOutTransferResult')
@staticInterop
class USBOutTransferResult {
  external factory USBOutTransferResult();

  external factory USBOutTransferResult.a1(USBTransferStatus status);

  external factory USBOutTransferResult.a2(
    USBTransferStatus status,
    JSNumber bytesWritten,
  );
}

extension USBOutTransferResultExtension on USBOutTransferResult {
  external JSNumber get bytesWritten;
  external USBTransferStatus get status;
}

@JS('USBIsochronousInTransferPacket')
@staticInterop
class USBIsochronousInTransferPacket {
  external factory USBIsochronousInTransferPacket();

  external factory USBIsochronousInTransferPacket.a1(USBTransferStatus status);

  external factory USBIsochronousInTransferPacket.a2(
    USBTransferStatus status,
    JSDataView? data,
  );
}

extension USBIsochronousInTransferPacketExtension
    on USBIsochronousInTransferPacket {
  external JSDataView? get data;
  external USBTransferStatus get status;
}

@JS('USBIsochronousInTransferResult')
@staticInterop
class USBIsochronousInTransferResult {
  external factory USBIsochronousInTransferResult();

  external factory USBIsochronousInTransferResult.a1(JSArray packets);

  external factory USBIsochronousInTransferResult.a2(
    JSArray packets,
    JSDataView? data,
  );
}

extension USBIsochronousInTransferResultExtension
    on USBIsochronousInTransferResult {
  external JSDataView? get data;
  external JSArray get packets;
}

@JS('USBIsochronousOutTransferPacket')
@staticInterop
class USBIsochronousOutTransferPacket {
  external factory USBIsochronousOutTransferPacket();

  external factory USBIsochronousOutTransferPacket.a1(USBTransferStatus status);

  external factory USBIsochronousOutTransferPacket.a2(
    USBTransferStatus status,
    JSNumber bytesWritten,
  );
}

extension USBIsochronousOutTransferPacketExtension
    on USBIsochronousOutTransferPacket {
  external JSNumber get bytesWritten;
  external USBTransferStatus get status;
}

@JS('USBIsochronousOutTransferResult')
@staticInterop
class USBIsochronousOutTransferResult {
  external factory USBIsochronousOutTransferResult();

  external factory USBIsochronousOutTransferResult.a1(JSArray packets);
}

extension USBIsochronousOutTransferResultExtension
    on USBIsochronousOutTransferResult {
  external JSArray get packets;
}

@JS('USBDevice')
@staticInterop
class USBDevice {
  external factory USBDevice();
}

extension USBDeviceExtension on USBDevice {
  external JSNumber get usbVersionMajor;
  external JSNumber get usbVersionMinor;
  external JSNumber get usbVersionSubminor;
  external JSNumber get deviceClass;
  external JSNumber get deviceSubclass;
  external JSNumber get deviceProtocol;
  external JSNumber get vendorId;
  external JSNumber get productId;
  external JSNumber get deviceVersionMajor;
  external JSNumber get deviceVersionMinor;
  external JSNumber get deviceVersionSubminor;
  external JSString? get manufacturerName;
  external JSString? get productName;
  external JSString? get serialNumber;
  external USBConfiguration? get configuration;
  external JSArray get configurations;
  external JSBoolean get opened;
  external JSPromise open();
  external JSPromise close();
  external JSPromise forget();
  external JSPromise selectConfiguration(JSNumber configurationValue);
  external JSPromise claimInterface(JSNumber interfaceNumber);
  external JSPromise releaseInterface(JSNumber interfaceNumber);
  external JSPromise selectAlternateInterface(
    JSNumber interfaceNumber,
    JSNumber alternateSetting,
  );
  external JSPromise controlTransferIn(
    USBControlTransferParameters setup,
    JSNumber length,
  );
  external JSPromise controlTransferOut(USBControlTransferParameters setup);
  external JSPromise controlTransferOut1(
    USBControlTransferParameters setup,
    BufferSource data,
  );
  external JSPromise clearHalt(
    USBDirection direction,
    JSNumber endpointNumber,
  );
  external JSPromise transferIn(
    JSNumber endpointNumber,
    JSNumber length,
  );
  external JSPromise transferOut(
    JSNumber endpointNumber,
    BufferSource data,
  );
  external JSPromise isochronousTransferIn(
    JSNumber endpointNumber,
    JSArray packetLengths,
  );
  external JSPromise isochronousTransferOut(
    JSNumber endpointNumber,
    BufferSource data,
    JSArray packetLengths,
  );
  external JSPromise reset();
}

@JS()
@staticInterop
@anonymous
class USBControlTransferParameters {
  external factory USBControlTransferParameters({
    required USBRequestType requestType,
    required USBRecipient recipient,
    required JSNumber request,
    required JSNumber value,
    required JSNumber index,
  });
}

extension USBControlTransferParametersExtension
    on USBControlTransferParameters {
  external set requestType(USBRequestType value);
  external USBRequestType get requestType;
  external set recipient(USBRecipient value);
  external USBRecipient get recipient;
  external set request(JSNumber value);
  external JSNumber get request;
  external set value(JSNumber value);
  external JSNumber get value;
  external set index(JSNumber value);
  external JSNumber get index;
}

@JS('USBConfiguration')
@staticInterop
class USBConfiguration {
  external factory USBConfiguration();

  external factory USBConfiguration.a1(
    USBDevice device,
    JSNumber configurationValue,
  );
}

extension USBConfigurationExtension on USBConfiguration {
  external JSNumber get configurationValue;
  external JSString? get configurationName;
  external JSArray get interfaces;
}

@JS('USBInterface')
@staticInterop
class USBInterface {
  external factory USBInterface();

  external factory USBInterface.a1(
    USBConfiguration configuration,
    JSNumber interfaceNumber,
  );
}

extension USBInterfaceExtension on USBInterface {
  external JSNumber get interfaceNumber;
  external USBAlternateInterface get alternate;
  external JSArray get alternates;
  external JSBoolean get claimed;
}

@JS('USBAlternateInterface')
@staticInterop
class USBAlternateInterface {
  external factory USBAlternateInterface();

  external factory USBAlternateInterface.a1(
    USBInterface deviceInterface,
    JSNumber alternateSetting,
  );
}

extension USBAlternateInterfaceExtension on USBAlternateInterface {
  external JSNumber get alternateSetting;
  external JSNumber get interfaceClass;
  external JSNumber get interfaceSubclass;
  external JSNumber get interfaceProtocol;
  external JSString? get interfaceName;
  external JSArray get endpoints;
}

@JS('USBEndpoint')
@staticInterop
class USBEndpoint {
  external factory USBEndpoint();

  external factory USBEndpoint.a1(
    USBAlternateInterface alternate,
    JSNumber endpointNumber,
    USBDirection direction,
  );
}

extension USBEndpointExtension on USBEndpoint {
  external JSNumber get endpointNumber;
  external USBDirection get direction;
  external USBEndpointType get type;
  external JSNumber get packetSize;
}

@JS()
@staticInterop
@anonymous
class USBPermissionDescriptor extends PermissionDescriptor {
  external factory USBPermissionDescriptor({JSArray filters});
}

extension USBPermissionDescriptorExtension on USBPermissionDescriptor {
  external set filters(JSArray value);
  external JSArray get filters;
}

@JS()
@staticInterop
@anonymous
class AllowedUSBDevice {
  external factory AllowedUSBDevice({
    required JSNumber vendorId,
    required JSNumber productId,
    JSString serialNumber,
  });
}

extension AllowedUSBDeviceExtension on AllowedUSBDevice {
  external set vendorId(JSNumber value);
  external JSNumber get vendorId;
  external set productId(JSNumber value);
  external JSNumber get productId;
  external set serialNumber(JSString value);
  external JSString get serialNumber;
}

@JS()
@staticInterop
@anonymous
class USBPermissionStorage {
  external factory USBPermissionStorage({JSArray allowedDevices = const []});
}

extension USBPermissionStorageExtension on USBPermissionStorage {
  external set allowedDevices(JSArray value);
  external JSArray get allowedDevices;
}

@JS('USBPermissionResult')
@staticInterop
class USBPermissionResult extends PermissionStatus {
  external factory USBPermissionResult();
}

extension USBPermissionResultExtension on USBPermissionResult {
  external set devices(JSArray value);
  external JSArray get devices;
}
