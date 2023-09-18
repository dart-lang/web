// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'hr_time.dart';
import 'webrtc.dart';

typedef RTCStatsType = String;
typedef RTCQualityLimitationReason = String;
typedef RTCDtlsRole = String;
typedef RTCStatsIceCandidatePairState = String;

@JS()
@staticInterop
@anonymous
class RTCRtpStreamStats implements RTCStats {
  external factory RTCRtpStreamStats({
    required int ssrc,
    required String kind,
    String transportId,
    String codecId,
  });
}

extension RTCRtpStreamStatsExtension on RTCRtpStreamStats {
  external set ssrc(int value);
  external int get ssrc;
  external set kind(String value);
  external String get kind;
  external set transportId(String value);
  external String get transportId;
  external set codecId(String value);
  external String get codecId;
}

@JS()
@staticInterop
@anonymous
class RTCCodecStats implements RTCStats {
  external factory RTCCodecStats({
    required int payloadType,
    required String transportId,
    required String mimeType,
    int clockRate,
    int channels,
    String sdpFmtpLine,
  });
}

extension RTCCodecStatsExtension on RTCCodecStats {
  external set payloadType(int value);
  external int get payloadType;
  external set transportId(String value);
  external String get transportId;
  external set mimeType(String value);
  external String get mimeType;
  external set clockRate(int value);
  external int get clockRate;
  external set channels(int value);
  external int get channels;
  external set sdpFmtpLine(String value);
  external String get sdpFmtpLine;
}

@JS()
@staticInterop
@anonymous
class RTCReceivedRtpStreamStats implements RTCRtpStreamStats {
  external factory RTCReceivedRtpStreamStats({
    int packetsReceived,
    int packetsLost,
    double jitter,
  });
}

extension RTCReceivedRtpStreamStatsExtension on RTCReceivedRtpStreamStats {
  external set packetsReceived(int value);
  external int get packetsReceived;
  external set packetsLost(int value);
  external int get packetsLost;
  external set jitter(double value);
  external double get jitter;
}

@JS()
@staticInterop
@anonymous
class RTCInboundRtpStreamStats implements RTCReceivedRtpStreamStats {
  external factory RTCInboundRtpStreamStats({
    required String trackIdentifier,
    String mid,
    String remoteId,
    int framesDecoded,
    int keyFramesDecoded,
    int framesRendered,
    int framesDropped,
    int frameWidth,
    int frameHeight,
    double framesPerSecond,
    int qpSum,
    double totalDecodeTime,
    double totalInterFrameDelay,
    double totalSquaredInterFrameDelay,
    int pauseCount,
    double totalPausesDuration,
    int freezeCount,
    double totalFreezesDuration,
    DOMHighResTimeStamp lastPacketReceivedTimestamp,
    int headerBytesReceived,
    int packetsDiscarded,
    int fecBytesReceived,
    int fecPacketsReceived,
    int fecPacketsDiscarded,
    int bytesReceived,
    int nackCount,
    int firCount,
    int pliCount,
    double totalProcessingDelay,
    DOMHighResTimeStamp estimatedPlayoutTimestamp,
    double jitterBufferDelay,
    double jitterBufferTargetDelay,
    int jitterBufferEmittedCount,
    double jitterBufferMinimumDelay,
    int totalSamplesReceived,
    int concealedSamples,
    int silentConcealedSamples,
    int concealmentEvents,
    int insertedSamplesForDeceleration,
    int removedSamplesForAcceleration,
    double audioLevel,
    double totalAudioEnergy,
    double totalSamplesDuration,
    int framesReceived,
    String decoderImplementation,
    String playoutId,
    bool powerEfficientDecoder,
    int framesAssembledFromMultiplePackets,
    double totalAssemblyTime,
    int retransmittedPacketsReceived,
    int retransmittedBytesReceived,
    int rtxSsrc,
    int fecSsrc,
  });
}

