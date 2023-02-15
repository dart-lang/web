// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/html.dart';

@JS('DataCue')
@staticInterop
class DataCue extends TextTrackCue {
  external factory DataCue();

  external factory DataCue.a1(
    JSNumber startTime,
    JSNumber endTime,
    JSAny value,
  );

  external factory DataCue.a2(
    JSNumber startTime,
    JSNumber endTime,
    JSAny value,
    JSString type,
  );
}

extension DataCueExtension on DataCue {
  external set value(JSAny value);
  external JSAny get value;
  external JSString get type;
}
