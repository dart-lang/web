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

typedef USBTransferStatus = String;
typedef USBRequestType = String;
typedef USBRecipient = String;
typedef USBDirection = String;
typedef USBEndpointType = String;

@JS()
@staticInterop
@anonymous
class USBDeviceFilter {
  external factory USBDeviceFilter({
    int vendorId,
    int productId,
    int classCode,
    int subclassCode,
    int protocolCode,
    String serialNumber,
  });
}

extension USBDeviceFilterExtension on USBDeviceFilter {
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

@JS()
@staticInterop
@anonymous
class USBDeviceRequestOptions {
  external factory USBDeviceRequestOptions({
    required JSArray filters,
    JSArray exclusionFilters,
  });
}

extension USBDeviceRequestOptionsExtension on USBDeviceRequestOptions {
  external set filters(JSArray value);
  external JSArray get filters;
  external set exclusionFilters(JSArray value);
  external JSArray get exclusionFilters;
}

/// The **`USB`** interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides attributes and methods for finding and connecting USB devices from
/// a web page.
///
/// Use [navigator.usb] to get access to the `USB` object.
///
/// The USB interface inherits from [EventTarget].
@JS('USB')
@staticInterop
class USB implements EventTarget {}

extension USBExtension on USB {
  /// The **`getDevices`** method of the [USB] interface
  /// returns a `Promise` that resolves with an array of [USBDevice]
  /// objects for paired attached devices. For information on pairing devices,
  /// see
  /// [USB.requestDevice].
  external JSPromise getDevices();

  /// The **`requestDevice()`** method of the [USB]
  /// interface returns a `Promise` that resolves with an instance of
  /// [USBDevice] if the specified device is found. Calling this function
  /// triggers the user agent's pairing flow.
  external JSPromise requestDevice(USBDeviceRequestOptions options);
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
}

@JS()
@staticInterop
@anonymous
class USBConnectionEventInit implements EventInit {
  external factory USBConnectionEventInit({required USBDevice device});
}

extension USBConnectionEventInitExtension on USBConnectionEventInit {
  external set device(USBDevice value);
  external USBDevice get device;
}

/// The **`USBConnectionEvent`** interface of the [WebUSB API] is the event type
/// passed to `USB` [USB.connect_event] and [USB.disconnect_event] events when
/// the user agent detects that a new USB device has been connected or
/// disconnected.
@JS('USBConnectionEvent')
@staticInterop
class USBConnectionEvent implements Event {
  external factory USBConnectionEvent(
    String type,
    USBConnectionEventInit eventInitDict,
  );
}

extension USBConnectionEventExtension on USBConnectionEvent {
  external USBDevice get device;
}

/// The `USBInTransferResult` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides the result from a call to the `transferIn()` and
/// `controlTransferIn()` methods of the `USBDevice` interface. It represents
/// the result from requesting a transfer of data from the USB device to the USB
/// host.
@JS('USBInTransferResult')
@staticInterop
class USBInTransferResult {
  external factory USBInTransferResult(
    USBTransferStatus status, [
    JSDataView? data,
  ]);
}

extension USBInTransferResultExtension on USBInTransferResult {
  external JSDataView? get data;
  external USBTransferStatus get status;
}

/// The `USBOutTransferResult` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides the result from a call to the `transferOut()` and
/// `controlTransferOut()` methods of the `USBDevice` interface. It represents
/// the result from requesting a transfer of data from the USB host to the USB
/// device.
@JS('USBOutTransferResult')
@staticInterop
class USBOutTransferResult {
  external factory USBOutTransferResult(
    USBTransferStatus status, [
    int bytesWritten,
  ]);
}

extension USBOutTransferResultExtension on USBOutTransferResult {
  external int get bytesWritten;
  external USBTransferStatus get status;
}

/// The `USBIsochronousInTransferPacket` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API) is
/// part of the response from a call to the `isochronousTransferIn()` method of
/// the `USBDevice` interface. It represents the status of an individual packet
/// from a request to transfer data from the USB device to the USB host over an
/// isochronous endpoint.
@JS('USBIsochronousInTransferPacket')
@staticInterop
class USBIsochronousInTransferPacket {
  external factory USBIsochronousInTransferPacket(
    USBTransferStatus status, [
    JSDataView? data,
  ]);
}

extension USBIsochronousInTransferPacketExtension
    on USBIsochronousInTransferPacket {
  external JSDataView? get data;
  external USBTransferStatus get status;
}

/// The `USBIsochronousInTransferResult` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides the result from a call to the `isochronousTransferIn()` method of
/// the `USBDevice` interface. It represents the result from requesting a
/// transfer of data from the USB device to the USB host.
@JS('USBIsochronousInTransferResult')
@staticInterop
class USBIsochronousInTransferResult {
  external factory USBIsochronousInTransferResult(
    JSArray packets, [
    JSDataView? data,
  ]);
}

extension USBIsochronousInTransferResultExtension
    on USBIsochronousInTransferResult {
  external JSDataView? get data;
  external JSArray get packets;
}

/// The `USBIsochronousOutTransferPacket` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API) is
/// part of the response from a call to the `isochronousTransferOut()` method of
/// the `USBDevice` interface. It represents the status of an individual packet
/// from a request to transfer data from the USB host to the USB device over an
/// isochronous endpoint.
@JS('USBIsochronousOutTransferPacket')
@staticInterop
class USBIsochronousOutTransferPacket {
  external factory USBIsochronousOutTransferPacket(
    USBTransferStatus status, [
    int bytesWritten,
  ]);
}

extension USBIsochronousOutTransferPacketExtension
    on USBIsochronousOutTransferPacket {
  external int get bytesWritten;
  external USBTransferStatus get status;
}

/// The `USBIsochronousOutTransferResult` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides the result from a call to the `isochronousTransferOut()` method of
/// the `USBDevice` interface. It represents the result from requesting a
/// transfer of data from the USB host to the USB device.
@JS('USBIsochronousOutTransferResult')
@staticInterop
class USBIsochronousOutTransferResult {
  external factory USBIsochronousOutTransferResult(JSArray packets);
}

extension USBIsochronousOutTransferResultExtension
    on USBIsochronousOutTransferResult {
  external JSArray get packets;
}

/// The **`USBDevice`** interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides access to metadata about a paired USB device and methods for
/// controlling it.
@JS('USBDevice')
@staticInterop
class USBDevice {}

extension USBDeviceExtension on USBDevice {
  /// The **`open()`** method of the [USBDevice]
  /// interface returns a `promise` that resolves when a device session has
  /// started.
  external JSPromise open();

