// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'payment_request.dart';
import 'service_workers.dart';

typedef PaymentDelegation = JSString;
typedef PaymentShippingType = JSString;

@JS('PaymentManager')
@staticInterop
class PaymentManager implements JSObject {}

extension PaymentManagerExtension on PaymentManager {
  external JSPromise enableDelegations(JSArray delegations);
  external set userHint(JSString value);
  external JSString get userHint;
}

@JS('CanMakePaymentEvent')
@staticInterop
class CanMakePaymentEvent implements ExtendableEvent {
  external factory CanMakePaymentEvent(JSString type);
}

extension CanMakePaymentEventExtension on CanMakePaymentEvent {
  external JSVoid respondWith(JSPromise canMakePaymentResponse);
}

@JS()
@staticInterop
@anonymous
class PaymentRequestDetailsUpdate implements JSObject {
  external factory PaymentRequestDetailsUpdate({
    JSString error,
    PaymentCurrencyAmount total,
    JSArray modifiers,
    JSArray shippingOptions,
    JSObject paymentMethodErrors,
    AddressErrors shippingAddressErrors,
  });
}

extension PaymentRequestDetailsUpdateExtension on PaymentRequestDetailsUpdate {
  external set error(JSString value);
  external JSString get error;
  external set total(PaymentCurrencyAmount value);
  external PaymentCurrencyAmount get total;
  external set modifiers(JSArray value);
  external JSArray get modifiers;
  external set shippingOptions(JSArray value);
  external JSArray get shippingOptions;
  external set paymentMethodErrors(JSObject value);
  external JSObject get paymentMethodErrors;
  external set shippingAddressErrors(AddressErrors value);
  external AddressErrors get shippingAddressErrors;
}

@JS('PaymentRequestEvent')
@staticInterop
class PaymentRequestEvent implements ExtendableEvent {
  external factory PaymentRequestEvent(
    JSString type, [
    PaymentRequestEventInit eventInitDict,
  ]);
}

extension PaymentRequestEventExtension on PaymentRequestEvent {
  external JSPromise openWindow(JSString url);
  external JSPromise changePaymentMethod(
    JSString methodName, [
    JSObject? methodDetails,
  ]);
  external JSPromise changeShippingAddress([AddressInit shippingAddress]);
  external JSPromise changeShippingOption(JSString shippingOption);
  external JSVoid respondWith(JSPromise handlerResponsePromise);
  external JSString get topOrigin;
  external JSString get paymentRequestOrigin;
  external JSString get paymentRequestId;
  external JSArray get methodData;
  external JSObject get total;
  external JSArray get modifiers;
  external JSObject? get paymentOptions;
  external JSArray? get shippingOptions;
}

@JS()
@staticInterop
@anonymous
class PaymentRequestEventInit implements ExtendableEventInit {
  external factory PaymentRequestEventInit({
    JSString topOrigin,
    JSString paymentRequestOrigin,
    JSString paymentRequestId,
    JSArray methodData,
    PaymentCurrencyAmount total,
    JSArray modifiers,
    PaymentOptions paymentOptions,
    JSArray shippingOptions,
  });
}

extension PaymentRequestEventInitExtension on PaymentRequestEventInit {
  external set topOrigin(JSString value);
  external JSString get topOrigin;
  external set paymentRequestOrigin(JSString value);
  external JSString get paymentRequestOrigin;
  external set paymentRequestId(JSString value);
  external JSString get paymentRequestId;
  external set methodData(JSArray value);
  external JSArray get methodData;
  external set total(PaymentCurrencyAmount value);
  external PaymentCurrencyAmount get total;
  external set modifiers(JSArray value);
  external JSArray get modifiers;
  external set paymentOptions(PaymentOptions value);
  external PaymentOptions get paymentOptions;
  external set shippingOptions(JSArray value);
  external JSArray get shippingOptions;
}

@JS()
@staticInterop
@anonymous
class PaymentHandlerResponse implements JSObject {
  external factory PaymentHandlerResponse({
    JSString methodName,
    JSObject details,
    JSString? payerName,
    JSString? payerEmail,
    JSString? payerPhone,
    AddressInit shippingAddress,
    JSString? shippingOption,
  });
}

