// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'streams.dart';
import 'web_bluetooth.dart';

typedef ParityType = String;
typedef FlowControlType = String;
extension type Serial._(JSObject _) implements EventTarget, JSObject {
  external JSPromise<JSArray<SerialPort>> getPorts();
  external JSPromise<SerialPort> requestPort(
      [SerialPortRequestOptions options]);
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
}
extension type SerialPortRequestOptions._(JSObject _) implements JSObject {
  external factory SerialPortRequestOptions({
    JSArray<SerialPortFilter> filters,
    JSArray<BluetoothServiceUUID> allowedBluetoothServiceClassIds,
  });

  external set filters(JSArray<SerialPortFilter> value);
  external JSArray<SerialPortFilter> get filters;
  external set allowedBluetoothServiceClassIds(
      JSArray<BluetoothServiceUUID> value);
  external JSArray<BluetoothServiceUUID> get allowedBluetoothServiceClassIds;
}
extension type SerialPortFilter._(JSObject _) implements JSObject {
  external factory SerialPortFilter({
    int usbVendorId,
    int usbProductId,
    BluetoothServiceUUID bluetoothServiceClassId,
  });

  external set usbVendorId(int value);
  external int get usbVendorId;
  external set usbProductId(int value);
  external int get usbProductId;
  external set bluetoothServiceClassId(BluetoothServiceUUID value);
  external BluetoothServiceUUID get bluetoothServiceClassId;
}
extension type SerialPort._(JSObject _) implements EventTarget, JSObject {
  external SerialPortInfo getInfo();
  external JSPromise<JSAny?> open(SerialOptions options);
  external JSPromise<JSAny?> setSignals([SerialOutputSignals signals]);
  external JSPromise<SerialInputSignals> getSignals();
  external JSPromise<JSAny?> close();
  external JSPromise<JSAny?> forget();
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external ReadableStream get readable;
  external WritableStream get writable;
}
extension type SerialPortInfo._(JSObject _) implements JSObject {
  external factory SerialPortInfo({
    int usbVendorId,
    int usbProductId,
    BluetoothServiceUUID bluetoothServiceClassId,
  });

  external set usbVendorId(int value);
  external int get usbVendorId;
  external set usbProductId(int value);
  external int get usbProductId;
  external set bluetoothServiceClassId(BluetoothServiceUUID value);
  external BluetoothServiceUUID get bluetoothServiceClassId;
}
extension type SerialOptions._(JSObject _) implements JSObject {
  external factory SerialOptions({
    required int baudRate,
    int dataBits,
    int stopBits,
    ParityType parity,
    int bufferSize,
    FlowControlType flowControl,
  });

  external set baudRate(int value);
  external int get baudRate;
  external set dataBits(int value);
  external int get dataBits;
  external set stopBits(int value);
  external int get stopBits;
  external set parity(ParityType value);
  external ParityType get parity;
  external set bufferSize(int value);
  external int get bufferSize;
  external set flowControl(FlowControlType value);
  external FlowControlType get flowControl;
}
extension type SerialOutputSignals._(JSObject _) implements JSObject {
  external factory SerialOutputSignals({
    bool dataTerminalReady,
    bool requestToSend,
    bool break_,
  });

  external set dataTerminalReady(bool value);
  external bool get dataTerminalReady;
  external set requestToSend(bool value);
  external bool get requestToSend;
  @JS('break')
  external set break_(bool value);
  @JS('break')
  external bool get break_;
}
extension type SerialInputSignals._(JSObject _) implements JSObject {
  external factory SerialInputSignals({
    required bool dataCarrierDetect,
    required bool clearToSend,
    required bool ringIndicator,
    required bool dataSetReady,
  });

  external set dataCarrierDetect(bool value);
  external bool get dataCarrierDetect;
  external set clearToSend(bool value);
  external bool get clearToSend;
  external set ringIndicator(bool value);
  external bool get ringIndicator;
  external set dataSetReady(bool value);
  external bool get dataSetReady;
}
