// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef ReadyState = JSString;
typedef EndOfStreamError = JSString;
typedef AppendMode = JSString;

@JS('MediaSource')
@staticInterop
class MediaSource extends EventTarget {
  external factory MediaSource();
  external static JSBoolean get canConstructInDedicatedWorker;
  external static JSBoolean isTypeSupported(JSString type);
}

extension MediaSourceExtension on MediaSource {
  external MediaSourceHandle get handle;
  external SourceBufferList get sourceBuffers;
  external SourceBufferList get activeSourceBuffers;
  external ReadyState get readyState;
  external JSNumber get duration;
  external set duration(JSNumber value);
  external EventHandler get onsourceopen;
  external set onsourceopen(EventHandler value);
  external EventHandler get onsourceended;
  external set onsourceended(EventHandler value);
  external EventHandler get onsourceclose;
  external set onsourceclose(EventHandler value);
  external SourceBuffer addSourceBuffer(JSString type);
  external JSUndefined removeSourceBuffer(SourceBuffer sourceBuffer);
  external JSUndefined endOfStream();
  external JSUndefined endOfStream_1(EndOfStreamError error);
  external JSUndefined setLiveSeekableRange(JSNumber start, JSNumber end);
  external JSUndefined clearLiveSeekableRange();
}

@JS('MediaSourceHandle')
@staticInterop
class MediaSourceHandle {
  external factory MediaSourceHandle();
}

@JS('SourceBuffer')
@staticInterop
class SourceBuffer extends EventTarget {
  external factory SourceBuffer();
}

extension SourceBufferExtension on SourceBuffer {
  external AppendMode get mode;
  external set mode(AppendMode value);
  external JSBoolean get updating;
  external TimeRanges get buffered;
  external JSNumber get timestampOffset;
  external set timestampOffset(JSNumber value);
  external AudioTrackList get audioTracks;
  external VideoTrackList get videoTracks;
  external TextTrackList get textTracks;
  external JSNumber get appendWindowStart;
  external set appendWindowStart(JSNumber value);
  external JSNumber get appendWindowEnd;
  external set appendWindowEnd(JSNumber value);
  external EventHandler get onupdatestart;
  external set onupdatestart(EventHandler value);
  external EventHandler get onupdate;
  external set onupdate(EventHandler value);
  external EventHandler get onupdateend;
  external set onupdateend(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external JSUndefined appendBuffer(BufferSource data);
  external JSUndefined abort();
  external JSUndefined changeType(JSString type);
  external JSUndefined remove(JSNumber start, JSNumber end);
}

@JS('SourceBufferList')
@staticInterop
class SourceBufferList extends EventTarget {
  external factory SourceBufferList();
}

extension SourceBufferListExtension on SourceBufferList {
  external JSNumber get length;
  external EventHandler get onaddsourcebuffer;
  external set onaddsourcebuffer(EventHandler value);
  external EventHandler get onremovesourcebuffer;
  external set onremovesourcebuffer(EventHandler value);
}
