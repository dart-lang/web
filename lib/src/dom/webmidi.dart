// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/hr_time.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/permissions.dart';

typedef MIDIPortType = JSString;
typedef MIDIPortDeviceState = JSString;
typedef MIDIPortConnectionState = JSString;

@JS('MidiPermissionDescriptor')
@staticInterop
class MidiPermissionDescriptor extends PermissionDescriptor {
  external factory MidiPermissionDescriptor();
}

extension MidiPermissionDescriptorExtension on MidiPermissionDescriptor {}

@JS('MIDIOptions')
@staticInterop
class MIDIOptions {
  external factory MIDIOptions();
}

extension MIDIOptionsExtension on MIDIOptions {}

@JS('MIDIInputMap')
@staticInterop
class MIDIInputMap {
  external factory MIDIInputMap();
}

extension MIDIInputMapExtension on MIDIInputMap {}

@JS('MIDIOutputMap')
@staticInterop
class MIDIOutputMap {
  external factory MIDIOutputMap();
}

extension MIDIOutputMapExtension on MIDIOutputMap {}

@JS('MIDIAccess')
@staticInterop
class MIDIAccess extends EventTarget {
  external factory MIDIAccess();
}

extension MIDIAccessExtension on MIDIAccess {
  external MIDIInputMap get inputs;
  external MIDIOutputMap get outputs;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
  external JSBoolean get sysexEnabled;
}

@JS('MIDIPort')
@staticInterop
class MIDIPort extends EventTarget {
  external factory MIDIPort();
}

extension MIDIPortExtension on MIDIPort {
  external JSString get id;
  external JSString? get manufacturer;
  external JSString? get name;
  external MIDIPortType get type;
  external JSString? get version;
  external MIDIPortDeviceState get state;
  external MIDIPortConnectionState get connection;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
  external JSPromise open();
  external JSPromise close();
}

@JS('MIDIInput')
@staticInterop
class MIDIInput extends MIDIPort {
  external factory MIDIInput();
}

extension MIDIInputExtension on MIDIInput {
  external set onmidimessage(EventHandler value);
  external EventHandler get onmidimessage;
}

@JS('MIDIOutput')
@staticInterop
class MIDIOutput extends MIDIPort {
  external factory MIDIOutput();
}

extension MIDIOutputExtension on MIDIOutput {
  external JSVoid send(JSArray data);
  external JSVoid send1(
    JSArray data,
    DOMHighResTimeStamp timestamp,
  );
  external JSVoid clear();
}

@JS('MIDIMessageEvent')
@staticInterop
class MIDIMessageEvent extends Event {
  external factory MIDIMessageEvent();

  external factory MIDIMessageEvent.a1(JSString type);

  external factory MIDIMessageEvent.a2(
    JSString type,
    MIDIMessageEventInit eventInitDict,
  );
}

extension MIDIMessageEventExtension on MIDIMessageEvent {
  external JSUint8Array get data;
}

@JS('MIDIMessageEventInit')
@staticInterop
class MIDIMessageEventInit extends EventInit {
  external factory MIDIMessageEventInit();
}

extension MIDIMessageEventInitExtension on MIDIMessageEventInit {}

@JS('MIDIConnectionEvent')
@staticInterop
class MIDIConnectionEvent extends Event {
  external factory MIDIConnectionEvent();

  external factory MIDIConnectionEvent.a1(JSString type);

  external factory MIDIConnectionEvent.a2(
    JSString type,
    MIDIConnectionEventInit eventInitDict,
  );
}

extension MIDIConnectionEventExtension on MIDIConnectionEvent {
  external MIDIPort get port;
}

@JS('MIDIConnectionEventInit')
@staticInterop
class MIDIConnectionEventInit extends EventInit {
  external factory MIDIConnectionEventInit();
}

extension MIDIConnectionEventInitExtension on MIDIConnectionEventInit {}
