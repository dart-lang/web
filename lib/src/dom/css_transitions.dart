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

/// The **`TransitionEvent`** interface represents events providing information
/// related to
/// [transitions](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_transitions/Using_CSS_transitions).
@JS('TransitionEvent')
@staticInterop
class TransitionEvent implements Event {
  external factory TransitionEvent(
    String type, [
    TransitionEventInit transitionEventInitDict,
  ]);
}

extension TransitionEventExtension on TransitionEvent {
  external String get propertyName;
  external num get elapsedTime;
  external String get pseudoElement;
}

@JS()
@staticInterop
@anonymous
class TransitionEventInit implements EventInit {
  external factory TransitionEventInit({
    String propertyName,
    num elapsedTime,
    String pseudoElement,
  });
}

extension TransitionEventInitExtension on TransitionEventInit {
  external set propertyName(String value);
  external String get propertyName;
  external set elapsedTime(num value);
  external num get elapsedTime;
  external set pseudoElement(String value);
  external String get pseudoElement;
}
