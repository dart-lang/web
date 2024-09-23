// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'mediacapture_streams.dart';
import 'mst_content_hint.dart';
import 'webcryptoapi.dart';
import 'webidl.dart';
import 'webrtc_encoded_transform.dart';
import 'webrtc_identity.dart';
import 'webrtc_priority.dart';
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
    JSArray<RTCIceServer> iceServers,
    RTCIceTransportPolicy iceTransportPolicy,
    RTCBundlePolicy bundlePolicy,
    RTCRtcpMuxPolicy rtcpMuxPolicy,
    JSArray<RTCCertificate> certificates,
    int iceCandidatePoolSize,
    String peerIdentity,
  });

  external JSArray<RTCIceServer> get iceServers;
  external set iceServers(JSArray<RTCIceServer> value);
  external RTCIceTransportPolicy get iceTransportPolicy;
  external set iceTransportPolicy(RTCIceTransportPolicy value);
  external RTCBundlePolicy get bundlePolicy;
  external set bundlePolicy(RTCBundlePolicy value);
  external RTCRtcpMuxPolicy get rtcpMuxPolicy;
  external set rtcpMuxPolicy(RTCRtcpMuxPolicy value);
  external JSArray<RTCCertificate> get certificates;
  external set certificates(JSArray<RTCCertificate> value);
  external int get iceCandidatePoolSize;
  external set iceCandidatePoolSize(int value);
  external String get peerIdentity;
  external set peerIdentity(String value);
}
extension type RTCIceServer._(JSObject _) implements JSObject {
  external factory RTCIceServer({
    required JSAny urls,
    String username,
    String credential,
  });

  external JSAny get urls;
  external set urls(JSAny value);
  external String get username;
  external set username(String value);
  external String get credential;
  external set credential(String value);
}
extension type RTCOfferAnswerOptions._(JSObject _) implements JSObject {
  RTCOfferAnswerOptions() : _ = JSObject();
}
extension type RTCOfferOptions._(JSObject _)
    implements RTCOfferAnswerOptions, JSObject {
  external factory RTCOfferOptions({
    bool iceRestart,
    bool offerToReceiveAudio,
    bool offerToReceiveVideo,
  });

  external bool get iceRestart;
  external set iceRestart(bool value);
  external bool get offerToReceiveAudio;
  external set offerToReceiveAudio(bool value);
  external bool get offerToReceiveVideo;
  external set offerToReceiveVideo(bool value);
}
extension type RTCAnswerOptions._(JSObject _)
    implements RTCOfferAnswerOptions, JSObject {
  RTCAnswerOptions() : _ = JSObject();
}

