// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'geometry.dart';
import 'hr_time.dart';
import 'performance_timeline.dart';

@JS('PerformanceElementTiming')
@staticInterop
class PerformanceElementTiming implements PerformanceEntry {}

extension PerformanceElementTimingExtension on PerformanceElementTiming {
  external JSObject toJSON();
  external DOMHighResTimeStamp get renderTime;
  external DOMHighResTimeStamp get loadTime;
  external DOMRectReadOnly get intersectionRect;
  external JSString get identifier;
  external JSNumber get naturalWidth;
  external JSNumber get naturalHeight;
  external JSString get id;
  external Element? get element;
  external JSString get url;
}
