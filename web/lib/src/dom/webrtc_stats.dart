// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'hr_time.dart';
import 'webrtc.dart';

typedef RTCStatsType = String;
typedef RTCQualityLimitationReason = String;
typedef RTCDtlsRole = String;
typedef RTCStatsIceCandidatePairState = String;
extension type RTCRtpStreamStats._(JSObject _) implements RTCStats, JSObject {
  external factory RTCRtpStreamStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required int ssrc,
    required String kind,
    String transportId,
    String codecId,
  });

  external int get ssrc;
  external set ssrc(int value);
  external String get kind;
  external set kind(String value);
  external String get transportId;
  external set transportId(String value);
  external String get codecId;
  external set codecId(String value);
}

/// The **`RTCCodecStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// provides statistics about a codec used by  streams that are being sent or
/// received by the associated [RTCPeerConnection] object.
///
/// These statistics can be obtained by iterating the [RTCStatsReport] object
/// returned by [RTCPeerConnection.getStats] until you find an entry with the
/// [`type`](#type) of `codec`.
///
/// The codec statistics can be correlated with the inbound or outbound stream
/// statistics (both local and remote) by matching their `codecId` property to
/// the codec's `id`.
/// For example, if
/// [`RTCInboundRtpStreamStats.codecId`](/en-US/docs/Web/API/RTCInboundRtpStreamStats#codecid)
/// matches an [`RTCCodecStats.id`](#id) in the same report, then we know that
/// the codec is being used on this peer connection's inbound stream.
/// If no stream `codecId` references a codec statistic, then that codec
/// statistic object is deleted — if the codec is used again, the statistics
/// object will be recreated with the same `id`.
///
/// Codec objects may be referenced by multiple RTP streams in media sections
/// using the same transport.
/// In fact, user agents are expected to consolidate information into a single
/// "codec" entry per payload type per transport (unless
/// [sdpFmtpLine](#sdpfmtpline) is different when sending or receiving, in which
/// case, different codecs will be needed for encoding and decoding).
/// Note that other transports will use their own distinct `RTCCodecStats`
/// objects.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCCodecStats).
extension type RTCCodecStats._(JSObject _) implements RTCStats, JSObject {
  external factory RTCCodecStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required int payloadType,
    required String transportId,
    required String mimeType,
    int clockRate,
    int channels,
    String sdpFmtpLine,
  });

  /// The **`payloadType`** property of the [RTCCodecStats] dictionary is a
  /// positive integer in the range from 0 to 127 that describes the format of
  /// the  payload used in RTP encoding or decoding.
  external int get payloadType;
  external set payloadType(int value);

  /// The **`transportId`** property of the [RTCCodecStats] dictionary is a
  /// string that contains the unique identifier of the corresponding transport
  /// on which this codec is being used.
  ///
  /// You can correlate the codec and associated transport statistics by
  /// matching the `RTCCodecStats.transportId` with an [RTCTransportStats.id]
  /// value.
  external String get transportId;
  external set transportId(String value);

  /// The **`mimeType`** property of the [RTCCodecStats] dictionary is a string
  /// containing the codec's  and subtype.
  ///
  /// This is of the form `"type/subtype"`, such as "video/VP8" or "audio/opus",
  /// as defined in the
  /// [IANA registry of valid MIME types](https://www.iana.org/assignments/rtp-parameters/rtp-parameters.xhtml#rtp-parameters-2).
  external String get mimeType;
  external set mimeType(String value);

  /// The **`clockRate`** property of the [RTCCodecStats] dictionary is a
  /// positive number containing the media sampling rate in hertz (Hz).
  external int get clockRate;
  external set clockRate(int value);

  /// The **`channels`** property of the [RTCCodecStats] dictionary is a
  /// positive number containing the number of channels supported by the codec.
  ///
  /// For audio codecs, a value of 1 specifies monaural sound while 2 indicates
  /// stereo.
  external int get channels;
  external set channels(int value);

  /// The **`sdpFmtpLine`** property of the [RTCCodecStats] dictionary is a
  /// string containing the format-specific parameters of the codec.
  ///
  /// These are the values in the `"a=fmtp"` line in the codec's  (if present)
  /// after the payload type number (see [section 5.8 of the IETF specification
  /// for
  /// JSEP](https://datatracker.ietf.org/doc/html/draft-ietf-rtcweb-jsep-24#section-5.8)).
  external String get sdpFmtpLine;
  external set sdpFmtpLine(String value);
}
extension type RTCReceivedRtpStreamStats._(JSObject _)
    implements RTCRtpStreamStats, JSObject {
  external factory RTCReceivedRtpStreamStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required int ssrc,
    required String kind,
    String transportId,
    String codecId,
    int packetsReceived,
    int packetsReceivedWithEct1,
    int packetsReceivedWithCe,
    int packetsReportedAsLost,
    int packetsReportedAsLostButRecovered,
    int packetsLost,
    num jitter,
  });

  external int get packetsReceived;
  external set packetsReceived(int value);
  external int get packetsReceivedWithEct1;
  external set packetsReceivedWithEct1(int value);
  external int get packetsReceivedWithCe;
  external set packetsReceivedWithCe(int value);
  external int get packetsReportedAsLost;
  external set packetsReportedAsLost(int value);
  external int get packetsReportedAsLostButRecovered;
  external set packetsReportedAsLostButRecovered(int value);
  external int get packetsLost;
  external set packetsLost(int value);
  external double get jitter;
  external set jitter(num value);
}

/// The **`RTCInboundRtpStreamStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API) is
/// used to report statistics related to the receiving end of an RTP stream on
/// the local end of the [RTCPeerConnection].
///
/// The statistics can be obtained by iterating the [RTCStatsReport] returned by
/// [RTCPeerConnection.getStats] or [RTCRtpReceiver.getStats] until you find a
/// report with the [`type`](#type) of `inbound-rtp`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCInboundRtpStreamStats).
extension type RTCInboundRtpStreamStats._(JSObject _)
    implements RTCReceivedRtpStreamStats, JSObject {
  external factory RTCInboundRtpStreamStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required int ssrc,
    required String kind,
    String transportId,
    String codecId,
    int packetsReceived,
    int packetsReceivedWithEct1,
    int packetsReceivedWithCe,
    int packetsReportedAsLost,
    int packetsReportedAsLostButRecovered,
    int packetsLost,
    num jitter,
    required String trackIdentifier,
    String mid,
    String remoteId,
    int framesDecoded,
    int keyFramesDecoded,
    int framesRendered,
    int framesDropped,
    int frameWidth,
    int frameHeight,
    num framesPerSecond,
    int qpSum,
    num totalDecodeTime,
    num totalInterFrameDelay,
    num totalSquaredInterFrameDelay,
    int pauseCount,
    num totalPausesDuration,
    int freezeCount,
    num totalFreezesDuration,
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
    num totalProcessingDelay,
    DOMHighResTimeStamp estimatedPlayoutTimestamp,
    num jitterBufferDelay,
    num jitterBufferTargetDelay,
    int jitterBufferEmittedCount,
    num jitterBufferMinimumDelay,
    int totalSamplesReceived,
    int concealedSamples,
    int silentConcealedSamples,
    int concealmentEvents,
    int insertedSamplesForDeceleration,
    int removedSamplesForAcceleration,
    num audioLevel,
    num totalAudioEnergy,
    num totalSamplesDuration,
    int framesReceived,
    String decoderImplementation,
    String playoutId,
    bool powerEfficientDecoder,
    int framesAssembledFromMultiplePackets,
    num totalAssemblyTime,
    int retransmittedPacketsReceived,
    int retransmittedBytesReceived,
    int rtxSsrc,
    int fecSsrc,
    num totalCorruptionProbability,
    num totalSquaredCorruptionProbability,
    int corruptionMeasurements,
  });

  external String get trackIdentifier;
  external set trackIdentifier(String value);

  /// The **`mid`** property of the [RTCInboundRtpStreamStats] dictionary is a
  /// string that contains the media id negotiated between the local and remote
  /// peers.
  /// This uniquely identifies the pairing of source and destination for the
  /// transceiver's stream.
  external String get mid;
  external set mid(String value);

  /// The **`remoteId`** property of the
  /// [RTCInboundRtpStreamStats] dictionary specifies the
  /// [RTCInboundRtpStreamStats.id] of the [RTCRemoteOutboundRtpStreamStats]
  /// object representing the remote peer's [RTCRtpSender] which is sending the
  /// media to the local peer.
  external String get remoteId;
  external set remoteId(String value);

  /// The **`framesDecoded`** property of
  /// the [RTCInboundRtpStreamStats] dictionary indicates the total number of
  /// frames which have been decoded successfully for this media source.
  external int get framesDecoded;
  external set framesDecoded(int value);
  external int get keyFramesDecoded;
  external set keyFramesDecoded(int value);
  external int get framesRendered;
  external set framesRendered(int value);
  external int get framesDropped;
  external set framesDropped(int value);
  external int get frameWidth;
  external set frameWidth(int value);
  external int get frameHeight;
  external set frameHeight(int value);
  external double get framesPerSecond;
  external set framesPerSecond(num value);

  /// The **`qpSum`** property of the
  /// [RTCInboundRtpStreamStats] dictionary is a value generated by adding the
  /// **Quantization Parameter** (**QP**) values for every frame
  /// sent or received to date on the video track corresponding to this
  /// `RTCInboundRtpStreamStats` object.
  ///
  /// In general, the higher this
  /// number is, the more heavily compressed the video data is.
  external int get qpSum;
  external set qpSum(int value);
  external double get totalDecodeTime;
  external set totalDecodeTime(num value);
  external double get totalInterFrameDelay;
  external set totalInterFrameDelay(num value);
  external double get totalSquaredInterFrameDelay;
  external set totalSquaredInterFrameDelay(num value);
  external int get pauseCount;
  external set pauseCount(int value);
  external double get totalPausesDuration;
  external set totalPausesDuration(num value);
  external int get freezeCount;
  external set freezeCount(int value);
  external double get totalFreezesDuration;
  external set totalFreezesDuration(num value);

  /// The **`lastPacketReceivedTimestamp`** property of the
  /// [RTCInboundRtpStreamStats] dictionary indicates the time at which the most
  /// recently received packet arrived from this source.
  external double get lastPacketReceivedTimestamp;
  external set lastPacketReceivedTimestamp(DOMHighResTimeStamp value);
  external int get headerBytesReceived;
  external set headerBytesReceived(int value);
  external int get packetsDiscarded;
  external set packetsDiscarded(int value);
  external int get fecBytesReceived;
  external set fecBytesReceived(int value);

  /// The **`fecPacketsReceived`** property
  /// of the [RTCInboundRtpStreamStats] dictionary indicates how many
  /// Forward Error Correction (FEC) packets have been received by this RTP
  /// receiver
  /// from the remote peer.
  ///
  /// An FEC packet provides parity information which can
  /// be used to attempt to reconstruct RTP data packets which have been
  /// corrupted in
  /// transit.
  external int get fecPacketsReceived;
  external set fecPacketsReceived(int value);

  /// The **`fecPacketsDiscarded`** property
  /// of the [RTCInboundRtpStreamStats] dictionary is a numeric value
  /// indicating the number of  Forward Error Correction (FEC) packets
  /// that have been discarded.
  external int get fecPacketsDiscarded;
  external set fecPacketsDiscarded(int value);

  /// The [RTCInboundRtpStreamStats] dictionary's
  /// **`bytesReceived`** property is an integer value which
  /// indicates the total number of bytes received so far from this
  /// synchronization source
  /// (SSRC).
  external int get bytesReceived;
  external set bytesReceived(int value);

  /// The **`nackCount`** property of the
  /// [RTCInboundRtpStreamStats] dictionary is a numeric value indicating the
  /// number of times the receiver sent a **NACK** packet to the sender.
  ///
  /// A NACK (Negative ACKnowledgement, also called "Generic NACK") packet tells
  /// the sender
  /// that one or more of the  packets it sent were lost in transport.
  external int get nackCount;
  external set nackCount(int value);
  external int get firCount;
  external set firCount(int value);
  external int get pliCount;
  external set pliCount(int value);
  external double get totalProcessingDelay;
  external set totalProcessingDelay(num value);
  external double get estimatedPlayoutTimestamp;
  external set estimatedPlayoutTimestamp(DOMHighResTimeStamp value);
  external double get jitterBufferDelay;
  external set jitterBufferDelay(num value);
  external double get jitterBufferTargetDelay;
  external set jitterBufferTargetDelay(num value);
  external int get jitterBufferEmittedCount;
  external set jitterBufferEmittedCount(int value);
  external double get jitterBufferMinimumDelay;
  external set jitterBufferMinimumDelay(num value);
  external int get totalSamplesReceived;
  external set totalSamplesReceived(int value);
  external int get concealedSamples;
  external set concealedSamples(int value);
  external int get silentConcealedSamples;
  external set silentConcealedSamples(int value);
  external int get concealmentEvents;
  external set concealmentEvents(int value);
  external int get insertedSamplesForDeceleration;
  external set insertedSamplesForDeceleration(int value);
  external int get removedSamplesForAcceleration;
  external set removedSamplesForAcceleration(int value);
  external double get audioLevel;
  external set audioLevel(num value);
  external double get totalAudioEnergy;
  external set totalAudioEnergy(num value);
  external double get totalSamplesDuration;
  external set totalSamplesDuration(num value);
  external int get framesReceived;
  external set framesReceived(int value);
  external String get decoderImplementation;
  external set decoderImplementation(String value);
  external String get playoutId;
  external set playoutId(String value);
  external bool get powerEfficientDecoder;
  external set powerEfficientDecoder(bool value);
  external int get framesAssembledFromMultiplePackets;
  external set framesAssembledFromMultiplePackets(int value);
  external double get totalAssemblyTime;
  external set totalAssemblyTime(num value);
  external int get retransmittedPacketsReceived;
  external set retransmittedPacketsReceived(int value);
  external int get retransmittedBytesReceived;
  external set retransmittedBytesReceived(int value);
  external int get rtxSsrc;
  external set rtxSsrc(int value);
  external int get fecSsrc;
  external set fecSsrc(int value);
  external double get totalCorruptionProbability;
  external set totalCorruptionProbability(num value);
  external double get totalSquaredCorruptionProbability;
  external set totalSquaredCorruptionProbability(num value);
  external int get corruptionMeasurements;
  external set corruptionMeasurements(int value);
}

