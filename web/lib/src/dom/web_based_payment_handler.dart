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
import 'service_workers.dart';

typedef PaymentDelegation = String;

/// The **`PaymentManager`** interface of the [Payment Handler API] is used to
/// manage various aspects of payment app functionality.
///
/// It is accessed via the [ServiceWorkerRegistration.paymentManager] property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PaymentManager).
extension type PaymentManager._(JSObject _) implements JSObject {
  /// The **`enableDelegations()`** method of the [PaymentManager] interface
  /// delegates responsibility for providing various parts of the required
  /// payment information to the payment app rather than collecting it from the
  /// browser (for example, via autofill).
  ///
  /// For example, if the `requestShipping` option is set to `true` in the
  /// options object when invoking the [PaymentRequest.PaymentRequest]
  /// constructor, a shipping address will be returned.
  ///
  /// - If `enableDelegations()` was used to delegate `shippingAddress`, that
  ///   address will come from the payment app.
  /// - If not, it will come from the browser autofill.
  external JSPromise<JSAny?> enableDelegations(JSArray<JSString> delegations);

  /// The **`userHint`** property of the [PaymentManager] interface provides a
  /// hint for the browser to display along with the payment app's name and icon
  /// in the Payment Handler UI.
  external String get userHint;
  external set userHint(String value);
}

/// @AvailableInWorkers("service")
///
/// The **`CanMakePaymentEvent`** interface of the [Payment Handler API] is the
/// event object for the [ServiceWorkerGlobalScope.canmakepayment_event] event,
/// fired on a payment app's service worker to check whether it is ready to
/// handle a payment. Specifically, it is fired when the merchant website calls
/// the [PaymentRequest.PaymentRequest] constructor.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CanMakePaymentEvent).
extension type CanMakePaymentEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory CanMakePaymentEvent(String type);

  /// @AvailableInWorkers("service")
  ///
  /// The **`respondWith()`** method of the [CanMakePaymentEvent] interface
  /// enables the service worker to respond appropriately to signal whether it
  /// is ready to handle payments.
  external void respondWith(JSPromise<JSBoolean> canMakePaymentResponse);
}
extension type PaymentRequestDetailsUpdate._(JSObject _) implements JSObject {
  external factory PaymentRequestDetailsUpdate({
    String error,
    PaymentCurrencyAmount total,
    JSArray<PaymentDetailsModifier> modifiers,
    JSArray<PaymentShippingOption> shippingOptions,
    JSObject paymentMethodErrors,
    AddressErrors shippingAddressErrors,
  });

  external String get error;
  external set error(String value);
  external PaymentCurrencyAmount get total;
  external set total(PaymentCurrencyAmount value);
  external JSArray<PaymentDetailsModifier> get modifiers;
  external set modifiers(JSArray<PaymentDetailsModifier> value);
  external JSArray<PaymentShippingOption> get shippingOptions;
  external set shippingOptions(JSArray<PaymentShippingOption> value);
  external JSObject get paymentMethodErrors;
  external set paymentMethodErrors(JSObject value);
  external AddressErrors get shippingAddressErrors;
  external set shippingAddressErrors(AddressErrors value);
}

