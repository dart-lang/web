// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'webrtc.dart';

typedef RTCStatsType = JSString;
typedef RTCQualityLimitationReason = JSString;
typedef RTCDtlsRole = JSString;
typedef RTCStatsIceCandidatePairState = JSString;

@JS('RTCRtpStreamStats')
@staticInterop
class RTCRtpStreamStats extends RTCStats {
  external factory RTCRtpStreamStats();
}

extension RTCRtpStreamStatsExtension on RTCRtpStreamStats {}

@JS('RTCCodecStats')
@staticInterop
class RTCCodecStats extends RTCStats {
  external factory RTCCodecStats();
}

extension RTCCodecStatsExtension on RTCCodecStats {}

@JS('RTCReceivedRtpStreamStats')
@staticInterop
class RTCReceivedRtpStreamStats extends RTCRtpStreamStats {
  external factory RTCReceivedRtpStreamStats();
}

extension RTCReceivedRtpStreamStatsExtension on RTCReceivedRtpStreamStats {}

@JS('RTCInboundRtpStreamStats')
@staticInterop
class RTCInboundRtpStreamStats extends RTCReceivedRtpStreamStats {
  external factory RTCInboundRtpStreamStats();
}

extension RTCInboundRtpStreamStatsExtension on RTCInboundRtpStreamStats {}

@JS('RTCRemoteInboundRtpStreamStats')
@staticInterop
class RTCRemoteInboundRtpStreamStats extends RTCReceivedRtpStreamStats {
  external factory RTCRemoteInboundRtpStreamStats();
}

extension RTCRemoteInboundRtpStreamStatsExtension
    on RTCRemoteInboundRtpStreamStats {}

@JS('RTCSentRtpStreamStats')
@staticInterop
class RTCSentRtpStreamStats extends RTCRtpStreamStats {
  external factory RTCSentRtpStreamStats();
}

extension RTCSentRtpStreamStatsExtension on RTCSentRtpStreamStats {}

@JS('RTCOutboundRtpStreamStats')
@staticInterop
class RTCOutboundRtpStreamStats extends RTCSentRtpStreamStats {
  external factory RTCOutboundRtpStreamStats();
}

extension RTCOutboundRtpStreamStatsExtension on RTCOutboundRtpStreamStats {}

@JS('RTCRemoteOutboundRtpStreamStats')
@staticInterop
class RTCRemoteOutboundRtpStreamStats extends RTCSentRtpStreamStats {
  external factory RTCRemoteOutboundRtpStreamStats();
}

extension RTCRemoteOutboundRtpStreamStatsExtension
    on RTCRemoteOutboundRtpStreamStats {}

@JS('RTCMediaSourceStats')
@staticInterop
class RTCMediaSourceStats extends RTCStats {
  external factory RTCMediaSourceStats();
}

extension RTCMediaSourceStatsExtension on RTCMediaSourceStats {}

@JS('RTCAudioSourceStats')
@staticInterop
class RTCAudioSourceStats extends RTCMediaSourceStats {
  external factory RTCAudioSourceStats();
}

extension RTCAudioSourceStatsExtension on RTCAudioSourceStats {}

@JS('RTCVideoSourceStats')
@staticInterop
class RTCVideoSourceStats extends RTCMediaSourceStats {
  external factory RTCVideoSourceStats();
}

extension RTCVideoSourceStatsExtension on RTCVideoSourceStats {}

@JS('RTCAudioPlayoutStats')
@staticInterop
class RTCAudioPlayoutStats extends RTCStats {
  external factory RTCAudioPlayoutStats();
}

extension RTCAudioPlayoutStatsExtension on RTCAudioPlayoutStats {}

@JS('RTCPeerConnectionStats')
@staticInterop
class RTCPeerConnectionStats extends RTCStats {
  external factory RTCPeerConnectionStats();
}

extension RTCPeerConnectionStatsExtension on RTCPeerConnectionStats {}

@JS('RTCDataChannelStats')
@staticInterop
class RTCDataChannelStats extends RTCStats {
  external factory RTCDataChannelStats();
}

extension RTCDataChannelStatsExtension on RTCDataChannelStats {}

@JS('RTCTransportStats')
@staticInterop
class RTCTransportStats extends RTCStats {
  external factory RTCTransportStats();
}

extension RTCTransportStatsExtension on RTCTransportStats {}

@JS('RTCIceCandidateStats')
@staticInterop
class RTCIceCandidateStats extends RTCStats {
  external factory RTCIceCandidateStats();
}

extension RTCIceCandidateStatsExtension on RTCIceCandidateStats {}

@JS('RTCIceCandidatePairStats')
@staticInterop
class RTCIceCandidatePairStats extends RTCStats {
  external factory RTCIceCandidatePairStats();
}

extension RTCIceCandidatePairStatsExtension on RTCIceCandidatePairStats {}

@JS('RTCCertificateStats')
@staticInterop
class RTCCertificateStats extends RTCStats {
  external factory RTCCertificateStats();
}

extension RTCCertificateStatsExtension on RTCCertificateStats {}
