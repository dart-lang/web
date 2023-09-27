// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'html.dart';

@JS('DataCue')
@staticInterop
class DataCue implements TextTrackCue {
  external factory DataCue(
    num startTime,
    num endTime,
    JSAny? value, [
    String type,
  ]);
}

extension DataCueExtension on DataCue {
  external set value(JSAny? value);
  external JSAny? get value;
  external String get type;
}
