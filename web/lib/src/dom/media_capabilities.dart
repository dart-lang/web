// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

import 'encrypted_media.dart';

typedef MediaDecodingType = String;
typedef MediaEncodingType = String;
typedef HdrMetadataType = String;
typedef ColorGamut = String;
typedef TransferFunction = String;
extension type MediaConfiguration._(JSObject _) implements JSObject {
  external factory MediaConfiguration({
    VideoConfiguration video,
    AudioConfiguration audio,
  });

  external VideoConfiguration get video;
  external set video(VideoConfiguration value);
  external AudioConfiguration get audio;
  external set audio(AudioConfiguration value);
}
extension type MediaDecodingConfiguration._(JSObject _)
    implements MediaConfiguration, JSObject {
  external factory MediaDecodingConfiguration({
    VideoConfiguration video,
    AudioConfiguration audio,
    required MediaDecodingType type,
    MediaCapabilitiesKeySystemConfiguration keySystemConfiguration,
  });

  external MediaDecodingType get type;
  external set type(MediaDecodingType value);
  external MediaCapabilitiesKeySystemConfiguration get keySystemConfiguration;
  external set keySystemConfiguration(
      MediaCapabilitiesKeySystemConfiguration value);
}
extension type MediaEncodingConfiguration._(JSObject _)
    implements MediaConfiguration, JSObject {
  external factory MediaEncodingConfiguration({
    VideoConfiguration video,
    AudioConfiguration audio,
    required MediaEncodingType type,
  });

  external MediaEncodingType get type;
  external set type(MediaEncodingType value);
}
extension type VideoConfiguration._(JSObject _) implements JSObject {
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

  external String get contentType;
  external set contentType(String value);
  external int get width;
  external set width(int value);
  external int get height;
  external set height(int value);
  external int get bitrate;
  external set bitrate(int value);
  external double get framerate;
  external set framerate(num value);
  external bool get hasAlphaChannel;
  external set hasAlphaChannel(bool value);
  external HdrMetadataType get hdrMetadataType;
  external set hdrMetadataType(HdrMetadataType value);
  external ColorGamut get colorGamut;
  external set colorGamut(ColorGamut value);
  external TransferFunction get transferFunction;
  external set transferFunction(TransferFunction value);
  external String get scalabilityMode;
  external set scalabilityMode(String value);
  external bool get spatialScalability;
  external set spatialScalability(bool value);
}
extension type AudioConfiguration._(JSObject _) implements JSObject {
  external factory AudioConfiguration({
    required String contentType,
    String channels,
    int bitrate,
    int samplerate,
    bool spatialRendering,
  });

  external String get contentType;
  external set contentType(String value);
  external String get channels;
  external set channels(String value);
  external int get bitrate;
  external set bitrate(int value);
  external int get samplerate;
  external set samplerate(int value);
  external bool get spatialRendering;
  external set spatialRendering(bool value);
}
extension type MediaCapabilitiesKeySystemConfiguration._(JSObject _)
    implements JSObject {
  external factory MediaCapabilitiesKeySystemConfiguration({
    required String keySystem,
    String initDataType,
    MediaKeysRequirement distinctiveIdentifier,
    MediaKeysRequirement persistentState,
    JSArray<JSString> sessionTypes,
    KeySystemTrackConfiguration audio,
    KeySystemTrackConfiguration video,
  });

  external String get keySystem;
  external set keySystem(String value);
  external String get initDataType;
  external set initDataType(String value);
  external MediaKeysRequirement get distinctiveIdentifier;
  external set distinctiveIdentifier(MediaKeysRequirement value);
  external MediaKeysRequirement get persistentState;
  external set persistentState(MediaKeysRequirement value);
  external JSArray<JSString> get sessionTypes;
  external set sessionTypes(JSArray<JSString> value);
  external KeySystemTrackConfiguration get audio;
  external set audio(KeySystemTrackConfiguration value);
  external KeySystemTrackConfiguration get video;
  external set video(KeySystemTrackConfiguration value);
}
extension type KeySystemTrackConfiguration._(JSObject _) implements JSObject {
  external factory KeySystemTrackConfiguration({
    String robustness,
    String? encryptionScheme,
  });

  external String get robustness;
  external set robustness(String value);
  external String? get encryptionScheme;
  external set encryptionScheme(String? value);
}
extension type MediaCapabilitiesInfo._(JSObject _) implements JSObject {
  external factory MediaCapabilitiesInfo({
    required bool supported,
    required bool smooth,
    required bool powerEfficient,
  });

  external bool get supported;
  external set supported(bool value);
  external bool get smooth;
  external set smooth(bool value);
  external bool get powerEfficient;
  external set powerEfficient(bool value);
}
extension type MediaCapabilitiesDecodingInfo._(JSObject _)
    implements MediaCapabilitiesInfo, JSObject {
  external factory MediaCapabilitiesDecodingInfo({
    required bool supported,
    required bool smooth,
    required bool powerEfficient,
    required MediaKeySystemAccess? keySystemAccess,
    MediaDecodingConfiguration configuration,
  });

  external MediaKeySystemAccess? get keySystemAccess;
  external set keySystemAccess(MediaKeySystemAccess? value);
  external MediaDecodingConfiguration get configuration;
  external set configuration(MediaDecodingConfiguration value);
}
extension type MediaCapabilitiesEncodingInfo._(JSObject _)
    implements MediaCapabilitiesInfo, JSObject {
  external factory MediaCapabilitiesEncodingInfo({
    required bool supported,
    required bool smooth,
    required bool powerEfficient,
    MediaEncodingConfiguration configuration,
  });

  external MediaEncodingConfiguration get configuration;
  external set configuration(MediaEncodingConfiguration value);
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
/// the [Navigator] and [WorkerNavigator] interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaCapabilities).
extension type MediaCapabilities._(JSObject _) implements JSObject {
  /// The **`decodingInfo()`** method of the [MediaCapabilities] interface
  /// returns a promise that fulfils with information about how well the user
  /// agent can decode/display media with a given configuration.
  ///
  /// The resolved object contains three boolean properties `supported`,
  /// `smooth`, and `powerefficient`, which indicate whether decoding the media
  /// described would be supported, and if so, whether decoding would be smooth
  /// and power-efficient.
  ///
  /// The method can also be used to test the user agent capabilities for
  /// decoding media encoded with a key system, but only when called in the main
  /// thread and in a secure context.
  /// If the configuration passed in the `configuration.keySystemConfiguration`
  /// property is supported for decoding the data, the resolved promise also
  /// includes a [MediaKeySystemAccess] object that can be used to create a
  /// [MediaKeys] object to setup encrypted playback.
  ///
  /// > [!NOTE]
  /// > Calling `decodingInfo()` with this property may result in user-visible
  /// > effects, such as asking for permission to access one or more system
  /// > resources.
  /// > As such, this function should only be called when the application is
  /// > ready to create and use a `MediaKeys` object with the provided
  /// > configuration.
  external JSPromise<MediaCapabilitiesDecodingInfo> decodingInfo(
      MediaDecodingConfiguration configuration);

  /// The **`encodingInfo()`** method of the [MediaCapabilities] interface
  /// returns a promise that fulfills with the tested media configuration's
  /// capabilities for encoding media.
  /// This contains the three boolean properties `supported`, `smooth`, and
  /// `powerefficient`, which describe how compatible the device is with the
  /// type of media.
  external JSPromise<MediaCapabilitiesEncodingInfo> encodingInfo(
      MediaEncodingConfiguration configuration);
}
