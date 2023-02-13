// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef RTCPeerConnectionErrorCallback = JSFunction;
typedef RTCSessionDescriptionCallback = JSFunction;
typedef RTCIceTransportPolicy = JSString;
typedef RTCBundlePolicy = JSString;
typedef RTCRtcpMuxPolicy = JSString;
typedef RTCSignalingState = JSString;
typedef RTCIceGatheringState = JSString;
typedef RTCPeerConnectionState = JSString;
typedef RTCIceConnectionState = JSString;
typedef RTCSdpType = JSString;
typedef RTCIceProtocol = JSString;
typedef RTCIceTcpCandidateType = JSString;
typedef RTCIceCandidateType = JSString;
typedef RTCIceServerTransportProtocol = JSString;
typedef RTCRtpTransceiverDirection = JSString;
typedef RTCDtlsTransportState = JSString;
typedef RTCIceGathererState = JSString;
typedef RTCIceTransportState = JSString;
typedef RTCIceRole = JSString;
typedef RTCIceComponent = JSString;
typedef RTCSctpTransportState = JSString;
typedef RTCDataChannelState = JSString;
typedef RTCErrorDetailType = JSString;

@JS('RTCConfiguration')
@staticInterop
class RTCConfiguration {
  external factory RTCConfiguration();
}

