// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';

@JS('CloseWatcher')
@staticInterop
class CloseWatcher extends EventTarget {
  external factory CloseWatcher();

  external factory CloseWatcher.a1();

  external factory CloseWatcher.a2(CloseWatcherOptions options);
}

extension CloseWatcherExtension on CloseWatcher {
  external JSVoid destroy();
  external JSVoid close();
  external set oncancel(EventHandler value);
  external EventHandler get oncancel;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
}

@JS('CloseWatcherOptions')
@staticInterop
class CloseWatcherOptions {
  external factory CloseWatcherOptions();
}

extension CloseWatcherOptionsExtension on CloseWatcherOptions {}
