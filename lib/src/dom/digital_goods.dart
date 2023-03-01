// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'payment_request.dart';

typedef ItemType = JSString;

@JS('DigitalGoodsService')
@staticInterop
class DigitalGoodsService {}

extension DigitalGoodsServiceExtension on DigitalGoodsService {
  external JSPromise getDetails(JSArray itemIds);
  external JSPromise listPurchases();
  external JSPromise listPurchaseHistory();
  external JSPromise consume(JSString purchaseToken);
}

@JS()
@staticInterop
@anonymous
class ItemDetails {
  external factory ItemDetails({
    required JSString itemId,
    required JSString title,
    required PaymentCurrencyAmount price,
    ItemType type,
    JSString description,
    JSArray iconURLs,
    JSString subscriptionPeriod,
    JSString freeTrialPeriod,
    PaymentCurrencyAmount introductoryPrice,
    JSString introductoryPricePeriod,
    JSNumber introductoryPriceCycles,
  });
}

extension ItemDetailsExtension on ItemDetails {
  external set itemId(JSString value);
  external JSString get itemId;
  external set title(JSString value);
  external JSString get title;
  external set price(PaymentCurrencyAmount value);
  external PaymentCurrencyAmount get price;
  external set type(ItemType value);
  external ItemType get type;
  external set description(JSString value);
  external JSString get description;
  external set iconURLs(JSArray value);
  external JSArray get iconURLs;
  external set subscriptionPeriod(JSString value);
  external JSString get subscriptionPeriod;
  external set freeTrialPeriod(JSString value);
  external JSString get freeTrialPeriod;
  external set introductoryPrice(PaymentCurrencyAmount value);
  external PaymentCurrencyAmount get introductoryPrice;
  external set introductoryPricePeriod(JSString value);
  external JSString get introductoryPricePeriod;
  external set introductoryPriceCycles(JSNumber value);
  external JSNumber get introductoryPriceCycles;
}

@JS()
@staticInterop
@anonymous
class PurchaseDetails {
  external factory PurchaseDetails({
    required JSString itemId,
    required JSString purchaseToken,
  });
}

extension PurchaseDetailsExtension on PurchaseDetails {
  external set itemId(JSString value);
  external JSString get itemId;
  external set purchaseToken(JSString value);
  external JSString get purchaseToken;
}
