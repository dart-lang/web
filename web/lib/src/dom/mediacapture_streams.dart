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
import 'html.dart';
import 'image_capture.dart';
import 'screen_capture.dart';
import 'webidl.dart';

typedef ConstrainULong = JSAny;
typedef ConstrainDouble = JSAny;
typedef ConstrainBoolean = JSAny;
typedef ConstrainDOMString = JSAny;
typedef MediaStreamTrackState = String;
typedef MediaDeviceKind = String;

/// The **`MediaStream`** interface of the [Media Capture and Streams API]
/// represents a stream of media content. A stream consists of several
/// **tracks**, such as video or audio tracks. Each track is specified as an
/// instance of [MediaStreamTrack].
///
/// You can obtain a `MediaStream` object either by using the constructor or by
/// calling functions such as [MediaDevices.getUserMedia],
/// [MediaDevices.getDisplayMedia], or [HTMLCanvasElement.captureStream] and
/// [HTMLMediaElement.captureStream].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaStream).
extension type MediaStream._(JSObject _) implements EventTarget, JSObject {
  external factory MediaStream([JSObject streamOrTracks]);

  /// The **`getAudioTracks()`** method of the
  /// [MediaStream] interface returns a sequence that represents all the
  /// [MediaStreamTrack] objects in this
  /// stream's
  /// [`track set`](https://www.w3.org/TR/mediacapture-streams/#track-set) where
  /// [MediaStreamTrack.kind]
  /// is `audio`.
  external JSArray<MediaStreamTrack> getAudioTracks();

  /// The **`getVideoTracks()`** method of the
  /// [MediaStream] interface returns a sequence of
  /// [MediaStreamTrack] objects representing the video tracks in this stream.
  external JSArray<MediaStreamTrack> getVideoTracks();

  /// The **`getTracks()`** method of the
  /// [MediaStream] interface returns a sequence that represents all the
  /// [MediaStreamTrack] objects in this
  /// stream's
  /// [`track set`](https://www.w3.org/TR/mediacapture-streams/#track-set),
  /// regardless of [MediaStreamTrack.kind].
  external JSArray<MediaStreamTrack> getTracks();

  /// The **`getTrackById()`** method of the [MediaStream] interface
  /// returns a [MediaStreamTrack] object representing the track with the
  /// specified ID
  /// string. If there is no track with the specified ID, this method returns
  /// `null`.
  external MediaStreamTrack? getTrackById(String trackId);

  /// The **`addTrack()`** method of the [MediaStream] interface adds a new
  /// track to the
  /// stream. The track is specified as a parameter of type [MediaStreamTrack].
  ///
  /// > **Note:** If the specified track is already in the stream's track set,
  /// > this method has no
  /// > effect.
  external void addTrack(MediaStreamTrack track);

  /// The **`removeTrack()`** method of the [MediaStream] interface removes a
  /// [MediaStreamTrack] from a stream.
  external void removeTrack(MediaStreamTrack track);

  /// The **`clone()`** method of the [MediaStream]
  /// interface creates a duplicate of the `MediaStream`. This new
  /// `MediaStream` object has a new unique [MediaStream.id] and
  /// contains clones of every [MediaStreamTrack] contained by the
  /// `MediaStream` on which `clone()` was called.
  external MediaStream clone();

  /// The **`id`** read-only property of the [MediaStream] interface is a
  /// string containing 36 characters denoting a unique identifier (GUID)
  /// for the object.
  external String get id;

  /// The **`active`** read-only property of the
  /// [MediaStream] interface returns a Boolean value which is
  /// `true` if the stream is currently active; otherwise, it returns
  /// `false`. A stream is considered **active** if at least one of
  /// its [MediaStreamTrack]s does not have its property
  /// [MediaStreamTrack.readyState]
  /// set to `ended`. Once every track has ended, the stream's `active` property
  /// becomes
  /// `false`.
  external bool get active;
  external EventHandler get onaddtrack;
  external set onaddtrack(EventHandler value);
  external EventHandler get onremovetrack;
  external set onremovetrack(EventHandler value);
}

/// The **`MediaStreamTrack`** interface of the [Media Capture and Streams API]
/// represents a single media track within a stream; typically, these are audio
/// or video tracks, but other track types may exist as well.
///
/// Some user agents subclass this interface to provide more precise information
/// or functionality, such as [CanvasCaptureMediaStreamTrack].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrack).
extension type MediaStreamTrack._(JSObject _) implements EventTarget, JSObject {
  /// The **`clone()`** method of the [MediaStreamTrack]
  /// interface creates a duplicate of the `MediaStreamTrack`. This new
  /// `MediaStreamTrack` object is identical except for its unique
  /// [MediaStreamTrack.id].
  external MediaStreamTrack clone();

  /// The **`stop()`** method of the [MediaStreamTrack] interface stops the
  /// track.
  external void stop();

  /// The **`getCapabilities()`** method of
  /// the [MediaStreamTrack] interface returns a
  /// `MediaTrackCapabilities` object which specifies the values or range of
  /// values which each constrainable property, based upon the platform and .
  ///
  /// Once you know what the browser's capabilities are, your script can use
  /// [MediaStreamTrack.applyConstraints] to ask for the
  /// track to be configured to match ideal or acceptable settings. See
  /// [Capabilities, constraints, and
  /// settings](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints)
  /// for details on how to work with constrainable properties.
  external MediaTrackCapabilities getCapabilities();

  /// The **`getConstraints()`** method of
  /// the [MediaStreamTrack] interface returns a
  /// [MediaTrackConstraints] object containing the set of constraints most
  /// recently established for the track using a prior call to
  /// [MediaStreamTrack.applyConstraints]. These
  /// constraints indicate values and ranges of values that the website or
  /// application has
  /// specified are required or acceptable for the included constrainable
  /// properties.
  ///
  /// Constraints can be used to ensure that the media meets certain guidelines
  /// you prefer.
  /// For example, you may prefer high definition video but require that the
  /// frame rate be a
  /// little low to help keep the data rate low enough not overtax the network.
  /// Constraints
  /// can also specify ideal and/or acceptable sizes or ranges of sizes. See
  /// [Capabilities, constraints, and
  /// settings](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints)
  /// for details on how to work with constrainable properties.
  external MediaTrackConstraints getConstraints();

  /// The **`getSettings()`** method of the
  /// [MediaStreamTrack] interface returns a [MediaTrackSettings]
  /// object containing the current values of each of the constrainable
  /// properties for the
  /// current `MediaStreamTrack`.
  ///
  /// See [Capabilities, constraints, and
  /// settings](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints)
  /// for details on how to work with constrainable properties.
  external MediaTrackSettings getSettings();

  /// The **`applyConstraints()`** method of the [MediaStreamTrack] interface
  /// applies a set of constraints to the track; these constraints let the
  /// website or app establish ideal values and acceptable ranges of values for
  /// the constrainable properties of the track, such as frame rate, dimensions,
  /// echo cancellation, and so forth.
  ///
  /// Constraints can be used to ensure that the media meets certain guidelines
  /// you prefer.
  /// For example, you may prefer high-density video but require that the frame
  /// rate be a little low to help keep the data rate low enough not overtax the
  /// network.
  /// Constraints can also specify ideal and/or acceptable sizes or ranges of
  /// sizes.
  /// See
  /// [Applying constraints](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints#applying_constraints)
  /// in [Capabilities, constraints, and
  /// settings](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints)
  /// for more information on how to apply your preferred constraints.
  external JSPromise<JSAny?> applyConstraints(
      [MediaTrackConstraints constraints]);