/// The **`RTCRemoteInboundRtpStreamStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API) is
/// used to report statistics from the remote endpoint about a particular
/// incoming RTP stream.
/// These will correspond to an outgoing RTP stream at the local end of the
/// [RTCPeerConnection].
///
/// The statistics can be obtained by iterating the [RTCStatsReport] returned by
/// [RTCPeerConnection.getStats] or [RTCRtpReceiver.getStats] until you find a
/// report with the [`type`](#type) of `remote-inbound-rtp`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCRemoteInboundRtpStreamStats).
extension type RTCRemoteInboundRtpStreamStats._(JSObject _)
    implements RTCReceivedRtpStreamStats, JSObject {
  external factory RTCRemoteInboundRtpStreamStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required int ssrc,
    required String kind,
    String transportId,
    String codecId,
    int packetsReceived,
    int packetsReceivedWithEct1,
    int packetsReceivedWithCe,
    int packetsReportedAsLost,
    int packetsReportedAsLostButRecovered,
    int packetsLost,
    num jitter,
    String localId,
    num roundTripTime,
    num totalRoundTripTime,
    num fractionLost,
    int roundTripTimeMeasurements,
    int packetsWithBleachedEct1Marking,
  });

  /// The [RTCRemoteInboundRtpStreamStats] dictionary's **`localId`** property
  /// is a string that can be used to identify the [RTCOutboundRtpStreamStats]
  /// object whose [RTCOutboundRtpStreamStats.remoteId] matches this value.
  ///
  /// Together, these two objects provide statistics about the inbound and
  /// outbound sides of the same [synchronization source
  /// (SSRC)](https://developer.mozilla.org/en-US/docs/Web/API/RTCRemoteInboundRtpStreamStats/ssrc).
  external String get localId;
  external set localId(String value);

  /// The **`roundTripTime`** property of the [RTCRemoteInboundRtpStreamStats]
  /// dictionary indicates the estimated round trip time (RTT) for this
  /// [synchronization source
  /// (SSRC)](https://developer.mozilla.org/en-US/docs/Web/API/RTCRemoteInboundRtpStreamStats/ssrc),
  /// in seconds.
  ///
  /// The round trip time is calculated based on the RTCP timestamps in the RTCP
  /// Sender Report (SR), and requires a report with a Delay Since Last SR
  /// (DLSR) block that has a value other than 0.
  /// The property does not exist until such a report has been received.
  ///
  /// Note that the _average_ RTT for the session can be computed by dividing
  /// [RTCRemoteInboundRtpStreamStats.totalRoundTripTime] by
  /// [RTCRemoteInboundRtpStreamStats.roundTripTimeMeasurements].
  external double get roundTripTime;
  external set roundTripTime(num value);

  /// The **`totalRoundTripTime`** property of the
  /// [RTCRemoteInboundRtpStreamStats] dictionary indicates the cumulative
  /// number sum of all round trip time (RTT) measurements since the beginning
  /// of the session, in seconds.
  ///
  /// The individual round trip time is calculated based on the RTCP timestamps
  /// in the RTCP Receiver Report (RR), hence requires a DLSR value other than
  /// 0.
  /// The average RTT can be computed by dividing `totalRoundTripTime` by
  /// [RTCRemoteInboundRtpStreamStats.roundTripTimeMeasurements].
  external double get totalRoundTripTime;
  external set totalRoundTripTime(num value);

  /// The **`fractionLost`** property of the [RTCRemoteInboundRtpStreamStats]
  /// dictionary provides a value that can be used to determine the fraction of
  /// packets lost for this [synchronization source
  /// (SSRC)](https://developer.mozilla.org/en-US/docs/Web/API/RTCRemoteInboundRtpStreamStats/ssrc)
  /// in the last reporting interval.
  ///
  /// To convert the value to a percentage, divide it by 256 and multiply by
  /// 100.
  /// For example, a value of 20 indicates a 7.8% packet loss.
  ///
  /// Note that the value may not be precisely accurate due to the way that it
  /// is calculated, but it does provides a quick and convenient measure of the
  /// link quality.
  external double get fractionLost;
  external set fractionLost(num value);

  /// The **`roundTripTimeMeasurements`** property of the
  /// [RTCRemoteInboundRtpStreamStats] dictionary contains a positive integer
  /// value that represents the total number valid round trip time measurements
  /// received for this [synchronizing source](#ssrc).
  ///
  /// The count can be used as a measure of the availability and reliability of
  /// round-trip-time measurement data.
  external int get roundTripTimeMeasurements;
  external set roundTripTimeMeasurements(int value);
  external int get packetsWithBleachedEct1Marking;
  external set packetsWithBleachedEct1Marking(int value);
}
extension type RTCSentRtpStreamStats._(JSObject _)
    implements RTCRtpStreamStats, JSObject {
  external factory RTCSentRtpStreamStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required int ssrc,
    required String kind,
    String transportId,
    String codecId,
    int packetsSent,
    int bytesSent,
  });

  external int get packetsSent;
  external set packetsSent(int value);
  external int get bytesSent;
  external set bytesSent(int value);
}

/// The **`RTCOutboundRtpStreamStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API) is
/// used to report metrics and statistics related to an outbound  stream being
/// sent by an [RTCRtpSender].
///
/// The statistics can be obtained by iterating the [RTCStatsReport] returned by
/// [RTCPeerConnection.getStats] or [RTCRtpSender.getStats] until you find a
/// report with the [`type`](#type) of `outbound-rtp`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCOutboundRtpStreamStats).
extension type RTCOutboundRtpStreamStats._(JSObject _)
    implements RTCSentRtpStreamStats, JSObject {
  external factory RTCOutboundRtpStreamStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required int ssrc,
    required String kind,
    String transportId,
    String codecId,
    int packetsSent,
    int bytesSent,
    String mid,
    String mediaSourceId,
    String remoteId,
    String rid,
    int encodingIndex,
    int headerBytesSent,
    int retransmittedPacketsSent,
    int retransmittedBytesSent,
    int rtxSsrc,
    num targetBitrate,
    int totalEncodedBytesTarget,
    int frameWidth,
    int frameHeight,
    num framesPerSecond,
    int framesSent,
    int hugeFramesSent,
    int framesEncoded,
    int keyFramesEncoded,
    int qpSum,
    JSObject psnrSum,
    int psnrMeasurements,
    num totalEncodeTime,
    num totalPacketSendDelay,
    RTCQualityLimitationReason qualityLimitationReason,
    JSObject qualityLimitationDurations,
    int qualityLimitationResolutionChanges,
    int nackCount,
    int firCount,
    int pliCount,
    String encoderImplementation,
    bool powerEfficientEncoder,
    bool active,
    String scalabilityMode,
    int packetsSentWithEct1,
  });

  /// The **`mid`** property of the [RTCOutboundRtpStreamStats] dictionary is a
  /// string that contains the media ID negotiated between the local and remote
  /// peers.
  /// This uniquely identifies the pairing of source and destination for the
  /// transceiver's stream.
  external String get mid;
  external set mid(String value);

  /// The **`mediaSourceId`** property of the [RTCOutboundRtpStreamStats]
  /// dictionary represents the ID of the statistics object of the track
  /// currently attached to the sender of this stream.
  ///
  /// This can then be used to obtain the corresponding [RTCVideoSourceStats] or
  /// [RTCAudioSourceStats].
  external String get mediaSourceId;
  external set mediaSourceId(String value);

  /// The **`remoteId`** property of the [RTCOutboundRtpStreamStats] dictionary
  /// specifies the [RTCOutboundRtpStreamStats.id] of the
  /// [RTCRemoteInboundRtpStreamStats] object representing the remote peer's
  /// [RTCRtpReceiver] which is sending the media to the local peer for this
  /// SSRC.
  external String get remoteId;
  external set remoteId(String value);

  /// The **`rid`** property of the [RTCOutboundRtpStreamStats] dictionary is a
  /// string that specifies the RTP stream ID, if defined.
  ///
  /// The property is only defined where the `rid` has been set for the
  /// corresponding [RTCRtpSender].
  /// If set, this value will be present regardless of whether the RID RTP
  /// header extension has been negotiated.
  external String get rid;
  external set rid(String value);
  external int get encodingIndex;
  external set encodingIndex(int value);

  /// The **`headerBytesSent`** property of the [RTCOutboundRtpStreamStats]
  /// dictionary indicates the total number of RTP header and padding bytes sent
  /// for this [synchronization source
  /// (SSRC)](https://developer.mozilla.org/en-US/docs/Web/API/RTCOutboundRtpStreamStats/ssrc).
  ///
  /// Note that the total number of bytes sent as payload over the transport is
  /// equal to: `headerBytesSent` + [RTCOutboundRtpStreamStats.bytesSent].
  external int get headerBytesSent;
  external set headerBytesSent(int value);

  /// The **`retransmittedPacketsSent`** property of the
  /// [RTCOutboundRtpStreamStats] dictionary represents the total number of
  /// packets retransmitted for the source associated with this stream.
  ///
  /// RTX (Retransmission) is one of several mechanisms that WebRTC uses for
  /// retransmitting lost payload bytes, and broadly refers to support for the
  /// special packets defined in `4588`.
  /// RTX has to be negotiated between the sender and receiver during initial
  /// handshake.
  /// If RTX has not been negotiated the retransmitted packets will be sent over
  /// the same SSRC; otherwise the bytes are sent on a separate SSRC but are
  /// still accounted for in this property.
  ///
  /// The retransmitted packets are included in the count reported by
  /// [RTCOutboundRtpStreamStats.packetsSent].
  external int get retransmittedPacketsSent;
  external set retransmittedPacketsSent(int value);

  /// The **`retransmittedBytesSent`** property of the
  /// [RTCOutboundRtpStreamStats] dictionary represents the total number of
  /// payload bytes retransmitted for the source associated with this stream.
  ///
  /// RTX (Retransmission) is one of several mechanisms that WebRTC uses for
  /// retransmitting lost payload bytes, and broadly refers to support for the
  /// special packets defined in `4588`.
  /// RTX has to be negotiated between the sender and receiver during initial
  /// handshake.
  /// If RTX has not been negotiated the retransmitted bytes will be sent over
  /// the same SSRC; otherwise the bytes are sent on a separate SSRC but are
  /// still accounted for in this property.
  ///
  /// The retransmitted bytes sent are included in the count reported by
  /// [RTCOutboundRtpStreamStats .bytesSent].
  external int get retransmittedBytesSent;
  external set retransmittedBytesSent(int value);
  external int get rtxSsrc;
  external set rtxSsrc(int value);

  /// The **`targetBitrate`** property of the [RTCOutboundRtpStreamStats]
  /// dictionary represents the current target bitrate of the codec in use by
  /// the stream.
  ///
  /// The value is dynamic, reflecting the encoder settings and other factors
  /// such as network conditions and available bandwidth.
  /// It should correlate closely to the payload bytes sent per second
  /// (excluding retransmissions).
  external double get targetBitrate;
  external set targetBitrate(num value);

  /// The **`totalEncodedBytesTarget`** property of the
  /// [RTCOutboundRtpStreamStats] dictionary represents the sum of the target
  /// frame sizes for all of the frames encoded so far.
  ///
  /// The codec has a target maximum size for each frame that it is asked to
  /// compress, in bytes.
  /// This property indicates the cumulative total of the target sizes for each
  /// frame at the current time.
  /// This will probably differ from the total of the actual frame sizes.
  /// You can compare to [RTCOutboundRtpStreamStats.bytesSent] in order to
  /// estimate how closely the codec is matching its target.
  ///
  /// The value increases every time [RTCOutboundRtpStreamStats.framesEncoded]
  /// goes up.
  ///
  /// > [!NOTE]
  /// > The property is undefined for audio streams.
  external int get totalEncodedBytesTarget;
  external set totalEncodedBytesTarget(int value);

  /// The **`frameWidth`** property of the [RTCOutboundRtpStreamStats]
  /// dictionary is a positive integer that indicates the width of the last
  /// encoded frame, in pixels.
  ///
  /// Note that the resolution of the encoded frame may be lower than that of
  /// the media source, which is provided in [RTCVideoSourceStats.width].
  ///
  /// > [!NOTE]
  /// > The value does not exist for audio, or before the first frame is
  /// > encoded.
  external int get frameWidth;
  external set frameWidth(int value);

  /// The **`frameHeight`** property of the [RTCOutboundRtpStreamStats]
  /// dictionary is a positive integer that indicates the height of the last
  /// encoded frame, in pixels.
  ///
  /// Note that the resolution of the encoded frame may be lower than that of
  /// the media source, which is provided in [RTCVideoSourceStats.height].
  ///
  /// > [!NOTE]
  /// > The property is undefined for audio streams, and before the first frame
  /// > is encoded.
  external int get frameHeight;
  external set frameHeight(int value);

  /// The **`framesPerSecond`** property of the [RTCOutboundRtpStreamStats]
  /// dictionary indicates the number of encoded frames sent in the last second.
  ///
  /// Note that this may be lower than the media source frame rate, which is
  /// provided in [RTCVideoSourceStats.framesPerSecond].
  ///
  /// > [!NOTE]
  /// > The value does not exist for audio, or before the first second of
  /// > encoding.
  external double get framesPerSecond;
  external set framesPerSecond(num value);

  /// The **`framesSent`** property of the [RTCOutboundRtpStreamStats]
  /// dictionary indicates the total number of encoded frames sent on this RTP
  /// stream over its lifetime.
  ///
  /// Note that this may be lower than the total number of media source frames,
  /// which is provided in [RTCVideoSourceStats.frames].
  ///
  /// > [!NOTE]
  /// > The value does not exist for audio.
  external int get framesSent;
  external set framesSent(int value);
  external int get hugeFramesSent;
  external set hugeFramesSent(int value);

  /// The **`framesEncoded`** property of
  /// the [RTCOutboundRtpStreamStats] dictionary indicates the total number of
  /// frames that have been encoded by this [RTCRtpSender] for this media
  /// source.
  external int get framesEncoded;
  external set framesEncoded(int value);

  /// The **`keyFramesEncoded`** property of the [RTCOutboundRtpStreamStats]
  /// dictionary represents the total number of key frames successfully encoded
  /// in this RTP media stream.
  /// This includes, for example, key frames in VP8 (`6386`) or IDR-frames in
  /// H.264 (`6184`).
  ///
  /// Note that the number of delta frames is calculated by subtracting this
  /// value from the total number of frames
  /// ([RTCOutboundRtpStreamStats.framesEncoded] - `keyFramesEncoded`).
  ///
  /// > [!NOTE]
  /// > The value does not exist for audio.
  external int get keyFramesEncoded;
  external set keyFramesEncoded(int value);

  /// The **`qpSum`** property of the [RTCOutboundRtpStreamStats] dictionary is
  /// a value generated by adding the **Quantization Parameter** (**QP**) values
  /// for every frame this sender has produced to date on the video track
  /// corresponding to this `RTCOutboundRtpStreamStats` object.
  ///
  /// In general, the higher this number is, the more heavily compressed the
  /// video data is.
  external int get qpSum;
  external set qpSum(int value);
  external JSObject get psnrSum;
  external set psnrSum(JSObject value);
  external int get psnrMeasurements;
  external set psnrMeasurements(int value);

  /// The **`totalEncodeTime`** property of the [RTCOutboundRtpStreamStats]
  /// dictionary represents the total number of seconds spent encoding the
  /// [RTCOutboundRtpStreamStats.framesEncoded] frames for this stream
  /// ([RTCRtpSender]).
  ///
  /// The average encode time can be calculated by dividing this value by
  /// `framesEncoded`.
  /// The time it takes to encode one frame is the time between sending the
  /// encoder a frame and the encoder returning encoded data for that frame.
  /// It does not include any time spent packetizing the resulting data.
  ///
  /// > [!NOTE]
  /// > The property is undefined for audio streams.
  external double get totalEncodeTime;
  external set totalEncodeTime(num value);

  /// The **`totalPacketSendDelay`** property of the [RTCOutboundRtpStreamStats]
  /// dictionary represents the total time in seconds that packets have spent
  /// buffered locally before being transmitted.
  ///
  /// The individual packet delay is the time between a packet being emitted
  /// from the RTP packetizer and it being handed over to the OS network socket.
  /// The individual delay is added to `totalPacketSendDelay` when
  /// [RTCOutboundRtpStreamStats.framesEncoded] is incremented.
  ///
  /// > [!NOTE]
  /// > The property is undefined for audio streams.
  external double get totalPacketSendDelay;
  external set totalPacketSendDelay(num value);

  /// The **`qualityLimitationReason`** property of the
  /// [RTCOutboundRtpStreamStats] dictionary is a string indicating the reason
  /// why the media quality in the stream is currently being reduced by the
  /// codec during encoding, or `none` if no quality reduction is being
  /// performed.
  ///
  /// This quality reduction may include changes such as reduced frame rate or
  /// resolution, or an increase in compression factor.
  /// Note that the user agent report the most limiting factor.
  /// If the most limiting factor cannot be determined the result will be
  /// reported using the priority order: "bandwidth", "cpu", "other".
  ///
  /// The amount of time the encoded media has had its quality reduced in each
  /// of the potential ways that can be done can be found in
  /// [RTCOutboundRtpStreamStats.qualityLimitationDurations].
  ///
  /// > [!NOTE]
  /// > The property is undefined for audio streams.
  external RTCQualityLimitationReason get qualityLimitationReason;
  external set qualityLimitationReason(RTCQualityLimitationReason value);

  /// The **`qualityLimitationDurations`** property of the
  /// [RTCOutboundRtpStreamStats] dictionary is a map of the reasons that a
  /// media stream's quality has been reduced by a codec during encoding, and
  /// the time during which the quality was reduced for each reason.
  ///
  /// This quality reduction may include changes such as reduced frame rate or
  /// resolution, or an increase in compression factor.
  /// The information can be used to diagnose throughput issues and optimize
  /// performance.
  ///
  /// > [!NOTE]
  /// > This property only exists for video media.
  external JSObject get qualityLimitationDurations;
  external set qualityLimitationDurations(JSObject value);
  external int get qualityLimitationResolutionChanges;
  external set qualityLimitationResolutionChanges(int value);

  /// The **`nackCount`** property of the
  /// [RTCOutboundRtpStreamStats] dictionary is a numeric value indicating the
  /// number of times the [RTCRtpSender] described by this object received a
  /// **NACK** packet from the remote receiver.
  ///
  /// A NACK (Negative
  /// ACKnowledgement, also called "Generic NACK") packet is used by the
  /// [RTCRtpReceiver] to inform the sender that one or more
  /// packets it sent were lost in transport.
  external int get nackCount;
  external set nackCount(int value);
  external int get firCount;
  external set firCount(int value);
  external int get pliCount;
  external set pliCount(int value);
  external String get encoderImplementation;
  external set encoderImplementation(String value);
  external bool get powerEfficientEncoder;
  external set powerEfficientEncoder(bool value);

  /// The **`active`** property of the [RTCOutboundRtpStreamStats] dictionary is
  /// a boolean that indicates whether this RTP stream is configured to be sent,
  /// or is disabled.
  ///
  /// For example, this would be be `false` if the track corresponding to the
  /// the stream had its [MediaStreamTrack.enabled] property set to `false`.
  /// Note that an active stream may still not be sending if, for example, the
  /// stream is limited by network conditions.
  external bool get active;
  external set active(bool value);

  /// The **`scalabilityMode`** property of the [RTCOutboundRtpStreamStats]
  /// dictionary represents the scalability mode for the RTP stream, if one has
  /// been configured.
  /// If not configured, the property is undefined.
  ///
  /// The mode is used in [Scalable Video Coding
  /// (SVC)](https://www.w3.org/TR/webrtc-svc/) to define how define how a video
  /// stream may be encoded to allow for adaptation to different network
  /// conditions and receiver capabilities.
  /// Different codecs allow for various kinds of scalability, such as providing
  /// different resolution, different frame rates, or different quality levels
  /// for a particular video.
  ///
  /// The mode may be configured, for example, by specifying the scalability
  /// mode as a parameter option in [VideoEncoder.configure],
  /// [RTCRtpSender.setParameters], or [RTCPeerConnection.addTransceiver].
  ///
  /// > [!NOTE]
  /// > The property is undefined for audio streams.
  external String get scalabilityMode;
  external set scalabilityMode(String value);
  external int get packetsSentWithEct1;
  external set packetsSentWithEct1(int value);
}

