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

import 'payment_request.dart';

extension type AuthenticationExtensionsPaymentInputs._(JSObject _)
    implements JSObject {
  external factory AuthenticationExtensionsPaymentInputs({
    bool isPayment,
    String rpId,
    String topOrigin,
    String payeeName,
    String payeeOrigin,
    PaymentCurrencyAmount total,
    PaymentCredentialInstrument instrument,
  });

  external bool get isPayment;
  external set isPayment(bool value);
  external String get rpId;
  external set rpId(String value);
  external String get topOrigin;
  external set topOrigin(String value);
  external String get payeeName;
  external set payeeName(String value);
  external String get payeeOrigin;
  external set payeeOrigin(String value);
  external PaymentCurrencyAmount get total;
  external set total(PaymentCurrencyAmount value);
  external PaymentCredentialInstrument get instrument;
  external set instrument(PaymentCredentialInstrument value);
}
extension type PaymentCredentialInstrument._(JSObject _) implements JSObject {
  external factory PaymentCredentialInstrument({
    required String displayName,
    required String icon,
    bool iconMustBeShown,
  });

  external String get displayName;
  external set displayName(String value);
  external String get icon;
  external set icon(String value);
  external bool get iconMustBeShown;
  external set iconMustBeShown(bool value);
}
