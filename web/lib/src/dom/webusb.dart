// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

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

  external int get vendorId;
  external set vendorId(int value);
  external int get productId;
  external set productId(int value);
  external int get classCode;
  external set classCode(int value);
  external int get subclassCode;
  external set subclassCode(int value);
  external int get protocolCode;
  external set protocolCode(int value);
  external String get serialNumber;
  external set serialNumber(String value);
}
extension type USBDeviceRequestOptions._(JSObject _) implements JSObject {
  external factory USBDeviceRequestOptions({
    required JSArray<USBDeviceFilter> filters,
    JSArray<USBDeviceFilter> exclusionFilters,
  });

  external JSArray<USBDeviceFilter> get filters;
  external set filters(JSArray<USBDeviceFilter> value);
  external JSArray<USBDeviceFilter> get exclusionFilters;
  external set exclusionFilters(JSArray<USBDeviceFilter> value);
}

/// The **`USB`** interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides attributes and methods for finding and connecting USB devices from
/// a web page.
///
/// Use [navigator.usb] to get access to the `USB` object.
///
/// The USB interface inherits from [EventTarget].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USB).
extension type USB._(JSObject _) implements EventTarget, JSObject {
  /// The **`getDevices`** method of the [USB] interface
  /// returns a `Promise` that resolves with an array of [USBDevice]
  /// objects for paired attached devices. For information on pairing devices,
  /// see
  /// [USB.requestDevice].
  external JSPromise<JSArray<USBDevice>> getDevices();

  /// The **`requestDevice()`** method of the [USB]
  /// interface returns a `Promise` that resolves with an instance of
  /// [USBDevice] if the specified device is found. Calling this function
  /// triggers the user agent's pairing flow.
  external JSPromise<USBDevice> requestDevice(USBDeviceRequestOptions options);
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
}
extension type USBConnectionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory USBConnectionEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required USBDevice device,
  });

  external USBDevice get device;
  external set device(USBDevice value);
}

/// The **`USBConnectionEvent`** interface of the [WebUSB API] is the event type
/// passed to `USB` [USB.connect_event] and [USB.disconnect_event] events when
/// the user agent detects that a new USB device has been connected or
/// disconnected.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USBConnectionEvent).
extension type USBConnectionEvent._(JSObject _) implements Event, JSObject {
  external factory USBConnectionEvent(
    String type,
    USBConnectionEventInit eventInitDict,
  );

  /// The **`device`** read-only property of the [USBConnectionEvent] interface
  /// returns a [USBDevice] object representing the device being connected or
  /// disconnected.
  external USBDevice get device;
}

/// The `USBInTransferResult` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides the result from a call to the `transferIn()` and
/// `controlTransferIn()` methods of the `USBDevice` interface. It represents
/// the result from requesting a transfer of data from the USB device to the USB
/// host.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USBInTransferResult).
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USBOutTransferResult).
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USBIsochronousInTransferPacket).
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USBIsochronousInTransferResult).
extension type USBIsochronousInTransferResult._(JSObject _)
    implements JSObject {
  external factory USBIsochronousInTransferResult(
    JSArray<USBIsochronousInTransferPacket> packets, [
    JSDataView? data,
  ]);

  external JSDataView? get data;
  external JSArray<USBIsochronousInTransferPacket> get packets;
}

/// The `USBIsochronousOutTransferPacket` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API) is
/// part of the response from a call to the `isochronousTransferOut()` method of
/// the `USBDevice` interface. It represents the status of an individual packet
/// from a request to transfer data from the USB host to the USB device over an
/// isochronous endpoint.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USBIsochronousOutTransferPacket).
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USBIsochronousOutTransferResult).
extension type USBIsochronousOutTransferResult._(JSObject _)
    implements JSObject {
  external factory USBIsochronousOutTransferResult(
      JSArray<USBIsochronousOutTransferPacket> packets);

  external JSArray<USBIsochronousOutTransferPacket> get packets;
}