/// The **`RTCPeerConnection`** interface represents a WebRTC connection between
/// the local computer and a remote peer.
/// It provides methods to connect to a remote peer, maintain and monitor the
/// connection, and close the connection once it's no longer needed.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection).
extension type RTCPeerConnection._(JSObject _)
    implements EventTarget, JSObject {
  external factory RTCPeerConnection([RTCConfiguration configuration]);

  /// The **`generateCertificate()`** static function of the [RTCPeerConnection]
  /// interface creates an X.509 certificate and corresponding private key,
  /// returning a promise that resolves with the new [RTCCertificate] once it's
  /// generated.
  external static JSPromise<RTCCertificate> generateCertificate(
      AlgorithmIdentifier keygenAlgorithm);

  /// The **`createOffer()`** method of the [RTCPeerConnection] interface
  /// initiates the creation of an  offer for the purpose of starting a new
  /// WebRTC connection to a remote peer.
  ///
  /// The SDP offer includes information about any [MediaStreamTrack] objects
  /// already attached to the WebRTC session, codec, and options supported by
  /// the browser, and any candidates already gathered by the  agent, for the
  /// purpose of being sent over the signaling channel to a potential peer to
  /// request a connection or to update the configuration of an existing
  /// connection.
  ///
  /// The return value is a `Promise` which, when the offer has been created, is
  /// resolved with a
  /// [RTCSessionDescriptionInit](https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription/RTCSessionDescription#options)
  /// dictionary containing the newly-created offer.
  external JSPromise<RTCSessionDescriptionInit?> createOffer([
    JSObject optionsOrSuccessCallback,
    RTCPeerConnectionErrorCallback failureCallback,
    RTCOfferOptions options,
  ]);

  /// The **`createAnswer()`** method of the [RTCPeerConnection] interface
  /// creates an  answer to an offer received from a remote peer during the
  /// offer/answer negotiation of a WebRTC connection.
  ///
  /// The answer contains information about any media already attached to the
  /// session, codecs and options supported by the browser, and any  candidates
  /// already gathered.
  /// The answer is delivered to the returned `Promise`, and should then be sent
  /// to the source of the offer to continue the negotiation process.
  external JSPromise<RTCSessionDescriptionInit?> createAnswer([
    JSObject optionsOrSuccessCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);

  /// The **`setLocalDescription()`** method of the [RTCPeerConnection]
  /// interface changes the local description associated with the connection.
  /// This description specifies the properties of the local end of the
  /// connection, including the media format.
  /// The method takes a single parameter—the session description—and it returns
  /// a `Promise` which is fulfilled once the description has been changed,
  /// asynchronously.
  ///
  /// If `setLocalDescription()` is called while a connection is already in
  /// place, it means renegotiation is underway (possibly to adapt to changing
  /// network conditions).
  /// Because descriptions will be exchanged until the two peers agree on a
  /// configuration, the description submitted by calling
  /// `setLocalDescription()` does not immediately take effect.
  /// Instead, the current connection configuration remains in place until
  /// negotiation is complete. Only then does the agreed-upon configuration take
  /// effect.
  external JSPromise<JSAny?> setLocalDescription([
    RTCLocalSessionDescriptionInit description,
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);

  /// The **`setRemoteDescription()`** method of the [RTCPeerConnection]
  /// interface sets the specified session description as the remote peer's
  /// current offer or answer.
  /// The description specifies the properties of the remote end of the
  /// connection, including the media format.
  /// The method takes a single parameter—the session description—and it returns
  /// a `Promise` which is fulfilled once the description has been changed,
  /// asynchronously.
  ///
  /// This is typically called after receiving an offer or answer from another
  /// peer over the signaling server.
  /// Keep in mind that if `setRemoteDescription()` is called while a connection
  /// is already in place, it means renegotiation is underway (possibly to adapt
  /// to changing network conditions).
  ///
  /// Because descriptions will be exchanged until the two peers agree on a
  /// configuration, the description submitted by calling
  /// `setRemoteDescription()` does not immediately take effect.
  /// Instead, the current connection configuration remains in place until
  /// negotiation is complete.
  /// Only then does the agreed-upon configuration take effect.
  external JSPromise<JSAny?> setRemoteDescription(
    RTCSessionDescriptionInit description, [
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);

  /// The **`addIceCandidate()`** method of the [RTCPeerConnection] interface
  /// adds a new remote candidate to the connection's remote description, which
  /// describes the state of the remote end of the connection.
  ///
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
  external JSPromise<JSAny?> addIceCandidate([
    RTCIceCandidateInit candidate,
    VoidFunction successCallback,
    RTCPeerConnectionErrorCallback failureCallback,
  ]);

  /// The **`restartIce()`** method of the [RTCPeerConnection] interface allows
  /// a web application to request that  candidate gathering be redone on both
  /// ends of the connection.
  /// This simplifies the process by allowing the same method to be used by
  /// either the caller or the receiver to trigger an ICE restart.
  ///
  /// After `restartIce()` returns, the offer returned by the next call to
  /// [RTCPeerConnection.createOffer] is automatically configured to trigger ICE
  /// restart on both the local peer (once the local peer has been set) and on
  /// the remote peer, once the offer is sent across your signaling mechanism
  /// and the remote peer has set its description as well.
  ///
  /// `restartIce()` causes the
  /// [RTCPeerConnection.negotiationneeded_event] event to be fired on the
  /// `RTCPeerConnection` to inform the application that it should perform
  /// negotiation using its signaling channel.
  ///
  /// If negotiation fails to complete—either due to rollback or because
  /// incoming offers are in the process of being negotiated—the
  /// [RTCPeerConnection] will remember that you requested ICE restart.
  /// The next time the connection's [RTCPeerConnection.signalingState] changes
  /// to `stable`, the connection will fire the
  /// [RTCPeerConnection.negotiationneeded_event] event.
  /// This process continues until an ICE restart has been successfully
  /// completed.
  external void restartIce();

  /// The **`getConfiguration()`** method of the [RTCPeerConnection] interface
  /// returns an object which indicates the current configuration of the
  /// [RTCPeerConnection] on which the method is called.
  ///
  /// The returned configuration is the last configuration applied via
  /// [RTCPeerConnection.setConfiguration], or if
  /// `setConfiguration()` hasn't been called, the configuration the
  /// `RTCPeerConnection` was constructed with.
  /// The configuration includes a list of the ICE servers used by the
  /// connection, information about transport policies, and identity
  /// information.
  external RTCConfiguration getConfiguration();

  /// The **`setConfiguration()`** method of the [RTCPeerConnection] interface
  /// sets the current configuration of the connection based on the values
  /// included in the specified object.
  /// This lets you change the ICE servers used by the connection and which
  /// transport policies to use.
  ///
  /// The most common use case for this method (and even then, probably not a
  /// very common use case) is to replace the set of ICE servers to be used. Two
  /// potential scenarios in which this might be done:
  ///
  /// - The [RTCPeerConnection] was instantiated without specifying any ICE
  ///   servers.
  /// If, for example, the [RTCPeerConnection.RTCPeerConnection] constructor was
  /// called with no parameters, you would have to then call
  /// `setConfiguration()` to add ICE servers before ICE negotiation could
  /// begin.
  /// - Renegotiation of the connection is needed, and a different set of ICE
  ///   servers needs to be used for some reason.
  /// Perhaps the user has moved into a new region, so using new regional ICE
  /// servers is necessary, for example.
  /// In this situation, one might call `setConfiguration()` to switch to new
  /// regional ICE servers, then initiate an
  /// [ICE restart](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Session_lifetime#ice_restart).
  ///
  /// > **Note:** You cannot change the identity information for a connection
  /// > once it's already been set.
  external void setConfiguration([RTCConfiguration configuration]);

  /// The **`close()`** method of the [RTCPeerConnection] interface closes the
  /// current peer connection.
  external void close();

  /// The **`setIdentityProvider()`** method of the [RTCPeerConnection]
  /// interface sets the Identity Provider (IdP) to the triplet given in
  /// parameter: its name, the protocol used to communicate with it (optional)
  /// and an optional username.
  /// The IdP will be used only when an assertion is needed.
  ///
  /// If the [RTCPeerConnection.signalingState] is set to `"closed"`, an
  /// `InvalidStateError` is raised.
  external void setIdentityProvider(
    String provider, [
    RTCIdentityProviderOptions options,
  ]);

  /// The **`getIdentityAssertion()`** method of the [RTCPeerConnection]
  /// interface initiates the gathering of an identity assertion.
  /// This has an effect only if the [RTCPeerConnection.signalingState] is not
  /// `"closed"`.
  ///
  /// The method returns a JavaScript `Promise` which resolves to an identity
  /// assertion encoded as a string.
  ///
  /// It is not expected for the application dealing with the
  /// `RTCPeerConnection`: this is automatically done; an explicit call only
  /// allows to anticipate the need.
  external JSPromise<JSString> getIdentityAssertion();

  /// The **`getSenders()`** method of the [RTCPeerConnection] interface returns
  /// an array of [RTCRtpSender] objects, each of which represents the RTP
  /// sender responsible for transmitting one track's data.
  /// A sender object provides methods and properties for examining and
  /// controlling the encoding and transmission of the track's data.
  external JSArray<RTCRtpSender> getSenders();

  /// The **`getReceivers()`** method of the [RTCPeerConnection] interface
  /// returns an array of [RTCRtpReceiver] objects, each of which represents one
  /// RTP receiver.
  /// Each RTP receiver manages the reception and decoding of data for a
  /// [MediaStreamTrack] on an [RTCPeerConnection].
  external JSArray<RTCRtpReceiver> getReceivers();

  /// The **`getTransceivers()`** method of the [RTCPeerConnection] interface
  /// returns a list of the [RTCRtpTransceiver] objects being used to send and
  /// receive data on the connection.
  external JSArray<RTCRtpTransceiver> getTransceivers();

  /// The **`addTrack()`** method of the [RTCPeerConnection] interface adds a
  /// new media track to the set of tracks which will be transmitted to the
  /// other peer.
  ///
  /// > **Note:** Adding a track to a connection triggers renegotiation by
  /// > firing a [RTCPeerConnection.negotiationneeded_event] event.
  /// > See
  /// > [Starting negotiation](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Signaling_and_video_calling#starting_negotiation)
  /// > for details.
  external RTCRtpSender addTrack(
    MediaStreamTrack track,
    MediaStream streams,
  );

  /// The **`removeTrack()`** method of the [RTCPeerConnection] interface tells
  /// the local end of the connection to stop sending media from the specified
  /// track, without actually removing the corresponding [RTCRtpSender] from the
  /// list of senders as reported by [RTCPeerConnection.getSenders].
  /// If the track is already stopped, or is not in the connection's senders
  /// list, this method has no effect.
  ///
  /// If the connection has already been negotiated
  /// ([RTCPeerConnection.signalingState] is set to `"stable"`), it is marked as
  /// needing to be negotiated again; the remote peer won't experience the
  /// change until this negotiation occurs.
  /// A [RTCPeerConnection.negotiationneeded_event] event is sent to the
  /// [RTCPeerConnection] to let the local end know this negotiation must occur.
  external void removeTrack(RTCRtpSender sender);

  /// The **`addTransceiver()`** method of the [RTCPeerConnection] interface
  /// creates a new [RTCRtpTransceiver] and adds it to the set of transceivers
  /// associated with the `RTCPeerConnection`.
  /// Each transceiver represents a bidirectional stream, with both an
  /// [RTCRtpSender] and an [RTCRtpReceiver] associated with it.
  external RTCRtpTransceiver addTransceiver(
    JSAny trackOrKind, [
    RTCRtpTransceiverInit init,
  ]);

  /// The **`createDataChannel()`** method of the [RTCPeerConnection] interface
  /// creates a new channel linked with the remote peer, over which any kind of
  /// data may be transmitted.
  /// This can be useful for back-channel content, such as images, file
  /// transfer, text chat, game update packets, and so forth.
  ///
  /// If the new data channel is the first one added to the connection,
  /// renegotiation is started by delivering a
  /// [RTCPeerConnection.negotiationneeded_event] event.
  external RTCDataChannel createDataChannel(
    String label, [
    RTCDataChannelInit dataChannelDict,
  ]);

  /// The **`getStats()`** method of the [RTCPeerConnection] interface returns a
  /// promise which resolves with data providing statistics about either the
  /// overall connection or about the specified [MediaStreamTrack].
  external JSPromise<RTCStatsReport> getStats([MediaStreamTrack? selector]);

  /// The **`localDescription`** read-only property of the [RTCPeerConnection]
  /// interface returns an [RTCSessionDescription] describing the session for
  /// the local end of the connection.
  /// If it has not yet been set, this is `null`.
  external RTCSessionDescription? get localDescription;

  /// The **`currentLocalDescription`** read-only property of the
  /// [RTCPeerConnection] interface returns an [RTCSessionDescription] object
  /// describing the local end of the connection as it was most recently
  /// successfully negotiated since the last time the [RTCPeerConnection]
  /// finished negotiating and connecting to a remote peer.
  /// Also included is a list of any ICE candidates that may already have been
  /// generated by the ICE agent since the offer or answer represented by the
  /// description was first instantiated.
  ///
  /// To change the `currentLocalDescription`, call
  /// [RTCPeerConnection.setLocalDescription], which triggers a series of events
  /// which leads to this value being set.
  /// For details on what exactly happens and why the change isn't necessarily
  /// instantaneous, see
  /// [Pending and current descriptions](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Connectivity#pending_and_current_descriptions)
  /// in the WebRTC Connectivity page.
  ///
  /// > **Note:** Unlike [RTCPeerConnection.localDescription], this value
  /// > represents the actual current state of the local end of the connection;
  /// > `localDescription` may specify a description which the connection is
  /// > currently in the process of switching over to.
  external RTCSessionDescription? get currentLocalDescription;

  /// The **`pendingLocalDescription`** read-only property of the
  /// [RTCPeerConnection] interface returns an [RTCSessionDescription] object
  /// describing a pending configuration change for the local end of the
  /// connection.
  ///
  /// This does not describe the connection as it currently stands, but as it
  /// may exist in the near future.
  /// Use [RTCPeerConnection.currentLocalDescription] or
  /// [RTCPeerConnection.localDescription] to get the current state of the
  /// endpoint.
  /// For details on the difference, see
  /// [Pending and current descriptions](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Connectivity#pending_and_current_descriptions)
  /// in the WebRTC Connectivity page.
  external RTCSessionDescription? get pendingLocalDescription;

  /// The **`remoteDescription`** read-only property of the [RTCPeerConnection]
  /// interface returns a [RTCSessionDescription] describing the session (which
  /// includes configuration and media information) for the remote end of the
  /// connection.
  /// If this hasn't been set yet, this is `null`.
  ///
  /// The returned value typically reflects a remote description which has been
  /// received over the signaling server (as either an offer or an answer) and
  /// then put into effect by your code calling
  /// [RTCPeerConnection.setRemoteDescription] in response.
  external RTCSessionDescription? get remoteDescription;

  /// The **`currentRemoteDescription`** read-only property of the
  /// [RTCPeerConnection] interface returns an
  /// [RTCSessionDescription] object describing the remote end of the connection
  /// as it was most recently successfully negotiated since the last time the
  /// [RTCPeerConnection] finished negotiating and connecting to a remote peer.
  /// Also included is a list of any ICE candidates that may already have been
  /// generated by the ICE agent since the offer or answer represented by the
  /// description was first instantiated.
  ///
  /// To change the `currentRemoteDescription`, call
  /// [RTCPeerConnection.setRemoteDescription], which triggers a series of
  /// events which leads to this value being set.
  /// For details on what exactly happens and why the change isn't necessarily
  /// instantaneous, see
  /// [Pending and current descriptions](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Connectivity#pending_and_current_descriptions)
  /// in the WebRTC Connectivity page.
  ///
  /// > **Note:** Unlike [RTCPeerConnection.remoteDescription], this value
  /// > represents the actual current state of the local end of the connection;
  /// > `remoteDescription` may specify a description which the connection is
  /// > currently in the process of switching over to.
  external RTCSessionDescription? get currentRemoteDescription;

  /// The **`pendingRemoteDescription`** read-only property of the
  /// [RTCPeerConnection] interface returns an [RTCSessionDescription] object
  /// describing a pending configuration change for the remote end of the
  /// connection.
  ///
  /// This does not describe the connection as it currently stands, but as it
  /// may exist in the near future.
  /// Use [RTCPeerConnection.currentRemoteDescription] or
  /// [RTCPeerConnection.remoteDescription] to get the current session
  /// description for the remote endpoint.
  /// For details on the difference, see
  /// [Pending and current descriptions](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Connectivity#pending_and_current_descriptions)
  /// in the WebRTC Connectivity page.
  external RTCSessionDescription? get pendingRemoteDescription;

  /// The **`signalingState`** read-only property of the [RTCPeerConnection]
  /// interface returns a string value describing the state of the signaling
  /// process on the local end of the connection while connecting or
  /// reconnecting to another peer.
  /// See
  /// [Signaling](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Session_lifetime#signaling)
  /// in our WebRTC session lifetime page.
  ///
  /// Because the signaling process is a state machine, being able to verify
  /// that your code is in the expected state when messages arrive can help
  /// avoid unexpected and avoidable failures.
  /// For example, if you receive an answer while the `signalingState` isn't
  /// `"have-local-offer"`, you know that something is wrong, since you should
  /// only receive answers after creating an offer but before an answer has been
  /// received and passed into [RTCPeerConnection.setLocalDescription]. Your
  /// code will be more reliable if you watch for mismatched states like this
  /// and handle them gracefully.
  ///
  /// This value may also be useful during debugging, for example.
  ///
  /// In addition, when the value of this property changes, a
  /// [RTCPeerConnection.signalingstatechange_event] event is sent to the
  /// [RTCPeerConnection] instance.
  external RTCSignalingState get signalingState;

  /// The **`iceGatheringState`** read-only property of the [RTCPeerConnection]
  /// interface returns a string that describes the overall ICE gathering state
  /// for this connection.
  /// This lets you detect, for example, when collection of ICE candidates has
  /// finished.
  ///
  /// You can detect when the value of this property changes by watching for an
  /// event of type [RTCPeerConnection.icegatheringstatechange_event].
  ///
  /// Note that **`iceGatheringState`** represents the overall gathering state
  /// of the connection, including every [RTCIceTransport] used by every
  /// [RTCRtpSender] and every [RTCRtpReceiver] on the entire connection.
  /// This contrasts with [RTCIceTransport.gatheringState], which represents the
  /// gathering state for a single transport.
  external RTCIceGatheringState get iceGatheringState;

  /// The **`iceConnectionState`** read-only property of the [RTCPeerConnection]
  /// interface returns a string which state of the  agent associated with the
  /// [RTCPeerConnection]: `new`, `checking`, `connected`, `completed`,
  /// `failed`, `disconnected`, and `closed`.
  ///
  /// It describes the current state of the ICE agent and its connection to the
  /// ICE server;
  /// that is, the  or  server.
  ///
  /// You can detect when this value has changed by watching for the
  /// [RTCPeerConnection.iceconnectionstatechange_event] event.
  external RTCIceConnectionState get iceConnectionState;

  /// The **`connectionState`** read-only property of the [RTCPeerConnection]
  /// interface indicates the current state of the peer connection by returning
  /// one of the following string values: `new`, `connecting`, `connected`,
  /// `disconnected`, `failed`, or `closed`.
  ///
  /// This state essentially represents the aggregate state of all ICE
  /// transports (which are of type [RTCIceTransport] or [RTCDtlsTransport])
  /// being used by the connection.
  ///
  /// When this property's value changes, a
  /// [RTCPeerConnection.connectionstatechange_event] event is sent to the
  /// [RTCPeerConnection] instance.
  external RTCPeerConnectionState get connectionState;

  /// The **`canTrickleIceCandidates`** read-only property of the
  /// [RTCPeerConnection] interface returns a boolean value which indicates
  /// whether or not the remote peer can accept
  /// [trickled ICE candidates](https://datatracker.ietf.org/doc/html/draft-ietf-mmusic-trickle-ice).
  ///
  /// **ICE trickling** is the process of continuing to send candidates after
  /// the initial offer or answer has already been sent to the other peer.
  ///
  /// This property is only set after having called
  /// [RTCPeerConnection.setRemoteDescription]. Ideally, your signaling protocol
  /// provides a way to detect trickling support, so that you don't need to rely
  /// on this property.
  /// A WebRTC browser will always support trickle ICE. If trickling isn't
  /// supported, or you aren't able to tell, you can check for a falsy value for
  /// this property and then wait until the value of
  /// [RTCPeerConnection.iceGatheringState] changes to `"completed"` before
  /// creating and sending the initial offer.
  /// That way, the offer contains all of the candidates.
  external bool? get canTrickleIceCandidates;
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

  /// The **`peerIdentity`** read-only property of the [RTCPeerConnection]
  /// interface returns a JavaScript `Promise` that resolves to an
  /// [RTCIdentityAssertion] which contains a string identifying the remote
  /// peer.
  /// Once this promise resolves successfully, the resulting identity is the
  /// **target peer identity** and cannot change for the duration of the
  /// connection.
  external JSPromise<JSObject> get peerIdentity;
  external String? get idpLoginUrl;
  external EventHandler get ontrack;
  external set ontrack(EventHandler value);

  /// The **`sctp`** read-only property of the [RTCPeerConnection] interface
  /// returns an [RTCSctpTransport] describing the  transport over which SCTP
  /// data is being sent and received.
  /// If SCTP hasn't been negotiated, this value is `null`.
  ///
  /// The SCTP transport is used for transmitting and receiving data for any and
  /// all [RTCDataChannel]s on the peer connection.
  external RTCSctpTransport? get sctp;
  external EventHandler get ondatachannel;
  external set ondatachannel(EventHandler value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescription).
extension type RTCSessionDescription._(JSObject _) implements JSObject {
  external factory RTCSessionDescription(
      RTCSessionDescriptionInit descriptionInitDict);

  /// The **`RTCSessionDescription.toJSON()`** method generates a
  /// description of the object. Both properties,
  /// [RTCSessionDescription.type] and
  /// [RTCSessionDescription.sdp], are contained in the generated JSON.
  external RTCSessionDescriptionInit toJSON();

  /// The property **`RTCSessionDescription.type`** is a read-only
  /// string value which describes the description's type.
  external RTCSdpType get type;

  /// The property **`RTCSessionDescription.sdp`** is a read-only
  /// string containing the  which describes the session.
  external String get sdp;
}
extension type RTCSessionDescriptionInit._(JSObject _) implements JSObject {
  external factory RTCSessionDescriptionInit({
    required RTCSdpType type,
    String sdp,
  });

  external RTCSdpType get type;
  external set type(RTCSdpType value);
  external String get sdp;
  external set sdp(String value);
}
extension type RTCLocalSessionDescriptionInit._(JSObject _)
    implements JSObject {
  external factory RTCLocalSessionDescriptionInit({
    RTCSdpType type,
    String sdp,
  });

  external RTCSdpType get type;
  external set type(RTCSdpType value);
  external String get sdp;
  external set sdp(String value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCIceCandidate).
extension type RTCIceCandidate._(JSObject _) implements JSObject {
  external factory RTCIceCandidate([RTCIceCandidateInit candidateInitDict]);

  /// The [RTCIceCandidate] method **`toJSON()`** converts the `RTCIceCandidate`
  /// on which it's called into JSON.
  ///
  /// A stringified version of the object can then be obtained by calling
  /// `stringify()` on the returned object.
  external RTCIceCandidateInit toJSON();

  /// The read-only property **`candidate`** on the [RTCIceCandidate] interface
  /// returns a string describing the candidate in detail.
  /// Most of the other properties of `RTCIceCandidate` are actually extracted
  /// from this string.
  ///
  /// This property can be configured using the `candidate` property of the
  /// object passed into the [RTCIceCandidate.RTCIceCandidate] or
  /// [RTCPeerConnection.addIceCandidate].
  external String get candidate;

  /// The read-only property **`sdpMid`** on the [RTCIceCandidate] interface
  /// returns a string
  /// specifying the media stream identification tag of the media component with
  /// which the candidate is associated.
  /// This ID uniquely identifies a given stream for the component with which
  /// the candidate is associated.
  ///
  /// This property can be configured by specifying the value of the `sdpMid`
  /// property in the `candidateInfo` options object that is passed to the
  /// [RTCIceCandidate.RTCIceCandidate] constructor.
  /// If you call the constructor with an m-line string instead of the options
  /// object, the value of `sdpMid` is extracted from the specified candidate
  /// m-line string.
  external String? get sdpMid;

  /// The read-only **`sdpMLineIndex`** property on the [RTCIceCandidate]
  /// interface
  /// is a zero-based index of the m-line describing the media associated with
  /// the candidate.
  ///
  /// This property can be configured by specifying the value of the
  /// `sdpMLineIndex` property in the `candidateInfo` options object that is
  /// passed to the [RTCIceCandidate.RTCIceCandidate] constructor.
  /// If you call the constructor with an m-line string instead of the options
  /// object, the value of `sdpMLineIndex` is extracted from the specified
  /// candidate m-line string.
  external int? get sdpMLineIndex;

  /// The **[RTCIceCandidate]**
  /// interface's read-only **`foundation`** property is a string
  /// which uniquely identifies the candidate across multiple transports.
  ///
  /// The `foundation` can therefore be used to correlate candidates that are
  /// present on
  /// multiple [RTCIceTransport] objects
  external String? get foundation;

  /// The read-only **`component`** property
  /// on the [RTCIceCandidate] interface is a string which indicates whether
  /// the candidate is an
  /// [RTP](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Intro_to_RTP)
  /// or
  /// an RTCP candidate.
  ///
  /// If a candidate represents both RTP and RTCP multiplexed together, it is
  /// reported as an
  /// RTP candidate.
  external RTCIceComponent? get component;

  /// The **[RTCIceCandidate]** interface's read-only **`priority`** property
  /// specifies the candidate's priority according to the remote peer; the
  /// higher this value is, the better the remote peer considers the candidate
  /// to be.
  ///
  /// The `priority` field's value is set from the `candidateInfo` options
  /// object passed to the [RTCIceCandidate.RTCIceCandidate] constructor.
  /// You can't specify the value of `priority` directly in the options object,
  /// but its value is automatically extracted from the object's `candidate`
  /// a-line, if it's formatted properly.
  external int? get priority;

  /// The **[RTCIceCandidate]** interface's read-only **`address`** property is
  /// a string providing the IP address of the device which is the source of the
  /// candidate.
  /// The `address` is `null` by default if not otherwise specified.
  ///
  /// The `address` field's value is set from the `candidateInfo` options object
  /// passed to the [RTCIceCandidate.RTCIceCandidate] constructor.
  /// You can't specify the value of `address` directly in the options object,
  /// but its value is automatically extracted from the object's `candidate`
  /// a-line, if it's formatted properly.
  external String? get address;

  /// The **[RTCIceCandidate]** interface's read-only **`protocol`** property is
  /// a string
  /// which indicates whether the candidate uses  or  as its transport protocol.
  ///
  /// The `protocol` field's value is set from the `candidateInfo` options
  /// object passed to the [RTCIceCandidate.RTCIceCandidate] constructor.
  /// You can't specify the value of `protocol` directly in the options object,
  /// but its value is automatically extracted from the object's `candidate`
  /// a-line, if it's formatted properly.
  ///
  /// `protocol` is `null` by default if not specified properly in the SDP, but
  /// this is an error condition and will result in a thrown exception when you
  /// call [RTCPeerConnection.addIceCandidate].
  external RTCIceProtocol? get protocol;

  /// The **[RTCIceCandidate]** interface's read-only **`port`** property
  /// contains the port
  /// number on the device at the address given by [RTCIceCandidate.address] at
  /// which the candidate's peer can be reached.
  ///
  /// The `port` field's value is set from the `candidateInfo` options object
  /// passed to the [RTCIceCandidate.RTCIceCandidate] constructor.
  /// You can't specify the value of `port` directly in the options object, but
  /// its value is automatically extracted from the object's `candidate` a-line,
  /// if it's formatted properly.
  external int? get port;

  /// The **[RTCIceCandidate]** interface's read-only **`type`** specifies the
  /// type of candidate the object represents.
  ///
  /// The `type` field's value is set from the `candidateInfo` options object
  /// passed to the [RTCIceCandidate.RTCIceCandidate] constructor.
  /// You can't specify the value of `type` directly in the options object, but
  /// its value is automatically extracted from the object's `candidate` a-line
  /// (the `cand-type` field), if it's formatted properly.
  external RTCIceCandidateType? get type;

  /// The **[RTCIceCandidate]** interface's read-only **`tcpType`** property is
  /// included on TCP candidates to provide additional details about the
  /// candidate type.
  ///
  /// The `tcpType` field's value is set from the `candidateInfo` options object
  /// passed to the [RTCIceCandidate.RTCIceCandidate] constructor.
  /// You can't specify the value of `tcpType` directly in the options object,
  /// but its value is automatically extracted from the object's `candidate`
  /// a-line, if it's formatted properly.
  external RTCIceTcpCandidateType? get tcpType;

  /// The **[RTCIceCandidate]** interface's read-only **`relatedAddress`**
  /// property is a string indicating the **related address** of a relay or
  /// reflexive candidate.
  ///
  /// If the candidate is a host candidate (that is, its
  /// [RTCIceCandidate.address] is in fact the real IP address of the remote
  /// peer), `relatedAddress` is `null`.
  ///
  /// The `relatedAddress` field's value is set from the `candidateInfo` options
  /// object passed to the [RTCIceCandidate.RTCIceCandidate] constructor.
  /// You can't specify the value of `relatedAddress` directly in the options
  /// object, but its value is automatically extracted from the object's
  /// `candidate` a-line if it's formatted properly(the `rel-address` field).
  ///
  /// The related address and port ([RTCIceCandidate.relatedPort]) are not used
  /// at all by  itself; they are provided for analysis and diagnostic purposes
  /// only, and their inclusion may be blocked by security systems, so do not
  /// rely on them having non-`null` values.
  external String? get relatedAddress;

  /// The **[RTCIceCandidate]** interface's read-only **`relatedPort`** property
  /// indicates the port number of reflexive or relay candidates.
  ///
  /// If the candidate is a host candidate (that is, its
  /// [RTCIceCandidate.address] is in fact the real IP address of the remote
  /// peer), `relatedPort` is `null`.
  ///
  /// The `relatedPort` field's value is set from the `candidateInfo` options
  /// object passed to the [RTCIceCandidate.RTCIceCandidate] constructor.
  /// You can't specify the value of `relatedPort` directly in the options
  /// object, but its value is automatically extracted from the object's
  /// `candidate` a-line, if it's formatted properly (the `rel-port` field).
  ///
  /// The related address ([RTCIceCandidate.relatedAddress]) and port are not
  /// used at all by  itself; they are provided for
  /// analysis and diagnostic purposes only, and their inclusion may be blocked
  /// by security systems, so do not rely on them having non-`null` values.
  external int? get relatedPort;

  /// The read-only **`usernameFragment`** property on the [RTCIceCandidate]
  /// interface is a string indicating the
  /// username fragment ("ufrag") that uniquely identifies a single ICE
  /// interaction session.
  ///
  /// This value is specified using the `usernameFragment` property in the
  /// `candidateInfo` options object that is passed to the
  /// [RTCIceCandidate.RTCIceCandidate] constructor.
  /// If you call the constructor with an m-line string instead of the options
  /// object, the value of `usernameFragment` is extracted from the specified
  /// candidate m-line string.
  ///
  /// Note that 24 bits of the username fragment are required to be randomized
  /// by the browser. See [Randomization](#randomization) below for details.
  external String? get usernameFragment;
}
extension type RTCIceCandidateInit._(JSObject _) implements JSObject {
  external factory RTCIceCandidateInit({
    String candidate,
    String? sdpMid,
    int? sdpMLineIndex,
    String? usernameFragment,
  });

  external String get candidate;
  external set candidate(String value);
  external String? get sdpMid;
  external set sdpMid(String? value);
  external int? get sdpMLineIndex;
  external set sdpMLineIndex(int? value);
  external String? get usernameFragment;
  external set usernameFragment(String? value);
}

/// The **`RTCPeerConnectionIceEvent`** interface represents events that occur
/// in relation to  candidates with the target, usually an [RTCPeerConnection].
///
/// Only one event is of this type: [RTCPeerConnection.icecandidate_event].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionIceEvent).
extension type RTCPeerConnectionIceEvent._(JSObject _)
    implements Event, JSObject {
  external factory RTCPeerConnectionIceEvent(
    String type, [
    RTCPeerConnectionIceEventInit eventInitDict,
  ]);

  /// The read-only **`candidate`** property
  /// of the [RTCPeerConnectionIceEvent] interface returns the
  /// [RTCIceCandidate] associated with the event.
  external RTCIceCandidate? get candidate;
  external String? get url;
}
extension type RTCPeerConnectionIceEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory RTCPeerConnectionIceEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    RTCIceCandidate? candidate,
    String? url,
  });

  external RTCIceCandidate? get candidate;
  external set candidate(RTCIceCandidate? value);
  external String? get url;
  external set url(String? value);
}

/// The **`RTCPeerConnectionIceErrorEvent`** interface—based upon the [Event]
/// interface—provides details pertaining to an  error announced by sending an
/// [RTCPeerConnection.icecandidateerror_event] event to the [RTCPeerConnection]
/// object.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnectionIceErrorEvent).
extension type RTCPeerConnectionIceErrorEvent._(JSObject _)
    implements Event, JSObject {
  external factory RTCPeerConnectionIceErrorEvent(
    String type,
    RTCPeerConnectionIceErrorEventInit eventInitDict,
  );

  /// The [RTCPeerConnectionIceErrorEvent] property
  /// **`address`** is a string which indicates the local IP address
  /// being used to communicate with the  or  server
  /// during negotiations. The error which occurred involved this address.
  external String? get address;
  external int? get port;
  external String get url;
  external int get errorCode;
  external String get errorText;
}
extension type RTCPeerConnectionIceErrorEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory RTCPeerConnectionIceErrorEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    String? address,
    int? port,
    String url,
    required int errorCode,
    String errorText,
  });

  external String? get address;
  external set address(String? value);
  external int? get port;
  external set port(int? value);
  external String get url;
  external set url(String value);
  external int get errorCode;
  external set errorCode(int value);
  external String get errorText;
  external set errorText(String value);
}

