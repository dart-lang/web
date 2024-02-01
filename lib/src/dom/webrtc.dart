// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'mediacapture_streams.dart';
import 'mst_content_hint.dart';
import 'webcryptoapi.dart';
import 'webidl.dart';
import 'webrtc_encoded_transform.dart';
import 'webrtc_ice.dart';
import 'webrtc_identity.dart';
import 'webrtc_priority.dart';
import 'webrtc_stats.dart';
import 'websockets.dart';

typedef RTCPeerConnectionErrorCallback = JSFunction;
typedef RTCSessionDescriptionCallback = JSFunction;
typedef RTCIceTransportPolicy = String;
typedef RTCBundlePolicy = String;
typedef RTCRtcpMuxPolicy = String;
typedef RTCSignalingState = String;
typedef RTCIceGatheringState = String;
typedef RTCPeerConnectionState = String;
typedef RTCIceConnectionState = String;
typedef RTCSdpType = String;
typedef RTCIceProtocol = String;
typedef RTCIceTcpCandidateType = String;
typedef RTCIceCandidateType = String;
typedef RTCIceServerTransportProtocol = String;
typedef RTCRtpTransceiverDirection = String;
typedef RTCDtlsTransportState = String;
typedef RTCIceGathererState = String;
typedef RTCIceTransportState = String;
typedef RTCIceRole = String;
typedef RTCIceComponent = String;
typedef RTCSctpTransportState = String;
typedef RTCDataChannelState = String;
typedef RTCErrorDetailType = String;
extension type RTCConfiguration._(JSObject _) implements JSObject {
  external factory RTCConfiguration({
    String peerIdentity,
    JSArray<RTCIceServer> iceServers,
    RTCIceTransportPolicy iceTransportPolicy,
    RTCBundlePolicy bundlePolicy,
    RTCRtcpMuxPolicy rtcpMuxPolicy,
    JSArray<RTCCertificate> certificates,
    int iceCandidatePoolSize,
  });

  external set peerIdentity(String value);
  external String get peerIdentity;
  external set iceServers(JSArray<RTCIceServer> value);
  external JSArray<RTCIceServer> get iceServers;
  external set iceTransportPolicy(RTCIceTransportPolicy value);
  external RTCIceTransportPolicy get iceTransportPolicy;
  external set bundlePolicy(RTCBundlePolicy value);
  external RTCBundlePolicy get bundlePolicy;
  external set rtcpMuxPolicy(RTCRtcpMuxPolicy value);
  external RTCRtcpMuxPolicy get rtcpMuxPolicy;
  external set certificates(JSArray<RTCCertificate> value);
  external JSArray<RTCCertificate> get certificates;
  external set iceCandidatePoolSize(int value);
  external int get iceCandidatePoolSize;
}
extension type RTCIceServer._(JSObject _) implements JSObject {
  external factory RTCIceServer({
    required JSAny urls,
    String username,
    String credential,
  });