extension RTCInboundRtpStreamStatsExtension on RTCInboundRtpStreamStats {
  external set trackIdentifier(String value);
  external String get trackIdentifier;
  external set mid(String value);
  external String get mid;
  external set remoteId(String value);
  external String get remoteId;
  external set framesDecoded(int value);
  external int get framesDecoded;
  external set keyFramesDecoded(int value);
  external int get keyFramesDecoded;
  external set framesRendered(int value);
  external int get framesRendered;
  external set framesDropped(int value);
  external int get framesDropped;
  external set frameWidth(int value);
  external int get frameWidth;
  external set frameHeight(int value);
  external int get frameHeight;
  external set framesPerSecond(double value);
  external double get framesPerSecond;
  external set qpSum(int value);
  external int get qpSum;
  external set totalDecodeTime(double value);
  external double get totalDecodeTime;
  external set totalInterFrameDelay(double value);
  external double get totalInterFrameDelay;
  external set totalSquaredInterFrameDelay(double value);
  external double get totalSquaredInterFrameDelay;
  external set pauseCount(int value);
  external int get pauseCount;
  external set totalPausesDuration(double value);
  external double get totalPausesDuration;
  external set freezeCount(int value);
  external int get freezeCount;
  external set totalFreezesDuration(double value);
  external double get totalFreezesDuration;
  external set lastPacketReceivedTimestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get lastPacketReceivedTimestamp;
  external set headerBytesReceived(int value);
  external int get headerBytesReceived;
  external set packetsDiscarded(int value);
  external int get packetsDiscarded;
  external set fecBytesReceived(int value);
  external int get fecBytesReceived;
  external set fecPacketsReceived(int value);
  external int get fecPacketsReceived;
  external set fecPacketsDiscarded(int value);
  external int get fecPacketsDiscarded;
  external set bytesReceived(int value);
  external int get bytesReceived;
  external set nackCount(int value);
  external int get nackCount;
  external set firCount(int value);
  external int get firCount;
  external set pliCount(int value);
  external int get pliCount;
  external set totalProcessingDelay(double value);
  external double get totalProcessingDelay;
  external set estimatedPlayoutTimestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get estimatedPlayoutTimestamp;
  external set jitterBufferDelay(double value);
  external double get jitterBufferDelay;
  external set jitterBufferTargetDelay(double value);
  external double get jitterBufferTargetDelay;
  external set jitterBufferEmittedCount(int value);
  external int get jitterBufferEmittedCount;
  external set jitterBufferMinimumDelay(double value);
  external double get jitterBufferMinimumDelay;
  external set totalSamplesReceived(int value);
  external int get totalSamplesReceived;
  external set concealedSamples(int value);
  external int get concealedSamples;
  external set silentConcealedSamples(int value);
  external int get silentConcealedSamples;
  external set concealmentEvents(int value);
  external int get concealmentEvents;
  external set insertedSamplesForDeceleration(int value);
  external int get insertedSamplesForDeceleration;
  external set removedSamplesForAcceleration(int value);
  external int get removedSamplesForAcceleration;
  external set audioLevel(double value);
  external double get audioLevel;
  external set totalAudioEnergy(double value);
  external double get totalAudioEnergy;
  external set totalSamplesDuration(double value);
  external double get totalSamplesDuration;
  external set framesReceived(int value);
  external int get framesReceived;
  external set decoderImplementation(String value);
  external String get decoderImplementation;
  external set playoutId(String value);
  external String get playoutId;
  external set powerEfficientDecoder(bool value);
  external bool get powerEfficientDecoder;
  external set framesAssembledFromMultiplePackets(int value);
  external int get framesAssembledFromMultiplePackets;
  external set totalAssemblyTime(double value);
  external double get totalAssemblyTime;
  external set retransmittedPacketsReceived(int value);
  external int get retransmittedPacketsReceived;
  external set retransmittedBytesReceived(int value);
  external int get retransmittedBytesReceived;
  external set rtxSsrc(int value);
  external int get rtxSsrc;
  external set fecSsrc(int value);
  external int get fecSsrc;
}

@JS()
@staticInterop
@anonymous
class RTCRemoteInboundRtpStreamStats implements RTCReceivedRtpStreamStats {
  external factory RTCRemoteInboundRtpStreamStats({
    String localId,
    double roundTripTime,
    double totalRoundTripTime,
    double fractionLost,
    int roundTripTimeMeasurements,
  });
}

