// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef ReadyState = JSString;
typedef EndOfStreamError = JSString;
typedef AppendMode = JSString;

@JS('MediaSource')
@staticInterop
class MediaSource implements EventTarget {
  external factory MediaSource();

  external static JSBoolean isTypeSupported(JSString type);
  external static JSBoolean get canConstructInDedicatedWorker;
}

extension MediaSourceExtension on MediaSource {
  external SourceBuffer addSourceBuffer(JSString type);
  external JSVoid removeSourceBuffer(SourceBuffer sourceBuffer);
  external JSVoid endOfStream([EndOfStreamError error]);
  external JSVoid setLiveSeekableRange(
    JSNumber start,
    JSNumber end,
  );
  external JSVoid clearLiveSeekableRange();
  external MediaSourceHandle get handle;
  external SourceBufferList get sourceBuffers;
  external SourceBufferList get activeSourceBuffers;
  external ReadyState get readyState;
  external set duration(JSNumber value);
  external JSNumber get duration;
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
  external JSVoid changeType(JSString type);
  external JSVoid remove(
    JSNumber start,
    JSNumber end,
  );
  external set mode(AppendMode value);
  external AppendMode get mode;
  external JSBoolean get updating;
  external TimeRanges get buffered;
  external set timestampOffset(JSNumber value);
  external JSNumber get timestampOffset;
  external AudioTrackList get audioTracks;
  external VideoTrackList get videoTracks;
  external TextTrackList get textTracks;
  external set appendWindowStart(JSNumber value);
  external JSNumber get appendWindowStart;
  external set appendWindowEnd(JSNumber value);
  external JSNumber get appendWindowEnd;
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
  external JSNumber get length;
  external set onaddsourcebuffer(EventHandler value);
  external EventHandler get onaddsourcebuffer;
  external set onremovesourcebuffer(EventHandler value);
  external EventHandler get onremovesourcebuffer;
}
