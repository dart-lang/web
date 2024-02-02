// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

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

  external set itemId(String value);
  external String get itemId;
  external set title(String value);
  external String get title;
  external set price(PaymentCurrencyAmount value);
  external PaymentCurrencyAmount get price;
  external set type(ItemType value);
  external ItemType get type;
  external set description(String value);
  external String get description;
  external set iconURLs(JSArray<JSString> value);
  external JSArray<JSString> get iconURLs;
  external set subscriptionPeriod(String value);
  external String get subscriptionPeriod;
  external set freeTrialPeriod(String value);
  external String get freeTrialPeriod;
  external set introductoryPrice(PaymentCurrencyAmount value);
  external PaymentCurrencyAmount get introductoryPrice;
  external set introductoryPricePeriod(String value);
  external String get introductoryPricePeriod;
  external set introductoryPriceCycles(int value);
  external int get introductoryPriceCycles;
}
extension type PurchaseDetails._(JSObject _) implements JSObject {
  external factory PurchaseDetails({
    required String itemId,
    required String purchaseToken,
  });

  external set itemId(String value);
  external String get itemId;
  external set purchaseToken(String value);
  external String get purchaseToken;
}
