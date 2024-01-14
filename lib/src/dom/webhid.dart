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
import 'webidl.dart';

typedef HIDUnitSystem = String;

/// The **`HID`** interface provides methods for connecting to _HID devices_,
/// listing attached HID devices and event handlers for connected HID devices.
@JS('HID')
@staticInterop
class HID implements EventTarget {}

extension HIDExtension on HID {
  /// The **`getDevices()`** method of the [HID] interface gets a list of the
  /// connected HID devices that the user has previously been granted access to
  /// in response to a [HID.requestDevice] call.
  external JSPromise getDevices();

  /// The **`requestDevice()`** method of the [HID] interface requests access to
  /// a HID device.
  ///
  /// The user agent will present a permission dialog including a list of
  /// connected devices, and ask the user to select and grant permission to one
  /// of these devices.
  external JSPromise requestDevice(HIDDeviceRequestOptions options);
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
}

@JS()
@staticInterop
@anonymous
class HIDDeviceRequestOptions {
  external factory HIDDeviceRequestOptions({
    required JSArray filters,
    JSArray exclusionFilters,
  });
}

extension HIDDeviceRequestOptionsExtension on HIDDeviceRequestOptions {
  external set filters(JSArray value);
  external JSArray get filters;
  external set exclusionFilters(JSArray value);
  external JSArray get exclusionFilters;
}

@JS()
@staticInterop
@anonymous
class HIDDeviceFilter {
  external factory HIDDeviceFilter({
    int vendorId,
    int productId,
    int usagePage,
    int usage,
  });
}

extension HIDDeviceFilterExtension on HIDDeviceFilter {
  external set vendorId(int value);
  external int get vendorId;
  external set productId(int value);
  external int get productId;
  external set usagePage(int value);
  external int get usagePage;
  external set usage(int value);
  external int get usage;
}

/// The **`HIDDevice`** interface of the [WebHID API] represents a HID Device.
/// It provides properties for accessing information about the device, methods
/// for opening and closing the connection, and the sending and receiving of
/// reports.
@JS('HIDDevice')
@staticInterop
class HIDDevice implements EventTarget {}

extension HIDDeviceExtension on HIDDevice {
  /// The **`open()`** method of the [HIDDevice] interface requests that the
  /// operating system opens the HID device.
  ///
  /// > **Note:** HID devices are not opened automatically. Therefore, a
  /// > [HIDDevice] returned by [HID.requestDevice] must be opened with this
  /// > method before it is available to transfer data.
  external JSPromise open();

  /// The **`close()`** method of the [HIDDevice] interface closes the
  /// connection to the HID device.
  external JSPromise close();

  /// The **`forget()`** method of the [HIDDevice] interface closes the
  /// connection to the HID device and forgets the device.
  external JSPromise forget();

  /// The **`sendReport()`** method of the [HIDDevice] interface sends an output
  /// report to the HID device.
  ///
  /// The `reportId` for each of the report formats that this device supports
  /// can be retrieved from [HIDDevice.collections].
  external JSPromise sendReport(
    int reportId,
    BufferSource data,
  );

  /// The **`sendFeatureReport()`** method of the [HIDDevice] interface sends a
  /// feature report to the HID device. Feature reports are a way for HID
  /// devices and applications to exchange non-standardized HID data.
  ///
  /// The `reportId` for each of the report formats that this device supports
  /// can be retrieved from [HIDDevice.collections].
  external JSPromise sendFeatureReport(
    int reportId,
    BufferSource data,
  );

  /// The **`receiveFeatureReport()`** method of the [HIDDevice] interface
  /// receives a feature report from the HID device. Feature reports are a way
  /// for HID devices and applications to exchange non-standardized HID data.
  ///
  /// The `reportId` for each of the report formats that this device supports
  /// can be retrieved from [HIDDevice.collections].
  external JSPromise receiveFeatureReport(int reportId);
  external set oninputreport(EventHandler value);
  external EventHandler get oninputreport;
  external bool get opened;
  external int get vendorId;
  external int get productId;
  external String get productName;
  external JSArray get collections;
}

/// The **`HIDConnectionEvent`** interface of the [WebHID API] represents HID
/// connection events, and is the event type passed to [HID/connect_event] and
/// [HID/disconnect_event] event handlers when an input report is received.
@JS('HIDConnectionEvent')
@staticInterop
class HIDConnectionEvent implements Event {
  external factory HIDConnectionEvent(
    String type,
    HIDConnectionEventInit eventInitDict,
  );
}

extension HIDConnectionEventExtension on HIDConnectionEvent {
  external HIDDevice get device;
}

@JS()
@staticInterop
@anonymous
class HIDConnectionEventInit implements EventInit {
  external factory HIDConnectionEventInit({required HIDDevice device});
}

extension HIDConnectionEventInitExtension on HIDConnectionEventInit {
  external set device(HIDDevice value);
  external HIDDevice get device;
}