/// The **`RTCCertificate`** interface of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// provides an object representing a certificate that an [RTCPeerConnection]
/// uses to authenticate.
///
/// `RTCCertificate` is a , so it can be cloned with [structuredClone] or copied
/// between [Workers](https://developer.mozilla.org/en-US/docs/Web/API/Worker)
/// using [Worker.postMessage].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCCertificate).
extension type RTCCertificate._(JSObject _) implements JSObject {
  /// The **`getFingerprints()`** method of the **[RTCCertificate]** interface
  /// is used to get an array of certificate fingerprints.
  ///
  /// An application can use this method to compare the client certificate
  /// fingerprints with the certificate fingerprints from the server.
  /// The server and client may support different sets of algorithms: all
  /// fingerprint values for the set of algorithms supported by both client and
  /// server should match.
  external JSArray<RTCDtlsFingerprint> getFingerprints();

  /// The read-only **`expires`** property of the [RTCCertificate] interface
  /// returns the expiration date of the certificate.
  ///
  /// By default a new certificate is configured with `expires` set to a value
  /// of 2592000000 milliseconds, or 30 days.
  /// The expiration time cannot exceed 31536000000 milliseconds, or 365 days.
  /// It's also useful to note that browsers may further restrict the expiration
  /// time of certificates if they choose.
  external EpochTimeStamp get expires;
}
extension type RTCRtpTransceiverInit._(JSObject _) implements JSObject {
  external factory RTCRtpTransceiverInit({
    RTCRtpTransceiverDirection direction,
    JSArray<MediaStream> streams,
    JSArray<RTCRtpEncodingParameters> sendEncodings,
  });

