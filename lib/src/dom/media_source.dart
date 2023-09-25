// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef ReadyState = String;
typedef EndOfStreamError = String;
typedef AppendMode = String;

@JS('MediaSource')
@staticInterop
class MediaSource implements EventTarget {
  external factory MediaSource();

  external static bool isTypeSupported(String type);
  external static bool get canConstructInDedicatedWorker;
}

extension MediaSourceExtension on MediaSource {
  external SourceBuffer addSourceBuffer(String type);
  external JSVoid removeSourceBuffer(SourceBuffer sourceBuffer);
  external JSVoid endOfStream([EndOfStreamError error]);
  external JSVoid setLiveSeekableRange(
    num start,
    num end,
  );
  external JSVoid clearLiveSeekableRange();
  external MediaSourceHandle get handle;
  external SourceBufferList get sourceBuffers;
  external SourceBufferList get activeSourceBuffers;
  external ReadyState get readyState;
  external set duration(num value);
  external num get duration;
  external set onsourceopen(EventHandler value);
  external EventHandler get onsourceopen;
  external set onsourceended(EventHandler value);
  external EventHandler get onsourceended;
  external set onsourceclose(EventHandler value);
  external EventHandler get onsourceclose;
}

@JS('MediaSourceHandle')
@staticInterop
class MediaSourceHandle implements JSObject {}

@JS('SourceBuffer')
@staticInterop
class SourceBuffer implements EventTarget {}

extension SourceBufferExtension on SourceBuffer {
  external JSVoid appendBuffer(BufferSource data);
  external JSVoid abort();
  external JSVoid changeType(String type);
  external JSVoid remove(
    num start,
    num end,
  );
  external set mode(AppendMode value);
  external AppendMode get mode;
  external bool get updating;
  external TimeRanges get buffered;
  external set timestampOffset(num value);
  external num get timestampOffset;
  external AudioTrackList get audioTracks;
  external VideoTrackList get videoTracks;
  external TextTrackList get textTracks;
  external set appendWindowStart(num value);
  external num get appendWindowStart;
  external set appendWindowEnd(num value);
  external num get appendWindowEnd;
  external set onupdatestart(EventHandler value);
  external EventHandler get onupdatestart;
  external set onupdate(EventHandler value);
  external EventHandler get onupdate;
  external set onupdateend(EventHandler value);
  external EventHandler get onupdateend;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onabort(EventHandler value);
  external EventHandler get onabort;
}

@JS('SourceBufferList')
@staticInterop
class SourceBufferList implements EventTarget {}

extension SourceBufferListExtension on SourceBufferList {
  external int get length;
  external set onaddsourcebuffer(EventHandler value);
  external EventHandler get onaddsourcebuffer;
  external set onremovesourcebuffer(EventHandler value);
  external EventHandler get onremovesourcebuffer;
}
