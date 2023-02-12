// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'package:js/js.dart';

@JS()
external ChildProcess get childProcess;

@JS()
@staticInterop
class ChildProcess {}

// TODO(joshualitt): Replace `void` with `JSVoid`.
extension ChildProcessExtension on ChildProcess {
  external void exec(JSString cmd, JSFunction callback);
}
