// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';

typedef ProfilerResource = String;
extension type Profiler._(JSObject _) implements EventTarget, JSObject {
  external factory Profiler(ProfilerInitOptions options);

  external JSPromise<ProfilerTrace> stop();
  external DOMHighResTimeStamp get sampleInterval;
  external bool get stopped;
}
extension type ProfilerTrace._(JSObject _) implements JSObject {
  external factory ProfilerTrace({
    required JSArray<JSString> resources,
    required JSArray<ProfilerFrame> frames,
    required JSArray<ProfilerStack> stacks,
    required JSArray<ProfilerSample> samples,
  });

  external set resources(JSArray<JSString> value);
  external JSArray<JSString> get resources;
  external set frames(JSArray<ProfilerFrame> value);
  external JSArray<ProfilerFrame> get frames;
  external set stacks(JSArray<ProfilerStack> value);
  external JSArray<ProfilerStack> get stacks;
  external set samples(JSArray<ProfilerSample> value);
  external JSArray<ProfilerSample> get samples;
}
extension type ProfilerSample._(JSObject _) implements JSObject {
  external factory ProfilerSample({
    required DOMHighResTimeStamp timestamp,
    int stackId,
  });

  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set stackId(int value);
  external int get stackId;
}
extension type ProfilerStack._(JSObject _) implements JSObject {
  external factory ProfilerStack({
    int parentId,
    required int frameId,
  });

  external set parentId(int value);
  external int get parentId;
  external set frameId(int value);
  external int get frameId;
}
extension type ProfilerFrame._(JSObject _) implements JSObject {
  external factory ProfilerFrame({
    required String name,
    int resourceId,
    int line,
    int column,
  });

  external set name(String value);
  external String get name;
  external set resourceId(int value);
  external int get resourceId;
  external set line(int value);
  external int get line;
  external set column(int value);
  external int get column;
}
extension type ProfilerInitOptions._(JSObject _) implements JSObject {
  external factory ProfilerInitOptions({
    required DOMHighResTimeStamp sampleInterval,
    required int maxBufferSize,
  });

  external set sampleInterval(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get sampleInterval;
  external set maxBufferSize(int value);
  external int get maxBufferSize;
}
