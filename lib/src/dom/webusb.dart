// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef USBTransferStatus = JSString;
typedef USBRequestType = JSString;
typedef USBRecipient = JSString;
typedef USBDirection = JSString;
typedef USBEndpointType = JSString;

@JS('USBDeviceFilter')
@staticInterop
class USBDeviceFilter {
  external factory USBDeviceFilter();
}

extension USBDeviceFilterExtension on USBDeviceFilter {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('USBDeviceRequestOptions')
@staticInterop
class USBDeviceRequestOptions {
  external factory USBDeviceRequestOptions();
}

extension USBDeviceRequestOptionsExtension on USBDeviceRequestOptions {
  // TODO
}

@JS('USB')
@staticInterop
class USB extends EventTarget {
  external factory USB();
}

extension USBExtension on USB {
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
  external JSPromise getDevices();
  external JSPromise requestDevice(USBDeviceRequestOptions options);
}

@JS('USBConnectionEventInit')
@staticInterop
class USBConnectionEventInit extends EventInit {
  external factory USBConnectionEventInit();
}

extension USBConnectionEventInitExtension on USBConnectionEventInit {
  // TODO
}

@JS('USBConnectionEvent')
@staticInterop
class USBConnectionEvent extends Event {
  external factory USBConnectionEvent();
  external factory USBConnectionEvent.a1(
      JSString type, USBConnectionEventInit eventInitDict);
}

extension USBConnectionEventExtension on USBConnectionEvent {
  external USBDevice get device;
}

@JS('USBInTransferResult')
@staticInterop
class USBInTransferResult {
  external factory USBInTransferResult();
  external factory USBInTransferResult.a1(USBTransferStatus status);
  external factory USBInTransferResult.a1_1(
      USBTransferStatus status, JSDataView? data);
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
  external factory USBOutTransferResult.a1_1(
      USBTransferStatus status, JSNumber bytesWritten);
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
  external factory USBIsochronousInTransferPacket.a1_1(
      USBTransferStatus status, JSDataView? data);
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
  external factory USBIsochronousInTransferResult.a1_1(
      JSArray packets, JSDataView? data);
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
  external factory USBIsochronousOutTransferPacket.a1_1(
      USBTransferStatus status, JSNumber bytesWritten);
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
      JSNumber interfaceNumber, JSNumber alternateSetting);
  external JSPromise controlTransferIn(
      USBControlTransferParameters setup, JSNumber length);
  external JSPromise controlTransferOut(USBControlTransferParameters setup);
  external JSPromise controlTransferOut_1(
      USBControlTransferParameters setup, BufferSource data);
  external JSPromise clearHalt(USBDirection direction, JSNumber endpointNumber);
  external JSPromise transferIn(JSNumber endpointNumber, JSNumber length);
  external JSPromise transferOut(JSNumber endpointNumber, BufferSource data);
  external JSPromise isochronousTransferIn(
      JSNumber endpointNumber, JSArray packetLengths);
  external JSPromise isochronousTransferOut(
      JSNumber endpointNumber, BufferSource data, JSArray packetLengths);
  external JSPromise reset();
}

@JS('USBControlTransferParameters')
@staticInterop
class USBControlTransferParameters {
  external factory USBControlTransferParameters();
}

extension USBControlTransferParametersExtension
    on USBControlTransferParameters {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('USBConfiguration')
@staticInterop
class USBConfiguration {
  external factory USBConfiguration();
  external factory USBConfiguration.a1(
      USBDevice device, JSNumber configurationValue);
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
      USBConfiguration configuration, JSNumber interfaceNumber);
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
      USBInterface deviceInterface, JSNumber alternateSetting);
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
  external factory USBEndpoint.a1(USBAlternateInterface alternate,
      JSNumber endpointNumber, USBDirection direction);
}

extension USBEndpointExtension on USBEndpoint {
  external JSNumber get endpointNumber;
  external USBDirection get direction;
  external USBEndpointType get type;
  external JSNumber get packetSize;
}

@JS('USBPermissionDescriptor')
@staticInterop
class USBPermissionDescriptor extends PermissionDescriptor {
  external factory USBPermissionDescriptor();
}

extension USBPermissionDescriptorExtension on USBPermissionDescriptor {
  // TODO
}

@JS('AllowedUSBDevice')
@staticInterop
class AllowedUSBDevice {
  external factory AllowedUSBDevice();
}

extension AllowedUSBDeviceExtension on AllowedUSBDevice {
  // TODO
  // TODO
  // TODO
}

@JS('USBPermissionStorage')
@staticInterop
class USBPermissionStorage {
  external factory USBPermissionStorage();
}

extension USBPermissionStorageExtension on USBPermissionStorage {
  // TODO
}

@JS('USBPermissionResult')
@staticInterop
class USBPermissionResult extends PermissionStatus {
  external factory USBPermissionResult();
}

extension USBPermissionResultExtension on USBPermissionResult {
  external JSArray get devices;
  external set devices(JSArray value);
}
