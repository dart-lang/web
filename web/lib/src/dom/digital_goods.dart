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

typedef ItemType = String;
extension type DigitalGoodsService._(JSObject _) implements JSObject {
  external JSPromise<JSArray<ItemDetails>> getDetails(
      JSArray<JSString> itemIds);
  external JSPromise<JSArray<PurchaseDetails>> listPurchases();
  external JSPromise<JSArray<PurchaseDetails>> listPurchaseHistory();
  external JSPromise<JSAny?> consume(String purchaseToken);
}
extension type ItemDetails._(JSObject _) implements JSObject {
  external factory ItemDetails({
    required String itemId,
    required String title,
    required PaymentCurrencyAmount price,
    ItemType type,
    String description,
    JSArray<JSString> iconURLs,
    String subscriptionPeriod,
    String freeTrialPeriod,
    PaymentCurrencyAmount introductoryPrice,
    String introductoryPricePeriod,
    int introductoryPriceCycles,
  });

  external String get itemId;
  external set itemId(String value);
  external String get title;
  external set title(String value);
  external PaymentCurrencyAmount get price;
  external set price(PaymentCurrencyAmount value);
  external ItemType get type;
  external set type(ItemType value);
  external String get description;
  external set description(String value);
  external JSArray<JSString> get iconURLs;
  external set iconURLs(JSArray<JSString> value);
  external String get subscriptionPeriod;
  external set subscriptionPeriod(String value);
  external String get freeTrialPeriod;
  external set freeTrialPeriod(String value);
  external PaymentCurrencyAmount get introductoryPrice;
  external set introductoryPrice(PaymentCurrencyAmount value);
  external String get introductoryPricePeriod;
  external set introductoryPricePeriod(String value);
  external int get introductoryPriceCycles;
  external set introductoryPriceCycles(int value);
}
extension type PurchaseDetails._(JSObject _) implements JSObject {
  external factory PurchaseDetails({
    required String itemId,
    required String purchaseToken,
  });

  external String get itemId;
  external set itemId(String value);
  external String get purchaseToken;
  external set purchaseToken(String value);
}
