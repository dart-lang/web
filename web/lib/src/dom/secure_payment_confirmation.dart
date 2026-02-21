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

import 'payment_request.dart';
import 'webauthn.dart';
import 'webidl.dart';

typedef SecurePaymentConfirmationAvailability = String;

/// The **`SecurePaymentConfirmationRequest`** dictionary describes input to the
/// [Payment Request API](https://developer.mozilla.org/en-US/docs/Web/API/Payment_Request_API)
/// when used to authenticate a user during an e-commerce transaction
/// [using SPC with Payment Request API](https://developer.mozilla.org/en-US/docs/Web/API/Payment_Request_API/Using_secure_payment_confirmation).
///
/// An instance of this dictionary must be passed into the
/// [PaymentRequest.PaymentRequest] constructor as the value of the
/// [`data`](https://developer.mozilla.org/en-US/docs/Web/API/PaymentRequest/PaymentRequest#data)
/// field corresponding to a
/// [`supportedMethods`](https://developer.mozilla.org/en-US/docs/Web/API/PaymentRequest/PaymentRequest#supportedmethods)
/// value of `"secure-payment-confirmation"`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SecurePaymentConfirmationRequest).
extension type SecurePaymentConfirmationRequest._(JSObject _)
    implements JSObject {
  external factory SecurePaymentConfirmationRequest({
    required BufferSource challenge,
    required String rpId,
    required JSArray<BufferSource> credentialIds,
    required PaymentCredentialInstrument instrument,
    int timeout,
    String payeeName,
    String payeeOrigin,
    JSArray<PaymentEntityLogo> paymentEntitiesLogos,
    AuthenticationExtensionsClientInputs extensions,
    JSArray<PublicKeyCredentialParameters> browserBoundPubKeyCredParams,
    JSArray<JSString> locale,
    bool showOptOut,
  });

  external BufferSource get challenge;
  external set challenge(BufferSource value);
  external String get rpId;
  external set rpId(String value);
  external JSArray<BufferSource> get credentialIds;
  external set credentialIds(JSArray<BufferSource> value);
  external PaymentCredentialInstrument get instrument;
  external set instrument(PaymentCredentialInstrument value);
  external int get timeout;
  external set timeout(int value);
  external String get payeeName;
  external set payeeName(String value);
  external String get payeeOrigin;
  external set payeeOrigin(String value);
  external JSArray<PaymentEntityLogo> get paymentEntitiesLogos;
  external set paymentEntitiesLogos(JSArray<PaymentEntityLogo> value);
  external AuthenticationExtensionsClientInputs get extensions;
  external set extensions(AuthenticationExtensionsClientInputs value);
  external JSArray<PublicKeyCredentialParameters>
      get browserBoundPubKeyCredParams;
  external set browserBoundPubKeyCredParams(
      JSArray<PublicKeyCredentialParameters> value);
  external JSArray<JSString> get locale;
  external set locale(JSArray<JSString> value);
  external bool get showOptOut;
  external set showOptOut(bool value);
}
extension type AuthenticationExtensionsPaymentInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsPaymentInputs({
    bool isPayment,
    JSArray<PublicKeyCredentialParameters> browserBoundPubKeyCredParams,
    String rpId,
    String topOrigin,
    String payeeName,
    String payeeOrigin,
    JSArray<PaymentEntityLogo> paymentEntitiesLogos,
    PaymentCurrencyAmount total,
    PaymentCredentialInstrument instrument,
  });

  external bool get isPayment;
  external set isPayment(bool value);
  external JSArray<PublicKeyCredentialParameters>
      get browserBoundPubKeyCredParams;
  external set browserBoundPubKeyCredParams(
      JSArray<PublicKeyCredentialParameters> value);
  external String get rpId;
  external set rpId(String value);
  external String get topOrigin;
  external set topOrigin(String value);
  external String get payeeName;
  external set payeeName(String value);
  external String get payeeOrigin;
  external set payeeOrigin(String value);
  external JSArray<PaymentEntityLogo> get paymentEntitiesLogos;
  external set paymentEntitiesLogos(JSArray<PaymentEntityLogo> value);
  external PaymentCurrencyAmount get total;
  external set total(PaymentCurrencyAmount value);
  external PaymentCredentialInstrument get instrument;
  external set instrument(PaymentCredentialInstrument value);
}
extension type AuthenticationExtensionsPaymentOutputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsPaymentOutputs(
      {BrowserBoundSignature browserBoundSignature});

  external BrowserBoundSignature get browserBoundSignature;
  external set browserBoundSignature(BrowserBoundSignature value);
}
extension type BrowserBoundSignature._(JSObject _) implements JSObject {
  external factory BrowserBoundSignature({required JSArrayBuffer signature});

  external JSArrayBuffer get signature;
  external set signature(JSArrayBuffer value);
}
extension type CollectedClientPaymentData._(JSObject _)
    implements CollectedClientData, JSObject {
  external factory CollectedClientPaymentData({
    required String type,
    required String challenge,
    required String origin,
    bool crossOrigin,
    String topOrigin,
    required JSObject payment,
  });

  external JSObject get payment;
  external set payment(JSObject value);
}
extension type CollectedClientAdditionalPaymentData._(JSObject _)
    implements JSObject {
  external factory CollectedClientAdditionalPaymentData({
    required String rpId,
    required String topOrigin,
    String payeeName,
    String payeeOrigin,
    JSArray<PaymentEntityLogo> paymentEntitiesLogos,
    required PaymentCurrencyAmount total,
    required PaymentCredentialInstrument instrument,
    String browserBoundPublicKey,
  });

  external String get rpId;
  external set rpId(String value);
  external String get topOrigin;
  external set topOrigin(String value);
  external String get payeeName;
  external set payeeName(String value);
  external String get payeeOrigin;
  external set payeeOrigin(String value);
  external JSArray<PaymentEntityLogo> get paymentEntitiesLogos;
  external set paymentEntitiesLogos(JSArray<PaymentEntityLogo> value);
  external PaymentCurrencyAmount get total;
  external set total(PaymentCurrencyAmount value);
  external PaymentCredentialInstrument get instrument;
  external set instrument(PaymentCredentialInstrument value);
  external String get browserBoundPublicKey;
  external set browserBoundPublicKey(String value);
}
extension type CollectedClientAdditionalPaymentRegistrationData._(JSObject _)
    implements JSObject {
  external factory CollectedClientAdditionalPaymentRegistrationData(
      {String browserBoundPublicKey});

  external String get browserBoundPublicKey;
  external set browserBoundPublicKey(String value);
}
extension type PaymentCredentialInstrument._(JSObject _) implements JSObject {
  external factory PaymentCredentialInstrument({
    required String displayName,
    required String icon,
    bool iconMustBeShown,
    String details,
  });

  external String get displayName;
  external set displayName(String value);
  external String get icon;
  external set icon(String value);
  external bool get iconMustBeShown;
  external set iconMustBeShown(bool value);
  external String get details;
  external set details(String value);
}
extension type PaymentEntityLogo._(JSObject _) implements JSObject {
  external factory PaymentEntityLogo({
    required String url,
    required String label,
  });

  external String get url;
  external set url(String value);
  external String get label;
  external set label(String value);
}
