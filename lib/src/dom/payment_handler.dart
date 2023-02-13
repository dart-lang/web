// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef PaymentDelegation = JSString;
typedef PaymentShippingType = JSString;

@JS('PaymentManager')
@staticInterop
class PaymentManager {
  external factory PaymentManager();
}

extension PaymentManagerExtension on PaymentManager {
  external JSString get userHint;
  external set userHint(JSString value);
  external JSPromise enableDelegations(JSArray delegations);
}

@JS('CanMakePaymentEvent')
@staticInterop
class CanMakePaymentEvent extends ExtendableEvent {
  external factory CanMakePaymentEvent();
  external factory CanMakePaymentEvent.a1(JSString type);
}

extension CanMakePaymentEventExtension on CanMakePaymentEvent {
  external JSUndefined respondWith(JSPromise canMakePaymentResponse);
}

@JS('PaymentRequestDetailsUpdate')
@staticInterop
class PaymentRequestDetailsUpdate {
  external factory PaymentRequestDetailsUpdate();
}

extension PaymentRequestDetailsUpdateExtension on PaymentRequestDetailsUpdate {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PaymentRequestEvent')
@staticInterop
class PaymentRequestEvent extends ExtendableEvent {
  external factory PaymentRequestEvent();
  external factory PaymentRequestEvent.a1(JSString type);
  external factory PaymentRequestEvent.a1_1(
      JSString type, PaymentRequestEventInit eventInitDict);
}

extension PaymentRequestEventExtension on PaymentRequestEvent {
  external JSString get topOrigin;
  external JSString get paymentRequestOrigin;
  external JSString get paymentRequestId;
  external JSArray get methodData;
  external JSObject get total;
  external JSArray get modifiers;
  external JSObject? get paymentOptions;
  external JSArray? get shippingOptions;
  external JSPromise openWindow(JSString url);
  external JSPromise changePaymentMethod(JSString methodName);
  external JSPromise changePaymentMethod_1(
      JSString methodName, JSObject? methodDetails);
  external JSPromise changeShippingAddress();
  external JSPromise changeShippingAddress_1(AddressInit shippingAddress);
  external JSPromise changeShippingOption(JSString shippingOption);
  external JSUndefined respondWith(JSPromise handlerResponsePromise);
}

@JS('PaymentRequestEventInit')
@staticInterop
class PaymentRequestEventInit extends ExtendableEventInit {
  external factory PaymentRequestEventInit();
}

extension PaymentRequestEventInitExtension on PaymentRequestEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PaymentHandlerResponse')
@staticInterop
class PaymentHandlerResponse {
  external factory PaymentHandlerResponse();
}

extension PaymentHandlerResponseExtension on PaymentHandlerResponse {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AddressInit')
@staticInterop
class AddressInit {
  external factory AddressInit();
}

extension AddressInitExtension on AddressInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PaymentOptions')
@staticInterop
class PaymentOptions {
  external factory PaymentOptions();
}

extension PaymentOptionsExtension on PaymentOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PaymentShippingOption')
@staticInterop
class PaymentShippingOption {
  external factory PaymentShippingOption();
}

extension PaymentShippingOptionExtension on PaymentShippingOption {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AddressErrors')
@staticInterop
class AddressErrors {
  external factory AddressErrors();
}

extension AddressErrorsExtension on AddressErrors {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}
