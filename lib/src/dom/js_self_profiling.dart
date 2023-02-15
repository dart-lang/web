// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'hr_time.dart';

typedef ProfilerResource = JSString;

@JS('Profiler')
@staticInterop
class Profiler extends EventTarget {
  external factory Profiler();

  external factory Profiler.a1(ProfilerInitOptions options);
}

extension ProfilerExtension on Profiler {
  external DOMHighResTimeStamp get sampleInterval;
  external JSBoolean get stopped;
  external JSPromise stop();
}

@JS('ProfilerTrace')
@staticInterop
class ProfilerTrace {
  external factory ProfilerTrace();
}

extension ProfilerTraceExtension on ProfilerTrace {}

@JS('ProfilerSample')
@staticInterop
class ProfilerSample {
  external factory ProfilerSample();
}

extension ProfilerSampleExtension on ProfilerSample {}

@JS('ProfilerStack')
@staticInterop
class ProfilerStack {
  external factory ProfilerStack();
}

extension ProfilerStackExtension on ProfilerStack {}

@JS('ProfilerFrame')
@staticInterop
class ProfilerFrame {
  external factory ProfilerFrame();
}

extension ProfilerFrameExtension on ProfilerFrame {}

@JS('ProfilerInitOptions')
@staticInterop
class ProfilerInitOptions {
  external factory ProfilerInitOptions();
}

extension ProfilerInitOptionsExtension on ProfilerInitOptions {}
