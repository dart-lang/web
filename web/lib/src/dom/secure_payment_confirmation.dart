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
