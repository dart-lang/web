// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';

typedef ProfilerResource = String;
extension type Profiler._(JSObject _) implements EventTarget, JSObject {
  external factory Profiler(ProfilerInitOptions options);

  external JSPromise<ProfilerTrace> stop();
  external double get sampleInterval;
  external bool get stopped;
}
extension type ProfilerTrace._(JSObject _) implements JSObject {
  external factory ProfilerTrace({
    required JSArray<JSString> resources,
    required JSArray<ProfilerFrame> frames,
    required JSArray<ProfilerStack> stacks,
    required JSArray<ProfilerSample> samples,
  });

  external JSArray<JSString> get resources;
  external set resources(JSArray<JSString> value);
  external JSArray<ProfilerFrame> get frames;
  external set frames(JSArray<ProfilerFrame> value);
  external JSArray<ProfilerStack> get stacks;
  external set stacks(JSArray<ProfilerStack> value);
  external JSArray<ProfilerSample> get samples;
  external set samples(JSArray<ProfilerSample> value);
}
extension type ProfilerSample._(JSObject _) implements JSObject {
  external factory ProfilerSample({
    required DOMHighResTimeStamp timestamp,
    int stackId,
  });

  external double get timestamp;
  external set timestamp(DOMHighResTimeStamp value);
  external int get stackId;
  external set stackId(int value);
}
extension type ProfilerStack._(JSObject _) implements JSObject {
  external factory ProfilerStack({
    int parentId,
    required int frameId,
  });

  external int get parentId;
  external set parentId(int value);
  external int get frameId;
  external set frameId(int value);
}
extension type ProfilerFrame._(JSObject _) implements JSObject {
  external factory ProfilerFrame({
    required String name,
    int resourceId,
    int line,
    int column,
  });

  external String get name;
  external set name(String value);
  external int get resourceId;
  external set resourceId(int value);
  external int get line;
  external set line(int value);
  external int get column;
  external set column(int value);
}
extension type ProfilerInitOptions._(JSObject _) implements JSObject {
  external factory ProfilerInitOptions({
    required DOMHighResTimeStamp sampleInterval,
    required int maxBufferSize,
  });

  external double get sampleInterval;
  external set sampleInterval(DOMHighResTimeStamp value);
  external int get maxBufferSize;
  external set maxBufferSize(int value);
}
