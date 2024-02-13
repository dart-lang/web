// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef PaymentComplete = String;

/// The [Payment Request API's](/en-US/docs/Web/API/Payment_Request_API)
/// **`PaymentRequest`** interface is the primary access point into the API, and
/// lets web content and apps accept payments from the end user on behalf of the
/// operator of the site or the publisher of the app.
extension type PaymentRequest._(JSObject _) implements EventTarget, JSObject {
  external factory PaymentRequest(
    JSArray<PaymentMethodData> methodData,
    PaymentDetailsInit details,
  );

  /// The **[PaymentRequest]** interface's
  /// **`show()`** method instructs the user agent to begin the
  /// process of showing and handling the user interface for the payment request
  /// to the
  /// user.
  ///
  /// Only one payment request can be in the process of being handled at once,
  /// across all
  /// documents. Once one `PaymentRequest`'s `show()` method has been
  /// called, any other call to `show()` will by rejected with an
  /// `AbortError` until the returned promise has been concluded, either by
  /// being
  /// fulfilled with a [PaymentResponse] indicating the results of the payment
  /// request, or by being rejected with an error.
  ///
  /// > **Note:** In reality, despite the fact that the specification says this
  /// > can't be done, some browsers, including Firefox, support multiple active
  /// > payment
  /// > requests at a time.
  ///
  /// If your architecture doesn't necessarily have all of the data ready to go
  /// at the moment
  /// it instantiates the payment interface by calling `show()`, specify the
  /// `detailsPromise` parameter, providing a `Promise` that is
  /// fulfilled once the data is ready. If this is provided, `show()` will not
  /// allow the user to interact with the payment interface until the promise is
  /// fulfilled, so
  /// that data can be updated prior to the user engaging with the payment
  /// process.
  ///
  /// Processing the result and, if necessary, calling [PaymentResponse.retry]
  /// to retry a failed payment can all be done either asynchronously or
  /// synchronously,
  /// depending on your needs. For the best user experience, asynchronous
  /// solutions are
  /// typically the best way to go. Most examples on MDN and elsewhere use
  /// [`async`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function)/[`await`](/en-US/docs/Web/JavaScript/Reference/Operators/await)
  /// to wait asynchronously while results are validated and so forth.
  external JSPromise<PaymentResponse> show(
      [JSPromise<PaymentDetailsUpdate> detailsPromise]);

  /// The `PaymentRequest.abort()` method of the [PaymentRequest]
  /// interface causes the user agent to end the payment request and to remove
  /// any user
  /// interface that might be shown.
  external JSPromise<JSAny?> abort();

  /// The [PaymentRequest] method
  /// **`canMakePayment()`** determines whether or not the request
  /// is configured in a way that is compatible with at least one payment method
  /// supported
  /// by the .
  ///
  /// You can call this before calling
  /// [PaymentRequest.show] to provide a streamlined user experience
  /// when the user's browser can't handle any of the payment methods you
  /// accept.
  ///
  /// For instance, you might call `canMakePayment()` to determine if the
  /// browser
  /// will let the user pay using Payment Request API, and if it won't, you
  /// could fall back to
  /// another payment method, or offer a list of methods that aren't handled by
  /// Payment
  /// Request API (or even provide instructions for paying by mail or by phone).
  external JSPromise<JSBoolean> canMakePayment();
  external String get id;
  external set onpaymentmethodchange(EventHandler value);
  external EventHandler get onpaymentmethodchange;
}
extension type PaymentMethodData._(JSObject _) implements JSObject {
  external factory PaymentMethodData({
    required String supportedMethods,
    JSObject data,
  });

  external set supportedMethods(String value);
  external String get supportedMethods;
  external set data(JSObject value);
  external JSObject get data;
}
extension type PaymentCurrencyAmount._(JSObject _) implements JSObject {
  external factory PaymentCurrencyAmount({
    required String currency,
    required String value,
  });

  external set currency(String value);
  external String get currency;
  external set value(String value);
  external String get value;
}
extension type PaymentDetailsBase._(JSObject _) implements JSObject {
  external factory PaymentDetailsBase({
    JSArray<PaymentItem> displayItems,
    JSArray<PaymentDetailsModifier> modifiers,
  });

  external set displayItems(JSArray<PaymentItem> value);
  external JSArray<PaymentItem> get displayItems;
  external set modifiers(JSArray<PaymentDetailsModifier> value);
  external JSArray<PaymentDetailsModifier> get modifiers;
}
extension type PaymentDetailsInit._(JSObject _)
    implements PaymentDetailsBase, JSObject {
  external factory PaymentDetailsInit({
    String id,
    required PaymentItem total,
  });

  external set id(String value);
  external String get id;
  external set total(PaymentItem value);
  external PaymentItem get total;
}
extension type PaymentDetailsUpdate._(JSObject _)
    implements PaymentDetailsBase, JSObject {
  external factory PaymentDetailsUpdate({
    PaymentItem total,
    JSObject paymentMethodErrors,
  });

  external set total(PaymentItem value);
  external PaymentItem get total;
  external set paymentMethodErrors(JSObject value);
  external JSObject get paymentMethodErrors;
}
extension type PaymentDetailsModifier._(JSObject _) implements JSObject {
  external factory PaymentDetailsModifier({
    required String supportedMethods,
    PaymentItem total,
    JSArray<PaymentItem> additionalDisplayItems,
    JSObject data,
  });

