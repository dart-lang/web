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

typedef USBTransferStatus = String;
typedef USBRequestType = String;
typedef USBRecipient = String;
typedef USBDirection = String;
typedef USBEndpointType = String;
extension type USBDeviceFilter._(JSObject _) implements JSObject {
  external factory USBDeviceFilter({
    int vendorId,
    int productId,
    int classCode,
    int subclassCode,
    int protocolCode,
    String serialNumber,
  });

  external set vendorId(int value);
  external int get vendorId;
  external set productId(int value);
  external int get productId;
  external set classCode(int value);
  external int get classCode;
  external set subclassCode(int value);
  external int get subclassCode;
  external set protocolCode(int value);
  external int get protocolCode;
  external set serialNumber(String value);
  external String get serialNumber;
}
extension type USBDeviceRequestOptions._(JSObject _) implements JSObject {
  external factory USBDeviceRequestOptions({
    required JSArray<USBDeviceFilter> filters,
    JSArray<USBDeviceFilter> exclusionFilters,
  });

  external set filters(JSArray<USBDeviceFilter> value);
  external JSArray<USBDeviceFilter> get filters;
  external set exclusionFilters(JSArray<USBDeviceFilter> value);
  external JSArray<USBDeviceFilter> get exclusionFilters;
}
extension type USB._(JSObject _) implements EventTarget, JSObject {
  external JSPromise<JSArray<USBDevice>> getDevices();
  external JSPromise<USBDevice> requestDevice(USBDeviceRequestOptions options);
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
}
extension type USBConnectionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory USBConnectionEventInit({required USBDevice device});

  external set device(USBDevice value);
  external USBDevice get device;
}
extension type USBConnectionEvent._(JSObject _) implements Event, JSObject {
  external factory USBConnectionEvent(
    String type,
    USBConnectionEventInit eventInitDict,
  );

  external USBDevice get device;
}
extension type USBInTransferResult._(JSObject _) implements JSObject {
  external factory USBInTransferResult(
    USBTransferStatus status, [
    JSDataView? data,
  ]);

  external JSDataView? get data;
  external USBTransferStatus get status;
}
extension type USBOutTransferResult._(JSObject _) implements JSObject {
  external factory USBOutTransferResult(
    USBTransferStatus status, [
    int bytesWritten,
  ]);

  external int get bytesWritten;
  external USBTransferStatus get status;
}
extension type USBIsochronousInTransferPacket._(JSObject _)
    implements JSObject {
  external factory USBIsochronousInTransferPacket(
    USBTransferStatus status, [
    JSDataView? data,
  ]);

  external JSDataView? get data;
  external USBTransferStatus get status;
}
extension type USBIsochronousInTransferResult._(JSObject _)
    implements JSObject {
  external factory USBIsochronousInTransferResult(
    JSArray<USBIsochronousInTransferPacket> packets, [
    JSDataView? data,
  ]);

  external JSDataView? get data;
  external JSArray<USBIsochronousInTransferPacket> get packets;
}
extension type USBIsochronousOutTransferPacket._(JSObject _)
    implements JSObject {
  external factory USBIsochronousOutTransferPacket(
    USBTransferStatus status, [
    int bytesWritten,
  ]);

  external int get bytesWritten;
  external USBTransferStatus get status;
}
extension type USBIsochronousOutTransferResult._(JSObject _)
    implements JSObject {
  external factory USBIsochronousOutTransferResult(
      JSArray<USBIsochronousOutTransferPacket> packets);

  external JSArray<USBIsochronousOutTransferPacket> get packets;
}
extension type USBDevice._(JSObject _) implements JSObject {
  external JSPromise<JSAny?> open();
  external JSPromise<JSAny?> close();
  external JSPromise<JSAny?> forget();
  external JSPromise<JSAny?> selectConfiguration(int configurationValue);
  external JSPromise<JSAny?> claimInterface(int interfaceNumber);
  external JSPromise<JSAny?> releaseInterface(int interfaceNumber);
  external JSPromise<JSAny?> selectAlternateInterface(
    int interfaceNumber,
    int alternateSetting,
  );
  external JSPromise<USBInTransferResult> controlTransferIn(
    USBControlTransferParameters setup,
    int length,
  );
  external JSPromise<USBOutTransferResult> controlTransferOut(
    USBControlTransferParameters setup, [
    BufferSource data,
  ]);
  external JSPromise<JSAny?> clearHalt(
    USBDirection direction,
    int endpointNumber,
  );
  external JSPromise<USBInTransferResult> transferIn(
    int endpointNumber,
    int length,
  );
  external JSPromise<USBOutTransferResult> transferOut(
    int endpointNumber,
    BufferSource data,
  );
  external JSPromise<USBIsochronousInTransferResult> isochronousTransferIn(
    int endpointNumber,
    JSArray<JSNumber> packetLengths,
  );
  external JSPromise<USBIsochronousOutTransferResult> isochronousTransferOut(
    int endpointNumber,
    BufferSource data,
    JSArray<JSNumber> packetLengths,
  );
  external JSPromise<JSAny?> reset();
  external int get usbVersionMajor;
  external int get usbVersionMinor;
  external int get usbVersionSubminor;
  external int get deviceClass;
  external int get deviceSubclass;
  external int get deviceProtocol;
  external int get vendorId;
  external int get productId;
  external int get deviceVersionMajor;
  external int get deviceVersionMinor;
  external int get deviceVersionSubminor;
  external String? get manufacturerName;
  external String? get productName;
  external String? get serialNumber;
  external USBConfiguration? get configuration;
  external JSArray<USBConfiguration> get configurations;
  external bool get opened;
}
extension type USBControlTransferParameters._(JSObject _) implements JSObject {
  external factory USBControlTransferParameters({
    required USBRequestType requestType,
    required USBRecipient recipient,
    required int request,
    required int value,
    required int index,
  });

