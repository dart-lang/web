// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

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

@JS()
@staticInterop
@anonymous
class RTCConfiguration {
  external factory RTCConfiguration({
    String peerIdentity,
    JSArray iceServers,
    RTCIceTransportPolicy iceTransportPolicy,
    RTCBundlePolicy bundlePolicy,
    RTCRtcpMuxPolicy rtcpMuxPolicy,
    JSArray certificates,
    int iceCandidatePoolSize,
  });
}

extension RTCConfigurationExtension on RTCConfiguration {
  external set peerIdentity(String value);
  external String get peerIdentity;
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
  external set iceCandidatePoolSize(int value);
  external int get iceCandidatePoolSize;
}

@JS()
@staticInterop
@anonymous
class RTCIceServer {
  external factory RTCIceServer({
    required JSAny urls,
    String username,
    String credential,
  });
}

extension RTCIceServerExtension on RTCIceServer {
  external set urls(JSAny value);
  external JSAny get urls;
  external set username(String value);
  external String get username;
  external set credential(String value);
  external String get credential;
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
    bool iceRestart,
    bool offerToReceiveAudio,
    bool offerToReceiveVideo,
  });
}

extension RTCOfferOptionsExtension on RTCOfferOptions {
  external set iceRestart(bool value);
  external bool get iceRestart;
  external set offerToReceiveAudio(bool value);
  external bool get offerToReceiveAudio;
  external set offerToReceiveVideo(bool value);
  external bool get offerToReceiveVideo;
}

@JS()
@staticInterop
@anonymous
class RTCAnswerOptions implements RTCOfferAnswerOptions {
  external factory RTCAnswerOptions();
}

/// The **`RTCPeerConnection`** interface represents a WebRTC connection between
/// the local computer and a remote peer.
/// It provides methods to connect to a remote peer, maintain and monitor the
/// connection, and close the connection once it's no longer needed.
@JS('RTCPeerConnection')
@staticInterop
class RTCPeerConnection implements EventTarget {
  external factory RTCPeerConnection([RTCConfiguration configuration]);

  external static JSPromise generateCertificate(
      AlgorithmIdentifier keygenAlgorithm);
}

extension RTCPeerConnectionExtension on RTCPeerConnection {
  /// The **`RTCPeerConnection.setIdentityProvider()`** method sets
  /// the Identity Provider (IdP) to the triplet given in parameter: its name,
  /// the protocol
  /// used to communicate with it (optional) and an optional username. The IdP
  /// will be used
  /// only when an assertion is needed.
  ///
  /// If the [RTCPeerConnection.signalingState] is set to
  /// `"closed"`, an `InvalidStateError` is raised.
  external void setIdentityProvider(
    String provider, [
    RTCIdentityProviderOptions options,
  ]);

  /// The **`RTCPeerConnection.getIdentityAssertion()`** method
  /// initiates the gathering of an identity assertion. This has an effect only
  /// if the
  /// [RTCPeerConnection.signalingState] is not
  /// `"closed"`.
  ///
  /// The method returns a JavaScript `Promise` which resolves to an
  /// identity assertion encoded as a string.
  ///
  /// It is not expected for the application dealing with the
  /// `RTCPeerConnection`:
  /// this is automatically done; an explicit call only allows to anticipate the
  /// need.
  external JSPromise getIdentityAssertion();

  /// The **`createOffer()`** method
  /// of the [RTCPeerConnection] interface
  /// initiates the creation of an  offer
  /// for the purpose of starting a new WebRTC connection to a remote peer.
  /// The SDP offer includes information
  /// about any [MediaStreamTrack] objects
  /// already attached to the WebRTC session, codec, and options supported by
  /// the browser,
  /// and any candidates already gathered by the  agent,
  /// for the purpose of being sent over the signaling channel
  /// to a potential peer
  /// to request a connection
  /// or to update the configuration of an existing connection.
  ///
  /// The return value is a `Promise` which, when the offer has been created, is
  /// resolved with a [RTCSessionDescription] object containing the
  /// newly-created
  /// offer.
  external JSPromise createOffer([
    JSObject optionsOrSuccessCallback,
    RTCPeerConnectionErrorCallback failureCallback,
    RTCOfferOptions options,
  ]);