extension RTCRemoteInboundRtpStreamStatsExtension
    on RTCRemoteInboundRtpStreamStats {
  external set localId(String value);
  external String get localId;
  external set roundTripTime(double value);
  external double get roundTripTime;
  external set totalRoundTripTime(double value);
  external double get totalRoundTripTime;
  external set fractionLost(double value);
  external double get fractionLost;
  external set roundTripTimeMeasurements(int value);
  external int get roundTripTimeMeasurements;
}

@JS()
@staticInterop
@anonymous
class RTCSentRtpStreamStats implements RTCRtpStreamStats {
  external factory RTCSentRtpStreamStats({
    int packetsSent,
    int bytesSent,
  });
}

extension RTCSentRtpStreamStatsExtension on RTCSentRtpStreamStats {
  external set packetsSent(int value);
  external int get packetsSent;
  external set bytesSent(int value);
  external int get bytesSent;
}

@JS()
@staticInterop
@anonymous
class RTCOutboundRtpStreamStats implements RTCSentRtpStreamStats {
  external factory RTCOutboundRtpStreamStats({
    String mid,
    String mediaSourceId,
    String remoteId,
    String rid,
    int headerBytesSent,
    int retransmittedPacketsSent,
    int retransmittedBytesSent,
    int rtxSsrc,
    double targetBitrate,
    int totalEncodedBytesTarget,
    int frameWidth,
    int frameHeight,
    double framesPerSecond,
    int framesSent,
    int hugeFramesSent,
    int framesEncoded,
    int keyFramesEncoded,
    int qpSum,
    double totalEncodeTime,
    double totalPacketSendDelay,
    RTCQualityLimitationReason qualityLimitationReason,
    JSAny? qualityLimitationDurations,
    int qualityLimitationResolutionChanges,
    int nackCount,
    int firCount,
    int pliCount,
    String encoderImplementation,
    bool powerEfficientEncoder,
    bool active,
    String scalabilityMode,
  });
}

extension RTCOutboundRtpStreamStatsExtension on RTCOutboundRtpStreamStats {
  external set mid(String value);
  external String get mid;
  external set mediaSourceId(String value);
  external String get mediaSourceId;
  external set remoteId(String value);
  external String get remoteId;
  external set rid(String value);
  external String get rid;
  external set headerBytesSent(int value);
  external int get headerBytesSent;
  external set retransmittedPacketsSent(int value);
  external int get retransmittedPacketsSent;
  external set retransmittedBytesSent(int value);
  external int get retransmittedBytesSent;
  external set rtxSsrc(int value);
  external int get rtxSsrc;
  external set targetBitrate(double value);
  external double get targetBitrate;
  external set totalEncodedBytesTarget(int value);
  external int get totalEncodedBytesTarget;
  external set frameWidth(int value);
  external int get frameWidth;
  external set frameHeight(int value);
  external int get frameHeight;
  external set framesPerSecond(double value);
  external double get framesPerSecond;
  external set framesSent(int value);
  external int get framesSent;
  external set hugeFramesSent(int value);
  external int get hugeFramesSent;
  external set framesEncoded(int value);
  external int get framesEncoded;
  external set keyFramesEncoded(int value);
  external int get keyFramesEncoded;
  external set qpSum(int value);
  external int get qpSum;
  external set totalEncodeTime(double value);
  external double get totalEncodeTime;
  external set totalPacketSendDelay(double value);
  external double get totalPacketSendDelay;
  external set qualityLimitationReason(RTCQualityLimitationReason value);
  external RTCQualityLimitationReason get qualityLimitationReason;
  external set qualityLimitationDurations(JSAny? value);
  external JSAny? get qualityLimitationDurations;
  external set qualityLimitationResolutionChanges(int value);
  external int get qualityLimitationResolutionChanges;
  external set nackCount(int value);
  external int get nackCount;
  external set firCount(int value);
  external int get firCount;
  external set pliCount(int value);
  external int get pliCount;
  external set encoderImplementation(String value);
  external String get encoderImplementation;
  external set powerEfficientEncoder(bool value);
  external bool get powerEfficientEncoder;
  external set active(bool value);
  external bool get active;
  external set scalabilityMode(String value);
  external String get scalabilityMode;
}

