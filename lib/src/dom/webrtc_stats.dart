// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'hr_time.dart';
import 'webrtc.dart';

typedef RTCStatsType = JSString;
typedef RTCQualityLimitationReason = JSString;
typedef RTCDtlsRole = JSString;
typedef RTCStatsIceCandidatePairState = JSString;

@JS()
@staticInterop
@anonymous
class RTCRtpStreamStats implements RTCStats {
  external factory RTCRtpStreamStats({
    required JSNumber ssrc,
    required JSString kind,
    JSString transportId,
    JSString codecId,
  });
}

extension RTCRtpStreamStatsExtension on RTCRtpStreamStats {
  external set ssrc(JSNumber value);
  external JSNumber get ssrc;
  external set kind(JSString value);
  external JSString get kind;
  external set transportId(JSString value);
  external JSString get transportId;
  external set codecId(JSString value);
  external JSString get codecId;
}

@JS()
@staticInterop
@anonymous
class RTCCodecStats implements RTCStats {
  external factory RTCCodecStats({
    required JSNumber payloadType,
    required JSString transportId,
    required JSString mimeType,
    JSNumber clockRate,
    JSNumber channels,
    JSString sdpFmtpLine,
  });
}

extension RTCCodecStatsExtension on RTCCodecStats {
  external set payloadType(JSNumber value);
  external JSNumber get payloadType;
  external set transportId(JSString value);
  external JSString get transportId;
  external set mimeType(JSString value);
  external JSString get mimeType;
  external set clockRate(JSNumber value);
  external JSNumber get clockRate;
  external set channels(JSNumber value);
  external JSNumber get channels;
  external set sdpFmtpLine(JSString value);
  external JSString get sdpFmtpLine;
}

@JS()
@staticInterop
@anonymous
class RTCReceivedRtpStreamStats implements RTCRtpStreamStats {
  external factory RTCReceivedRtpStreamStats({
    JSNumber packetsReceived,
    JSNumber packetsLost,
    JSNumber jitter,
  });
}

extension RTCReceivedRtpStreamStatsExtension on RTCReceivedRtpStreamStats {
  external set packetsReceived(JSNumber value);
  external JSNumber get packetsReceived;
  external set packetsLost(JSNumber value);
  external JSNumber get packetsLost;
  external set jitter(JSNumber value);
  external JSNumber get jitter;
}

@JS()
@staticInterop
@anonymous
class RTCInboundRtpStreamStats implements RTCReceivedRtpStreamStats {
  external factory RTCInboundRtpStreamStats({
    required JSString trackIdentifier,
    required JSString kind,
    JSString mid,
    JSString remoteId,
    JSNumber framesDecoded,
    JSNumber keyFramesDecoded,
    JSNumber framesRendered,
    JSNumber framesDropped,
    JSNumber frameWidth,
    JSNumber frameHeight,
    JSNumber framesPerSecond,
    JSNumber qpSum,
    JSNumber totalDecodeTime,
    JSNumber totalInterFrameDelay,
    JSNumber totalSquaredInterFrameDelay,
    JSNumber pauseCount,
    JSNumber totalPausesDuration,
    JSNumber freezeCount,
    JSNumber totalFreezesDuration,
    DOMHighResTimeStamp lastPacketReceivedTimestamp,
    JSNumber headerBytesReceived,
    JSNumber packetsDiscarded,
    JSNumber fecPacketsReceived,
    JSNumber fecPacketsDiscarded,
    JSNumber bytesReceived,
    JSNumber nackCount,
    JSNumber firCount,
    JSNumber pliCount,
    JSNumber totalProcessingDelay,
    DOMHighResTimeStamp estimatedPlayoutTimestamp,
    JSNumber jitterBufferDelay,
    JSNumber jitterBufferTargetDelay,
    JSNumber jitterBufferEmittedCount,
    JSNumber jitterBufferMinimumDelay,
    JSNumber totalSamplesReceived,
    JSNumber concealedSamples,
    JSNumber silentConcealedSamples,
    JSNumber concealmentEvents,
    JSNumber insertedSamplesForDeceleration,
    JSNumber removedSamplesForAcceleration,
    JSNumber audioLevel,
    JSNumber totalAudioEnergy,
    JSNumber totalSamplesDuration,
    JSNumber framesReceived,
    JSString decoderImplementation,
    JSString playoutId,
    JSBoolean powerEfficientDecoder,
    JSNumber framesAssembledFromMultiplePackets,
    JSNumber totalAssemblyTime,
  });
}

