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
import 'streams.dart';
import 'web_bluetooth.dart';

typedef ParityType = String;
typedef FlowControlType = String;

/// The `Serial` interface of the [Web_Serial_API] provides attributes and
/// methods for finding and connecting to serial ports from a web page.
extension type Serial._(JSObject _) implements EventTarget, JSObject {
  /// The **`getPorts()`** method of the [Serial] interface returns a `Promise`
  /// that resolves with an array of [SerialPort] objects representing serial
  /// ports connected to the host which the origin has permission to access.
  external JSPromise getPorts();

  /// The **`Serial.requestPort()`** method of the [Serial] interface returns a
  /// `Promise` that resolves with an instance of [SerialPort] representing the
  /// device chosen by the user or rejects if no device was selected.
  external JSPromise requestPort([SerialPortRequestOptions options]);
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
}
extension type SerialPortRequestOptions._(JSObject _) implements JSObject {
  external factory SerialPortRequestOptions({
    JSArray filters,
    JSArray allowedBluetoothServiceClassIds,
  });

  external set filters(JSArray value);
  external JSArray get filters;
  external set allowedBluetoothServiceClassIds(JSArray value);
  external JSArray get allowedBluetoothServiceClassIds;
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

/// The `SerialPort` interface of the [Web_Serial_API] provides access to a
/// serial port on the host device.
extension type SerialPort._(JSObject _) implements EventTarget, JSObject {
  /// The **`getInfo()`** method of the [SerialPort] interface returns an object
  /// whose properties are the vendor ID and product ID of the device.
  external SerialPortInfo getInfo();

  /// The **`open()`** method of the [SerialPort] interface returns a `Promise`
  /// that resolves when the port is opened. By default the port is opened with
  /// 8 data bits, 1 stop bit and no parity checking. The `baudRate` parameter
  /// is required.
  external JSPromise open(SerialOptions options);

  /// The **`setSignals()`** method of the [SerialPort] interface sets control
  /// signals on the port and returns a `Promise` that resolves when they are
  /// set.
  external JSPromise setSignals([SerialOutputSignals signals]);

  /// The **`SerialPort.getSignals()`** method of the [SerialPort] interface
  /// returns a `Promise` that resolves with an object containing the current
  /// state of the port's control signals.
  external JSPromise getSignals();

  /// The **`SerialPort.close()`** method of the [SerialPort] interface returns
  /// a `Promise` that resolves when the port closes.
  external JSPromise close();

  /// The **`SerialPort.forget()`** method of the [SerialPort] interface returns
  /// a `Promise` that resolves when the serial port is closed and is forgotten.
  external JSPromise forget();
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
