// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'permissions.dart';
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
  external MediaStreamTrack clone();
  external void stop();
  external MediaTrackCapabilities getCapabilities();
  external MediaTrackConstraints getConstraints();
  external MediaTrackSettings getSettings();
  external JSPromise<JSAny?> applyConstraints(
      [MediaTrackConstraints constraints]);
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
}
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
  });

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
  });

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
  });

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
}
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
  });

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
  external JSPromise<JSArray<MediaDeviceInfo>> enumerateDevices();
  external MediaTrackSupportedConstraints getSupportedConstraints();
  external JSPromise<MediaStream> getUserMedia(
      [MediaStreamConstraints constraints]);
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
  });

  external set video(JSAny value);
  external JSAny get video;
  external set audio(JSAny value);
  external JSAny get audio;
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