extension RTCInboundRtpStreamStatsExtension on RTCInboundRtpStreamStats {
  external set trackIdentifier(JSString value);
  external JSString get trackIdentifier;
  external set kind(JSString value);
  external JSString get kind;
  external set mid(JSString value);
  external JSString get mid;
  external set remoteId(JSString value);
  external JSString get remoteId;
  external set framesDecoded(JSNumber value);
  external JSNumber get framesDecoded;
  external set keyFramesDecoded(JSNumber value);
  external JSNumber get keyFramesDecoded;
  external set framesRendered(JSNumber value);
  external JSNumber get framesRendered;
  external set framesDropped(JSNumber value);
  external JSNumber get framesDropped;
  external set frameWidth(JSNumber value);
  external JSNumber get frameWidth;
  external set frameHeight(JSNumber value);
  external JSNumber get frameHeight;
  external set framesPerSecond(JSNumber value);
  external JSNumber get framesPerSecond;
  external set qpSum(JSNumber value);
  external JSNumber get qpSum;
  external set totalDecodeTime(JSNumber value);
  external JSNumber get totalDecodeTime;
  external set totalInterFrameDelay(JSNumber value);
  external JSNumber get totalInterFrameDelay;
  external set totalSquaredInterFrameDelay(JSNumber value);
  external JSNumber get totalSquaredInterFrameDelay;
  external set pauseCount(JSNumber value);
  external JSNumber get pauseCount;
  external set totalPausesDuration(JSNumber value);
  external JSNumber get totalPausesDuration;
  external set freezeCount(JSNumber value);
  external JSNumber get freezeCount;
  external set totalFreezesDuration(JSNumber value);
  external JSNumber get totalFreezesDuration;
  external set lastPacketReceivedTimestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get lastPacketReceivedTimestamp;
  external set headerBytesReceived(JSNumber value);
  external JSNumber get headerBytesReceived;
  external set packetsDiscarded(JSNumber value);
  external JSNumber get packetsDiscarded;
  external set fecPacketsReceived(JSNumber value);
  external JSNumber get fecPacketsReceived;
  external set fecPacketsDiscarded(JSNumber value);
  external JSNumber get fecPacketsDiscarded;
  external set bytesReceived(JSNumber value);
  external JSNumber get bytesReceived;
  external set nackCount(JSNumber value);
  external JSNumber get nackCount;
  external set firCount(JSNumber value);
  external JSNumber get firCount;
  external set pliCount(JSNumber value);
  external JSNumber get pliCount;
  external set totalProcessingDelay(JSNumber value);
  external JSNumber get totalProcessingDelay;
  external set estimatedPlayoutTimestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get estimatedPlayoutTimestamp;
  external set jitterBufferDelay(JSNumber value);
  external JSNumber get jitterBufferDelay;
  external set jitterBufferTargetDelay(JSNumber value);
  external JSNumber get jitterBufferTargetDelay;
  external set jitterBufferEmittedCount(JSNumber value);
  external JSNumber get jitterBufferEmittedCount;
  external set jitterBufferMinimumDelay(JSNumber value);
  external JSNumber get jitterBufferMinimumDelay;
  external set totalSamplesReceived(JSNumber value);
  external JSNumber get totalSamplesReceived;
  external set concealedSamples(JSNumber value);
  external JSNumber get concealedSamples;
  external set silentConcealedSamples(JSNumber value);
  external JSNumber get silentConcealedSamples;
  external set concealmentEvents(JSNumber value);
  external JSNumber get concealmentEvents;
  external set insertedSamplesForDeceleration(JSNumber value);
  external JSNumber get insertedSamplesForDeceleration;
  external set removedSamplesForAcceleration(JSNumber value);
  external JSNumber get removedSamplesForAcceleration;
  external set audioLevel(JSNumber value);
  external JSNumber get audioLevel;
  external set totalAudioEnergy(JSNumber value);
  external JSNumber get totalAudioEnergy;
  external set totalSamplesDuration(JSNumber value);
  external JSNumber get totalSamplesDuration;
  external set framesReceived(JSNumber value);
  external JSNumber get framesReceived;
  external set decoderImplementation(JSString value);
  external JSString get decoderImplementation;
  external set playoutId(JSString value);
  external JSString get playoutId;
  external set powerEfficientDecoder(JSBoolean value);
  external JSBoolean get powerEfficientDecoder;
  external set framesAssembledFromMultiplePackets(JSNumber value);
  external JSNumber get framesAssembledFromMultiplePackets;
  external set totalAssemblyTime(JSNumber value);
  external JSNumber get totalAssemblyTime;
}

