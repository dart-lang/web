// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/audio_output.dart';
import 'package:web/src/dom/capture_handle_identity.dart';
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/mediacapture_handle_actions.dart';
import 'package:web/src/dom/mediacapture_viewport.dart';
import 'package:web/src/dom/permissions.dart';
import 'package:web/src/dom/screen_capture.dart';
import 'package:web/src/dom/webidl.dart';

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

@JS('MediaTrackSupportedConstraints')
@staticInterop
class MediaTrackSupportedConstraints {
  external factory MediaTrackSupportedConstraints();
}

extension MediaTrackSupportedConstraintsExtension
    on MediaTrackSupportedConstraints {}

@JS('MediaTrackCapabilities')
@staticInterop
class MediaTrackCapabilities {
  external factory MediaTrackCapabilities();
}

extension MediaTrackCapabilitiesExtension on MediaTrackCapabilities {}

@JS('MediaTrackConstraints')
@staticInterop
class MediaTrackConstraints extends MediaTrackConstraintSet {
  external factory MediaTrackConstraints();
}

extension MediaTrackConstraintsExtension on MediaTrackConstraints {}

@JS('MediaTrackConstraintSet')
@staticInterop
class MediaTrackConstraintSet {
  external factory MediaTrackConstraintSet();
}

extension MediaTrackConstraintSetExtension on MediaTrackConstraintSet {}

@JS('MediaTrackSettings')
@staticInterop
class MediaTrackSettings {
  external factory MediaTrackSettings();
}

extension MediaTrackSettingsExtension on MediaTrackSettings {}

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

@JS('MediaStreamTrackEventInit')
@staticInterop
class MediaStreamTrackEventInit extends EventInit {
  external factory MediaStreamTrackEventInit();
}

extension MediaStreamTrackEventInitExtension on MediaStreamTrackEventInit {}

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

@JS('MediaStreamConstraints')
@staticInterop
class MediaStreamConstraints {
  external factory MediaStreamConstraints();
}

extension MediaStreamConstraintsExtension on MediaStreamConstraints {}

@JS('DoubleRange')
@staticInterop
class DoubleRange {
  external factory DoubleRange();
}

extension DoubleRangeExtension on DoubleRange {}

@JS('ConstrainDoubleRange')
@staticInterop
class ConstrainDoubleRange extends DoubleRange {
  external factory ConstrainDoubleRange();
}

extension ConstrainDoubleRangeExtension on ConstrainDoubleRange {}

@JS('ULongRange')
@staticInterop
class ULongRange {
  external factory ULongRange();
}

extension ULongRangeExtension on ULongRange {}

@JS('ConstrainULongRange')
@staticInterop
class ConstrainULongRange extends ULongRange {
  external factory ConstrainULongRange();
}

extension ConstrainULongRangeExtension on ConstrainULongRange {}

@JS('ConstrainBooleanParameters')
@staticInterop
class ConstrainBooleanParameters {
  external factory ConstrainBooleanParameters();
}

extension ConstrainBooleanParametersExtension on ConstrainBooleanParameters {}

@JS('ConstrainDOMStringParameters')
@staticInterop
class ConstrainDOMStringParameters {
  external factory ConstrainDOMStringParameters();
}

extension ConstrainDOMStringParametersExtension
    on ConstrainDOMStringParameters {}

@JS('DevicePermissionDescriptor')
@staticInterop
class DevicePermissionDescriptor extends PermissionDescriptor {
  external factory DevicePermissionDescriptor();
}

extension DevicePermissionDescriptorExtension on DevicePermissionDescriptor {}

@JS('CameraDevicePermissionDescriptor')
@staticInterop
class CameraDevicePermissionDescriptor extends DevicePermissionDescriptor {
  external factory CameraDevicePermissionDescriptor();
}

extension CameraDevicePermissionDescriptorExtension
    on CameraDevicePermissionDescriptor {}
