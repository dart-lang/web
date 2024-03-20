// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'hr_time.dart';
import 'webrtc.dart';

typedef RTCStatsType = String;
typedef RTCQualityLimitationReason = String;
typedef RTCDtlsRole = String;
typedef RTCStatsIceCandidatePairState = String;

/// The [RTCRtpStreamStats] dictionary is returned by the
/// [RTCPeerConnection.getStats], [RTCRtpSender.getStats], and
/// [RTCRtpReceiver.getStats] methods to provide detailed statistics about
/// WebRTC connectivity.
///
/// While the dictionary has a base set of properties that are present in each
/// of these cases, there are also additional properties added depending on
/// which interface the method is called on.
///
/// `RTCRtpStreamStats` is the base class for all RTP-related statistics
/// reports.
///
/// > **Note:** This interface was called `RTCRTPStreamStats` until a
/// > specification update in the spring of 2017.
/// > Check the [Browser compatibility](#browser_compatibility) table to know if
/// > and when the name change was implemented in specific browsers.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpStreamStats).
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

  /// The [RTCRtpStreamStats] dictionary's
  /// **`ssrc`** property provides the Synchronization Source
  /// (SSRC), an integer which uniquely identifies the source of the
  /// packets whose statistics are covered by the [RTCStatsReport] that
  /// includes this `RTCRtpStreamStats` dictionary.
  external int get ssrc;
  external set ssrc(int value);

  /// The **`kind`** property of the
  /// [RTCRtpStreamStats] dictionary is a string indicating whether the
  /// described  stream contains audio or video media.
  ///
  /// Its value
  /// is always either `"audio"` or `"video"`.
  ///
  /// This property was previously called `mediaType`. The name was changed in
  /// the
  /// specification in February, 2018. See
  /// [Browser compatibility](#browser_compatibility) below to
  /// determine how this affects the browsers you're targeting.
  external String get kind;
  external set kind(String value);

  /// The [RTCRtpStreamStats] dictionary's
  /// **`transportId`** property is a string which uniquely
  /// identifies the object from which the statistics contained in the
  /// [RTCTransportStats] properties in the
  /// [RTCStatsReport].
  external String get transportId;
  external set transportId(String value);

  /// The [RTCRtpStreamStats] dictionary's
  /// **`codecId`** property is a string which uniquely identifies
  /// the object that was inspected to produce the data in the [RTCCodecStats]
  /// for the  stream.
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
    int packetsLost,
    num jitter,
  });

  external int get packetsReceived;
  external set packetsReceived(int value);
  external int get packetsLost;
  external set packetsLost(int value);
  external num get jitter;
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
  });

  external String get trackIdentifier;
  external set trackIdentifier(String value);
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
  external num get framesPerSecond;
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
  external num get totalDecodeTime;
  external set totalDecodeTime(num value);
  external num get totalInterFrameDelay;
  external set totalInterFrameDelay(num value);
  external num get totalSquaredInterFrameDelay;
  external set totalSquaredInterFrameDelay(num value);
  external int get pauseCount;
  external set pauseCount(int value);
  external num get totalPausesDuration;
  external set totalPausesDuration(num value);
  external int get freezeCount;
  external set freezeCount(int value);
  external num get totalFreezesDuration;
  external set totalFreezesDuration(num value);

  /// The **`lastPacketReceivedTimestamp`** property of the
  /// [RTCInboundRtpStreamStats] dictionary indicates the time at which the most
  /// recently received packet arrived from this source.
  external DOMHighResTimeStamp get lastPacketReceivedTimestamp;
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

  /// The **`firCount`** property of the
  /// [RTCInboundRtpStreamStats] dictionary indicates the number of
  /// **Full Intra Request** (**FIR**) packets have been sent by
  /// the receiver to the sender.
  ///
  /// The receiver sends a FIR packet when the stream
  /// falls behind and needs to skip frames in order to catch up.
  external int get firCount;
  external set firCount(int value);

  /// The **`pliCount`** property of the
  /// [RTCInboundRtpStreamStats] dictionary states the number of times the
  /// [RTCRtpReceiver] described by these statistics sent a **Picture
  /// Loss Indication** (**PLI**) packet to the sender.
  ///
  /// A PLI
  /// packet indicates that some amount of encoded video data has been lost for
  /// one or more
  /// frames.
  external int get pliCount;
  external set pliCount(int value);
  external num get totalProcessingDelay;
  external set totalProcessingDelay(num value);
  external DOMHighResTimeStamp get estimatedPlayoutTimestamp;
  external set estimatedPlayoutTimestamp(DOMHighResTimeStamp value);
  external num get jitterBufferDelay;
  external set jitterBufferDelay(num value);
  external num get jitterBufferTargetDelay;
  external set jitterBufferTargetDelay(num value);
  external int get jitterBufferEmittedCount;
  external set jitterBufferEmittedCount(int value);
  external num get jitterBufferMinimumDelay;
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
  external num get audioLevel;
  external set audioLevel(num value);
  external num get totalAudioEnergy;
  external set totalAudioEnergy(num value);
  external num get totalSamplesDuration;
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
  external num get totalAssemblyTime;
  external set totalAssemblyTime(num value);
  external int get retransmittedPacketsReceived;
  external set retransmittedPacketsReceived(int value);
  external int get retransmittedBytesReceived;
  external set retransmittedBytesReceived(int value);
  external int get rtxSsrc;
  external set rtxSsrc(int value);
  external int get fecSsrc;
  external set fecSsrc(int value);
}
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
    int packetsLost,
    num jitter,
    String localId,
    num roundTripTime,
    num totalRoundTripTime,
    num fractionLost,
    int roundTripTimeMeasurements,
  });

  external String get localId;
  external set localId(String value);
  external num get roundTripTime;
  external set roundTripTime(num value);
  external num get totalRoundTripTime;
  external set totalRoundTripTime(num value);
  external num get fractionLost;
  external set fractionLost(num value);
  external int get roundTripTimeMeasurements;
  external set roundTripTimeMeasurements(int value);
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
  });

  external String get mid;
  external set mid(String value);
  external String get mediaSourceId;
  external set mediaSourceId(String value);

  /// The **`remoteId`** property of the
  /// [RTCOutboundRtpStreamStats] dictionary specifies the
  /// [RTCOutboundRtpStreamStats.id] of the [RTCRemoteInboundRtpStreamStats]
  /// object representing the remote peer's [RTCRtpReceiver] which is sending
  /// the media to the local peer for this SSRC.
  external String get remoteId;
  external set remoteId(String value);
  external String get rid;
  external set rid(String value);
  external int get headerBytesSent;
  external set headerBytesSent(int value);
  external int get retransmittedPacketsSent;
  external set retransmittedPacketsSent(int value);
  external int get retransmittedBytesSent;
  external set retransmittedBytesSent(int value);
  external int get rtxSsrc;
  external set rtxSsrc(int value);
  external num get targetBitrate;
  external set targetBitrate(num value);
  external int get totalEncodedBytesTarget;
  external set totalEncodedBytesTarget(int value);
  external int get frameWidth;
  external set frameWidth(int value);
  external int get frameHeight;
  external set frameHeight(int value);
  external num get framesPerSecond;
  external set framesPerSecond(num value);
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
  external num get totalEncodeTime;
  external set totalEncodeTime(num value);
  external num get totalPacketSendDelay;
  external set totalPacketSendDelay(num value);

  /// The **`qualityLimitationReason`**
  /// property of the [RTCOutboundRtpStreamStats] dictionary is a string
  /// indicating the reason why the media quality in the stream is currently
  /// being reduced
  /// by the codec during encoding, or `none` if no quality reduction is being
  /// performed.
  ///
  /// This quality reduction may include changes such as reduced frame
  /// rate or resolution, or an increase in compression factor.
  ///
  /// The amount of time the encoded media has had its quality reduced in each
  /// of the
  /// potential ways that can be done can be found in
  /// [RTCOutboundRtpStreamStats.qualityLimitationDurations].
  external RTCQualityLimitationReason get qualityLimitationReason;
  external set qualityLimitationReason(RTCQualityLimitationReason value);
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

  /// The **`firCount`** property of the
  /// [RTCOutboundRtpStreamStats] dictionary indicates the number of
  /// **Full Intra Request** (**FIR**) that the remote
  /// [RTCRtpReceiver] has sent to this [RTCRtpSender].
  ///
  /// A FIR packet is sent when the receiver finds that it has fallen behind and
  /// needs to skip
  /// frames in order to catch up; the sender should respond by sending a full
  /// frame instead
  /// of a delta frame.
  ///
  /// Available only on video media.
  external int get firCount;
  external set firCount(int value);

  /// The **`pliCount`** property of the
  /// [RTCOutboundRtpStreamStats] dictionary states the number of times the
  /// remote peer's [RTCRtpReceiver] sent a **Picture Loss
  /// Indication** (**PLI**) packet to the [RTCRtpSender]
  /// for which this object provides statistics.
  ///
  /// A PLI packet indicates that some
  /// amount of encoded video data has been lost for one or more frames.
  external int get pliCount;
  external set pliCount(int value);
  external String get encoderImplementation;
  external set encoderImplementation(String value);
  external bool get powerEfficientEncoder;
  external set powerEfficientEncoder(bool value);
  external bool get active;
  external set active(bool value);
  external String get scalabilityMode;
  external set scalabilityMode(String value);
}

