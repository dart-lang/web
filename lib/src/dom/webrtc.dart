// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/fileapi.dart';
import 'package:web/src/dom/hr_time.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/mediacapture_streams.dart';
import 'package:web/src/dom/webcryptoapi.dart';
import 'package:web/src/dom/webidl.dart';
import 'package:web/src/dom/webrtc_encoded_transform.dart';
import 'package:web/src/dom/webrtc_ice.dart';
import 'package:web/src/dom/webrtc_identity.dart';
import 'package:web/src/dom/webrtc_priority.dart';
import 'package:web/src/dom/websockets.dart';

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

extension RTCConfigurationExtension on RTCConfiguration {}

@JS('RTCIceServer')
@staticInterop
class RTCIceServer {
  external factory RTCIceServer();
}

extension RTCIceServerExtension on RTCIceServer {}

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

extension RTCOfferOptionsExtension on RTCOfferOptions {}

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

  external factory RTCPeerConnection.a2(RTCConfiguration configuration);

  external static JSPromise generateCertificate(
      AlgorithmIdentifier keygenAlgorithm);
}

extension RTCPeerConnectionExtension on RTCPeerConnection {
  external JSVoid setIdentityProvider(JSString provider);
  external JSVoid setIdentityProvider1(
    JSString provider,
    RTCIdentityProviderOptions options,
  );
  external JSPromise getIdentityAssertion();
  external JSPromise get peerIdentity;
  external JSString? get idpLoginUrl;
  external JSString? get idpErrorInfo;
  external JSPromise createOffer();
  external JSPromise createOffer1(RTCOfferOptions options);
  external JSPromise createAnswer();
  external JSPromise createAnswer1(RTCAnswerOptions options);
  external JSPromise setLocalDescription();
  external JSPromise setLocalDescription1(
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
  external JSPromise addIceCandidate1(RTCIceCandidateInit candidate);
  external RTCSignalingState get signalingState;
  external RTCIceGatheringState get iceGatheringState;
  external RTCIceConnectionState get iceConnectionState;
  external RTCPeerConnectionState get connectionState;
  external JSBoolean? get canTrickleIceCandidates;
  external JSVoid restartIce();
  external RTCConfiguration getConfiguration();
  external JSVoid setConfiguration();
  external JSVoid setConfiguration1(RTCConfiguration configuration);
  external JSVoid close();
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
  @JS('createOffer')
  external JSPromise createOffer_1_(
    RTCSessionDescriptionCallback successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  );
  @JS('createOffer')
  external JSPromise createOffer_1_1(
    RTCSessionDescriptionCallback successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
    RTCOfferOptions options,
  );
  @JS('setLocalDescription')
  external JSPromise setLocalDescription_1_(
    RTCLocalSessionDescriptionInit description,
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  );
  @JS('createAnswer')
  external JSPromise createAnswer_1_(
    RTCSessionDescriptionCallback successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  );
  @JS('setRemoteDescription')
  external JSPromise setRemoteDescription_1_(
    RTCSessionDescriptionInit description,
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  );
  @JS('addIceCandidate')
  external JSPromise addIceCandidate_1_(
    RTCIceCandidateInit candidate,
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  );
  external JSArray getSenders();
  external JSArray getReceivers();
  external JSArray getTransceivers();
  external RTCRtpSender addTrack(
    MediaStreamTrack track,
    MediaStream streams,
  );
  external JSVoid removeTrack(RTCRtpSender sender);
  external RTCRtpTransceiver addTransceiver(JSAny trackOrKind);
  external RTCRtpTransceiver addTransceiver1(
    JSAny trackOrKind,
    RTCRtpTransceiverInit init,
  );
  external set ontrack(EventHandler value);
  external EventHandler get ontrack;
  external RTCSctpTransport? get sctp;
  external RTCDataChannel createDataChannel(JSString label);
  external RTCDataChannel createDataChannel1(
    JSString label,
    RTCDataChannelInit dataChannelDict,
  );
  external set ondatachannel(EventHandler value);
  external EventHandler get ondatachannel;
  external JSPromise getStats();
  external JSPromise getStats1(MediaStreamTrack? selector);
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

extension RTCSessionDescriptionInitExtension on RTCSessionDescriptionInit {}

@JS('RTCLocalSessionDescriptionInit')
@staticInterop
class RTCLocalSessionDescriptionInit {
  external factory RTCLocalSessionDescriptionInit();
}

extension RTCLocalSessionDescriptionInitExtension
    on RTCLocalSessionDescriptionInit {}

@JS('RTCIceCandidate')
@staticInterop
class RTCIceCandidate {
  external factory RTCIceCandidate();

  external factory RTCIceCandidate.a1();

  external factory RTCIceCandidate.a2(RTCIceCandidateInit candidateInitDict);
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

extension RTCIceCandidateInitExtension on RTCIceCandidateInit {}

@JS('RTCPeerConnectionIceEvent')
@staticInterop
class RTCPeerConnectionIceEvent extends Event {
  external factory RTCPeerConnectionIceEvent();

  external factory RTCPeerConnectionIceEvent.a1(JSString type);

  external factory RTCPeerConnectionIceEvent.a2(
    JSString type,
    RTCPeerConnectionIceEventInit eventInitDict,
  );
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
    on RTCPeerConnectionIceEventInit {}

@JS('RTCPeerConnectionIceErrorEvent')
@staticInterop
class RTCPeerConnectionIceErrorEvent extends Event {
  external factory RTCPeerConnectionIceErrorEvent();

  external factory RTCPeerConnectionIceErrorEvent.a1(
    JSString type,
    RTCPeerConnectionIceErrorEventInit eventInitDict,
  );
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
    on RTCPeerConnectionIceErrorEventInit {}

@JS('RTCCertificateExpiration')
@staticInterop
class RTCCertificateExpiration {
  external factory RTCCertificateExpiration();
}

extension RTCCertificateExpirationExtension on RTCCertificateExpiration {}

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

extension RTCRtpTransceiverInitExtension on RTCRtpTransceiverInit {}

@JS('RTCRtpSender')
@staticInterop
class RTCRtpSender {
  external factory RTCRtpSender();

  external static RTCRtpCapabilities? getCapabilities(JSString kind);
}

extension RTCRtpSenderExtension on RTCRtpSender {
  external set transform(RTCRtpTransform? value);
  external RTCRtpTransform? get transform;
  external JSPromise generateKeyFrame();
  external JSPromise generateKeyFrame1(JSArray rids);
  external MediaStreamTrack? get track;
  external RTCDtlsTransport? get transport;
  external JSPromise setParameters(RTCRtpSendParameters parameters);
  external RTCRtpSendParameters getParameters();
  external JSPromise replaceTrack(MediaStreamTrack? withTrack);
  external JSVoid setStreams(MediaStream streams);
  external JSPromise getStats();
  external RTCDTMFSender? get dtmf;
}

@JS('RTCRtpParameters')
@staticInterop
class RTCRtpParameters {
  external factory RTCRtpParameters();
}

extension RTCRtpParametersExtension on RTCRtpParameters {}

@JS('RTCRtpSendParameters')
@staticInterop
class RTCRtpSendParameters extends RTCRtpParameters {
  external factory RTCRtpSendParameters();
}

extension RTCRtpSendParametersExtension on RTCRtpSendParameters {}

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

extension RTCRtpCodingParametersExtension on RTCRtpCodingParameters {}

@JS('RTCRtpEncodingParameters')
@staticInterop
class RTCRtpEncodingParameters extends RTCRtpCodingParameters {
  external factory RTCRtpEncodingParameters();
}

extension RTCRtpEncodingParametersExtension on RTCRtpEncodingParameters {}

@JS('RTCRtcpParameters')
@staticInterop
class RTCRtcpParameters {
  external factory RTCRtcpParameters();
}

extension RTCRtcpParametersExtension on RTCRtcpParameters {}

@JS('RTCRtpHeaderExtensionParameters')
@staticInterop
class RTCRtpHeaderExtensionParameters {
  external factory RTCRtpHeaderExtensionParameters();
}

extension RTCRtpHeaderExtensionParametersExtension
    on RTCRtpHeaderExtensionParameters {}

@JS('RTCRtpCodecParameters')
@staticInterop
class RTCRtpCodecParameters {
  external factory RTCRtpCodecParameters();
}

extension RTCRtpCodecParametersExtension on RTCRtpCodecParameters {}

@JS('RTCRtpCapabilities')
@staticInterop
class RTCRtpCapabilities {
  external factory RTCRtpCapabilities();
}

extension RTCRtpCapabilitiesExtension on RTCRtpCapabilities {}

@JS('RTCRtpCodecCapability')
@staticInterop
class RTCRtpCodecCapability {
  external factory RTCRtpCodecCapability();
}

extension RTCRtpCodecCapabilityExtension on RTCRtpCodecCapability {}

@JS('RTCRtpHeaderExtensionCapability')
@staticInterop
class RTCRtpHeaderExtensionCapability {
  external factory RTCRtpHeaderExtensionCapability();
}

extension RTCRtpHeaderExtensionCapabilityExtension
    on RTCRtpHeaderExtensionCapability {}

@JS('RTCRtpReceiver')
@staticInterop
class RTCRtpReceiver {
  external factory RTCRtpReceiver();

  external static RTCRtpCapabilities? getCapabilities(JSString kind);
}

extension RTCRtpReceiverExtension on RTCRtpReceiver {
  external set transform(RTCRtpTransform? value);
  external RTCRtpTransform? get transform;
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

extension RTCRtpContributingSourceExtension on RTCRtpContributingSource {}

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
  external set direction(RTCRtpTransceiverDirection value);
  external RTCRtpTransceiverDirection get direction;
  external RTCRtpTransceiverDirection? get currentDirection;
  external JSVoid stop();
  external JSVoid setCodecPreferences(JSArray codecs);
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
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}

@JS('RTCDtlsFingerprint')
@staticInterop
class RTCDtlsFingerprint {
  external factory RTCDtlsFingerprint();
}

extension RTCDtlsFingerprintExtension on RTCDtlsFingerprint {}

@JS('RTCIceTransport')
@staticInterop
class RTCIceTransport extends EventTarget {
  external factory RTCIceTransport.a0();
}

extension RTCIceTransportExtension on RTCIceTransport {
  external JSVoid gather();
  external JSVoid gather1(RTCIceGatherOptions options);
  external JSVoid start();
  external JSVoid start1(RTCIceParameters remoteParameters);
  external JSVoid start2(
    RTCIceParameters remoteParameters,
    RTCIceRole role,
  );
  external JSVoid stop();
  external JSVoid addRemoteCandidate();
  external JSVoid addRemoteCandidate1(RTCIceCandidateInit remoteCandidate);
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onicecandidate(EventHandler value);
  external EventHandler get onicecandidate;
  external RTCIceRole get role;
  external RTCIceComponent get component;
  external RTCIceTransportState get state;
  external RTCIceGathererState get gatheringState;
  external JSArray getLocalCandidates();
  external JSArray getRemoteCandidates();
  external RTCIceCandidatePair? getSelectedCandidatePair();
  external RTCIceParameters? getLocalParameters();
  external RTCIceParameters? getRemoteParameters();
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
  external set ongatheringstatechange(EventHandler value);
  external EventHandler get ongatheringstatechange;
  external set onselectedcandidatepairchange(EventHandler value);
  external EventHandler get onselectedcandidatepairchange;
}

@JS('RTCIceParameters')
@staticInterop
class RTCIceParameters {
  external factory RTCIceParameters();
}

extension RTCIceParametersExtension on RTCIceParameters {}

@JS('RTCIceCandidatePair')
@staticInterop
class RTCIceCandidatePair {
  external factory RTCIceCandidatePair();
}

extension RTCIceCandidatePairExtension on RTCIceCandidatePair {}

@JS('RTCTrackEvent')
@staticInterop
class RTCTrackEvent extends Event {
  external factory RTCTrackEvent();

  external factory RTCTrackEvent.a1(
    JSString type,
    RTCTrackEventInit eventInitDict,
  );
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

extension RTCTrackEventInitExtension on RTCTrackEventInit {}

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
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
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
  external set bufferedAmountLowThreshold(JSNumber value);
  external JSNumber get bufferedAmountLowThreshold;
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
  external JSVoid close();
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set binaryType(BinaryType value);
  external BinaryType get binaryType;
  external JSVoid send(JSString data);
  @JS('send')
  external JSVoid send_1_(Blob data);
  @JS('send')
  external JSVoid send_2_(JSArrayBuffer data);
  @JS('send')
  external JSVoid send_3_(ArrayBufferView data);
}

@JS('RTCDataChannelInit')
@staticInterop
class RTCDataChannelInit {
  external factory RTCDataChannelInit();
}

extension RTCDataChannelInitExtension on RTCDataChannelInit {}

@JS('RTCDataChannelEvent')
@staticInterop
class RTCDataChannelEvent extends Event {
  external factory RTCDataChannelEvent();

  external factory RTCDataChannelEvent.a1(
    JSString type,
    RTCDataChannelEventInit eventInitDict,
  );
}

extension RTCDataChannelEventExtension on RTCDataChannelEvent {
  external RTCDataChannel get channel;
}

@JS('RTCDataChannelEventInit')
@staticInterop
class RTCDataChannelEventInit extends EventInit {
  external factory RTCDataChannelEventInit();
}

extension RTCDataChannelEventInitExtension on RTCDataChannelEventInit {}

@JS('RTCDTMFSender')
@staticInterop
class RTCDTMFSender extends EventTarget {
  external factory RTCDTMFSender();
}

extension RTCDTMFSenderExtension on RTCDTMFSender {
  external JSVoid insertDTMF(JSString tones);
  external JSVoid insertDTMF1(
    JSString tones,
    JSNumber duration,
  );
  external JSVoid insertDTMF2(
    JSString tones,
    JSNumber duration,
    JSNumber interToneGap,
  );
  external set ontonechange(EventHandler value);
  external EventHandler get ontonechange;
  external JSBoolean get canInsertDTMF;
  external JSString get toneBuffer;
}

@JS('RTCDTMFToneChangeEvent')
@staticInterop
class RTCDTMFToneChangeEvent extends Event {
  external factory RTCDTMFToneChangeEvent();

  external factory RTCDTMFToneChangeEvent.a1(JSString type);

  external factory RTCDTMFToneChangeEvent.a2(
    JSString type,
    RTCDTMFToneChangeEventInit eventInitDict,
  );
}

extension RTCDTMFToneChangeEventExtension on RTCDTMFToneChangeEvent {
  external JSString get tone;
}

@JS('RTCDTMFToneChangeEventInit')
@staticInterop
class RTCDTMFToneChangeEventInit extends EventInit {
  external factory RTCDTMFToneChangeEventInit();
}

extension RTCDTMFToneChangeEventInitExtension on RTCDTMFToneChangeEventInit {}

@JS('RTCStatsReport')
@staticInterop
class RTCStatsReport {
  external factory RTCStatsReport();
}

extension RTCStatsReportExtension on RTCStatsReport {}

@JS('RTCStats')
@staticInterop
class RTCStats {
  external factory RTCStats();
}

extension RTCStatsExtension on RTCStats {}

@JS('RTCError')
@staticInterop
class RTCError extends DOMException {
  external factory RTCError();

  external factory RTCError.a1(RTCErrorInit init);

  external factory RTCError.a2(
    RTCErrorInit init,
    JSString message,
  );
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

extension RTCErrorInitExtension on RTCErrorInit {}

@JS('RTCErrorEvent')
@staticInterop
class RTCErrorEvent extends Event {
  external factory RTCErrorEvent();

  external factory RTCErrorEvent.a1(
    JSString type,
    RTCErrorEventInit eventInitDict,
  );
}

extension RTCErrorEventExtension on RTCErrorEvent {
  external RTCError get error;
}

@JS('RTCErrorEventInit')
@staticInterop
class RTCErrorEventInit extends EventInit {
  external factory RTCErrorEventInit();
}

extension RTCErrorEventInitExtension on RTCErrorEventInit {}
