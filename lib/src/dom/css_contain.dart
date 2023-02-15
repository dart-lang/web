// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';

@JS('ContentVisibilityAutoStateChangedEvent')
@staticInterop
class ContentVisibilityAutoStateChangedEvent extends Event {
  external factory ContentVisibilityAutoStateChangedEvent();

  external factory ContentVisibilityAutoStateChangedEvent.a1(JSString type);

  external factory ContentVisibilityAutoStateChangedEvent.a2(
    JSString type,
    ContentVisibilityAutoStateChangedEventInit eventInitDict,
  );
}

extension ContentVisibilityAutoStateChangedEventExtension
    on ContentVisibilityAutoStateChangedEvent {
  external JSBoolean get skipped;
}

@JS('ContentVisibilityAutoStateChangedEventInit')
@staticInterop
class ContentVisibilityAutoStateChangedEventInit extends EventInit {
  external factory ContentVisibilityAutoStateChangedEventInit();
}

extension ContentVisibilityAutoStateChangedEventInitExtension
    on ContentVisibilityAutoStateChangedEventInit {}
