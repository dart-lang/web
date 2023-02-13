// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef HIDUnitSystem = JSString;

@JS('HID')
@staticInterop
class HID extends EventTarget {
  external factory HID();
}

extension HIDExtension on HID {
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
  external JSPromise getDevices();
  external JSPromise requestDevice(HIDDeviceRequestOptions options);
}

@JS('HIDDeviceRequestOptions')
@staticInterop
class HIDDeviceRequestOptions {
  external factory HIDDeviceRequestOptions();
}

extension HIDDeviceRequestOptionsExtension on HIDDeviceRequestOptions {
  // TODO
  // TODO
}

@JS('HIDDeviceFilter')
@staticInterop
class HIDDeviceFilter {
  external factory HIDDeviceFilter();
}

extension HIDDeviceFilterExtension on HIDDeviceFilter {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('HIDDevice')
@staticInterop
class HIDDevice extends EventTarget {
  external factory HIDDevice();
}

extension HIDDeviceExtension on HIDDevice {
  external EventHandler get oninputreport;
  external set oninputreport(EventHandler value);
  external JSBoolean get opened;
  external JSNumber get vendorId;
  external JSNumber get productId;
  external JSString get productName;
  external JSArray get collections;
  external JSPromise open();
  external JSPromise close();
  external JSPromise forget();
  external JSPromise sendReport(JSNumber reportId, BufferSource data);
  external JSPromise sendFeatureReport(JSNumber reportId, BufferSource data);
  external JSPromise receiveFeatureReport(JSNumber reportId);
}

@JS('HIDConnectionEvent')
@staticInterop
class HIDConnectionEvent extends Event {
  external factory HIDConnectionEvent();
  external factory HIDConnectionEvent.a1(
      JSString type, HIDConnectionEventInit eventInitDict);
}

extension HIDConnectionEventExtension on HIDConnectionEvent {
  external HIDDevice get device;
}

@JS('HIDConnectionEventInit')
@staticInterop
class HIDConnectionEventInit extends EventInit {
  external factory HIDConnectionEventInit();
}

extension HIDConnectionEventInitExtension on HIDConnectionEventInit {
  // TODO
}

@JS('HIDInputReportEvent')
@staticInterop
class HIDInputReportEvent extends Event {
  external factory HIDInputReportEvent();
  external factory HIDInputReportEvent.a1(
      JSString type, HIDInputReportEventInit eventInitDict);
}

extension HIDInputReportEventExtension on HIDInputReportEvent {
  external HIDDevice get device;
  external JSNumber get reportId;
  external JSDataView get data;
}

@JS('HIDInputReportEventInit')
@staticInterop
class HIDInputReportEventInit extends EventInit {
  external factory HIDInputReportEventInit();
}

extension HIDInputReportEventInitExtension on HIDInputReportEventInit {
  // TODO
  // TODO
  // TODO
}

@JS('HIDCollectionInfo')
@staticInterop
class HIDCollectionInfo {
  external factory HIDCollectionInfo();
}

extension HIDCollectionInfoExtension on HIDCollectionInfo {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('HIDReportInfo')
@staticInterop
class HIDReportInfo {
  external factory HIDReportInfo();
}

extension HIDReportInfoExtension on HIDReportInfo {
  // TODO
  // TODO
}

@JS('HIDReportItem')
@staticInterop
class HIDReportItem {
  external factory HIDReportItem();
}

extension HIDReportItemExtension on HIDReportItem {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}
