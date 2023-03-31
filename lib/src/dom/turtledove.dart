// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';

@JS()
@staticInterop
@anonymous
class AuctionAd {
  external factory AuctionAd({
    required JSString renderUrl,
    JSAny metadata,
  });
}

extension AuctionAdExtension on AuctionAd {
  external set renderUrl(JSString value);
  external JSString get renderUrl;
  external set metadata(JSAny value);
  external JSAny get metadata;
}

@JS()
@staticInterop
@anonymous
class AuctionAdInterestGroup {
  external factory AuctionAdInterestGroup({
    required JSString owner,
    required JSString name,
    JSNumber priority,
    JSBoolean enableBiddingSignalsPrioritization,
    JSAny priorityVector,
    JSAny prioritySignalsOverrides,
    JSString executionMode,
    JSString biddingLogicUrl,
    JSString biddingWasmHelperUrl,
    JSString dailyUpdateUrl,
    JSString trustedBiddingSignalsUrl,
    JSArray trustedBiddingSignalsKeys,
    JSAny userBiddingSignals,
    JSArray ads,
    JSArray adComponents,
  });
}

extension AuctionAdInterestGroupExtension on AuctionAdInterestGroup {
  external set owner(JSString value);
  external JSString get owner;
  external set name(JSString value);
  external JSString get name;
  external set priority(JSNumber value);
  external JSNumber get priority;
  external set enableBiddingSignalsPrioritization(JSBoolean value);
  external JSBoolean get enableBiddingSignalsPrioritization;
  external set priorityVector(JSAny value);
  external JSAny get priorityVector;
  external set prioritySignalsOverrides(JSAny value);
  external JSAny get prioritySignalsOverrides;
  external set executionMode(JSString value);
  external JSString get executionMode;
  external set biddingLogicUrl(JSString value);
  external JSString get biddingLogicUrl;
  external set biddingWasmHelperUrl(JSString value);
  external JSString get biddingWasmHelperUrl;
  external set dailyUpdateUrl(JSString value);
  external JSString get dailyUpdateUrl;
  external set trustedBiddingSignalsUrl(JSString value);
  external JSString get trustedBiddingSignalsUrl;
  external set trustedBiddingSignalsKeys(JSArray value);
  external JSArray get trustedBiddingSignalsKeys;
  external set userBiddingSignals(JSAny value);
  external JSAny get userBiddingSignals;
  external set ads(JSArray value);
  external JSArray get ads;
  external set adComponents(JSArray value);
  external JSArray get adComponents;
}

@JS()
@staticInterop
@anonymous
class AuctionAdConfig {
  external factory AuctionAdConfig({
    required JSString seller,
    required JSString decisionLogicUrl,
    JSString trustedScoringSignalsUrl,
    JSArray interestGroupBuyers,
    JSAny auctionSignals,
    JSAny sellerSignals,
    JSString directFromSellerSignals,
    JSNumber sellerTimeout,
    JSNumber sellerExperimentGroupId,
    JSAny perBuyerSignals,
    JSAny perBuyerTimeouts,
    JSAny perBuyerGroupLimits,
    JSAny perBuyerExperimentGroupIds,
    JSAny perBuyerPrioritySignals,
    JSArray componentAuctions,
    AbortSignal? signal,
  });
}

extension AuctionAdConfigExtension on AuctionAdConfig {
  external set seller(JSString value);
  external JSString get seller;
  external set decisionLogicUrl(JSString value);
  external JSString get decisionLogicUrl;
  external set trustedScoringSignalsUrl(JSString value);
  external JSString get trustedScoringSignalsUrl;
  external set interestGroupBuyers(JSArray value);
  external JSArray get interestGroupBuyers;
  external set auctionSignals(JSAny value);
  external JSAny get auctionSignals;
  external set sellerSignals(JSAny value);
  external JSAny get sellerSignals;
  external set directFromSellerSignals(JSString value);
  external JSString get directFromSellerSignals;
  external set sellerTimeout(JSNumber value);
  external JSNumber get sellerTimeout;
  external set sellerExperimentGroupId(JSNumber value);
  external JSNumber get sellerExperimentGroupId;
  external set perBuyerSignals(JSAny value);
  external JSAny get perBuyerSignals;
  external set perBuyerTimeouts(JSAny value);
  external JSAny get perBuyerTimeouts;
  external set perBuyerGroupLimits(JSAny value);
  external JSAny get perBuyerGroupLimits;
  external set perBuyerExperimentGroupIds(JSAny value);
  external JSAny get perBuyerExperimentGroupIds;
  external set perBuyerPrioritySignals(JSAny value);
  external JSAny get perBuyerPrioritySignals;
  external set componentAuctions(JSArray value);
  external JSArray get componentAuctions;
  external set signal(AbortSignal? value);
  external AbortSignal? get signal;
}