  /// The **`kind`** read-only property of the [MediaStreamTrack] interface
  /// returns a string set to `"audio"` if the track is an audio track and to
  /// `"video"` if it is a video track.
  /// It doesn't change if the track is disassociated from its source.
  external String get kind;

  /// The **`id`** read-only property of the [MediaStreamTrack] interface
  /// returns a
  /// string containing a unique identifier (GUID) for the track, which is
  /// generated by the .
  external String get id;

  /// The **`label`** read-only property of the [MediaStreamTrack] interface
  /// returns a string containing a -assigned label that identifies the track
  /// source, as in `"internal microphone"`.
  ///
  /// The string may be left empty and is empty as long as no source has been
  /// connected.
  /// When the track is disassociated from its source, the label is not changed.
  external String get label;

  /// The **`enabled`** property of the
  /// [MediaStreamTrack] interface is a Boolean value which is
  /// `true` if the track is allowed to render the source stream or
  /// `false` if it is not. This can be used to intentionally mute a
  /// track.
  ///
  /// When enabled, a track's data is output from the source to the
  /// destination; otherwise, empty frames are output.
  ///
  /// In the case of audio, a disabled track generates frames of silence (that
  /// is, frames in
  /// which every sample's value is 0). For video tracks, every frame is filled
  /// entirely with
  /// black pixels.
  ///
  /// The value of `enabled`, in essence, represents what a typical user would
  /// consider the muting state for a track, whereas the
  /// [MediaStreamTrack.muted]
  /// property indicates a state in which the track is temporarily unable to
  /// output
  /// data, such as a scenario in which frames have been lost in transit.
  ///
  /// > **Note:** If the track has been disconnected, the value of this property
  /// > can be changed, but has no effect.
  external bool get enabled;
  external set enabled(bool value);

  /// The **`muted`** read-only property of the
  /// [MediaStreamTrack] interface returns a boolean value
  /// indicating whether or not the track is currently unable to provide media
  /// output.
  ///
  /// > **Note:** To implement a way for users to mute and unmute a track, use
  /// > the
  /// > [MediaStreamTrack.enabled] property. When a track is disabled
  /// > by setting `enabled` to `false`, it generates only empty frames
  /// > (audio frames in which every sample is 0, or video frames in which every
  /// > pixel is
  /// > black).
  external bool get muted;
  external EventHandler get onmute;
  external set onmute(EventHandler value);
  external EventHandler get onunmute;
  external set onunmute(EventHandler value);

  /// The **`readyState`** read-only property of the [MediaStreamTrack]
  /// interface returns an enumerated value giving the status of the track.
  external MediaStreamTrackState get readyState;
  external EventHandler get onended;
  external set onended(EventHandler value);

  /// The **`contentHint`** property of the [MediaStreamTrack] interface is a
  /// string that hints at the type of content the track contains. Allowable
  /// values depend on the value of the [MediaStreamTrack.kind] property.
  external String get contentHint;
  external set contentHint(String value);
}