/// The **`USBDevice`** interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides access to metadata about a paired USB device and methods for
/// controlling it.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USBDevice).
extension type USBDevice._(JSObject _) implements JSObject {
  /// The **`open()`** method of the [USBDevice]
  /// interface returns a `promise` that resolves when a device session has
  /// started.
  external JSPromise<JSAny?> open();

  /// The **`close()`** method of the [USBDevice]
  /// interface returns a `promise` that resolves when all open interfaces are
  /// released and the device session has ended.
  external JSPromise<JSAny?> close();

  /// The **`forget()`** method of the [USBDevice] interface returns a `Promise`
  /// that resolves when all pending operations are aborted, all open interfaces
  /// are released, the device session has ended, and the permission is reset.
  external JSPromise<JSAny?> forget();

  /// The **`selectConfiguration()`** method of the
  /// [USBDevice] interface returns a `promise` that resolves when
  /// the specified configuration is selected.
  external JSPromise<JSAny?> selectConfiguration(int configurationValue);

  /// The **`claimInterface()`** method of the
  /// [USBDevice] interface returns a `promise` that resolves when
  /// the requested interface is claimed for exclusive access.
  external JSPromise<JSAny?> claimInterface(int interfaceNumber);

  /// The **`releaseInterface()`** method of the
  /// [USBDevice] interface returns a `promise` that resolves when a
  /// claimed interface is released from exclusive access.
  external JSPromise<JSAny?> releaseInterface(int interfaceNumber);

  /// The **`selectAlternateInterface()`** method of the
  /// [USBDevice] interface returns a `promise` that resolves when
  /// the specified alternative endpoint is selected.
  external JSPromise<JSAny?> selectAlternateInterface(
    int interfaceNumber,
    int alternateSetting,
  );

  /// The **`controlTransferIn()`** method of the [USBDevice] interface returns
  /// a `Promise` that resolves with a [USBInTransferResult] when a command or
  /// status request has been transmitted to (received by) the USB device.
  external JSPromise<USBInTransferResult> controlTransferIn(
    USBControlTransferParameters setup,
    int length,
  );

  /// The **`controlTransferOut()`** method of the [USBDevice] interface returns
  /// a `Promise` that resolves with a [USBOutTransferResult] when a command or
  /// status operation has been transmitted from the USB device.
  external JSPromise<USBOutTransferResult> controlTransferOut(
    USBControlTransferParameters setup, [
    BufferSource data,
  ]);

  /// The **`clearHalt()`** method of the [USBDevice]
  /// interface returns a `promise` that resolves when a halt condition is
  /// cleared. A halt condition is when a data transfer to or from the device
  /// has a status
  /// of `'stall'`, which requires the web page (the _host_ system, in USB
  /// terminology) to clear that condition. See the for details.
  external JSPromise<JSAny?> clearHalt(
    USBDirection direction,
    int endpointNumber,
  );

  /// The **`transferIn()`** method of the [USBDevice]
  /// interface returns a `promise` that resolves with a
  /// [USBInTransferResult] when bulk or interrupt data is received from the USB
  /// device.
  external JSPromise<USBInTransferResult> transferIn(
    int endpointNumber,
    int length,
  );

  /// The **`transferOut()`** method of the [USBDevice]
  /// interface returns a `promise` that resolves with a
  /// [USBOutTransferResult] when bulk or interrupt data is sent to the USB
  /// device.
  external JSPromise<USBOutTransferResult> transferOut(
    int endpointNumber,
    BufferSource data,
  );

  /// The **`isochronousTransferIn()`** method of the [USBDevice] interface
  /// returns a `Promise` that resolves with a [USBIsochronousInTransferResult]
  /// when time sensitive information has been transmitted to (received by) the
  /// USB device.
  external JSPromise<USBIsochronousInTransferResult> isochronousTransferIn(
    int endpointNumber,
    JSArray<JSNumber> packetLengths,
  );

  /// The **`isochronousTransferOut()`** method of the
  /// [USBDevice] interface returns a `Promise` that resolves with a
  /// [USBIsochronousOutTransferResult] when time sensitive information has been
  /// transmitted from the USB device.
  external JSPromise<USBIsochronousOutTransferResult> isochronousTransferOut(
    int endpointNumber,
    BufferSource data,
    JSArray<JSNumber> packetLengths,
  );

