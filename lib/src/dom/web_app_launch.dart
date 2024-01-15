// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'status.dart';

typedef LaunchConsumer = JSFunction;

@JS('LaunchParams')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class LaunchParams {}

extension LaunchParamsExtension on LaunchParams {
  external String? get targetURL;
  external JSArray get files;
}

@JS('LaunchQueue')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class LaunchQueue {}

extension LaunchQueueExtension on LaunchQueue {
  external void setConsumer(LaunchConsumer consumer);
}
