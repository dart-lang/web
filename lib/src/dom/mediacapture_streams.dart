// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

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
typedef MediaStreamTrackState = JSString;
typedef VideoFacingModeEnum = JSString;
typedef VideoResizeModeEnum = JSString;
typedef MediaDeviceKind = JSString;

@JS('MediaStream')
@staticInterop
class MediaStream extends EventTarget {
  external factory MediaStream.a0();

  external factory MediaStream.a1(MediaStream stream);

  external factory MediaStream.a2(JSArray tracks);
}

extension MediaStreamExtension on MediaStream {
  external JSString get id;
  external JSArray getAudioTracks();
  external JSArray getVideoTracks();
  external JSArray getTracks();
  external MediaStreamTrack? getTrackById(JSString trackId);
  external JSVoid addTrack(MediaStreamTrack track);
  external JSVoid removeTrack(MediaStreamTrack track);
  external MediaStream clone();
  external JSBoolean get active;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
}

@JS('MediaStreamTrack')
@staticInterop
class MediaStreamTrack extends EventTarget {
  external factory MediaStreamTrack();
}

extension MediaStreamTrackExtension on MediaStreamTrack {
  external CaptureHandle? getCaptureHandle();
  external set oncapturehandlechange(EventHandler value);
  external EventHandler get oncapturehandlechange;
  external JSArray getSupportedCaptureActions();
  external JSPromise sendCaptureAction(CaptureAction action);
  external JSString get kind;
  external JSString get id;
  external JSString get label;
  external set enabled(JSBoolean value);
  external JSBoolean get enabled;
  external JSBoolean get muted;
  external set onmute(EventHandler value);
  external EventHandler get onmute;
  external set onunmute(EventHandler value);
  external EventHandler get onunmute;
  external MediaStreamTrackState get readyState;
  external set onended(EventHandler value);
  external EventHandler get onended;
  external MediaStreamTrack clone();
  external JSVoid stop();
  external MediaTrackCapabilities getCapabilities();
  external MediaTrackConstraints getConstraints();
  external MediaTrackSettings getSettings();
  external JSPromise applyConstraints();
  external JSPromise applyConstraints1(MediaTrackConstraints constraints);
  external set contentHint(JSString value);
  external JSString get contentHint;
  external JSBoolean get isolated;
  external set onisolationchange(EventHandler value);
  external EventHandler get onisolationchange;
}

@JS()
@staticInterop
@anonymous
class MediaTrackSupportedConstraints {
  external factory MediaTrackSupportedConstraints({
    JSBoolean whiteBalanceMode = true,
    JSBoolean exposureMode = true,
    JSBoolean focusMode = true,
    JSBoolean pointsOfInterest = true,
    JSBoolean exposureCompensation = true,
    JSBoolean exposureTime = true,
    JSBoolean colorTemperature = true,
    JSBoolean iso = true,
    JSBoolean brightness = true,
    JSBoolean contrast = true,
    JSBoolean pan = true,
    JSBoolean saturation = true,
    JSBoolean sharpness = true,
    JSBoolean focusDistance = true,
    JSBoolean tilt = true,
    JSBoolean zoom = true,
    JSBoolean torch = true,
    JSBoolean width = true,
    JSBoolean height = true,
    JSBoolean aspectRatio = true,
    JSBoolean frameRate = true,
    JSBoolean facingMode = true,
    JSBoolean resizeMode = true,
    JSBoolean sampleRate = true,
    JSBoolean sampleSize = true,
    JSBoolean echoCancellation = true,
    JSBoolean autoGainControl = true,
    JSBoolean noiseSuppression = true,
    JSBoolean latency = true,
    JSBoolean channelCount = true,
    JSBoolean deviceId = true,
    JSBoolean groupId = true,
    JSBoolean displaySurface = true,
    JSBoolean logicalSurface = true,
    JSBoolean cursor = true,
    JSBoolean restrictOwnAudio = true,
    JSBoolean suppressLocalAudioPlayback = true,
  });
}

