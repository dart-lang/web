// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';

extension type TransitionEvent._(JSObject _) implements Event, JSObject {
  external factory TransitionEvent(
    String type, [
    TransitionEventInit transitionEventInitDict,
  ]);

  external String get propertyName;
  external num get elapsedTime;
  external String get pseudoElement;
}
extension type TransitionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory TransitionEventInit({
    String propertyName,
    num elapsedTime,
    String pseudoElement,
  });

  external set propertyName(String value);
  external String get propertyName;
  external set elapsedTime(num value);
  external num get elapsedTime;
  external set pseudoElement(String value);
  external String get pseudoElement;
}