@JS()
@staticInterop
@anonymous
class RTCRemoteInboundRtpStreamStats implements RTCReceivedRtpStreamStats {
  external factory RTCRemoteInboundRtpStreamStats({
    JSString localId,
    JSNumber roundTripTime,
    JSNumber totalRoundTripTime,
    JSNumber fractionLost,
    JSNumber roundTripTimeMeasurements,
  });
}

extension RTCRemoteInboundRtpStreamStatsExtension
    on RTCRemoteInboundRtpStreamStats {
  external set localId(JSString value);
  external JSString get localId;
  external set roundTripTime(JSNumber value);
  external JSNumber get roundTripTime;
  external set totalRoundTripTime(JSNumber value);
  external JSNumber get totalRoundTripTime;
  external set fractionLost(JSNumber value);
  external JSNumber get fractionLost;
  external set roundTripTimeMeasurements(JSNumber value);
  external JSNumber get roundTripTimeMeasurements;
}

@JS()
@staticInterop
@anonymous
class RTCSentRtpStreamStats implements RTCRtpStreamStats {
  external factory RTCSentRtpStreamStats({
    JSNumber packetsSent,
    JSNumber bytesSent,
  });
}

extension RTCSentRtpStreamStatsExtension on RTCSentRtpStreamStats {
  external set packetsSent(JSNumber value);
  external JSNumber get packetsSent;
  external set bytesSent(JSNumber value);
  external JSNumber get bytesSent;
}

@JS()
@staticInterop
@anonymous
class RTCOutboundRtpStreamStats implements RTCSentRtpStreamStats {
  external factory RTCOutboundRtpStreamStats({
    JSString mid,
    JSString mediaSourceId,
    JSString remoteId,
    JSString rid,
    JSNumber headerBytesSent,
    JSNumber retransmittedPacketsSent,
    JSNumber retransmittedBytesSent,
    JSNumber targetBitrate,
    JSNumber totalEncodedBytesTarget,
    JSNumber frameWidth,
    JSNumber frameHeight,
    JSNumber framesPerSecond,
    JSNumber framesSent,
    JSNumber hugeFramesSent,
    JSNumber framesEncoded,
    JSNumber keyFramesEncoded,
    JSNumber qpSum,
    JSNumber totalEncodeTime,
    JSNumber totalPacketSendDelay,
    RTCQualityLimitationReason qualityLimitationReason,
    JSAny qualityLimitationDurations,
    JSNumber qualityLimitationResolutionChanges,
    JSNumber nackCount,
    JSNumber firCount,
    JSNumber pliCount,
    JSString encoderImplementation,
    JSBoolean powerEfficientEncoder,
    JSBoolean active,
    JSString scalabilityMode,
  });
}