  /// The **`close()`** method of the [USBDevice]
  /// interface returns a `promise` that resolves when all open interfaces are
  /// released and the device session has ended.
  external JSPromise close();

  /// The **`forget()`** method of the [USBDevice] interface returns a `Promise`
  /// that resolves when all pending operations are aborted, all open interfaces
  /// are released, the device session has ended, and the permission is reset.
  external JSPromise forget();

  /// The **`selectConfiguration()`** method of the
  /// [USBDevice] interface returns a `promise` that resolves when
  /// the specified configuration is selected.
  external JSPromise selectConfiguration(int configurationValue);

  /// The **`claimInterface()`** method of the
  /// [USBDevice] interface returns a `promise` that resolves when
  /// the requested interface is claimed for exclusive access.
  external JSPromise claimInterface(int interfaceNumber);

  /// The **`releaseInterface()`** method of the
  /// [USBDevice] interface returns a `promise` that resolves when a
  /// claimed interface is released from exclusive access.
  external JSPromise releaseInterface(int interfaceNumber);

  /// The **`selectAlternateInterface()`** method of the
  /// [USBDevice] interface returns a `promise` that resolves when
  /// the specified alternative endpoint is selected.
  external JSPromise selectAlternateInterface(
    int interfaceNumber,
    int alternateSetting,
  );

  /// The **`controlTransferIn()`** method of the [USBDevice] interface returns
  /// a `Promise` that resolves with a [USBInTransferResult] when a command or
  /// status request has been transmitted to (received by) the USB device.
  external JSPromise controlTransferIn(
    USBControlTransferParameters setup,
    int length,
  );

  /// The **`controlTransferOut()`** method of the [USBDevice] interface returns
  /// a `Promise` that resolves with a [USBOutTransferResult] when a command or
  /// status operation has been transmitted from the USB device.
  external JSPromise controlTransferOut(
    USBControlTransferParameters setup, [
    BufferSource data,
  ]);

  /// The **`clearHalt()`** method of the [USBDevice]
  /// interface returns a `promise` that resolves when a halt condition is
  /// cleared. A halt condition is when a data transfer to or from the device
  /// has a status
  /// of `'stall'`, which requires the web page (the _host_ system, in USB
  /// terminology) to clear that condition. See the for details.
  external JSPromise clearHalt(
    USBDirection direction,
    int endpointNumber,
  );

  /// The **`transferIn()`** method of the [USBDevice]
  /// interface returns a `promise` that resolves with a
  /// [USBInTransferResult] when bulk or interrupt data is received from the USB
  /// device.
  external JSPromise transferIn(
    int endpointNumber,
    int length,
  );

  /// The **`transferOut()`** method of the [USBDevice]
  /// interface returns a `promise` that resolves with a
  /// [USBOutTransferResult] when bulk or interrupt data is sent to the USB
  /// device.
  external JSPromise transferOut(
    int endpointNumber,
    BufferSource data,
  );

