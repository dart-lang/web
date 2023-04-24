// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'streams.dart';

typedef ParityType = JSString;
typedef FlowControlType = JSString;

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
class SerialPortRequestOptions {
  external factory SerialPortRequestOptions({JSArray filters});
}

extension SerialPortRequestOptionsExtension on SerialPortRequestOptions {
  external set filters(JSArray value);
  external JSArray get filters;
}

@JS()
@staticInterop
@anonymous
class SerialPortFilter {
  external factory SerialPortFilter({
    JSNumber usbVendorId,
    JSNumber usbProductId,
  });
}

extension SerialPortFilterExtension on SerialPortFilter {
  external set usbVendorId(JSNumber value);
  external JSNumber get usbVendorId;
  external set usbProductId(JSNumber value);
  external JSNumber get usbProductId;
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
class SerialPortInfo {
  external factory SerialPortInfo({
    JSNumber usbVendorId,
    JSNumber usbProductId,
  });
}

extension SerialPortInfoExtension on SerialPortInfo {
  external set usbVendorId(JSNumber value);
  external JSNumber get usbVendorId;
  external set usbProductId(JSNumber value);
  external JSNumber get usbProductId;
}

@JS()
@staticInterop
@anonymous
class SerialOptions {
  external factory SerialOptions({
    required JSNumber baudRate,
    JSNumber dataBits,
    JSNumber stopBits,
    ParityType parity,
    JSNumber bufferSize,
    FlowControlType flowControl,
  });
}

extension SerialOptionsExtension on SerialOptions {
  external set baudRate(JSNumber value);
  external JSNumber get baudRate;
  external set dataBits(JSNumber value);
  external JSNumber get dataBits;
  external set stopBits(JSNumber value);
  external JSNumber get stopBits;
  external set parity(ParityType value);
  external ParityType get parity;
  external set bufferSize(JSNumber value);
  external JSNumber get bufferSize;
  external set flowControl(FlowControlType value);
  external FlowControlType get flowControl;
}

@JS()
@staticInterop
@anonymous
class SerialOutputSignals {
  external factory SerialOutputSignals({
    JSBoolean dataTerminalReady,
    JSBoolean requestToSend,
    JSBoolean break_,
  });
}

extension SerialOutputSignalsExtension on SerialOutputSignals {
  external set dataTerminalReady(JSBoolean value);
  external JSBoolean get dataTerminalReady;
  external set requestToSend(JSBoolean value);
  external JSBoolean get requestToSend;
  @JS('break')
  external set break_(JSBoolean value);
  @JS('break')
  external JSBoolean get break_;
}

@JS()
@staticInterop
@anonymous
class SerialInputSignals {
  external factory SerialInputSignals({
    required JSBoolean dataCarrierDetect,
    required JSBoolean clearToSend,
    required JSBoolean ringIndicator,
    required JSBoolean dataSetReady,
  });
}

extension SerialInputSignalsExtension on SerialInputSignals {
  external set dataCarrierDetect(JSBoolean value);
  external JSBoolean get dataCarrierDetect;
  external set clearToSend(JSBoolean value);
  external JSBoolean get clearToSend;
  external set ringIndicator(JSBoolean value);
  external JSBoolean get ringIndicator;
  external set dataSetReady(JSBoolean value);
  external JSBoolean get dataSetReady;
}