extension MediaTrackSupportedConstraintsExtension
    on MediaTrackSupportedConstraints {
  external set whiteBalanceMode(JSBoolean value);
  external JSBoolean get whiteBalanceMode;
  external set exposureMode(JSBoolean value);
  external JSBoolean get exposureMode;
  external set focusMode(JSBoolean value);
  external JSBoolean get focusMode;
  external set pointsOfInterest(JSBoolean value);
  external JSBoolean get pointsOfInterest;
  external set exposureCompensation(JSBoolean value);
  external JSBoolean get exposureCompensation;
  external set exposureTime(JSBoolean value);
  external JSBoolean get exposureTime;
  external set colorTemperature(JSBoolean value);
  external JSBoolean get colorTemperature;
  external set iso(JSBoolean value);
  external JSBoolean get iso;
  external set brightness(JSBoolean value);
  external JSBoolean get brightness;
  external set contrast(JSBoolean value);
  external JSBoolean get contrast;
  external set pan(JSBoolean value);
  external JSBoolean get pan;
  external set saturation(JSBoolean value);
  external JSBoolean get saturation;
  external set sharpness(JSBoolean value);
  external JSBoolean get sharpness;
  external set focusDistance(JSBoolean value);
  external JSBoolean get focusDistance;
  external set tilt(JSBoolean value);
  external JSBoolean get tilt;
  external set zoom(JSBoolean value);
  external JSBoolean get zoom;
  external set torch(JSBoolean value);
  external JSBoolean get torch;
  external set width(JSBoolean value);
  external JSBoolean get width;
  external set height(JSBoolean value);
  external JSBoolean get height;
  external set aspectRatio(JSBoolean value);
  external JSBoolean get aspectRatio;
  external set frameRate(JSBoolean value);
  external JSBoolean get frameRate;
  external set facingMode(JSBoolean value);
  external JSBoolean get facingMode;
  external set resizeMode(JSBoolean value);
  external JSBoolean get resizeMode;
  external set sampleRate(JSBoolean value);
  external JSBoolean get sampleRate;
  external set sampleSize(JSBoolean value);
  external JSBoolean get sampleSize;
  external set echoCancellation(JSBoolean value);
  external JSBoolean get echoCancellation;
  external set autoGainControl(JSBoolean value);
  external JSBoolean get autoGainControl;
  external set noiseSuppression(JSBoolean value);
  external JSBoolean get noiseSuppression;
  external set latency(JSBoolean value);
  external JSBoolean get latency;
  external set channelCount(JSBoolean value);
  external JSBoolean get channelCount;
  external set deviceId(JSBoolean value);
  external JSBoolean get deviceId;
  external set groupId(JSBoolean value);
  external JSBoolean get groupId;
  external set displaySurface(JSBoolean value);
  external JSBoolean get displaySurface;
  external set logicalSurface(JSBoolean value);
  external JSBoolean get logicalSurface;
  external set cursor(JSBoolean value);
  external JSBoolean get cursor;
  external set restrictOwnAudio(JSBoolean value);
  external JSBoolean get restrictOwnAudio;
  external set suppressLocalAudioPlayback(JSBoolean value);
  external JSBoolean get suppressLocalAudioPlayback;
}

@JS()
@staticInterop
@anonymous
class MediaTrackCapabilities {
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
    JSBoolean torch,
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
    JSString deviceId,
    JSString groupId,
    JSString displaySurface,
    JSBoolean logicalSurface,
    JSArray cursor,
  });
}

extension MediaTrackCapabilitiesExtension on MediaTrackCapabilities {
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
  external set torch(JSBoolean value);
  external JSBoolean get torch;
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
  external set deviceId(JSString value);
  external JSString get deviceId;
  external set groupId(JSString value);
  external JSString get groupId;
  external set displaySurface(JSString value);
  external JSString get displaySurface;
  external set logicalSurface(JSBoolean value);
  external JSBoolean get logicalSurface;
  external set cursor(JSArray value);
  external JSArray get cursor;
}

@JS()
@staticInterop
@anonymous
class MediaTrackConstraints extends MediaTrackConstraintSet {
  external factory MediaTrackConstraints({JSArray advanced});
}

extension MediaTrackConstraintsExtension on MediaTrackConstraints {
  external set advanced(JSArray value);
  external JSArray get advanced;
}

@JS()
@staticInterop
@anonymous
class MediaTrackConstraintSet {
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
}