/// @AvailableInWorkers("service")
///
/// The **`PaymentRequestEvent`** interface of the [Payment Handler API] is the
/// object passed to a payment handler when a [PaymentRequest] is made.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PaymentRequestEvent).
extension type PaymentRequestEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory PaymentRequestEvent(
    String type, [
    PaymentRequestEventInit eventInitDict,
  ]);

  /// @AvailableInWorkers("service")
  ///
  /// The **`openWindow()`** method of the [PaymentRequestEvent] interface opens
  /// the specified URL in a new window, only if the given URL is on the same
  /// origin as the calling page. It returns a `Promise` that resolves with a
  /// reference to a [WindowClient].
  external JSPromise<WindowClient?> openWindow(String url);

  /// @AvailableInWorkers("service")
  ///
  /// The **`changePaymentMethod()`** method of the [PaymentRequestEvent]
  /// interface is used by the payment handler to get an updated total, given
  /// such payment method details as the billing address.
  ///
  /// When this method is invoked, a [PaymentMethodChangeEvent] is fired.
  external JSPromise<PaymentRequestDetailsUpdate?> changePaymentMethod(
    String methodName, [
    JSObject? methodDetails,
  ]);
  external JSPromise<PaymentRequestDetailsUpdate?> changeShippingAddress(
      [AddressInit shippingAddress]);
  external JSPromise<PaymentRequestDetailsUpdate?> changeShippingOption(
      String shippingOption);

  /// @AvailableInWorkers("service")
  ///
  /// The **`respondWith()`** method of the [PaymentRequestEvent] interface
  /// prevents the default event handling and allows you to provide a `Promise`
  /// for a payment handler response object yourself.
  external void respondWith(
      JSPromise<PaymentHandlerResponse> handlerResponsePromise);

  /// @AvailableInWorkers("service")
  ///
  /// The **`topOrigin`** read-only property of the
  /// [PaymentRequestEvent] interface returns the top-level payee origin where
  /// the [PaymentRequest] object was initialized.
  external String get topOrigin;

  /// @AvailableInWorkers("service")
  ///
  /// The **`paymentRequestOrigin`** read-only property of the
  /// [PaymentRequestEvent] interface returns the origin where the
  /// [PaymentRequest] object was initialized.
  external String get paymentRequestOrigin;

  /// @AvailableInWorkers("service")
  ///
  /// The **`paymentRequestId`** read-only property of the
  /// [PaymentRequestEvent] interface returns the ID of the
  /// [PaymentRequest] object.
  external String get paymentRequestId;

  /// @AvailableInWorkers("service")
  ///
  /// The **`methodData`** read-only property of the
  /// [PaymentRequestEvent] interface returns an array of
  /// `PaymentMethodData` objects containing payment method identifiers for the
  /// payment methods that the website accepts and any associated payment
  /// method-specific
  /// data.
  external JSArray<PaymentMethodData> get methodData;

  /// @AvailableInWorkers("service")
  ///
  /// The **`total`** read-only property of the [PaymentRequestEvent] interface
  /// returns a
  /// `PaymentCurrencyAmount` object containing the total amount being requested
  /// for payment.
  external JSObject get total;

  /// @AvailableInWorkers("service")
  ///
  /// The **`modifiers`** read-only property of the
  /// [PaymentRequestEvent] interface returns an `Array` of
  /// `PaymentDetailsModifier` objects containing modifiers for payment details.
  external JSArray<PaymentDetailsModifier> get modifiers;
  external JSObject? get paymentOptions;
  external JSArray<PaymentShippingOption>? get shippingOptions;
}
extension type PaymentRequestEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory PaymentRequestEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    String topOrigin,
    String paymentRequestOrigin,
    String paymentRequestId,
    JSArray<PaymentMethodData> methodData,
    PaymentCurrencyAmount total,
    JSArray<PaymentDetailsModifier> modifiers,
    PaymentOptions paymentOptions,
    JSArray<PaymentShippingOption> shippingOptions,
  });

  external String get topOrigin;
  external set topOrigin(String value);
  external String get paymentRequestOrigin;
  external set paymentRequestOrigin(String value);
  external String get paymentRequestId;
  external set paymentRequestId(String value);
  external JSArray<PaymentMethodData> get methodData;
  external set methodData(JSArray<PaymentMethodData> value);
  external PaymentCurrencyAmount get total;
  external set total(PaymentCurrencyAmount value);
  external JSArray<PaymentDetailsModifier> get modifiers;
  external set modifiers(JSArray<PaymentDetailsModifier> value);
  external PaymentOptions get paymentOptions;
  external set paymentOptions(PaymentOptions value);
  external JSArray<PaymentShippingOption> get shippingOptions;
  external set shippingOptions(JSArray<PaymentShippingOption> value);
}
extension type PaymentHandlerResponse._(JSObject _) implements JSObject {
  external factory PaymentHandlerResponse({
    String methodName,
    JSObject details,
    String? payerName,
    String? payerEmail,
    String? payerPhone,
    AddressInit shippingAddress,
    String? shippingOption,
  });

  external String get methodName;
  external set methodName(String value);
  external JSObject get details;
  external set details(JSObject value);
  external String? get payerName;
  external set payerName(String? value);
  external String? get payerEmail;
  external set payerEmail(String? value);
  external String? get payerPhone;
  external set payerPhone(String? value);
  external AddressInit get shippingAddress;
  external set shippingAddress(AddressInit value);
  external String? get shippingOption;
  external set shippingOption(String? value);
}
extension type AddressInit._(JSObject _) implements JSObject {
  external factory AddressInit({
    String country,
    JSArray<JSString> addressLine,
    String region,
    String city,
    String dependentLocality,
    String postalCode,
    String sortingCode,
    String organization,
    String recipient,
    String phone,
  });

  external String get country;
  external set country(String value);
  external JSArray<JSString> get addressLine;
  external set addressLine(JSArray<JSString> value);
  external String get region;
  external set region(String value);
  external String get city;
  external set city(String value);
  external String get dependentLocality;
  external set dependentLocality(String value);
  external String get postalCode;
  external set postalCode(String value);
  external String get sortingCode;
  external set sortingCode(String value);
  external String get organization;
  external set organization(String value);
  external String get recipient;
  external set recipient(String value);
  external String get phone;
  external set phone(String value);
}
