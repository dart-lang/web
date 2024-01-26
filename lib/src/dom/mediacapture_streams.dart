// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'audio_output.dart';
import 'capture_handle_identity.dart';
import 'dom.dart';
import 'html.dart';
import 'image_capture.dart';
import 'mediacapture_handle_actions.dart';
import 'mediacapture_viewport.dart';
import 'permissions.dart';
import 'screen_capture.dart';
import 'webidl.dart';

typedef ConstrainULong = JSAny;
typedef ConstrainDouble = JSAny;
typedef ConstrainBoolean = JSAny;
typedef ConstrainDOMString = JSAny;
typedef NavigatorUserMediaSuccessCallback = JSFunction;
typedef NavigatorUserMediaErrorCallback = JSFunction;
typedef MediaStreamTrackState = String;
typedef VideoFacingModeEnum = String;
typedef VideoResizeModeEnum = String;
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
extension type MediaStream._(JSObject _) implements EventTarget, JSObject {
  external factory MediaStream([JSObject streamOrTracks]);

  /// The **`getAudioTracks()`** method of the
  /// [MediaStream] interface returns a sequence that represents all the
  /// [MediaStreamTrack] objects in this
  /// stream's
  /// [`track set`](https://www.w3.org/TR/mediacapture-streams/#track-set) where
  /// [MediaStreamTrack.kind]
  /// is `audio`.
  external JSArray getAudioTracks();

  /// The **`getVideoTracks()`** method of the
  /// [MediaStream] interface returns a sequence of
  /// [MediaStreamTrack] objects representing the video tracks in this stream.
  external JSArray getVideoTracks();

  /// The **`getTracks()`** method of the
  /// [MediaStream] interface returns a sequence that represents all the
  /// [MediaStreamTrack] objects in this
  /// stream's
  /// [`track set`](https://www.w3.org/TR/mediacapture-streams/#track-set),
  /// regardless of [MediaStreamTrack.kind].
  external JSArray getTracks();

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
  external String get id;
  external bool get active;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
}

/// The **`MediaStreamTrack`** interface of the [Media Capture and Streams API]
/// represents a single media track within a stream; typically, these are audio
/// or video tracks, but other track types may exist as well.
///
/// Some user agents subclass this interface to provide more precise information
/// or functionality, such as [CanvasCaptureMediaStreamTrack].
extension type MediaStreamTrack._(JSObject _) implements EventTarget, JSObject {
  external CaptureHandle? getCaptureHandle();
  external JSArray getSupportedCaptureActions();
  external JSPromise sendCaptureAction(CaptureAction action);

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
  /// settings](/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints)
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
  /// settings](/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints)
  /// for details on how to work with constrainable properties.
  external MediaTrackConstraints getConstraints();

