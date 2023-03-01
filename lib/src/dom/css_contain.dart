// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';

@JS('ContentVisibilityAutoStateChangedEvent')
@staticInterop
class ContentVisibilityAutoStateChangedEvent implements Event {
  external factory ContentVisibilityAutoStateChangedEvent(
    JSString type, [
    ContentVisibilityAutoStateChangedEventInit eventInitDict,
  ]);
}

extension ContentVisibilityAutoStateChangedEventExtension
    on ContentVisibilityAutoStateChangedEvent {
  external JSBoolean get skipped;
}

@JS()
@staticInterop
@anonymous
class ContentVisibilityAutoStateChangedEventInit implements EventInit {
  external factory ContentVisibilityAutoStateChangedEventInit(
      {JSBoolean skipped = false});
}

extension ContentVisibilityAutoStateChangedEventInitExtension
    on ContentVisibilityAutoStateChangedEventInit {
  external set skipped(JSBoolean value);
  external JSBoolean get skipped;
}
