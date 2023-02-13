// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef ParityType = JSString;
typedef FlowControlType = JSString;

@JS('Serial')
@staticInterop
class Serial extends EventTarget {
  external factory Serial();
}

extension SerialExtension on Serial {
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
  external JSPromise getPorts();
  external JSPromise requestPort();
  external JSPromise requestPort_1(SerialPortRequestOptions options);
}

@JS('SerialPortRequestOptions')
@staticInterop
class SerialPortRequestOptions {
  external factory SerialPortRequestOptions();
}

extension SerialPortRequestOptionsExtension on SerialPortRequestOptions {
  // TODO
}

@JS('SerialPortFilter')
@staticInterop
class SerialPortFilter {
  external factory SerialPortFilter();
}

extension SerialPortFilterExtension on SerialPortFilter {
  // TODO
  // TODO
}

@JS('SerialPort')
@staticInterop
class SerialPort extends EventTarget {
  external factory SerialPort();
}

extension SerialPortExtension on SerialPort {
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
  external ReadableStream get readable;
  external WritableStream get writable;
  external SerialPortInfo getInfo();
  external JSPromise open(SerialOptions options);
  external JSPromise setSignals();
  external JSPromise setSignals_1(SerialOutputSignals signals);
  external JSPromise getSignals();
  external JSPromise close();
  external JSPromise forget();
}

@JS('SerialPortInfo')
@staticInterop
class SerialPortInfo {
  external factory SerialPortInfo();
}

extension SerialPortInfoExtension on SerialPortInfo {
  // TODO
  // TODO
}

@JS('SerialOptions')
@staticInterop
class SerialOptions {
  external factory SerialOptions();
}

extension SerialOptionsExtension on SerialOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('SerialOutputSignals')
@staticInterop
class SerialOutputSignals {
  external factory SerialOutputSignals();
}

extension SerialOutputSignalsExtension on SerialOutputSignals {
  // TODO
  // TODO
  // TODO
}

@JS('SerialInputSignals')
@staticInterop
class SerialInputSignals {
  external factory SerialInputSignals();
}

extension SerialInputSignalsExtension on SerialInputSignals {
  // TODO
  // TODO
  // TODO
  // TODO
}