  /// The **`createAnswer()`** method on the
  /// [RTCPeerConnection] interface creates an  answer to an
  /// offer received from a remote peer during the offer/answer negotiation of a
  /// WebRTC
  /// connection. The answer contains information about any media already
  /// attached to the
  /// session, codecs and options supported by the browser, and any
  /// candidates already gathered. The answer is delivered to the returned
  /// `Promise`, and should then be sent to the source of the offer to continue
  /// the negotiation process.
  external JSPromise createAnswer([
    JSObject optionsOrSuccessCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);

  /// The [RTCPeerConnection] method
  /// [RTCPeerConnection.setLocalDescription] changes
  /// the local description associated with the connection. This description
  /// specifies the
  /// properties of the local end of the connection, including the media format.
  /// The method takes a single parameter—the session description—and it returns
  /// a
  /// `Promise` which is fulfilled once the description has been changed,
  /// asynchronously.
  ///
  /// If `setLocalDescription()` is called while a connection is already in
  /// place,
  /// it means renegotiation is underway (possibly to adapt to changing network
  /// conditions).
  /// Because descriptions will be exchanged until the two peers agree on a
  /// configuration, the
  /// description submitted by calling `setLocalDescription()` does not
  /// immediately
  /// take effect. Instead, the current connection configuration remains in
  /// place until
  /// negotiation is complete. Only then does the agreed-upon configuration take
  /// effect.
  external JSPromise setLocalDescription([
    RTCLocalSessionDescriptionInit description,
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);

  /// The [RTCPeerConnection]
  /// method **`setRemoteDescription()`** sets the specified
  /// session description as the remote peer's current offer or answer. The
  /// description
  /// specifies the properties of the remote end of the connection, including
  /// the media
  /// format. The method takes a single parameter—the session description—and it
  /// returns a `Promise` which is fulfilled once the description has been
  /// changed, asynchronously.
  ///
  /// This is typically called after receiving an offer or answer from another
  /// peer over the
  /// signaling server. Keep in mind that if `setRemoteDescription()` is called
  /// while a connection is already in place, it means renegotiation is underway
  /// (possibly
  /// to adapt to changing network conditions).
  ///
  /// Because descriptions will be exchanged until the two peers agree on a
  /// configuration,
  /// the description submitted by calling `setRemoteDescription()` does not
  /// immediately take effect. Instead, the current connection configuration
  /// remains in
  /// place until negotiation is complete. Only then does the agreed-upon
  /// configuration take
  /// effect.
  external JSPromise setRemoteDescription(
    RTCSessionDescriptionInit description, [
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);

  /// When a website or app using [RTCPeerConnection] receives a new ICE
  /// candidate from the remote peer over its signaling channel, it delivers the
  /// newly-received candidate to the browser's  agent by calling
  /// **`RTCPeerConnection.addIceCandidate()`**.
  /// This adds this new remote candidate to the `RTCPeerConnection`'s remote
  /// description, which describes the state of the remote end of the
  /// connection.
  ///
  /// If the `candidate` parameter is missing or a value of `null` is given when
  /// calling `addIceCandidate()`, the added ICE candidate is an
  /// "end-of-candidates" indicator.
  /// The same is the case if the value of the specified object's
  /// [RTCIceCandidate.candidate] is either missing or an empty string (`""`),
  /// it signals that all remote candidates have been delivered.
  ///
  /// The end-of-candidates notification is transmitted to the remote peer using
  /// a candidate with an a-line value of `end-of-candidates`.
  ///
  /// During negotiation, your app will likely receive many candidates which
  /// you'll deliver to the ICE agent in this way, allowing it to build up a
  /// list of potential connection methods.
  /// This is covered in more detail in the articles
  /// [WebRTC connectivity](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Connectivity)
  /// and
  /// [Signaling and video calling](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Signaling_and_video_calling).
  external JSPromise addIceCandidate([
    RTCIceCandidateInit candidate,
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);

  /// The [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// API's
  /// [RTCPeerConnection] interface offers the
  /// **`restartIce()`** method to allow a web application to easily
  /// request that  candidate gathering be redone on both ends of the
  /// connection.
  /// This simplifies the process by allowing the same method to be used
  /// by either the caller or the receiver to trigger an ICE restart.
  ///
  /// After `restartIce()` returns, the offer returned by the next call to
  /// [RTCPeerConnection.createOffer] is automatically
  /// configured to trigger ICE restart on both the local peer (once the local
  /// peer has been
  /// set) and on the remote peer, once the offer is sent across your signaling
  /// mechanism and
  /// the remote peer has set its description as well.
  ///
  /// `restartIce()` causes the
  /// [RTCPeerConnection.negotiationneeded_event] event to
  /// be fired on the `RTCPeerConnection` to inform the application that it
  /// should
  /// perform negotiation using its signaling channel.
  ///
  /// If negotiation fails to complete—either due to rollback or because
  /// incoming offers are
  /// in the process of being negotiated—the [RTCPeerConnection] will remember
  /// that you requested ICE restart. The next time the connection's
  /// [RTCPeerConnection.signalingState] changes to
  /// `stable`, the connection will fire the
  /// [RTCPeerConnection.negotiationneeded_event] event.
  /// This process continues until an ICE restart has been successfully
  /// completed.
  external void restartIce();

  /// The **`RTCPeerConnection.getConfiguration()`** method returns
  /// an object which indicates the current configuration of
  /// the [RTCPeerConnection] on which the method is called.
  ///
  /// The returned configuration is the last configuration applied via
  /// [RTCPeerConnection.setConfiguration], or if
  /// `setConfiguration()` hasn't been called, the configuration the
  /// `RTCPeerConnection` was constructed with. The configuration includes a
  /// list
  /// of the ICE servers used by the connection, information about transport
  /// policies, and
  /// identity information.
  external RTCConfiguration getConfiguration();

  /// The **`RTCPeerConnection.setConfiguration()`** method sets the
  /// current configuration of the [RTCPeerConnection] based on the values
  /// included in the specified object. This lets you change
  /// the ICE servers used by the connection and which transport policies to
  /// use.
  ///
  /// The most common use case for this method (and even then, probably not a
  /// very common use
  /// case) is to replace the set of ICE servers to be used. Two potential
  /// scenarios in which
  /// this might be done:
  ///
  /// - The [RTCPeerConnection] was instantiated without specifying any ICE
  /// servers. If, for example, the [RTCPeerConnection.RTCPeerConnection]
  /// constructor was called with no parameters, you would have to
  /// then call `setConfiguration()` to add ICE servers before ICE negotiation
  /// could begin.
  /// - Renegotiation of the connection is needed, and a different set of ICE
  ///   servers needs
  /// to be used for some reason. Perhaps the user has moved into a new region,
  /// so using new
  /// regional ICE servers is necessary, for example.
  /// In this situation, one might call `setConfiguration()` to switch to new
  /// regional ICE servers, then initiate an
  /// [ICE restart](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Session_lifetime#ice_restart).
  ///
  /// > **Note:** You cannot change the identity information for a connection
  /// > once it's already been set.
  external void setConfiguration([RTCConfiguration configuration]);

  /// The **`RTCPeerConnection.close()`** method closes the current
  /// peer connection.
  external void close();

  /// The [RTCPeerConnection] method **`getSenders()`** returns an array of
  /// [RTCRtpSender] objects, each of which represents the RTP sender
  /// responsible for transmitting one track's data.
  /// A sender object provides methods and properties for examining and
  /// controlling the encoding and transmission of the track's data.
  external JSArray getSenders();

  /// The **`RTCPeerConnection.getReceivers()`** method returns an array of
  /// [RTCRtpReceiver] objects, each of which represents one RTP receiver.
  /// Each RTP receiver manages the reception and decoding of data for a
  /// [MediaStreamTrack] on an [RTCPeerConnection].
  external JSArray getReceivers();

  /// The [RTCPeerConnection] interface's **`getTransceivers()`** method returns
  /// a list of the [RTCRtpTransceiver] objects being used to send and receive
  /// data on the connection.
  external JSArray getTransceivers();

  /// The [RTCPeerConnection] method **`addTrack()`** adds a new media track to
  /// the set of tracks which will be transmitted to the other peer.
  ///
  /// > **Note:** Adding a track to a connection triggers renegotiation by
  /// > firing a [RTCPeerConnection/negotiationneeded_event] event.
  /// > See
  /// > [Starting negotiation](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Signaling_and_video_calling#starting_negotiation)
  /// > for details.
  external RTCRtpSender addTrack(
    MediaStreamTrack track,
    MediaStream streams,
  );

  /// The
  /// **`RTCPeerConnection.removeTrack()`** method tells the local
  /// end of the connection to stop sending media from the specified track,
  /// without actually
  /// removing the corresponding [RTCRtpSender] from the list of senders as
  /// reported by [RTCPeerConnection.getSenders]. If the track is
  /// already stopped, or is not in the connection's senders list, this method
  /// has no effect.
  ///
  /// If the connection has already been negotiated
  /// ([RTCPeerConnection.signalingState] is set to
  /// `"stable"`), it is marked as needing to be negotiated again; the remote
  /// peer
  /// won't experience the change until this negotiation occurs. A
  /// [RTCPeerConnection/negotiationneeded_event] event is sent to the
  /// [RTCPeerConnection] to
  /// let the local end know this negotiation must occur.
  external void removeTrack(RTCRtpSender sender);

  /// The [RTCPeerConnection] method **`addTransceiver()`** creates a new
  /// [RTCRtpTransceiver] and adds it to the set of transceivers associated with
  /// the `RTCPeerConnection`.
  /// Each transceiver represents a bidirectional stream, with both an
  /// [RTCRtpSender] and an [RTCRtpReceiver] associated with it.
  external RTCRtpTransceiver addTransceiver(
    JSAny trackOrKind, [
    RTCRtpTransceiverInit init,
  ]);

  /// The **`createDataChannel()`** method
  /// on the [RTCPeerConnection] interface
  /// creates a new channel linked with the remote peer,
  /// over which any kind of data may be transmitted.
  /// This can be useful for back-channel content,
  /// such as images, file transfer, text chat, game update
  /// packets, and so forth.
  ///
  /// If the new data channel is the first one added to the connection,
  /// renegotiation is
  /// started by delivering a [RTCPeerConnection/negotiationneeded_event] event.
  external RTCDataChannel createDataChannel(
    String label, [
    RTCDataChannelInit dataChannelDict,
  ]);

  /// The [RTCPeerConnection] method
  /// **`getStats()`** returns a promise which resolves with data
  /// providing statistics about either the overall connection or about the
  /// specified
  /// [MediaStreamTrack].
  external JSPromise getStats([MediaStreamTrack? selector]);
  external JSPromise get peerIdentity;
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

/// The **`RTCSessionDescription`** interface describes one end of a
/// connection—or potential connection—and how it's configured. Each
/// `RTCSessionDescription` consists of a description
/// [RTCSessionDescription.type] indicating which part of the offer/answer
/// negotiation process it describes and of the  descriptor of the session.
///
/// The process of negotiating a connection between two peers involves
/// exchanging `RTCSessionDescription` objects back and forth, with each
/// description suggesting one combination of connection configuration options
/// that the sender of the description supports. Once the two peers agree upon a
/// configuration for the connection, negotiation is complete.
@JS('RTCSessionDescription')
@staticInterop
class RTCSessionDescription {
  external factory RTCSessionDescription(
      RTCSessionDescriptionInit descriptionInitDict);
}

extension RTCSessionDescriptionExtension on RTCSessionDescription {
  /// The **`RTCSessionDescription.toJSON()`** method generates a
  /// description of the object. Both properties,
  /// [RTCSessionDescription.type] and
  /// [RTCSessionDescription.sdp], are contained in the generated JSON.
  external JSObject toJSON();
  external RTCSdpType get type;
  external String get sdp;
}

@JS()
@staticInterop
@anonymous
class RTCSessionDescriptionInit {
  external factory RTCSessionDescriptionInit({
    required RTCSdpType type,
    String sdp,
  });
}

extension RTCSessionDescriptionInitExtension on RTCSessionDescriptionInit {
  external set type(RTCSdpType value);
  external RTCSdpType get type;
  external set sdp(String value);
  external String get sdp;
}

@JS()
@staticInterop
@anonymous
class RTCLocalSessionDescriptionInit {
  external factory RTCLocalSessionDescriptionInit({
    RTCSdpType type,
    String sdp,
  });
}

extension RTCLocalSessionDescriptionInitExtension
    on RTCLocalSessionDescriptionInit {
  external set type(RTCSdpType value);
  external RTCSdpType get type;
  external set sdp(String value);
  external String get sdp;
}

/// The **`RTCIceCandidate`** interface—part of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)—represents
/// a candidate Interactive Connectivity Establishment () configuration which
/// may be used to establish an [RTCPeerConnection].
///
/// An ICE candidate describes the protocols and routing needed for WebRTC to be
/// able to communicate with a remote device. When starting a WebRTC peer
/// connection, typically a number of candidates are proposed by each end of the
/// connection, until they mutually agree upon one which describes the
/// connection they decide will be best. WebRTC then uses that candidate's
/// details to initiate the connection.
///
/// For details on how the ICE process works, see
/// [Lifetime of a WebRTC session](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Session_lifetime).
/// The article
/// [WebRTC connectivity](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Connectivity)
/// provides additional useful details.
@JS('RTCIceCandidate')
@staticInterop
class RTCIceCandidate {
  external factory RTCIceCandidate([RTCIceCandidateInit candidateInitDict]);
}

extension RTCIceCandidateExtension on RTCIceCandidate {
  /// The [RTCIceCandidate] method **`toJSON()`** converts the `RTCIceCandidate`
  /// on which it's called into JSON.
  ///
  /// A stringified version of the object can then be obtained by calling
  /// `stringify()` on the returned object.
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

@JS()
@staticInterop
@anonymous
class RTCIceCandidateInit {
  external factory RTCIceCandidateInit({
    String candidate,
    String? sdpMid,
    int? sdpMLineIndex,
    String? usernameFragment,
  });
}

extension RTCIceCandidateInitExtension on RTCIceCandidateInit {
  external set candidate(String value);
  external String get candidate;
  external set sdpMid(String? value);
  external String? get sdpMid;
  external set sdpMLineIndex(int? value);
  external int? get sdpMLineIndex;
  external set usernameFragment(String? value);
  external String? get usernameFragment;
}

/// The **`RTCPeerConnectionIceEvent`** interface represents events that occur
/// in relation to  candidates with the target, usually an [RTCPeerConnection].
///
/// Only one event is of this type: [RTCPeerConnection.icecandidate_event].
@JS('RTCPeerConnectionIceEvent')
@staticInterop
class RTCPeerConnectionIceEvent implements Event {
  external factory RTCPeerConnectionIceEvent(
    String type, [
    RTCPeerConnectionIceEventInit eventInitDict,
  ]);
}

extension RTCPeerConnectionIceEventExtension on RTCPeerConnectionIceEvent {
  external RTCIceCandidate? get candidate;
  external String? get url;
}

@JS()
@staticInterop
@anonymous
class RTCPeerConnectionIceEventInit implements EventInit {
  external factory RTCPeerConnectionIceEventInit({
    RTCIceCandidate? candidate,
    String? url,
  });
}

extension RTCPeerConnectionIceEventInitExtension
    on RTCPeerConnectionIceEventInit {
  external set candidate(RTCIceCandidate? value);
  external RTCIceCandidate? get candidate;
  external set url(String? value);
  external String? get url;
}

/// `WebRTC API`
///
/// The **`RTCPeerConnectionIceErrorEvent`** interface—based upon the [Event]
/// interface—provides details pertaining to an  error announced by sending an
/// [RTCPeerConnection.icecandidateerror_event] event to the [RTCPeerConnection]
/// object.
@JS('RTCPeerConnectionIceErrorEvent')
@staticInterop
class RTCPeerConnectionIceErrorEvent implements Event {
  external factory RTCPeerConnectionIceErrorEvent(
    String type,
    RTCPeerConnectionIceErrorEventInit eventInitDict,
  );
}

extension RTCPeerConnectionIceErrorEventExtension
    on RTCPeerConnectionIceErrorEvent {
  external String? get address;
  external int? get port;
  external String get url;
  external int get errorCode;
  external String get errorText;
}

@JS()
@staticInterop
@anonymous
class RTCPeerConnectionIceErrorEventInit implements EventInit {
  external factory RTCPeerConnectionIceErrorEventInit({
    String? address,
    int? port,
    String url,
    required int errorCode,
    String errorText,
  });
}

extension RTCPeerConnectionIceErrorEventInitExtension
    on RTCPeerConnectionIceErrorEventInit {
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

@JS()
@staticInterop
@anonymous
class RTCCertificateExpiration {
  external factory RTCCertificateExpiration({int expires});
}

extension RTCCertificateExpirationExtension on RTCCertificateExpiration {
  external set expires(int value);
  external int get expires;
}

/// The **`RTCCertificate`** interface of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// provides an object representing a certificate that an [RTCPeerConnection]
/// uses to authenticate.
///
/// `RTCCertificate` is a , so it can be cloned with [structuredClone] or copied
/// between [Workers](https://developer.mozilla.org/en-US/docs/Web/API/Worker)
/// using [Worker/postMessage].
@JS('RTCCertificate')
@staticInterop
class RTCCertificate {}

extension RTCCertificateExtension on RTCCertificate {
  /// The **`getFingerprints()`** method of the **[RTCCertificate]** interface
  /// is used to get an array of certificate fingerprints.
  ///
  /// An application can use this method to compare the client certificate
  /// fingerprints with the certificate fingerprints from the server.
  /// The server and client may support different sets of algorithms: all
  /// fingerprint values for the set of algorithms supported by both client and
  /// server should match.
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

/// The **`RTCRtpSender`** interface provides the ability to control and obtain
/// details about how a particular [MediaStreamTrack] is encoded and sent to a
/// remote peer.
///
/// With it, you can configure the encoding used for the corresponding track,
/// get information about the device's media capabilities, and so forth. You can
/// also obtain access to an [RTCDTMFSender] which can be used to send  codes
/// (to simulate the user pressing buttons on a telephone's dial pad) to the
/// remote peer.
@JS('RTCRtpSender')
@staticInterop
class RTCRtpSender {
  external static RTCRtpCapabilities? getCapabilities(String kind);
}

extension RTCRtpSenderExtension on RTCRtpSender {
  external JSPromise generateKeyFrame([JSArray rids]);

  /// The **`setParameters()`** method of the [RTCRtpSender] interface applies
  /// changes the configuration of sender's [RTCRtpSender.track], which is the
  /// [MediaStreamTrack] for which the `RTCRtpSender` is responsible.
  ///
  /// In other words, `setParameters()` updates the configuration of the
  /// transmission as well as the encoding configuration for a specific outgoing
  /// media track on the
  /// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// connection.
  external JSPromise setParameters(
    RTCRtpSendParameters parameters, [
    RTCSetParameterOptions setParameterOptions,
  ]);

  /// `WebRTC`
  ///
  /// The **`getParameters()`** method of the [RTCRtpSender] interface returns
  /// an object describing the current configuration for how the sender's
  /// [RTCRtpSender.track] will be encoded and transmitted to a remote
  /// [RTCRtpReceiver].
  external RTCRtpSendParameters getParameters();

  /// The [RTCRtpSender] method
  /// **`replaceTrack()`** replaces the track currently being used
  /// as the sender's source with a new [MediaStreamTrack].
  ///
  /// The new
  /// track must be of the same media kind (audio, video, etc.) and switching
  /// the track should
  /// not require negotiation.
  ///
  /// Among the use cases for `replaceTrack()` is the common need to switch
  /// between the rear- and front-facing cameras on a phone. With
  /// `replaceTrack()`,
  /// you can have a track object for each camera and switch between the two as
  /// needed. See
  /// the example [Switching cameras](#switching_cameras) below.
  external JSPromise replaceTrack(MediaStreamTrack? withTrack);

  /// `WebRTC API`
  ///
  /// The [RTCRtpSender] method **`setStreams()`** associates the sender's
  /// [RTCRtpSender.track] with the specified [MediaStream] objects.
  external void setStreams(MediaStream streams);

  /// The [RTCRtpSender] method **`getStats()`** asynchronously requests an
  /// [RTCStatsReport] object which provides statistics about outgoing traffic
  /// on the [RTCPeerConnection] which owns the sender, returning a `Promise`
  /// which is fulfilled when the results are available.
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
    required String transactionId,
    required JSArray encodings,
  });
}

extension RTCRtpSendParametersExtension on RTCRtpSendParameters {
  external set degradationPreference(RTCDegradationPreference value);
  external RTCDegradationPreference get degradationPreference;
  external set transactionId(String value);
  external String get transactionId;
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
  external factory RTCRtpCodingParameters({String rid});
}

extension RTCRtpCodingParametersExtension on RTCRtpCodingParameters {
  external set rid(String value);
  external String get rid;
}

@JS()
@staticInterop
@anonymous
class RTCRtpEncodingParameters implements RTCRtpCodingParameters {
  external factory RTCRtpEncodingParameters({
    RTCPriorityType priority,
    RTCPriorityType networkPriority,
    String scalabilityMode,
    bool active,
    int maxBitrate,
    num maxFramerate,
    num scaleResolutionDownBy,
  });
}

extension RTCRtpEncodingParametersExtension on RTCRtpEncodingParameters {
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

@JS()
@staticInterop
@anonymous
class RTCRtcpParameters {
  external factory RTCRtcpParameters({
    String cname,
    bool reducedSize,
  });
}

extension RTCRtcpParametersExtension on RTCRtcpParameters {
  external set cname(String value);
  external String get cname;
  external set reducedSize(bool value);
  external bool get reducedSize;
}

@JS()
@staticInterop
@anonymous
class RTCRtpHeaderExtensionParameters {
  external factory RTCRtpHeaderExtensionParameters({
    required String uri,
    required int id,
    bool encrypted,
  });
}

extension RTCRtpHeaderExtensionParametersExtension
    on RTCRtpHeaderExtensionParameters {
  external set uri(String value);
  external String get uri;
  external set id(int value);
  external int get id;
  external set encrypted(bool value);
  external bool get encrypted;
}

@JS()
@staticInterop
@anonymous
class RTCRtpCodec {
  external factory RTCRtpCodec({
    required String mimeType,
    required int clockRate,
    int channels,
    String sdpFmtpLine,
  });
}

extension RTCRtpCodecExtension on RTCRtpCodec {
  external set mimeType(String value);
  external String get mimeType;
  external set clockRate(int value);
  external int get clockRate;
  external set channels(int value);
  external int get channels;
  external set sdpFmtpLine(String value);
  external String get sdpFmtpLine;
}

/// The [RTCRtpCodecParameters] dictionary, part of the WebRTC API, is used to
/// describe the configuration parameters for a single media .
///
/// It's used in [RTCRtpSender.getParameters], [RTCRtpSender.setParameters] and
/// [RTCRtpReceiver.getParameters].
/// Its also use used when calling [RTCRtpTransceiver.setCodecPreferences] to
/// configure a transceiver's codecs before beginning the offer/answer process
/// to establish a WebRTC peer connection.
///
/// Most of the fields in this property take values which are defined and
/// maintained by the Internet Assigned Numbers Authority (IANA). References to
/// relevant IANA documents are provided in the [see also](#see_also) section at
/// the end of this article.
@JS()
@staticInterop
@anonymous
class RTCRtpCodecParameters implements RTCRtpCodec {
  external factory RTCRtpCodecParameters({required int payloadType});
}

extension RTCRtpCodecParametersExtension on RTCRtpCodecParameters {
  external set payloadType(int value);
  external int get payloadType;
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
  external factory RTCRtpHeaderExtensionCapability({required String uri});
}

extension RTCRtpHeaderExtensionCapabilityExtension
    on RTCRtpHeaderExtensionCapability {
  external set uri(String value);
  external String get uri;
}

@JS()
@staticInterop
@anonymous
class RTCSetParameterOptions {
  external factory RTCSetParameterOptions();
}

/// The **`RTCRtpReceiver`** interface of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// manages the reception and decoding of data for a [MediaStreamTrack] on an
/// [RTCPeerConnection].
@JS('RTCRtpReceiver')
@staticInterop
class RTCRtpReceiver {
  external static RTCRtpCapabilities? getCapabilities(String kind);
}

extension RTCRtpReceiverExtension on RTCRtpReceiver {
  /// The **`getParameters()`** method of the [RTCRtpReceiver] interface returns
  /// an object describing the current configuration for the encoding and
  /// transmission of media on the receiver's [RTCRtpReceiver.track].
  external RTCRtpReceiveParameters getParameters();

  /// The **`getContributingSources()`** method of the [RTCRtpReceiver]
  /// interface returns an array of objects, each corresponding to one CSRC
  /// (contributing source) identifier received by the current `RTCRtpReceiver`
  /// in the last ten seconds.
  external JSArray getContributingSources();

  /// The **`getSynchronizationSources()`** method of the [RTCRtpReceiver]
  /// interface returns an array of objects, each corresponding to one SSRC
  /// (synchronization source) identifier received by the current
  /// `RTCRtpReceiver` in the last ten seconds.
  external JSArray getSynchronizationSources();

  /// The [RTCRtpReceiver] method **`getStats()`** asynchronously requests an
  /// [RTCStatsReport] object which provides statistics about incoming traffic
  /// on the owning [RTCPeerConnection], returning a `Promise` whose fulfillment
  /// handler will be called once the results are available.
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
    required int source,
    num audioLevel,
    required int rtpTimestamp,
  });
}

extension RTCRtpContributingSourceExtension on RTCRtpContributingSource {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set source(int value);
  external int get source;
  external set audioLevel(num value);
  external num get audioLevel;
  external set rtpTimestamp(int value);
  external int get rtpTimestamp;
}

@JS()
@staticInterop
@anonymous
class RTCRtpSynchronizationSource implements RTCRtpContributingSource {
  external factory RTCRtpSynchronizationSource();
}

/// The WebRTC interface **`RTCRtpTransceiver`** describes a permanent pairing
/// of an [RTCRtpSender] and an [RTCRtpReceiver], along with some shared state.
///
/// Each  media section describes one bidirectional SRTP ("Secure Real Time
/// Protocol") stream (excepting the media section for [RTCDataChannel], if
/// present).
/// This pairing of send and receive SRTP streams is significant for some
/// applications, so `RTCRtpTransceiver` is used to represent this pairing,
/// along with other important state from the media section.
/// Each non-disabled SRTP media section is always represented by exactly one
/// transceiver.
///
/// A transceiver is uniquely identified using its [RTCRtpTransceiver.mid]
/// property, which is the same as the media ID (`mid`) of its corresponding
/// m-line. An `RTCRtpTransceiver` is **associated** with an m-line if its `mid`
/// is non-null; otherwise it's considered disassociated.
@JS('RTCRtpTransceiver')
@staticInterop
class RTCRtpTransceiver {}

extension RTCRtpTransceiverExtension on RTCRtpTransceiver {
  /// The **`stop()`** method in the [RTCRtpTransceiver] interface permanently
  /// stops the transceiver by stopping both the associated [RTCRtpSender] and
  /// [RTCRtpReceiver].
  external void stop();

  /// The [RTCRtpTransceiver] method **`setCodecPreferences()`** configures the
  /// transceiver's preferred list of codecs.
  ///
  /// The specified set of codecs will be used for all future connections that
  /// include this transceiver until this method is called again.
  ///
  /// When preparing to open an [RTCPeerConnection], you can change the codec
  /// parameters from the  default configuration by calling
  /// `setCodecParameters()` _before_ calling either
  /// [RTCPeerConnection.createOffer] or [RTCPeerConnection.createAnswer].
  ///
  /// A guide to codecs supported by WebRTC—and each codec's positive and
  /// negative characteristics—can be found in
  /// [Codecs used by WebRTC](https://developer.mozilla.org/en-US/docs/Web/Media/Formats/WebRTC_codecs).
  external void setCodecPreferences(JSArray codecs);
  external String? get mid;
  external RTCRtpSender get sender;
  external RTCRtpReceiver get receiver;
  external set direction(RTCRtpTransceiverDirection value);
  external RTCRtpTransceiverDirection get direction;
  external RTCRtpTransceiverDirection? get currentDirection;
}

/// The **`RTCDtlsTransport`** interface provides access to information about
/// the Datagram Transport Layer Security (****) transport over which a
/// [RTCPeerConnection]'s  and  packets are sent and received by its
/// [RTCRtpSender] and [RTCRtpReceiver] objects.
///
/// A `RTCDtlsTransport` object is also used to provide information about
/// packets transmitted and received by a connection's
/// [data channels](https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel).
///
/// Features of the DTLS transport include the addition of security to the
/// underlying transport; the `RTCDtlsTransport` interface can be used to obtain
/// information about the underlying transport and the security added to it by
/// the DTLS layer.
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
    String algorithm,
    String value,
  });
}

extension RTCDtlsFingerprintExtension on RTCDtlsFingerprint {
  external set algorithm(String value);
  external String get algorithm;
  external set value(String value);
  external String get value;
}

/// The **`RTCIceTransport`** interface provides access to information about the
/// transport layer over which the data is being sent and received.
/// This is particularly useful if you need to access state information about
/// the connection.
@JS('RTCIceTransport')
@staticInterop
class RTCIceTransport implements EventTarget {
  external factory RTCIceTransport();
}

extension RTCIceTransportExtension on RTCIceTransport {
  external void gather([RTCIceGatherOptions options]);
  external void start([
    RTCIceParameters remoteParameters,
    RTCIceRole role,
  ]);
  external void stop();
  external void addRemoteCandidate([RTCIceCandidateInit remoteCandidate]);

  /// The **[RTCIceTransport]** method
  /// **`getLocalCandidates()`** returns an array of
  /// [RTCIceCandidate] objects, one for each of the candidates that have been
  /// gathered by the local device during the current  agent
  /// session.
  ///
  /// The local candidates are placed in this list by the ICE agent prior to
  /// being delivered
  /// to the local client's code in an [RTCPeerConnection.icecandidate_event]
  /// event so that the client can
  /// forward the candidates to the remote peer.
  external JSArray getLocalCandidates();

  /// The **[RTCIceTransport]** method
  /// **`getRemoteCandidates()`** returns an array which contains
  /// one [RTCIceCandidate] for each of the candidates that have been received
  /// from the remote peer so far during the current  gathering
  /// session.
  ///
  /// Each time your signaling code calls [RTCPeerConnection.addIceCandidate]
  /// to add a received candidate to the ICE session, the ICE agent places it in
  /// the list
  /// returned by this function.
  external JSArray getRemoteCandidates();

  /// The [RTCIceTransport] method
  /// **`getSelectedCandidatePair()`** returns an
  /// [RTCIceCandidatePair] object containing the current best-choice pair
  /// of  candidates describing the configuration of the endpoints of the
  /// transport.
  external RTCIceCandidatePair? getSelectedCandidatePair();

  /// The **[RTCIceTransport]** method
  /// **`getLocalParameters()`** returns an
  /// [RTCIceParameters] object which provides information uniquely identifying
  /// the local peer for the duration of the ICE session.
  ///
  /// The local peer's parameters are obtained during ICE signaling and
  /// delivered to the
  /// transport when the client calls [RTCPeerConnection.setLocalDescription].
  external RTCIceParameters? getLocalParameters();

  /// The **[RTCIceTransport]** method
  /// **`getRemoteParameters()`** returns an
  /// [RTCIceParameters] object which provides information uniquely
  /// identifying the remote peer for the duration of the ICE session.
  ///
  /// The remote peer's parameters are received during ICE signaling and
  /// delivered to the
  /// transport when the client calls
  /// [RTCPeerConnection.setRemoteDescription].
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

/// The **`RTCIceParameters`** dictionary specifies the username fragment and
/// password assigned to an  session.
///
/// During ICE negotiation, each peer's username fragment and password are
/// recorded in an `RTCIceParameters` object, which can be obtained from the
/// [RTCIceTransport] by calling its [RTCIceTransport.getLocalParameters] or
/// [RTCIceTransport.getRemoteParameters] method, depending on which end
/// interests you.
@JS()
@staticInterop
@anonymous
class RTCIceParameters {
  external factory RTCIceParameters({
    bool iceLite,
    String usernameFragment,
    String password,
  });
}

extension RTCIceParametersExtension on RTCIceParameters {
  external set iceLite(bool value);
  external bool get iceLite;
  external set usernameFragment(String value);
  external String get usernameFragment;
  external set password(String value);
  external String get password;
}

/// The **`RTCIceCandidatePair`** dictionary describes a pair of ICE candidates
/// which together comprise a description of a viable connection between two
/// WebRTC endpoints. It is used as the return value from
/// [RTCIceTransport.getSelectedCandidatePair] to identify the
/// currently-selected candidate pair identified by the ICE agent.
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

/// The
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// interface **`RTCTrackEvent`** represents the [RTCPeerConnection.track_event]
/// event, which is sent when a new [MediaStreamTrack] is added to an
/// [RTCRtpReceiver] which is part of the [RTCPeerConnection].
///
/// The target is the `RTCPeerConnection` object to which the track is being
/// added.
///
/// This event is sent by the WebRTC layer to the website or application, so you
/// will not typically need to instantiate an `RTCTrackEvent` yourself.
@JS('RTCTrackEvent')
@staticInterop
class RTCTrackEvent implements Event {
  external factory RTCTrackEvent(
    String type,
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

/// The **`RTCSctpTransport`** interface provides information which describes a
/// Stream Control Transmission Protocol (****) transport. This provides
/// information about limitations of the transport, but also provides a way to
/// access the underlying Datagram Transport Layer Security (****) transport
/// over which SCTP packets for all of an [RTCPeerConnection]'s data channels
/// are sent and received.
///
/// You don't create [RTCSctpTransport] objects yourself; instead, you get
/// access to the `RTCSctpTransport` for a given `RTCPeerConnection` through its
/// **[RTCPeerConnection.sctp]** property.
///
/// Possibly the most useful property on this interface is its
/// [`maxMessageSize`](#rtcsctptransport.maxmessagesize) property, which you can
/// use to determine the upper limit on the size of messages you can send over a
/// data channel on the peer connection.
@JS('RTCSctpTransport')
@staticInterop
class RTCSctpTransport implements EventTarget {}

extension RTCSctpTransportExtension on RTCSctpTransport {
  external RTCDtlsTransport get transport;
  external RTCSctpTransportState get state;
  external num get maxMessageSize;
  external int? get maxChannels;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
}

/// The **`RTCDataChannel`** interface represents a network channel which can be
/// used for bidirectional peer-to-peer transfers of arbitrary data. Every data
/// channel is associated with an [RTCPeerConnection], and each peer connection
/// can have up to a theoretical maximum of 65,534 data channels (the actual
/// limit may vary from browser to browser).
///
/// To create a data channel and ask a remote peer to join you, call the
/// [RTCPeerConnection]'s [RTCPeerConnection.createDataChannel] method. The peer
/// being invited to exchange data receives a
/// [RTCPeerConnection.datachannel_event] event (which has type
/// [RTCDataChannelEvent]) to let it know the data channel has been added to the
/// connection.
///
/// `RTCDataChannel` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
@JS('RTCDataChannel')
@staticInterop
class RTCDataChannel implements EventTarget {}

extension RTCDataChannelExtension on RTCDataChannel {
  /// The **`RTCDataChannel.close()`** method closes the
  /// [RTCDataChannel]. Either peer is permitted to call this method to initiate
  /// closure of the channel.
  ///
  /// Closure of the data channel is not instantaneous. Most of the process of
  /// closing the
  /// connection is handled asynchronously; you can detect when the channel has
  /// finished
  /// closing by watching for a [RTCDataChannel.close_event] event on the data
  /// channel.
  ///
  /// The sequence of events which occurs in response to this method being
  /// called:
  ///
  /// 1. [RTCDataChannel.readyState] is set to `closing`.
  /// 2. A background task is established to handle the remainder of the steps
  /// below, and
  /// `close()` returns to the caller.
  /// 3. The transport layer deals with any buffered messages; the protocol
  /// layer decides
  /// whether to send them or discard them.
  /// 4. The underlying data transport is closed.
  /// 5. The [RTCDataChannel.readyState] property is set to
  /// `closed`.
  /// 6. If the transport was closed with an error,
  /// the `RTCDataChannel` is sent
  /// an [RTCDataChannel.error_event] event
  /// with its [DOMException.name] set to `NetworkError`.
  /// 7. A [RTCDataChannel.close_event] event is sent to the channel.
  external void close();

  /// The **`send()`** method of the
  /// [RTCDataChannel] interface sends data across the data channel to the
  /// remote peer.
  /// This can be done any time except during the initial process of
  /// creating the underlying transport channel. Data sent before connecting is
  /// buffered if
  /// possible (or an error occurs if it's not possible), and is also buffered
  /// if sent while
  /// the connection is closing or closed.
  ///
  /// > **Note:** Different browsers have different limitations on the size of
  /// > the message you can
  /// > send. Specifications exist to define how to automatically fragment large
  /// > messages, but
  /// > not all browsers implement them, and those that do have various
  /// > additional
  /// > restrictions. This will get less complicated over time, but for now, if
  /// > you have
  /// > questions, see
  /// > [Understanding message size limits](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Using_data_channels#understanding_message_size_limits).
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

@JS()
@staticInterop
@anonymous
class RTCDataChannelInit {
  external factory RTCDataChannelInit({
    RTCPriorityType priority,
    bool ordered,
    int maxPacketLifeTime,
    int maxRetransmits,
    String protocol,
    bool negotiated,
    int id,
  });
}

extension RTCDataChannelInitExtension on RTCDataChannelInit {
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

/// The **`RTCDataChannelEvent`** interface
/// represents an event related to a specific [RTCDataChannel].
@JS('RTCDataChannelEvent')
@staticInterop
class RTCDataChannelEvent implements Event {
  external factory RTCDataChannelEvent(
    String type,
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

/// The **`RTCDTMFSender`** interface provides a mechanism for transmitting
/// codes on a
/// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// [RTCPeerConnection]. You gain access to the connection's `RTCDTMFSender`
/// through the [RTCRtpSender.dtmf] property on the audio track you wish to send
/// DTMF with.
///
/// The primary purpose for WebRTC's DTMF support is to allow WebRTC-based
/// communication clients to be connected to a [public-switched telephone
/// network
/// (PSTN)](https://en.wikipedia.org/wiki/Public_switched_telephone_network) or
/// other legacy telephone service, including extant voice over IP (VoIP)
/// services. For that reason, DTMF can't be used between two WebRTC-based
/// devices, because there is no mechanism provided by WebRTC for receiving DTMF
/// codes.
@JS('RTCDTMFSender')
@staticInterop
class RTCDTMFSender implements EventTarget {}

extension RTCDTMFSenderExtension on RTCDTMFSender {
  /// The **`insertDTMF()`** method on the [RTCDTMFSender] interface
  /// starts sending  tones to the remote peer over the
  /// [RTCPeerConnection].
  ///
  /// Sending of the tones is performed asynchronously,
  /// with
  /// [`tonechange`](https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender/tonechange_event)
  /// events sent to the `RTCDTMFSender` every time
  /// a tone starts or ends.
  ///
  /// As long as the connection is active, you can send tones at any time.
  /// Calling
  /// `insertDTMF()` replaces any already-pending tones from the `toneBuffer`.
  /// You can abort sending queued tones by specifying an empty string (`""`) as
  /// the set of tones to play.
  /// Since `insertDTMF()` replaces the tone buffer, in order to add to the DTMF
  /// tones being played, it is necessary to call
  /// `insertDTMF` with a string containing both the remaining tones (stored in
  /// the `toneBuffer`) and the new tones appended together.
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

/// The **`RTCDTMFToneChangeEvent`** interface represents events sent to
/// indicate that  tones have started or finished playing. This interface is
/// used by the
/// [`tonechange`](https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender/tonechange_event)
/// event.
@JS('RTCDTMFToneChangeEvent')
@staticInterop
class RTCDTMFToneChangeEvent implements Event {
  external factory RTCDTMFToneChangeEvent(
    String type, [
    RTCDTMFToneChangeEventInit eventInitDict,
  ]);
}

extension RTCDTMFToneChangeEventExtension on RTCDTMFToneChangeEvent {
  external String get tone;
}

@JS()
@staticInterop
@anonymous
class RTCDTMFToneChangeEventInit implements EventInit {
  external factory RTCDTMFToneChangeEventInit({String tone});
}

extension RTCDTMFToneChangeEventInitExtension on RTCDTMFToneChangeEventInit {
  external set tone(String value);
  external String get tone;
}

/// The **`RTCStatsReport`** interface of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// provides a statistics report for a [RTCPeerConnection], [RTCRtpSender], or
/// [RTCRtpReceiver].
///
/// An `RTCStatsReport` instance is a read-only
/// [`Map`-like object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map#map-like_browser_apis),
/// in which each key is an identifier for an object for which statistics are
/// being reported, and the corresponding value is a dictionary object providing
/// the statistics.
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
    required String id,
  });
}

extension RTCStatsExtension on RTCStats {
  external set timestamp(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get timestamp;
  external set type(RTCStatsType value);
  external RTCStatsType get type;
  external set id(String value);
  external String get id;
}

/// `WebRTC`
///
/// The **`RTCError`** interface describes an error which has occurred while
/// handling
/// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// operations. It's based upon the standard [DOMException] interface that
/// describes general DOM errors.
@JS('RTCError')
@staticInterop
class RTCError implements DOMException {
  external factory RTCError(
    RTCErrorInit init, [
    String message,
  ]);
}

extension RTCErrorExtension on RTCError {
  external int? get httpRequestStatusCode;
  external RTCErrorDetailType get errorDetail;
  external int? get sdpLineNumber;
  external int? get sctpCauseCode;
  external int? get receivedAlert;
  external int? get sentAlert;
}

@JS()
@staticInterop
@anonymous
class RTCErrorInit {
  external factory RTCErrorInit({
    int httpRequestStatusCode,
    required RTCErrorDetailType errorDetail,
    int sdpLineNumber,
    int sctpCauseCode,
    int receivedAlert,
    int sentAlert,
  });
}

extension RTCErrorInitExtension on RTCErrorInit {
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

/// `WebRTC`
///
/// The WebRTC API's **`RTCErrorEvent`** interface represents an error sent to a
/// WebRTC object. It's based on the standard [Event] interface, but adds
/// RTC-specific information describing the error, as shown below.
@JS('RTCErrorEvent')
@staticInterop
class RTCErrorEvent implements Event {
  external factory RTCErrorEvent(
    String type,
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