  external set urls(JSAny value);
  external JSAny get urls;
  external set username(String value);
  external String get username;
  external set credential(String value);
  external String get credential;
}
extension type RTCOfferAnswerOptions._(JSObject _) implements JSObject {
  external factory RTCOfferAnswerOptions();
}
extension type RTCOfferOptions._(JSObject _)
    implements RTCOfferAnswerOptions, JSObject {
  external factory RTCOfferOptions({
    bool iceRestart,
    bool offerToReceiveAudio,
    bool offerToReceiveVideo,
  });

  external set iceRestart(bool value);
  external bool get iceRestart;
  external set offerToReceiveAudio(bool value);
  external bool get offerToReceiveAudio;
  external set offerToReceiveVideo(bool value);
  external bool get offerToReceiveVideo;
}
extension type RTCAnswerOptions._(JSObject _)
    implements RTCOfferAnswerOptions, JSObject {
  external factory RTCAnswerOptions();
}
extension type RTCPeerConnection._(JSObject _)
    implements EventTarget, JSObject {
  external factory RTCPeerConnection([RTCConfiguration configuration]);

  external static JSPromise<RTCCertificate> generateCertificate(
      AlgorithmIdentifier keygenAlgorithm);
  external void setIdentityProvider(
    String provider, [
    RTCIdentityProviderOptions options,
  ]);
  external JSPromise<JSString> getIdentityAssertion();
  external JSPromise<RTCSessionDescriptionInit?> createOffer([
    JSObject optionsOrSuccessCallback,
    RTCPeerConnectionErrorCallback failureCallback,
    RTCOfferOptions options,
  ]);
  external JSPromise<RTCSessionDescriptionInit?> createAnswer([
    JSObject optionsOrSuccessCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);
  external JSPromise<JSAny?> setLocalDescription([
    RTCLocalSessionDescriptionInit description,
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);
  external JSPromise<JSAny?> setRemoteDescription(
    RTCSessionDescriptionInit description, [
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);
  external JSPromise<JSAny?> addIceCandidate([
    RTCIceCandidateInit candidate,
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);
  external void restartIce();
  external RTCConfiguration getConfiguration();
  external void setConfiguration([RTCConfiguration configuration]);
  external void close();
  external JSArray<RTCRtpSender> getSenders();
  external JSArray<RTCRtpReceiver> getReceivers();
  external JSArray<RTCRtpTransceiver> getTransceivers();
  external RTCRtpSender addTrack(
    MediaStreamTrack track,
    MediaStream streams,
  );
  external void removeTrack(RTCRtpSender sender);
  external RTCRtpTransceiver addTransceiver(
    JSAny trackOrKind, [
    RTCRtpTransceiverInit init,
  ]);
  external RTCDataChannel createDataChannel(
    String label, [
    RTCDataChannelInit dataChannelDict,
  ]);
  external JSPromise<RTCStatsReport> getStats([MediaStreamTrack? selector]);
  external JSPromise<RTCIdentityAssertion> get peerIdentity;
  external String? get idpLoginUrl;
  external String? get idpErrorInfo;
  external RTCSessionDescription? get localDescription;
  external RTCSessionDescription? get currentLocalDescription;
  external RTCSessionDescription? get pendingLocalDescription;
  external RTCSessionDescription? get remoteDescription;
  external RTCSessionDescription? get currentRemoteDescription;
  external RTCSessionDescription? get pendingRemoteDescription;
  external RTCSignalingState get signalingState;
  external RTCIceGatheringState get iceGatheringState;
  external RTCIceConnectionState get iceConnectionState;
  external RTCPeerConnectionState get connectionState;
  external bool? get canTrickleIceCandidates;
  external set onnegotiationneeded(EventHandler value);
  external EventHandler get onnegotiationneeded;
  external set onicecandidate(EventHandler value);
  external EventHandler get onicecandidate;
  external set onicecandidateerror(EventHandler value);
  external EventHandler get onicecandidateerror;
  external set onsignalingstatechange(EventHandler value);
  external EventHandler get onsignalingstatechange;
  external set oniceconnectionstatechange(EventHandler value);
  external EventHandler get oniceconnectionstatechange;
  external set onicegatheringstatechange(EventHandler value);
  external EventHandler get onicegatheringstatechange;
  external set onconnectionstatechange(EventHandler value);
  external EventHandler get onconnectionstatechange;
  external set ontrack(EventHandler value);
  external EventHandler get ontrack;
  external RTCSctpTransport? get sctp;
  external set ondatachannel(EventHandler value);
  external EventHandler get ondatachannel;
}
extension type RTCSessionDescription._(JSObject _) implements JSObject {
  external factory RTCSessionDescription(
      RTCSessionDescriptionInit descriptionInitDict);

  external JSObject toJSON();
  external RTCSdpType get type;
  external String get sdp;
}
extension type RTCSessionDescriptionInit._(JSObject _) implements JSObject {
  external factory RTCSessionDescriptionInit({
    required RTCSdpType type,
    String sdp,
  });

  external set type(RTCSdpType value);
  external RTCSdpType get type;
  external set sdp(String value);
  external String get sdp;
}
extension type RTCLocalSessionDescriptionInit._(JSObject _)
    implements JSObject {
  external factory RTCLocalSessionDescriptionInit({
    RTCSdpType type,
    String sdp,
  });

  external set type(RTCSdpType value);
  external RTCSdpType get type;
  external set sdp(String value);
  external String get sdp;
}
extension type RTCIceCandidate._(JSObject _) implements JSObject {
  external factory RTCIceCandidate([RTCIceCandidateInit candidateInitDict]);

  external RTCIceCandidateInit toJSON();
  external String get candidate;
  external String? get sdpMid;
  external int? get sdpMLineIndex;
  external String? get foundation;
  external RTCIceComponent? get component;
  external int? get priority;
  external String? get address;
  external RTCIceProtocol? get protocol;
  external int? get port;
  external RTCIceCandidateType? get type;
  external RTCIceTcpCandidateType? get tcpType;
  external String? get relatedAddress;
  external int? get relatedPort;
  external String? get usernameFragment;
  external RTCIceServerTransportProtocol? get relayProtocol;
  external String? get url;
}
extension type RTCIceCandidateInit._(JSObject _) implements JSObject {
  external factory RTCIceCandidateInit({
    String candidate,
    String? sdpMid,
    int? sdpMLineIndex,
    String? usernameFragment,
  });

  external set candidate(String value);
  external String get candidate;
  external set sdpMid(String? value);
  external String? get sdpMid;
  external set sdpMLineIndex(int? value);
  external int? get sdpMLineIndex;
  external set usernameFragment(String? value);
  external String? get usernameFragment;
}
extension type RTCPeerConnectionIceEvent._(JSObject _)
    implements Event, JSObject {
  external factory RTCPeerConnectionIceEvent(
    String type, [
    RTCPeerConnectionIceEventInit eventInitDict,
  ]);

  external RTCIceCandidate? get candidate;
  external String? get url;
}
extension type RTCPeerConnectionIceEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory RTCPeerConnectionIceEventInit({
    RTCIceCandidate? candidate,
    String? url,
  });

  external set candidate(RTCIceCandidate? value);
  external RTCIceCandidate? get candidate;
  external set url(String? value);
  external String? get url;
}
extension type RTCPeerConnectionIceErrorEvent._(JSObject _)
    implements Event, JSObject {
  external factory RTCPeerConnectionIceErrorEvent(
    String type,
    RTCPeerConnectionIceErrorEventInit eventInitDict,
  );

  external String? get address;
  external int? get port;
  external String get url;
  external int get errorCode;
  external String get errorText;
}
extension type RTCPeerConnectionIceErrorEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory RTCPeerConnectionIceErrorEventInit({
    String? address,
    int? port,
    String url,
    required int errorCode,
    String errorText,
  });

  external set address(String? value);
  external String? get address;
  external set port(int? value);
  external int? get port;
  external set url(String value);
  external String get url;
  external set errorCode(int value);
  external int get errorCode;
  external set errorText(String value);
  external String get errorText;
}
extension type RTCCertificateExpiration._(JSObject _) implements JSObject {
  external factory RTCCertificateExpiration({int expires});

  external set expires(int value);
  external int get expires;
}
extension type RTCCertificate._(JSObject _) implements JSObject {
  external JSArray<RTCDtlsFingerprint> getFingerprints();
  external EpochTimeStamp get expires;
}
extension type RTCRtpTransceiverInit._(JSObject _) implements JSObject {
  external factory RTCRtpTransceiverInit({
    RTCRtpTransceiverDirection direction,
    JSArray<MediaStream> streams,
    JSArray<RTCRtpEncodingParameters> sendEncodings,
  });

  external set direction(RTCRtpTransceiverDirection value);
  external RTCRtpTransceiverDirection get direction;
  external set streams(JSArray<MediaStream> value);
  external JSArray<MediaStream> get streams;
  external set sendEncodings(JSArray<RTCRtpEncodingParameters> value);
  external JSArray<RTCRtpEncodingParameters> get sendEncodings;
}
extension type RTCRtpSender._(JSObject _) implements JSObject {
  external static RTCRtpCapabilities? getCapabilities(String kind);
  external JSPromise<JSAny?> generateKeyFrame([JSArray<JSString> rids]);
  external JSPromise<JSAny?> setParameters(
    RTCRtpSendParameters parameters, [
    RTCSetParameterOptions setParameterOptions,
  ]);
  external RTCRtpSendParameters getParameters();
  external JSPromise<JSAny?> replaceTrack(MediaStreamTrack? withTrack);
  external void setStreams(MediaStream streams);
  external JSPromise<RTCStatsReport> getStats();
  external set transform(RTCRtpTransform? value);
  external RTCRtpTransform? get transform;
  external MediaStreamTrack? get track;
  external RTCDtlsTransport? get transport;
  external RTCDTMFSender? get dtmf;
}
extension type RTCRtpParameters._(JSObject _) implements JSObject {
  external factory RTCRtpParameters({
    required JSArray<RTCRtpHeaderExtensionParameters> headerExtensions,
    required RTCRtcpParameters rtcp,
    required JSArray<RTCRtpCodecParameters> codecs,
  });

  external set headerExtensions(JSArray<RTCRtpHeaderExtensionParameters> value);
  external JSArray<RTCRtpHeaderExtensionParameters> get headerExtensions;
  external set rtcp(RTCRtcpParameters value);
  external RTCRtcpParameters get rtcp;
  external set codecs(JSArray<RTCRtpCodecParameters> value);
  external JSArray<RTCRtpCodecParameters> get codecs;
}
extension type RTCRtpSendParameters._(JSObject _)
    implements RTCRtpParameters, JSObject {
  external factory RTCRtpSendParameters({
    RTCDegradationPreference degradationPreference,
    required String transactionId,
    required JSArray<RTCRtpEncodingParameters> encodings,
  });

  external set degradationPreference(RTCDegradationPreference value);
  external RTCDegradationPreference get degradationPreference;
  external set transactionId(String value);
  external String get transactionId;
  external set encodings(JSArray<RTCRtpEncodingParameters> value);
  external JSArray<RTCRtpEncodingParameters> get encodings;
}
extension type RTCRtpReceiveParameters._(JSObject _)
    implements RTCRtpParameters, JSObject {
  external factory RTCRtpReceiveParameters();
}
extension type RTCRtpCodingParameters._(JSObject _) implements JSObject {
  external factory RTCRtpCodingParameters({String rid});

  external set rid(String value);
  external String get rid;
}
extension type RTCRtpEncodingParameters._(JSObject _)
    implements RTCRtpCodingParameters, JSObject {
  external factory RTCRtpEncodingParameters({
    RTCPriorityType priority,
    RTCPriorityType networkPriority,
    String scalabilityMode,
    bool active,
    int maxBitrate,
    num maxFramerate,
    num scaleResolutionDownBy,
  });

  external set priority(RTCPriorityType value);
  external RTCPriorityType get priority;
  external set networkPriority(RTCPriorityType value);
  external RTCPriorityType get networkPriority;
  external set scalabilityMode(String value);
  external String get scalabilityMode;
  external set active(bool value);
  external bool get active;
  external set maxBitrate(int value);
  external int get maxBitrate;
  external set maxFramerate(num value);
  external num get maxFramerate;
  external set scaleResolutionDownBy(num value);
  external num get scaleResolutionDownBy;
}
extension type RTCRtcpParameters._(JSObject _) implements JSObject {
  external factory RTCRtcpParameters({
    String cname,
    bool reducedSize,
  });

  external set cname(String value);
  external String get cname;
  external set reducedSize(bool value);
  external bool get reducedSize;
}
extension type RTCRtpHeaderExtensionParameters._(JSObject _)
    implements JSObject {
  external factory RTCRtpHeaderExtensionParameters({
    required String uri,
    required int id,
    bool encrypted,
  });

  external set uri(String value);
  external String get uri;
  external set id(int value);
  external int get id;
  external set encrypted(bool value);
  external bool get encrypted;
}
extension type RTCRtpCodec._(JSObject _) implements JSObject {
  external factory RTCRtpCodec({
    required String mimeType,
    required int clockRate,
    int channels,
    String sdpFmtpLine,
  });

  external set mimeType(String value);
  external String get mimeType;
  external set clockRate(int value);
  external int get clockRate;
  external set channels(int value);
  external int get channels;
  external set sdpFmtpLine(String value);
  external String get sdpFmtpLine;
}
extension type RTCRtpCodecParameters._(JSObject _)
    implements RTCRtpCodec, JSObject {
  external factory RTCRtpCodecParameters({required int payloadType});

  external set payloadType(int value);
  external int get payloadType;
}
extension type RTCRtpCapabilities._(JSObject _) implements JSObject {
  external factory RTCRtpCapabilities({
    required JSArray<RTCRtpCodecCapability> codecs,
    required JSArray<RTCRtpHeaderExtensionCapability> headerExtensions,
  });

  external set codecs(JSArray<RTCRtpCodecCapability> value);
  external JSArray<RTCRtpCodecCapability> get codecs;
  external set headerExtensions(JSArray<RTCRtpHeaderExtensionCapability> value);
  external JSArray<RTCRtpHeaderExtensionCapability> get headerExtensions;
}
extension type RTCRtpCodecCapability._(JSObject _)
    implements RTCRtpCodec, JSObject {
  external factory RTCRtpCodecCapability();
}
extension type RTCRtpHeaderExtensionCapability._(JSObject _)
    implements JSObject {
  external factory RTCRtpHeaderExtensionCapability({required String uri});

  external set uri(String value);
  external String get uri;
}
extension type RTCSetParameterOptions._(JSObject _) implements JSObject {
  external factory RTCSetParameterOptions();
}
extension type RTCRtpReceiver._(JSObject _) implements JSObject {
  external static RTCRtpCapabilities? getCapabilities(String kind);
  external RTCRtpReceiveParameters getParameters();
  external JSArray<RTCRtpContributingSource> getContributingSources();
  external JSArray<RTCRtpSynchronizationSource> getSynchronizationSources();
  external JSPromise<RTCStatsReport> getStats();
  external set transform(RTCRtpTransform? value);
  external RTCRtpTransform? get transform;
  external MediaStreamTrack get track;
  external RTCDtlsTransport? get transport;
}
extension type RTCRtpContributingSource._(JSObject _) implements JSObject {
  external factory RTCRtpContributingSource({
    required DOMHighResTimeStamp timestamp,
    required int source,
    num audioLevel,
    required int rtpTimestamp,
  });

  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set source(int value);
  external int get source;
  external set audioLevel(num value);
  external num get audioLevel;
  external set rtpTimestamp(int value);
  external int get rtpTimestamp;
}
extension type RTCRtpSynchronizationSource._(JSObject _)
    implements RTCRtpContributingSource, JSObject {
  external factory RTCRtpSynchronizationSource();
}
extension type RTCRtpTransceiver._(JSObject _) implements JSObject {
  external void stop();
  external void setCodecPreferences(JSArray<RTCRtpCodecCapability> codecs);
  external String? get mid;
  external RTCRtpSender get sender;
  external RTCRtpReceiver get receiver;
  external set direction(RTCRtpTransceiverDirection value);
  external RTCRtpTransceiverDirection get direction;
  external RTCRtpTransceiverDirection? get currentDirection;
}
extension type RTCDtlsTransport._(JSObject _) implements EventTarget, JSObject {
  external JSArray<JSArrayBuffer> getRemoteCertificates();
  external RTCIceTransport get iceTransport;
  external RTCDtlsTransportState get state;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}
extension type RTCDtlsFingerprint._(JSObject _) implements JSObject {
  external factory RTCDtlsFingerprint({
    String algorithm,
    String value,
  });

  external set algorithm(String value);
  external String get algorithm;
  external set value(String value);
  external String get value;
}
extension type RTCIceTransport._(JSObject _) implements EventTarget, JSObject {
  external factory RTCIceTransport();

  external void gather([RTCIceGatherOptions options]);
  external void start([
    RTCIceParameters remoteParameters,
    RTCIceRole role,
  ]);
  external void stop();
  external void addRemoteCandidate([RTCIceCandidateInit remoteCandidate]);
  external JSArray<RTCIceCandidate> getLocalCandidates();
  external JSArray<RTCIceCandidate> getRemoteCandidates();
  external RTCIceCandidatePair? getSelectedCandidatePair();
  external RTCIceParameters? getLocalParameters();
  external RTCIceParameters? getRemoteParameters();
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onicecandidate(EventHandler value);
  external EventHandler get onicecandidate;
  external RTCIceRole get role;
  external RTCIceComponent get component;
  external RTCIceTransportState get state;
  external RTCIceGathererState get gatheringState;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
  external set ongatheringstatechange(EventHandler value);
  external EventHandler get ongatheringstatechange;
  external set onselectedcandidatepairchange(EventHandler value);
  external EventHandler get onselectedcandidatepairchange;
}
extension type RTCIceParameters._(JSObject _) implements JSObject {
  external factory RTCIceParameters({
    bool iceLite,
    String usernameFragment,
    String password,
  });

  external set iceLite(bool value);
  external bool get iceLite;
  external set usernameFragment(String value);
  external String get usernameFragment;
  external set password(String value);
  external String get password;
}
extension type RTCIceCandidatePair._(JSObject _) implements JSObject {
  external factory RTCIceCandidatePair({
    RTCIceCandidate local,
    RTCIceCandidate remote,
  });

  external set local(RTCIceCandidate value);
  external RTCIceCandidate get local;
  external set remote(RTCIceCandidate value);
  external RTCIceCandidate get remote;
}
extension type RTCTrackEvent._(JSObject _) implements Event, JSObject {
  external factory RTCTrackEvent(
    String type,
    RTCTrackEventInit eventInitDict,
  );

  external RTCRtpReceiver get receiver;
  external MediaStreamTrack get track;
  external JSArray<MediaStream> get streams;
  external RTCRtpTransceiver get transceiver;
}
extension type RTCTrackEventInit._(JSObject _) implements EventInit, JSObject {
  external factory RTCTrackEventInit({
    required RTCRtpReceiver receiver,
    required MediaStreamTrack track,
    JSArray<MediaStream> streams,
    required RTCRtpTransceiver transceiver,
  });

  external set receiver(RTCRtpReceiver value);
  external RTCRtpReceiver get receiver;
  external set track(MediaStreamTrack value);
  external MediaStreamTrack get track;
  external set streams(JSArray<MediaStream> value);
  external JSArray<MediaStream> get streams;
  external set transceiver(RTCRtpTransceiver value);
  external RTCRtpTransceiver get transceiver;
}
extension type RTCSctpTransport._(JSObject _) implements EventTarget, JSObject {
  external RTCDtlsTransport get transport;
  external RTCSctpTransportState get state;
  external num get maxMessageSize;
  external int? get maxChannels;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
}
extension type RTCDataChannel._(JSObject _) implements EventTarget, JSObject {
  external void close();
  external void send(JSAny data);
  external RTCPriorityType get priority;
  external String get label;
  external bool get ordered;
  external int? get maxPacketLifeTime;
  external int? get maxRetransmits;
  external String get protocol;
  external bool get negotiated;
  external int? get id;
  external RTCDataChannelState get readyState;
  external int get bufferedAmount;
  external set bufferedAmountLowThreshold(int value);
  external int get bufferedAmountLowThreshold;
  external set onopen(EventHandler value);
  external EventHandler get onopen;
  external set onbufferedamountlow(EventHandler value);
  external EventHandler get onbufferedamountlow;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onclosing(EventHandler value);
  external EventHandler get onclosing;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set binaryType(BinaryType value);
  external BinaryType get binaryType;
}
extension type RTCDataChannelInit._(JSObject _) implements JSObject {
  external factory RTCDataChannelInit({
    RTCPriorityType priority,
    bool ordered,
    int maxPacketLifeTime,
    int maxRetransmits,
    String protocol,
    bool negotiated,
    int id,
  });

  external set priority(RTCPriorityType value);
  external RTCPriorityType get priority;
  external set ordered(bool value);
  external bool get ordered;
  external set maxPacketLifeTime(int value);
  external int get maxPacketLifeTime;
  external set maxRetransmits(int value);
  external int get maxRetransmits;
  external set protocol(String value);
  external String get protocol;
  external set negotiated(bool value);
  external bool get negotiated;
  external set id(int value);
  external int get id;
}
extension type RTCDataChannelEvent._(JSObject _) implements Event, JSObject {
  external factory RTCDataChannelEvent(
    String type,
    RTCDataChannelEventInit eventInitDict,
  );

  external RTCDataChannel get channel;
}
extension type RTCDataChannelEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory RTCDataChannelEventInit({required RTCDataChannel channel});

  external set channel(RTCDataChannel value);
  external RTCDataChannel get channel;
}
extension type RTCDTMFSender._(JSObject _) implements EventTarget, JSObject {
  external void insertDTMF(
    String tones, [
    int duration,
    int interToneGap,
  ]);
  external set ontonechange(EventHandler value);
  external EventHandler get ontonechange;
  external bool get canInsertDTMF;
  external String get toneBuffer;
}
extension type RTCDTMFToneChangeEvent._(JSObject _) implements Event, JSObject {
  external factory RTCDTMFToneChangeEvent(
    String type, [
    RTCDTMFToneChangeEventInit eventInitDict,
  ]);

  external String get tone;
}
extension type RTCDTMFToneChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory RTCDTMFToneChangeEventInit({String tone});

  external set tone(String value);
  external String get tone;
}
extension type RTCStatsReport._(JSObject _) implements JSObject {}
extension type RTCStats._(JSObject _) implements JSObject {
  external factory RTCStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required String id,
  });

  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set type(RTCStatsType value);
  external RTCStatsType get type;
  external set id(String value);
  external String get id;
}
extension type RTCError._(JSObject _) implements DOMException, JSObject {
  external factory RTCError(
    RTCErrorInit init, [
    String message,
  ]);