  external set supportedMethods(String value);
  external String get supportedMethods;
  external set total(PaymentItem value);
  external PaymentItem get total;
  external set additionalDisplayItems(JSArray<PaymentItem> value);
  external JSArray<PaymentItem> get additionalDisplayItems;
  external set data(JSObject value);
  external JSObject get data;
}
extension type PaymentItem._(JSObject _) implements JSObject {
  external factory PaymentItem({
    required String label,
    required PaymentCurrencyAmount amount,
    bool pending,
  });

  external set label(String value);
  external String get label;
  external set amount(PaymentCurrencyAmount value);
  external PaymentCurrencyAmount get amount;
  external set pending(bool value);
  external bool get pending;
}
extension type PaymentCompleteDetails._(JSObject _) implements JSObject {
  external factory PaymentCompleteDetails({JSObject? data});

  external set data(JSObject? value);
  external JSObject? get data;
}

/// The **`PaymentResponse`** interface of the
/// [Payment Request API](https://developer.mozilla.org/en-US/docs/Web/API/Payment_Request_API)
/// is returned after a user selects a payment method and approves a payment
/// request.
extension type PaymentResponse._(JSObject _) implements EventTarget, JSObject {
  /// The **`toJSON()`** method of the [PaymentResponse] interface is a ; it
  /// returns a JSON representation of the [PaymentResponse] object.
  external JSObject toJSON();

  /// The [PaymentRequest] method
  /// **`complete()`** of the
  /// [Payment Request API](https://developer.mozilla.org/en-US/docs/Web/API/Payment_Request_API)
  /// notifies the
  /// that the user interaction is over, and causes any remaining
  /// user interface to be closed.
  ///
  /// This method must be called after the user accepts
  /// the payment request and the `Promise` returned by the
  /// [PaymentRequest.show] method is resolved.
  external JSPromise<JSAny?> complete([
    PaymentComplete result,
    PaymentCompleteDetails details,
  ]);

  /// The [PaymentResponse] interface's
  /// **`retry()`** method makes it possible to ask the user to
  /// retry a payment after an error occurs during processing.
  ///
  /// This lets your app
  /// gracefully deal with situations such as invalid shipping addresses or
  /// declined credit
  /// cards.
  external JSPromise<JSAny?> retry([PaymentValidationErrors errorFields]);
  external String get requestId;
  external String get methodName;
  external JSObject get details;
}
extension type PaymentValidationErrors._(JSObject _) implements JSObject {
  external factory PaymentValidationErrors({
    String error,
    JSObject paymentMethod,
  });

  external set error(String value);
  external String get error;
  external set paymentMethod(JSObject value);
  external JSObject get paymentMethod;
}

/// The **`PaymentMethodChangeEvent`** interface of the
/// [Payment Request API](https://developer.mozilla.org/en-US/docs/Web/API/Payment_Request_API)
/// describes the [PaymentRequest/paymentmethodchange_event] event which is
/// fired by some payment handlers when the user switches payment instruments
/// (e.g., a user selects a "store" card to make a purchase while using Apple
/// Pay).
extension type PaymentMethodChangeEvent._(JSObject _)
    implements PaymentRequestUpdateEvent, JSObject {
  external factory PaymentMethodChangeEvent(
    String type, [
    PaymentMethodChangeEventInit eventInitDict,
  ]);

  external String get methodName;
  external JSObject? get methodDetails;
}
extension type PaymentMethodChangeEventInit._(JSObject _)
    implements PaymentRequestUpdateEventInit, JSObject {
  external factory PaymentMethodChangeEventInit({
    String methodName,
    JSObject? methodDetails,
  });

  external set methodName(String value);
  external String get methodName;
  external set methodDetails(JSObject? value);
  external JSObject? get methodDetails;
}

/// The **`PaymentRequestUpdateEvent`** interface is used for events sent to a
/// [PaymentRequest] instance when changes are made to shipping-related
/// information for a pending [PaymentRequest]. Those events are:
///
/// - [PaymentRequest.shippingaddresschange_event]
///   - : Dispatched whenever the user changes their shipping address.
/// - [PaymentRequest.shippingoptionchange_event]
///   - : Dispatched whenever the user changes a shipping option.
extension type PaymentRequestUpdateEvent._(JSObject _)
    implements Event, JSObject {
  external factory PaymentRequestUpdateEvent(
    String type, [
    PaymentRequestUpdateEventInit eventInitDict,
  ]);

  /// The **`updateWith()`** method of the
  /// [PaymentRequestUpdateEvent] interface updates the details of an existing
  /// [PaymentRequest].
  external void updateWith(JSPromise<PaymentDetailsUpdate> detailsPromise);
}
extension type PaymentRequestUpdateEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PaymentRequestUpdateEventInit();
}