  external RTCRtpTransceiverDirection get direction;
  external set direction(RTCRtpTransceiverDirection value);
  external JSArray<MediaStream> get streams;
  external set streams(JSArray<MediaStream> value);
  external JSArray<RTCRtpEncodingParameters> get sendEncodings;
  external set sendEncodings(JSArray<RTCRtpEncodingParameters> value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpSender).
extension type RTCRtpSender._(JSObject _) implements JSObject {
  /// The _static method_ **`RTCRtpSender.getCapabilities()`** returns an object
  /// describing the codec and header extension capabilities supported by the
  /// [RTCRtpSender].
  ///
  /// You can, similarly, obtain the capabilities of [RTCRtpReceiver] objects on
  /// the device by calling the static function
  /// [RTCRtpReceiver.getCapabilities_static].
  external static RTCRtpCapabilities? getCapabilities(String kind);

  /// The **`setParameters()`** method of the [RTCRtpSender] interface applies
  /// changes the configuration of sender's [RTCRtpSender.track], which is the
  /// [MediaStreamTrack] for which the `RTCRtpSender` is responsible.
  ///
  /// In other words, `setParameters()` updates the configuration of the
  /// transmission as well as the encoding configuration for a specific outgoing
  /// media track on the
  /// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// connection.
  external JSPromise<JSAny?> setParameters(
    RTCRtpSendParameters parameters, [
    RTCSetParameterOptions setParameterOptions,
  ]);

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
  external JSPromise<JSAny?> replaceTrack(MediaStreamTrack? withTrack);

