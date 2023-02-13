// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef UpdateCallback = JSFunction;

@JS('ViewTransition')
@staticInterop
class ViewTransition {
  external factory ViewTransition();
}

extension ViewTransitionExtension on ViewTransition {
  external JSPromise get updateCallbackDone;
  external JSPromise get ready;
  external JSPromise get finished;
  external JSUndefined skipTransition();
}