/// The **`RTCRemoteOutboundRtpStreamStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API) is
/// used to report statistics from a remote endpoint about its outbound RTP
/// stream.
/// This will correspond to an inbound stream that is currently being received
/// by the local [RTCPeerConnection] object.
///
/// The statistics can be obtained by iterating the [RTCStatsReport] returned by
/// [RTCPeerConnection.getStats] until you find a report with the
/// [`type`](#type) of `remote-outbound-rtp`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCRemoteOutboundRtpStreamStats).
extension type RTCRemoteOutboundRtpStreamStats._(JSObject _)
    implements RTCSentRtpStreamStats, JSObject {
  external factory RTCRemoteOutboundRtpStreamStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required int ssrc,
    required String kind,
    String transportId,
    String codecId,
    int packetsSent,
    int bytesSent,
    String localId,
    DOMHighResTimeStamp remoteTimestamp,
    int reportsSent,
    num roundTripTime,
    num totalRoundTripTime,
    int roundTripTimeMeasurements,
  });

  /// The [RTCRemoteOutboundRtpStreamStats] dictionary's **`localId`** property
  /// is a string which can be used to identify the [RTCInboundRtpStreamStats]
  /// object whose [RTCInboundRtpStreamStats.remoteId] matches this value.
  ///
  /// Together, these two objects provide statistics about the inbound and
  /// outbound sides of the same synchronization source (SSRC).
  external String get localId;
  external set localId(String value);

  /// The [RTCRemoteOutboundRtpStreamStats] property **`remoteTimestamp`**
  /// indicates the timestamp on the remote peer at which these statistics were
  /// sent.
  /// This differs from `timestamp`, which indicates the time at which the
  /// statistics were generated or received locally.
  external double get remoteTimestamp;
  external set remoteTimestamp(DOMHighResTimeStamp value);
  external int get reportsSent;
  external set reportsSent(int value);
  external double get roundTripTime;
  external set roundTripTime(num value);

  /// The **`totalRoundTripTime`** property of the
  /// [RTCRemoteOutboundRtpStreamStats] dictionary indicates the sum of all
  /// round trip time (RTT) measurements since the beginning of the session, in
  /// seconds.
  ///
  /// The individual round trip time is calculated based on RTCP timestamps in
  /// the DLRR report block of RTCP Sender Reports (SR).
  /// The average RTT can be computed by dividing `totalRoundTripTime` by
  /// [RTCRemoteOutboundRtpStreamStats.roundTripTimeMeasurements].
  external double get totalRoundTripTime;
  external set totalRoundTripTime(num value);

  /// The **`roundTripTimeMeasurements`** property of the
  /// [RTCRemoteOutboundRtpStreamStats] dictionary is a positive integer value
  /// that represents the total number valid round of trip time measurements
  /// received for this [synchronizing source
  /// (SSRC)](https://developer.mozilla.org/en-US/docs/Web/API/RTCRemoteOutboundRtpStreamStats/ssrc).
  ///
  /// The count can be used as a measure of the availability and reliability of
  /// round trip time measurement data.
  external int get roundTripTimeMeasurements;
  external set roundTripTimeMeasurements(int value);
}
extension type RTCMediaSourceStats._(JSObject _) implements RTCStats, JSObject {
  external factory RTCMediaSourceStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required String trackIdentifier,
    required String kind,
  });

  external String get trackIdentifier;
  external set trackIdentifier(String value);
  external String get kind;
  external set kind(String value);
}

/// The **`RTCAudioSourceStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// provides statistics information about an audio track ([MediaStreamTrack])
/// that is attached to one or more senders ([RTCRtpSender]).
///
/// These statistics can be obtained by iterating the [RTCStatsReport] returned
/// by [RTCRtpSender.getStats] or [RTCPeerConnection.getStats] until you find a
/// report with the [`type`](#type) of `media-source` and a [`kind`](#kind) of
/// `audio`.
///
/// > [!NOTE]
/// > For audio information about remotely sourced tracks (that are being
/// > received), see [RTCInboundRtpStreamStats].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCAudioSourceStats).
extension type RTCAudioSourceStats._(JSObject _)
    implements RTCMediaSourceStats, JSObject {
  external factory RTCAudioSourceStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required String trackIdentifier,
    required String kind,
    num audioLevel,
    num totalAudioEnergy,
    num totalSamplesDuration,
    num echoReturnLoss,
    num echoReturnLossEnhancement,
  });

  /// The **`audioLevel`** property of the [RTCAudioSourceStats] dictionary
  /// represents the audio level of the media source.
  ///
  /// The level is averaged over some small implementation-dependent interval.
  /// Users can alternatively calculate the average audio level over some
  /// arbitrary duration using the algorithm described in the
  /// [`RTCAudioSourceStats` description](https://developer.mozilla.org/en-US/docs/Web/API/RTCAudioSourceStats#description).
  ///
  /// > [!NOTE]
  /// > For audio levels of remotely sourced tracks, see
  /// > [RTCInboundRtpStreamStats.audioLevel].
  external double get audioLevel;
  external set audioLevel(num value);

  /// The **`totalAudioEnergy`** property of the [RTCAudioSourceStats]
  /// dictionary represents the total audio energy of the media source over the
  /// lifetime of this stats object.
  ///
  /// The total energy across a particular duration can be determined by
  /// subtracting the value of this property returned by two different
  /// `getStats()` calls.
  ///
  /// > [!NOTE]
  /// > For audio energy of remotely sourced tracks, see
  /// > [RTCInboundRtpStreamStats.totalAudioEnergy].
  external double get totalAudioEnergy;
  external set totalAudioEnergy(num value);

  /// The **`totalSamplesDuration`** property of the [RTCAudioSourceStats]
  /// dictionary represents the combined duration of all samples produced by the
  /// media source over the lifetime of this stats object, in seconds.
  /// It does not include samples dropped before reaching this media source.
  /// <!-- Dropped samples in `droppedSamplesDuration`; not implemented -->
  ///
  /// This can be used with [RTCAudioSourceStats.totalAudioEnergy] to compute an
  /// [average audio level over different intervals](https://developer.mozilla.org/en-US/docs/Web/API/RTCAudioSourceStats#description).
  ///
  /// > [!NOTE]
  /// > For audio duration of remotely sourced tracks, see
  /// > [RTCInboundRtpStreamStats.totalSamplesDuration].
  external double get totalSamplesDuration;
  external set totalSamplesDuration(num value);
  external double get echoReturnLoss;
  external set echoReturnLoss(num value);
  external double get echoReturnLossEnhancement;
  external set echoReturnLossEnhancement(num value);
}

