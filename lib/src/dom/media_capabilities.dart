// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

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

extension MediaConfigurationExtension on MediaConfiguration {}

@JS('MediaDecodingConfiguration')
@staticInterop
class MediaDecodingConfiguration extends MediaConfiguration {
  external factory MediaDecodingConfiguration();
}

extension MediaDecodingConfigurationExtension on MediaDecodingConfiguration {}

@JS('MediaEncodingConfiguration')
@staticInterop
class MediaEncodingConfiguration extends MediaConfiguration {
  external factory MediaEncodingConfiguration();
}

extension MediaEncodingConfigurationExtension on MediaEncodingConfiguration {}

@JS('VideoConfiguration')
@staticInterop
class VideoConfiguration {
  external factory VideoConfiguration();
}

extension VideoConfigurationExtension on VideoConfiguration {}

@JS('AudioConfiguration')
@staticInterop
class AudioConfiguration {
  external factory AudioConfiguration();
}

extension AudioConfigurationExtension on AudioConfiguration {}

@JS('MediaCapabilitiesKeySystemConfiguration')
@staticInterop
class MediaCapabilitiesKeySystemConfiguration {
  external factory MediaCapabilitiesKeySystemConfiguration();
}

extension MediaCapabilitiesKeySystemConfigurationExtension
    on MediaCapabilitiesKeySystemConfiguration {}

@JS('KeySystemTrackConfiguration')
@staticInterop
class KeySystemTrackConfiguration {
  external factory KeySystemTrackConfiguration();
}

extension KeySystemTrackConfigurationExtension on KeySystemTrackConfiguration {}

@JS('MediaCapabilitiesInfo')
@staticInterop
class MediaCapabilitiesInfo {
  external factory MediaCapabilitiesInfo();
}

extension MediaCapabilitiesInfoExtension on MediaCapabilitiesInfo {}

@JS('MediaCapabilitiesDecodingInfo')
@staticInterop
class MediaCapabilitiesDecodingInfo extends MediaCapabilitiesInfo {
  external factory MediaCapabilitiesDecodingInfo();
}

extension MediaCapabilitiesDecodingInfoExtension
    on MediaCapabilitiesDecodingInfo {}

@JS('MediaCapabilitiesEncodingInfo')
@staticInterop
class MediaCapabilitiesEncodingInfo extends MediaCapabilitiesInfo {
  external factory MediaCapabilitiesEncodingInfo();
}

extension MediaCapabilitiesEncodingInfoExtension
    on MediaCapabilitiesEncodingInfo {}

@JS('MediaCapabilities')
@staticInterop
class MediaCapabilities {
  external factory MediaCapabilities();
}

extension MediaCapabilitiesExtension on MediaCapabilities {
  external JSPromise decodingInfo(MediaDecodingConfiguration configuration);
  external JSPromise encodingInfo(MediaEncodingConfiguration configuration);
}
