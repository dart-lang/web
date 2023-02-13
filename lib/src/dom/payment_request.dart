// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef PaymentComplete = JSString;

@JS('PaymentRequest')
@staticInterop
class PaymentRequest extends EventTarget {
  external factory PaymentRequest();
  external factory PaymentRequest.a1(
      JSArray methodData, PaymentDetailsInit details);
}

extension PaymentRequestExtension on PaymentRequest {
  external JSPromise show();
  external JSPromise show_1(JSPromise detailsPromise);
  external JSPromise abort();
  external JSPromise canMakePayment();
  external JSString get id;
  external EventHandler get onpaymentmethodchange;
  external set onpaymentmethodchange(EventHandler value);
}

@JS('PaymentMethodData')
@staticInterop
class PaymentMethodData {
  external factory PaymentMethodData();
}

extension PaymentMethodDataExtension on PaymentMethodData {
  // TODO
  // TODO
}

@JS('PaymentCurrencyAmount')
@staticInterop
class PaymentCurrencyAmount {
  external factory PaymentCurrencyAmount();
}

extension PaymentCurrencyAmountExtension on PaymentCurrencyAmount {
  // TODO
  // TODO
}

@JS('PaymentDetailsBase')
@staticInterop
class PaymentDetailsBase {
  external factory PaymentDetailsBase();
}

extension PaymentDetailsBaseExtension on PaymentDetailsBase {
  // TODO
  // TODO
}

@JS('PaymentDetailsInit')
@staticInterop
class PaymentDetailsInit extends PaymentDetailsBase {
  external factory PaymentDetailsInit();
}

extension PaymentDetailsInitExtension on PaymentDetailsInit {
  // TODO
  // TODO
}

@JS('PaymentDetailsUpdate')
@staticInterop
class PaymentDetailsUpdate extends PaymentDetailsBase {
  external factory PaymentDetailsUpdate();
}

extension PaymentDetailsUpdateExtension on PaymentDetailsUpdate {
  // TODO
  // TODO
}

@JS('PaymentDetailsModifier')
@staticInterop
class PaymentDetailsModifier {
  external factory PaymentDetailsModifier();
}

extension PaymentDetailsModifierExtension on PaymentDetailsModifier {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PaymentItem')
@staticInterop
class PaymentItem {
  external factory PaymentItem();
}

extension PaymentItemExtension on PaymentItem {
  // TODO
  // TODO
  // TODO
}

@JS('PaymentCompleteDetails')
@staticInterop
class PaymentCompleteDetails {
  external factory PaymentCompleteDetails();
}

extension PaymentCompleteDetailsExtension on PaymentCompleteDetails {
  // TODO
}

@JS('PaymentResponse')
@staticInterop
class PaymentResponse extends EventTarget {
  external factory PaymentResponse();
}

extension PaymentResponseExtension on PaymentResponse {
  external JSObject toJSON();
  external JSString get requestId;
  external JSString get methodName;
  external JSObject get details;
  external JSPromise complete();
  external JSPromise complete_1(PaymentComplete result);
  external JSPromise complete_2(
      PaymentComplete result, PaymentCompleteDetails details);
  external JSPromise retry();
  external JSPromise retry_1(PaymentValidationErrors errorFields);
}

@JS('PaymentValidationErrors')
@staticInterop
class PaymentValidationErrors {
  external factory PaymentValidationErrors();
}

extension PaymentValidationErrorsExtension on PaymentValidationErrors {
  // TODO
  // TODO
}

@JS('PaymentMethodChangeEvent')
@staticInterop
class PaymentMethodChangeEvent extends PaymentRequestUpdateEvent {
  external factory PaymentMethodChangeEvent();
  external factory PaymentMethodChangeEvent.a1(JSString type);
  external factory PaymentMethodChangeEvent.a1_1(
      JSString type, PaymentMethodChangeEventInit eventInitDict);
}

extension PaymentMethodChangeEventExtension on PaymentMethodChangeEvent {
  external JSString get methodName;
  external JSObject? get methodDetails;
}

@JS('PaymentMethodChangeEventInit')
@staticInterop
class PaymentMethodChangeEventInit extends PaymentRequestUpdateEventInit {
  external factory PaymentMethodChangeEventInit();
}

extension PaymentMethodChangeEventInitExtension
    on PaymentMethodChangeEventInit {
  // TODO
  // TODO
}

@JS('PaymentRequestUpdateEvent')
@staticInterop
class PaymentRequestUpdateEvent extends Event {
  external factory PaymentRequestUpdateEvent();
  external factory PaymentRequestUpdateEvent.a1(JSString type);
  external factory PaymentRequestUpdateEvent.a1_1(
      JSString type, PaymentRequestUpdateEventInit eventInitDict);
}

extension PaymentRequestUpdateEventExtension on PaymentRequestUpdateEvent {
  external JSUndefined updateWith(JSPromise detailsPromise);
}

@JS('PaymentRequestUpdateEventInit')
@staticInterop
class PaymentRequestUpdateEventInit extends EventInit {
  external factory PaymentRequestUpdateEventInit();
}