  /// The **`getSettings()`** method of the
  /// [MediaStreamTrack] interface returns a [MediaTrackSettings]
  /// object containing the current values of each of the constrainable
  /// properties for the
  /// current `MediaStreamTrack`.
  ///
  /// See [Capabilities, constraints, and
  /// settings](/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints)
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
  /// settings](/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints)
  /// for more information on how to apply your preferred constraints.
  external JSPromise applyConstraints([MediaTrackConstraints constraints]);
  external set oncapturehandlechange(EventHandler value);
  external EventHandler get oncapturehandlechange;
  external String get kind;
  external String get id;
  external String get label;
  external set enabled(bool value);
  external bool get enabled;
  external bool get muted;
  external set onmute(EventHandler value);
  external EventHandler get onmute;
  external set onunmute(EventHandler value);
  external EventHandler get onunmute;
  external MediaStreamTrackState get readyState;
  external set onended(EventHandler value);
  external EventHandler get onended;
  external set contentHint(String value);
  external String get contentHint;
  external bool get isolated;
  external set onisolationchange(EventHandler value);
  external EventHandler get onisolationchange;
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
/// settings](/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints).
extension type MediaTrackSupportedConstraints._(JSObject _)
    implements JSObject {
  external factory MediaTrackSupportedConstraints({
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
    bool displaySurface,
    bool logicalSurface,
    bool cursor,
    bool restrictOwnAudio,
    bool suppressLocalAudioPlayback,
  });

  external set whiteBalanceMode(bool value);
  external bool get whiteBalanceMode;
  external set exposureMode(bool value);
  external bool get exposureMode;
  external set focusMode(bool value);
  external bool get focusMode;
  external set pointsOfInterest(bool value);
  external bool get pointsOfInterest;
  external set exposureCompensation(bool value);
  external bool get exposureCompensation;
  external set exposureTime(bool value);
  external bool get exposureTime;
  external set colorTemperature(bool value);
  external bool get colorTemperature;
  external set iso(bool value);
  external bool get iso;
  external set brightness(bool value);
  external bool get brightness;
  external set contrast(bool value);
  external bool get contrast;
  external set pan(bool value);
  external bool get pan;
  external set saturation(bool value);
  external bool get saturation;
  external set sharpness(bool value);
  external bool get sharpness;
  external set focusDistance(bool value);
  external bool get focusDistance;
  external set tilt(bool value);
  external bool get tilt;
  external set zoom(bool value);
  external bool get zoom;
  external set torch(bool value);
  external bool get torch;
  external set width(bool value);
  external bool get width;
  external set height(bool value);
  external bool get height;
  external set aspectRatio(bool value);
  external bool get aspectRatio;
  external set frameRate(bool value);
  external bool get frameRate;
  external set facingMode(bool value);
  external bool get facingMode;
  external set resizeMode(bool value);
  external bool get resizeMode;
  external set sampleRate(bool value);
  external bool get sampleRate;
  external set sampleSize(bool value);
  external bool get sampleSize;
  external set echoCancellation(bool value);
  external bool get echoCancellation;
  external set autoGainControl(bool value);
  external bool get autoGainControl;
  external set noiseSuppression(bool value);
  external bool get noiseSuppression;
  external set latency(bool value);
  external bool get latency;
  external set channelCount(bool value);
  external bool get channelCount;
  external set deviceId(bool value);
  external bool get deviceId;
  external set groupId(bool value);
  external bool get groupId;
  external set displaySurface(bool value);
  external bool get displaySurface;
  external set logicalSurface(bool value);
  external bool get logicalSurface;
  external set cursor(bool value);
  external bool get cursor;
  external set restrictOwnAudio(bool value);
  external bool get restrictOwnAudio;
  external set suppressLocalAudioPlayback(bool value);
  external bool get suppressLocalAudioPlayback;
}
extension type MediaTrackCapabilities._(JSObject _) implements JSObject {
  external factory MediaTrackCapabilities({
    JSArray whiteBalanceMode,
    JSArray exposureMode,
    JSArray focusMode,
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
    bool torch,
    ULongRange width,
    ULongRange height,
    DoubleRange aspectRatio,
    DoubleRange frameRate,
    JSArray facingMode,
    JSArray resizeMode,
    ULongRange sampleRate,
    ULongRange sampleSize,
    JSArray echoCancellation,
    JSArray autoGainControl,
    JSArray noiseSuppression,
    DoubleRange latency,
    ULongRange channelCount,
    String deviceId,
    String groupId,
    String displaySurface,
    bool logicalSurface,
    JSArray cursor,
  });

