// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';

@JS('ContentVisibilityAutoStateChangeEvent')
@staticInterop
class ContentVisibilityAutoStateChangeEvent implements Event {
  external factory ContentVisibilityAutoStateChangeEvent(
    JSString type, [
    ContentVisibilityAutoStateChangeEventInit eventInitDict,
  ]);
}

extension ContentVisibilityAutoStateChangeEventExtension
    on ContentVisibilityAutoStateChangeEvent {
  external JSBoolean get skipped;
}

@JS()
@staticInterop
@anonymous
class ContentVisibilityAutoStateChangeEventInit implements EventInit {
  external factory ContentVisibilityAutoStateChangeEventInit(
      {JSBoolean skipped});
}

extension ContentVisibilityAutoStateChangeEventInitExtension
    on ContentVisibilityAutoStateChangeEventInit {
  external set skipped(JSBoolean value);
  external JSBoolean get skipped;
}
