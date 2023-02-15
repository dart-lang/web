// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'webauthn.dart';

@JS('SecurePaymentConfirmationRequest')
@staticInterop
class SecurePaymentConfirmationRequest {
  external factory SecurePaymentConfirmationRequest();
}

extension SecurePaymentConfirmationRequestExtension
    on SecurePaymentConfirmationRequest {}

@JS('AuthenticationExtensionsPaymentInputs')
@staticInterop
class AuthenticationExtensionsPaymentInputs {
  external factory AuthenticationExtensionsPaymentInputs();
}

extension AuthenticationExtensionsPaymentInputsExtension
    on AuthenticationExtensionsPaymentInputs {}

@JS('CollectedClientPaymentData')
@staticInterop
class CollectedClientPaymentData extends CollectedClientData {
  external factory CollectedClientPaymentData();
}

extension CollectedClientPaymentDataExtension on CollectedClientPaymentData {}

@JS('CollectedClientAdditionalPaymentData')
@staticInterop
class CollectedClientAdditionalPaymentData {
  external factory CollectedClientAdditionalPaymentData();
}

extension CollectedClientAdditionalPaymentDataExtension
    on CollectedClientAdditionalPaymentData {}

@JS('PaymentCredentialInstrument')
@staticInterop
class PaymentCredentialInstrument {
  external factory PaymentCredentialInstrument();
}

extension PaymentCredentialInstrumentExtension on PaymentCredentialInstrument {}