/// The **`RTCVideoSourceStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// provides statistics information about a video track ([MediaStreamTrack])
/// that is attached to one or more senders ([RTCRtpSender]).
///
/// These statistics can be obtained by iterating the [RTCStatsReport] returned
/// by [RTCRtpSender.getStats] or [RTCPeerConnection.getStats] until you find a
/// report with the [`type`](#type) of `media-source` and a [`kind`](#kind) of
/// `video`.
///
/// > [!NOTE]
/// > For video information about remotely sourced tracks (that are being
/// > received), see [RTCInboundRtpStreamStats].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCVideoSourceStats).
extension type RTCVideoSourceStats._(JSObject _)
    implements RTCMediaSourceStats, JSObject {
  external factory RTCVideoSourceStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required String trackIdentifier,
    required String kind,
    int width,
    int height,
    int frames,
    num framesPerSecond,
  });

  /// The **`width`** property of the [RTCVideoSourceStats] dictionary indicates
  /// the width, in pixels, of the last frame originating from this source.
  ///
  /// This property is not defined on the stats object until after the first
  /// frame has been produced.
  external int get width;
  external set width(int value);

  /// The **`height`** property of the [RTCVideoSourceStats] dictionary
  /// indicates the height, in pixels, of the last frame originating from this
  /// source.
  ///
  /// This property is not defined on the stats object until after the first
  /// frame has been produced.
  external int get height;
  external set height(int value);

  /// The **`frames`** property of the [RTCVideoSourceStats] dictionary
  /// indicates the total number of frames originating from this video source
  /// over its lifetime.
  external int get frames;
  external set frames(int value);

  /// The **`framesPerSecond`** property of the [RTCVideoSourceStats] dictionary
  /// indicates the number of frames originating from this video source in the
  /// last second.
  ///
  /// The property is not defined on the stats object for the first second of
  /// its lifetime.
  external double get framesPerSecond;
  external set framesPerSecond(num value);
}
extension type RTCAudioPlayoutStats._(JSObject _)
    implements RTCStats, JSObject {
  external factory RTCAudioPlayoutStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required String kind,
    num synthesizedSamplesDuration,
    int synthesizedSamplesEvents,
    num totalSamplesDuration,
    num totalPlayoutDelay,
    int totalSamplesCount,
  });

  external String get kind;
  external set kind(String value);
  external double get synthesizedSamplesDuration;
  external set synthesizedSamplesDuration(num value);
  external int get synthesizedSamplesEvents;
  external set synthesizedSamplesEvents(int value);
  external double get totalSamplesDuration;
  external set totalSamplesDuration(num value);
  external double get totalPlayoutDelay;
  external set totalPlayoutDelay(num value);
  external int get totalSamplesCount;
  external set totalSamplesCount(int value);
}

/// The **`RTCPeerConnectionStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// provides information about the high level peer connection
/// ([RTCPeerConnection]).
///
/// In particular, it provides the number of unique data channels that have been
/// opened, and the number of opened channels that have been closed.
/// This allows the current number of open channels to be calculated.
///
/// These statistics can be obtained by iterating the [RTCStatsReport] returned
/// by [RTCPeerConnection.getStats] until you find a report with the
/// [`type`](#type) of `peer-connection`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionStats).
extension type RTCPeerConnectionStats._(JSObject _)
    implements RTCStats, JSObject {
  external factory RTCPeerConnectionStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    int dataChannelsOpened,
    int dataChannelsClosed,
  });

  /// The **`dataChannelsOpened`** property of the [RTCPeerConnectionStats]
  /// dictionary indicates the number of unique [RTCDataChannel] objects that
  /// have entered the
  /// [`open`](https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel/readyState#open)
  /// state during their lifetime.
  external int get dataChannelsOpened;
  external set dataChannelsOpened(int value);

  /// The **`dataChannelsClosed`** property of the [RTCPeerConnectionStats]
  /// dictionary indicates the number of unique [RTCDataChannel] objects that
  /// have left the
  /// [`open`](https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel/readyState#open)
  /// state during their lifetime.
  ///
  /// A channel will leave the `open` state if either end of the connection or
  /// the underlying transport is closed.
  /// Note that channels that transition to
  /// [`closing`](https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel/readyState#closing)
  /// or
  /// [`closed`](https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel/readyState#closed)
  /// without ever being `open` are not counted in this number.
  external int get dataChannelsClosed;
  external set dataChannelsClosed(int value);
}

/// The **`RTCDataChannelStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// provides statistics related to one [RTCDataChannel] object on the
/// connection.
///
/// The report can be obtained by iterating the [RTCStatsReport] returned by
/// [RTCPeerConnection.getStats] until you find an entry with the
/// [`type`](#type) of `data-channel`.
///
/// The data channels statistics may be correlated to a particular channel by
/// comparing the [`dataChannelIdentifier`](#datachannelidentifier) property to
/// a matching [RTCDataChannel.id].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannelStats).
extension type RTCDataChannelStats._(JSObject _) implements RTCStats, JSObject {
  external factory RTCDataChannelStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    String label,
    String protocol,
    int dataChannelIdentifier,
    required RTCDataChannelState state,
    int messagesSent,
    int bytesSent,
    int messagesReceived,
    int bytesReceived,
  });

  /// The **`label`** property of the [RTCDataChannelStats] dictionary returns
  /// the [RTCDataChannel.label] of the associated data channel.
  ///
  /// The value of the label need not be unique, and its meaning is defined by
  /// the website or app when it creates the data channel.
  external String get label;
  external set label(String value);

  /// The **`protocol`** property of the [RTCDataChannelStats] dictionary
  /// returns a string containing the [RTCDataChannel.protocol] of the
  /// associated data channel.
  ///
  /// The value is defined by the website or app when it creates the data
  /// channel.
  external String get protocol;
  external set protocol(String value);

  /// The **`dataChannelIdentifier`** property of the [RTCDataChannelStats]
  /// dictionary containing the [RTCDataChannel.id] of the associated
  /// `RTCDataChannel` providing these statistics.
  ///
  /// Using the `dataChannelIdentifier`, you can correlate this statistics
  /// object to a particular [RTCDataChannel].
  external int get dataChannelIdentifier;
  external set dataChannelIdentifier(int value);

  /// The **`state`** property of the `RTCDataChannelStats` dictionary returns a
  /// string that indicates the [RTCDataChannel.readyState] of the data
  /// channel's underlying data connection: `connecting`, `open`, `closing` or
  /// `closed`.
  ///
  /// Note that this property is required.
  external RTCDataChannelState get state;
  external set state(RTCDataChannelState value);

  /// The **`messagesSent`** property of the [RTCDataChannelStats] dictionary
  /// returns the total number of
  /// [`message` events](https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel/message_event)
  /// fired for sent messages on the associated [RTCDataChannel].
  external int get messagesSent;
  external set messagesSent(int value);

  /// The **`bytesSent`** property of the [RTCDataChannelStats] dictionary
  /// returns the total number of payload bytes sent on the associated
  /// [RTCDataChannel].
  ///
  /// Note that non-payload bytes, such as those for framing and in headers, are
  /// not included.
  external int get bytesSent;
  external set bytesSent(int value);

  /// The **`messagesReceived`** property of the [RTCDataChannelStats]
  /// dictionary returns the total number of
  /// [`message` events](https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel/message_event)
  /// fired for received messages on the associated [RTCDataChannel].
  external int get messagesReceived;
  external set messagesReceived(int value);

  /// The **`bytesReceived`** property of the [RTCDataChannelStats] dictionary
  /// returns the total number of payload bytes received on the associated
  /// [RTCDataChannel].
  ///
  /// Note that non-payload bytes, such as those for framing and in headers, are
  /// not included.
  external int get bytesReceived;
  external set bytesReceived(int value);
}

