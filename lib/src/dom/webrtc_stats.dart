// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef RTCStatsType = JSString;
typedef RTCQualityLimitationReason = JSString;
typedef RTCDtlsRole = JSString;
typedef RTCStatsIceCandidatePairState = JSString;

@JS('RTCRtpStreamStats')
@staticInterop
class RTCRtpStreamStats extends RTCStats {
  external factory RTCRtpStreamStats();
}

extension RTCRtpStreamStatsExtension on RTCRtpStreamStats {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCCodecStats')
@staticInterop
class RTCCodecStats extends RTCStats {
  external factory RTCCodecStats();
}

extension RTCCodecStatsExtension on RTCCodecStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCReceivedRtpStreamStats')
@staticInterop
class RTCReceivedRtpStreamStats extends RTCRtpStreamStats {
  external factory RTCReceivedRtpStreamStats();
}

extension RTCReceivedRtpStreamStatsExtension on RTCReceivedRtpStreamStats {
  // TODO
  // TODO
  // TODO
}

@JS('RTCInboundRtpStreamStats')
@staticInterop
class RTCInboundRtpStreamStats extends RTCReceivedRtpStreamStats {
  external factory RTCInboundRtpStreamStats();
}

extension RTCInboundRtpStreamStatsExtension on RTCInboundRtpStreamStats {
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
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRemoteInboundRtpStreamStats')
@staticInterop
class RTCRemoteInboundRtpStreamStats extends RTCReceivedRtpStreamStats {
  external factory RTCRemoteInboundRtpStreamStats();
}

extension RTCRemoteInboundRtpStreamStatsExtension
    on RTCRemoteInboundRtpStreamStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCSentRtpStreamStats')
@staticInterop
class RTCSentRtpStreamStats extends RTCRtpStreamStats {
  external factory RTCSentRtpStreamStats();
}

extension RTCSentRtpStreamStatsExtension on RTCSentRtpStreamStats {
  // TODO
  // TODO
}

@JS('RTCOutboundRtpStreamStats')
@staticInterop
class RTCOutboundRtpStreamStats extends RTCSentRtpStreamStats {
  external factory RTCOutboundRtpStreamStats();
}

extension RTCOutboundRtpStreamStatsExtension on RTCOutboundRtpStreamStats {
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
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRemoteOutboundRtpStreamStats')
@staticInterop
class RTCRemoteOutboundRtpStreamStats extends RTCSentRtpStreamStats {
  external factory RTCRemoteOutboundRtpStreamStats();
}

extension RTCRemoteOutboundRtpStreamStatsExtension
    on RTCRemoteOutboundRtpStreamStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCMediaSourceStats')
@staticInterop
class RTCMediaSourceStats extends RTCStats {
  external factory RTCMediaSourceStats();
}

extension RTCMediaSourceStatsExtension on RTCMediaSourceStats {
  // TODO
  // TODO
}

@JS('RTCAudioSourceStats')
@staticInterop
class RTCAudioSourceStats extends RTCMediaSourceStats {
  external factory RTCAudioSourceStats();
}

extension RTCAudioSourceStatsExtension on RTCAudioSourceStats {
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

@JS('RTCVideoSourceStats')
@staticInterop
class RTCVideoSourceStats extends RTCMediaSourceStats {
  external factory RTCVideoSourceStats();
}

extension RTCVideoSourceStatsExtension on RTCVideoSourceStats {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCAudioPlayoutStats')
@staticInterop
class RTCAudioPlayoutStats extends RTCStats {
  external factory RTCAudioPlayoutStats();
}

extension RTCAudioPlayoutStatsExtension on RTCAudioPlayoutStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCPeerConnectionStats')
@staticInterop
class RTCPeerConnectionStats extends RTCStats {
  external factory RTCPeerConnectionStats();
}

extension RTCPeerConnectionStatsExtension on RTCPeerConnectionStats {
  // TODO
  // TODO
}

@JS('RTCDataChannelStats')
@staticInterop
class RTCDataChannelStats extends RTCStats {
  external factory RTCDataChannelStats();
}

extension RTCDataChannelStatsExtension on RTCDataChannelStats {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCTransportStats')
@staticInterop
class RTCTransportStats extends RTCStats {
  external factory RTCTransportStats();
}

extension RTCTransportStatsExtension on RTCTransportStats {
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
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCIceCandidateStats')
@staticInterop
class RTCIceCandidateStats extends RTCStats {
  external factory RTCIceCandidateStats();
}

extension RTCIceCandidateStatsExtension on RTCIceCandidateStats {
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
  // TODO
  // TODO
}

@JS('RTCIceCandidatePairStats')
@staticInterop
class RTCIceCandidatePairStats extends RTCStats {
  external factory RTCIceCandidatePairStats();
}

extension RTCIceCandidatePairStatsExtension on RTCIceCandidatePairStats {
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

@JS('RTCCertificateStats')
@staticInterop
class RTCCertificateStats extends RTCStats {
  external factory RTCCertificateStats();
}

extension RTCCertificateStatsExtension on RTCCertificateStats {
  // TODO
  // TODO
  // TODO
  // TODO
}
