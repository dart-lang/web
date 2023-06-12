// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'streams.dart';

typedef ParityType = String;
typedef FlowControlType = String;

@JS('Serial')
@staticInterop
class Serial implements EventTarget {}

extension SerialExtension on Serial {
  external JSPromise getPorts();
  external JSPromise requestPort([SerialPortRequestOptions options]);
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
}

@JS()
@staticInterop
@anonymous
class SerialPortRequestOptions implements JSObject {
  external factory SerialPortRequestOptions({JSArray filters});
}

extension SerialPortRequestOptionsExtension on SerialPortRequestOptions {
  external set filters(JSArray value);
  external JSArray get filters;
}

@JS()
@staticInterop
@anonymous
class SerialPortFilter implements JSObject {
  external factory SerialPortFilter({
    int usbVendorId,
    int usbProductId,
  });
}

extension SerialPortFilterExtension on SerialPortFilter {
  external set usbVendorId(int value);
  external int get usbVendorId;
  external set usbProductId(int value);
  external int get usbProductId;
}

@JS('SerialPort')
@staticInterop
class SerialPort implements EventTarget {}

extension SerialPortExtension on SerialPort {
  external SerialPortInfo getInfo();
  external JSPromise open(SerialOptions options);
  external JSPromise setSignals([SerialOutputSignals signals]);
  external JSPromise getSignals();
  external JSPromise close();
  external JSPromise forget();
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external ReadableStream get readable;
  external WritableStream get writable;
}

@JS()
@staticInterop
@anonymous
class SerialPortInfo implements JSObject {
  external factory SerialPortInfo({
    int usbVendorId,
    int usbProductId,
  });
}

extension SerialPortInfoExtension on SerialPortInfo {
  external set usbVendorId(int value);
  external int get usbVendorId;
  external set usbProductId(int value);
  external int get usbProductId;
}

@JS()
@staticInterop
@anonymous
class SerialOptions implements JSObject {
  external factory SerialOptions({
    required int baudRate,
    int dataBits,
    int stopBits,
    ParityType parity,
    int bufferSize,
    FlowControlType flowControl,
  });
}

extension SerialOptionsExtension on SerialOptions {
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

@JS()
@staticInterop
@anonymous
class SerialOutputSignals implements JSObject {
  external factory SerialOutputSignals({
    bool dataTerminalReady,
    bool requestToSend,
    bool break_,
  });
}

extension SerialOutputSignalsExtension on SerialOutputSignals {
  external set dataTerminalReady(bool value);
  external bool get dataTerminalReady;
  external set requestToSend(bool value);
  external bool get requestToSend;
  @JS('break')
  external set break_(bool value);
  @JS('break')
  external bool get break_;
}

@JS()
@staticInterop
@anonymous
class SerialInputSignals implements JSObject {
  external factory SerialInputSignals({
    required bool dataCarrierDetect,
    required bool clearToSend,
    required bool ringIndicator,
    required bool dataSetReady,
  });
}

extension SerialInputSignalsExtension on SerialInputSignals {
  external set dataCarrierDetect(bool value);
  external bool get dataCarrierDetect;
  external set clearToSend(bool value);
  external bool get clearToSend;
  external set ringIndicator(bool value);
  external bool get ringIndicator;
  external set dataSetReady(bool value);
  external bool get dataSetReady;
}
