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
  /// `Web MIDI API`
  ///
  /// The **`open()`** method of the [MIDIPort] interface makes the MIDI device
  /// connected to this `MIDIPort` explicitly available.
  ///
  /// If the port is successfully opened a new [MIDIConnectionEvent] is queued
  /// to the [MIDIPort.statechange_event] and [MIDIAccess.statechange_event]
  /// events, and the [MIDIPort.connection] property is changed to `"open"`.
  ///
  /// If the port is already open when this method is called, then the promise
  /// will resolve successfully.
  external JSPromise open();

  /// `Web MIDI API`
  ///
  /// The **`close()`** method of the [MIDIPort] interface makes the access to
  /// the MIDI device connected to this `MIDIPort` unavailable.
  ///
  /// If the port is successfully closed a new [MIDIConnectionEvent] is queued
  /// to the [MIDIPort.statechange_event] and [MIDIAccess.statechange_event]
  /// events, and the [MIDIPort.connection] property is changed to `"closed"`.
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
  /// The **`send()`** method of the [MIDIOutput] interface queues messages for
  /// the corresponding MIDI port. The message can be sent immediately, or with
  /// an optional timestamp to delay sending.
  external void send(
    JSArray data, [
    DOMHighResTimeStamp timestamp,
  ]);

  /// The **`clear()`** method of the [MIDIOutput] interface clears the queue of
  /// messages being sent to the output device.
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