/// The **`MediaTrackSupportedConstraints`** dictionary establishes the list of
/// constrainable properties recognized by the  or browser in its implementation
/// of the [MediaStreamTrack] object. An object conforming to
/// `MediaTrackSupportedConstraints` is returned by
/// [MediaDevices.getSupportedConstraints].
///
/// Because of the way interface definitions in WebIDL work, if a constraint is
/// requested but not supported, no error will occur. Instead, the specified
/// constraints will be applied, with any unrecognized constraints stripped from
/// the request. That can lead to confusing and hard to debug errors, so be sure
/// to use `getSupportedConstraints()` to retrieve this information before
/// attempting to establish constraints if you need to know the difference
/// between silently ignoring a constraint and a constraint being accepted.
///
/// An actual constraint set is described using an object based on the
/// [MediaTrackConstraints] dictionary.
///
/// To learn more about how constraints work, see [Capabilities, constraints,
/// and
/// settings](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackSupportedConstraints).
extension type MediaTrackSupportedConstraints._(JSObject _)
    implements JSObject {
  external factory MediaTrackSupportedConstraints({
    bool width,
    bool height,
    bool aspectRatio,
    bool frameRate,
    bool facingMode,
    bool resizeMode,
    bool sampleRate,
    bool sampleSize,
    bool echoCancellation,
    bool autoGainControl,
    bool noiseSuppression,
    bool latency,
    bool channelCount,
    bool deviceId,
    bool groupId,
    bool whiteBalanceMode,
    bool exposureMode,
    bool focusMode,
    bool pointsOfInterest,
    bool exposureCompensation,
    bool exposureTime,
    bool colorTemperature,
    bool iso,
    bool brightness,
    bool contrast,
    bool pan,
    bool saturation,
    bool sharpness,
    bool focusDistance,
    bool tilt,
    bool zoom,
    bool torch,
    bool displaySurface,
    bool logicalSurface,
    bool cursor,
    bool restrictOwnAudio,
    bool suppressLocalAudioPlayback,
  });

  /// The [MediaTrackSupportedConstraints] dictionary's
  /// **`width`** property is a read-only Boolean value which is
  /// present (and set to `true`) in the object returned by
  /// [MediaDevices.getSupportedConstraints] if and only if the
  /// supports the `width` constraint. If the constraint
  /// isn't supported, it's not included in the list, so this value will never
  /// be
  /// `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  external bool get width;
  external set width(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's
  /// **`height`** property is a read-only Boolean value which is
  /// present (and set to `true`) in the object returned by
  /// [MediaDevices.getSupportedConstraints] if and only if the
  /// supports the `height` constraint. If the
  /// constraint isn't supported, it's not included in the list, so this value
  /// will never be
  /// `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  external bool get height;
  external set height(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's **`aspectRatio`**
  /// property is a read-only Boolean value which is present (and set to `true`)
  /// in the object returned by [MediaDevices.getSupportedConstraints] if and
  /// only if the
  /// supports the `aspectRatio` constraint.
  /// If the constraint isn't supported, it's not included in the list, so this
  /// value will never be `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  external bool get aspectRatio;
  external set aspectRatio(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's **`frameRate`** property
  /// is a read-only Boolean value which is
  /// present (and set to `true`) in the object returned by
  /// [MediaDevices.getSupportedConstraints] if and only if the  supports the
  /// [MediaTrackConstraints.frameRate] constraint.
  ///
  /// If the constraint isn't supported, it's not included in the list, so this
  /// value will never be `false`.
  ///
  /// The `frameRate` constraint can be used to establish acceptable upper and
  /// lower bounds on the video frame rate for a new video track, or to specify
  /// an exact frame rate that must be provided for the request to succeed.
  /// Checking the value of this property lets you determine if the user agent
  /// allows constraining the video track configuration by frame rate. See the
  /// [example](#examples) to see how this can be used.
  external bool get frameRate;
  external set frameRate(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's
  /// **`facingMode`** property is a read-only Boolean value which is
  /// present (and set to `true`) in the object returned by
  /// [MediaDevices.getSupportedConstraints] if and only if the
  /// supports the `facingMode` constraint. If the
  /// constraint isn't supported, it's not included in the list, so this value
  /// will never be
  /// `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  external bool get facingMode;
  external set facingMode(bool value);
  external bool get resizeMode;
  external set resizeMode(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's
  /// **`sampleRate`** property is a read-only Boolean value which is
  /// present (and set to `true`) in the object returned by
  /// [MediaDevices.getSupportedConstraints] if and only if the
  /// supports the `sampleRate` constraint. If the
  /// constraint isn't supported, it's not included in the list, so this value
  /// will never be
  /// `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  external bool get sampleRate;
  external set sampleRate(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's
  /// **`sampleSize`** property is a read-only Boolean value which is
  /// present (and set to `true`) in the object returned by
  /// [MediaDevices.getSupportedConstraints] if and only if the
  /// supports the `sampleSize` constraint. If the
  /// constraint isn't supported, it's not included in the list, so this value
  /// will never be
  /// `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  external bool get sampleSize;
  external set sampleSize(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's
  /// **`echoCancellation`** property is a read-only Boolean value
  /// which is present (and set to `true`) in the object returned by
  /// [MediaDevices.getSupportedConstraints] if and only if the
  /// supports the `echoCancellation` constraint. If the
  /// constraint isn't supported, it's not included in the list, so this value
  /// will never be
  /// `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  external bool get echoCancellation;
  external set echoCancellation(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's **`autoGainControl`**
  /// property is a read-only Boolean value which is present (and set to `true`)
  /// in the object returned by [MediaDevices.getSupportedConstraints] if and
  /// only if the  supports the **`autoGainControl`** constraint.
  /// If the constraint isn't supported, it's not included in the list, so this
  /// value will never be `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  ///
  /// The `autoGainControl` constraint indicates whether or not the browser
  /// offers the ability to automatically control the gain (volume) on media
  /// tracks; this obviously is contingent on whether or not the individual
  /// device supports automatic gain control as well; it's typically a feature
  /// provided by microphones.
  external bool get autoGainControl;
  external set autoGainControl(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's
  /// **`noiseSuppression`** property is a read-only Boolean value
  /// which is present (and set to `true`) in the object returned by
  /// [MediaDevices.getSupportedConstraints] if and only if the
  /// supports the **`noiseSuppression`**
  /// constraint. If the constraint isn't supported, it's not included in the
  /// list, so this
  /// value will never be `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  ///
  /// The `noiseSuppression` constraint indicates whether or not the browser
  /// offers the ability to automatically control the gain (volume) on media
  /// tracks; this
  /// obviously is contingent on whether or not the individual device supports
  /// automatic gain
  /// control as well.
  external bool get noiseSuppression;
  external set noiseSuppression(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's **`latency`** property
  /// is a read-only Boolean value which is present (and set to `true`) in the
  /// object returned by [MediaDevices.getSupportedConstraints] if and only if
  /// the  supports the `latency` constraint.
  /// If the constraint isn't supported, it's not included in the list, so this
  /// value will never be `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  external bool get latency;
  external set latency(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's
  /// **`channelCount`** property is a read-only Boolean value which
  /// is present (and set to `true`) in the object returned by
  /// [MediaDevices.getSupportedConstraints] if and only if the
  /// supports the `channelCount` constraint. If the
  /// constraint isn't supported, it's not included in the list, so this value
  /// will never be
  /// `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  external bool get channelCount;
  external set channelCount(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's
  /// **`deviceId`** property is a read-only Boolean value which is
  /// present (and set to `true`) in the object returned by
  /// [MediaDevices.getSupportedConstraints] if and only if the
  /// supports the `deviceId` constraint. If the
  /// constraint isn't supported, it's not included in the list, so this value
  /// will never be
  /// `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  external bool get deviceId;
  external set deviceId(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's
  /// **`groupId`** property is a read-only Boolean value which is
  /// present (and set to `true`) in the object returned by
  /// [MediaDevices.getSupportedConstraints] if and only if the
  /// supports the `groupId` constraint. If the
  /// constraint isn't supported, it's not included in the list, so this value
  /// will never be
  /// `false`.
  ///
  /// You can access the supported constraints dictionary by calling
  /// `navigator.mediaDevices.getSupportedConstraints()`.
  external bool get groupId;
  external set groupId(bool value);
  external bool get whiteBalanceMode;
  external set whiteBalanceMode(bool value);
  external bool get exposureMode;
  external set exposureMode(bool value);
  external bool get focusMode;
  external set focusMode(bool value);
  external bool get pointsOfInterest;
  external set pointsOfInterest(bool value);
  external bool get exposureCompensation;
  external set exposureCompensation(bool value);
  external bool get exposureTime;
  external set exposureTime(bool value);
  external bool get colorTemperature;
  external set colorTemperature(bool value);
  external bool get iso;
  external set iso(bool value);
  external bool get brightness;
  external set brightness(bool value);
  external bool get contrast;
  external set contrast(bool value);
  external bool get pan;
  external set pan(bool value);
  external bool get saturation;
  external set saturation(bool value);
  external bool get sharpness;
  external set sharpness(bool value);
  external bool get focusDistance;
  external set focusDistance(bool value);
  external bool get tilt;
  external set tilt(bool value);
  external bool get zoom;
  external set zoom(bool value);
  external bool get torch;
  external set torch(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's **`displaySurface`**
  /// property indicates whether or not the
  /// [MediaTrackConstraints.displaySurface] constraint is supported by the user
  /// agent and the device on which the content is being used.
  ///
  /// The supported constraints list is obtained by calling
  /// [MediaDevices.getSupportedConstraints].
  external bool get displaySurface;
  external set displaySurface(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's **`logicalSurface`**
  /// property indicates whether or not the
  /// [MediaTrackConstraints.logicalSurface] constraint is supported by the user
  /// agent and the device on which the content is being used.
  ///
  /// The supported constraints list is obtained by calling
  /// [MediaDevices.getSupportedConstraints].
  external bool get logicalSurface;
  external set logicalSurface(bool value);
  external bool get cursor;
  external set cursor(bool value);
  external bool get restrictOwnAudio;
  external set restrictOwnAudio(bool value);

  /// The [MediaTrackSupportedConstraints] dictionary's
  /// **`suppressLocalAudioPlayback`** property indicates whether or not the
  /// [MediaTrackConstraints.suppressLocalAudioPlayback] constraint is supported
  /// by the user agent and the device on which the content is being used.
  ///
  /// The supported constraints list is obtained by calling
  /// [MediaDevices.getSupportedConstraints].
  external bool get suppressLocalAudioPlayback;
  external set suppressLocalAudioPlayback(bool value);
}
extension type MediaTrackCapabilities._(JSObject _) implements JSObject {
  external factory MediaTrackCapabilities({
    ULongRange width,
    ULongRange height,
    DoubleRange aspectRatio,
    DoubleRange frameRate,
    JSArray<JSString> facingMode,
    JSArray<JSString> resizeMode,
    ULongRange sampleRate,
    ULongRange sampleSize,
    JSArray<JSBoolean> echoCancellation,
    JSArray<JSBoolean> autoGainControl,
    JSArray<JSBoolean> noiseSuppression,
    DoubleRange latency,
    ULongRange channelCount,
    String deviceId,
    String groupId,
    JSArray<JSString> whiteBalanceMode,
    JSArray<JSString> exposureMode,
    JSArray<JSString> focusMode,
    MediaSettingsRange exposureCompensation,
    MediaSettingsRange exposureTime,
    MediaSettingsRange colorTemperature,
    MediaSettingsRange iso,
    MediaSettingsRange brightness,
    MediaSettingsRange contrast,
    MediaSettingsRange saturation,
    MediaSettingsRange sharpness,
    MediaSettingsRange focusDistance,
    MediaSettingsRange pan,
    MediaSettingsRange tilt,
    MediaSettingsRange zoom,
    JSArray<JSBoolean> torch,
    String displaySurface,
    bool logicalSurface,
    JSArray<JSString> cursor,
  });

  external ULongRange get width;
  external set width(ULongRange value);
  external ULongRange get height;
  external set height(ULongRange value);
  external DoubleRange get aspectRatio;
  external set aspectRatio(DoubleRange value);
  external DoubleRange get frameRate;
  external set frameRate(DoubleRange value);
  external JSArray<JSString> get facingMode;
  external set facingMode(JSArray<JSString> value);
  external JSArray<JSString> get resizeMode;
  external set resizeMode(JSArray<JSString> value);
  external ULongRange get sampleRate;
  external set sampleRate(ULongRange value);
  external ULongRange get sampleSize;
  external set sampleSize(ULongRange value);
  external JSArray<JSBoolean> get echoCancellation;
  external set echoCancellation(JSArray<JSBoolean> value);
  external JSArray<JSBoolean> get autoGainControl;
  external set autoGainControl(JSArray<JSBoolean> value);
  external JSArray<JSBoolean> get noiseSuppression;
  external set noiseSuppression(JSArray<JSBoolean> value);
  external DoubleRange get latency;
  external set latency(DoubleRange value);
  external ULongRange get channelCount;
  external set channelCount(ULongRange value);
  external String get deviceId;
  external set deviceId(String value);
  external String get groupId;
  external set groupId(String value);
  external JSArray<JSString> get whiteBalanceMode;
  external set whiteBalanceMode(JSArray<JSString> value);
  external JSArray<JSString> get exposureMode;
  external set exposureMode(JSArray<JSString> value);
  external JSArray<JSString> get focusMode;
  external set focusMode(JSArray<JSString> value);
  external MediaSettingsRange get exposureCompensation;
  external set exposureCompensation(MediaSettingsRange value);
  external MediaSettingsRange get exposureTime;
  external set exposureTime(MediaSettingsRange value);
  external MediaSettingsRange get colorTemperature;
  external set colorTemperature(MediaSettingsRange value);
  external MediaSettingsRange get iso;
  external set iso(MediaSettingsRange value);
  external MediaSettingsRange get brightness;
  external set brightness(MediaSettingsRange value);
  external MediaSettingsRange get contrast;
  external set contrast(MediaSettingsRange value);
  external MediaSettingsRange get saturation;
  external set saturation(MediaSettingsRange value);
  external MediaSettingsRange get sharpness;
  external set sharpness(MediaSettingsRange value);
  external MediaSettingsRange get focusDistance;
  external set focusDistance(MediaSettingsRange value);
  external MediaSettingsRange get pan;
  external set pan(MediaSettingsRange value);
  external MediaSettingsRange get tilt;
  external set tilt(MediaSettingsRange value);
  external MediaSettingsRange get zoom;
  external set zoom(MediaSettingsRange value);
  external JSArray<JSBoolean> get torch;
  external set torch(JSArray<JSBoolean> value);
  external String get displaySurface;
  external set displaySurface(String value);
  external bool get logicalSurface;
  external set logicalSurface(bool value);
  external JSArray<JSString> get cursor;
  external set cursor(JSArray<JSString> value);
}

/// The **`MediaTrackConstraints`** dictionary is used to describe a set of
/// capabilities and the value or values each can take on. A constraints
/// dictionary is passed into [MediaStreamTrack.applyConstraints] to allow a
/// script to establish a set of exact (required) values or ranges and/or
/// preferred values or ranges of values for the track, and the most
/// recently-requested set of custom constraints can be retrieved by calling
/// [MediaStreamTrack.getConstraints].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints).
extension type MediaTrackConstraints._(JSObject _)
    implements MediaTrackConstraintSet, JSObject {
  external factory MediaTrackConstraints({
    ConstrainULong width,
    ConstrainULong height,
    ConstrainDouble aspectRatio,
    ConstrainDouble frameRate,
    ConstrainDOMString facingMode,
    ConstrainDOMString resizeMode,
    ConstrainULong sampleRate,
    ConstrainULong sampleSize,
    ConstrainBoolean echoCancellation,
    ConstrainBoolean autoGainControl,
    ConstrainBoolean noiseSuppression,
    ConstrainDouble latency,
    ConstrainULong channelCount,
    ConstrainDOMString deviceId,
    ConstrainDOMString groupId,
    ConstrainDOMString whiteBalanceMode,
    ConstrainDOMString exposureMode,
    ConstrainDOMString focusMode,
    ConstrainPoint2D pointsOfInterest,
    ConstrainDouble exposureCompensation,
    ConstrainDouble exposureTime,
    ConstrainDouble colorTemperature,
    ConstrainDouble iso,
    ConstrainDouble brightness,
    ConstrainDouble contrast,
    ConstrainDouble saturation,
    ConstrainDouble sharpness,
    ConstrainDouble focusDistance,
    JSAny pan,
    JSAny tilt,
    JSAny zoom,
    ConstrainBoolean torch,
    ConstrainDOMString displaySurface,
    ConstrainBoolean logicalSurface,
    ConstrainDOMString cursor,
    ConstrainBoolean restrictOwnAudio,
    ConstrainBoolean suppressLocalAudioPlayback,
    JSArray<MediaTrackConstraintSet> advanced,
  });

  external JSArray<MediaTrackConstraintSet> get advanced;
  external set advanced(JSArray<MediaTrackConstraintSet> value);
}
extension type MediaTrackConstraintSet._(JSObject _) implements JSObject {
  external factory MediaTrackConstraintSet({
    ConstrainULong width,
    ConstrainULong height,
    ConstrainDouble aspectRatio,
    ConstrainDouble frameRate,
    ConstrainDOMString facingMode,
    ConstrainDOMString resizeMode,
    ConstrainULong sampleRate,
    ConstrainULong sampleSize,
    ConstrainBoolean echoCancellation,
    ConstrainBoolean autoGainControl,
    ConstrainBoolean noiseSuppression,
    ConstrainDouble latency,
    ConstrainULong channelCount,
    ConstrainDOMString deviceId,
    ConstrainDOMString groupId,
    ConstrainDOMString whiteBalanceMode,
    ConstrainDOMString exposureMode,
    ConstrainDOMString focusMode,
    ConstrainPoint2D pointsOfInterest,
    ConstrainDouble exposureCompensation,
    ConstrainDouble exposureTime,
    ConstrainDouble colorTemperature,
    ConstrainDouble iso,
    ConstrainDouble brightness,
    ConstrainDouble contrast,
    ConstrainDouble saturation,
    ConstrainDouble sharpness,
    ConstrainDouble focusDistance,
    JSAny pan,
    JSAny tilt,
    JSAny zoom,
    ConstrainBoolean torch,
    ConstrainDOMString displaySurface,
    ConstrainBoolean logicalSurface,
    ConstrainDOMString cursor,
    ConstrainBoolean restrictOwnAudio,
    ConstrainBoolean suppressLocalAudioPlayback,
  });

  external ConstrainULong get width;
  external set width(ConstrainULong value);
  external ConstrainULong get height;
  external set height(ConstrainULong value);
  external ConstrainDouble get aspectRatio;
  external set aspectRatio(ConstrainDouble value);
  external ConstrainDouble get frameRate;
  external set frameRate(ConstrainDouble value);
  external ConstrainDOMString get facingMode;
  external set facingMode(ConstrainDOMString value);
  external ConstrainDOMString get resizeMode;
  external set resizeMode(ConstrainDOMString value);
  external ConstrainULong get sampleRate;
  external set sampleRate(ConstrainULong value);
  external ConstrainULong get sampleSize;
  external set sampleSize(ConstrainULong value);
  external ConstrainBoolean get echoCancellation;
  external set echoCancellation(ConstrainBoolean value);
  external ConstrainBoolean get autoGainControl;
  external set autoGainControl(ConstrainBoolean value);
  external ConstrainBoolean get noiseSuppression;
  external set noiseSuppression(ConstrainBoolean value);
  external ConstrainDouble get latency;
  external set latency(ConstrainDouble value);
  external ConstrainULong get channelCount;
  external set channelCount(ConstrainULong value);
  external ConstrainDOMString get deviceId;
  external set deviceId(ConstrainDOMString value);
  external ConstrainDOMString get groupId;
  external set groupId(ConstrainDOMString value);
  external ConstrainDOMString get whiteBalanceMode;
  external set whiteBalanceMode(ConstrainDOMString value);
  external ConstrainDOMString get exposureMode;
  external set exposureMode(ConstrainDOMString value);
  external ConstrainDOMString get focusMode;
  external set focusMode(ConstrainDOMString value);
  external ConstrainPoint2D get pointsOfInterest;
  external set pointsOfInterest(ConstrainPoint2D value);
  external ConstrainDouble get exposureCompensation;
  external set exposureCompensation(ConstrainDouble value);
  external ConstrainDouble get exposureTime;
  external set exposureTime(ConstrainDouble value);
  external ConstrainDouble get colorTemperature;
  external set colorTemperature(ConstrainDouble value);
  external ConstrainDouble get iso;
  external set iso(ConstrainDouble value);
  external ConstrainDouble get brightness;
  external set brightness(ConstrainDouble value);
  external ConstrainDouble get contrast;
  external set contrast(ConstrainDouble value);
  external ConstrainDouble get saturation;
  external set saturation(ConstrainDouble value);
  external ConstrainDouble get sharpness;
  external set sharpness(ConstrainDouble value);
  external ConstrainDouble get focusDistance;
  external set focusDistance(ConstrainDouble value);
  external JSAny get pan;
  external set pan(JSAny value);
  external JSAny get tilt;
  external set tilt(JSAny value);
  external JSAny get zoom;
  external set zoom(JSAny value);
  external ConstrainBoolean get torch;
  external set torch(ConstrainBoolean value);
  external ConstrainDOMString get displaySurface;
  external set displaySurface(ConstrainDOMString value);
  external ConstrainBoolean get logicalSurface;
  external set logicalSurface(ConstrainBoolean value);
  external ConstrainDOMString get cursor;
  external set cursor(ConstrainDOMString value);
  external ConstrainBoolean get restrictOwnAudio;
  external set restrictOwnAudio(ConstrainBoolean value);
  external ConstrainBoolean get suppressLocalAudioPlayback;
  external set suppressLocalAudioPlayback(ConstrainBoolean value);
}

/// The **`MediaTrackSettings`** dictionary is used to return the current values
/// configured for each of a [MediaStreamTrack]'s settings. These values will
/// adhere as closely as possible to any constraints previously described using
/// a [MediaTrackConstraints] object and set using
/// [MediaStreamTrack.applyConstraints], and will adhere to the default
/// constraints for any properties whose constraints haven't been changed, or
/// whose customized constraints couldn't be matched.
///
/// To learn more about how constraints and settings work, see [Capabilities,
/// constraints, and
/// settings](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackSettings).
extension type MediaTrackSettings._(JSObject _) implements JSObject {
  external factory MediaTrackSettings({
    int width,
    int height,
    num aspectRatio,
    num frameRate,
    String facingMode,
    String resizeMode,
    int sampleRate,
    int sampleSize,
    bool echoCancellation,
    bool autoGainControl,
    bool noiseSuppression,
    num latency,
    int channelCount,
    String deviceId,
    String groupId,
    String whiteBalanceMode,
    String exposureMode,
    String focusMode,
    JSArray<Point2D> pointsOfInterest,
    num exposureCompensation,
    num exposureTime,
    num colorTemperature,
    num iso,
    num brightness,
    num contrast,
    num saturation,
    num sharpness,
    num focusDistance,
    num pan,
    num tilt,
    num zoom,
    bool torch,
    String displaySurface,
    bool logicalSurface,
    String cursor,
    bool restrictOwnAudio,
    bool suppressLocalAudioPlayback,
  });

  /// The [MediaTrackSettings] dictionary's **`width`**
  /// property is an integer indicating the number of pixels wide
  /// [MediaStreamTrack] is currently configured to be. This lets you determine
  /// what value was selected to comply with your specified constraints for this
  /// property's
  /// value as described in the [MediaTrackConstraints.width] property you
  /// provided when calling either [MediaDevices.getUserMedia]
  /// or [MediaStreamTrack.applyConstraints].
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.width] as returned by a call
  /// to [MediaDevices.getSupportedConstraints]. However, typically this is
  /// unnecessary since browsers will ignore any constraints they're unfamiliar
  /// with.
  external int get width;
  external set width(int value);

  /// The [MediaTrackSettings] dictionary's **`height`**
  /// property is an integer indicating the number of pixels tall
  /// [MediaStreamTrack] is currently configured to be. This lets you determine
  /// what value was selected to comply with your specified constraints for this
  /// property's
  /// value as described in the [MediaTrackConstraints.height] property you
  /// provided when calling either [MediaDevices.getUserMedia]
  /// or [MediaStreamTrack.applyConstraints].
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.height] as returned by a call
  /// to [MediaDevices.getSupportedConstraints]. However, typically this is
  /// unnecessary since browsers will ignore any constraints they're unfamiliar
  /// with.
  external int get height;
  external set height(int value);

  /// The [MediaTrackSettings] dictionary's **`aspectRatio`** property is a
  /// double-precision floating-point number indicating the  of the
  /// [MediaStreamTrack] as currently configured.
  /// This lets you determine what value was selected to comply with your
  /// specified constraints for this property's value as described in the
  /// [MediaTrackConstraints.aspectRatio] property you provided when calling
  /// either [MediaDevices.getUserMedia] or [MediaStreamTrack.applyConstraints].
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.aspectRatio] as returned by a
  /// call to [MediaDevices.getSupportedConstraints]. However, typically this
  /// is unnecessary since browsers will ignore any constraints they're
  /// unfamiliar with.
  external double get aspectRatio;
  external set aspectRatio(num value);

  /// The [MediaTrackSettings] dictionary's
  /// **`frameRate`** property is a double-precision floating-point
  /// number indicating the frame rate, in frames per second, of the
  /// [MediaStreamTrack] as currently configured. This lets you determine what
  /// value was selected to comply with your specified constraints for this
  /// property's value
  /// as described in the [MediaTrackConstraints.frameRate] property you
  /// provided
  /// when calling either [MediaDevices.getUserMedia] or
  /// [MediaStreamTrack.applyConstraints].
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.frameRate] as returned by a
  /// call to [MediaDevices.getSupportedConstraints]. However, typically this
  /// is unnecessary since browsers will ignore any constraints they're
  /// unfamiliar with.
  external double get frameRate;
  external set frameRate(num value);

  /// The [MediaTrackSettings] dictionary's
  /// **`facingMode`** property is a string
  /// indicating the direction in which the camera producing the video track
  /// represented by
  /// the [MediaStreamTrack] is currently facing. This lets you determine what
  /// value was selected to comply with your specified constraints for this
  /// property's value
  /// as described in the [MediaTrackConstraints.facingMode] property you
  /// provided when calling either [MediaDevices.getUserMedia]
  /// or [MediaStreamTrack.applyConstraints].
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.facingMode] as returned by a
  /// call to [MediaDevices.getSupportedConstraints]. However, typically this
  /// is unnecessary since browsers will ignore any constraints they're
  /// unfamiliar with.
  ///
  /// Because  doesn't include this information, tracks associated with a
  /// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// [RTCPeerConnection]
  /// will never include this property.
  external String get facingMode;
  external set facingMode(String value);
  external String get resizeMode;
  external set resizeMode(String value);

  /// The [MediaTrackSettings] dictionary's
  /// **`sampleRate`** property is an integer indicating how many
  /// audio samples per second the [MediaStreamTrack] is currently configured
  /// for. This lets you determine what value was selected to comply with your
  /// specified
  /// constraints for this property's value as described in the
  /// [MediaTrackConstraints.sampleRate] property you provided when calling
  /// either [MediaDevices.getUserMedia] or
  /// [MediaStreamTrack.applyConstraints].
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.sampleRate] as returned by a
  /// call to [MediaDevices.getSupportedConstraints]. However, typically this
  /// is unnecessary since browsers will ignore any constraints they're
  /// unfamiliar with.
  external int get sampleRate;
  external set sampleRate(int value);

  /// The [MediaTrackSettings] dictionary's
  /// **`sampleSize`** property is an integer indicating the linear
  /// sample size (in bits per sample) the [MediaStreamTrack] is currently
  /// configured for. This lets you determine what value was selected to comply
  /// with your
  /// specified constraints for this property's value as described in the
  /// [MediaTrackConstraints.sampleSize] property you provided when calling
  /// either [MediaDevices.getUserMedia] or
  /// [MediaStreamTrack.applyConstraints].
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.sampleSize] as returned by a
  /// call to [MediaDevices.getSupportedConstraints]. However, typically this
  /// is unnecessary since browsers will ignore any constraints they're
  /// unfamiliar with.
  external int get sampleSize;
  external set sampleSize(int value);

  /// The [MediaTrackSettings] dictionary's
  /// **`echoCancellation`** property is a Boolean value whose value
  /// indicates whether or not echo cancellation is enabled on an audio track.
  /// This lets you
  /// determine what value was selected to comply with your specified
  /// constraints for this
  /// property's value as described in the
  /// [MediaTrackConstraints.echoCancellation] property you provided when
  /// calling
  /// either [MediaDevices.getUserMedia] or
  /// [MediaStreamTrack.applyConstraints].
  ///
  /// Echo cancellation is a feature which attempts to prevent echo effects on a
  /// two-way
  /// audio connection by attempting to reduce or eliminate crosstalk between
  /// the user's
  /// output device and their input device. For example, it might apply a filter
  /// that negates
  /// the sound being produced on the speakers from being included in the input
  /// track
  /// generated from the microphone.
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.echoCancellation] as returned
  /// by a call to [MediaDevices.getSupportedConstraints]. However, typically
  /// this is unnecessary since browsers will ignore any constraints they're
  /// unfamiliar with.
  ///
  /// Because  doesn't include this information, tracks associated with a
  /// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// [RTCPeerConnection]
  /// will never include this property.
  external bool get echoCancellation;
  external set echoCancellation(bool value);

  /// The [MediaTrackSettings] dictionary's
  /// **`autoGainControl`** property is a Boolean value whose value
  /// indicates whether or not automatic gain control (AGC) is enabled on an
  /// audio track. This
  /// lets you determine what value was selected to comply with your specified
  /// constraints for
  /// this property's value as described in the
  /// [MediaTrackConstraints.autoGainControl] property you provided when calling
  /// either [MediaDevices.getUserMedia] or
  /// [MediaStreamTrack.applyConstraints].
  ///
  /// Automatic gain control is a feature in which a sound source automatically
  /// manages
  /// changes in the volume of its source media to maintain a steady overall
  /// volume level.
  /// This feature is typically used on microphones, although it can be provided
  /// by other
  /// input sources as well.
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.autoGainControl] as returned
  /// by a call to [MediaDevices.getSupportedConstraints]. However, typically
  /// this is unnecessary since browsers will ignore any constraints they're
  /// unfamiliar with.
  external bool get autoGainControl;
  external set autoGainControl(bool value);

  /// The [MediaTrackSettings] dictionary's
  /// **`noiseSuppression`** property is a Boolean value whose value
  /// indicates whether or not noise suppression technology is enabled on an
  /// audio track. This
  /// lets you determine what value was selected to comply with your specified
  /// constraints for
  /// this property's value as described in the
  /// [MediaTrackConstraints.noiseSuppression] property you provided when
  /// calling
  /// either [MediaDevices.getUserMedia] or
  /// [MediaStreamTrack.applyConstraints].
  ///
  /// Noise suppression automatically filters the audio to remove background
  /// noise, hum
  /// caused by equipment, and the like from the sound before delivering it to
  /// your code. This
  /// feature is typically used on microphones, although it is technically
  /// possible it could
  /// be provided by other input sources as well.
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.noiseSuppression] as returned
  /// by a call to [MediaDevices.getSupportedConstraints]. However, typically
  /// this is unnecessary since browsers will ignore any constraints they're
  /// unfamiliar with.
  external bool get noiseSuppression;
  external set noiseSuppression(bool value);

  /// The [MediaTrackSettings] dictionary's
  /// **`latency`** property is a double-precision floating-point
  /// number indicating the estimated latency (specified in seconds) of the
  /// [MediaStreamTrack] as currently configured. This lets you determine what
  /// value was selected to comply with your specified constraints for this
  /// property's value
  /// as described in the [MediaTrackConstraints.latency] property you provided
  /// when calling either [MediaDevices.getUserMedia] or
  /// [MediaStreamTrack.applyConstraints].
  ///
  /// This is, of course, an approximation, since latency can vary for many
  /// reasons including
  /// CPU, transmission, and storage overhead.
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.latency] as returned by a
  /// call
  /// to [MediaDevices.getSupportedConstraints]. However, typically this is
  /// unnecessary since browsers will ignore any constraints they're unfamiliar
  /// with.
  ///
  /// Because  doesn't include this information, tracks associated with a
  /// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// [RTCPeerConnection]
  /// will never include this property.
  external double get latency;
  external set latency(num value);

  /// The [MediaTrackSettings] dictionary's
  /// **`channelCount`** property is an integer indicating how many
  /// audio channels the [MediaStreamTrack] is currently configured to have.
  /// This
  /// lets you determine what value was selected to comply with your specified
  /// constraints for
  /// this property's value as described in the
  /// [MediaTrackConstraints.channelCount] property you provided when calling
  /// either [MediaDevices.getUserMedia] or
  /// [MediaStreamTrack.applyConstraints].
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.channelCount] as returned by
  /// a
  /// call to [MediaDevices.getSupportedConstraints]. However, typically this
  /// is unnecessary since browsers will ignore any constraints they're
  /// unfamiliar with.
  external int get channelCount;
  external set channelCount(int value);

  /// The [MediaTrackSettings] dictionary's
  /// **`deviceId`** property is a string which
  /// uniquely identifies the source for the corresponding [MediaStreamTrack]
  /// for
  /// the origin corresponding to the browsing session. This lets you determine
  /// what value was
  /// selected to comply with your specified constraints for this property's
  /// value as
  /// described in the [MediaTrackConstraints.deviceId] property you provided
  /// when calling either [MediaDevices.getUserMedia].
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.deviceId] as returned by a
  /// call to [MediaDevices.getSupportedConstraints]. However, typically this
  /// is unnecessary since browsers will ignore any constraints they're
  /// unfamiliar with.
  ///
  /// Because  doesn't include this information, tracks associated with a
  /// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// [RTCPeerConnection]
  /// will never include this property.
  external String get deviceId;
  external set deviceId(String value);

  /// The [MediaTrackSettings] dictionary's
  /// **`groupId`** property is a browsing-session unique
  /// string which identifies the group of devices which includes the source
  /// for the [MediaStreamTrack]. This lets you determine what value was
  /// selected
  /// to comply with your specified constraints for this property's value as
  /// described in the
  /// [MediaTrackConstraints.groupId] property you provided when calling either
  /// [MediaDevices.getUserMedia].
  ///
  /// If needed, you can determine whether or not this constraint is supported
  /// by checking
  /// the value of [MediaTrackSupportedConstraints.groupId] as returned by a
  /// call
  /// to [MediaDevices.getSupportedConstraints]. However, typically this is
  /// unnecessary since browsers will ignore any constraints they're unfamiliar
  /// with.
  ///
  /// Because  doesn't include this information, tracks associated with a
  /// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// [RTCPeerConnection]
  /// will never include this property.
  external String get groupId;
  external set groupId(String value);
  external String get whiteBalanceMode;
  external set whiteBalanceMode(String value);
  external String get exposureMode;
  external set exposureMode(String value);
  external String get focusMode;
  external set focusMode(String value);
  external JSArray<Point2D> get pointsOfInterest;
  external set pointsOfInterest(JSArray<Point2D> value);
  external double get exposureCompensation;
  external set exposureCompensation(num value);
  external double get exposureTime;
  external set exposureTime(num value);
  external double get colorTemperature;
  external set colorTemperature(num value);
  external double get iso;
  external set iso(num value);
  external double get brightness;
  external set brightness(num value);
  external double get contrast;
  external set contrast(num value);
  external double get saturation;
  external set saturation(num value);
  external double get sharpness;
  external set sharpness(num value);
  external double get focusDistance;
  external set focusDistance(num value);
  external double get pan;
  external set pan(num value);
  external double get tilt;
  external set tilt(num value);
  external double get zoom;
  external set zoom(num value);
  external bool get torch;
  external set torch(bool value);

  /// The [MediaTrackSettings] dictionary's
  /// **`displaySurface`** property indicates the type of display
  /// surface being captured.
  external String get displaySurface;
  external set displaySurface(String value);

  /// The [MediaTrackSettings] dictionary's
  /// **`logicalSurface`** property indicates whether or not the
  /// display area being captured is a logical surface. Logical surfaces are
  /// those which are
  /// not necessarily entirely onscreen, or may even be off-screen, such as
  /// windows' backing
  /// buffers (where only part of the buffer is visible without scrolling the
  /// containing
  /// window) and offscreen rendering contexts.
  external bool get logicalSurface;
  external set logicalSurface(bool value);

  /// The [MediaTrackSettings] dictionary's **`cursor`** property indicates
  /// whether or not the cursor should be captured as part of the video track
  /// included in the [MediaStream] returned by [MediaDevices.getDisplayMedia].
  external String get cursor;
  external set cursor(String value);
  external bool get restrictOwnAudio;
  external set restrictOwnAudio(bool value);

  /// The [MediaTrackSettings] dictionary's **`suppressLocalAudioPlayback`**
  /// property controls whether the audio playing in a tab will continue to be
  /// played out of a user's local speakers when the tab is captured.
  ///
  /// For example, in cases where you broadcast a video call to an external AV
  /// system in a conference room, you will want the audio to play out of the AV
  /// system, and not the local speakers. This way, the audio will be louder and
  /// clearer, and also in sync with the conference video.
  external bool get suppressLocalAudioPlayback;
  external set suppressLocalAudioPlayback(bool value);
}

/// The **`MediaStreamTrackEvent`** interface of the
/// [Media Capture and Streams API] represents events which indicate that a
/// [MediaStream] has had tracks added to or removed from the stream through
/// calls to
/// [Media Capture and Streams API](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API)
/// methods. These events are sent to the stream when these changes occur.
///
/// The events based on this interface are [MediaStream.addtrack_event] and
/// [MediaStream.removetrack_event].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaStreamTrackEvent).
extension type MediaStreamTrackEvent._(JSObject _) implements Event, JSObject {
  external factory MediaStreamTrackEvent(
    String type,
    MediaStreamTrackEventInit eventInitDict,
  );

  /// The **`track`** read-only property of the [MediaStreamTrackEvent]
  /// interface returns the [MediaStreamTrack] associated with this event.
  external MediaStreamTrack get track;
}
extension type MediaStreamTrackEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory MediaStreamTrackEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required MediaStreamTrack track,
  });

  external MediaStreamTrack get track;
  external set track(MediaStreamTrack value);
}