  external set whiteBalanceMode(JSArray value);
  external JSArray get whiteBalanceMode;
  external set exposureMode(JSArray value);
  external JSArray get exposureMode;
  external set focusMode(JSArray value);
  external JSArray get focusMode;
  external set exposureCompensation(MediaSettingsRange value);
  external MediaSettingsRange get exposureCompensation;
  external set exposureTime(MediaSettingsRange value);
  external MediaSettingsRange get exposureTime;
  external set colorTemperature(MediaSettingsRange value);
  external MediaSettingsRange get colorTemperature;
  external set iso(MediaSettingsRange value);
  external MediaSettingsRange get iso;
  external set brightness(MediaSettingsRange value);
  external MediaSettingsRange get brightness;
  external set contrast(MediaSettingsRange value);
  external MediaSettingsRange get contrast;
  external set saturation(MediaSettingsRange value);
  external MediaSettingsRange get saturation;
  external set sharpness(MediaSettingsRange value);
  external MediaSettingsRange get sharpness;
  external set focusDistance(MediaSettingsRange value);
  external MediaSettingsRange get focusDistance;
  external set pan(MediaSettingsRange value);
  external MediaSettingsRange get pan;
  external set tilt(MediaSettingsRange value);
  external MediaSettingsRange get tilt;
  external set zoom(MediaSettingsRange value);
  external MediaSettingsRange get zoom;
  external set torch(bool value);
  external bool get torch;
  external set width(ULongRange value);
  external ULongRange get width;
  external set height(ULongRange value);
  external ULongRange get height;
  external set aspectRatio(DoubleRange value);
  external DoubleRange get aspectRatio;
  external set frameRate(DoubleRange value);
  external DoubleRange get frameRate;
  external set facingMode(JSArray value);
  external JSArray get facingMode;
  external set resizeMode(JSArray value);
  external JSArray get resizeMode;
  external set sampleRate(ULongRange value);
  external ULongRange get sampleRate;
  external set sampleSize(ULongRange value);
  external ULongRange get sampleSize;
  external set echoCancellation(JSArray value);
  external JSArray get echoCancellation;
  external set autoGainControl(JSArray value);
  external JSArray get autoGainControl;
  external set noiseSuppression(JSArray value);
  external JSArray get noiseSuppression;
  external set latency(DoubleRange value);
  external DoubleRange get latency;
  external set channelCount(ULongRange value);
  external ULongRange get channelCount;
  external set deviceId(String value);
  external String get deviceId;
  external set groupId(String value);
  external String get groupId;
  external set displaySurface(String value);
  external String get displaySurface;
  external set logicalSurface(bool value);
  external bool get logicalSurface;
  external set cursor(JSArray value);
  external JSArray get cursor;
}

/// The **`MediaTrackConstraints`** dictionary is used to describe a set of
/// capabilities and the value or values each can take on. A constraints
/// dictionary is passed into [MediaStreamTrack.applyConstraints] to allow a
/// script to establish a set of exact (required) values or ranges and/or
/// preferred values or ranges of values for the track, and the most
/// recently-requested set of custom constraints can be retrieved by calling
/// [MediaStreamTrack.getConstraints].
extension type MediaTrackConstraints._(JSObject _)
    implements MediaTrackConstraintSet, JSObject {
  external factory MediaTrackConstraints({JSArray advanced});

  external set advanced(JSArray value);
  external JSArray get advanced;
}
extension type MediaTrackConstraintSet._(JSObject _) implements JSObject {
  external factory MediaTrackConstraintSet({
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
    ConstrainDOMString displaySurface,
    ConstrainBoolean logicalSurface,
    ConstrainDOMString cursor,
    ConstrainBoolean restrictOwnAudio,
    ConstrainBoolean suppressLocalAudioPlayback,
  });

