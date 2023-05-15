// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'payment_request.dart';
import 'webauthn.dart';
import 'webidl.dart';

@JS()
@staticInterop
@anonymous
class SecurePaymentConfirmationRequest implements JSObject {
  external factory SecurePaymentConfirmationRequest({
    required BufferSource challenge,
    required JSString rpId,
    required JSArray credentialIds,
    required PaymentCredentialInstrument instrument,
    JSNumber timeout,
    JSString payeeName,
    JSString payeeOrigin,
    AuthenticationExtensionsClientInputs extensions,
    JSArray locale,
    JSBoolean showOptOut,
  });
}

extension SecurePaymentConfirmationRequestExtension
    on SecurePaymentConfirmationRequest {
  external set challenge(BufferSource value);
  external BufferSource get challenge;
  external set rpId(JSString value);
  external JSString get rpId;
  external set credentialIds(JSArray value);
  external JSArray get credentialIds;
  external set instrument(PaymentCredentialInstrument value);
  external PaymentCredentialInstrument get instrument;
  external set timeout(JSNumber value);
  external JSNumber get timeout;
  external set payeeName(JSString value);
  external JSString get payeeName;
  external set payeeOrigin(JSString value);
  external JSString get payeeOrigin;
  external set extensions(AuthenticationExtensionsClientInputs value);
  external AuthenticationExtensionsClientInputs get extensions;
  external set locale(JSArray value);
  external JSArray get locale;
  external set showOptOut(JSBoolean value);
  external JSBoolean get showOptOut;
}

@JS()
@staticInterop
@anonymous
class AuthenticationExtensionsPaymentInputs implements JSObject {
  external factory AuthenticationExtensionsPaymentInputs({
    JSBoolean isPayment,
    JSString rpId,
    JSString topOrigin,
    JSString payeeName,
    JSString payeeOrigin,
    PaymentCurrencyAmount total,
    PaymentCredentialInstrument instrument,
  });
}

extension AuthenticationExtensionsPaymentInputsExtension
    on AuthenticationExtensionsPaymentInputs {
  external set isPayment(JSBoolean value);
  external JSBoolean get isPayment;
  external set rpId(JSString value);
  external JSString get rpId;
  external set topOrigin(JSString value);
  external JSString get topOrigin;
  external set payeeName(JSString value);
  external JSString get payeeName;
  external set payeeOrigin(JSString value);
  external JSString get payeeOrigin;
  external set total(PaymentCurrencyAmount value);
  external PaymentCurrencyAmount get total;
  external set instrument(PaymentCredentialInstrument value);
  external PaymentCredentialInstrument get instrument;
}

@JS()
@staticInterop
@anonymous
class CollectedClientPaymentData implements CollectedClientData {
  external factory CollectedClientPaymentData(
      {required CollectedClientAdditionalPaymentData payment});
}

extension CollectedClientPaymentDataExtension on CollectedClientPaymentData {
  external set payment(CollectedClientAdditionalPaymentData value);
  external CollectedClientAdditionalPaymentData get payment;
}

@JS()
@staticInterop
@anonymous
class CollectedClientAdditionalPaymentData implements JSObject {
  external factory CollectedClientAdditionalPaymentData({
    required JSString rpId,
    required JSString topOrigin,
    JSString payeeName,
    JSString payeeOrigin,
    required PaymentCurrencyAmount total,
    required PaymentCredentialInstrument instrument,
  });
}

extension CollectedClientAdditionalPaymentDataExtension
    on CollectedClientAdditionalPaymentData {
  external set rpId(JSString value);
  external JSString get rpId;
  external set topOrigin(JSString value);
  external JSString get topOrigin;
  external set payeeName(JSString value);
  external JSString get payeeName;
  external set payeeOrigin(JSString value);
  external JSString get payeeOrigin;
  external set total(PaymentCurrencyAmount value);
  external PaymentCurrencyAmount get total;
  external set instrument(PaymentCredentialInstrument value);
  external PaymentCredentialInstrument get instrument;
}

@JS()
@staticInterop
@anonymous
class PaymentCredentialInstrument implements JSObject {
  external factory PaymentCredentialInstrument({
    required JSString displayName,
    required JSString icon,
    JSBoolean iconMustBeShown,
  });
}

extension PaymentCredentialInstrumentExtension on PaymentCredentialInstrument {
  external set displayName(JSString value);
  external JSString get displayName;
  external set icon(JSString value);
  external JSString get icon;
  external set iconMustBeShown(JSBoolean value);
  external JSBoolean get iconMustBeShown;
}
