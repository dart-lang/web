// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

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

@JS()
@staticInterop
@anonymous
class RTCConfiguration {
  external factory RTCConfiguration({
    JSString peerIdentity,
    JSArray iceServers,
    RTCIceTransportPolicy iceTransportPolicy,
    RTCBundlePolicy bundlePolicy,
    RTCRtcpMuxPolicy rtcpMuxPolicy,
    JSArray certificates,
    JSNumber iceCandidatePoolSize,
  });
}

extension RTCConfigurationExtension on RTCConfiguration {
  external set peerIdentity(JSString value);
  external JSString get peerIdentity;
  external set iceServers(JSArray value);
  external JSArray get iceServers;
  external set iceTransportPolicy(RTCIceTransportPolicy value);
  external RTCIceTransportPolicy get iceTransportPolicy;
  external set bundlePolicy(RTCBundlePolicy value);
  external RTCBundlePolicy get bundlePolicy;
  external set rtcpMuxPolicy(RTCRtcpMuxPolicy value);
  external RTCRtcpMuxPolicy get rtcpMuxPolicy;
  external set certificates(JSArray value);
  external JSArray get certificates;
  external set iceCandidatePoolSize(JSNumber value);
  external JSNumber get iceCandidatePoolSize;
}

@JS()
@staticInterop
@anonymous
class RTCIceServer {
  external factory RTCIceServer({
    required JSAny urls,
    JSString username,
    JSString credential,
  });
}

extension RTCIceServerExtension on RTCIceServer {
  external set urls(JSAny value);
  external JSAny get urls;
  external set username(JSString value);
  external JSString get username;
  external set credential(JSString value);
  external JSString get credential;
}

@JS()
@staticInterop
@anonymous
class RTCOfferAnswerOptions {
  external factory RTCOfferAnswerOptions();
}

@JS()
@staticInterop
@anonymous
class RTCOfferOptions implements RTCOfferAnswerOptions {
  external factory RTCOfferOptions({
    JSBoolean iceRestart,
    JSBoolean offerToReceiveAudio,
    JSBoolean offerToReceiveVideo,
  });
}

extension RTCOfferOptionsExtension on RTCOfferOptions {
  external set iceRestart(JSBoolean value);
  external JSBoolean get iceRestart;
  external set offerToReceiveAudio(JSBoolean value);
  external JSBoolean get offerToReceiveAudio;
  external set offerToReceiveVideo(JSBoolean value);
  external JSBoolean get offerToReceiveVideo;
}

@JS()
@staticInterop
@anonymous
class RTCAnswerOptions implements RTCOfferAnswerOptions {
  external factory RTCAnswerOptions();
}

@JS('RTCPeerConnection')
@staticInterop
class RTCPeerConnection implements EventTarget {
  external factory RTCPeerConnection([RTCConfiguration configuration]);

  external static JSPromise generateCertificate(
      AlgorithmIdentifier keygenAlgorithm);
}