/// The **`OverconstrainedError`** interface of the
/// [Media Capture and Streams API](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API)
/// indicates that the set of desired capabilities for the current
/// [MediaStreamTrack] cannot currently be met. When this event is thrown on a
/// MediaStreamTrack, it is muted until either the current constraints can be
/// established or until satisfiable constraints are applied.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedError).
extension type OverconstrainedError._(JSObject _)
    implements DOMException, JSObject {
  external factory OverconstrainedError(
    String constraint, [
    String message,
  ]);

  /// The **`constraint`** read-only property of the
  /// [OverconstrainedError] interface returns the constraint that was supplied
  /// in the constructor, meaning the constraint that was not satisfied.
  external String get constraint;
}

/// The **`MediaDevices`** interface of the [Media Capture and Streams API]
/// provides access to connected media input devices like cameras and
/// microphones, as well as screen sharing. In essence, it lets you obtain
/// access to any hardware source of media data.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices).
extension type MediaDevices._(JSObject _) implements EventTarget, JSObject {
  /// The **`enumerateDevices()`** method of the [MediaDevices] interface
  /// requests a list of the currently available media input and output devices,
  /// such as microphones, cameras, headsets, and so forth.
  /// The returned `Promise` is resolved with an array of [MediaDeviceInfo]
  /// objects describing the devices.
  ///
  /// The returned list will omit any devices that are blocked by the document
  /// [Permission Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Permissions-Policy):
  /// [`microphone`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Permissions-Policy/microphone),
  /// [`camera`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Permissions-Policy/camera),
  /// [`speaker-selection`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Permissions-Policy/speaker-selection)
  /// (for output devices), and so on.
  /// Access to particular non-default devices is also gated by the
  /// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API),
  /// and the list will omit devices for which the user has not granted explicit
  /// permission.
  external JSPromise<JSArray<MediaDeviceInfo>> enumerateDevices();

