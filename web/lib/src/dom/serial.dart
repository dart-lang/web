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
import 'streams.dart';
import 'web_bluetooth.dart';

typedef ParityType = String;
typedef FlowControlType = String;

/// @AvailableInWorkers("window_and_dedicated")
///
/// The `Serial` interface of the
/// [Web Serial API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Serial_API)
/// provides attributes and methods for finding and connecting to serial ports
/// from a web page.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Serial).
extension type Serial._(JSObject _) implements EventTarget, JSObject {
  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`getPorts()`** method of the [Serial] interface returns a `Promise`
  /// that resolves with an array of [SerialPort] objects representing serial
  /// ports connected to the host which the origin has permission to access.
  external JSPromise<JSArray<SerialPort>> getPorts();

  /// The **`Serial.requestPort()`** method of the [Serial] interface presents
  /// the user with a dialog asking them to select a serial device to connect
  /// to. It returns a `Promise` that resolves with an instance of [SerialPort]
  /// representing the device chosen by the user.
  external JSPromise<SerialPort> requestPort(
      [SerialPortRequestOptions options]);
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
}
extension type SerialPortRequestOptions._(JSObject _) implements JSObject {
  external factory SerialPortRequestOptions({
    JSArray<SerialPortFilter> filters,
    JSArray<BluetoothServiceUUID> allowedBluetoothServiceClassIds,
  });

  external JSArray<SerialPortFilter> get filters;
  external set filters(JSArray<SerialPortFilter> value);
  external JSArray<BluetoothServiceUUID> get allowedBluetoothServiceClassIds;
  external set allowedBluetoothServiceClassIds(
      JSArray<BluetoothServiceUUID> value);
}
extension type SerialPortFilter._(JSObject _) implements JSObject {
  external factory SerialPortFilter({
    int usbVendorId,
    int usbProductId,
    BluetoothServiceUUID bluetoothServiceClassId,
  });

  external int get usbVendorId;
  external set usbVendorId(int value);
  external int get usbProductId;
  external set usbProductId(int value);
  external BluetoothServiceUUID get bluetoothServiceClassId;
  external set bluetoothServiceClassId(BluetoothServiceUUID value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The `SerialPort` interface of the
/// [Web Serial API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Serial_API)
/// provides access to a serial port on the host device.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SerialPort).
extension type SerialPort._(JSObject _) implements EventTarget, JSObject {
  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`getInfo()`** method of the [SerialPort] interface returns an object
  /// containing identifying information for the device available via the port.
  external SerialPortInfo getInfo();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`open()`** method of the [SerialPort] interface returns a `Promise`
  /// that resolves when the port is opened. By default the port is opened with
  /// 8 data bits, 1 stop bit and no parity checking. The `baudRate` parameter
  /// is required.
  external JSPromise<JSAny?> open(SerialOptions options);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`setSignals()`** method of the [SerialPort] interface sets control
  /// signals on the port and returns a `Promise` that resolves when they are
  /// set.
  external JSPromise<JSAny?> setSignals([SerialOutputSignals signals]);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`SerialPort.getSignals()`** method of the [SerialPort] interface
  /// returns a `Promise` that resolves with an object containing the current
  /// state of the port's control signals.
  external JSPromise<SerialInputSignals> getSignals();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`SerialPort.close()`** method of the [SerialPort] interface returns
  /// a `Promise` that resolves when the port closes.
  external JSPromise<JSAny?> close();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`SerialPort.forget()`** method of the [SerialPort] interface returns
  /// a `Promise` that resolves when access to the serial port is revoked.
  external JSPromise<JSAny?> forget();
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`connected`** read-only property of the [SerialPort] interface
  /// returns a boolean value that indicates whether the port is
  /// [logically connected](https://developer.mozilla.org/en-US/docs/Web/API/SerialPort/connect_event#description)
  /// to the device.
  external bool get connected;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`readable`** read-only property of the [SerialPort] interface
  /// returns a [ReadableStream] for receiving data from the device connected to
  /// the port. Chunks read from this stream are instances of `Uint8Array`. This
  /// property is non-null as long as the port is open and has not encountered a
  /// fatal error.
  external ReadableStream? get readable;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`writable`** read-only property of the [SerialPort] interface
  /// returns a [WritableStream] for sending data to the device connected to the
  /// port. Chunks written to this stream must be instances of `ArrayBuffer`,
  /// `TypedArray`, or `DataView`. This property is non-null as long as the port
  /// is open and has not encountered a fatal error.
  external WritableStream? get writable;
}
extension type SerialPortInfo._(JSObject _) implements JSObject {
  external factory SerialPortInfo({
    int usbVendorId,
    int usbProductId,
    BluetoothServiceUUID bluetoothServiceClassId,
  });

  external int get usbVendorId;
  external set usbVendorId(int value);
  external int get usbProductId;
  external set usbProductId(int value);
  external BluetoothServiceUUID get bluetoothServiceClassId;
  external set bluetoothServiceClassId(BluetoothServiceUUID value);
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

  external int get baudRate;
  external set baudRate(int value);
  external int get dataBits;
  external set dataBits(int value);
  external int get stopBits;
  external set stopBits(int value);
  external ParityType get parity;
  external set parity(ParityType value);
  external int get bufferSize;
  external set bufferSize(int value);
  external FlowControlType get flowControl;
  external set flowControl(FlowControlType value);
}
extension type SerialOutputSignals._(JSObject _) implements JSObject {
  external factory SerialOutputSignals({
    bool dataTerminalReady,
    bool requestToSend,
    bool break_,
  });

  external bool get dataTerminalReady;
  external set dataTerminalReady(bool value);
  external bool get requestToSend;
  external set requestToSend(bool value);
  @JS('break')
  external bool get break_;
  @JS('break')
  external set break_(bool value);
}
extension type SerialInputSignals._(JSObject _) implements JSObject {
  external factory SerialInputSignals({
    required bool dataCarrierDetect,
    required bool clearToSend,
    required bool ringIndicator,
    required bool dataSetReady,
  });

  external bool get dataCarrierDetect;
  external set dataCarrierDetect(bool value);
  external bool get clearToSend;
  external set clearToSend(bool value);
  external bool get ringIndicator;
  external set ringIndicator(bool value);
  external bool get dataSetReady;
  external set dataSetReady(bool value);
}