extension RTCPeerConnectionExtension on RTCPeerConnection {
  external JSVoid setIdentityProvider(
    JSString provider, [
    RTCIdentityProviderOptions options,
  ]);
  external JSPromise getIdentityAssertion();
  external JSPromise createOffer([
    JSAny optionsOrSuccessCallback,
    RTCPeerConnectionErrorCallback failureCallback,
    RTCOfferOptions options,
  ]);
  external JSPromise createAnswer([
    JSAny optionsOrSuccessCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);
  external JSPromise setLocalDescription([
    RTCLocalSessionDescriptionInit description,
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);
  external JSPromise setRemoteDescription(
    RTCSessionDescriptionInit description, [
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);
  external JSPromise addIceCandidate([
    RTCIceCandidateInit candidate,
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);
  external JSVoid restartIce();
  external RTCConfiguration getConfiguration();
  external JSVoid setConfiguration([RTCConfiguration configuration]);
  external JSVoid close();
  external JSArray getSenders();
  external JSArray getReceivers();
  external JSArray getTransceivers();
  external RTCRtpSender addTrack(
    MediaStreamTrack track,
    MediaStream streams,
  );
  external JSVoid removeTrack(RTCRtpSender sender);
  external RTCRtpTransceiver addTransceiver(
    JSAny trackOrKind, [
    RTCRtpTransceiverInit init,
  ]);
  external RTCDataChannel createDataChannel(
    JSString label, [
    RTCDataChannelInit dataChannelDict,
  ]);
  external JSPromise getStats([MediaStreamTrack? selector]);
  external JSPromise get peerIdentity;
  external JSString? get idpLoginUrl;
  external JSString? get idpErrorInfo;
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
  external JSBoolean? get canTrickleIceCandidates;
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

@JS('RTCSessionDescription')
@staticInterop
class RTCSessionDescription {
  external factory RTCSessionDescription(
      RTCSessionDescriptionInit descriptionInitDict);
}

extension RTCSessionDescriptionExtension on RTCSessionDescription {
  external JSObject toJSON();
  external RTCSdpType get type;
  external JSString get sdp;
}

@JS()
@staticInterop
@anonymous
class RTCSessionDescriptionInit {
  external factory RTCSessionDescriptionInit({
    required RTCSdpType type,
    JSString sdp,
  });
}

extension RTCSessionDescriptionInitExtension on RTCSessionDescriptionInit {
  external set type(RTCSdpType value);
  external RTCSdpType get type;
  external set sdp(JSString value);
  external JSString get sdp;
}

@JS()
@staticInterop
@anonymous
class RTCLocalSessionDescriptionInit {
  external factory RTCLocalSessionDescriptionInit({
    RTCSdpType type,
    JSString sdp,
  });
}

extension RTCLocalSessionDescriptionInitExtension
    on RTCLocalSessionDescriptionInit {
  external set type(RTCSdpType value);
  external RTCSdpType get type;
  external set sdp(JSString value);
  external JSString get sdp;
}

@JS('RTCIceCandidate')
@staticInterop
class RTCIceCandidate {
  external factory RTCIceCandidate([RTCIceCandidateInit candidateInitDict]);
}

extension RTCIceCandidateExtension on RTCIceCandidate {
  external RTCIceCandidateInit toJSON();
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
}

@JS()
@staticInterop
@anonymous
class RTCIceCandidateInit {
  external factory RTCIceCandidateInit({
    JSString candidate,
    JSString? sdpMid,
    JSNumber? sdpMLineIndex,
    JSString? usernameFragment,
  });
}

extension RTCIceCandidateInitExtension on RTCIceCandidateInit {
  external set candidate(JSString value);
  external JSString get candidate;
  external set sdpMid(JSString? value);
  external JSString? get sdpMid;
  external set sdpMLineIndex(JSNumber? value);
  external JSNumber? get sdpMLineIndex;
  external set usernameFragment(JSString? value);
  external JSString? get usernameFragment;
}

@JS('RTCPeerConnectionIceEvent')
@staticInterop
class RTCPeerConnectionIceEvent implements Event {
  external factory RTCPeerConnectionIceEvent(
    JSString type, [
    RTCPeerConnectionIceEventInit eventInitDict,
  ]);
}

extension RTCPeerConnectionIceEventExtension on RTCPeerConnectionIceEvent {
  external RTCIceCandidate? get candidate;
  external JSString? get url;
}

@JS()
@staticInterop
@anonymous
class RTCPeerConnectionIceEventInit implements EventInit {
  external factory RTCPeerConnectionIceEventInit({
    RTCIceCandidate? candidate,
    JSString? url,
  });
}

extension RTCPeerConnectionIceEventInitExtension
    on RTCPeerConnectionIceEventInit {
  external set candidate(RTCIceCandidate? value);
  external RTCIceCandidate? get candidate;
  external set url(JSString? value);
  external JSString? get url;
}

@JS('RTCPeerConnectionIceErrorEvent')
@staticInterop
class RTCPeerConnectionIceErrorEvent implements Event {
  external factory RTCPeerConnectionIceErrorEvent(
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

@JS()
@staticInterop
@anonymous
class RTCPeerConnectionIceErrorEventInit implements EventInit {
  external factory RTCPeerConnectionIceErrorEventInit({
    JSString? address,
    JSNumber? port,
    JSString url,
    required JSNumber errorCode,
    JSString errorText,
  });
}

extension RTCPeerConnectionIceErrorEventInitExtension
    on RTCPeerConnectionIceErrorEventInit {
  external set address(JSString? value);
  external JSString? get address;
  external set port(JSNumber? value);
  external JSNumber? get port;
  external set url(JSString value);
  external JSString get url;
  external set errorCode(JSNumber value);
  external JSNumber get errorCode;
  external set errorText(JSString value);
  external JSString get errorText;
}

@JS()
@staticInterop
@anonymous
class RTCCertificateExpiration {
  external factory RTCCertificateExpiration({JSNumber expires});
}

extension RTCCertificateExpirationExtension on RTCCertificateExpiration {
  external set expires(JSNumber value);
  external JSNumber get expires;
}

@JS('RTCCertificate')
@staticInterop
class RTCCertificate {}

extension RTCCertificateExtension on RTCCertificate {
  external JSArray getFingerprints();
  external EpochTimeStamp get expires;
}

@JS()
@staticInterop
@anonymous
class RTCRtpTransceiverInit {
  external factory RTCRtpTransceiverInit({
    RTCRtpTransceiverDirection direction,
    JSArray streams,
    JSArray sendEncodings,
  });
}

extension RTCRtpTransceiverInitExtension on RTCRtpTransceiverInit {
  external set direction(RTCRtpTransceiverDirection value);
  external RTCRtpTransceiverDirection get direction;
  external set streams(JSArray value);
  external JSArray get streams;
  external set sendEncodings(JSArray value);
  external JSArray get sendEncodings;
}

@JS('RTCRtpSender')
@staticInterop
class RTCRtpSender {
  external static RTCRtpCapabilities? getCapabilities(JSString kind);
}

extension RTCRtpSenderExtension on RTCRtpSender {
  external JSPromise generateKeyFrame([JSArray rids]);
  external JSPromise setParameters(RTCRtpSendParameters parameters);
  external RTCRtpSendParameters getParameters();
  external JSPromise replaceTrack(MediaStreamTrack? withTrack);
  external JSVoid setStreams(MediaStream streams);
  external JSPromise getStats();
  external set transform(RTCRtpTransform? value);
  external RTCRtpTransform? get transform;
  external MediaStreamTrack? get track;
  external RTCDtlsTransport? get transport;
  external RTCDTMFSender? get dtmf;
}

@JS()
@staticInterop
@anonymous
class RTCRtpParameters {
  external factory RTCRtpParameters({
    required JSArray headerExtensions,
    required RTCRtcpParameters rtcp,
    required JSArray codecs,
  });
}

extension RTCRtpParametersExtension on RTCRtpParameters {
  external set headerExtensions(JSArray value);
  external JSArray get headerExtensions;
  external set rtcp(RTCRtcpParameters value);
  external RTCRtcpParameters get rtcp;
  external set codecs(JSArray value);
  external JSArray get codecs;
}

@JS()
@staticInterop
@anonymous
class RTCRtpSendParameters implements RTCRtpParameters {
  external factory RTCRtpSendParameters({
    RTCDegradationPreference degradationPreference,
    required JSString transactionId,
    required JSArray encodings,
  });
}

extension RTCRtpSendParametersExtension on RTCRtpSendParameters {
  external set degradationPreference(RTCDegradationPreference value);
  external RTCDegradationPreference get degradationPreference;
  external set transactionId(JSString value);
  external JSString get transactionId;
  external set encodings(JSArray value);
  external JSArray get encodings;
}

@JS()
@staticInterop
@anonymous
class RTCRtpReceiveParameters implements RTCRtpParameters {
  external factory RTCRtpReceiveParameters();
}

@JS()
@staticInterop
@anonymous
class RTCRtpCodingParameters {
  external factory RTCRtpCodingParameters({JSString rid});
}

extension RTCRtpCodingParametersExtension on RTCRtpCodingParameters {
  external set rid(JSString value);
  external JSString get rid;
}

@JS()
@staticInterop
@anonymous
class RTCRtpEncodingParameters implements RTCRtpCodingParameters {
  external factory RTCRtpEncodingParameters({
    RTCPriorityType priority,
    RTCPriorityType networkPriority,
    JSString scalabilityMode,
    JSBoolean active,
    JSNumber maxBitrate,
    JSNumber maxFramerate,
    JSNumber scaleResolutionDownBy,
  });
}

extension RTCRtpEncodingParametersExtension on RTCRtpEncodingParameters {
  external set priority(RTCPriorityType value);
  external RTCPriorityType get priority;
  external set networkPriority(RTCPriorityType value);
  external RTCPriorityType get networkPriority;
  external set scalabilityMode(JSString value);
  external JSString get scalabilityMode;
  external set active(JSBoolean value);
  external JSBoolean get active;
  external set maxBitrate(JSNumber value);
  external JSNumber get maxBitrate;
  external set maxFramerate(JSNumber value);
  external JSNumber get maxFramerate;
  external set scaleResolutionDownBy(JSNumber value);
  external JSNumber get scaleResolutionDownBy;
}

@JS()
@staticInterop
@anonymous
class RTCRtcpParameters {
  external factory RTCRtcpParameters({
    JSString cname,
    JSBoolean reducedSize,
  });
}

extension RTCRtcpParametersExtension on RTCRtcpParameters {
  external set cname(JSString value);
  external JSString get cname;
  external set reducedSize(JSBoolean value);
  external JSBoolean get reducedSize;
}

@JS()
@staticInterop
@anonymous
class RTCRtpHeaderExtensionParameters {
  external factory RTCRtpHeaderExtensionParameters({
    required JSString uri,
    required JSNumber id,
    JSBoolean encrypted,
  });
}

extension RTCRtpHeaderExtensionParametersExtension
    on RTCRtpHeaderExtensionParameters {
  external set uri(JSString value);
  external JSString get uri;
  external set id(JSNumber value);
  external JSNumber get id;
  external set encrypted(JSBoolean value);
  external JSBoolean get encrypted;
}

@JS()
@staticInterop
@anonymous
class RTCRtpCodec {
  external factory RTCRtpCodec({
    required JSString mimeType,
    required JSNumber clockRate,
    JSNumber channels,
    JSString sdpFmtpLine,
  });
}

extension RTCRtpCodecExtension on RTCRtpCodec {
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
class RTCRtpCodecParameters implements RTCRtpCodec {
  external factory RTCRtpCodecParameters({required JSNumber payloadType});
}

extension RTCRtpCodecParametersExtension on RTCRtpCodecParameters {
  external set payloadType(JSNumber value);
  external JSNumber get payloadType;
}

@JS()
@staticInterop
@anonymous
class RTCRtpCapabilities {
  external factory RTCRtpCapabilities({
    required JSArray codecs,
    required JSArray headerExtensions,
  });
}

extension RTCRtpCapabilitiesExtension on RTCRtpCapabilities {
  external set codecs(JSArray value);
  external JSArray get codecs;
  external set headerExtensions(JSArray value);
  external JSArray get headerExtensions;
}

@JS()
@staticInterop
@anonymous
class RTCRtpCodecCapability implements RTCRtpCodec {
  external factory RTCRtpCodecCapability();
}

@JS()
@staticInterop
@anonymous
class RTCRtpHeaderExtensionCapability {
  external factory RTCRtpHeaderExtensionCapability({required JSString uri});
}

extension RTCRtpHeaderExtensionCapabilityExtension
    on RTCRtpHeaderExtensionCapability {
  external set uri(JSString value);
  external JSString get uri;
}

@JS('RTCRtpReceiver')
@staticInterop
class RTCRtpReceiver {
  external static RTCRtpCapabilities? getCapabilities(JSString kind);
}

extension RTCRtpReceiverExtension on RTCRtpReceiver {
  external RTCRtpReceiveParameters getParameters();
  external JSArray getContributingSources();
  external JSArray getSynchronizationSources();
  external JSPromise getStats();
  external set transform(RTCRtpTransform? value);
  external RTCRtpTransform? get transform;
  external MediaStreamTrack get track;
  external RTCDtlsTransport? get transport;
}

@JS()
@staticInterop
@anonymous
class RTCRtpContributingSource {
  external factory RTCRtpContributingSource({
    required DOMHighResTimeStamp timestamp,
    required JSNumber source,
    JSNumber audioLevel,
    required JSNumber rtpTimestamp,
  });
}

extension RTCRtpContributingSourceExtension on RTCRtpContributingSource {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set source(JSNumber value);
  external JSNumber get source;
  external set audioLevel(JSNumber value);
  external JSNumber get audioLevel;
  external set rtpTimestamp(JSNumber value);
  external JSNumber get rtpTimestamp;
}

@JS()
@staticInterop
@anonymous
class RTCRtpSynchronizationSource implements RTCRtpContributingSource {
  external factory RTCRtpSynchronizationSource();
}

@JS('RTCRtpTransceiver')
@staticInterop
class RTCRtpTransceiver {}

extension RTCRtpTransceiverExtension on RTCRtpTransceiver {
  external JSVoid stop();
  external JSVoid setCodecPreferences(JSArray codecs);
  external JSString? get mid;
  external RTCRtpSender get sender;
  external RTCRtpReceiver get receiver;
  external set direction(RTCRtpTransceiverDirection value);
  external RTCRtpTransceiverDirection get direction;
  external RTCRtpTransceiverDirection? get currentDirection;
}

@JS('RTCDtlsTransport')
@staticInterop
class RTCDtlsTransport implements EventTarget {}

extension RTCDtlsTransportExtension on RTCDtlsTransport {
  external JSArray getRemoteCertificates();
  external RTCIceTransport get iceTransport;
  external RTCDtlsTransportState get state;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}

@JS()
@staticInterop
@anonymous
class RTCDtlsFingerprint {
  external factory RTCDtlsFingerprint({
    JSString algorithm,
    JSString value,
  });
}

extension RTCDtlsFingerprintExtension on RTCDtlsFingerprint {
  external set algorithm(JSString value);
  external JSString get algorithm;
  external set value(JSString value);
  external JSString get value;
}

@JS('RTCIceTransport')
@staticInterop
class RTCIceTransport implements EventTarget {
  external factory RTCIceTransport();
}

extension RTCIceTransportExtension on RTCIceTransport {
  external JSVoid gather([RTCIceGatherOptions options]);
  external JSVoid start([
    RTCIceParameters remoteParameters,
    RTCIceRole role,
  ]);
  external JSVoid stop();
  external JSVoid addRemoteCandidate([RTCIceCandidateInit remoteCandidate]);
  external JSArray getLocalCandidates();
  external JSArray getRemoteCandidates();
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

@JS()
@staticInterop
@anonymous
class RTCIceParameters {
  external factory RTCIceParameters({
    JSBoolean iceLite,
    JSString usernameFragment,
    JSString password,
  });
}

extension RTCIceParametersExtension on RTCIceParameters {
  external set iceLite(JSBoolean value);
  external JSBoolean get iceLite;
  external set usernameFragment(JSString value);
  external JSString get usernameFragment;
  external set password(JSString value);
  external JSString get password;
}

@JS()
@staticInterop
@anonymous
class RTCIceCandidatePair {
  external factory RTCIceCandidatePair({
    RTCIceCandidate local,
    RTCIceCandidate remote,
  });
}

extension RTCIceCandidatePairExtension on RTCIceCandidatePair {
  external set local(RTCIceCandidate value);
  external RTCIceCandidate get local;
  external set remote(RTCIceCandidate value);
  external RTCIceCandidate get remote;
}

@JS('RTCTrackEvent')
@staticInterop
class RTCTrackEvent implements Event {
  external factory RTCTrackEvent(
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

@JS()
@staticInterop
@anonymous
class RTCTrackEventInit implements EventInit {
  external factory RTCTrackEventInit({
    required RTCRtpReceiver receiver,
    required MediaStreamTrack track,
    JSArray streams,
    required RTCRtpTransceiver transceiver,
  });
}

extension RTCTrackEventInitExtension on RTCTrackEventInit {
  external set receiver(RTCRtpReceiver value);
  external RTCRtpReceiver get receiver;
  external set track(MediaStreamTrack value);
  external MediaStreamTrack get track;
  external set streams(JSArray value);
  external JSArray get streams;
  external set transceiver(RTCRtpTransceiver value);
  external RTCRtpTransceiver get transceiver;
}

@JS('RTCSctpTransport')
@staticInterop
class RTCSctpTransport implements EventTarget {}

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
class RTCDataChannel implements EventTarget {}

extension RTCDataChannelExtension on RTCDataChannel {
  external JSVoid close();
  external JSVoid send(JSAny data);
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
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set binaryType(BinaryType value);
  external BinaryType get binaryType;
}

@JS()
@staticInterop
@anonymous
class RTCDataChannelInit {
  external factory RTCDataChannelInit({
    RTCPriorityType priority,
    JSBoolean ordered,
    JSNumber maxPacketLifeTime,
    JSNumber maxRetransmits,
    JSString protocol,
    JSBoolean negotiated,
    JSNumber id,
  });
}

extension RTCDataChannelInitExtension on RTCDataChannelInit {
  external set priority(RTCPriorityType value);
  external RTCPriorityType get priority;
  external set ordered(JSBoolean value);
  external JSBoolean get ordered;
  external set maxPacketLifeTime(JSNumber value);
  external JSNumber get maxPacketLifeTime;
  external set maxRetransmits(JSNumber value);
  external JSNumber get maxRetransmits;
  external set protocol(JSString value);
  external JSString get protocol;
  external set negotiated(JSBoolean value);
  external JSBoolean get negotiated;
  external set id(JSNumber value);
  external JSNumber get id;
}

@JS('RTCDataChannelEvent')
@staticInterop
class RTCDataChannelEvent implements Event {
  external factory RTCDataChannelEvent(
    JSString type,
    RTCDataChannelEventInit eventInitDict,
  );
}

extension RTCDataChannelEventExtension on RTCDataChannelEvent {
  external RTCDataChannel get channel;
}

@JS()
@staticInterop
@anonymous
class RTCDataChannelEventInit implements EventInit {
  external factory RTCDataChannelEventInit({required RTCDataChannel channel});
}

extension RTCDataChannelEventInitExtension on RTCDataChannelEventInit {
  external set channel(RTCDataChannel value);
  external RTCDataChannel get channel;
}

@JS('RTCDTMFSender')
@staticInterop
class RTCDTMFSender implements EventTarget {}

extension RTCDTMFSenderExtension on RTCDTMFSender {
  external JSVoid insertDTMF(
    JSString tones, [
    JSNumber duration,
    JSNumber interToneGap,
  ]);
  external set ontonechange(EventHandler value);
  external EventHandler get ontonechange;
  external JSBoolean get canInsertDTMF;
  external JSString get toneBuffer;
}

@JS('RTCDTMFToneChangeEvent')
@staticInterop
class RTCDTMFToneChangeEvent implements Event {
  external factory RTCDTMFToneChangeEvent(
    JSString type, [
    RTCDTMFToneChangeEventInit eventInitDict,
  ]);
}

extension RTCDTMFToneChangeEventExtension on RTCDTMFToneChangeEvent {
  external JSString get tone;
}

@JS()
@staticInterop
@anonymous
class RTCDTMFToneChangeEventInit implements EventInit {
  external factory RTCDTMFToneChangeEventInit({JSString tone});
}

extension RTCDTMFToneChangeEventInitExtension on RTCDTMFToneChangeEventInit {
  external set tone(JSString value);
  external JSString get tone;
}

@JS('RTCStatsReport')
@staticInterop
class RTCStatsReport {}

extension RTCStatsReportExtension on RTCStatsReport {}

@JS()
@staticInterop
@anonymous
class RTCStats {
  external factory RTCStats({
    required DOMHighResTimeStamp timestamp,
    required RTCStatsType type,
    required JSString id,
  });
}

extension RTCStatsExtension on RTCStats {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set type(RTCStatsType value);
  external RTCStatsType get type;
  external set id(JSString value);
  external JSString get id;
}

@JS('RTCError')
@staticInterop
class RTCError implements DOMException {
  external factory RTCError(
    RTCErrorInit init, [
    JSString message,
  ]);
}

extension RTCErrorExtension on RTCError {
  external JSNumber? get httpRequestStatusCode;
  external RTCErrorDetailType get errorDetail;
  external JSNumber? get sdpLineNumber;
  external JSNumber? get sctpCauseCode;
  external JSNumber? get receivedAlert;
  external JSNumber? get sentAlert;
}

@JS()
@staticInterop
@anonymous
class RTCErrorInit {
  external factory RTCErrorInit({
    JSNumber httpRequestStatusCode,
    required RTCErrorDetailType errorDetail,
    JSNumber sdpLineNumber,
    JSNumber sctpCauseCode,
    JSNumber receivedAlert,
    JSNumber sentAlert,
  });
}

extension RTCErrorInitExtension on RTCErrorInit {
  external set httpRequestStatusCode(JSNumber value);
  external JSNumber get httpRequestStatusCode;
  external set errorDetail(RTCErrorDetailType value);
  external RTCErrorDetailType get errorDetail;
  external set sdpLineNumber(JSNumber value);
  external JSNumber get sdpLineNumber;
  external set sctpCauseCode(JSNumber value);
  external JSNumber get sctpCauseCode;
  external set receivedAlert(JSNumber value);
  external JSNumber get receivedAlert;
  external set sentAlert(JSNumber value);
  external JSNumber get sentAlert;
}

@JS('RTCErrorEvent')
@staticInterop
class RTCErrorEvent implements Event {
  external factory RTCErrorEvent(
    JSString type,
    RTCErrorEventInit eventInitDict,
  );
}

extension RTCErrorEventExtension on RTCErrorEvent {
  external RTCError get error;
}

@JS()
@staticInterop
@anonymous
class RTCErrorEventInit implements EventInit {
  external factory RTCErrorEventInit({required RTCError error});
}

extension RTCErrorEventInitExtension on RTCErrorEventInit {
  external set error(RTCError value);
  external RTCError get error;
}
