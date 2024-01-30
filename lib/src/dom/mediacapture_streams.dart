// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
extension type MediaStream._(JSObject _) implements EventTarget, JSObject {
  external factory MediaStream([JSObject streamOrTracks]);

  external JSArray<MediaStreamTrack> getAudioTracks();
  external JSArray<MediaStreamTrack> getVideoTracks();
  external JSArray<MediaStreamTrack> getTracks();
  external MediaStreamTrack? getTrackById(String trackId);
  external void addTrack(MediaStreamTrack track);
  external void removeTrack(MediaStreamTrack track);
  external MediaStream clone();
  external String get id;
  external bool get active;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
}
extension type MediaStreamTrack._(JSObject _) implements EventTarget, JSObject {
  external CaptureHandle? getCaptureHandle();
  external JSArray<JSString> getSupportedCaptureActions();
  external JSPromise<JSAny?> sendCaptureAction(CaptureAction action);
  external MediaStreamTrack clone();
  external void stop();
  external MediaTrackCapabilities getCapabilities();
  external MediaTrackConstraints getConstraints();
  external MediaTrackSettings getSettings();
  external JSPromise<JSAny?> applyConstraints(
      [MediaTrackConstraints constraints]);
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
    bool torch,
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
    String displaySurface,
    bool logicalSurface,
    JSArray<JSString> cursor,
  });

  external set whiteBalanceMode(JSArray<JSString> value);
  external JSArray<JSString> get whiteBalanceMode;
  external set exposureMode(JSArray<JSString> value);
  external JSArray<JSString> get exposureMode;
  external set focusMode(JSArray<JSString> value);
  external JSArray<JSString> get focusMode;
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
  external set facingMode(JSArray<JSString> value);
  external JSArray<JSString> get facingMode;
  external set resizeMode(JSArray<JSString> value);
  external JSArray<JSString> get resizeMode;
  external set sampleRate(ULongRange value);
  external ULongRange get sampleRate;
  external set sampleSize(ULongRange value);
  external ULongRange get sampleSize;
  external set echoCancellation(JSArray<JSBoolean> value);
  external JSArray<JSBoolean> get echoCancellation;
  external set autoGainControl(JSArray<JSBoolean> value);
  external JSArray<JSBoolean> get autoGainControl;
  external set noiseSuppression(JSArray<JSBoolean> value);
  external JSArray<JSBoolean> get noiseSuppression;
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
  external set cursor(JSArray<JSString> value);
  external JSArray<JSString> get cursor;
}
extension type MediaTrackConstraints._(JSObject _)
    implements MediaTrackConstraintSet, JSObject {
  external factory MediaTrackConstraints(
      {JSArray<MediaTrackConstraintSet> advanced});

  external set advanced(JSArray<MediaTrackConstraintSet> value);
  external JSArray<MediaTrackConstraintSet> get advanced;
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
extension type MediaTrackSettings._(JSObject _) implements JSObject {
  external factory MediaTrackSettings({
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
  external set pointsOfInterest(JSArray<Point2D> value);
  external JSArray<Point2D> get pointsOfInterest;
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
extension type OverconstrainedError._(JSObject _)
    implements DOMException, JSObject {
  external factory OverconstrainedError(
    String constraint, [
    String message,
  ]);

  external String get constraint;
}
extension type MediaDevices._(JSObject _) implements EventTarget, JSObject {
  external JSPromise<MediaDeviceInfo> selectAudioOutput(
      [AudioOutputOptions options]);
  external void setCaptureHandleConfig([CaptureHandleConfig config]);
  external void setSupportedCaptureActions(JSArray<JSString> actions);
  external JSPromise<JSArray<MediaDeviceInfo>> enumerateDevices();
  external MediaTrackSupportedConstraints getSupportedConstraints();
  external JSPromise<MediaStream> getUserMedia(
      [MediaStreamConstraints constraints]);
  external JSPromise<MediaStream> getViewportMedia(
      [ViewportMediaStreamConstraints constraints]);
  external JSPromise<MediaStream> getDisplayMedia(
      [DisplayMediaStreamOptions options]);
  external set oncaptureaction(EventHandler value);
  external EventHandler get oncaptureaction;
  external set ondevicechange(EventHandler value);
  external EventHandler get ondevicechange;
}
extension type MediaDeviceInfo._(JSObject _) implements JSObject {
  external JSObject toJSON();
  external String get deviceId;
  external MediaDeviceKind get kind;
  external String get label;
  external String get groupId;
}
extension type InputDeviceInfo._(JSObject _)
    implements MediaDeviceInfo, JSObject {
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
