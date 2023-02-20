// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'encrypted_media.dart';

typedef MediaDecodingType = JSString;
typedef MediaEncodingType = JSString;
typedef HdrMetadataType = JSString;
typedef ColorGamut = JSString;
typedef TransferFunction = JSString;

@JS()
@staticInterop
@anonymous
class MediaConfiguration {
  external factory MediaConfiguration({
    VideoConfiguration video,
    AudioConfiguration audio,
  });
}

extension MediaConfigurationExtension on MediaConfiguration {
  external set video(VideoConfiguration value);
  external VideoConfiguration get video;
  external set audio(AudioConfiguration value);
  external AudioConfiguration get audio;
}

@JS()
@staticInterop
@anonymous
class MediaDecodingConfiguration extends MediaConfiguration {
  external factory MediaDecodingConfiguration({
    required MediaDecodingType type,
    MediaCapabilitiesKeySystemConfiguration keySystemConfiguration,
  });
}

extension MediaDecodingConfigurationExtension on MediaDecodingConfiguration {
  external set type(MediaDecodingType value);
  external MediaDecodingType get type;
  external set keySystemConfiguration(
      MediaCapabilitiesKeySystemConfiguration value);
  external MediaCapabilitiesKeySystemConfiguration get keySystemConfiguration;
}

@JS()
@staticInterop
@anonymous
class MediaEncodingConfiguration extends MediaConfiguration {
  external factory MediaEncodingConfiguration(
      {required MediaEncodingType type});
}

extension MediaEncodingConfigurationExtension on MediaEncodingConfiguration {
  external set type(MediaEncodingType value);
  external MediaEncodingType get type;
}

@JS()
@staticInterop
@anonymous
class VideoConfiguration {
  external factory VideoConfiguration({
    required JSString contentType,
    required JSNumber width,
    required JSNumber height,
    required JSNumber bitrate,
    required JSNumber framerate,
    JSBoolean hasAlphaChannel,
    HdrMetadataType hdrMetadataType,
    ColorGamut colorGamut,
    TransferFunction transferFunction,
    JSString scalabilityMode,
    JSBoolean spatialScalability,
  });
}

extension VideoConfigurationExtension on VideoConfiguration {
  external set contentType(JSString value);
  external JSString get contentType;
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
  external set bitrate(JSNumber value);
  external JSNumber get bitrate;
  external set framerate(JSNumber value);
  external JSNumber get framerate;
  external set hasAlphaChannel(JSBoolean value);
  external JSBoolean get hasAlphaChannel;
  external set hdrMetadataType(HdrMetadataType value);
  external HdrMetadataType get hdrMetadataType;
  external set colorGamut(ColorGamut value);
  external ColorGamut get colorGamut;
  external set transferFunction(TransferFunction value);
  external TransferFunction get transferFunction;
  external set scalabilityMode(JSString value);
  external JSString get scalabilityMode;
  external set spatialScalability(JSBoolean value);
  external JSBoolean get spatialScalability;
}

@JS()
@staticInterop
@anonymous
class AudioConfiguration {
  external factory AudioConfiguration({
    required JSString contentType,
    JSString channels,
    JSNumber bitrate,
    JSNumber samplerate,
    JSBoolean spatialRendering,
  });
}

extension AudioConfigurationExtension on AudioConfiguration {
  external set contentType(JSString value);
  external JSString get contentType;
  external set channels(JSString value);
  external JSString get channels;
  external set bitrate(JSNumber value);
  external JSNumber get bitrate;
  external set samplerate(JSNumber value);
  external JSNumber get samplerate;
  external set spatialRendering(JSBoolean value);
  external JSBoolean get spatialRendering;
}

@JS()
@staticInterop
@anonymous
class MediaCapabilitiesKeySystemConfiguration {
  external factory MediaCapabilitiesKeySystemConfiguration({
    required JSString keySystem,
    JSString initDataType = '',
    MediaKeysRequirement distinctiveIdentifier = 'optional',
    MediaKeysRequirement persistentState = 'optional',
    JSArray sessionTypes,
    KeySystemTrackConfiguration audio,
    KeySystemTrackConfiguration video,
  });
}

extension MediaCapabilitiesKeySystemConfigurationExtension
    on MediaCapabilitiesKeySystemConfiguration {
  external set keySystem(JSString value);
  external JSString get keySystem;
  external set initDataType(JSString value);
  external JSString get initDataType;
  external set distinctiveIdentifier(MediaKeysRequirement value);
  external MediaKeysRequirement get distinctiveIdentifier;
  external set persistentState(MediaKeysRequirement value);
  external MediaKeysRequirement get persistentState;
  external set sessionTypes(JSArray value);
  external JSArray get sessionTypes;
  external set audio(KeySystemTrackConfiguration value);
  external KeySystemTrackConfiguration get audio;
  external set video(KeySystemTrackConfiguration value);
  external KeySystemTrackConfiguration get video;
}

@JS()
@staticInterop
@anonymous
class KeySystemTrackConfiguration {
  external factory KeySystemTrackConfiguration({
    JSString robustness = '',
    JSString? encryptionScheme,
  });
}

extension KeySystemTrackConfigurationExtension on KeySystemTrackConfiguration {
  external set robustness(JSString value);
  external JSString get robustness;
  external set encryptionScheme(JSString? value);
  external JSString? get encryptionScheme;
}

@JS()
@staticInterop
@anonymous
class MediaCapabilitiesInfo {
  external factory MediaCapabilitiesInfo({
    required JSBoolean supported,
    required JSBoolean smooth,
    required JSBoolean powerEfficient,
  });
}

extension MediaCapabilitiesInfoExtension on MediaCapabilitiesInfo {
  external set supported(JSBoolean value);
  external JSBoolean get supported;
  external set smooth(JSBoolean value);
  external JSBoolean get smooth;
  external set powerEfficient(JSBoolean value);
  external JSBoolean get powerEfficient;
}

@JS()
@staticInterop
@anonymous
class MediaCapabilitiesDecodingInfo extends MediaCapabilitiesInfo {
  external factory MediaCapabilitiesDecodingInfo({
    required MediaKeySystemAccess keySystemAccess,
    MediaDecodingConfiguration configuration,
  });
}

extension MediaCapabilitiesDecodingInfoExtension
    on MediaCapabilitiesDecodingInfo {
  external set keySystemAccess(MediaKeySystemAccess value);
  external MediaKeySystemAccess get keySystemAccess;
  external set configuration(MediaDecodingConfiguration value);
  external MediaDecodingConfiguration get configuration;
}

@JS()
@staticInterop
@anonymous
class MediaCapabilitiesEncodingInfo extends MediaCapabilitiesInfo {
  external factory MediaCapabilitiesEncodingInfo(
      {MediaEncodingConfiguration configuration});
}

extension MediaCapabilitiesEncodingInfoExtension
    on MediaCapabilitiesEncodingInfo {
  external set configuration(MediaEncodingConfiguration value);
  external MediaEncodingConfiguration get configuration;
}

@JS('MediaCapabilities')
@staticInterop
class MediaCapabilities {
  external factory MediaCapabilities();
}

extension MediaCapabilitiesExtension on MediaCapabilities {
  external JSPromise decodingInfo(MediaDecodingConfiguration configuration);
  external JSPromise encodingInfo(MediaEncodingConfiguration configuration);
}
