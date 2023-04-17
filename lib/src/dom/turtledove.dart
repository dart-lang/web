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
    required JSString renderURL,
    JSAny metadata,
  });
}

extension AuctionAdExtension on AuctionAd {
  external set renderURL(JSString value);
  external JSString get renderURL;
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
    JSString biddingLogicURL,
    JSString biddingWasmHelperURL,
    JSString dailyUpdateURL,
    JSString trustedBiddingSignalsURL,
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
  external set biddingLogicURL(JSString value);
  external JSString get biddingLogicURL;
  external set biddingWasmHelperURL(JSString value);
  external JSString get biddingWasmHelperURL;
  external set dailyUpdateURL(JSString value);
  external JSString get dailyUpdateURL;
  external set trustedBiddingSignalsURL(JSString value);
  external JSString get trustedBiddingSignalsURL;
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
class AuctionAdInterestGroupKey {
  external factory AuctionAdInterestGroupKey({
    required JSString owner,
    required JSString name,
  });
}

extension AuctionAdInterestGroupKeyExtension on AuctionAdInterestGroupKey {
  external set owner(JSString value);
  external JSString get owner;
  external set name(JSString value);
  external JSString get name;
}

@JS()
@staticInterop
@anonymous
class AuctionAdConfig {
  external factory AuctionAdConfig({
    required JSString seller,
    required JSString decisionLogicURL,
    JSString trustedScoringSignalsURL,
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
  external set decisionLogicURL(JSString value);
  external JSString get decisionLogicURL;
  external set trustedScoringSignalsURL(JSString value);
  external JSString get trustedScoringSignalsURL;
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

@JS('InterestGroupBiddingScriptRunnerGlobalScope')
@staticInterop
class InterestGroupBiddingScriptRunnerGlobalScope {}

extension InterestGroupBiddingScriptRunnerGlobalScopeExtension
    on InterestGroupBiddingScriptRunnerGlobalScope {
  external JSBoolean setBid([GenerateBidOutput generateBidOutput]);
  external JSVoid setPriority(JSNumber priority);
  external JSVoid setPrioritySignalsOverride(
    JSString key,
    JSNumber priority,
  );
}

@JS('InterestGroupScoringScriptRunnerGlobalScope')
@staticInterop
class InterestGroupScoringScriptRunnerGlobalScope {}

@JS('InterestGroupReportingScriptRunnerGlobalScope')
@staticInterop
class InterestGroupReportingScriptRunnerGlobalScope {}

extension InterestGroupReportingScriptRunnerGlobalScopeExtension
    on InterestGroupReportingScriptRunnerGlobalScope {
  external JSVoid sendReportTo(JSString url);
}

@JS()
@staticInterop
@anonymous
class AdRender {
  external factory AdRender({
    required JSString url,
    required JSString width,
    required JSString height,
  });
}

extension AdRenderExtension on AdRender {
  external set url(JSString value);
  external JSString get url;
  external set width(JSString value);
  external JSString get width;
  external set height(JSString value);
  external JSString get height;
}

@JS()
@staticInterop
@anonymous
class GenerateBidOutput {
  external factory GenerateBidOutput({
    required JSNumber bid,
    required JSAny adRender,
    JSString ad,
    JSArray adComponents,
    JSNumber adCost,
    JSNumber modelingSignals,
    JSBoolean allowComponentAuction,
  });
}

extension GenerateBidOutputExtension on GenerateBidOutput {
  external set bid(JSNumber value);
  external JSNumber get bid;
  external set adRender(JSAny value);
  external JSAny get adRender;
  external set ad(JSString value);
  external JSString get ad;
  external set adComponents(JSArray value);
  external JSArray get adComponents;
  external set adCost(JSNumber value);
  external JSNumber get adCost;
  external set modelingSignals(JSNumber value);
  external JSNumber get modelingSignals;
  external set allowComponentAuction(JSBoolean value);
  external JSBoolean get allowComponentAuction;
}