  external set whiteBalanceMode(ConstrainDOMString value);
  external ConstrainDOMString get whiteBalanceMode;
  external set exposureMode(ConstrainDOMString value);
  external ConstrainDOMString get exposureMode;
  external set focusMode(ConstrainDOMString value);
  external ConstrainDOMString get focusMode;
  external set pointsOfInterest(ConstrainPoint2D value);
  external ConstrainPoint2D get pointsOfInterest;
  external set exposureCompensation(ConstrainDouble value);
  external ConstrainDouble get exposureCompensation;
  external set exposureTime(ConstrainDouble value);
  external ConstrainDouble get exposureTime;
  external set colorTemperature(ConstrainDouble value);
  external ConstrainDouble get colorTemperature;
  external set iso(ConstrainDouble value);
  external ConstrainDouble get iso;
  external set brightness(ConstrainDouble value);
  external ConstrainDouble get brightness;
  external set contrast(ConstrainDouble value);
  external ConstrainDouble get contrast;
  external set saturation(ConstrainDouble value);
  external ConstrainDouble get saturation;
  external set sharpness(ConstrainDouble value);
  external ConstrainDouble get sharpness;
  external set focusDistance(ConstrainDouble value);
  external ConstrainDouble get focusDistance;
  external set pan(JSAny value);
  external JSAny get pan;
  external set tilt(JSAny value);
  external JSAny get tilt;
  external set zoom(JSAny value);
  external JSAny get zoom;
  external set torch(ConstrainBoolean value);
  external ConstrainBoolean get torch;
  external set width(ConstrainULong value);
  external ConstrainULong get width;
  external set height(ConstrainULong value);
  external ConstrainULong get height;
  external set aspectRatio(ConstrainDouble value);
  external ConstrainDouble get aspectRatio;
  external set frameRate(ConstrainDouble value);
  external ConstrainDouble get frameRate;
  external set facingMode(ConstrainDOMString value);
  external ConstrainDOMString get facingMode;
  external set resizeMode(ConstrainDOMString value);
  external ConstrainDOMString get resizeMode;
  external set sampleRate(ConstrainULong value);
  external ConstrainULong get sampleRate;
  external set sampleSize(ConstrainULong value);
  external ConstrainULong get sampleSize;
  external set echoCancellation(ConstrainBoolean value);
  external ConstrainBoolean get echoCancellation;
  external set autoGainControl(ConstrainBoolean value);
  external ConstrainBoolean get autoGainControl;
  external set noiseSuppression(ConstrainBoolean value);
  external ConstrainBoolean get noiseSuppression;
  external set latency(ConstrainDouble value);
  external ConstrainDouble get latency;
  external set channelCount(ConstrainULong value);
  external ConstrainULong get channelCount;
  external set deviceId(ConstrainDOMString value);
  external ConstrainDOMString get deviceId;
  external set groupId(ConstrainDOMString value);
  external ConstrainDOMString get groupId;
  external set displaySurface(ConstrainDOMString value);
  external ConstrainDOMString get displaySurface;
  external set logicalSurface(ConstrainBoolean value);
  external ConstrainBoolean get logicalSurface;
  external set cursor(ConstrainDOMString value);
  external ConstrainDOMString get cursor;
  external set restrictOwnAudio(ConstrainBoolean value);
  external ConstrainBoolean get restrictOwnAudio;
  external set suppressLocalAudioPlayback(ConstrainBoolean value);
  external ConstrainBoolean get suppressLocalAudioPlayback;
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
/// settings](/en-US/docs/Web/API/Media_Capture_and_Streams_API/Constraints).
extension type MediaTrackSettings._(JSObject _) implements JSObject {
  external factory MediaTrackSettings({
    String whiteBalanceMode,
    String exposureMode,
    String focusMode,
    JSArray pointsOfInterest,
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
    String displaySurface,
    bool logicalSurface,
    String cursor,
    bool restrictOwnAudio,
    bool suppressLocalAudioPlayback,
  });