extension RTCOutboundRtpStreamStatsExtension on RTCOutboundRtpStreamStats {
  external set mid(JSString value);
  external JSString get mid;
  external set mediaSourceId(JSString value);
  external JSString get mediaSourceId;
  external set remoteId(JSString value);
  external JSString get remoteId;
  external set rid(JSString value);
  external JSString get rid;
  external set headerBytesSent(JSNumber value);
  external JSNumber get headerBytesSent;
  external set retransmittedPacketsSent(JSNumber value);
  external JSNumber get retransmittedPacketsSent;
  external set retransmittedBytesSent(JSNumber value);
  external JSNumber get retransmittedBytesSent;
  external set targetBitrate(JSNumber value);
  external JSNumber get targetBitrate;
  external set totalEncodedBytesTarget(JSNumber value);
  external JSNumber get totalEncodedBytesTarget;
  external set frameWidth(JSNumber value);
  external JSNumber get frameWidth;
  external set frameHeight(JSNumber value);
  external JSNumber get frameHeight;
  external set framesPerSecond(JSNumber value);
  external JSNumber get framesPerSecond;
  external set framesSent(JSNumber value);
  external JSNumber get framesSent;
  external set hugeFramesSent(JSNumber value);
  external JSNumber get hugeFramesSent;
  external set framesEncoded(JSNumber value);
  external JSNumber get framesEncoded;
  external set keyFramesEncoded(JSNumber value);
  external JSNumber get keyFramesEncoded;
  external set qpSum(JSNumber value);
  external JSNumber get qpSum;
  external set totalEncodeTime(JSNumber value);
  external JSNumber get totalEncodeTime;
  external set totalPacketSendDelay(JSNumber value);
  external JSNumber get totalPacketSendDelay;
  external set qualityLimitationReason(RTCQualityLimitationReason value);
  external RTCQualityLimitationReason get qualityLimitationReason;
  external set qualityLimitationDurations(JSAny value);
  external JSAny get qualityLimitationDurations;
  external set qualityLimitationResolutionChanges(JSNumber value);
  external JSNumber get qualityLimitationResolutionChanges;
  external set nackCount(JSNumber value);
  external JSNumber get nackCount;
  external set firCount(JSNumber value);
  external JSNumber get firCount;
  external set pliCount(JSNumber value);
  external JSNumber get pliCount;
  external set encoderImplementation(JSString value);
  external JSString get encoderImplementation;
  external set powerEfficientEncoder(JSBoolean value);
  external JSBoolean get powerEfficientEncoder;
  external set active(JSBoolean value);
  external JSBoolean get active;
  external set scalabilityMode(JSString value);
  external JSString get scalabilityMode;
}

@JS()
@staticInterop
@anonymous
class RTCRemoteOutboundRtpStreamStats implements RTCSentRtpStreamStats {
  external factory RTCRemoteOutboundRtpStreamStats({
    JSString localId,
    DOMHighResTimeStamp remoteTimestamp,
    JSNumber reportsSent,
    JSNumber roundTripTime,
    JSNumber totalRoundTripTime,
    JSNumber roundTripTimeMeasurements,
  });
}

extension RTCRemoteOutboundRtpStreamStatsExtension
    on RTCRemoteOutboundRtpStreamStats {
  external set localId(JSString value);
  external JSString get localId;
  external set remoteTimestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get remoteTimestamp;
  external set reportsSent(JSNumber value);
  external JSNumber get reportsSent;
  external set roundTripTime(JSNumber value);
  external JSNumber get roundTripTime;
  external set totalRoundTripTime(JSNumber value);
  external JSNumber get totalRoundTripTime;
  external set roundTripTimeMeasurements(JSNumber value);
  external JSNumber get roundTripTimeMeasurements;
}

@JS()
@staticInterop
@anonymous
class RTCMediaSourceStats implements RTCStats {
  external factory RTCMediaSourceStats({
    required JSString trackIdentifier,
    required JSString kind,
  });
}

extension RTCMediaSourceStatsExtension on RTCMediaSourceStats {
  external set trackIdentifier(JSString value);
  external JSString get trackIdentifier;
  external set kind(JSString value);
  external JSString get kind;
}

@JS()
@staticInterop
@anonymous
class RTCAudioSourceStats implements RTCMediaSourceStats {
  external factory RTCAudioSourceStats({
    JSNumber audioLevel,
    JSNumber totalAudioEnergy,
    JSNumber totalSamplesDuration,
    JSNumber echoReturnLoss,
    JSNumber echoReturnLossEnhancement,
    JSNumber droppedSamplesDuration,
    JSNumber droppedSamplesEvents,
    JSNumber totalCaptureDelay,
    JSNumber totalSamplesCaptured,
  });
}