  /// The [RTCRtpSender] method **`setStreams()`** associates the sender's
  /// [RTCRtpSender.track] with the specified [MediaStream] objects.
  external void setStreams(MediaStream streams);

  /// The [RTCRtpSender] method **`getStats()`** asynchronously requests an
  /// [RTCStatsReport] object which provides statistics about outgoing traffic
  /// on the [RTCPeerConnection] which owns the sender, returning a `Promise`
  /// which is fulfilled when the results are available.
  external JSPromise<RTCStatsReport> getStats();

  /// The **`track`** read-only property of
  /// the [RTCRtpSender] interface returns the [MediaStreamTrack]
  /// which is being handled by the `RTCRtpSender`.
  external MediaStreamTrack? get track;

  /// The read-only **`transport`** property of an
  /// [RTCRtpSender] object provides the [RTCDtlsTransport] object
  /// used to interact with the underlying transport over which the sender is
  /// exchanging
  /// Real-time Transport Control Protocol () packets.
  ///
  /// This transport is responsible for receiving the data for the media on the
  /// sender's
  /// [RTCRtpReceiver.track].
  external RTCDtlsTransport? get transport;

  /// The **`transform`** property of the [RTCRtpSender] object is used to
  /// insert a transform stream ([TransformStream]) running in a worker thread
  /// into the sender pipeline.
  /// This allows stream transforms to be applied to encoded video and audio
  /// frames after they are output by a codec, and before they are sent.
  ///
  /// The transform that is to be added is defined using an
  /// [RTCRtpScriptTransform] and its associated [Worker].
  /// If the transform is set synchronously immediately after creating the
  /// `RTCRtpSender` it will receive the first full frame generated by the
  /// sender's encoder.
  ///
  /// ### Value
  ///
  /// A [RTCRtpScriptTransform]<!-- or [SFrameTransform] -->, or `null` if the
  /// sender has no associated transform stream.
  external RTCRtpTransform? get transform;
  external set transform(RTCRtpTransform? value);

  /// The read-only **`dtmf`** property on the
  /// **[RTCRtpSender]** interface returns a
  /// [RTCDTMFSender] object which can be used to send  tones
  /// over the [RTCPeerConnection]. See
  /// [Using DTMF](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Using_DTMF)
  /// for details on how to
  /// make use of the returned `RTCDTMFSender` object.
  external RTCDTMFSender? get dtmf;
}
extension type RTCRtpParameters._(JSObject _) implements JSObject {
  external factory RTCRtpParameters({
    required JSArray<RTCRtpHeaderExtensionParameters> headerExtensions,
    required RTCRtcpParameters rtcp,
    required JSArray<RTCRtpCodecParameters> codecs,
  });

  external JSArray<RTCRtpHeaderExtensionParameters> get headerExtensions;
  external set headerExtensions(JSArray<RTCRtpHeaderExtensionParameters> value);
  external RTCRtcpParameters get rtcp;
  external set rtcp(RTCRtcpParameters value);
  external JSArray<RTCRtpCodecParameters> get codecs;
  external set codecs(JSArray<RTCRtpCodecParameters> value);
}
extension type RTCRtpSendParameters._(JSObject _)
    implements RTCRtpParameters, JSObject {
  external factory RTCRtpSendParameters({
    required JSArray<RTCRtpHeaderExtensionParameters> headerExtensions,
    required RTCRtcpParameters rtcp,
    required JSArray<RTCRtpCodecParameters> codecs,
    required String transactionId,
    required JSArray<RTCRtpEncodingParameters> encodings,
    RTCDegradationPreference degradationPreference,
  });

  external String get transactionId;
  external set transactionId(String value);
  external JSArray<RTCRtpEncodingParameters> get encodings;
  external set encodings(JSArray<RTCRtpEncodingParameters> value);
  external RTCDegradationPreference get degradationPreference;
  external set degradationPreference(RTCDegradationPreference value);
}
extension type RTCRtpReceiveParameters._(JSObject _)
    implements RTCRtpParameters, JSObject {
  external factory RTCRtpReceiveParameters({
    required JSArray<RTCRtpHeaderExtensionParameters> headerExtensions,
    required RTCRtcpParameters rtcp,
    required JSArray<RTCRtpCodecParameters> codecs,
  });
}
extension type RTCRtpCodingParameters._(JSObject _) implements JSObject {
  external factory RTCRtpCodingParameters({String rid});

  external String get rid;
  external set rid(String value);
}
extension type RTCRtpEncodingParameters._(JSObject _)
    implements RTCRtpCodingParameters, JSObject {
  external factory RTCRtpEncodingParameters({
    String rid,
    bool active,
    int maxBitrate,
    num maxFramerate,
    num scaleResolutionDownBy,
    RTCPriorityType priority,
    RTCPriorityType networkPriority,
    String scalabilityMode,
  });

  external bool get active;
  external set active(bool value);
  external int get maxBitrate;
  external set maxBitrate(int value);
  external double get maxFramerate;
  external set maxFramerate(num value);
  external double get scaleResolutionDownBy;
  external set scaleResolutionDownBy(num value);
  external RTCPriorityType get priority;
  external set priority(RTCPriorityType value);
  external RTCPriorityType get networkPriority;
  external set networkPriority(RTCPriorityType value);
  external String get scalabilityMode;
  external set scalabilityMode(String value);
}
extension type RTCRtcpParameters._(JSObject _) implements JSObject {
  external factory RTCRtcpParameters({
    String cname,
    bool reducedSize,
  });

  external String get cname;
  external set cname(String value);
  external bool get reducedSize;
  external set reducedSize(bool value);
}
extension type RTCRtpHeaderExtensionParameters._(JSObject _)
    implements JSObject {
  external factory RTCRtpHeaderExtensionParameters({
    required String uri,
    required int id,
    bool encrypted,
  });

  external String get uri;
  external set uri(String value);
  external int get id;
  external set id(int value);
  external bool get encrypted;
  external set encrypted(bool value);
}
extension type RTCRtpCodec._(JSObject _) implements JSObject {
  external factory RTCRtpCodec({
    required String mimeType,
    required int clockRate,
    int channels,
    String sdpFmtpLine,
  });

  external String get mimeType;
  external set mimeType(String value);
  external int get clockRate;
  external set clockRate(int value);
  external int get channels;
  external set channels(int value);
  external String get sdpFmtpLine;
  external set sdpFmtpLine(String value);
}
extension type RTCRtpCodecParameters._(JSObject _)
    implements RTCRtpCodec, JSObject {
  external factory RTCRtpCodecParameters({
    required String mimeType,
    required int clockRate,
    int channels,
    String sdpFmtpLine,
    required int payloadType,
  });

  external int get payloadType;
  external set payloadType(int value);
}
extension type RTCRtpCapabilities._(JSObject _) implements JSObject {
  external factory RTCRtpCapabilities({
    required JSArray<RTCRtpCodec> codecs,
    required JSArray<RTCRtpHeaderExtensionCapability> headerExtensions,
  });

  external JSArray<RTCRtpCodec> get codecs;
  external set codecs(JSArray<RTCRtpCodec> value);
  external JSArray<RTCRtpHeaderExtensionCapability> get headerExtensions;
  external set headerExtensions(JSArray<RTCRtpHeaderExtensionCapability> value);
}
extension type RTCRtpHeaderExtensionCapability._(JSObject _)
    implements JSObject {
  external factory RTCRtpHeaderExtensionCapability({required String uri});

  external String get uri;
  external set uri(String value);
}
extension type RTCSetParameterOptions._(JSObject _) implements JSObject {
  RTCSetParameterOptions() : _ = JSObject();
}

/// The **`RTCRtpReceiver`** interface of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// manages the reception and decoding of data for a [MediaStreamTrack] on an
/// [RTCPeerConnection].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpReceiver).
extension type RTCRtpReceiver._(JSObject _) implements JSObject {
  /// The _static method_ **`RTCRtpReceiver.getCapabilities()`** returns an
  /// object describing the codec and header extension capabilities supported by
  /// [RTCRtpReceiver] objects on the current device.
  ///
  /// You can, similarly, obtain the capabilities of [RTCRtpSender] objects by
  /// calling the static function [RTCRtpSender.getCapabilities_static].
  external static RTCRtpCapabilities? getCapabilities(String kind);

