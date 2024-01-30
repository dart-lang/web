// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef HIDUnitSystem = String;
extension type HID._(JSObject _) implements EventTarget, JSObject {
  external JSPromise<JSArray<HIDDevice>> getDevices();
  external JSPromise<JSArray<HIDDevice>> requestDevice(
      HIDDeviceRequestOptions options);
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
}
extension type HIDDeviceRequestOptions._(JSObject _) implements JSObject {
  external factory HIDDeviceRequestOptions({
    required JSArray<HIDDeviceFilter> filters,
    JSArray<HIDDeviceFilter> exclusionFilters,
  });

  external set filters(JSArray<HIDDeviceFilter> value);
  external JSArray<HIDDeviceFilter> get filters;
  external set exclusionFilters(JSArray<HIDDeviceFilter> value);
  external JSArray<HIDDeviceFilter> get exclusionFilters;
}
extension type HIDDeviceFilter._(JSObject _) implements JSObject {
  external factory HIDDeviceFilter({
    int vendorId,
    int productId,
    int usagePage,
    int usage,
  });

  external set vendorId(int value);
  external int get vendorId;
  external set productId(int value);
  external int get productId;
  external set usagePage(int value);
  external int get usagePage;
  external set usage(int value);
  external int get usage;
}
extension type HIDDevice._(JSObject _) implements EventTarget, JSObject {
  external JSPromise<JSAny?> open();
  external JSPromise<JSAny?> close();
  external JSPromise<JSAny?> forget();
  external JSPromise<JSAny?> sendReport(
    int reportId,
    BufferSource data,
  );
  external JSPromise<JSAny?> sendFeatureReport(
    int reportId,
    BufferSource data,
  );
  external JSPromise<JSDataView> receiveFeatureReport(int reportId);
  external set oninputreport(EventHandler value);
  external EventHandler get oninputreport;
  external bool get opened;
  external int get vendorId;
  external int get productId;
  external String get productName;
  external JSArray<HIDCollectionInfo> get collections;
}
extension type HIDConnectionEvent._(JSObject _) implements Event, JSObject {
  external factory HIDConnectionEvent(
    String type,
    HIDConnectionEventInit eventInitDict,
  );

  external HIDDevice get device;
}
extension type HIDConnectionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory HIDConnectionEventInit({required HIDDevice device});

  external set device(HIDDevice value);
  external HIDDevice get device;
}
extension type HIDInputReportEvent._(JSObject _) implements Event, JSObject {
  external factory HIDInputReportEvent(
    String type,
    HIDInputReportEventInit eventInitDict,
  );

  external HIDDevice get device;
  external int get reportId;
  external JSDataView get data;
}
extension type HIDInputReportEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory HIDInputReportEventInit({
    required HIDDevice device,
    required int reportId,
    required JSDataView data,
  });

  external set device(HIDDevice value);
  external HIDDevice get device;
  external set reportId(int value);
  external int get reportId;
  external set data(JSDataView value);
  external JSDataView get data;
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

  external set usagePage(int value);
  external int get usagePage;
  external set usage(int value);
  external int get usage;
  external set type(int value);
  external int get type;
  external set children(JSArray<HIDCollectionInfo> value);
  external JSArray<HIDCollectionInfo> get children;
  external set inputReports(JSArray<HIDReportInfo> value);
  external JSArray<HIDReportInfo> get inputReports;
  external set outputReports(JSArray<HIDReportInfo> value);
  external JSArray<HIDReportInfo> get outputReports;
  external set featureReports(JSArray<HIDReportInfo> value);
  external JSArray<HIDReportInfo> get featureReports;
}
extension type HIDReportInfo._(JSObject _) implements JSObject {
  external factory HIDReportInfo({
    int reportId,
    JSArray<HIDReportItem> items,
  });

  external set reportId(int value);
  external int get reportId;
  external set items(JSArray<HIDReportItem> value);
  external JSArray<HIDReportItem> get items;
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
  external set usages(JSArray<JSNumber> value);
  external JSArray<JSNumber> get usages;
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
  external set strings(JSArray<JSString> value);
  external JSArray<JSString> get strings;
}
