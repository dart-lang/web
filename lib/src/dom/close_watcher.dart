// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

@JS('CloseWatcher')
@staticInterop
class CloseWatcher implements EventTarget {
  external factory CloseWatcher([CloseWatcherOptions options]);
}

extension CloseWatcherExtension on CloseWatcher {
  external JSVoid destroy();
  external JSVoid close();
  external set oncancel(EventHandler value);
  external EventHandler get oncancel;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
}

@JS()
@staticInterop
@anonymous
class CloseWatcherOptions implements JSObject {
  external factory CloseWatcherOptions({AbortSignal signal});
}

extension CloseWatcherOptionsExtension on CloseWatcherOptions {
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}