  /// The **`getSupportedConstraints()`** method of the [MediaDevices] interface
  /// returns an object based on the [MediaTrackSupportedConstraints]
  /// dictionary, whose member fields each specify one of the constrainable
  /// properties the  understands.
  external MediaTrackSupportedConstraints getSupportedConstraints();

  /// The **`getUserMedia()`** method of the [MediaDevices] interface prompts
  /// the user for permission to use a media input which produces a
  /// [MediaStream] with tracks containing the requested types of media.
  ///
  /// That stream can include, for example, a video track (produced by either a
  /// hardware or virtual video source such as a camera, video recording device,
  /// screen sharing service, and so forth), an audio track (similarly, produced
  /// by a physical or virtual audio source like a microphone, A/D converter, or
  /// the like), and possibly other track types.
  ///
  /// It returns a `Promise` that resolves to a [MediaStream] object.
  /// If the user denies permission, or matching media is not available, then
  /// the promise is rejected with `NotAllowedError` or `NotFoundError`
  /// [DOMException] respectively.
  ///
  /// > **Note:** It's possible for the returned promise to _neither_ resolve
  /// > nor reject, as the user is not required to make a choice at all and may
  /// > ignore the request.
  external JSPromise<MediaStream> getUserMedia(
      [MediaStreamConstraints constraints]);

