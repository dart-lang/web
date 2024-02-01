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
    required JSArray filters,
    JSArray exclusionFilters,
  });

  external set filters(JSArray value);
  external JSArray get filters;
  external set exclusionFilters(JSArray value);
  external JSArray get exclusionFilters;
}
extension type USB._(JSObject _) implements EventTarget, JSObject {
  external JSPromise getDevices();
  external JSPromise requestDevice(USBDeviceRequestOptions options);
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
    JSArray packets, [
    JSDataView? data,
  ]);

  external JSDataView? get data;
  external JSArray get packets;
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
  external factory USBIsochronousOutTransferResult(JSArray packets);

  external JSArray get packets;
}
extension type USBDevice._(JSObject _) implements JSObject {
  external JSPromise open();
  external JSPromise close();
  external JSPromise forget();
  external JSPromise selectConfiguration(int configurationValue);
  external JSPromise claimInterface(int interfaceNumber);
  external JSPromise releaseInterface(int interfaceNumber);
  external JSPromise selectAlternateInterface(
    int interfaceNumber,
    int alternateSetting,
  );
  external JSPromise controlTransferIn(
    USBControlTransferParameters setup,
    int length,
  );
  external JSPromise controlTransferOut(
    USBControlTransferParameters setup, [
    BufferSource data,
  ]);
  external JSPromise clearHalt(
    USBDirection direction,
    int endpointNumber,
  );
  external JSPromise transferIn(
    int endpointNumber,
    int length,
  );
  external JSPromise transferOut(
    int endpointNumber,
    BufferSource data,
  );
  external JSPromise isochronousTransferIn(
    int endpointNumber,
    JSArray packetLengths,
  );
  external JSPromise isochronousTransferOut(
    int endpointNumber,
    BufferSource data,
    JSArray packetLengths,
  );
  external JSPromise reset();
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
  external JSArray get configurations;
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
  external JSArray get interfaces;
}
extension type USBInterface._(JSObject _) implements JSObject {
  external factory USBInterface(
    USBConfiguration configuration,
    int interfaceNumber,
  );

  external int get interfaceNumber;
  external USBAlternateInterface get alternate;
  external JSArray get alternates;
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
  external JSArray get endpoints;
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
    JSArray filters,
    JSArray exclusionFilters,
  });

  external set filters(JSArray value);
  external JSArray get filters;
  external set exclusionFilters(JSArray value);
  external JSArray get exclusionFilters;
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
  external factory USBPermissionStorage({JSArray allowedDevices});

  external set allowedDevices(JSArray value);
  external JSArray get allowedDevices;
}
extension type USBPermissionResult._(JSObject _)
    implements PermissionStatus, JSObject {
  external set devices(JSArray value);
  external JSArray get devices;
}
