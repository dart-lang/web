// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef HIDUnitSystem = JSString;

@JS('HID')
@staticInterop
class HID extends EventTarget {
  external factory HID();
}

extension HIDExtension on HID {
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external JSPromise getDevices();
  external JSPromise requestDevice(HIDDeviceRequestOptions options);
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
    JSNumber vendorId,
    JSNumber productId,
    JSNumber usagePage,
    JSNumber usage,
  });
}

extension HIDDeviceFilterExtension on HIDDeviceFilter {
  external set vendorId(JSNumber value);
  external JSNumber get vendorId;
  external set productId(JSNumber value);
  external JSNumber get productId;
  external set usagePage(JSNumber value);
  external JSNumber get usagePage;
  external set usage(JSNumber value);
  external JSNumber get usage;
}

@JS('HIDDevice')
@staticInterop
class HIDDevice extends EventTarget {
  external factory HIDDevice();
}

extension HIDDeviceExtension on HIDDevice {
  external set oninputreport(EventHandler value);
  external EventHandler get oninputreport;
  external JSBoolean get opened;
  external JSNumber get vendorId;
  external JSNumber get productId;
  external JSString get productName;
  external JSArray get collections;
  external JSPromise open();
  external JSPromise close();
  external JSPromise forget();
  external JSPromise sendReport(
    JSNumber reportId,
    BufferSource data,
  );
  external JSPromise sendFeatureReport(
    JSNumber reportId,
    BufferSource data,
  );
  external JSPromise receiveFeatureReport(JSNumber reportId);
}

@JS('HIDConnectionEvent')
@staticInterop
class HIDConnectionEvent extends Event {
  external factory HIDConnectionEvent();

  external factory HIDConnectionEvent.a1(
    JSString type,
    HIDConnectionEventInit eventInitDict,
  );
}

extension HIDConnectionEventExtension on HIDConnectionEvent {
  external HIDDevice get device;
}

@JS()
@staticInterop
@anonymous
class HIDConnectionEventInit extends EventInit {
  external factory HIDConnectionEventInit({required HIDDevice device});
}

extension HIDConnectionEventInitExtension on HIDConnectionEventInit {
  external set device(HIDDevice value);
  external HIDDevice get device;
}

@JS('HIDInputReportEvent')
@staticInterop
class HIDInputReportEvent extends Event {
  external factory HIDInputReportEvent();

  external factory HIDInputReportEvent.a1(
    JSString type,
    HIDInputReportEventInit eventInitDict,
  );
}

extension HIDInputReportEventExtension on HIDInputReportEvent {
  external HIDDevice get device;
  external JSNumber get reportId;
  external JSDataView get data;
}

@JS()
@staticInterop
@anonymous
class HIDInputReportEventInit extends EventInit {
  external factory HIDInputReportEventInit({
    required HIDDevice device,
    required JSNumber reportId,
    required JSDataView data,
  });
}

extension HIDInputReportEventInitExtension on HIDInputReportEventInit {
  external set device(HIDDevice value);
  external HIDDevice get device;
  external set reportId(JSNumber value);
  external JSNumber get reportId;
  external set data(JSDataView value);
  external JSDataView get data;
}

@JS()
@staticInterop
@anonymous
class HIDCollectionInfo {
  external factory HIDCollectionInfo({
    JSNumber usagePage,
    JSNumber usage,
    JSNumber type,
    JSArray children,
    JSArray inputReports,
    JSArray outputReports,
    JSArray featureReports,
  });
}

extension HIDCollectionInfoExtension on HIDCollectionInfo {
  external set usagePage(JSNumber value);
  external JSNumber get usagePage;
  external set usage(JSNumber value);
  external JSNumber get usage;
  external set type(JSNumber value);
  external JSNumber get type;
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
    JSNumber reportId,
    JSArray items,
  });
}