@JS()
@staticInterop
@anonymous
class RTCRemoteOutboundRtpStreamStats implements RTCSentRtpStreamStats {
  external factory RTCRemoteOutboundRtpStreamStats({
    String localId,
    DOMHighResTimeStamp remoteTimestamp,
    int reportsSent,
    double roundTripTime,
    double totalRoundTripTime,
    int roundTripTimeMeasurements,
  });
}

extension RTCRemoteOutboundRtpStreamStatsExtension
    on RTCRemoteOutboundRtpStreamStats {
  external set localId(String value);
  external String get localId;
  external set remoteTimestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get remoteTimestamp;
  external set reportsSent(int value);
  external int get reportsSent;
  external set roundTripTime(double value);
  external double get roundTripTime;
  external set totalRoundTripTime(double value);
  external double get totalRoundTripTime;
  external set roundTripTimeMeasurements(int value);
  external int get roundTripTimeMeasurements;
}

@JS()
@staticInterop
@anonymous
class RTCMediaSourceStats implements RTCStats {
  external factory RTCMediaSourceStats({
    required String trackIdentifier,
    required String kind,
  });
}

extension RTCMediaSourceStatsExtension on RTCMediaSourceStats {
  external set trackIdentifier(String value);
  external String get trackIdentifier;
  external set kind(String value);
  external String get kind;
}

@JS()
@staticInterop
@anonymous
class RTCAudioSourceStats implements RTCMediaSourceStats {
  external factory RTCAudioSourceStats({
    double audioLevel,
    double totalAudioEnergy,
    double totalSamplesDuration,
    double echoReturnLoss,
    double echoReturnLossEnhancement,
    double droppedSamplesDuration,
    int droppedSamplesEvents,
    double totalCaptureDelay,
    int totalSamplesCaptured,
  });
}

extension RTCAudioSourceStatsExtension on RTCAudioSourceStats {
  external set audioLevel(double value);
  external double get audioLevel;
  external set totalAudioEnergy(double value);
  external double get totalAudioEnergy;
  external set totalSamplesDuration(double value);
  external double get totalSamplesDuration;
  external set echoReturnLoss(double value);
  external double get echoReturnLoss;
  external set echoReturnLossEnhancement(double value);
  external double get echoReturnLossEnhancement;
  external set droppedSamplesDuration(double value);
  external double get droppedSamplesDuration;
  external set droppedSamplesEvents(int value);
  external int get droppedSamplesEvents;
  external set totalCaptureDelay(double value);
  external double get totalCaptureDelay;
  external set totalSamplesCaptured(int value);
  external int get totalSamplesCaptured;
}

@JS()
@staticInterop
@anonymous
class RTCVideoSourceStats implements RTCMediaSourceStats {
  external factory RTCVideoSourceStats({
    int width,
    int height,
    int frames,
    double framesPerSecond,
  });
}

extension RTCVideoSourceStatsExtension on RTCVideoSourceStats {
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
  external set frames(int value);
  external int get frames;
  external set framesPerSecond(double value);
  external double get framesPerSecond;
}

@JS()
@staticInterop
@anonymous
class RTCAudioPlayoutStats implements RTCStats {
  external factory RTCAudioPlayoutStats({
    required String kind,
    double synthesizedSamplesDuration,
    int synthesizedSamplesEvents,
    double totalSamplesDuration,
    double totalPlayoutDelay,
    int totalSamplesCount,
  });
}

extension RTCAudioPlayoutStatsExtension on RTCAudioPlayoutStats {
  external set kind(String value);
  external String get kind;
  external set synthesizedSamplesDuration(double value);
  external double get synthesizedSamplesDuration;
  external set synthesizedSamplesEvents(int value);
  external int get synthesizedSamplesEvents;
  external set totalSamplesDuration(double value);
  external double get totalSamplesDuration;
  external set totalPlayoutDelay(double value);
  external double get totalPlayoutDelay;
  external set totalSamplesCount(int value);
  external int get totalSamplesCount;
}

