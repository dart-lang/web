// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'permissions.dart';

typedef MIDIPortType = JSString;
typedef MIDIPortDeviceState = JSString;
typedef MIDIPortConnectionState = JSString;

@JS()
@staticInterop
@anonymous
class MidiPermissionDescriptor implements PermissionDescriptor {
  external factory MidiPermissionDescriptor({JSBoolean sysex = false});
}

extension MidiPermissionDescriptorExtension on MidiPermissionDescriptor {
  external set sysex(JSBoolean value);
  external JSBoolean get sysex;
}

@JS()
@staticInterop
@anonymous
class MIDIOptions {
  external factory MIDIOptions({
    JSBoolean sysex,
    JSBoolean software,
  });
}

extension MIDIOptionsExtension on MIDIOptions {
  external set sysex(JSBoolean value);
  external JSBoolean get sysex;
  external set software(JSBoolean value);
  external JSBoolean get software;
}

@JS('MIDIInputMap')
@staticInterop
class MIDIInputMap {}

extension MIDIInputMapExtension on MIDIInputMap {}

@JS('MIDIOutputMap')
@staticInterop
class MIDIOutputMap {}

extension MIDIOutputMapExtension on MIDIOutputMap {}

@JS('MIDIAccess')
@staticInterop
class MIDIAccess implements EventTarget {}

extension MIDIAccessExtension on MIDIAccess {
  external MIDIInputMap get inputs;
  external MIDIOutputMap get outputs;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
  external JSBoolean get sysexEnabled;
}

@JS('MIDIPort')
@staticInterop
class MIDIPort implements EventTarget {}

extension MIDIPortExtension on MIDIPort {
  external JSPromise open();
  external JSPromise close();
  external JSString get id;
  external JSString? get manufacturer;
  external JSString? get name;
  external MIDIPortType get type;
  external JSString? get version;
  external MIDIPortDeviceState get state;
  external MIDIPortConnectionState get connection;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
}

@JS('MIDIInput')
@staticInterop
class MIDIInput implements MIDIPort {}

extension MIDIInputExtension on MIDIInput {
  external set onmidimessage(EventHandler value);
  external EventHandler get onmidimessage;
}

@JS('MIDIOutput')
@staticInterop
class MIDIOutput implements MIDIPort {}

extension MIDIOutputExtension on MIDIOutput {
  external JSVoid send(
    JSArray data, [
    DOMHighResTimeStamp timestamp,
  ]);
  external JSVoid clear();
}

@JS('MIDIMessageEvent')
@staticInterop
class MIDIMessageEvent implements Event {
  external factory MIDIMessageEvent(
    JSString type, [
    MIDIMessageEventInit eventInitDict,
  ]);
}

extension MIDIMessageEventExtension on MIDIMessageEvent {
  external JSUint8Array get data;
}

@JS()
@staticInterop
@anonymous
class MIDIMessageEventInit implements EventInit {
  external factory MIDIMessageEventInit({JSUint8Array data});
}

extension MIDIMessageEventInitExtension on MIDIMessageEventInit {
  external set data(JSUint8Array value);
  external JSUint8Array get data;
}

@JS('MIDIConnectionEvent')
@staticInterop
class MIDIConnectionEvent implements Event {
  external factory MIDIConnectionEvent(
    JSString type, [
    MIDIConnectionEventInit eventInitDict,
  ]);
}

extension MIDIConnectionEventExtension on MIDIConnectionEvent {
  external MIDIPort get port;
}

@JS()
@staticInterop
@anonymous
class MIDIConnectionEventInit implements EventInit {
  external factory MIDIConnectionEventInit({MIDIPort port});
}

extension MIDIConnectionEventInitExtension on MIDIConnectionEventInit {
  external set port(MIDIPort value);
  external MIDIPort get port;
}
