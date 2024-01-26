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

/// The **`USB`** interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides attributes and methods for finding and connecting USB devices from
/// a web page.
///
/// Use [navigator.usb] to get access to the `USB` object.
///
/// The USB interface inherits from [EventTarget].
extension type USB._(JSObject _) implements EventTarget, JSObject {
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
extension type USBConnectionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory USBConnectionEventInit({required USBDevice device});

  external set device(USBDevice value);
  external USBDevice get device;
}

/// The **`USBConnectionEvent`** interface of the [WebUSB API] is the event type
/// passed to `USB` [USB.connect_event] and [USB.disconnect_event] events when
/// the user agent detects that a new USB device has been connected or
/// disconnected.
extension type USBConnectionEvent._(JSObject _) implements Event, JSObject {
  external factory USBConnectionEvent(
    String type,
    USBConnectionEventInit eventInitDict,
  );

  external USBDevice get device;
}

/// The `USBInTransferResult` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides the result from a call to the `transferIn()` and
/// `controlTransferIn()` methods of the `USBDevice` interface. It represents
/// the result from requesting a transfer of data from the USB device to the USB
/// host.
extension type USBInTransferResult._(JSObject _) implements JSObject {
  external factory USBInTransferResult(
    USBTransferStatus status, [
    JSDataView? data,
  ]);

  external JSDataView? get data;
  external USBTransferStatus get status;
}

/// The `USBOutTransferResult` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides the result from a call to the `transferOut()` and
/// `controlTransferOut()` methods of the `USBDevice` interface. It represents
/// the result from requesting a transfer of data from the USB host to the USB
/// device.
extension type USBOutTransferResult._(JSObject _) implements JSObject {
  external factory USBOutTransferResult(
    USBTransferStatus status, [
    int bytesWritten,
  ]);

  external int get bytesWritten;
  external USBTransferStatus get status;
}

/// The `USBIsochronousInTransferPacket` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API) is
/// part of the response from a call to the `isochronousTransferIn()` method of
/// the `USBDevice` interface. It represents the status of an individual packet
/// from a request to transfer data from the USB device to the USB host over an
/// isochronous endpoint.
extension type USBIsochronousInTransferPacket._(JSObject _)
    implements JSObject {
  external factory USBIsochronousInTransferPacket(
    USBTransferStatus status, [
    JSDataView? data,
  ]);

  external JSDataView? get data;
  external USBTransferStatus get status;
}

/// The `USBIsochronousInTransferResult` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides the result from a call to the `isochronousTransferIn()` method of
/// the `USBDevice` interface. It represents the result from requesting a
/// transfer of data from the USB device to the USB host.
extension type USBIsochronousInTransferResult._(JSObject _)
    implements JSObject {
  external factory USBIsochronousInTransferResult(
    JSArray packets, [
    JSDataView? data,
  ]);

  external JSDataView? get data;
  external JSArray get packets;
}

/// The `USBIsochronousOutTransferPacket` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API) is
/// part of the response from a call to the `isochronousTransferOut()` method of
/// the `USBDevice` interface. It represents the status of an individual packet
/// from a request to transfer data from the USB host to the USB device over an
/// isochronous endpoint.
extension type USBIsochronousOutTransferPacket._(JSObject _)
    implements JSObject {
  external factory USBIsochronousOutTransferPacket(
    USBTransferStatus status, [
    int bytesWritten,
  ]);

  external int get bytesWritten;
  external USBTransferStatus get status;
}

/// The `USBIsochronousOutTransferResult` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides the result from a call to the `isochronousTransferOut()` method of
/// the `USBDevice` interface. It represents the result from requesting a
/// transfer of data from the USB host to the USB device.
extension type USBIsochronousOutTransferResult._(JSObject _)
    implements JSObject {
  external factory USBIsochronousOutTransferResult(JSArray packets);

  external JSArray get packets;
}

/// The **`USBDevice`** interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides access to metadata about a paired USB device and methods for
/// controlling it.
extension type USBDevice._(JSObject _) implements JSObject {
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

/// The `USBConfiguration` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides information about a particular configuration of a USB device and
/// the interfaces that it supports.
extension type USBConfiguration._(JSObject _) implements JSObject {
  external factory USBConfiguration(
    USBDevice device,
    int configurationValue,
  );

  external int get configurationValue;
  external String? get configurationName;
  external JSArray get interfaces;
}

/// The `USBInterface` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides information about an interface provided by the USB device. An
/// interface represents a feature of the device which implements a particular
/// protocol and may contain endpoints for bidirectional communication.
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

/// The `USBAlternateInterface` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides information about a particular configuration of an interface
/// provided by the USB device. An interface includes one or more alternate
/// settings which can configure a set of endpoints based on the operating mode
/// of the device.
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

/// The `USBEndpoint` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides information about an endpoint provided by the USB device. An
/// endpoint represents a unidirectional data stream into or out of a device.
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