  /// The **`reset()`** method of the [USBDevice]
  /// interface returns a `promise` that resolves when the device is reset and
  /// all
  /// app operations canceled and their promises rejected.
  external JSPromise<JSAny?> reset();

  /// The **`usbVersionMajor`** read only property of the
  /// [USBDevice] interface is one of three properties that declare the USB
  /// protocol version supported by the device. The other two properties
  /// are USBDevice.usbVersionMinor and USBDevice.usbVersionSubminor.
  external int get usbVersionMajor;

  /// The **`usbVersionMinor`** read only property of the
  /// [USBDevice] interface is one of three properties that declare the USB
  /// protocol version supported by the device. The other two properties
  /// are USBDevice.usbVersionMajor and USBDevice.usbVersionSubminor.
  external int get usbVersionMinor;

  /// The **`usbVersionSubminor`** read only property of the
  /// [USBDevice] interface is one of three properties that declare the USB
  /// protocol version supported by the device. The other two properties
  /// are USBDevice.usbVersionMajor and USBDevice.usbVersionMinor.
  external int get usbVersionSubminor;

  /// The **`deviceClass`** read only property of the
  /// [USBDevice] interface one of three properties that identify USB devices
  /// for
  /// the purpose of loading a USB driver that will work with that device. The
  /// other two
  /// properties are `USBDevice.deviceSubclass` and `USBDevice.deviceProtocol`.
  external int get deviceClass;

  /// The **`deviceSubclass`** read only property of the
  /// [USBDevice] interface one of three properties that identify USB devices
  /// for
  /// the purpose of loading a USB driver that will work with that device. The
  /// other two
  /// properties are USBDevice.deviceClass and USBDevice.deviceProtocol.
  external int get deviceSubclass;

  /// The **`deviceProtocol`** read only property of the
  /// [USBDevice] interface one of three properties that identify USB devices
  /// for
  /// the purpose of loading a USB driver that will work with that device. The
  /// other two
  /// properties are `USBDevice.deviceClass`
  /// and `USBDevice.deviceSubclass`.
  external int get deviceProtocol;

  /// The **`vendorId`** read only property of the
  /// [USBDevice] interface is the official usb.org-assigned vendor ID.
  external int get vendorId;

  /// The **`productId`** read only property of the
  /// [USBDevice] interface the manufacturer-defined code that identifies a USB
  /// device.
  external int get productId;

  /// The **`deviceVersionMajor`** read only property of the
  /// [USBDevice] interface he major version number of the device in a semantic
  /// versioning scheme.
  external int get deviceVersionMajor;

  /// The **`deviceVersionMinor`** read only property of the
  /// [USBDevice] interface the minor version number of the device in a semantic
  /// versioning scheme.
  external int get deviceVersionMinor;

  /// The **`deviceVersionSubminor`** read only property of the
  /// [USBDevice] interface the patch version number of the device in a semantic
  /// versioning scheme.
  external int get deviceVersionSubminor;

  /// The **`manufacturerName`** read only property of the
  /// [USBDevice] interface the of the organization that manufactured the USB
  /// device.
  external String? get manufacturerName;

  /// The **`productName`** read only property of the
  /// [USBDevice] interface the manufacturer-defined name that identifies a USB
  /// device.
  external String? get productName;

  /// The **`serialNumber`** read only property of the
  /// [USBDevice] interface is the manufacturer-defined serial number for the
  /// specific USB device.
  external String? get serialNumber;

  /// The **`configuration`** read only property of the
  /// [USBDevice] interface returns a [USBConfiguration] object for
  /// the currently selected interface for a paired USB device.
  external USBConfiguration? get configuration;

  /// The **`configurations`** read only property of the
  /// [USBDevice] interface an `array` of device-specific interfaces
  /// for controlling a paired USB device.
  external JSArray<USBConfiguration> get configurations;

  /// The **`opened`** read only property of the
  /// [USBDevice] interface indicates whether a session has been started with a
  /// paired USB device. A device must be opened before it can be controlled by
  /// a web page.
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

