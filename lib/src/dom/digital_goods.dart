// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef ItemType = JSString;

@JS('DigitalGoodsService')
@staticInterop
class DigitalGoodsService {
  external factory DigitalGoodsService();
}

extension DigitalGoodsServiceExtension on DigitalGoodsService {
  external JSPromise getDetails(JSArray itemIds);
  external JSPromise listPurchases();
  external JSPromise listPurchaseHistory();
  external JSPromise consume(JSString purchaseToken);
}

@JS('ItemDetails')
@staticInterop
class ItemDetails {
  external factory ItemDetails();
}

extension ItemDetailsExtension on ItemDetails {}

@JS('PurchaseDetails')
@staticInterop
class PurchaseDetails {
  external factory PurchaseDetails();
}

extension PurchaseDetailsExtension on PurchaseDetails {}
