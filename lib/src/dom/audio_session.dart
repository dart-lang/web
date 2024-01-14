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
import 'html.dart';

typedef AudioSessionState = String;
typedef AudioSessionType = String;

@JS('AudioSession')
@staticInterop
class AudioSession implements EventTarget {}

extension AudioSessionExtension on AudioSession {
  external set type(AudioSessionType value);
  external AudioSessionType get type;
  external AudioSessionState get state;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
}
