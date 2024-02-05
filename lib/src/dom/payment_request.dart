// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef PaymentComplete = String;
extension type PaymentRequest._(JSObject _) implements EventTarget, JSObject {
  external factory PaymentRequest(
    JSArray<PaymentMethodData> methodData,
    PaymentDetailsInit details,
  );

  external JSPromise<PaymentResponse> show(
      [JSPromise<PaymentDetailsUpdate> detailsPromise]);
  external JSPromise<JSAny?> abort();
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
extension type PaymentResponse._(JSObject _) implements EventTarget, JSObject {
  external JSObject toJSON();
  external JSPromise<JSAny?> complete([
    PaymentComplete result,
    PaymentCompleteDetails details,
  ]);
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
extension type PaymentRequestUpdateEvent._(JSObject _)
    implements Event, JSObject {
  external factory PaymentRequestUpdateEvent(
    String type, [
    PaymentRequestUpdateEventInit eventInitDict,
  ]);

  external void updateWith(JSPromise<PaymentDetailsUpdate> detailsPromise);
}
extension type PaymentRequestUpdateEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PaymentRequestUpdateEventInit();
}
