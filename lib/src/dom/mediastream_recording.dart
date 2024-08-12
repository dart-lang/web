// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'fileapi.dart';
import 'hr_time.dart';
import 'html.dart';
import 'mediacapture_streams.dart';

typedef BitrateMode = String;
typedef RecordingState = String;

/// The **`MediaRecorder`** interface of the
/// [MediaStream Recording API](https://developer.mozilla.org/en-US/docs/Web/API/MediaStream_Recording_API)
/// provides functionality to easily record media. It is created using the
/// [MediaRecorder.MediaRecorder] constructor.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaRecorder).
extension type MediaRecorder._(JSObject _) implements EventTarget, JSObject {
  external factory MediaRecorder(
    MediaStream stream, [
    MediaRecorderOptions options,
  ]);

  /// The **`isTypeSupported()`** static method of the [MediaRecorder] interface
  /// returns a `Boolean` which is `true` if the MIME media type specified is
  /// one the user agent should be able to successfully record.
  external static bool isTypeSupported(String type);

  /// The **`start()`** method of the [MediaRecorder] interface begins recording
  /// media into one or more [Blob] objects.
  ///
  /// You can
  /// record the entire duration of the media into a single `Blob` (or until you
  /// call [MediaRecorder.requestData]), or you can specify the
  /// number of milliseconds to record at a time. Then, each time that amount of
  /// media has
  /// been recorded, an event will be delivered to let you act upon the recorded
  /// media, while
  /// a new `Blob` is created to record the next slice of the media.
  ///
  /// Assuming the `MediaRecorder`'s [MediaRecorder.state]
  /// is `inactive`, `start()` sets the `state` to
  /// `recording`, then begins capturing media from the input stream. A
  /// `Blob` is created and the data is collected in it until the time slice
  /// period
  /// elapses or the source media ends. Each time a `Blob` is filled up to that
  /// point (the timeslice duration or the end-of-media, if no slice duration
  /// was provided), a
  /// [MediaRecorder.dataavailable_event] event is sent to the `MediaRecorder`
  /// with the
  /// recorded data. If the source is still playing, a new `Blob` is created and
  /// recording continues into that, and so forth.
  ///
  /// When the source stream ends, `state` is set to `inactive` and
  /// data gathering stops. A final [MediaRecorder.dataavailable_event] event is
  /// sent to the
  /// `MediaRecorder`, followed by a [MediaRecorder.stop_event] event.
  ///
  /// > **Note:** If the browser is unable to start recording or continue
  /// > recording, it will raise an [MediaRecorder.error_event] event, followed
  /// > by a
  /// > [MediaRecorder.dataavailable_event] event containing the `Blob` it
  /// > has gathered, followed by the [MediaRecorder.stop_event] event.
  external void start([int timeslice]);

  /// The **`stop()`** method of the [MediaRecorder] interface is
  /// used to stop media capture.
  ///
  /// When the `stop()` method is invoked, the UA queues a task that runs the
  /// following steps:
  ///
  /// 1. If [MediaRecorder.state] is "inactive", raise a DOM
  /// `InvalidState` error and terminate these steps. If the
  /// [MediaRecorder.state] is not "inactive", continue on to the next step.
  /// 2. Set the [MediaRecorder.state] to "inactive" and stop capturing media.
  /// 3. Raise a `dataavailable` event containing the Blob of data that has been
  /// gathered.
  /// 4. Raise a `stop` event.
  external void stop();

  /// The **`pause()`** method of the [MediaRecorder] interface is used
  /// to pause recording of media streams.
  ///
  /// When a `MediaRecorder` object's `pause()`method is called, the
  /// browser queues a task that runs the below steps:
  ///
  /// 1. If [MediaRecorder.state] is "inactive", raise a DOM
  /// `InvalidState` error and terminate these steps. If not, continue to the
  /// next step.
  /// 2. Set [MediaRecorder.state] to "paused".
  /// 3. Stop gathering data into the current [Blob], but keep it available so
  /// that recording can be resumed later on.
  /// 4. Raise a [MediaRecorder.pause_event] event.
  external void pause();

  /// The **`resume()`** method of the [MediaRecorder] interface is used to
  /// resume media recording when it has been previously paused.
  ///
  /// If [MediaRecorder.state] is already "recording", calling `resume()` has no
  /// effect.
  ///
  /// When the `resume()` method is invoked, the browser queues a task that runs
  /// the following steps:
  ///
  /// 1. If [MediaRecorder.state] is "inactive", raise a DOM
  /// `InvalidStateError` exception and terminate these steps. If
  /// [MediaRecorder.state] is not "inactive", continue to the next step.
  /// 2. Set [MediaRecorder.state] to "recording".
  /// 3. Continue gathering data into the current [Blob].
  /// 4. Raise a `resume` event.
  external void resume();