  external USBRequestType get requestType;
  external set requestType(USBRequestType value);
  external USBRecipient get recipient;
  external set recipient(USBRecipient value);
  external int get request;
  external set request(int value);
  external int get value;
  external set value(int value);
  external int get index;
  external set index(int value);
}

/// The `USBConfiguration` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides information about a particular configuration of a USB device and
/// the interfaces that it supports.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USBConfiguration).
extension type USBConfiguration._(JSObject _) implements JSObject {
  external factory USBConfiguration(
    USBDevice device,
    int configurationValue,
  );

  /// The **`configurationValue`** read-only property
  /// of the [USBConfiguration] interface returns the configuration value of
  /// this configuration. This is equal to the
  /// [`bConfigurationValue`](https://www.beyondlogic.org/usbnutshell/usb5.shtml#ConfigurationDescriptors)
  /// field of the configuration descriptor provided by the device defining this
  /// configuration.
  external int get configurationValue;

  /// The **`configurationName`** read-only property
  /// of the [USBConfiguration] interface returns the name provided by the
  /// device
  /// to describe this configuration. This is equal to the value of the string
  /// descriptor with
  /// the index provided in the
  /// [`iConfiguration`](https://www.beyondlogic.org/usbnutshell/usb5.shtml#ConfigurationDescriptors)
  /// field of the configuration descriptor defining this configuration.
  external String? get configurationName;

  /// The **`interfaces`** read-only property of the
  /// [USBConfiguration] interface returns an array containing instances of the
  /// [USBInterface] describing each interface supported by this configuration.
  external JSArray<USBInterface> get interfaces;
}

/// The `USBInterface` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides information about an interface provided by the USB device. An
/// interface represents a feature of the device which implements a particular
/// protocol and may contain endpoints for bidirectional communication.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USBInterface).
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

/// The `USBAlternateInterface` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides information about a particular configuration of an interface
/// provided by the USB device. An interface includes one or more alternate
/// settings which can configure a set of endpoints based on the operating mode
/// of the device.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USBAlternateInterface).
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

/// The `USBEndpoint` interface of the
/// [WebUSB API](https://developer.mozilla.org/en-US/docs/Web/API/WebUSB_API)
/// provides information about an endpoint provided by the USB device. An
/// endpoint represents a unidirectional data stream into or out of a device.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/USBEndpoint).
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
extension type USBBlocklistEntry._(JSObject _) implements JSObject {
  external factory USBBlocklistEntry({
    required int idVendor,
    required int idProduct,
    required int bcdDevice,
  });

  external int get idVendor;
  external set idVendor(int value);
  external int get idProduct;
  external set idProduct(int value);
  external int get bcdDevice;
  external set bcdDevice(int value);
}
extension type USBPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory USBPermissionDescriptor({
    required String name,
    JSArray<USBDeviceFilter> filters,
    JSArray<USBDeviceFilter> exclusionFilters,
  });

  external JSArray<USBDeviceFilter> get filters;
  external set filters(JSArray<USBDeviceFilter> value);
  external JSArray<USBDeviceFilter> get exclusionFilters;
  external set exclusionFilters(JSArray<USBDeviceFilter> value);
}
extension type AllowedUSBDevice._(JSObject _) implements JSObject {
  external factory AllowedUSBDevice({
    required int vendorId,
    required int productId,
    String serialNumber,
  });

  external int get vendorId;
  external set vendorId(int value);
  external int get productId;
  external set productId(int value);
  external String get serialNumber;
  external set serialNumber(String value);
}
extension type USBPermissionStorage._(JSObject _) implements JSObject {
  external factory USBPermissionStorage(
      {JSArray<AllowedUSBDevice> allowedDevices});

  external JSArray<AllowedUSBDevice> get allowedDevices;
  external set allowedDevices(JSArray<AllowedUSBDevice> value);
}
extension type USBPermissionResult._(JSObject _)
    implements PermissionStatus, JSObject {
  external JSArray<USBDevice> get devices;
  external set devices(JSArray<USBDevice> value);
}