extension RTCAudioSourceStatsExtension on RTCAudioSourceStats {
  external set audioLevel(JSNumber value);
  external JSNumber get audioLevel;
  external set totalAudioEnergy(JSNumber value);
  external JSNumber get totalAudioEnergy;
  external set totalSamplesDuration(JSNumber value);
  external JSNumber get totalSamplesDuration;
  external set echoReturnLoss(JSNumber value);
  external JSNumber get echoReturnLoss;
  external set echoReturnLossEnhancement(JSNumber value);
  external JSNumber get echoReturnLossEnhancement;
  external set droppedSamplesDuration(JSNumber value);
  external JSNumber get droppedSamplesDuration;
  external set droppedSamplesEvents(JSNumber value);
  external JSNumber get droppedSamplesEvents;
  external set totalCaptureDelay(JSNumber value);
  external JSNumber get totalCaptureDelay;
  external set totalSamplesCaptured(JSNumber value);
  external JSNumber get totalSamplesCaptured;
}

@JS()
@staticInterop
@anonymous
class RTCVideoSourceStats implements RTCMediaSourceStats {
  external factory RTCVideoSourceStats({
    JSNumber width,
    JSNumber height,
    JSNumber frames,
    JSNumber framesPerSecond,
  });
}

extension RTCVideoSourceStatsExtension on RTCVideoSourceStats {
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
  external set frames(JSNumber value);
  external JSNumber get frames;
  external set framesPerSecond(JSNumber value);
  external JSNumber get framesPerSecond;
}

@JS()
@staticInterop
@anonymous
class RTCAudioPlayoutStats implements RTCStats {
  external factory RTCAudioPlayoutStats({
    required JSString kind,
    JSNumber synthesizedSamplesDuration,
    JSNumber synthesizedSamplesEvents,
    JSNumber totalSamplesDuration,
    JSNumber totalPlayoutDelay,
    JSNumber totalSamplesCount,
  });
}

extension RTCAudioPlayoutStatsExtension on RTCAudioPlayoutStats {
  external set kind(JSString value);
  external JSString get kind;
  external set synthesizedSamplesDuration(JSNumber value);
  external JSNumber get synthesizedSamplesDuration;
  external set synthesizedSamplesEvents(JSNumber value);
  external JSNumber get synthesizedSamplesEvents;
  external set totalSamplesDuration(JSNumber value);
  external JSNumber get totalSamplesDuration;
  external set totalPlayoutDelay(JSNumber value);
  external JSNumber get totalPlayoutDelay;
  external set totalSamplesCount(JSNumber value);
  external JSNumber get totalSamplesCount;
}

@JS()
@staticInterop
@anonymous
class RTCPeerConnectionStats implements RTCStats {
  external factory RTCPeerConnectionStats({
    JSNumber dataChannelsOpened,
    JSNumber dataChannelsClosed,
  });
}

extension RTCPeerConnectionStatsExtension on RTCPeerConnectionStats {
  external set dataChannelsOpened(JSNumber value);
  external JSNumber get dataChannelsOpened;
  external set dataChannelsClosed(JSNumber value);
  external JSNumber get dataChannelsClosed;
}

@JS()
@staticInterop
@anonymous
class RTCDataChannelStats implements RTCStats {
  external factory RTCDataChannelStats({
    JSString label,
    JSString protocol,
    JSNumber dataChannelIdentifier,
    required RTCDataChannelState state,
    JSNumber messagesSent,
    JSNumber bytesSent,
    JSNumber messagesReceived,
    JSNumber bytesReceived,
  });
}