  external set whiteBalanceMode(String value);
  external String get whiteBalanceMode;
  external set exposureMode(String value);
  external String get exposureMode;
  external set focusMode(String value);
  external String get focusMode;
  external set pointsOfInterest(JSArray value);
  external JSArray get pointsOfInterest;
  external set exposureCompensation(num value);
  external num get exposureCompensation;
  external set exposureTime(num value);
  external num get exposureTime;
  external set colorTemperature(num value);
  external num get colorTemperature;
  external set iso(num value);
  external num get iso;
  external set brightness(num value);
  external num get brightness;
  external set contrast(num value);
  external num get contrast;
  external set saturation(num value);
  external num get saturation;
  external set sharpness(num value);
  external num get sharpness;
  external set focusDistance(num value);
  external num get focusDistance;
  external set pan(num value);
  external num get pan;
  external set tilt(num value);
  external num get tilt;
  external set zoom(num value);
  external num get zoom;
  external set torch(bool value);
  external bool get torch;
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
  external set aspectRatio(num value);
  external num get aspectRatio;
  external set frameRate(num value);
  external num get frameRate;
  external set facingMode(String value);
  external String get facingMode;
  external set resizeMode(String value);
  external String get resizeMode;
  external set sampleRate(int value);
  external int get sampleRate;
  external set sampleSize(int value);
  external int get sampleSize;
  external set echoCancellation(bool value);
  external bool get echoCancellation;
  external set autoGainControl(bool value);
  external bool get autoGainControl;
  external set noiseSuppression(bool value);
  external bool get noiseSuppression;
  external set latency(num value);
  external num get latency;
  external set channelCount(int value);
  external int get channelCount;
  external set deviceId(String value);
  external String get deviceId;
  external set groupId(String value);
  external String get groupId;
  external set displaySurface(String value);
  external String get displaySurface;
  external set logicalSurface(bool value);
  external bool get logicalSurface;
  external set cursor(String value);
  external String get cursor;
  external set restrictOwnAudio(bool value);
  external bool get restrictOwnAudio;
  external set suppressLocalAudioPlayback(bool value);
  external bool get suppressLocalAudioPlayback;
}

/// The **`MediaStreamTrackEvent`** interface of the
/// [Media Capture and Streams API] represents events which indicate that a
/// [MediaStream] has had tracks added to or removed from the stream through
/// calls to
/// [Media Capture and Streams API](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API)
/// methods. These events are sent to the stream when these changes occur.
///
/// The events based on this interface are [MediaStream/addtrack_event] and
/// [MediaStream/removetrack_event].
extension type MediaStreamTrackEvent._(JSObject _) implements Event, JSObject {
  external factory MediaStreamTrackEvent(
    String type,
    MediaStreamTrackEventInit eventInitDict,
  );

  external MediaStreamTrack get track;
}
extension type MediaStreamTrackEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory MediaStreamTrackEventInit({required MediaStreamTrack track});

  external set track(MediaStreamTrack value);
  external MediaStreamTrack get track;
}

/// The **`OverconstrainedError`** interface of the
/// [Media Capture and Streams API](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API)
/// indicates that the set of desired capabilities for the current
/// [MediaStreamTrack] cannot currently be met. When this event is thrown on a
/// MediaStreamTrack, it is muted until either the current constraints can be
/// established or until satisfiable constraints are applied.
extension type OverconstrainedError._(JSObject _)
    implements DOMException, JSObject {
  external factory OverconstrainedError(
    String constraint, [
    String message,
  ]);

  external String get constraint;
}

/// The **`MediaDevices`** interface provides access to connected media input
/// devices like cameras and microphones, as well as screen sharing. In essence,
/// it lets you obtain access to any hardware source of media data.
extension type MediaDevices._(JSObject _) implements EventTarget, JSObject {
  /// The **`MediaDevices.selectAudioOutput()`** method of the
  /// [Audio Output Devices API](https://developer.mozilla.org/en-US/docs/Web/API/Audio_Output_Devices_API)
  /// prompts the user to select an audio output device, such as a speaker or
  /// headset. If the user selects a device, the method grants user permission
  /// to use the selected device as an audio output sink.
  ///
  /// Following selection, if the device is available it can be enumerated using
  /// [MediaDevices.enumerateDevices] and set as the audio output sink using
  /// [HTMLMediaElement.setSinkId].
  ///
  /// On success, the returned `Promise` is resolved with a [MediaDeviceInfo]
  /// describing the selected device.
  external JSPromise selectAudioOutput([AudioOutputOptions options]);
  external void setCaptureHandleConfig([CaptureHandleConfig config]);
  external void setSupportedCaptureActions(JSArray actions);