@JS()
@staticInterop
@anonymous
class RTCPeerConnectionStats implements RTCStats {
  external factory RTCPeerConnectionStats({
    int dataChannelsOpened,
    int dataChannelsClosed,
  });
}

extension RTCPeerConnectionStatsExtension on RTCPeerConnectionStats {
  external set dataChannelsOpened(int value);
  external int get dataChannelsOpened;
  external set dataChannelsClosed(int value);
  external int get dataChannelsClosed;
}

@JS()
@staticInterop
@anonymous
class RTCDataChannelStats implements RTCStats {
  external factory RTCDataChannelStats({
    String label,
    String protocol,
    int dataChannelIdentifier,
    required RTCDataChannelState state,
    int messagesSent,
    int bytesSent,
    int messagesReceived,
    int bytesReceived,
  });
}

extension RTCDataChannelStatsExtension on RTCDataChannelStats {
  external set label(String value);
  external String get label;
  external set protocol(String value);
  external String get protocol;
  external set dataChannelIdentifier(int value);
  external int get dataChannelIdentifier;
  external set state(RTCDataChannelState value);
  external RTCDataChannelState get state;
  external set messagesSent(int value);
  external int get messagesSent;
  external set bytesSent(int value);
  external int get bytesSent;
  external set messagesReceived(int value);
  external int get messagesReceived;
  external set bytesReceived(int value);
  external int get bytesReceived;
}

@JS()
@staticInterop
@anonymous
class RTCTransportStats implements RTCStats {
  external factory RTCTransportStats({
    int packetsSent,
    int packetsReceived,
    int bytesSent,
    int bytesReceived,
    RTCIceRole iceRole,
    String iceLocalUsernameFragment,
    required RTCDtlsTransportState dtlsState,
    RTCIceTransportState iceState,
    String selectedCandidatePairId,
    String localCertificateId,
    String remoteCertificateId,
    String tlsVersion,
    String dtlsCipher,
    RTCDtlsRole dtlsRole,
    String srtpCipher,
    int selectedCandidatePairChanges,
  });
}

extension RTCTransportStatsExtension on RTCTransportStats {
  external set packetsSent(int value);
  external int get packetsSent;
  external set packetsReceived(int value);
  external int get packetsReceived;
  external set bytesSent(int value);
  external int get bytesSent;
  external set bytesReceived(int value);
  external int get bytesReceived;
  external set iceRole(RTCIceRole value);
  external RTCIceRole get iceRole;
  external set iceLocalUsernameFragment(String value);
  external String get iceLocalUsernameFragment;
  external set dtlsState(RTCDtlsTransportState value);
  external RTCDtlsTransportState get dtlsState;
  external set iceState(RTCIceTransportState value);
  external RTCIceTransportState get iceState;
  external set selectedCandidatePairId(String value);
  external String get selectedCandidatePairId;
  external set localCertificateId(String value);
  external String get localCertificateId;
  external set remoteCertificateId(String value);
  external String get remoteCertificateId;
  external set tlsVersion(String value);
  external String get tlsVersion;
  external set dtlsCipher(String value);
  external String get dtlsCipher;
  external set dtlsRole(RTCDtlsRole value);
  external RTCDtlsRole get dtlsRole;
  external set srtpCipher(String value);
  external String get srtpCipher;
  external set selectedCandidatePairChanges(int value);
  external int get selectedCandidatePairChanges;
}

@JS()
@staticInterop
@anonymous
class RTCIceCandidateStats implements RTCStats {
  external factory RTCIceCandidateStats({
    required String transportId,
    String? address,
    int port,
    String protocol,
    required RTCIceCandidateType candidateType,
    int priority,
    String url,
    RTCIceServerTransportProtocol relayProtocol,
    String foundation,
    String relatedAddress,
    int relatedPort,
    String usernameFragment,
    RTCIceTcpCandidateType tcpType,
  });
}

