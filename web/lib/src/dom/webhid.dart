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
import 'webidl.dart';

typedef HIDUnitSystem = String;

/// @AvailableInWorkers("window_and_worker_except_shared")
///
/// The **`HID`** interface provides methods for connecting to _HID devices_,
/// listing attached HID devices and event handlers for connected HID devices.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HID).
extension type HID._(JSObject _) implements EventTarget, JSObject {
  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`getDevices()`** method of the [HID] interface gets a list of
  /// connected HID devices that the user has previously been granted access to
  /// in response to a [HID.requestDevice] call.
  external JSPromise<JSArray<HIDDevice>> getDevices();

  /// The **`requestDevice()`** method of the [HID] interface requests access to
  /// a HID device.
  ///
  /// The user agent will present a permission dialog including a list of
  /// connected devices, and ask the user to select and grant permission to one
  /// of these devices.
  external JSPromise<JSArray<HIDDevice>> requestDevice(
      HIDDeviceRequestOptions options);
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
}
extension type HIDDeviceRequestOptions._(JSObject _) implements JSObject {
  external factory HIDDeviceRequestOptions({
    required JSArray<HIDDeviceFilter> filters,
    JSArray<HIDDeviceFilter> exclusionFilters,
  });

  external JSArray<HIDDeviceFilter> get filters;
  external set filters(JSArray<HIDDeviceFilter> value);
  external JSArray<HIDDeviceFilter> get exclusionFilters;
  external set exclusionFilters(JSArray<HIDDeviceFilter> value);
}
extension type HIDDeviceFilter._(JSObject _) implements JSObject {
  external factory HIDDeviceFilter({
    int vendorId,
    int productId,
    int usagePage,
    int usage,
  });

  external int get vendorId;
  external set vendorId(int value);
  external int get productId;
  external set productId(int value);
  external int get usagePage;
  external set usagePage(int value);
  external int get usage;
  external set usage(int value);
}

/// @AvailableInWorkers("window_and_worker_except_shared")
///
/// The **`HIDDevice`** interface of the
/// [WebHID API](https://developer.mozilla.org/en-US/docs/Web/API/WebHID_API)
/// represents a HID Device. It provides properties for accessing information
/// about the device, methods for opening and closing the connection, and the
/// sending and receiving of reports.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HIDDevice).
extension type HIDDevice._(JSObject _) implements EventTarget, JSObject {
  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`open()`** method of the [HIDDevice] interface requests that the
  /// operating system opens the HID device.
  ///
  /// > [!NOTE]
  /// > HID devices are not opened automatically. Therefore, a [HIDDevice]
  /// > returned by [HID.requestDevice] must be opened with this method before
  /// > it is available to transfer data.
  external JSPromise<JSAny?> open();

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`close()`** method of the [HIDDevice] interface closes the
  /// connection to the HID device.
  external JSPromise<JSAny?> close();

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`forget()`** method of the [HIDDevice] interface closes the
  /// connection to the HID device and forgets the device.
  external JSPromise<JSAny?> forget();

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`sendReport()`** method of the [HIDDevice] interface sends an output
  /// report to the HID device.
  ///
  /// The `reportId` for each of the report formats that this device supports
  /// can be retrieved from [HIDDevice.collections].
  external JSPromise<JSAny?> sendReport(
    int reportId,
    BufferSource data,
  );

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`sendFeatureReport()`** method of the [HIDDevice] interface sends a
  /// feature report to the HID device. Feature reports are a way for HID
  /// devices and applications to exchange non-standardized HID data.
  ///
  /// The `reportId` for each of the report formats that this device supports
  /// can be retrieved from [HIDDevice.collections].
  external JSPromise<JSAny?> sendFeatureReport(
    int reportId,
    BufferSource data,
  );

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`receiveFeatureReport()`** method of the [HIDDevice] interface
  /// receives a feature report from the HID device. Feature reports are a way
  /// for HID devices and applications to exchange non-standardized HID data.
  ///
  /// The `reportId` for each of the report formats that this device supports
  /// can be retrieved from [HIDDevice.collections].
  external JSPromise<JSDataView> receiveFeatureReport(int reportId);
  external EventHandler get oninputreport;
  external set oninputreport(EventHandler value);

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`opened`** read-only property of the [HIDDevice] interface returns
  /// true if the connection to the [HIDDevice] is open and ready to transfer
  /// data.
  external bool get opened;

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`vendorId`** read-only property of the [HIDDevice] interface returns
  /// the vendor ID of the connected HID device. This identifies the vendor of
  /// the device.
  external int get vendorId;

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`productId`** read-only property of the [HIDDevice] interface
  /// returns the product ID of the connected HID device.
  external int get productId;

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`productName`** read-only property of the [HIDDevice] interface
  /// returns the product name of the connected HID device.
  external String get productName;

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`collections`** read-only property of the [HIDDevice] interface
  /// returns an array of report formats
  external JSArray<HIDCollectionInfo> get collections;
}

/// @AvailableInWorkers("window_and_worker_except_shared")
///
/// The **`HIDConnectionEvent`** interface of the
/// [WebHID API](https://developer.mozilla.org/en-US/docs/Web/API/WebHID_API)
/// represents HID connection events, and is the event type passed to
/// [HID.connect_event] and [HID.disconnect_event] event handlers when a
/// device's connection state changes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HIDConnectionEvent).
extension type HIDConnectionEvent._(JSObject _) implements Event, JSObject {
  external factory HIDConnectionEvent(
    String type,
    HIDConnectionEventInit eventInitDict,
  );

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`device`** read-only property of the [HIDConnectionEvent] interface
  /// returns the [HIDDevice] associated with this connection event.
  external HIDDevice get device;
}
extension type HIDConnectionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory HIDConnectionEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required HIDDevice device,
  });

  external HIDDevice get device;
  external set device(HIDDevice value);
}