extension MediaTrackConstraintSetExtension on MediaTrackConstraintSet {
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

@JS()
@staticInterop
@anonymous
class MediaTrackSettings {
  external factory MediaTrackSettings({
    JSString whiteBalanceMode,
    JSString exposureMode,
    JSString focusMode,
    JSArray pointsOfInterest,
    JSNumber exposureCompensation,
    JSNumber exposureTime,
    JSNumber colorTemperature,
    JSNumber iso,
    JSNumber brightness,
    JSNumber contrast,
    JSNumber saturation,
    JSNumber sharpness,
    JSNumber focusDistance,
    JSNumber pan,
    JSNumber tilt,
    JSNumber zoom,
    JSBoolean torch,
    JSNumber width,
    JSNumber height,
    JSNumber aspectRatio,
    JSNumber frameRate,
    JSString facingMode,
    JSString resizeMode,
    JSNumber sampleRate,
    JSNumber sampleSize,
    JSBoolean echoCancellation,
    JSBoolean autoGainControl,
    JSBoolean noiseSuppression,
    JSNumber latency,
    JSNumber channelCount,
    JSString deviceId,
    JSString groupId,
    JSString displaySurface,
    JSBoolean logicalSurface,
    JSString cursor,
    JSBoolean restrictOwnAudio,
    JSBoolean suppressLocalAudioPlayback,
  });
}

extension MediaTrackSettingsExtension on MediaTrackSettings {
  external set whiteBalanceMode(JSString value);
  external JSString get whiteBalanceMode;
  external set exposureMode(JSString value);
  external JSString get exposureMode;
  external set focusMode(JSString value);
  external JSString get focusMode;
  external set pointsOfInterest(JSArray value);
  external JSArray get pointsOfInterest;
  external set exposureCompensation(JSNumber value);
  external JSNumber get exposureCompensation;
  external set exposureTime(JSNumber value);
  external JSNumber get exposureTime;
  external set colorTemperature(JSNumber value);
  external JSNumber get colorTemperature;
  external set iso(JSNumber value);
  external JSNumber get iso;
  external set brightness(JSNumber value);
  external JSNumber get brightness;
  external set contrast(JSNumber value);
  external JSNumber get contrast;
  external set saturation(JSNumber value);
  external JSNumber get saturation;
  external set sharpness(JSNumber value);
  external JSNumber get sharpness;
  external set focusDistance(JSNumber value);
  external JSNumber get focusDistance;
  external set pan(JSNumber value);
  external JSNumber get pan;
  external set tilt(JSNumber value);
  external JSNumber get tilt;
  external set zoom(JSNumber value);
  external JSNumber get zoom;
  external set torch(JSBoolean value);
  external JSBoolean get torch;
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
  external set aspectRatio(JSNumber value);
  external JSNumber get aspectRatio;
  external set frameRate(JSNumber value);
  external JSNumber get frameRate;
  external set facingMode(JSString value);
  external JSString get facingMode;
  external set resizeMode(JSString value);
  external JSString get resizeMode;
  external set sampleRate(JSNumber value);
  external JSNumber get sampleRate;
  external set sampleSize(JSNumber value);
  external JSNumber get sampleSize;
  external set echoCancellation(JSBoolean value);
  external JSBoolean get echoCancellation;
  external set autoGainControl(JSBoolean value);
  external JSBoolean get autoGainControl;
  external set noiseSuppression(JSBoolean value);
  external JSBoolean get noiseSuppression;
  external set latency(JSNumber value);
  external JSNumber get latency;
  external set channelCount(JSNumber value);
  external JSNumber get channelCount;
  external set deviceId(JSString value);
  external JSString get deviceId;
  external set groupId(JSString value);
  external JSString get groupId;
  external set displaySurface(JSString value);
  external JSString get displaySurface;
  external set logicalSurface(JSBoolean value);
  external JSBoolean get logicalSurface;
  external set cursor(JSString value);
  external JSString get cursor;
  external set restrictOwnAudio(JSBoolean value);
  external JSBoolean get restrictOwnAudio;
  external set suppressLocalAudioPlayback(JSBoolean value);
  external JSBoolean get suppressLocalAudioPlayback;
}

@JS('MediaStreamTrackEvent')
@staticInterop
class MediaStreamTrackEvent extends Event {
  external factory MediaStreamTrackEvent();

  external factory MediaStreamTrackEvent.a1(
    JSString type,
    MediaStreamTrackEventInit eventInitDict,
  );
}

extension MediaStreamTrackEventExtension on MediaStreamTrackEvent {
  external MediaStreamTrack get track;
}

@JS()
@staticInterop
@anonymous
class MediaStreamTrackEventInit extends EventInit {
  external factory MediaStreamTrackEventInit({required MediaStreamTrack track});
}

extension MediaStreamTrackEventInitExtension on MediaStreamTrackEventInit {
  external set track(MediaStreamTrack value);
  external MediaStreamTrack get track;
}

@JS('OverconstrainedError')
@staticInterop
class OverconstrainedError extends DOMException {
  external factory OverconstrainedError();

  external factory OverconstrainedError.a1(JSString constraint);