extension PaymentHandlerResponseExtension on PaymentHandlerResponse {
  external set methodName(JSString value);
  external JSString get methodName;
  external set details(JSObject value);
  external JSObject get details;
  external set payerName(JSString? value);
  external JSString? get payerName;
  external set payerEmail(JSString? value);
  external JSString? get payerEmail;
  external set payerPhone(JSString? value);
  external JSString? get payerPhone;
  external set shippingAddress(AddressInit value);
  external AddressInit get shippingAddress;
  external set shippingOption(JSString? value);
  external JSString? get shippingOption;
}

@JS()
@staticInterop
@anonymous
class AddressInit implements JSObject {
  external factory AddressInit({
    JSString country,
    JSArray addressLine,
    JSString region,
    JSString city,
    JSString dependentLocality,
    JSString postalCode,
    JSString sortingCode,
    JSString organization,
    JSString recipient,
    JSString phone,
  });
}

extension AddressInitExtension on AddressInit {
  external set country(JSString value);
  external JSString get country;
  external set addressLine(JSArray value);
  external JSArray get addressLine;
  external set region(JSString value);
  external JSString get region;
  external set city(JSString value);
  external JSString get city;
  external set dependentLocality(JSString value);
  external JSString get dependentLocality;
  external set postalCode(JSString value);
  external JSString get postalCode;
  external set sortingCode(JSString value);
  external JSString get sortingCode;
  external set organization(JSString value);
  external JSString get organization;
  external set recipient(JSString value);
  external JSString get recipient;
  external set phone(JSString value);
  external JSString get phone;
}

@JS()
@staticInterop
@anonymous
class PaymentOptions implements JSObject {
  external factory PaymentOptions({
    JSBoolean requestPayerName,
    JSBoolean requestBillingAddress,
    JSBoolean requestPayerEmail,
    JSBoolean requestPayerPhone,
    JSBoolean requestShipping,
    PaymentShippingType shippingType,
  });
}

extension PaymentOptionsExtension on PaymentOptions {
  external set requestPayerName(JSBoolean value);
  external JSBoolean get requestPayerName;
  external set requestBillingAddress(JSBoolean value);
  external JSBoolean get requestBillingAddress;
  external set requestPayerEmail(JSBoolean value);
  external JSBoolean get requestPayerEmail;
  external set requestPayerPhone(JSBoolean value);
  external JSBoolean get requestPayerPhone;
  external set requestShipping(JSBoolean value);
  external JSBoolean get requestShipping;
  external set shippingType(PaymentShippingType value);
  external PaymentShippingType get shippingType;
}

@JS()
@staticInterop
@anonymous
class PaymentShippingOption implements JSObject {
  external factory PaymentShippingOption({
    required JSString id,
    required JSString label,
    required PaymentCurrencyAmount amount,
    JSBoolean selected,
  });
}

extension PaymentShippingOptionExtension on PaymentShippingOption {
  external set id(JSString value);
  external JSString get id;
  external set label(JSString value);
  external JSString get label;
  external set amount(PaymentCurrencyAmount value);
  external PaymentCurrencyAmount get amount;
  external set selected(JSBoolean value);
  external JSBoolean get selected;
}

@JS()
@staticInterop
@anonymous
class AddressErrors implements JSObject {
  external factory AddressErrors({
    JSString addressLine,
    JSString city,
    JSString country,
    JSString dependentLocality,
    JSString organization,
    JSString phone,
    JSString postalCode,
    JSString recipient,
    JSString region,
    JSString sortingCode,
  });
}

extension AddressErrorsExtension on AddressErrors {
  external set addressLine(JSString value);
  external JSString get addressLine;
  external set city(JSString value);
  external JSString get city;
  external set country(JSString value);
  external JSString get country;
  external set dependentLocality(JSString value);
  external JSString get dependentLocality;
  external set organization(JSString value);
  external JSString get organization;
  external set phone(JSString value);
  external JSString get phone;
  external set postalCode(JSString value);
  external JSString get postalCode;
  external set recipient(JSString value);
  external JSString get recipient;
  external set region(JSString value);
  external JSString get region;
  external set sortingCode(JSString value);
  external JSString get sortingCode;
}