/// @AvailableInWorkers("window_and_worker_except_shared")
///
/// The **`HIDInputReportEvent`** interface of the
/// [WebHID API](https://developer.mozilla.org/en-US/docs/Web/API/WebHID_API) is
/// passed to [HIDDevice.inputreport_event] event of `HIDDevice` when an input
/// report is received from any associated HID device.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HIDInputReportEvent).
extension type HIDInputReportEvent._(JSObject _) implements Event, JSObject {
  external factory HIDInputReportEvent(
    String type,
    HIDInputReportEventInit eventInitDict,
  );

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`device`** property of the [HIDInputReportEvent] interface returns
  /// the [HIDDevice] instance that represents the HID interface that sent the
  /// input report.
  external HIDDevice get device;

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`reportId`** property of the [HIDInputReportEvent] interface returns
  /// the one-byte identification prefix for this report, or 0 if the HID
  /// interface does not use report IDs.
  external int get reportId;

  /// @AvailableInWorkers("window_and_worker_except_shared")
  ///
  /// The **`data`** property of the [HIDInputReportEvent] interface returns a
  /// `DataView` containing the data from the input report, excluding the
  /// `reportId` if the HID interface uses report IDs.
  external JSDataView get data;
}
extension type HIDInputReportEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory HIDInputReportEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required HIDDevice device,
    required int reportId,
    required JSDataView data,
  });

  external HIDDevice get device;
  external set device(HIDDevice value);
  external int get reportId;
  external set reportId(int value);
  external JSDataView get data;
  external set data(JSDataView value);
}
extension type HIDCollectionInfo._(JSObject _) implements JSObject {
  external factory HIDCollectionInfo({
    int usagePage,
    int usage,
    int type,
    JSArray<HIDCollectionInfo> children,
    JSArray<HIDReportInfo> inputReports,
    JSArray<HIDReportInfo> outputReports,
    JSArray<HIDReportInfo> featureReports,
  });

  external int get usagePage;
  external set usagePage(int value);
  external int get usage;
  external set usage(int value);
  external int get type;
  external set type(int value);
  external JSArray<HIDCollectionInfo> get children;
  external set children(JSArray<HIDCollectionInfo> value);
  external JSArray<HIDReportInfo> get inputReports;
  external set inputReports(JSArray<HIDReportInfo> value);
  external JSArray<HIDReportInfo> get outputReports;
  external set outputReports(JSArray<HIDReportInfo> value);
  external JSArray<HIDReportInfo> get featureReports;
  external set featureReports(JSArray<HIDReportInfo> value);
}
extension type HIDReportInfo._(JSObject _) implements JSObject {
  external factory HIDReportInfo({
    int reportId,
    JSArray<HIDReportItem> items,
  });

  external int get reportId;
  external set reportId(int value);
  external JSArray<HIDReportItem> get items;
  external set items(JSArray<HIDReportItem> value);
}
extension type HIDReportItem._(JSObject _) implements JSObject {
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
    JSArray<JSNumber> usages,
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
    JSArray<JSString> strings,
  });

  external bool get isAbsolute;
  external set isAbsolute(bool value);
  external bool get isArray;
  external set isArray(bool value);
  external bool get isBufferedBytes;
  external set isBufferedBytes(bool value);
  external bool get isConstant;
  external set isConstant(bool value);
  external bool get isLinear;
  external set isLinear(bool value);
  external bool get isRange;
  external set isRange(bool value);
  external bool get isVolatile;
  external set isVolatile(bool value);
  external bool get hasNull;
  external set hasNull(bool value);
  external bool get hasPreferredState;
  external set hasPreferredState(bool value);
  external bool get wrap;
  external set wrap(bool value);
  external JSArray<JSNumber> get usages;
  external set usages(JSArray<JSNumber> value);
  external int get usageMinimum;
  external set usageMinimum(int value);
  external int get usageMaximum;
  external set usageMaximum(int value);
  external int get reportSize;
  external set reportSize(int value);
  external int get reportCount;
  external set reportCount(int value);
  external int get unitExponent;
  external set unitExponent(int value);
  external HIDUnitSystem get unitSystem;
  external set unitSystem(HIDUnitSystem value);
  external int get unitFactorLengthExponent;
  external set unitFactorLengthExponent(int value);
  external int get unitFactorMassExponent;
  external set unitFactorMassExponent(int value);
  external int get unitFactorTimeExponent;
  external set unitFactorTimeExponent(int value);
  external int get unitFactorTemperatureExponent;
  external set unitFactorTemperatureExponent(int value);
  external int get unitFactorCurrentExponent;
  external set unitFactorCurrentExponent(int value);
  external int get unitFactorLuminousIntensityExponent;
  external set unitFactorLuminousIntensityExponent(int value);
  external int get logicalMinimum;
  external set logicalMinimum(int value);
  external int get logicalMaximum;
  external set logicalMaximum(int value);
  external int get physicalMinimum;
  external set physicalMinimum(int value);
  external int get physicalMaximum;
  external set physicalMaximum(int value);
  external JSArray<JSString> get strings;
  external set strings(JSArray<JSString> value);
}