  /// The [MediaDevices] method **`enumerateDevices()`** requests a list of the
  /// currently available media input and output devices, such as microphones,
  /// cameras, headsets, and so forth.
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
  external JSPromise enumerateDevices();

  /// The
  /// **`getSupportedConstraints()`**
  /// method of the [MediaDevices] interface returns an object based on the
  /// [MediaTrackSupportedConstraints] dictionary, whose member fields each
  /// specify one of the constrainable properties the  understands.
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
  external JSPromise getUserMedia([MediaStreamConstraints constraints]);
  external JSPromise getViewportMedia(
      [ViewportMediaStreamConstraints constraints]);

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
  external JSPromise getDisplayMedia([DisplayMediaStreamOptions options]);
  external set oncaptureaction(EventHandler value);
  external EventHandler get oncaptureaction;
  external set ondevicechange(EventHandler value);
  external EventHandler get ondevicechange;
}

/// The **`MediaDeviceInfo`** interface of the [Media Capture and Streams API]
/// contains information that describes a single media input or output device.
///
/// The list of devices obtained by calling [MediaDevices.enumerateDevices] is
/// an array of `MediaDeviceInfo` objects, one per media device.
extension type MediaDeviceInfo._(JSObject _) implements JSObject {
  /// The **`toJSON()`** method of the [MediaDeviceInfo] interface is a ; it
  /// returns a JSON representation of the [MediaDeviceInfo] object.
  external JSObject toJSON();
  external String get deviceId;
  external MediaDeviceKind get kind;
  external String get label;
  external String get groupId;
}

/// The **`InputDeviceInfo`** interface of the [Media Capture and Streams API]
/// gives access to the capabilities of the input device that it represents.
///
/// `InputDeviceInfo` objects are returned by [MediaDevices.enumerateDevices] if
/// the returned device is an audio or video input device.
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

  external set video(JSAny value);
  external JSAny get video;
  external set audio(JSAny value);
  external JSAny get audio;
  external set preferCurrentTab(bool value);
  external bool get preferCurrentTab;
  external set peerIdentity(String value);
  external String get peerIdentity;
}
extension type DoubleRange._(JSObject _) implements JSObject {
  external factory DoubleRange({
    num max,
    num min,
  });

  external set max(num value);
  external num get max;
  external set min(num value);
  external num get min;
}
extension type ConstrainDoubleRange._(JSObject _)
    implements DoubleRange, JSObject {
  external factory ConstrainDoubleRange({
    num exact,
    num ideal,
  });

  external set exact(num value);
  external num get exact;
  external set ideal(num value);
  external num get ideal;
}
extension type ULongRange._(JSObject _) implements JSObject {
  external factory ULongRange({
    int max,
    int min,
  });

  external set max(int value);
  external int get max;
  external set min(int value);
  external int get min;
}
extension type ConstrainULongRange._(JSObject _)
    implements ULongRange, JSObject {
  external factory ConstrainULongRange({
    int exact,
    int ideal,
  });

  external set exact(int value);
  external int get exact;
  external set ideal(int value);
  external int get ideal;
}
extension type ConstrainBooleanParameters._(JSObject _) implements JSObject {
  external factory ConstrainBooleanParameters({
    bool exact,
    bool ideal,
  });

  external set exact(bool value);
  external bool get exact;
  external set ideal(bool value);
  external bool get ideal;
}
extension type ConstrainDOMStringParameters._(JSObject _) implements JSObject {
  external factory ConstrainDOMStringParameters({
    JSAny exact,
    JSAny ideal,
  });

  external set exact(JSAny value);
  external JSAny get exact;
  external set ideal(JSAny value);
  external JSAny get ideal;
}
extension type CameraDevicePermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory CameraDevicePermissionDescriptor({bool panTiltZoom});

  external set panTiltZoom(bool value);
  external bool get panTiltZoom;
}