  /// The **`getParameters()`** method of the [RTCRtpReceiver] interface returns
  /// an object describing the current configuration for how the receiver's
  /// [RTCRtpReceiver.track] is decoded.
  external RTCRtpReceiveParameters getParameters();

  /// The **`getContributingSources()`** method of the [RTCRtpReceiver]
  /// interface returns an array of objects, each corresponding to one CSRC
  /// (contributing source) identifier received by the current `RTCRtpReceiver`
  /// in the last ten seconds.
  external JSArray<RTCRtpContributingSource> getContributingSources();

  /// The **`getSynchronizationSources()`** method of the [RTCRtpReceiver]
  /// interface returns an array of objects, each corresponding to one SSRC
  /// (synchronization source) identifier received by the current
  /// `RTCRtpReceiver` in the last ten seconds.
  external JSArray<RTCRtpSynchronizationSource> getSynchronizationSources();

  /// The [RTCRtpReceiver] method **`getStats()`** asynchronously requests an
  /// [RTCStatsReport] object which provides statistics about incoming traffic
  /// on the owning [RTCPeerConnection], returning a `Promise` whose fulfillment
  /// handler will be called once the results are available.
  external JSPromise<RTCStatsReport> getStats();

  /// The **`track`** read-only property of the
  /// [RTCRtpReceiver] interface returns the [MediaStreamTrack]
  /// associated with the current [RTCRtpReceiver] instance.
  external MediaStreamTrack get track;

  /// The read-only **`transport`** property of an
  /// [RTCRtpReceiver] object provides the [RTCDtlsTransport] object
  /// used to interact with the underlying transport over which the receiver is
  /// exchanging
  /// Real-time Transport Control Protocol () packets.
  ///
  /// This transport is responsible for receiving the data for the media on the
  /// receiver's
  /// [RTCRtpReceiver.track].
  external RTCDtlsTransport? get transport;

  /// The **`jitterBufferTarget`** property of the [RTCRtpReceiver] interface is
  /// a [DOMHighResTimeStamp] that indicates the application's preferred
  /// duration, in milliseconds, for which the jitter buffer should hold media
  /// before playing it out.
  ///
  /// The application can use it to influence the tradeoff between playout delay
  /// and the risk of running out of audio or video frames due to network
  /// jitter.
  external double? get jitterBufferTarget;
  external set jitterBufferTarget(DOMHighResTimeStamp? value);

  /// The **`transform`** property of the [RTCRtpReceiver] object is used to
  /// insert a transform stream ([TransformStream]) running in a worker thread
  /// into the receiver pipeline.
  /// This allows stream transforms to be applied to encoded video and audio
  /// frames as they arrive from the packetizer (before they are
  /// played/rendered).
  ///
  /// The transform that is to be added is defined using an
  /// [RTCRtpScriptTransform] and its associated [Worker].
  /// If the transform is set in the peer connection
  /// [`track` event](https://developer.mozilla.org/en-US/docs/Web/API/RTCPeerConnection/track_event)
  /// handler, the transform stream will receive the first full incoming frame
  /// for the track.
  ///
  /// ### Value
  ///
  /// A [RTCRtpScriptTransform]<!-- or [SFrameTransform] -->, or `null` if the
  /// receiver has no associated transform stream.
  external RTCRtpTransform? get transform;
  external set transform(RTCRtpTransform? value);
}
extension type RTCRtpContributingSource._(JSObject _) implements JSObject {
  external factory RTCRtpContributingSource({
    required DOMHighResTimeStamp timestamp,
    required int source,
    num audioLevel,
    required int rtpTimestamp,
  });

  external double get timestamp;
  external set timestamp(DOMHighResTimeStamp value);
  external int get source;
  external set source(int value);
  external double get audioLevel;
  external set audioLevel(num value);
  external int get rtpTimestamp;
  external set rtpTimestamp(int value);
}
extension type RTCRtpSynchronizationSource._(JSObject _)
    implements RTCRtpContributingSource, JSObject {
  external factory RTCRtpSynchronizationSource({
    required DOMHighResTimeStamp timestamp,
    required int source,
    num audioLevel,
    required int rtpTimestamp,
  });
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpTransceiver).
extension type RTCRtpTransceiver._(JSObject _) implements JSObject {
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
  external void setCodecPreferences(JSArray<RTCRtpCodec> codecs);

  /// The read-only [RTCRtpTransceiver] interface's
  /// **`mid`** property specifies the negotiated media ID
  /// (`mid`) which the local and remote peers have agreed upon to uniquely
  /// identify the stream's pairing of sender and receiver.
  external String? get mid;

  /// The read-only **`sender`** property
  /// of WebRTC's [RTCRtpTransceiver] interface indicates the
  /// [RTCRtpSender] responsible for encoding and sending outgoing media data
  /// for the transceiver's stream.
  external RTCRtpSender get sender;

  /// The read-only **`receiver`** property
  /// of WebRTC's [RTCRtpTransceiver] interface indicates the
  /// [RTCRtpReceiver] responsible for receiving and decoding incoming media
  /// data for the transceiver's stream.
  external RTCRtpReceiver get receiver;

  /// The [RTCRtpTransceiver] property **`direction`** is a string that
  /// indicates the transceiver's _preferred_ directionality.
  ///
  /// The directionality indicates whether the transceiver will offer to send
  /// and/or receive  data, or whether it is inactive or stopped (terminated).
  /// When setting the transceiver's direction, the value is not applied
  /// immediately.
  /// The _current_ direction is indicated by the
  /// [RTCRtpTransceiver.currentDirection] property.
  external RTCRtpTransceiverDirection get direction;
  external set direction(RTCRtpTransceiverDirection value);

  /// The read-only [RTCRtpTransceiver] property **`currentDirection`** is a
  /// string which indicates the current negotiated directionality of the
  /// transceiver.
  ///
  /// The directionality indicates whether the transceiver will offer to send
  /// and/or receive  data, or whether it is inactive or stopped and won't send
  /// or receive data.
  ///
  /// The transceiver's preferred directionality can be set and read using the
  /// [RTCRtpTransceiver.direction] property.
  /// Changing the `direction` triggers a renegotiation, which may eventually
  /// result in the `currentDirection` also changing.
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCDtlsTransport).
extension type RTCDtlsTransport._(JSObject _) implements EventTarget, JSObject {
  external JSArray<JSArrayBuffer> getRemoteCertificates();

  /// The **`iceTransport`** read-only property of the **[RTCDtlsTransport]**
  /// interface contains a reference to the underlying [RTCIceTransport].
  external RTCIceTransport get iceTransport;

  /// The **`state`** read-only property of the
  /// [RTCDtlsTransport] interface provides information which describes a
  /// Datagram Transport Layer Security (****) transport state.
  external RTCDtlsTransportState get state;
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
}
extension type RTCDtlsFingerprint._(JSObject _) implements JSObject {
  external factory RTCDtlsFingerprint({
    String algorithm,
    String value,
  });

  external String get algorithm;
  external set algorithm(String value);
  external String get value;
  external set value(String value);
}

/// The **`RTCIceTransport`** interface provides access to information about the
/// transport layer over which the data is being sent and received.
/// This is particularly useful if you need to access state information about
/// the connection.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCIceTransport).
extension type RTCIceTransport._(JSObject _) implements EventTarget, JSObject {
  /// The **`getLocalCandidates()`** method of the [RTCIceTransport] interface
  /// returns an array of [RTCIceCandidate] objects, one for each of the
  /// candidates that have been gathered by the local device during the current
  /// agent session.
  ///
  /// The local candidates are placed in this list by the ICE agent prior to
  /// being delivered to the local client's code in an
  /// [RTCPeerConnection.icecandidate_event] event so that the client can
  /// forward the candidates to the remote peer.
  external JSArray<RTCIceCandidate> getLocalCandidates();

  /// The **`getRemoteCandidates()`** method of the [RTCIceTransport] interface
  /// returns an array that contains one [RTCIceCandidate] for each of the
  /// candidates that have been received from the remote peer so far during the
  /// current  gathering session.
  ///
  /// Each time your signaling code calls [RTCPeerConnection.addIceCandidate] to
  /// add a received candidate to the ICE session, the ICE agent places it in
  /// the list returned by this function.
  external JSArray<RTCIceCandidate> getRemoteCandidates();

  /// The **`getSelectedCandidatePair()`** method of the [RTCIceTransport]
  /// interface returns an [RTCIceCandidatePair] object containing the current
  /// best-choice pair of  candidates describing the configuration of the
  /// endpoints of the transport.
  external JSObject? getSelectedCandidatePair();

  /// The **`getLocalParameters()`** method of the [RTCIceTransport] interface
  /// returns an [RTCIceParameters] object that provides information uniquely
  /// identifying the local peer for the duration of the ICE session.
  ///
  /// The local peer's parameters are obtained during ICE signaling and
  /// delivered to the transport when the client calls
  /// [RTCPeerConnection.setLocalDescription].
  external RTCIceParameters? getLocalParameters();