/// The **`RTCTransportStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// provides information about the transport ([RTCDtlsTransport] and its
/// underlying [RTCIceTransport]) used by a particular candidate pair.
///
/// The _BUNDLE_ feature is an SDP extension that allows negotiation to use a
/// single transport for sending and receiving media described by multiple SDP
/// media descriptions.
/// If the remote endpoint is aware of this feature, all [MediaStreamTrack] and
/// data channels are bundled onto a single transport at the completion of
/// negotiation.
/// This is true for current browsers, but if connecting to an older endpoint
/// that is not BUNDLE-aware, then separate transports might be used for
/// different media.
/// The policy to use in the negotiation is configured in the
/// [`RTCPeerConnection` constructor](https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection/RTCPeerConnection).
///
/// These statistics can be obtained by iterating the [RTCStatsReport] returned
/// by [RTCPeerConnection.getStats] until you find a report with the
/// [`type`](#type) of `transport`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCTransportStats).
extension type RTCTransportStats._(JSObject _) implements RTCStats, JSObject {
  external factory RTCTransportStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
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
    int ccfbMessagesSent,
    int ccfbMessagesReceived,
  });

  external int get packetsSent;
  external set packetsSent(int value);
  external int get packetsReceived;
  external set packetsReceived(int value);
  external int get bytesSent;
  external set bytesSent(int value);
  external int get bytesReceived;
  external set bytesReceived(int value);
  external RTCIceRole get iceRole;
  external set iceRole(RTCIceRole value);
  external String get iceLocalUsernameFragment;
  external set iceLocalUsernameFragment(String value);
  external RTCDtlsTransportState get dtlsState;
  external set dtlsState(RTCDtlsTransportState value);
  external RTCIceTransportState get iceState;
  external set iceState(RTCIceTransportState value);
  external String get selectedCandidatePairId;
  external set selectedCandidatePairId(String value);
  external String get localCertificateId;
  external set localCertificateId(String value);
  external String get remoteCertificateId;
  external set remoteCertificateId(String value);
  external String get tlsVersion;
  external set tlsVersion(String value);
  external String get dtlsCipher;
  external set dtlsCipher(String value);
  external RTCDtlsRole get dtlsRole;
  external set dtlsRole(RTCDtlsRole value);
  external String get srtpCipher;
  external set srtpCipher(String value);
  external int get selectedCandidatePairChanges;
  external set selectedCandidatePairChanges(int value);
  external int get ccfbMessagesSent;
  external set ccfbMessagesSent(int value);
  external int get ccfbMessagesReceived;
  external set ccfbMessagesReceived(int value);
}

/// The **`RTCIceCandidateStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API) is
/// used to report statistics related to an [RTCIceCandidate].
///
/// The statistics can be obtained by iterating the [RTCStatsReport] returned by
/// [RTCPeerConnection.getStats] until you find a report with the
/// [`type`](#type) of `local-candidate`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidateStats).
extension type RTCIceCandidateStats._(JSObject _)
    implements RTCStats, JSObject {
  external factory RTCIceCandidateStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
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

  /// The [RTCIceCandidateStats] dictionary's
  /// **`transportId`** property is a string that uniquely
  /// identifies the transport that produced the [RTCTransportStats] from which
  /// information about this candidate was taken.
  external String get transportId;
  external set transportId(String value);

  /// The **`address`** property of the
  /// [RTCIceCandidateStats] dictionary indicates the address of the
  /// candidate. While it's preferred that the address be specified as
  /// an IPv4 or IPv6 numeric address, a fully-qualified domain name can be used
  /// as
  /// well.
  ///
  /// When a domain name is specified, the first IP address selected for that
  /// address is used, even if the domain name maps to multiple IP addresses.
  external String? get address;
  external set address(String? value);

  /// The [RTCIceCandidateStats] dictionary's **`port`**
  /// property specifies the network port used by the candidate.
  external int get port;
  external set port(int value);

  /// The [RTCIceCandidateStats] dictionary's
  /// **`protocol`** property specifies the protocol the specified
  /// candidate would use for communication with the remote peer.
  external String get protocol;
  external set protocol(String value);

  /// The [RTCIceCandidateStats] interface's
  /// **`candidateType`** property is a string that indicates the
  /// type of  candidate the object represents.
  external RTCIceCandidateType get candidateType;
  external set candidateType(RTCIceCandidateType value);

  /// The [RTCIceCandidateStats] dictionary's
  /// **`priority`** property is a positive integer value
  /// indicating the priority (or desirability) of the described candidate.
  ///
  /// During  negotiation while setting up a WebRTC peer connection, the
  /// priority values reported to the remote peer by a  are used
  /// to determine which candidates are considered "more desirable". The higher
  /// the value,
  /// the more desirable the candidate is.
  external int get priority;
  external set priority(int value);

  /// The [RTCIceCandidateStats] dictionary's
  /// **`url`** property specifies the URL of the
  /// server from which the described candidate was obtained. This
  /// property is _only_ available for local candidates.
  external String get url;
  external set url(String value);

  /// The [RTCIceCandidateStats] dictionary's
  /// **`relayProtocol`** property specifies the protocol being used
  /// by a local  candidate to communicate with the
  /// server.
  ///
  /// The ICE protocol being used by the candidate otherwise can be obtained
  /// from the
  /// [RTCIceCandidateStats.protocol] property.
  external RTCIceServerTransportProtocol get relayProtocol;
  external set relayProtocol(RTCIceServerTransportProtocol value);
  external String get foundation;
  external set foundation(String value);
  external String get relatedAddress;
  external set relatedAddress(String value);
  external int get relatedPort;
  external set relatedPort(int value);
  external String get usernameFragment;
  external set usernameFragment(String value);
  external RTCIceTcpCandidateType get tcpType;
  external set tcpType(RTCIceTcpCandidateType value);
}

