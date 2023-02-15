// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/streams.dart';

typedef ParityType = JSString;
typedef FlowControlType = JSString;

@JS('Serial')
@staticInterop
class Serial extends EventTarget {
  external factory Serial();
}

extension SerialExtension on Serial {
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external JSPromise getPorts();
  external JSPromise requestPort();
  external JSPromise requestPort1(SerialPortRequestOptions options);
}

@JS('SerialPortRequestOptions')
@staticInterop
class SerialPortRequestOptions {
  external factory SerialPortRequestOptions();
}

extension SerialPortRequestOptionsExtension on SerialPortRequestOptions {}

@JS('SerialPortFilter')
@staticInterop
class SerialPortFilter {
  external factory SerialPortFilter();
}

extension SerialPortFilterExtension on SerialPortFilter {}

@JS('SerialPort')
@staticInterop
class SerialPort extends EventTarget {
  external factory SerialPort();
}

extension SerialPortExtension on SerialPort {
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external ReadableStream get readable;
  external WritableStream get writable;
  external SerialPortInfo getInfo();
  external JSPromise open(SerialOptions options);
  external JSPromise setSignals();
  external JSPromise setSignals1(SerialOutputSignals signals);
  external JSPromise getSignals();
  external JSPromise close();
  external JSPromise forget();
}

@JS('SerialPortInfo')
@staticInterop
class SerialPortInfo {
  external factory SerialPortInfo();
}

extension SerialPortInfoExtension on SerialPortInfo {}

@JS('SerialOptions')
@staticInterop
class SerialOptions {
  external factory SerialOptions();
}

extension SerialOptionsExtension on SerialOptions {}

@JS('SerialOutputSignals')
@staticInterop
class SerialOutputSignals {
  external factory SerialOutputSignals();
}

extension SerialOutputSignalsExtension on SerialOutputSignals {}

@JS('SerialInputSignals')
@staticInterop
class SerialInputSignals {
  external factory SerialInputSignals();
}

extension SerialInputSignalsExtension on SerialInputSignals {}