/// The **`HIDInputReportEvent`** interface of the [WebHID API] is passed to
/// [HIDDevice.inputreport_event] when an input report is received from any
/// associated HID device.
@JS('HIDInputReportEvent')
@staticInterop
class HIDInputReportEvent implements Event {
  external factory HIDInputReportEvent(
    String type,
    HIDInputReportEventInit eventInitDict,
  );
}

extension HIDInputReportEventExtension on HIDInputReportEvent {
  external HIDDevice get device;
  external int get reportId;
  external JSDataView get data;
}

@JS()
@staticInterop
@anonymous
class HIDInputReportEventInit implements EventInit {
  external factory HIDInputReportEventInit({
    required HIDDevice device,
    required int reportId,
    required JSDataView data,
  });
}

extension HIDInputReportEventInitExtension on HIDInputReportEventInit {
  external set device(HIDDevice value);
  external HIDDevice get device;
  external set reportId(int value);
  external int get reportId;
  external set data(JSDataView value);
  external JSDataView get data;
}

@JS()
@staticInterop
@anonymous
class HIDCollectionInfo {
  external factory HIDCollectionInfo({
    int usagePage,
    int usage,
    int type,
    JSArray children,
    JSArray inputReports,
    JSArray outputReports,
    JSArray featureReports,
  });
}

extension HIDCollectionInfoExtension on HIDCollectionInfo {
  external set usagePage(int value);
  external int get usagePage;
  external set usage(int value);
  external int get usage;
  external set type(int value);
  external int get type;
  external set children(JSArray value);
  external JSArray get children;
  external set inputReports(JSArray value);
  external JSArray get inputReports;
  external set outputReports(JSArray value);
  external JSArray get outputReports;
  external set featureReports(JSArray value);
  external JSArray get featureReports;
}

@JS()
@staticInterop
@anonymous
class HIDReportInfo {
  external factory HIDReportInfo({
    int reportId,
    JSArray items,
  });
}

extension HIDReportInfoExtension on HIDReportInfo {
  external set reportId(int value);
  external int get reportId;
  external set items(JSArray value);
  external JSArray get items;
}

@JS()
@staticInterop
@anonymous
class HIDReportItem {
  external factory HIDReportItem({
    bool isAbsolute,
    bool isArray,
    bool isBufferedBytes,
    bool isConstant,
    bool isLinear,
    bool isRange,
    bool isVolatile,
    bool hasNull,
    bool hasPreferredState,
    bool wrap,
    JSArray usages,
    int usageMinimum,
    int usageMaximum,
    int reportSize,
    int reportCount,
    int unitExponent,
    HIDUnitSystem unitSystem,
    int unitFactorLengthExponent,
    int unitFactorMassExponent,
    int unitFactorTimeExponent,
    int unitFactorTemperatureExponent,
    int unitFactorCurrentExponent,
    int unitFactorLuminousIntensityExponent,
    int logicalMinimum,
    int logicalMaximum,
    int physicalMinimum,
    int physicalMaximum,
    JSArray strings,
  });
}

extension HIDReportItemExtension on HIDReportItem {
  external set isAbsolute(bool value);
  external bool get isAbsolute;
  external set isArray(bool value);
  external bool get isArray;
  external set isBufferedBytes(bool value);
  external bool get isBufferedBytes;
  external set isConstant(bool value);
  external bool get isConstant;
  external set isLinear(bool value);
  external bool get isLinear;
  external set isRange(bool value);
  external bool get isRange;
  external set isVolatile(bool value);
  external bool get isVolatile;
  external set hasNull(bool value);
  external bool get hasNull;
  external set hasPreferredState(bool value);
  external bool get hasPreferredState;
  external set wrap(bool value);
  external bool get wrap;
  external set usages(JSArray value);
  external JSArray get usages;
  external set usageMinimum(int value);
  external int get usageMinimum;
  external set usageMaximum(int value);
  external int get usageMaximum;
  external set reportSize(int value);
  external int get reportSize;
  external set reportCount(int value);
  external int get reportCount;
  external set unitExponent(int value);
  external int get unitExponent;
  external set unitSystem(HIDUnitSystem value);
  external HIDUnitSystem get unitSystem;
  external set unitFactorLengthExponent(int value);
  external int get unitFactorLengthExponent;
  external set unitFactorMassExponent(int value);
  external int get unitFactorMassExponent;
  external set unitFactorTimeExponent(int value);
  external int get unitFactorTimeExponent;
  external set unitFactorTemperatureExponent(int value);
  external int get unitFactorTemperatureExponent;
  external set unitFactorCurrentExponent(int value);
  external int get unitFactorCurrentExponent;
  external set unitFactorLuminousIntensityExponent(int value);
  external int get unitFactorLuminousIntensityExponent;
  external set logicalMinimum(int value);
  external int get logicalMinimum;
  external set logicalMaximum(int value);
  external int get logicalMaximum;
  external set physicalMinimum(int value);
  external int get physicalMinimum;
  external set physicalMaximum(int value);
  external int get physicalMaximum;
  external set strings(JSArray value);
  external JSArray get strings;
}