extension RTCConfigurationExtension on RTCConfiguration {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCIceServer')
@staticInterop
class RTCIceServer {
  external factory RTCIceServer();
}

extension RTCIceServerExtension on RTCIceServer {
  // TODO
  // TODO
  // TODO
}

@JS('RTCOfferAnswerOptions')
@staticInterop
class RTCOfferAnswerOptions {
  external factory RTCOfferAnswerOptions();
}

@JS('RTCOfferOptions')
@staticInterop
class RTCOfferOptions extends RTCOfferAnswerOptions {
  external factory RTCOfferOptions();
}

extension RTCOfferOptionsExtension on RTCOfferOptions {
  // TODO
  // TODO
  // TODO
}

@JS('RTCAnswerOptions')
@staticInterop
class RTCAnswerOptions extends RTCOfferAnswerOptions {
  external factory RTCAnswerOptions();
}

@JS('RTCPeerConnection')
@staticInterop
class RTCPeerConnection extends EventTarget {
  external factory RTCPeerConnection();
  external factory RTCPeerConnection.a1();
  external factory RTCPeerConnection.a1_1(RTCConfiguration configuration);
  external static JSPromise generateCertificate(
      AlgorithmIdentifier keygenAlgorithm);
}

extension RTCPeerConnectionExtension on RTCPeerConnection {
  external JSUndefined setIdentityProvider(JSString provider);
  external JSUndefined setIdentityProvider_1(
      JSString provider, RTCIdentityProviderOptions options);
  external JSPromise getIdentityAssertion();
  external JSPromise get peerIdentity;
  external JSString? get idpLoginUrl;
  external JSString? get idpErrorInfo;
  external JSPromise createOffer();
  external JSPromise createOffer_1(RTCOfferOptions options);
  external JSPromise createAnswer();
  external JSPromise createAnswer_1(RTCAnswerOptions options);
  external JSPromise setLocalDescription();
  external JSPromise setLocalDescription_1(
      RTCLocalSessionDescriptionInit description);
  external RTCSessionDescription? get localDescription;
  external RTCSessionDescription? get currentLocalDescription;
  external RTCSessionDescription? get pendingLocalDescription;
  external JSPromise setRemoteDescription(
      RTCSessionDescriptionInit description);
  external RTCSessionDescription? get remoteDescription;
  external RTCSessionDescription? get currentRemoteDescription;
  external RTCSessionDescription? get pendingRemoteDescription;
  external JSPromise addIceCandidate();
  external JSPromise addIceCandidate_1(RTCIceCandidateInit candidate);
  external RTCSignalingState get signalingState;
  external RTCIceGatheringState get iceGatheringState;
  external RTCIceConnectionState get iceConnectionState;
  external RTCPeerConnectionState get connectionState;
  external JSBoolean? get canTrickleIceCandidates;
  external JSUndefined restartIce();
  external RTCConfiguration getConfiguration();
  external JSUndefined setConfiguration();
  external JSUndefined setConfiguration_1(RTCConfiguration configuration);
  external JSUndefined close();
  external EventHandler get onnegotiationneeded;
  external set onnegotiationneeded(EventHandler value);
  external EventHandler get onicecandidate;
  external set onicecandidate(EventHandler value);
  external EventHandler get onicecandidateerror;
  external set onicecandidateerror(EventHandler value);
  external EventHandler get onsignalingstatechange;
  external set onsignalingstatechange(EventHandler value);
  external EventHandler get oniceconnectionstatechange;
  external set oniceconnectionstatechange(EventHandler value);
  external EventHandler get onicegatheringstatechange;
  external set onicegatheringstatechange(EventHandler value);
  external EventHandler get onconnectionstatechange;
  external set onconnectionstatechange(EventHandler value);
  @JS('createOffer')
  external JSPromise createOffer1(RTCSessionDescriptionCallback successCallback,
      RTCPeerConnectionErrorCallback failureCallback);
  @JS('createOffer')
  external JSPromise createOffer1_1(
      RTCSessionDescriptionCallback successCallback,
      RTCPeerConnectionErrorCallback failureCallback,
      RTCOfferOptions options);
  @JS('setLocalDescription')
  external JSPromise setLocalDescription1(
      RTCLocalSessionDescriptionInit description,
      VoidFunction successCallback,
      RTCPeerConnectionErrorCallback failureCallback);
  @JS('createAnswer')
  external JSPromise createAnswer1(
      RTCSessionDescriptionCallback successCallback,
      RTCPeerConnectionErrorCallback failureCallback);
  @JS('setRemoteDescription')
  external JSPromise setRemoteDescription1(
      RTCSessionDescriptionInit description,
      VoidFunction successCallback,
      RTCPeerConnectionErrorCallback failureCallback);
  @JS('addIceCandidate')
  external JSPromise addIceCandidate1(
      RTCIceCandidateInit candidate,
      VoidFunction successCallback,
      RTCPeerConnectionErrorCallback failureCallback);
  external JSArray getSenders();
  external JSArray getReceivers();
  external JSArray getTransceivers();
  external RTCRtpSender addTrack(MediaStreamTrack track, MediaStream streams);
  external JSUndefined removeTrack(RTCRtpSender sender);
  external RTCRtpTransceiver addTransceiver(JSAny trackOrKind);
  external RTCRtpTransceiver addTransceiver_1(
      JSAny trackOrKind, RTCRtpTransceiverInit init);
  external EventHandler get ontrack;
  external set ontrack(EventHandler value);
  external RTCSctpTransport? get sctp;
  external RTCDataChannel createDataChannel(JSString label);
  external RTCDataChannel createDataChannel_1(
      JSString label, RTCDataChannelInit dataChannelDict);
  external EventHandler get ondatachannel;
  external set ondatachannel(EventHandler value);
  external JSPromise getStats();
  external JSPromise getStats_1(MediaStreamTrack? selector);
}

@JS('RTCSessionDescription')
@staticInterop
class RTCSessionDescription {
  external factory RTCSessionDescription();
  external factory RTCSessionDescription.a1(
      RTCSessionDescriptionInit descriptionInitDict);
}

extension RTCSessionDescriptionExtension on RTCSessionDescription {
  external RTCSdpType get type;
  external JSString get sdp;
  external JSObject toJSON();
}

@JS('RTCSessionDescriptionInit')
@staticInterop
class RTCSessionDescriptionInit {
  external factory RTCSessionDescriptionInit();
}

extension RTCSessionDescriptionInitExtension on RTCSessionDescriptionInit {
  // TODO
  // TODO
}

@JS('RTCLocalSessionDescriptionInit')
@staticInterop
class RTCLocalSessionDescriptionInit {
  external factory RTCLocalSessionDescriptionInit();
}

extension RTCLocalSessionDescriptionInitExtension
    on RTCLocalSessionDescriptionInit {
  // TODO
  // TODO
}

@JS('RTCIceCandidate')
@staticInterop
class RTCIceCandidate {
  external factory RTCIceCandidate();
  external factory RTCIceCandidate.a1();
  external factory RTCIceCandidate.a1_1(RTCIceCandidateInit candidateInitDict);
}

extension RTCIceCandidateExtension on RTCIceCandidate {
  external JSString get candidate;
  external JSString? get sdpMid;
  external JSNumber? get sdpMLineIndex;
  external JSString? get foundation;
  external RTCIceComponent? get component;
  external JSNumber? get priority;
  external JSString? get address;
  external RTCIceProtocol? get protocol;
  external JSNumber? get port;
  external RTCIceCandidateType? get type;
  external RTCIceTcpCandidateType? get tcpType;
  external JSString? get relatedAddress;
  external JSNumber? get relatedPort;
  external JSString? get usernameFragment;
  external RTCIceServerTransportProtocol? get relayProtocol;
  external JSString? get url;
  external RTCIceCandidateInit toJSON();
}

@JS('RTCIceCandidateInit')
@staticInterop
class RTCIceCandidateInit {
  external factory RTCIceCandidateInit();
}

extension RTCIceCandidateInitExtension on RTCIceCandidateInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCPeerConnectionIceEvent')
@staticInterop
class RTCPeerConnectionIceEvent extends Event {
  external factory RTCPeerConnectionIceEvent();
  external factory RTCPeerConnectionIceEvent.a1(JSString type);
  external factory RTCPeerConnectionIceEvent.a1_1(
      JSString type, RTCPeerConnectionIceEventInit eventInitDict);
}

extension RTCPeerConnectionIceEventExtension on RTCPeerConnectionIceEvent {
  external RTCIceCandidate? get candidate;
  external JSString? get url;
}

@JS('RTCPeerConnectionIceEventInit')
@staticInterop
class RTCPeerConnectionIceEventInit extends EventInit {
  external factory RTCPeerConnectionIceEventInit();
}

extension RTCPeerConnectionIceEventInitExtension
    on RTCPeerConnectionIceEventInit {
  // TODO
  // TODO
}

@JS('RTCPeerConnectionIceErrorEvent')
@staticInterop
class RTCPeerConnectionIceErrorEvent extends Event {
  external factory RTCPeerConnectionIceErrorEvent();
  external factory RTCPeerConnectionIceErrorEvent.a1(
      JSString type, RTCPeerConnectionIceErrorEventInit eventInitDict);
}

extension RTCPeerConnectionIceErrorEventExtension
    on RTCPeerConnectionIceErrorEvent {
  external JSString? get address;
  external JSNumber? get port;
  external JSString get url;
  external JSNumber get errorCode;
  external JSString get errorText;
}

@JS('RTCPeerConnectionIceErrorEventInit')
@staticInterop
class RTCPeerConnectionIceErrorEventInit extends EventInit {
  external factory RTCPeerConnectionIceErrorEventInit();
}

extension RTCPeerConnectionIceErrorEventInitExtension
    on RTCPeerConnectionIceErrorEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCCertificateExpiration')
@staticInterop
class RTCCertificateExpiration {
  external factory RTCCertificateExpiration();
}

extension RTCCertificateExpirationExtension on RTCCertificateExpiration {
  // TODO
}

@JS('RTCCertificate')
@staticInterop
class RTCCertificate {
  external factory RTCCertificate();
}

extension RTCCertificateExtension on RTCCertificate {
  external EpochTimeStamp get expires;
  external JSArray getFingerprints();
}

@JS('RTCRtpTransceiverInit')
@staticInterop
class RTCRtpTransceiverInit {
  external factory RTCRtpTransceiverInit();
}

extension RTCRtpTransceiverInitExtension on RTCRtpTransceiverInit {
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpSender')
@staticInterop
class RTCRtpSender {
  external factory RTCRtpSender();
  external static RTCRtpCapabilities? getCapabilities(JSString kind);
}

extension RTCRtpSenderExtension on RTCRtpSender {
  external RTCRtpTransform? get transform;
  external set transform(RTCRtpTransform? value);
  external JSPromise generateKeyFrame();
  external JSPromise generateKeyFrame_1(JSArray rids);
  external MediaStreamTrack? get track;
  external RTCDtlsTransport? get transport;
  external JSPromise setParameters(RTCRtpSendParameters parameters);
  external RTCRtpSendParameters getParameters();
  external JSPromise replaceTrack(MediaStreamTrack? withTrack);
  external JSUndefined setStreams(MediaStream streams);
  external JSPromise getStats();
  external RTCDTMFSender? get dtmf;
}

@JS('RTCRtpParameters')
@staticInterop
class RTCRtpParameters {
  external factory RTCRtpParameters();
}

extension RTCRtpParametersExtension on RTCRtpParameters {
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpSendParameters')
@staticInterop
class RTCRtpSendParameters extends RTCRtpParameters {
  external factory RTCRtpSendParameters();
}

extension RTCRtpSendParametersExtension on RTCRtpSendParameters {
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpReceiveParameters')
@staticInterop
class RTCRtpReceiveParameters extends RTCRtpParameters {
  external factory RTCRtpReceiveParameters();
}

@JS('RTCRtpCodingParameters')
@staticInterop
class RTCRtpCodingParameters {
  external factory RTCRtpCodingParameters();
}

extension RTCRtpCodingParametersExtension on RTCRtpCodingParameters {
  // TODO
}

@JS('RTCRtpEncodingParameters')
@staticInterop
class RTCRtpEncodingParameters extends RTCRtpCodingParameters {
  external factory RTCRtpEncodingParameters();
}

extension RTCRtpEncodingParametersExtension on RTCRtpEncodingParameters {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtcpParameters')
@staticInterop
class RTCRtcpParameters {
  external factory RTCRtcpParameters();
}

extension RTCRtcpParametersExtension on RTCRtcpParameters {
  // TODO
  // TODO
}

@JS('RTCRtpHeaderExtensionParameters')
@staticInterop
class RTCRtpHeaderExtensionParameters {
  external factory RTCRtpHeaderExtensionParameters();
}

extension RTCRtpHeaderExtensionParametersExtension
    on RTCRtpHeaderExtensionParameters {
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpCodecParameters')
@staticInterop
class RTCRtpCodecParameters {
  external factory RTCRtpCodecParameters();
}

extension RTCRtpCodecParametersExtension on RTCRtpCodecParameters {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpCapabilities')
@staticInterop
class RTCRtpCapabilities {
  external factory RTCRtpCapabilities();
}

extension RTCRtpCapabilitiesExtension on RTCRtpCapabilities {
  // TODO
  // TODO
}

@JS('RTCRtpCodecCapability')
@staticInterop
class RTCRtpCodecCapability {
  external factory RTCRtpCodecCapability();
}

extension RTCRtpCodecCapabilityExtension on RTCRtpCodecCapability {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpHeaderExtensionCapability')
@staticInterop
class RTCRtpHeaderExtensionCapability {
  external factory RTCRtpHeaderExtensionCapability();
}

extension RTCRtpHeaderExtensionCapabilityExtension
    on RTCRtpHeaderExtensionCapability {
  // TODO
}

@JS('RTCRtpReceiver')
@staticInterop
class RTCRtpReceiver {
  external factory RTCRtpReceiver();
  external static RTCRtpCapabilities? getCapabilities(JSString kind);
}

extension RTCRtpReceiverExtension on RTCRtpReceiver {
  external RTCRtpTransform? get transform;
  external set transform(RTCRtpTransform? value);
  external MediaStreamTrack get track;
  external RTCDtlsTransport? get transport;
  external RTCRtpReceiveParameters getParameters();
  external JSArray getContributingSources();
  external JSArray getSynchronizationSources();
  external JSPromise getStats();
}

@JS('RTCRtpContributingSource')
@staticInterop
class RTCRtpContributingSource {
  external factory RTCRtpContributingSource();
}

extension RTCRtpContributingSourceExtension on RTCRtpContributingSource {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCRtpSynchronizationSource')
@staticInterop
class RTCRtpSynchronizationSource extends RTCRtpContributingSource {
  external factory RTCRtpSynchronizationSource();
}

@JS('RTCRtpTransceiver')
@staticInterop
class RTCRtpTransceiver {
  external factory RTCRtpTransceiver();
}

extension RTCRtpTransceiverExtension on RTCRtpTransceiver {
  external JSString? get mid;
  external RTCRtpSender get sender;
  external RTCRtpReceiver get receiver;
  external RTCRtpTransceiverDirection get direction;
  external set direction(RTCRtpTransceiverDirection value);
  external RTCRtpTransceiverDirection? get currentDirection;
  external JSUndefined stop();
  external JSUndefined setCodecPreferences(JSArray codecs);
}

@JS('RTCDtlsTransport')
@staticInterop
class RTCDtlsTransport extends EventTarget {
  external factory RTCDtlsTransport();
}

extension RTCDtlsTransportExtension on RTCDtlsTransport {
  external RTCIceTransport get iceTransport;
  external RTCDtlsTransportState get state;
  external JSArray getRemoteCertificates();
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
}

@JS('RTCDtlsFingerprint')
@staticInterop
class RTCDtlsFingerprint {
  external factory RTCDtlsFingerprint();
}

extension RTCDtlsFingerprintExtension on RTCDtlsFingerprint {
  // TODO
  // TODO
}

@JS('RTCIceTransport')
@staticInterop
class RTCIceTransport extends EventTarget {
  external factory RTCIceTransport();
}

extension RTCIceTransportExtension on RTCIceTransport {
  external JSUndefined gather();
  external JSUndefined gather_1(RTCIceGatherOptions options);
  external JSUndefined start();
  external JSUndefined start_1(RTCIceParameters remoteParameters);
  external JSUndefined start_2(
      RTCIceParameters remoteParameters, RTCIceRole role);
  external JSUndefined stop();
  external JSUndefined addRemoteCandidate();
  external JSUndefined addRemoteCandidate_1(
      RTCIceCandidateInit remoteCandidate);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onicecandidate;
  external set onicecandidate(EventHandler value);
  external RTCIceRole get role;
  external RTCIceComponent get component;
  external RTCIceTransportState get state;
  external RTCIceGathererState get gatheringState;
  external JSArray getLocalCandidates();
  external JSArray getRemoteCandidates();
  external RTCIceCandidatePair? getSelectedCandidatePair();
  external RTCIceParameters? getLocalParameters();
  external RTCIceParameters? getRemoteParameters();
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
  external EventHandler get ongatheringstatechange;
  external set ongatheringstatechange(EventHandler value);
  external EventHandler get onselectedcandidatepairchange;
  external set onselectedcandidatepairchange(EventHandler value);
}

@JS('RTCIceParameters')
@staticInterop
class RTCIceParameters {
  external factory RTCIceParameters();
}

extension RTCIceParametersExtension on RTCIceParameters {
  // TODO
  // TODO
  // TODO
}

@JS('RTCIceCandidatePair')
@staticInterop
class RTCIceCandidatePair {
  external factory RTCIceCandidatePair();
}

extension RTCIceCandidatePairExtension on RTCIceCandidatePair {
  // TODO
  // TODO
}

@JS('RTCTrackEvent')
@staticInterop
class RTCTrackEvent extends Event {
  external factory RTCTrackEvent();
  external factory RTCTrackEvent.a1(
      JSString type, RTCTrackEventInit eventInitDict);
}

extension RTCTrackEventExtension on RTCTrackEvent {
  external RTCRtpReceiver get receiver;
  external MediaStreamTrack get track;
  external JSArray get streams;
  external RTCRtpTransceiver get transceiver;
}

@JS('RTCTrackEventInit')
@staticInterop
class RTCTrackEventInit extends EventInit {
  external factory RTCTrackEventInit();
}

extension RTCTrackEventInitExtension on RTCTrackEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCSctpTransport')
@staticInterop
class RTCSctpTransport extends EventTarget {
  external factory RTCSctpTransport();
}

extension RTCSctpTransportExtension on RTCSctpTransport {
  external RTCDtlsTransport get transport;
  external RTCSctpTransportState get state;
  external JSNumber get maxMessageSize;
  external JSNumber? get maxChannels;
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
}

@JS('RTCDataChannel')
@staticInterop
class RTCDataChannel extends EventTarget {
  external factory RTCDataChannel();
}

extension RTCDataChannelExtension on RTCDataChannel {
  external RTCPriorityType get priority;
  external JSString get label;
  external JSBoolean get ordered;
  external JSNumber? get maxPacketLifeTime;
  external JSNumber? get maxRetransmits;
  external JSString get protocol;
  external JSBoolean get negotiated;
  external JSNumber? get id;
  external RTCDataChannelState get readyState;
  external JSNumber get bufferedAmount;
  external JSNumber get bufferedAmountLowThreshold;
  external set bufferedAmountLowThreshold(JSNumber value);
  external EventHandler get onopen;
  external set onopen(EventHandler value);
  external EventHandler get onbufferedamountlow;
  external set onbufferedamountlow(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onclosing;
  external set onclosing(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external JSUndefined close();
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external BinaryType get binaryType;
  external set binaryType(BinaryType value);
  external JSUndefined send(JSString data);
  @JS('send')
  external JSUndefined send1(Blob data);
  @JS('send')
  external JSUndefined send2(JSArrayBuffer data);
  @JS('send')
  external JSUndefined send3(ArrayBufferView data);
}

@JS('RTCDataChannelInit')
@staticInterop
class RTCDataChannelInit {
  external factory RTCDataChannelInit();
}

extension RTCDataChannelInitExtension on RTCDataChannelInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCDataChannelEvent')
@staticInterop
class RTCDataChannelEvent extends Event {
  external factory RTCDataChannelEvent();
  external factory RTCDataChannelEvent.a1(
      JSString type, RTCDataChannelEventInit eventInitDict);
}

extension RTCDataChannelEventExtension on RTCDataChannelEvent {
  external RTCDataChannel get channel;
}

@JS('RTCDataChannelEventInit')
@staticInterop
class RTCDataChannelEventInit extends EventInit {
  external factory RTCDataChannelEventInit();
}

extension RTCDataChannelEventInitExtension on RTCDataChannelEventInit {
  // TODO
}

@JS('RTCDTMFSender')
@staticInterop
class RTCDTMFSender extends EventTarget {
  external factory RTCDTMFSender();
}

extension RTCDTMFSenderExtension on RTCDTMFSender {
  external JSUndefined insertDTMF(JSString tones);
  external JSUndefined insertDTMF_1(JSString tones, JSNumber duration);
  external JSUndefined insertDTMF_2(
      JSString tones, JSNumber duration, JSNumber interToneGap);
  external EventHandler get ontonechange;
  external set ontonechange(EventHandler value);
  external JSBoolean get canInsertDTMF;
  external JSString get toneBuffer;
}

@JS('RTCDTMFToneChangeEvent')
@staticInterop
class RTCDTMFToneChangeEvent extends Event {
  external factory RTCDTMFToneChangeEvent();
  external factory RTCDTMFToneChangeEvent.a1(JSString type);
  external factory RTCDTMFToneChangeEvent.a1_1(
      JSString type, RTCDTMFToneChangeEventInit eventInitDict);
}

extension RTCDTMFToneChangeEventExtension on RTCDTMFToneChangeEvent {
  external JSString get tone;
}

@JS('RTCDTMFToneChangeEventInit')
@staticInterop
class RTCDTMFToneChangeEventInit extends EventInit {
  external factory RTCDTMFToneChangeEventInit();
}

extension RTCDTMFToneChangeEventInitExtension on RTCDTMFToneChangeEventInit {
  // TODO
}

@JS('RTCStatsReport')
@staticInterop
class RTCStatsReport {
  external factory RTCStatsReport();
}

extension RTCStatsReportExtension on RTCStatsReport {
  // TODO
}

@JS('RTCStats')
@staticInterop
class RTCStats {
  external factory RTCStats();
}

extension RTCStatsExtension on RTCStats {
  // TODO
  // TODO
  // TODO
}

@JS('RTCError')
@staticInterop
class RTCError extends DOMException {
  external factory RTCError();
  external factory RTCError.a1(RTCErrorInit init);
  external factory RTCError.a1_1(RTCErrorInit init, JSString message);
}

extension RTCErrorExtension on RTCError {
  external JSNumber? get httpRequestStatusCode;
  external RTCErrorDetailType get errorDetail;
  external JSNumber? get sdpLineNumber;
  external JSNumber? get sctpCauseCode;
  external JSNumber? get receivedAlert;
  external JSNumber? get sentAlert;
}

@JS('RTCErrorInit')
@staticInterop
class RTCErrorInit {
  external factory RTCErrorInit();
}

extension RTCErrorInitExtension on RTCErrorInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCErrorEvent')
@staticInterop
class RTCErrorEvent extends Event {
  external factory RTCErrorEvent();
  external factory RTCErrorEvent.a1(
      JSString type, RTCErrorEventInit eventInitDict);
}

extension RTCErrorEventExtension on RTCErrorEvent {
  external RTCError get error;
}

@JS('RTCErrorEventInit')
@staticInterop
class RTCErrorEventInit extends EventInit {
  external factory RTCErrorEventInit();
}

extension RTCErrorEventInitExtension on RTCErrorEventInit {
  // TODO
}
