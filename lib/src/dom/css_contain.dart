// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

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
      {JSBoolean skipped});
}

extension ContentVisibilityAutoStateChangedEventInitExtension
    on ContentVisibilityAutoStateChangedEventInit {
  external set skipped(JSBoolean value);
  external JSBoolean get skipped;
}