extension RTCDataChannelStatsExtension on RTCDataChannelStats {
  external set label(JSString value);
  external JSString get label;
  external set protocol(JSString value);
  external JSString get protocol;
  external set dataChannelIdentifier(JSNumber value);
  external JSNumber get dataChannelIdentifier;
  external set state(RTCDataChannelState value);
  external RTCDataChannelState get state;
  external set messagesSent(JSNumber value);
  external JSNumber get messagesSent;
  external set bytesSent(JSNumber value);
  external JSNumber get bytesSent;
  external set messagesReceived(JSNumber value);
  external JSNumber get messagesReceived;
  external set bytesReceived(JSNumber value);
  external JSNumber get bytesReceived;
}

@JS()
@staticInterop
@anonymous
class RTCTransportStats implements RTCStats {
  external factory RTCTransportStats({
    JSNumber packetsSent,
    JSNumber packetsReceived,
    JSNumber bytesSent,
    JSNumber bytesReceived,
    RTCIceRole iceRole,
    JSString iceLocalUsernameFragment,
    required RTCDtlsTransportState dtlsState,
    RTCIceTransportState iceState,
    JSString selectedCandidatePairId,
    JSString localCertificateId,
    JSString remoteCertificateId,
    JSString tlsVersion,
    JSString dtlsCipher,
    RTCDtlsRole dtlsRole,
    JSString srtpCipher,
    JSNumber selectedCandidatePairChanges,
  });
}

extension RTCTransportStatsExtension on RTCTransportStats {
  external set packetsSent(JSNumber value);
  external JSNumber get packetsSent;
  external set packetsReceived(JSNumber value);
  external JSNumber get packetsReceived;
  external set bytesSent(JSNumber value);
  external JSNumber get bytesSent;
  external set bytesReceived(JSNumber value);
  external JSNumber get bytesReceived;
  external set iceRole(RTCIceRole value);
  external RTCIceRole get iceRole;
  external set iceLocalUsernameFragment(JSString value);
  external JSString get iceLocalUsernameFragment;
  external set dtlsState(RTCDtlsTransportState value);
  external RTCDtlsTransportState get dtlsState;
  external set iceState(RTCIceTransportState value);
  external RTCIceTransportState get iceState;
  external set selectedCandidatePairId(JSString value);
  external JSString get selectedCandidatePairId;
  external set localCertificateId(JSString value);
  external JSString get localCertificateId;
  external set remoteCertificateId(JSString value);
  external JSString get remoteCertificateId;
  external set tlsVersion(JSString value);
  external JSString get tlsVersion;
  external set dtlsCipher(JSString value);
  external JSString get dtlsCipher;
  external set dtlsRole(RTCDtlsRole value);
  external RTCDtlsRole get dtlsRole;
  external set srtpCipher(JSString value);
  external JSString get srtpCipher;
  external set selectedCandidatePairChanges(JSNumber value);
  external JSNumber get selectedCandidatePairChanges;
}

@JS()
@staticInterop
@anonymous
class RTCIceCandidateStats implements RTCStats {
  external factory RTCIceCandidateStats({
    required JSString transportId,
    JSString? address,
    JSNumber port,
    JSString protocol,
    required RTCIceCandidateType candidateType,
    JSNumber priority,
    JSString url,
    RTCIceServerTransportProtocol relayProtocol,
    JSString foundation,
    JSString relatedAddress,
    JSNumber relatedPort,
    JSString usernameFragment,
    RTCIceTcpCandidateType tcpType,
  });
}

extension RTCIceCandidateStatsExtension on RTCIceCandidateStats {
  external set transportId(JSString value);
  external JSString get transportId;
  external set address(JSString? value);
  external JSString? get address;
  external set port(JSNumber value);
  external JSNumber get port;
  external set protocol(JSString value);
  external JSString get protocol;
  external set candidateType(RTCIceCandidateType value);
  external RTCIceCandidateType get candidateType;
  external set priority(JSNumber value);
  external JSNumber get priority;
  external set url(JSString value);
  external JSString get url;
  external set relayProtocol(RTCIceServerTransportProtocol value);
  external RTCIceServerTransportProtocol get relayProtocol;
  external set foundation(JSString value);
  external JSString get foundation;
  external set relatedAddress(JSString value);
  external JSString get relatedAddress;
  external set relatedPort(JSNumber value);
  external JSNumber get relatedPort;
  external set usernameFragment(JSString value);
  external JSString get usernameFragment;
  external set tcpType(RTCIceTcpCandidateType value);
  external RTCIceTcpCandidateType get tcpType;
}