extension HIDReportInfoExtension on HIDReportInfo {
  external set reportId(JSNumber value);
  external JSNumber get reportId;
  external set items(JSArray value);
  external JSArray get items;
}

@JS()
@staticInterop
@anonymous
class HIDReportItem {
  external factory HIDReportItem({
    JSBoolean isAbsolute,
    JSBoolean isArray,
    JSBoolean isBufferedBytes,
    JSBoolean isConstant,
    JSBoolean isLinear,
    JSBoolean isRange,
    JSBoolean isVolatile,
    JSBoolean hasNull,
    JSBoolean hasPreferredState,
    JSBoolean wrap,
    JSArray usages,
    JSNumber usageMinimum,
    JSNumber usageMaximum,
    JSNumber reportSize,
    JSNumber reportCount,
    JSNumber unitExponent,
    HIDUnitSystem unitSystem,
    JSNumber unitFactorLengthExponent,
    JSNumber unitFactorMassExponent,
    JSNumber unitFactorTimeExponent,
    JSNumber unitFactorTemperatureExponent,
    JSNumber unitFactorCurrentExponent,
    JSNumber unitFactorLuminousIntensityExponent,
    JSNumber logicalMinimum,
    JSNumber logicalMaximum,
    JSNumber physicalMinimum,
    JSNumber physicalMaximum,
    JSArray strings,
  });
}

extension HIDReportItemExtension on HIDReportItem {
  external set isAbsolute(JSBoolean value);
  external JSBoolean get isAbsolute;
  external set isArray(JSBoolean value);
  external JSBoolean get isArray;
  external set isBufferedBytes(JSBoolean value);
  external JSBoolean get isBufferedBytes;
  external set isConstant(JSBoolean value);
  external JSBoolean get isConstant;
  external set isLinear(JSBoolean value);
  external JSBoolean get isLinear;
  external set isRange(JSBoolean value);
  external JSBoolean get isRange;
  external set isVolatile(JSBoolean value);
  external JSBoolean get isVolatile;
  external set hasNull(JSBoolean value);
  external JSBoolean get hasNull;
  external set hasPreferredState(JSBoolean value);
  external JSBoolean get hasPreferredState;
  external set wrap(JSBoolean value);
  external JSBoolean get wrap;
  external set usages(JSArray value);
  external JSArray get usages;
  external set usageMinimum(JSNumber value);
  external JSNumber get usageMinimum;
  external set usageMaximum(JSNumber value);
  external JSNumber get usageMaximum;
  external set reportSize(JSNumber value);
  external JSNumber get reportSize;
  external set reportCount(JSNumber value);
  external JSNumber get reportCount;
  external set unitExponent(JSNumber value);
  external JSNumber get unitExponent;
  external set unitSystem(HIDUnitSystem value);
  external HIDUnitSystem get unitSystem;
  external set unitFactorLengthExponent(JSNumber value);
  external JSNumber get unitFactorLengthExponent;
  external set unitFactorMassExponent(JSNumber value);
  external JSNumber get unitFactorMassExponent;
  external set unitFactorTimeExponent(JSNumber value);
  external JSNumber get unitFactorTimeExponent;
  external set unitFactorTemperatureExponent(JSNumber value);
  external JSNumber get unitFactorTemperatureExponent;
  external set unitFactorCurrentExponent(JSNumber value);
  external JSNumber get unitFactorCurrentExponent;
  external set unitFactorLuminousIntensityExponent(JSNumber value);
  external JSNumber get unitFactorLuminousIntensityExponent;
  external set logicalMinimum(JSNumber value);
  external JSNumber get logicalMinimum;
  external set logicalMaximum(JSNumber value);
  external JSNumber get logicalMaximum;
  external set physicalMinimum(JSNumber value);
  external JSNumber get physicalMinimum;
  external set physicalMaximum(JSNumber value);
  external JSNumber get physicalMaximum;
  external set strings(JSArray value);
  external JSArray get strings;
}