  external int? get httpRequestStatusCode;
  external RTCErrorDetailType get errorDetail;
  external int? get sdpLineNumber;
  external int? get sctpCauseCode;
  external int? get receivedAlert;
  external int? get sentAlert;
}
extension type RTCErrorInit._(JSObject _) implements JSObject {
  external factory RTCErrorInit({
    int httpRequestStatusCode,
    required RTCErrorDetailType errorDetail,
    int sdpLineNumber,
    int sctpCauseCode,
    int receivedAlert,
    int sentAlert,
  });

  external set httpRequestStatusCode(int value);
  external int get httpRequestStatusCode;
  external set errorDetail(RTCErrorDetailType value);
  external RTCErrorDetailType get errorDetail;
  external set sdpLineNumber(int value);
  external int get sdpLineNumber;
  external set sctpCauseCode(int value);
  external int get sctpCauseCode;
  external set receivedAlert(int value);
  external int get receivedAlert;
  external set sentAlert(int value);
  external int get sentAlert;
}
extension type RTCErrorEvent._(JSObject _) implements Event, JSObject {
  external factory RTCErrorEvent(
    String type,
    RTCErrorEventInit eventInitDict,
  );

  external RTCError get error;
}
extension type RTCErrorEventInit._(JSObject _) implements EventInit, JSObject {
  external factory RTCErrorEventInit({required RTCError error});

  external set error(RTCError value);
  external RTCError get error;
}