@JS()
@staticInterop
@anonymous
class RTCIceCandidatePairStats implements RTCStats {
  external factory RTCIceCandidatePairStats({
    required JSString transportId,
    required JSString localCandidateId,
    required JSString remoteCandidateId,
    required RTCStatsIceCandidatePairState state,
    JSBoolean nominated,
    JSNumber packetsSent,
    JSNumber packetsReceived,
    JSNumber bytesSent,
    JSNumber bytesReceived,
    DOMHighResTimeStamp lastPacketSentTimestamp,
    DOMHighResTimeStamp lastPacketReceivedTimestamp,
    JSNumber totalRoundTripTime,
    JSNumber currentRoundTripTime,
    JSNumber availableOutgoingBitrate,
    JSNumber availableIncomingBitrate,
    JSNumber requestsReceived,
    JSNumber requestsSent,
    JSNumber responsesReceived,
    JSNumber responsesSent,
    JSNumber consentRequestsSent,
    JSNumber packetsDiscardedOnSend,
    JSNumber bytesDiscardedOnSend,
  });
}

extension RTCIceCandidatePairStatsExtension on RTCIceCandidatePairStats {
  external set transportId(JSString value);
  external JSString get transportId;
  external set localCandidateId(JSString value);
  external JSString get localCandidateId;
  external set remoteCandidateId(JSString value);
  external JSString get remoteCandidateId;
  external set state(RTCStatsIceCandidatePairState value);
  external RTCStatsIceCandidatePairState get state;
  external set nominated(JSBoolean value);
  external JSBoolean get nominated;
  external set packetsSent(JSNumber value);
  external JSNumber get packetsSent;
  external set packetsReceived(JSNumber value);
  external JSNumber get packetsReceived;
  external set bytesSent(JSNumber value);
  external JSNumber get bytesSent;
  external set bytesReceived(JSNumber value);
  external JSNumber get bytesReceived;
  external set lastPacketSentTimestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get lastPacketSentTimestamp;
  external set lastPacketReceivedTimestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get lastPacketReceivedTimestamp;
  external set totalRoundTripTime(JSNumber value);
  external JSNumber get totalRoundTripTime;
  external set currentRoundTripTime(JSNumber value);
  external JSNumber get currentRoundTripTime;
  external set availableOutgoingBitrate(JSNumber value);
  external JSNumber get availableOutgoingBitrate;
  external set availableIncomingBitrate(JSNumber value);
  external JSNumber get availableIncomingBitrate;
  external set requestsReceived(JSNumber value);
  external JSNumber get requestsReceived;
  external set requestsSent(JSNumber value);
  external JSNumber get requestsSent;
  external set responsesReceived(JSNumber value);
  external JSNumber get responsesReceived;
  external set responsesSent(JSNumber value);
  external JSNumber get responsesSent;
  external set consentRequestsSent(JSNumber value);
  external JSNumber get consentRequestsSent;
  external set packetsDiscardedOnSend(JSNumber value);
  external JSNumber get packetsDiscardedOnSend;
  external set bytesDiscardedOnSend(JSNumber value);
  external JSNumber get bytesDiscardedOnSend;
}

@JS()
@staticInterop
@anonymous
class RTCCertificateStats implements RTCStats {
  external factory RTCCertificateStats({
    required JSString fingerprint,
    required JSString fingerprintAlgorithm,
    required JSString base64Certificate,
    JSString issuerCertificateId,
  });
}

extension RTCCertificateStatsExtension on RTCCertificateStats {
  external set fingerprint(JSString value);
  external JSString get fingerprint;
  external set fingerprintAlgorithm(JSString value);
  external JSString get fingerprintAlgorithm;
  external set base64Certificate(JSString value);
  external JSString get base64Certificate;
  external set issuerCertificateId(JSString value);
  external JSString get issuerCertificateId;
}