  /// The **`isochronousTransferIn()`** method of the [USBDevice] interface
  /// returns a `Promise` that resolves with a [USBIsochronousInTransferResult]
  /// when time sensitive information has been transmitted to (received by) the
  /// USB device.
  external JSPromise isochronousTransferIn(
    int endpointNumber,
    JSArray packetLengths,
  );

  /// The **`isochronousTransferOut()`** method of the
  /// [USBDevice] interface returns a `Promise` that resolves with a
  /// [USBIsochronousOutTransferResult] when time sensitive information has been
  /// transmitted from the USB device.
  external JSPromise isochronousTransferOut(
    int endpointNumber,
    BufferSource data,
    JSArray packetLengths,
  );

  /// The **`reset()`** method of the [USBDevice]
  /// interface returns a `promise` that resolves when the device is reset and
  /// all
  /// app operations canceled and their promises rejected.
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

@JS()
@staticInterop
@anonymous
class USBControlTransferParameters {
  external factory USBControlTransferParameters({
    required USBRequestType requestType,
    required USBRecipient recipient,
    required int request,
    required int value,
    required int index,
  });
}

extension USBControlTransferParametersExtension
    on USBControlTransferParameters {
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

/// The `USBConfiguration` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides information about a particular configuration of a USB device and
/// the interfaces that it supports.
@JS('USBConfiguration')
@staticInterop
class USBConfiguration {
  external factory USBConfiguration(
    USBDevice device,
    int configurationValue,
  );
}

extension USBConfigurationExtension on USBConfiguration {
  external int get configurationValue;
  external String? get configurationName;
  external JSArray get interfaces;
}

/// The `USBInterface` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides information about an interface provided by the USB device. An
/// interface represents a feature of the device which implements a particular
/// protocol and may contain endpoints for bidirectional communication.
@JS('USBInterface')
@staticInterop
class USBInterface {
  external factory USBInterface(
    USBConfiguration configuration,
    int interfaceNumber,
  );
}

extension USBInterfaceExtension on USBInterface {
  external int get interfaceNumber;
  external USBAlternateInterface get alternate;
  external JSArray get alternates;
  external bool get claimed;
}

/// The `USBAlternateInterface` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides information about a particular configuration of an interface
/// provided by the USB device. An interface includes one or more alternate
/// settings which can configure a set of endpoints based on the operating mode
/// of the device.
@JS('USBAlternateInterface')
@staticInterop
class USBAlternateInterface {
  external factory USBAlternateInterface(
    USBInterface deviceInterface,
    int alternateSetting,
  );
}

extension USBAlternateInterfaceExtension on USBAlternateInterface {
  external int get alternateSetting;
  external int get interfaceClass;
  external int get interfaceSubclass;
  external int get interfaceProtocol;
  external String? get interfaceName;
  external JSArray get endpoints;
}

/// The `USBEndpoint` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides information about an endpoint provided by the USB device. An
/// endpoint represents a unidirectional data stream into or out of a device.
@JS('USBEndpoint')
@staticInterop
class USBEndpoint {
  external factory USBEndpoint(
    USBAlternateInterface alternate,
    int endpointNumber,
    USBDirection direction,
  );
}

extension USBEndpointExtension on USBEndpoint {
  external int get endpointNumber;
  external USBDirection get direction;
  external USBEndpointType get type;
  external int get packetSize;
}

@JS()
@staticInterop
@anonymous
class USBPermissionDescriptor implements PermissionDescriptor {
  external factory USBPermissionDescriptor({
    JSArray filters,
    JSArray exclusionFilters,
  });
}

extension USBPermissionDescriptorExtension on USBPermissionDescriptor {
  external set filters(JSArray value);
  external JSArray get filters;
  external set exclusionFilters(JSArray value);
  external JSArray get exclusionFilters;
}

@JS()
@staticInterop
@anonymous
class AllowedUSBDevice {
  external factory AllowedUSBDevice({
    required int vendorId,
    required int productId,
    String serialNumber,
  });
}

extension AllowedUSBDeviceExtension on AllowedUSBDevice {
  external set vendorId(int value);
  external int get vendorId;
  external set productId(int value);
  external int get productId;
  external set serialNumber(String value);
  external String get serialNumber;
}

@JS()
@staticInterop
@anonymous
class USBPermissionStorage {
  external factory USBPermissionStorage({JSArray allowedDevices});
}

extension USBPermissionStorageExtension on USBPermissionStorage {
  external set allowedDevices(JSArray value);
  external JSArray get allowedDevices;
}

@JS('USBPermissionResult')
@staticInterop
class USBPermissionResult implements PermissionStatus {}

extension USBPermissionResultExtension on USBPermissionResult {
  external set devices(JSArray value);
  external JSArray get devices;
}