extension RTCIceCandidateStatsExtension on RTCIceCandidateStats {
  external set transportId(String value);
  external String get transportId;
  external set address(String? value);
  external String? get address;
  external set port(int value);
  external int get port;
  external set protocol(String value);
  external String get protocol;
  external set candidateType(RTCIceCandidateType value);
  external RTCIceCandidateType get candidateType;
  external set priority(int value);
  external int get priority;
  external set url(String value);
  external String get url;
  external set relayProtocol(RTCIceServerTransportProtocol value);
  external RTCIceServerTransportProtocol get relayProtocol;
  external set foundation(String value);
  external String get foundation;
  external set relatedAddress(String value);
  external String get relatedAddress;
  external set relatedPort(int value);
  external int get relatedPort;
  external set usernameFragment(String value);
  external String get usernameFragment;
  external set tcpType(RTCIceTcpCandidateType value);
  external RTCIceTcpCandidateType get tcpType;
}

@JS()
@staticInterop
@anonymous
class RTCIceCandidatePairStats implements RTCStats {
  external factory RTCIceCandidatePairStats({
    required String transportId,
    required String localCandidateId,
    required String remoteCandidateId,
    required RTCStatsIceCandidatePairState state,
    bool nominated,
    int packetsSent,
    int packetsReceived,
    int bytesSent,
    int bytesReceived,
    DOMHighResTimeStamp lastPacketSentTimestamp,
    DOMHighResTimeStamp lastPacketReceivedTimestamp,
    double totalRoundTripTime,
    double currentRoundTripTime,
    double availableOutgoingBitrate,
    double availableIncomingBitrate,
    int requestsReceived,
    int requestsSent,
    int responsesReceived,
    int responsesSent,
    int consentRequestsSent,
    int packetsDiscardedOnSend,
    int bytesDiscardedOnSend,
  });
}

extension RTCIceCandidatePairStatsExtension on RTCIceCandidatePairStats {
  external set transportId(String value);
  external String get transportId;
  external set localCandidateId(String value);
  external String get localCandidateId;
  external set remoteCandidateId(String value);
  external String get remoteCandidateId;
  external set state(RTCStatsIceCandidatePairState value);
  external RTCStatsIceCandidatePairState get state;
  external set nominated(bool value);
  external bool get nominated;
  external set packetsSent(int value);
  external int get packetsSent;
  external set packetsReceived(int value);
  external int get packetsReceived;
  external set bytesSent(int value);
  external int get bytesSent;
  external set bytesReceived(int value);
  external int get bytesReceived;
  external set lastPacketSentTimestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get lastPacketSentTimestamp;
  external set lastPacketReceivedTimestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get lastPacketReceivedTimestamp;
  external set totalRoundTripTime(double value);
  external double get totalRoundTripTime;
  external set currentRoundTripTime(double value);
  external double get currentRoundTripTime;
  external set availableOutgoingBitrate(double value);
  external double get availableOutgoingBitrate;
  external set availableIncomingBitrate(double value);
  external double get availableIncomingBitrate;
  external set requestsReceived(int value);
  external int get requestsReceived;
  external set requestsSent(int value);
  external int get requestsSent;
  external set responsesReceived(int value);
  external int get responsesReceived;
  external set responsesSent(int value);
  external int get responsesSent;
  external set consentRequestsSent(int value);
  external int get consentRequestsSent;
  external set packetsDiscardedOnSend(int value);
  external int get packetsDiscardedOnSend;
  external set bytesDiscardedOnSend(int value);
  external int get bytesDiscardedOnSend;
}

@JS()
@staticInterop
@anonymous
class RTCCertificateStats implements RTCStats {
  external factory RTCCertificateStats({
    required String fingerprint,
    required String fingerprintAlgorithm,
    required String base64Certificate,
    String issuerCertificateId,
  });
}

extension RTCCertificateStatsExtension on RTCCertificateStats {
  external set fingerprint(String value);
  external String get fingerprint;
  external set fingerprintAlgorithm(String value);
  external String get fingerprintAlgorithm;
  external set base64Certificate(String value);
  external String get base64Certificate;
  external set issuerCertificateId(String value);
  external String get issuerCertificateId;
}
