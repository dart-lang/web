// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library audio_session;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef AudioSessionState = String;
typedef AudioSessionType = String;
extension type AudioSession._(JSObject _) implements EventTarget, JSObject {
  external set type(AudioSessionType value);
  external AudioSessionType get type;
  external AudioSessionState get state;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
}
