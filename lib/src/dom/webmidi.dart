// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'permissions.dart';

typedef MIDIPortType = String;
typedef MIDIPortDeviceState = String;
typedef MIDIPortConnectionState = String;
extension type MidiPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory MidiPermissionDescriptor({bool sysex});

  external set sysex(bool value);
  external bool get sysex;
}
extension type MIDIOptions._(JSObject _) implements JSObject {
  external factory MIDIOptions({
    bool sysex,
    bool software,
  });

  external set sysex(bool value);
  external bool get sysex;
  external set software(bool value);
  external bool get software;
}
extension type MIDIInputMap._(JSObject _) implements JSObject {}
extension type MIDIOutputMap._(JSObject _) implements JSObject {}
extension type MIDIAccess._(JSObject _) implements EventTarget, JSObject {
  external MIDIInputMap get inputs;
  external MIDIOutputMap get outputs;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
  external bool get sysexEnabled;
}
extension type MIDIPort._(JSObject _) implements EventTarget, JSObject {
  external JSPromise open();
  external JSPromise close();
  external String get id;
  external String? get manufacturer;
  external String? get name;
  external MIDIPortType get type;
  external String? get version;
  external MIDIPortDeviceState get state;
  external MIDIPortConnectionState get connection;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
}
extension type MIDIInput._(JSObject _) implements MIDIPort, JSObject {
  external set onmidimessage(EventHandler value);
  external EventHandler get onmidimessage;
}
extension type MIDIOutput._(JSObject _) implements MIDIPort, JSObject {
  external void send(
    JSArray data, [
    DOMHighResTimeStamp timestamp,
  ]);
  external void clear();
}
extension type MIDIMessageEvent._(JSObject _) implements Event, JSObject {
  external factory MIDIMessageEvent(
    String type, [
    MIDIMessageEventInit eventInitDict,
  ]);

  external JSUint8Array get data;
}
extension type MIDIMessageEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory MIDIMessageEventInit({JSUint8Array data});

  external set data(JSUint8Array value);
  external JSUint8Array get data;
}
extension type MIDIConnectionEvent._(JSObject _) implements Event, JSObject {
  external factory MIDIConnectionEvent(
    String type, [
    MIDIConnectionEventInit eventInitDict,
  ]);

  external MIDIPort get port;
}
extension type MIDIConnectionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory MIDIConnectionEventInit({MIDIPort port});

  external set port(MIDIPort value);
  external MIDIPort get port;
}
