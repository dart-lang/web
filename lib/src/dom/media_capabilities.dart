// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef MediaDecodingType = JSString;
typedef MediaEncodingType = JSString;
typedef HdrMetadataType = JSString;
typedef ColorGamut = JSString;
typedef TransferFunction = JSString;

@JS('MediaConfiguration')
@staticInterop
class MediaConfiguration {
  external factory MediaConfiguration();
}

extension MediaConfigurationExtension on MediaConfiguration {
  // TODO
  // TODO
}

@JS('MediaDecodingConfiguration')
@staticInterop
class MediaDecodingConfiguration extends MediaConfiguration {
  external factory MediaDecodingConfiguration();
}

extension MediaDecodingConfigurationExtension on MediaDecodingConfiguration {
  // TODO
  // TODO
}

@JS('MediaEncodingConfiguration')
@staticInterop
class MediaEncodingConfiguration extends MediaConfiguration {
  external factory MediaEncodingConfiguration();
}

extension MediaEncodingConfigurationExtension on MediaEncodingConfiguration {
  // TODO
}

@JS('VideoConfiguration')
@staticInterop
class VideoConfiguration {
  external factory VideoConfiguration();
}

extension VideoConfigurationExtension on VideoConfiguration {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AudioConfiguration')
@staticInterop
class AudioConfiguration {
  external factory AudioConfiguration();
}

extension AudioConfigurationExtension on AudioConfiguration {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MediaCapabilitiesKeySystemConfiguration')
@staticInterop
class MediaCapabilitiesKeySystemConfiguration {
  external factory MediaCapabilitiesKeySystemConfiguration();
}

extension MediaCapabilitiesKeySystemConfigurationExtension
    on MediaCapabilitiesKeySystemConfiguration {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('KeySystemTrackConfiguration')
@staticInterop
class KeySystemTrackConfiguration {
  external factory KeySystemTrackConfiguration();
}

extension KeySystemTrackConfigurationExtension on KeySystemTrackConfiguration {
  // TODO
  // TODO
}

@JS('MediaCapabilitiesInfo')
@staticInterop
class MediaCapabilitiesInfo {
  external factory MediaCapabilitiesInfo();
}

extension MediaCapabilitiesInfoExtension on MediaCapabilitiesInfo {
  // TODO
  // TODO
  // TODO
}

@JS('MediaCapabilitiesDecodingInfo')
@staticInterop
class MediaCapabilitiesDecodingInfo extends MediaCapabilitiesInfo {
  external factory MediaCapabilitiesDecodingInfo();
}

extension MediaCapabilitiesDecodingInfoExtension
    on MediaCapabilitiesDecodingInfo {
  // TODO
  // TODO
}

@JS('MediaCapabilitiesEncodingInfo')
@staticInterop
class MediaCapabilitiesEncodingInfo extends MediaCapabilitiesInfo {
  external factory MediaCapabilitiesEncodingInfo();
}

extension MediaCapabilitiesEncodingInfoExtension
    on MediaCapabilitiesEncodingInfo {
  // TODO
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
