// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef ReadyState = String;
typedef EndOfStreamError = String;
typedef AppendMode = String;

/// The **`MediaSource`** interface of the [Media Source Extensions API]
/// represents a source of media data for an [HTMLMediaElement] object. A
/// `MediaSource` object can be attached to a [HTMLMediaElement] to be played in
/// the user agent.
extension type MediaSource._(JSObject _) implements EventTarget, JSObject {
  external factory MediaSource();

  external static bool isTypeSupported(String type);
  external static bool get canConstructInDedicatedWorker;

  /// The **`addSourceBuffer()`** method of the
  /// [MediaSource] interface creates a new [SourceBuffer] of the
  /// given  and adds it to the `MediaSource`'s
  /// [MediaSource.sourceBuffers] list. The new
  /// `SourceBuffer` is also returned.
  external SourceBuffer addSourceBuffer(String type);

  /// The **`removeSourceBuffer()`** method of the [MediaSource] interface
  /// removes the given [SourceBuffer] from the [SourceBufferList] associated
  /// with this `MediaSource` object.
  external void removeSourceBuffer(SourceBuffer sourceBuffer);

  /// The **`endOfStream()`** method of the
  /// [MediaSource] interface signals the end of the stream.
  external void endOfStream([EndOfStreamError error]);

  /// The **`setLiveSeekableRange()`** method of the
  /// [MediaSource] interface sets the range that the user can seek to in the
  /// media element.
  external void setLiveSeekableRange(
    num start,
    num end,
  );

  /// The **`clearLiveSeekableRange()`** method of the
  /// [MediaSource] interface clears a seekable range previously set with a call
  /// to [MediaSource.setLiveSeekableRange].
  external void clearLiveSeekableRange();
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

/// The **`MediaSourceHandle`** interface of the [Media Source Extensions API]
/// is a proxy for a [MediaSource] that can be transferred from a dedicated
/// worker back to the main thread and attached to a media element via its
/// [HTMLMediaElement.srcObject] property. `MediaSource` objects are not
/// transferable because they are event targets, hence the need for
/// `MediaSourceHandle`s.
///
/// It can be accessed via the [MediaSource.handle] property.
///
/// Each `MediaSource` object created inside a dedicated worker has its own
/// distinct `MediaSourceHandle`. The `MediaSource.handle` getter will always
/// return the `MediaSourceHandle` instance specific to the associated dedicated
/// worker `MediaSource` instance. If the handle has already been transferred to
/// the main thread using [DedicatedWorkerGlobalScope.postMessage], the handle
/// instance in the worker is technically detached and can't be transferred
/// again.
extension type MediaSourceHandle._(JSObject _) implements JSObject {}

/// The **`SourceBuffer`** interface represents a chunk of media to be passed
/// into an [HTMLMediaElement] and played, via a [MediaSource] object. This can
/// be made up of one or several media segments.
extension type SourceBuffer._(JSObject _) implements EventTarget, JSObject {
  /// The **`appendBuffer()`** method of the
  /// [SourceBuffer] interface appends media segment data from an
  /// `ArrayBuffer`, a `TypedArray` or a `DataView` object
  /// to the `SourceBuffer`.
  external void appendBuffer(BufferSource data);

  /// The **`abort()`** method of the [SourceBuffer]
  /// interface aborts the current segment and resets the segment parser.
  external void abort();

  /// The **`changeType()`** method of the
  /// [SourceBuffer] interface sets the MIME type that future calls to
  /// [SourceBuffer.appendBuffer] should expect the new media
  /// data to conform to. This makes it possible to change codecs or container
  /// type
  /// mid-stream.
  ///
  /// One scenario in which this is helpful is to support adapting the media
  /// source to
  /// changing bandwidth availability, by transitioning from one codec to
  /// another as resource
  /// constraints change.
  external void changeType(String type);

  /// The **`remove()`** method of the [SourceBuffer]
  /// interface removes media segments within a specific time range from the
  /// `SourceBuffer`. This method can only be called when
  /// [SourceBuffer.updating] equals `false`. If
  /// `SourceBuffer.updating` is not equal to `false`, call
  /// [SourceBuffer.abort].
  external void remove(
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

/// The **`SourceBufferList`** interface represents a simple container list for
/// multiple [SourceBuffer] objects.
///
/// The source buffer list containing the `SourceBuffer`s appended to a
/// particular `MediaSource` can be retrieved using the
/// [MediaSource.sourceBuffers] property.
///
/// The individual source buffers can be accessed using the
/// [bracket notation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Property_accessors#bracket_notation)
/// `[]`.
extension type SourceBufferList._(JSObject _) implements EventTarget, JSObject {
  external int get length;
  external set onaddsourcebuffer(EventHandler value);
  external EventHandler get onaddsourcebuffer;
  external set onremovesourcebuffer(EventHandler value);
  external EventHandler get onremovesourcebuffer;
}
extension type ManagedMediaSource._(JSObject _)
    implements MediaSource, JSObject {
  external factory ManagedMediaSource();

  external bool get streaming;
  external set onstartstreaming(EventHandler value);
  external EventHandler get onstartstreaming;
  external set onendstreaming(EventHandler value);
  external EventHandler get onendstreaming;
}
extension type BufferedChangeEvent._(JSObject _) implements Event, JSObject {
  external factory BufferedChangeEvent(
    String type, [
    BufferedChangeEventInit eventInitDict,
  ]);

  external TimeRanges get addedRanges;
  external TimeRanges get removedRanges;
}
extension type BufferedChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory BufferedChangeEventInit({
    TimeRanges addedRanges,
    TimeRanges removedRanges,
  });

  external set addedRanges(TimeRanges value);
  external TimeRanges get addedRanges;
  external set removedRanges(TimeRanges value);
  external TimeRanges get removedRanges;
}
extension type ManagedSourceBuffer._(JSObject _)
    implements SourceBuffer, JSObject {
  external set onbufferedchange(EventHandler value);
  external EventHandler get onbufferedchange;
}
