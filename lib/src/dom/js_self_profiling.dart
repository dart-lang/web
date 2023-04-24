// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';

typedef ProfilerResource = JSString;

@JS('Profiler')
@staticInterop
class Profiler implements EventTarget {
  external factory Profiler(ProfilerInitOptions options);
}

extension ProfilerExtension on Profiler {
  external JSPromise stop();
  external DOMHighResTimeStamp get sampleInterval;
  external JSBoolean get stopped;
}

@JS()
@staticInterop
@anonymous
class ProfilerTrace {
  external factory ProfilerTrace({
    required JSArray resources,
    required JSArray frames,
    required JSArray stacks,
    required JSArray samples,
  });
}

extension ProfilerTraceExtension on ProfilerTrace {
  external set resources(JSArray value);
  external JSArray get resources;
  external set frames(JSArray value);
  external JSArray get frames;
  external set stacks(JSArray value);
  external JSArray get stacks;
  external set samples(JSArray value);
  external JSArray get samples;
}

@JS()
@staticInterop
@anonymous
class ProfilerSample {
  external factory ProfilerSample({
    required DOMHighResTimeStamp timestamp,
    JSNumber stackId,
  });
}

extension ProfilerSampleExtension on ProfilerSample {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set stackId(JSNumber value);
  external JSNumber get stackId;
}

@JS()
@staticInterop
@anonymous
class ProfilerStack {
  external factory ProfilerStack({
    JSNumber parentId,
    required JSNumber frameId,
  });
}

extension ProfilerStackExtension on ProfilerStack {
  external set parentId(JSNumber value);
  external JSNumber get parentId;
  external set frameId(JSNumber value);
  external JSNumber get frameId;
}

@JS()
@staticInterop
@anonymous
class ProfilerFrame {
  external factory ProfilerFrame({
    required JSString name,
    JSNumber resourceId,
    JSNumber line,
    JSNumber column,
  });
}

extension ProfilerFrameExtension on ProfilerFrame {
  external set name(JSString value);
  external JSString get name;
  external set resourceId(JSNumber value);
  external JSNumber get resourceId;
  external set line(JSNumber value);
  external JSNumber get line;
  external set column(JSNumber value);
  external JSNumber get column;
}

@JS()
@staticInterop
@anonymous
class ProfilerInitOptions {
  external factory ProfilerInitOptions({
    required DOMHighResTimeStamp sampleInterval,
    required JSNumber maxBufferSize,
  });
}

extension ProfilerInitOptionsExtension on ProfilerInitOptions {
  external set sampleInterval(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get sampleInterval;
  external set maxBufferSize(JSNumber value);
  external JSNumber get maxBufferSize;
}