  /// The **`requestData()`**
  /// method of the [MediaRecorder] interface is used to raise a
  /// [MediaRecorder.dataavailable_event] event containing a
  /// [Blob] object of the captured media as it was when the method was
  /// called. This can then be grabbed and manipulated as you wish.
  ///
  /// When the `requestData()` method is invoked, the browser queues a task that
  /// runs the following steps:
  ///
  /// 1. If [MediaRecorder.state] is "inactive", raise a DOM
  /// `InvalidState` error and terminate these steps. If
  /// [MediaRecorder.state] is not "inactive", continue to the next step.
  /// 2. Raise a [MediaRecorder.dataavailable_event] event containing a [Blob]
  /// of the
  /// currently captured data (the Blob is available under the event's `data`
  /// attribute.)
  /// 3. Create a new Blob and place subsequently captured data into it.
  external void requestData();

  /// The **`stream`** read-only property of the [MediaRecorder] interface
  /// returns the stream that was passed into the [MediaRecorder.MediaRecorder]
  /// constructor when the `MediaRecorder` was created.
  external MediaStream get stream;

  /// The **`mimeType`** read-only property of the [MediaRecorder] interface
  /// returns the  media type that was specified when creating the
  /// [MediaRecorder] object, or, if none was specified, which was chosen by the
  /// browser.
  /// This is the file format of the file that would result from writing all of
  /// the recorded data to disk.
  ///
  /// Keep in mind that not all codecs are supported by a given container; if
  /// you write media using a codec that is not supported by a given media
  /// container, the resulting file may not work reliably if at all when you try
  /// to play it back.
  /// See our
  /// [media type and format guide](https://developer.mozilla.org/en-US/docs/Web/Media/Formats)
  /// for information about container and codec support across browsers.
  ///
  /// > **Note:** The term "MIME type" is officially considered to be
  /// > historical; these strings are now officially known as **media types**.
  /// > MDN Web Docs content uses the terms interchangeably.
  external String get mimeType;

  /// The **`state`** read-only property of the [MediaRecorder] interface
  /// returns the current state of the current `MediaRecorder` object.
  external RecordingState get state;
  external EventHandler get onstart;
  external set onstart(EventHandler value);
  external EventHandler get onstop;
  external set onstop(EventHandler value);
  external EventHandler get ondataavailable;
  external set ondataavailable(EventHandler value);
  external EventHandler get onpause;
  external set onpause(EventHandler value);
  external EventHandler get onresume;
  external set onresume(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);

  /// The **`videoBitsPerSecond`** read-only
  /// property of the [MediaRecorder] interface returns the video encoding
  /// bit rate in use.
  ///
  /// This may differ from the bit rate specified in the
  /// constructor, if it was provided.
  external int get videoBitsPerSecond;

  /// The **`audioBitsPerSecond`** read-only
  /// property of the [MediaRecorder] interface returns the audio encoding bit
  /// rate in use.
  ///
  /// This may differ from the bit rate specified in the constructor (if
  /// it was provided).
  external int get audioBitsPerSecond;
}
extension type MediaRecorderOptions._(JSObject _) implements JSObject {
  external factory MediaRecorderOptions({
    String mimeType,
    int audioBitsPerSecond,
    int videoBitsPerSecond,
    int bitsPerSecond,
    BitrateMode audioBitrateMode,
    DOMHighResTimeStamp videoKeyFrameIntervalDuration,
    int videoKeyFrameIntervalCount,
  });

  external String get mimeType;
  external set mimeType(String value);
  external int get audioBitsPerSecond;
  external set audioBitsPerSecond(int value);
  external int get videoBitsPerSecond;
  external set videoBitsPerSecond(int value);
  external int get bitsPerSecond;
  external set bitsPerSecond(int value);
  external BitrateMode get audioBitrateMode;
  external set audioBitrateMode(BitrateMode value);
  external double get videoKeyFrameIntervalDuration;
  external set videoKeyFrameIntervalDuration(DOMHighResTimeStamp value);
  external int get videoKeyFrameIntervalCount;
  external set videoKeyFrameIntervalCount(int value);
}

/// The **`BlobEvent`** interface of the
/// [MediaStream Recording API](https://developer.mozilla.org/en-US/docs/Web/API/MediaStream_Recording_API)
/// represents events associated with a [Blob]. These blobs are typically, but
/// not necessarily, associated with media content.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/BlobEvent).
extension type BlobEvent._(JSObject _) implements Event, JSObject {
  external factory BlobEvent(
    String type,
    BlobEventInit eventInitDict,
  );

  /// The **`data`** read-only property of the [BlobEvent] interface represents
  /// a [Blob] associated with the event.
  external Blob get data;

  /// The **`timecode`** read-only property of the [BlobEvent] interface
  /// indicates the difference between the timestamp of the first chunk of data,
  /// and the timestamp of the first chunk in the first `BlobEvent` produced by
  /// this recorder.
  ///
  /// Note that the `timecode` in the first produced `BlobEvent` does not need
  /// to be zero.
  external double get timecode;
}
extension type BlobEventInit._(JSObject _) implements JSObject {
  external factory BlobEventInit({
    required Blob data,
    DOMHighResTimeStamp timecode,
  });

  external Blob get data;
  external set data(Blob value);
  external double get timecode;
  external set timecode(DOMHighResTimeStamp value);
}