  /// The **`getDisplayMedia()`** method of the [MediaDevices] interface prompts
  /// the user to select and
  /// grant permission to capture the contents of a display or portion thereof
  /// (such as a window) as a [MediaStream].
  ///
  /// The resulting stream can then be
  /// recorded using the
  /// [MediaStream Recording API](https://developer.mozilla.org/en-US/docs/Web/API/MediaStream_Recording_API)
  /// or transmitted as part of a
  /// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// session.
  ///
  /// See
  /// [Using the Screen Capture API](https://developer.mozilla.org/en-US/docs/Web/API/Screen_Capture_API/Using_Screen_Capture)
  /// for more details and an example.
  external JSPromise<MediaStream> getDisplayMedia(
      [DisplayMediaStreamOptions options]);
  external EventHandler get ondevicechange;
  external set ondevicechange(EventHandler value);
}

/// The **`MediaDeviceInfo`** interface of the [Media Capture and Streams API]
/// contains information that describes a single media input or output device.
///
/// The list of devices obtained by calling [MediaDevices.enumerateDevices] is
/// an array of `MediaDeviceInfo` objects, one per media device.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaDeviceInfo).
extension type MediaDeviceInfo._(JSObject _) implements JSObject {
  /// The **`toJSON()`** method of the [MediaDeviceInfo] interface is a ; it
  /// returns a JSON representation of the [MediaDeviceInfo] object.
  external JSObject toJSON();

