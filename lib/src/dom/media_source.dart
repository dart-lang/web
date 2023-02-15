// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/webidl.dart';

typedef ReadyState = JSString;
typedef EndOfStreamError = JSString;
typedef AppendMode = JSString;

@JS('MediaSource')
@staticInterop
class MediaSource extends EventTarget {
  external factory MediaSource.a0();

  external static JSBoolean get canConstructInDedicatedWorker;
  external static JSBoolean isTypeSupported(JSString type);
}

extension MediaSourceExtension on MediaSource {
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
  external SourceBuffer addSourceBuffer(JSString type);
  external JSVoid removeSourceBuffer(SourceBuffer sourceBuffer);
  external JSVoid endOfStream();
  external JSVoid endOfStream1(EndOfStreamError error);
  external JSVoid setLiveSeekableRange(
    JSNumber start,
    JSNumber end,
  );
  external JSVoid clearLiveSeekableRange();
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
  external JSVoid appendBuffer(BufferSource data);
  external JSVoid abort();
  external JSVoid changeType(JSString type);
  external JSVoid remove(
    JSNumber start,
    JSNumber end,
  );
}

@JS('SourceBufferList')
@staticInterop
class SourceBufferList extends EventTarget {
  external factory SourceBufferList();
}

extension SourceBufferListExtension on SourceBufferList {
  external JSNumber get length;
  external set onaddsourcebuffer(EventHandler value);
  external EventHandler get onaddsourcebuffer;
  external set onremovesourcebuffer(EventHandler value);
  external EventHandler get onremovesourcebuffer;
}