  external factory OverconstrainedError.a2(
    JSString constraint,
    JSString message,
  );
}

extension OverconstrainedErrorExtension on OverconstrainedError {
  external JSString get constraint;
}

@JS('MediaDevices')
@staticInterop
class MediaDevices extends EventTarget {
  external factory MediaDevices();
}

extension MediaDevicesExtension on MediaDevices {
  external JSPromise selectAudioOutput();
  external JSPromise selectAudioOutput1(AudioOutputOptions options);
  external JSVoid setCaptureHandleConfig();
  external JSVoid setCaptureHandleConfig1(CaptureHandleConfig config);
  external JSVoid setSupportedCaptureActions(JSArray actions);
  external set oncaptureaction(EventHandler value);
  external EventHandler get oncaptureaction;
  external set ondevicechange(EventHandler value);
  external EventHandler get ondevicechange;
  external JSPromise enumerateDevices();
  external MediaTrackSupportedConstraints getSupportedConstraints();
  external JSPromise getUserMedia();
  external JSPromise getUserMedia1(MediaStreamConstraints constraints);
  external JSPromise getViewportMedia();
  external JSPromise getViewportMedia1(
      ViewportMediaStreamConstraints constraints);
  external JSPromise getDisplayMedia();
  external JSPromise getDisplayMedia1(DisplayMediaStreamOptions options);
}

@JS('MediaDeviceInfo')
@staticInterop
class MediaDeviceInfo {
  external factory MediaDeviceInfo();
}

extension MediaDeviceInfoExtension on MediaDeviceInfo {
  external JSString get deviceId;
  external MediaDeviceKind get kind;
  external JSString get label;
  external JSString get groupId;
  external JSObject toJSON();
}

@JS('InputDeviceInfo')
@staticInterop
class InputDeviceInfo extends MediaDeviceInfo {
  external factory InputDeviceInfo();
}

extension InputDeviceInfoExtension on InputDeviceInfo {
  external MediaTrackCapabilities getCapabilities();
}

@JS()
@staticInterop
@anonymous
class MediaStreamConstraints {
  external factory MediaStreamConstraints({
    JSAny video = false,
    JSAny audio = false,
    JSBoolean preferCurrentTab = false,
    JSString peerIdentity,
  });
}

extension MediaStreamConstraintsExtension on MediaStreamConstraints {
  external set video(JSAny value);
  external JSAny get video;
  external set audio(JSAny value);
  external JSAny get audio;
  external set preferCurrentTab(JSBoolean value);
  external JSBoolean get preferCurrentTab;
  external set peerIdentity(JSString value);
  external JSString get peerIdentity;
}

@JS()
@staticInterop
@anonymous
class DoubleRange {
  external factory DoubleRange({
    JSNumber max,
    JSNumber min,
  });
}

extension DoubleRangeExtension on DoubleRange {
  external set max(JSNumber value);
  external JSNumber get max;
  external set min(JSNumber value);
  external JSNumber get min;
}

@JS()
@staticInterop
@anonymous
class ConstrainDoubleRange extends DoubleRange {
  external factory ConstrainDoubleRange({
    JSNumber exact,
    JSNumber ideal,
  });
}

extension ConstrainDoubleRangeExtension on ConstrainDoubleRange {
  external set exact(JSNumber value);
  external JSNumber get exact;
  external set ideal(JSNumber value);
  external JSNumber get ideal;
}

@JS()
@staticInterop
@anonymous
class ULongRange {
  external factory ULongRange({
    JSNumber max,
    JSNumber min,
  });
}

extension ULongRangeExtension on ULongRange {
  external set max(JSNumber value);
  external JSNumber get max;
  external set min(JSNumber value);
  external JSNumber get min;
}

@JS()
@staticInterop
@anonymous
class ConstrainULongRange extends ULongRange {
  external factory ConstrainULongRange({
    JSNumber exact,
    JSNumber ideal,
  });
}

extension ConstrainULongRangeExtension on ConstrainULongRange {
  external set exact(JSNumber value);
  external JSNumber get exact;
  external set ideal(JSNumber value);
  external JSNumber get ideal;
}

@JS()
@staticInterop
@anonymous
class ConstrainBooleanParameters {
  external factory ConstrainBooleanParameters({
    JSBoolean exact,
    JSBoolean ideal,
  });
}

extension ConstrainBooleanParametersExtension on ConstrainBooleanParameters {
  external set exact(JSBoolean value);
  external JSBoolean get exact;
  external set ideal(JSBoolean value);
  external JSBoolean get ideal;
}

@JS()
@staticInterop
@anonymous
class ConstrainDOMStringParameters {
  external factory ConstrainDOMStringParameters({
    JSAny exact,
    JSAny ideal,
  });
}

extension ConstrainDOMStringParametersExtension
    on ConstrainDOMStringParameters {
  external set exact(JSAny value);
  external JSAny get exact;
  external set ideal(JSAny value);
  external JSAny get ideal;
}

@JS()
@staticInterop
@anonymous
class DevicePermissionDescriptor extends PermissionDescriptor {
  external factory DevicePermissionDescriptor({JSString deviceId});
}

extension DevicePermissionDescriptorExtension on DevicePermissionDescriptor {
  external set deviceId(JSString value);
  external JSString get deviceId;
}

@JS()
@staticInterop
@anonymous
class CameraDevicePermissionDescriptor extends DevicePermissionDescriptor {
  external factory CameraDevicePermissionDescriptor(
      {JSBoolean panTiltZoom = false});
}

extension CameraDevicePermissionDescriptorExtension
    on CameraDevicePermissionDescriptor {
  external set panTiltZoom(JSBoolean value);
  external JSBoolean get panTiltZoom;
}