  /// The **`deviceId`** read-only property
  /// of the [MediaDeviceInfo] interface returns a string
  /// that is an identifier for the represented device and is persisted across
  /// sessions.
  ///
  /// It is un-guessable by other applications, and unique to the origin of
  /// the calling application. It is reset when the user clears cookies. For
  /// private browsing,
  /// a different identifier is used that is not persisted across sessions.
  external String get deviceId;

  /// The **`kind`** read-only property of
  /// the [MediaDeviceInfo] interface returns an enumerated value, that is
  /// either `"videoinput"`, `"audioinput"` or `"audiooutput"`.
  external MediaDeviceKind get kind;

  /// The **`label`** read-only
  /// property of the [MediaDeviceInfo] interface returns a
  /// string describing this device (for example
  /// "External USB Webcam").
  ///
  /// Only available during active `MediaStream`
  /// use, or when persistent permissions have been granted.
  external String get label;

  /// The **`groupId`** read-only property of
  /// the [MediaDeviceInfo] interface returns a string that
  /// is a group identifier.
  ///
  /// Two devices have the same group identifier if they
  /// belong to the same physical device; for example, a monitor with both a
  /// built-in camera
  /// and microphone.
  external String get groupId;
}

/// The **`InputDeviceInfo`** interface of the [Media Capture and Streams API]
/// gives access to the capabilities of the input device that it represents.
///
/// `InputDeviceInfo` objects are returned by [MediaDevices.enumerateDevices] if
/// the returned device is an audio or video input device.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/InputDeviceInfo).
extension type InputDeviceInfo._(JSObject _)
    implements MediaDeviceInfo, JSObject {
  /// The **`getCapabilities()`** method of the [InputDeviceInfo] interface
  /// returns a `MediaTrackCapabilities` object describing the primary audio or
  /// video track of the device's [MediaStream].
  external MediaTrackCapabilities getCapabilities();
}
extension type MediaStreamConstraints._(JSObject _) implements JSObject {
  external factory MediaStreamConstraints({
    JSAny video,
    JSAny audio,
    bool preferCurrentTab,
    String peerIdentity,
  });