/// The **`RTCRemoteOutboundRtpStreamStats`** dictionary of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API) is
/// used to report statistics from remote endpoint of its outbound RTP stream,
/// which corresponds to an inbound stream that is currently received by an
/// [RTCPeerConnection] object.
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
  external DOMHighResTimeStamp get remoteTimestamp;
  external set remoteTimestamp(DOMHighResTimeStamp value);
  external int get reportsSent;
  external set reportsSent(int value);
  external num get roundTripTime;
  external set roundTripTime(num value);
  external num get totalRoundTripTime;
  external set totalRoundTripTime(num value);
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

/// The
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)'s
/// **`RTCAudioSourceStats`** dictionary provides information about an audio
/// track that is attached to one or more senders.
///
/// These statistics can be obtained by iterating the [RTCStatsReport] returned
/// by [RTCRtpSender.getStats] or [RTCPeerConnection.getStats] until you find a
/// report with the [`type`](#type) of `media-source` and a [`kind`](#kind) of
/// `audio`.
///
/// > **Note:** For audio information about remotely sourced tracks (that are
/// > being received), see [RTCInboundRtpStreamStats].
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

  /// The [RTCAudioSourceStats] dictionary's **`audioLevel`** property
  /// represents the audio level of the media source.
  ///
  /// The level is averaged over some small implementation-dependent interval.
  /// Users can alternatively calculate the average audio level over some
  /// arbitrary duration using the algorithm described in the
  /// [`RTCAudioSourceStats` description](https://developer.mozilla.org/en-US/docs/Web/API/RTCAudioSourceStats#description).
  ///
  /// > **Note:** For audio levels of remotely sourced tracks, see
  /// > [RTCInboundRtpStreamStats.audioLevel].
  external num get audioLevel;
  external set audioLevel(num value);

  /// The [RTCAudioSourceStats] dictionary's **`totalAudioEnergy`** property
  /// represents the total audio energy of the media source over the lifetime of
  /// this stats object.
  ///
  /// The total energy across a particular duration can be determined by
  /// subtracting the value of this property returned by two different
  /// `getStats()` calls.
  ///
  /// > **Note:** For audio energy of remotely sourced tracks, see
  /// > [RTCInboundRtpStreamStats.totalAudioEnergy].
  external num get totalAudioEnergy;
  external set totalAudioEnergy(num value);

  /// The [RTCAudioSourceStats] dictionary's **`totalSamplesDuration`** property
  /// represents the combined duration of all samples produced by the media
  /// source over the lifetime of this stats object, in seconds.
  /// It does not include samples dropped before reaching this media source.
  /// <!-- Dropped samples in `droppedSamplesDuration`; not implemented -->
  ///
  /// This can be used with [RTCAudioSourceStats.totalAudioEnergy] to compute an
  /// [average audio level over different intervals](https://developer.mozilla.org/en-US/docs/Web/API/RTCAudioSourceStats#description).
  ///
  /// > **Note:** For audio duration of remotely sourced tracks, see
  /// > [RTCInboundRtpStreamStats.totalSamplesDuration].
  external num get totalSamplesDuration;
  external set totalSamplesDuration(num value);
  external num get echoReturnLoss;
  external set echoReturnLoss(num value);
  external num get echoReturnLossEnhancement;
  external set echoReturnLossEnhancement(num value);
}
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

  external int get width;
  external set width(int value);
  external int get height;
  external set height(int value);
  external int get frames;
  external set frames(int value);
  external num get framesPerSecond;
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
  external num get synthesizedSamplesDuration;
  external set synthesizedSamplesDuration(num value);
  external int get synthesizedSamplesEvents;
  external set synthesizedSamplesEvents(int value);
  external num get totalSamplesDuration;
  external set totalSamplesDuration(num value);
  external num get totalPlayoutDelay;
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

  external String get label;
  external set label(String value);
  external String get protocol;
  external set protocol(String value);
  external int get dataChannelIdentifier;
  external set dataChannelIdentifier(int value);
  external RTCDataChannelState get state;
  external set state(RTCDataChannelState value);
  external int get messagesSent;
  external set messagesSent(int value);
  external int get bytesSent;
  external set bytesSent(int value);
  external int get messagesReceived;
  external set messagesReceived(int value);
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

  /// The **`transportId`** property
  /// uniquely identifies the [RTCIceTransport] that was inspected to obtain
  /// the transport-related statistics contained in the
  /// [RTCIceCandidatePairStats] object.
  external String get transportId;
  external set transportId(String value);

  /// The [RTCIceCandidatePairStats] property
  /// **`localCandidateId`** is a string that uniquely identifies
  /// the local  candidate which was analyzed to generate the
  /// [RTCIceCandidateStats] used to compute the statistics for this pair of
  /// candidates.
  external String get localCandidateId;
  external set localCandidateId(String value);

  /// The [RTCIceCandidatePairStats] property
  /// **`remoteCandidateId`** is a string that uniquely identifies
  /// the remote  candidate which was analyzed to generate the
  /// [RTCIceCandidateStats] used to compute the statistics for this pair of
  /// candidates.
  external String get remoteCandidateId;
  external set remoteCandidateId(String value);

  /// The **`state`** property is a string that indicates the state of the
  /// checklist of which the candidate pair is a member.
  external RTCStatsIceCandidatePairState get state;
  external set state(RTCStatsIceCandidatePairState value);

  /// The [RTCIceCandidatePairStats] property
  /// **`nominated`** specifies whether or not the candidate pair
  /// described by the underlying `RTCIceCandidatePair` has been nominated to be
  /// used as the configuration for the WebRTC connection.
  external bool get nominated;
  external set nominated(bool value);
  external int get packetsSent;
  external set packetsSent(int value);
  external int get packetsReceived;
  external set packetsReceived(int value);

  /// The [RTCIceCandidatePairStats] property
  /// **`bytesSent`** indicates the total number of payload
  /// bytes—that is, bytes which aren't overhead such as headers or padding—that
  /// have been
  /// sent so far on the connection described by the candidate pair.
  ///
  /// The [RTCIceCandidatePairStats.bytesReceived] property
  /// reports the number of bytes received so far on the described connection.
  external int get bytesSent;
  external set bytesSent(int value);

  /// The [RTCIceCandidatePairStats] property
  /// **`bytesReceived`** indicates the total number of payload
  /// bytes—that is, bytes which aren't overhead such as headers or padding—that
  /// have been
  /// received to date on the connection described by the candidate pair.
  ///
  /// The [RTCIceCandidatePairStats.bytesSent] property reports the
  /// number of bytes sent so far on the described connection.
  external int get bytesReceived;
  external set bytesReceived(int value);

  /// The [RTCIceCandidatePairStats] property
  /// **`lastPacketSentTimestamp`** indicates the time at which the
  /// connection described by the candidate pair last sent a packet, not
  /// including
  /// packets.
  external DOMHighResTimeStamp get lastPacketSentTimestamp;
  external set lastPacketSentTimestamp(DOMHighResTimeStamp value);

  /// The [RTCIceCandidatePairStats] property
  /// **`lastPacketReceivedTimestamp`** indicates the time at which
  /// the connection described by the candidate pair last received a packet.
  /// packets are not included.
  external DOMHighResTimeStamp get lastPacketReceivedTimestamp;
  external set lastPacketReceivedTimestamp(DOMHighResTimeStamp value);

  /// The [RTCIceCandidatePairStats] dictionary's
  /// **`totalRoundTripTime`** property is the total time that has
  /// elapsed between sending  requests and receiving the responses, for
  /// all such requests that have been made so far on the pair of candidates
  /// described by
  /// this `RTCIceCandidatePairStats` object. This value includes both
  /// connectivity check and consent check requests.
  external num get totalRoundTripTime;
  external set totalRoundTripTime(num value);

  /// The [RTCIceCandidatePairStats] property
  /// **`currentRoundTripTime`** is a floating-point value
  /// indicating the number of seconds it takes for data to be sent by this peer
  /// to the
  /// remote peer and back over the connection described by this pair of
  /// candidates.
  external num get currentRoundTripTime;
  external set currentRoundTripTime(num value);

  /// The [RTCIceCandidatePairStats] property
  /// **`availableOutgoingBitrate`** returns a value indicative of
  /// the available outbound capacity of the network connection represented by
  /// the candidate
  /// pair. The higher the value, the more bandwidth you can assume is available
  /// for
  /// outgoing data.
  ///
  /// You can get the incoming available bitrate from
  /// [RTCIceCandidatePairStats.availableIncomingBitrate].
  external num get availableOutgoingBitrate;
  external set availableOutgoingBitrate(num value);

  /// The [RTCIceCandidatePairStats] property
  /// **`availableIncomingBitrate`** returns a value indicative of
  /// the available inbound capacity of the network connection represented by
  /// the candidate
  /// pair. The higher the value, the more bandwidth you can assume is available
  /// for
  /// incoming data.
  ///
  /// You can get the outgoing available bitrate from
  /// [RTCIceCandidatePairStats.availableoutgoingBitrate].
  external num get availableIncomingBitrate;
  external set availableIncomingBitrate(num value);

  /// The [RTCIceCandidatePairStats] dictionary's
  /// **`requestsReceived`** property indicates the total number of
  /// connectivity check requests that have been received so far on the
  /// connection described by this pairing of candidates.
  external int get requestsReceived;
  external set requestsReceived(int value);

  /// The [RTCIceCandidatePairStats] dictionary's
  /// **`requestsSent`** property indicates the total number of
  /// connectivity check requests that have been sent so far on the
  /// connection described by this pair of candidates.
  external int get requestsSent;
  external set requestsSent(int value);

  /// The **`responsesReceived`** property
  /// in the [RTCIceCandidatePairStats] dictionary indicates the total number
  /// of  connectivity check responses that have been received on the
  /// connection described by this pair of candidates.
  external int get responsesReceived;
  external set responsesReceived(int value);

  /// The [RTCIceCandidatePairStats] dictionary's
  /// **`responsesSent`** property indicates the total number of
  /// connectivity check responses that have been sent so far on the
  /// connection described by this pair of candidates.
  external int get responsesSent;
  external set responsesSent(int value);
  external int get consentRequestsSent;
  external set consentRequestsSent(int value);
  external int get packetsDiscardedOnSend;
  external set packetsDiscardedOnSend(int value);
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
