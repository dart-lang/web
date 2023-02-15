// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'hr_time.dart';
import 'performance_timeline.dart';

@JS('LargestContentfulPaint')
@staticInterop
class LargestContentfulPaint extends PerformanceEntry {
  external factory LargestContentfulPaint();
}

extension LargestContentfulPaintExtension on LargestContentfulPaint {
  external DOMHighResTimeStamp get renderTime;
  external DOMHighResTimeStamp get loadTime;
  external JSNumber get size;
  external JSString get id;
  external JSString get url;
  external Element? get element;
  external JSObject toJSON();
}
