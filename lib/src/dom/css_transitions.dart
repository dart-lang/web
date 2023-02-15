// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';

@JS('TransitionEvent')
@staticInterop
class TransitionEvent extends Event {
  external factory TransitionEvent();

  external factory TransitionEvent.a1(JSString type);

  external factory TransitionEvent.a2(
    JSString type,
    TransitionEventInit transitionEventInitDict,
  );
}

extension TransitionEventExtension on TransitionEvent {
  external JSString get propertyName;
  external JSNumber get elapsedTime;
  external JSString get pseudoElement;
}

@JS('TransitionEventInit')
@staticInterop
class TransitionEventInit extends EventInit {
  external factory TransitionEventInit();
}

extension TransitionEventInitExtension on TransitionEventInit {}