  /// The **`getRemoteParameters()`** method of the [RTCIceTransport] interface
  /// returns an [RTCIceParameters] object that provides information uniquely
  /// identifying the remote peer for the duration of the ICE session.
  ///
  /// The remote peer's parameters are received during ICE signaling and
  /// delivered to the transport when the client calls
  /// [RTCPeerConnection.setRemoteDescription].
  external RTCIceParameters? getRemoteParameters();

  /// The **`role`** read-only property of the [RTCIceTransport] interface
  /// indicates which  role the transport is fulfilling: that of the controlling
  /// agent, or the agent that is being controlled.
  ///
  /// You can learn more about ICE roles in
  /// [Choosing a candidate pair](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Connectivity#choosing_a_candidate_pair).
  external RTCIceRole get role;

  /// The **`state`** read-only property of the [RTCIceTransport] interface
  /// returns the current state of the ICE transport, so you can determine the
  /// state of ICE gathering in which the ICE agent currently is operating.
  ///
  /// This differs from the [RTCIceTransport.gatheringState], which only
  /// indicates whether or not ICE gathering is currently underway.
  /// It also differs from [RTCPeerConnection.connectionState], which aggregates
  /// the states across every [RTCIceTransport] used by every [RTCRtpSender] and
  /// every [RTCRtpReceiver] on the entire connection.
  external RTCIceTransportState get state;

  /// The **`gatheringState`** read-only property of the [RTCIceTransport]
  /// interface returns a string that indicates the current gathering state of
  /// the ICE agent for this transport: `"new"`, `"gathering"`, or `"complete"`.
  ///
  /// You can detect when the value of this property changes by watching for an
  /// event of type [RTCIceTransport.gatheringstatechange_event].
  ///
  /// Note that **`gatheringState`** represents the gathering state of just this
  /// transport, while [RTCPeerConnection.iceGatheringState] represents the
  /// overall gathering state of the whole connection, including every
  /// [RTCIceTransport] used by every [RTCRtpSender] and every [RTCRtpReceiver]
  /// on the entire connection.
  external RTCIceGathererState get gatheringState;
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
  external EventHandler get ongatheringstatechange;
  external set ongatheringstatechange(EventHandler value);
  external EventHandler get onselectedcandidatepairchange;
  external set onselectedcandidatepairchange(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onicecandidate;
  external set onicecandidate(EventHandler value);
}

/// The **`RTCIceParameters`** dictionary specifies the username fragment and
/// password assigned to an  session.
///
/// During ICE negotiation, each peer's username fragment and password are
/// recorded in an `RTCIceParameters` object, which can be obtained from the
/// [RTCIceTransport] by calling its [RTCIceTransport.getLocalParameters] or
/// [RTCIceTransport.getRemoteParameters] method, depending on which end
/// interests you.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCIceParameters).
extension type RTCIceParameters._(JSObject _) implements JSObject {
  external factory RTCIceParameters({
    String usernameFragment,
    String password,
    bool iceLite,
  });

  /// The **[RTCIceParameters]** dictionary's
  /// **`usernameFragment`** property specifies the username fragment
  /// ("ufrag") that uniquely identifies the corresponding ICE session for the
  /// duration of the
  /// current ICE session.
  external String get usernameFragment;
  external set usernameFragment(String value);

  /// The **[RTCIceParameters]**
  /// dictionary's **`password`** property specifies the ICE
  /// password that, in tandem with the [RTCIceParameters.usernameFragment],
  /// uniquely identifies an ICE session for its entire
  /// duration.
  external String get password;
  external set password(String value);
  external bool get iceLite;
  external set iceLite(bool value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCTrackEvent).
extension type RTCTrackEvent._(JSObject _) implements Event, JSObject {
  external factory RTCTrackEvent(
    String type,
    RTCTrackEventInit eventInitDict,
  );

  /// The read-only **`receiver`** property
  /// of the [RTCTrackEvent] interface indicates the
  /// [RTCRtpReceiver] which is used to receive data containing media for the
  /// [RTCTrackEvent.track] to which the event refers.
  external RTCRtpReceiver get receiver;

  /// The
  /// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// interface [RTCTrackEvent]'s read-only **`track`**
  /// property specifies the [MediaStreamTrack] that has been added to the
  /// [RTCPeerConnection].
  external MediaStreamTrack get track;

  /// The
  /// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// interface [RTCTrackEvent]'s read-only
  /// **`streams`** property specifies an array of
  /// [MediaStream] objects, one for each of the streams that comprise the
  /// track being added to the [RTCPeerConnection].
  external JSArray<MediaStream> get streams;

  /// The WebRTC API interface [RTCTrackEvent]'s
  /// read-only **`transceiver`** property indicates the
  /// [RTCRtpTransceiver] affiliated with the event's
  /// [RTCTrackEvent.track].
  ///
  /// The transceiver pairs the track's
  /// [RTCTrackEvent.receiver] with an [RTCRtpSender].
  external RTCRtpTransceiver get transceiver;
}
extension type RTCTrackEventInit._(JSObject _) implements EventInit, JSObject {
  external factory RTCTrackEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required RTCRtpReceiver receiver,
    required MediaStreamTrack track,
    JSArray<MediaStream> streams,
    required RTCRtpTransceiver transceiver,
  });

  external RTCRtpReceiver get receiver;
  external set receiver(RTCRtpReceiver value);
  external MediaStreamTrack get track;
  external set track(MediaStreamTrack value);
  external JSArray<MediaStream> get streams;
  external set streams(JSArray<MediaStream> value);
  external RTCRtpTransceiver get transceiver;
  external set transceiver(RTCRtpTransceiver value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCSctpTransport).
extension type RTCSctpTransport._(JSObject _) implements EventTarget, JSObject {
  /// The **`transport`** read-only property of the [RTCSctpTransport] interface
  /// returns a [RTCDtlsTransport] object representing the  transport used for
  /// the transmission and receipt of data packets.
  external RTCDtlsTransport get transport;

  /// The **`state`** read-only property of the [RTCSctpTransport] interface
  /// provides information which describes a Stream Control Transmission
  /// Protocol () transport state.
  external RTCSctpTransportState get state;

  /// The **`maxMessageSize`** read-only property of the [RTCSctpTransport]
  /// interface indicates the maximum size of a message that can be sent using
  /// the [RTCDataChannel.send] method.
  external double get maxMessageSize;

  /// The **`maxChannels`** read-only property of the [RTCSctpTransport]
  /// interface indicates the maximum number of [RTCDataChannel] objects that
  /// can be opened simultaneously.
  external int? get maxChannels;
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannel).
extension type RTCDataChannel._(JSObject _) implements EventTarget, JSObject {
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

  /// The read-only `RTCDataChannel` property **`label`**
  /// returns a string containing a name describing the data channel. These
  /// labels are not required to be unique.
  ///
  /// You may use the label as you wish; you could use it to identify all the
  /// channels that
  /// are being used for the same purpose, by giving them all the same name. Or
  /// you could give
  /// each channel a unique label for tracking purposes. It's entirely up to the
  /// design
  /// decisions made when building your site or app.
  ///
  /// A unique ID can be found in the [RTCDataChannel.id] property.
  ///
  /// > **Note:** A data channel's label is set when the channel is created by
  /// > calling
  /// > [RTCPeerConnection.createDataChannel]. It cannot be changed after that.
  external String get label;

  /// The read-only `RTCDataChannel` property **`ordered`** indicates
  /// whether or not the data channel guarantees in-order delivery of messages;
  /// the default is `true`,
  /// which indicates that the data channel is indeed ordered.
  /// This is set when the [RTCDataChannel] is created,
  /// by setting the `ordered` property
  /// on the object passed as [RTCPeerConnection.createDataChannel]'s `options`
  /// parameter.
  external bool get ordered;

  /// The read-only `RTCDataChannel` property
  /// **`maxPacketLifeTime`** returns the amount of time, in
  /// milliseconds, the browser is allowed to take to attempt to transmit a
  /// message, as set
  /// when the data channel was created, or `null`. This limits how long
  /// the browser can continue to attempt to transmit and retransmit the message
  /// before giving
  /// up.
  external int? get maxPacketLifeTime;

  /// The read-only `RTCDataChannel` property
  /// **`maxRetransmits`** returns the maximum number of times the
  /// browser should try to retransmit a message before giving up, as set when
  /// the data
  /// channel was created, or `null`, which indicates that there is no
  /// maximum. This can only be set when the [RTCDataChannel] is created
  /// by calling [RTCPeerConnection.createDataChannel], using the
  /// `maxRetransmits` field in the specified `options`.
  external int? get maxRetransmits;

  /// The read-only `RTCDataChannel` property
  /// **`protocol`** returns a string containing the
  /// name of the subprotocol in use. If no protocol was specified when the data
  /// channel was
  /// created, then this property's value is the empty string (`""`).
  ///
  /// > **Note:** The permitted values of this property are defined by the
  /// > website or app using the
  /// > data channel.
  ///
  /// The ability for each channel to have a defined subprotocol lets your app,
  /// for example,
  /// use JSON objects as messages on one channel while another channel is
  /// plaintext and
  /// another is raw binary or even some other format.
  external String get protocol;

  /// The read-only `RTCDataChannel` property
  /// **`negotiated`** indicates whether the
  /// [RTCDataChannel]'s connection was negotiated by the Web app
  /// (`true`) or by the WebRTC layer (`false`). **The
  /// default is `false`.**
  ///
  /// See
  /// [Creating a data channel](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Using_data_channels#creating_a_data_channel)
  /// for further information about this property.
  external bool get negotiated;

  /// The read-only `RTCDataChannel` property
  /// **`id`** returns an ID number (between 0 and 65,534) which
  /// uniquely identifies the [RTCDataChannel]. This ID is set at the
  /// time the data channel is created, either by the user agent (if
  /// [RTCDataChannel.negotiated] is `false`) or by the site or app
  /// script (if `negotiated` is `true`).
  ///
  /// Each [RTCPeerConnection] can therefore have up to a theoretical maximum of
  /// 65,534 data channels on it, although the actual maximum may vary from
  /// browser to
  /// browser.
  external int? get id;