  external JSAny get video;
  external set video(JSAny value);
  external JSAny get audio;
  external set audio(JSAny value);
  external bool get preferCurrentTab;
  external set preferCurrentTab(bool value);
  external String get peerIdentity;
  external set peerIdentity(String value);
}
extension type DoubleRange._(JSObject _) implements JSObject {
  external factory DoubleRange({
    num max,
    num min,
  });

  external double get max;
  external set max(num value);
  external double get min;
  external set min(num value);
}
extension type ConstrainDoubleRange._(JSObject _)
    implements DoubleRange, JSObject {
  external factory ConstrainDoubleRange({
    num max,
    num min,
    num exact,
    num ideal,
  });

  external double get exact;
  external set exact(num value);
  external double get ideal;
  external set ideal(num value);
}
extension type ULongRange._(JSObject _) implements JSObject {
  external factory ULongRange({
    int max,
    int min,
  });

  external int get max;
  external set max(int value);
  external int get min;
  external set min(int value);
}
extension type ConstrainULongRange._(JSObject _)
    implements ULongRange, JSObject {
  external factory ConstrainULongRange({
    int max,
    int min,
    int exact,
    int ideal,
  });

  external int get exact;
  external set exact(int value);
  external int get ideal;
  external set ideal(int value);
}
extension type ConstrainBooleanParameters._(JSObject _) implements JSObject {
  external factory ConstrainBooleanParameters({
    bool exact,
    bool ideal,
  });

  external bool get exact;
  external set exact(bool value);
  external bool get ideal;
  external set ideal(bool value);
}
extension type ConstrainDOMStringParameters._(JSObject _) implements JSObject {
  external factory ConstrainDOMStringParameters({
    JSAny exact,
    JSAny ideal,
  });

  external JSAny get exact;
  external set exact(JSAny value);
  external JSAny get ideal;
  external set ideal(JSAny value);
}