/// The **`RTCIceCandidatePairStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API) is
/// used to report statistics that provide insight into the quality and
/// performance of an [RTCPeerConnection] while connected and configured as
/// described by the specified pair of  candidates.
///
/// The statistics can be obtained by iterating the [RTCStatsReport] returned by
/// [RTCPeerConnection.getStats] until you find an entry with the
/// [`type`](#type) of `"candidate-pair"`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidatePairStats).
extension type RTCIceCandidatePairStats._(JSObject _)
    implements RTCStats, JSObject {
  external factory RTCIceCandidatePairStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
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
    num totalRoundTripTime,
    num currentRoundTripTime,
    num availableOutgoingBitrate,
    num availableIncomingBitrate,
    int requestsReceived,
    int requestsSent,
    int responsesReceived,
    int responsesSent,
    int consentRequestsSent,
    int packetsDiscardedOnSend,
    int bytesDiscardedOnSend,
  });

  /// The **`transportId`** property of the [RTCIceCandidatePairStats]
  /// dictionary uniquely identifies the [RTCIceTransport] object that was
  /// inspected to obtain the transport-related statistics contained in the
  /// stats object.
  external String get transportId;
  external set transportId(String value);

  /// The **`localCandidateId`** property of the [RTCIceCandidatePairStats]
  /// dictionary is a string that uniquely identifies the local  candidate which
  /// was analyzed to generate the [RTCIceCandidateStats] used to compute the
  /// statistics for this pair of candidates.
  external String get localCandidateId;
  external set localCandidateId(String value);

  /// The **`remoteCandidateId`** property of the [RTCIceCandidatePairStats]
  /// dictionary uniquely identifies the remote  candidate which was analyzed to
  /// generate the [RTCIceCandidateStats] used to compute the statistics for
  /// this pair of candidates.
  external String get remoteCandidateId;
  external set remoteCandidateId(String value);

  /// The **`state`** property of the [RTCIceCandidatePairStats] dictionary
  /// indicates the state of the [checklist](#ice_check_lists) of which the
  /// candidate pair is a member.
  external RTCStatsIceCandidatePairState get state;
  external set state(RTCStatsIceCandidatePairState value);

  /// The **`nominated`** property of the [RTCIceCandidatePairStats] dictionary
  /// specifies whether or not the candidate pair described by the underlying
  /// `RTCIceCandidatePair` has been nominated to be used as the configuration
  /// for the WebRTC connection.
  external bool get nominated;
  external set nominated(bool value);

  /// The **`packetsSent`** property of the [RTCIceCandidatePairStats]
  /// dictionary indicates the total number of packets sent on the candidate
  /// pair.
  ///
  /// ### Value
  ///
  /// An integer value indicating the total number of packets sent on the pair.
  external int get packetsSent;
  external set packetsSent(int value);

  /// The **`packetsReceived`** property of the [RTCIceCandidatePairStats]
  /// dictionary indicates the total number of packets received on the candidate
  /// pair.
  ///
  /// ### Value
  ///
  /// An integer value indicating the total number of packets received on the
  /// pair.
  external int get packetsReceived;
  external set packetsReceived(int value);

  /// The **`bytesSent`** property of the [RTCIceCandidatePairStats] dictionary
  /// indicates the total number of payload bytes that have been sent so far on
  /// the connection described by the candidate pair.
  external int get bytesSent;
  external set bytesSent(int value);

  /// The **`bytesReceived`** property of the [RTCIceCandidatePairStats]
  /// dictionary indicates the total number of received payload bytes that have
  /// been received so far on the connection described by the candidate pair.
  external int get bytesReceived;
  external set bytesReceived(int value);

  /// The **`lastPacketSentTimestamp`** property of the
  /// [RTCIceCandidatePairStats] dictionary indicates the time at which the
  /// connection described by the candidate pair last sent a packet, not
  /// including  packets.
  external double get lastPacketSentTimestamp;
  external set lastPacketSentTimestamp(DOMHighResTimeStamp value);

  /// The **`lastPacketReceivedTimestamp`** property of the
  /// [RTCIceCandidatePairStats] dictionary indicates the time at which the
  /// connection described by the candidate pair last received a packet.
  ///
  /// packets are not included.
  external double get lastPacketReceivedTimestamp;
  external set lastPacketReceivedTimestamp(DOMHighResTimeStamp value);

  /// The **`totalRoundTripTime`** property of the [RTCIceCandidatePairStats]
  /// dictionary indicates the total time that has elapsed between sending
  /// requests and receiving the responses, for all such requests that have been
  /// made so far on the pair of candidates described by this
  /// `RTCIceCandidatePairStats` object.
  ///
  /// This value includes both connectivity check and consent check requests.
  external double get totalRoundTripTime;
  external set totalRoundTripTime(num value);

  /// The **`currentRoundTripTime`** property of the [RTCIceCandidatePairStats]
  /// dictionary indicates the number of seconds it takes for data to be sent by
  /// this peer to the remote peer and back over the connection described by
  /// this pair of  candidates.
  external double get currentRoundTripTime;
  external set currentRoundTripTime(num value);

  /// The **`availableOutgoingBitrate`** property of the
  /// [RTCIceCandidatePairStats] dictionary indicates the available outbound
  /// capacity of the network connection represented by the candidate pair.
  /// The higher the value, the more bandwidth you can assume is available for
  /// outgoing data.
  ///
  /// You can get the incoming available bitrate from
  /// [RTCIceCandidatePairStats.availableIncomingBitrate].
  external double get availableOutgoingBitrate;
  external set availableOutgoingBitrate(num value);

  /// The **`availableIncomingBitrate`** property of the
  /// [RTCIceCandidatePairStats] dictionary indicates the available inbound
  /// capacity of the network connection represented by the candidate pair.
  /// The higher the value, the more bandwidth you can assume is available for
  /// incoming data.
  ///
  /// You can get the outgoing available bitrate from
  /// [RTCIceCandidatePairStats.availableOutgoingBitrate].
  external double get availableIncomingBitrate;
  external set availableIncomingBitrate(num value);

  /// The **`requestsReceived`** property of the [RTCIceCandidatePairStats]
  /// dictionary indicates the total number of  connectivity check requests that
  /// have been received so far on the connection described by this pairing of
  /// candidates.
  external int get requestsReceived;
  external set requestsReceived(int value);

  /// The **`requestsSent`** property of the [RTCIceCandidatePairStats]
  /// dictionary indicates the total number of  connectivity check requests that
  /// have been sent so far on the connection described by this pair of
  /// candidates.
  external int get requestsSent;
  external set requestsSent(int value);

  /// The **`responsesReceived`** property in the [RTCIceCandidatePairStats]
  /// dictionary indicates the total number of  connectivity check responses
  /// that have been received on the connection described by this pair of
  /// candidates.
  external int get responsesReceived;
  external set responsesReceived(int value);

  /// The **`responsesSent`** property of the [RTCIceCandidatePairStats]
  /// dictionary indicates the total number of  connectivity check responses
  /// that have been sent so far on the connection described by this pair of
  /// candidates.
  external int get responsesSent;
  external set responsesSent(int value);

  /// The **`consentRequestsSent`** property of the [RTCIceCandidatePairStats]
  /// dictionary indicates the total number of consent requests sent on this
  /// candidate pair.
  ///
  /// If either or both of the peers in the pair access the internet via
  /// [Network Address Translation](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Protocols#nat)
  /// (NAT), the other peer will need to regularly send a [Session Traversal
  /// Utilities for NAT (STUN)](/en-US/docs/Web/API/WebRTC_API/Protocols#stun)
  /// request to the NAT firewall to ask for consent to allow traffic to flow.
  /// This property counts the number of requests.
  /// `7675` has more information about NAT and consent.
  ///
  /// ### Value
  ///
  /// An integer value indicating the total number consent requests sent to the
  /// peers in the candidate pair.
  external int get consentRequestsSent;
  external set consentRequestsSent(int value);

  /// The **`packetsDiscardedOnSend`** property of the
  /// [RTCIceCandidatePairStats] dictionary indicates the total number of
  /// packets discarded due to socket errors
  ///
  /// The errors might be caused, for example, by attempting to pass packets to
  /// the socket when it is full.
  ///
  /// ### Value
  ///
  /// An integer value indicating the total number of packets discarded due to
  /// socket errors.
  external int get packetsDiscardedOnSend;
  external set packetsDiscardedOnSend(int value);

  /// The **`bytesDiscardedOnSend`** property of the [RTCIceCandidatePairStats]
  /// dictionary indicates the total number of bytes discarded due to socket
  /// errors.
  ///
  /// The errors might be caused, for example, by attempting to pass packets to
  /// the socket when it is full.
  ///
  /// ### Value
  ///
  /// An integer value indicating the total number of bytes discarded due to
  /// socket errors.
  /// This is calculated as defined in `3550","", "6.4.1`.
  external int get bytesDiscardedOnSend;
  external set bytesDiscardedOnSend(int value);
}

/// The **`RTCCertificateStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API) is
/// used to report information about a certificate used by an [RTCDtlsTransport]
/// and its underlying [RTCIceTransport].
///
/// The report can be obtained by iterating the [RTCStatsReport] returned by
/// [RTCPeerConnection.getStats] until you find an entry with the
/// [`type`](#type) of `certificate`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCCertificateStats).
extension type RTCCertificateStats._(JSObject _) implements RTCStats, JSObject {
  external factory RTCCertificateStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
    required String fingerprint,
    required String fingerprintAlgorithm,
    required String base64Certificate,
    String issuerCertificateId,
  });

  /// The **`fingerprint`** property of the [RTCCertificateStats] dictionary is
  /// a string containing the fingerprint value of the associated
  /// [RTCCertificate].
  external String get fingerprint;
  external set fingerprint(String value);

  /// The **`fingerprintAlgorithm`** property of the [RTCCertificateStats]
  /// dictionary is a string containing the name of the hash function used to
  /// generate the [RTCCertificateStats.fingerprint] value in the associated
  /// [RTCCertificate].
  external String get fingerprintAlgorithm;
  external set fingerprintAlgorithm(String value);

  /// The **`base64Certificate`** property of the [RTCCertificateStats]
  /// dictionary is a string containing the base-64 representation of the
  /// DER-encoded certificate.
  ///
  /// This is essentially an encoding of the original certificate as a string
  /// that can safely serialized and deserialized when sent over an IP network.
  external String get base64Certificate;
  external set base64Certificate(String value);
  external String get issuerCertificateId;
  external set issuerCertificateId(String value);
}
