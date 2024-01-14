// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'encrypted_media.dart';

typedef MediaDecodingType = String;
typedef MediaEncodingType = String;
typedef HdrMetadataType = String;
typedef ColorGamut = String;
typedef TransferFunction = String;

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
class MediaDecodingConfiguration implements MediaConfiguration {
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
class MediaEncodingConfiguration implements MediaConfiguration {
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
    required String contentType,
    required int width,
    required int height,
    required int bitrate,
    required num framerate,
    bool hasAlphaChannel,
    HdrMetadataType hdrMetadataType,
    ColorGamut colorGamut,
    TransferFunction transferFunction,
    String scalabilityMode,
    bool spatialScalability,
  });
}

extension VideoConfigurationExtension on VideoConfiguration {
  external set contentType(String value);
  external String get contentType;
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
  external set bitrate(int value);
  external int get bitrate;
  external set framerate(num value);
  external num get framerate;
  external set hasAlphaChannel(bool value);
  external bool get hasAlphaChannel;
  external set hdrMetadataType(HdrMetadataType value);
  external HdrMetadataType get hdrMetadataType;
  external set colorGamut(ColorGamut value);
  external ColorGamut get colorGamut;
  external set transferFunction(TransferFunction value);
  external TransferFunction get transferFunction;
  external set scalabilityMode(String value);
  external String get scalabilityMode;
  external set spatialScalability(bool value);
  external bool get spatialScalability;
}

@JS()
@staticInterop
@anonymous
class AudioConfiguration {
  external factory AudioConfiguration({
    required String contentType,
    String channels,
    int bitrate,
    int samplerate,
    bool spatialRendering,
  });
}

extension AudioConfigurationExtension on AudioConfiguration {
  external set contentType(String value);
  external String get contentType;
  external set channels(String value);
  external String get channels;
  external set bitrate(int value);
  external int get bitrate;
  external set samplerate(int value);
  external int get samplerate;
  external set spatialRendering(bool value);
  external bool get spatialRendering;
}

@JS()
@staticInterop
@anonymous
class MediaCapabilitiesKeySystemConfiguration {
  external factory MediaCapabilitiesKeySystemConfiguration({
    required String keySystem,
    String initDataType,
    MediaKeysRequirement distinctiveIdentifier,
    MediaKeysRequirement persistentState,
    JSArray sessionTypes,
    KeySystemTrackConfiguration audio,
    KeySystemTrackConfiguration video,
  });
}

extension MediaCapabilitiesKeySystemConfigurationExtension
    on MediaCapabilitiesKeySystemConfiguration {
  external set keySystem(String value);
  external String get keySystem;
  external set initDataType(String value);
  external String get initDataType;
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
    String robustness,
    String? encryptionScheme,
  });
}

extension KeySystemTrackConfigurationExtension on KeySystemTrackConfiguration {
  external set robustness(String value);
  external String get robustness;
  external set encryptionScheme(String? value);
  external String? get encryptionScheme;
}

@JS()
@staticInterop
@anonymous
class MediaCapabilitiesInfo {
  external factory MediaCapabilitiesInfo({
    required bool supported,
    required bool smooth,
    required bool powerEfficient,
  });
}

extension MediaCapabilitiesInfoExtension on MediaCapabilitiesInfo {
  external set supported(bool value);
  external bool get supported;
  external set smooth(bool value);
  external bool get smooth;
  external set powerEfficient(bool value);
  external bool get powerEfficient;
}

@JS()
@staticInterop
@anonymous
class MediaCapabilitiesDecodingInfo implements MediaCapabilitiesInfo {
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
class MediaCapabilitiesEncodingInfo implements MediaCapabilitiesInfo {
  external factory MediaCapabilitiesEncodingInfo(
      {MediaEncodingConfiguration configuration});
}

extension MediaCapabilitiesEncodingInfoExtension
    on MediaCapabilitiesEncodingInfo {
  external set configuration(MediaEncodingConfiguration value);
  external MediaEncodingConfiguration get configuration;
}

/// The **`MediaCapabilities`** interface of the
/// [Media Capabilities API](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capabilities_API)
/// provides information about the decoding abilities of the device, system and
/// browser. The API can be used to query the browser about the decoding
/// abilities of the device based on codecs, profile, resolution, and bitrates.
/// The information can be used to serve optimal media streams to the user and
/// determine if playback should be smooth and power efficient.
///
/// The information is accessed through the **`mediaCapabilities`** property of
/// the [Navigator] interface.
@JS('MediaCapabilities')
@staticInterop
class MediaCapabilities {}

extension MediaCapabilitiesExtension on MediaCapabilities {
  /// The **`MediaCapabilities.decodingInfo()`** method, part of the
  /// [Media Capabilities API](https://developer.mozilla.org/en-US/docs/Web/API/MediaCapabilities),
  /// returns a promise with the tested media configuration's capabilities info.
  /// This contains the three boolean properties `supported`, `smooth`, and
  /// `powerefficient`, which describe whether decoding the media described
  /// would be supported, smooth, and powerefficient.
  external JSPromise decodingInfo(MediaDecodingConfiguration configuration);

  /// The **`MediaCapabilities.encodingInfo()`** method, part of the
  /// [MediaCapabilities] interface of the
  /// [Media Capabilities API](https://developer.mozilla.org/en-US/docs/Web/API/MediaCapabilities),
  /// returns a promise with the tested media configuration's capabilities
  /// information.
  /// This contains the three boolean properties `supported`, `smooth`, and
  /// `powerefficient`, which describe how compatible the device is with the
  /// type of media.
  external JSPromise encodingInfo(MediaEncodingConfiguration configuration);
}