  /// The read-only `RTCDataChannel` property **`readyState`** returns a string
  /// which indicates the state of the data channel's underlying data
  /// connection.
  external RTCDataChannelState get readyState;

  /// The read-only `RTCDataChannel` property
  /// **`bufferedAmount`** returns the number of bytes of data
  /// currently queued to be sent over the data channel. The queue may build up
  /// as a
  /// result of calls to the [RTCDataChannel.send] method. This only
  /// includes data buffered by the user agent itself; it doesn't include any
  /// framing overhead
  /// or buffering done by the operating system or network hardware.
  ///
  /// The user agent may implement the process of actually sending data in any
  /// way it
  /// chooses; this may be done periodically during the event loop or truly
  /// asynchronously. As
  /// messages are actually sent, this value is reduced accordingly.
  ///
  /// > **Note:** Closing the data channel doesn't reset this count, even though
  /// > the user agent purges
  /// > the queued messages. However, even after closing the channel, attempts
  /// > to send
  /// > messages continue to add to the `bufferedAmount` value, even though the
  /// > messages are neither sent nor buffered.
  ///
  /// Whenever this value decreases to fall to or below the value specified in
  /// the
  /// [RTCDataChannel.bufferedAmountLowThreshold]
  /// property, the user agent fires the
  /// [RTCDataChannel.bufferedamountlow_event] event. This event may
  /// be used, for example, to implement code which queues more messages to be
  /// sent whenever
  /// there's room to buffer them.
  external int get bufferedAmount;

  /// The `RTCDataChannel` property
  /// **`bufferedAmountLowThreshold`** is used to specify the number
  /// of bytes of buffered outgoing data that is considered "low." The default
  /// value is
  /// 0\. When the number of buffered outgoing bytes, as indicated by the
  /// [RTCDataChannel.bufferedAmount] property, falls to or
  /// below this value, a [RTCDataChannel.bufferedamountlow_event] event is
  /// fired. This event may be
  /// used, for example, to implement code which queues more messages to be sent
  /// whenever
  /// there's room to buffer them. Listeners may be added with
  /// [RTCDataChannel.bufferedamountlow_event] or
  /// [EventTarget.addEventListener].
  ///
  /// The user agent may implement the process of actually sending data in any
  /// way it
  /// chooses; this may be done periodically during the event loop or truly
  /// asynchronously. As
  /// messages are actually sent, this value is reduced accordingly.
  ///
  /// > **Note:** `bufferedamountlow` events are not fired after the data
  /// > channel is closed.
  external int get bufferedAmountLowThreshold;
  external set bufferedAmountLowThreshold(int value);
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
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);

  /// The property **`binaryType`** on the
  /// [RTCDataChannel] interface is a string which specifies
  /// the type of object which should be used to represent binary data received
  /// on the [RTCDataChannel]. Values allowed by the
  /// [WebSocket.binaryType] property are also permitted here:
  /// `blob` if [Blob] objects are being used or
  /// `arraybuffer` if `ArrayBuffer` objects are being used. The
  /// default is `blob`.
  ///
  /// When a binary message is received on the data channel, the resulting
  /// [RTCDataChannel.message_event] event's [MessageEvent.data] property is an
  /// object of
  /// the type specified by the `binaryType`.
  external BinaryType get binaryType;
  external set binaryType(BinaryType value);
}
extension type RTCDataChannelInit._(JSObject _) implements JSObject {
  external factory RTCDataChannelInit({
    bool ordered,
    int maxPacketLifeTime,
    int maxRetransmits,
    String protocol,
    bool negotiated,
    int id,
    RTCPriorityType priority,
  });

  external bool get ordered;
  external set ordered(bool value);
  external int get maxPacketLifeTime;
  external set maxPacketLifeTime(int value);
  external int get maxRetransmits;
  external set maxRetransmits(int value);
  external String get protocol;
  external set protocol(String value);
  external bool get negotiated;
  external set negotiated(bool value);
  external int get id;
  external set id(int value);
  external RTCPriorityType get priority;
  external set priority(RTCPriorityType value);
}

/// The **`RTCDataChannelEvent`** interface
/// represents an event related to a specific [RTCDataChannel].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannelEvent).
extension type RTCDataChannelEvent._(JSObject _) implements Event, JSObject {
  external factory RTCDataChannelEvent(
    String type,
    RTCDataChannelEventInit eventInitDict,
  );

  /// The read-only property **`RTCDataChannelEvent.channel`**
  /// returns the [RTCDataChannel] associated with the event.
  external RTCDataChannel get channel;
}
extension type RTCDataChannelEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory RTCDataChannelEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required RTCDataChannel channel,
  });

  external RTCDataChannel get channel;
  external set channel(RTCDataChannel value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender).
extension type RTCDTMFSender._(JSObject _) implements EventTarget, JSObject {
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
  external EventHandler get ontonechange;
  external set ontonechange(EventHandler value);

  /// The **`canInsertDTMF`** read-only property of the [RTCDTMFSender]
  /// interface returns a boolean value which indicates whether the
  /// `RTCDTMFSender` is capable of sending DTMF tones over the
  /// [RTCPeerConnection].
  external bool get canInsertDTMF;

  /// The [RTCDTMFSender] interface's toneBuffer property returns a string
  /// containing a list of the  tones currently queued for sending to the
  /// remote peer over the [RTCPeerConnection]. To place tones into the buffer,
  /// call [RTCDTMFSender.insertDTMF].
  ///
  /// Tones are removed from the string as they're played, so only upcoming
  /// tones are listed.
  external String get toneBuffer;
}

/// The **`RTCDTMFToneChangeEvent`** interface represents events sent to
/// indicate that  tones have started or finished playing. This interface is
/// used by the
/// [`tonechange`](https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFSender/tonechange_event)
/// event.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFToneChangeEvent).
extension type RTCDTMFToneChangeEvent._(JSObject _) implements Event, JSObject {
  external factory RTCDTMFToneChangeEvent(
    String type, [
    RTCDTMFToneChangeEventInit eventInitDict,
  ]);

  /// The read-only property **`RTCDTMFToneChangeEvent.tone`**
  /// returns the DTMF character which has just begun to play, or an empty
  /// string
  /// (`""`). if all queued tones have finished playing (that is,
  /// [RTCDTMFSender.toneBuffer] is empty).
  external String get tone;
}
extension type RTCDTMFToneChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory RTCDTMFToneChangeEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    String tone,
  });

  external String get tone;
  external set tone(String value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport).
extension type RTCStatsReport._(JSObject _) implements JSObject {}

/// The **`RTCError`** interface describes an error which has occurred while
/// handling
/// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// operations. It's based upon the standard [DOMException] interface that
/// describes general DOM errors.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCError).
extension type RTCError._(JSObject _) implements DOMException, JSObject {
  external factory RTCError(
    RTCErrorInit init, [
    String message,
  ]);

  /// The [RTCError] interface's read-only
  /// **`errorDetail`** property is a string indicating the
  /// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)-specific
  /// error code that occurred.
  external RTCErrorDetailType get errorDetail;

  /// The [RTCError] interface's read-only property
  /// **`sdpLineNumber`** specifies the line number within the
  /// at which a syntax error occurred while parsing it.
  external int? get sdpLineNumber;

  /// The read-only **`sctpCauseCode`** property in an
  /// [RTCError] object provides the  cause code explaining
  /// why the SCTP negotiation failed, if the `RTCError` represents an SCTP
  /// error.
  external int? get sctpCauseCode;

  /// The [RTCError] read-only property
  /// **`receivedAlert`** specifies the fatal
  /// error which resulted in an alert being received from the remote peer.
  external int? get receivedAlert;

  /// The read-only **`sentAlert`** property in an
  /// [RTCError] object specifies the  alert number occurred
  /// while sending data to the remote peer, if the error represents an outbound
  /// DTLS error.
  external int? get sentAlert;
  external int? get httpRequestStatusCode;
}
extension type RTCErrorInit._(JSObject _) implements JSObject {
  external factory RTCErrorInit({
    required RTCErrorDetailType errorDetail,
    int sdpLineNumber,
    int sctpCauseCode,
    int receivedAlert,
    int sentAlert,
    int httpRequestStatusCode,
  });

  external RTCErrorDetailType get errorDetail;
  external set errorDetail(RTCErrorDetailType value);
  external int get sdpLineNumber;
  external set sdpLineNumber(int value);
  external int get sctpCauseCode;
  external set sctpCauseCode(int value);
  external int get receivedAlert;
  external set receivedAlert(int value);
  external int get sentAlert;
  external set sentAlert(int value);
  external int get httpRequestStatusCode;
  external set httpRequestStatusCode(int value);
}

/// The WebRTC API's **`RTCErrorEvent`** interface represents an error sent to a
/// WebRTC object. It's based on the standard [Event] interface, but adds
/// RTC-specific information describing the error, as shown below.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/RTCErrorEvent).
extension type RTCErrorEvent._(JSObject _) implements Event, JSObject {
  external factory RTCErrorEvent(
    String type,
    RTCErrorEventInit eventInitDict,
  );

  /// The read-only [RTCErrorEvent] property **`error`**
  /// contains an [RTCError] object describing the details of the error which
  /// the
  /// event is announcing.
  external RTCError get error;
}
extension type RTCErrorEventInit._(JSObject _) implements EventInit, JSObject {
  external factory RTCErrorEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required RTCError error,
  });

  external RTCError get error;
  external set error(RTCError value);
}