  external set requestType(USBRequestType value);
  external USBRequestType get requestType;
  external set recipient(USBRecipient value);
  external USBRecipient get recipient;
  external set request(int value);
  external int get request;
  external set value(int value);
  external int get value;
  external set index(int value);
  external int get index;
}
extension type USBConfiguration._(JSObject _) implements JSObject {
  external factory USBConfiguration(
    USBDevice device,
    int configurationValue,
  );

  external int get configurationValue;
  external String? get configurationName;
  external JSArray<USBInterface> get interfaces;
}
extension type USBInterface._(JSObject _) implements JSObject {
  external factory USBInterface(
    USBConfiguration configuration,
    int interfaceNumber,
  );

  external int get interfaceNumber;
  external USBAlternateInterface get alternate;
  external JSArray<USBAlternateInterface> get alternates;
  external bool get claimed;
}
extension type USBAlternateInterface._(JSObject _) implements JSObject {
  external factory USBAlternateInterface(
    USBInterface deviceInterface,
    int alternateSetting,
  );

  external int get alternateSetting;
  external int get interfaceClass;
  external int get interfaceSubclass;
  external int get interfaceProtocol;
  external String? get interfaceName;
  external JSArray<USBEndpoint> get endpoints;
}
extension type USBEndpoint._(JSObject _) implements JSObject {
  external factory USBEndpoint(
    USBAlternateInterface alternate,
    int endpointNumber,
    USBDirection direction,
  );

  external int get endpointNumber;
  external USBDirection get direction;
  external USBEndpointType get type;
  external int get packetSize;
}
extension type USBPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory USBPermissionDescriptor({
    JSArray<USBDeviceFilter> filters,
    JSArray<USBDeviceFilter> exclusionFilters,
  });

  external set filters(JSArray<USBDeviceFilter> value);
  external JSArray<USBDeviceFilter> get filters;
  external set exclusionFilters(JSArray<USBDeviceFilter> value);
  external JSArray<USBDeviceFilter> get exclusionFilters;
}
extension type AllowedUSBDevice._(JSObject _) implements JSObject {
  external factory AllowedUSBDevice({
    required int vendorId,
    required int productId,
    String serialNumber,
  });

  external set vendorId(int value);
  external int get vendorId;
  external set productId(int value);
  external int get productId;
  external set serialNumber(String value);
  external String get serialNumber;
}
extension type USBPermissionStorage._(JSObject _) implements JSObject {
  external factory USBPermissionStorage(
      {JSArray<AllowedUSBDevice> allowedDevices});

  external set allowedDevices(JSArray<AllowedUSBDevice> value);
  external JSArray<AllowedUSBDevice> get allowedDevices;
}
extension type USBPermissionResult._(JSObject _)
    implements PermissionStatus, JSObject {
  external set devices(JSArray<USBDevice> value);
  external JSArray<USBDevice> get devices;
}
