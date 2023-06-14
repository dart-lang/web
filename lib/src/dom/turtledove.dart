// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';

@JS()
@staticInterop
@anonymous
class AuctionAd implements JSObject {
  external factory AuctionAd({
    required String renderURL,
    JSAny? metadata,
  });
}

extension AuctionAdExtension on AuctionAd {
  external set renderURL(String value);
  external String get renderURL;
  external set metadata(JSAny? value);
  external JSAny? get metadata;
}

@JS()
@staticInterop
@anonymous
class AuctionAdInterestGroup implements JSObject {
  external factory AuctionAdInterestGroup({
    required String owner,
    required String name,
    double priority,
    bool enableBiddingSignalsPrioritization,
    JSAny? priorityVector,
    JSAny? prioritySignalsOverrides,
    String executionMode,
    String biddingLogicURL,
    String biddingWasmHelperURL,
    String dailyUpdateURL,
    String trustedBiddingSignalsURL,
    JSArray trustedBiddingSignalsKeys,
    JSAny? userBiddingSignals,
    JSArray ads,
    JSArray adComponents,
  });
}

extension AuctionAdInterestGroupExtension on AuctionAdInterestGroup {
  external set owner(String value);
  external String get owner;
  external set name(String value);
  external String get name;
  external set priority(double value);
  external double get priority;
  external set enableBiddingSignalsPrioritization(bool value);
  external bool get enableBiddingSignalsPrioritization;
  external set priorityVector(JSAny? value);
  external JSAny? get priorityVector;
  external set prioritySignalsOverrides(JSAny? value);
  external JSAny? get prioritySignalsOverrides;
  external set executionMode(String value);
  external String get executionMode;
  external set biddingLogicURL(String value);
  external String get biddingLogicURL;
  external set biddingWasmHelperURL(String value);
  external String get biddingWasmHelperURL;
  external set dailyUpdateURL(String value);
  external String get dailyUpdateURL;
  external set trustedBiddingSignalsURL(String value);
  external String get trustedBiddingSignalsURL;
  external set trustedBiddingSignalsKeys(JSArray value);
  external JSArray get trustedBiddingSignalsKeys;
  external set userBiddingSignals(JSAny? value);
  external JSAny? get userBiddingSignals;
  external set ads(JSArray value);
  external JSArray get ads;
  external set adComponents(JSArray value);
  external JSArray get adComponents;
}

@JS()
@staticInterop
@anonymous
class AuctionAdInterestGroupKey implements JSObject {
  external factory AuctionAdInterestGroupKey({
    required String owner,
    required String name,
  });
}

extension AuctionAdInterestGroupKeyExtension on AuctionAdInterestGroupKey {
  external set owner(String value);
  external String get owner;
  external set name(String value);
  external String get name;
}

@JS()
@staticInterop
@anonymous
class AuctionAdConfig implements JSObject {
  external factory AuctionAdConfig({
    required String seller,
    required String decisionLogicURL,
    String trustedScoringSignalsURL,
    JSArray interestGroupBuyers,
    JSAny? auctionSignals,
    JSAny? sellerSignals,
    String directFromSellerSignals,
    int sellerTimeout,
    int sellerExperimentGroupId,
    JSAny? perBuyerSignals,
    JSAny? perBuyerTimeouts,
    JSAny? perBuyerGroupLimits,
    JSAny? perBuyerExperimentGroupIds,
    JSAny? perBuyerPrioritySignals,
    JSArray componentAuctions,
    AbortSignal? signal,
  });
}

extension AuctionAdConfigExtension on AuctionAdConfig {
  external set seller(String value);
  external String get seller;
  external set decisionLogicURL(String value);
  external String get decisionLogicURL;
  external set trustedScoringSignalsURL(String value);
  external String get trustedScoringSignalsURL;
  external set interestGroupBuyers(JSArray value);
  external JSArray get interestGroupBuyers;
  external set auctionSignals(JSAny? value);
  external JSAny? get auctionSignals;
  external set sellerSignals(JSAny? value);
  external JSAny? get sellerSignals;
  external set directFromSellerSignals(String value);
  external String get directFromSellerSignals;
  external set sellerTimeout(int value);
  external int get sellerTimeout;
  external set sellerExperimentGroupId(int value);
  external int get sellerExperimentGroupId;
  external set perBuyerSignals(JSAny? value);
  external JSAny? get perBuyerSignals;
  external set perBuyerTimeouts(JSAny? value);
  external JSAny? get perBuyerTimeouts;
  external set perBuyerGroupLimits(JSAny? value);
  external JSAny? get perBuyerGroupLimits;
  external set perBuyerExperimentGroupIds(JSAny? value);
  external JSAny? get perBuyerExperimentGroupIds;
  external set perBuyerPrioritySignals(JSAny? value);
  external JSAny? get perBuyerPrioritySignals;
  external set componentAuctions(JSArray value);
  external JSArray get componentAuctions;
  external set signal(AbortSignal? value);
  external AbortSignal? get signal;
}

@JS('InterestGroupScriptRunnerGlobalScope')
@staticInterop
class InterestGroupScriptRunnerGlobalScope implements JSObject {}

@JS('InterestGroupBiddingScriptRunnerGlobalScope')
@staticInterop
class InterestGroupBiddingScriptRunnerGlobalScope
    implements InterestGroupScriptRunnerGlobalScope {}

extension InterestGroupBiddingScriptRunnerGlobalScopeExtension
    on InterestGroupBiddingScriptRunnerGlobalScope {
  external bool setBid([GenerateBidOutput generateBidOutput]);
  external JSVoid setPriority(double priority);
  external JSVoid setPrioritySignalsOverride(
    String key,
    double priority,
  );
}

@JS('InterestGroupScoringScriptRunnerGlobalScope')
@staticInterop
class InterestGroupScoringScriptRunnerGlobalScope
    implements InterestGroupScriptRunnerGlobalScope {}

@JS('InterestGroupReportingScriptRunnerGlobalScope')
@staticInterop
class InterestGroupReportingScriptRunnerGlobalScope
    implements InterestGroupScriptRunnerGlobalScope {}

extension InterestGroupReportingScriptRunnerGlobalScopeExtension
    on InterestGroupReportingScriptRunnerGlobalScope {
  external JSVoid sendReportTo(String url);
}

@JS()
@staticInterop
@anonymous
class AdRender implements JSObject {
  external factory AdRender({
    required String url,
    required String width,
    required String height,
  });
}

extension AdRenderExtension on AdRender {
  external set url(String value);
  external String get url;
  external set width(String value);
  external String get width;
  external set height(String value);
  external String get height;
}

@JS()
@staticInterop
@anonymous
class GenerateBidOutput implements JSObject {
  external factory GenerateBidOutput({
    required double bid,
    required JSAny? adRender,
    JSAny? ad,
    JSArray adComponents,
    double adCost,
    double modelingSignals,
    bool allowComponentAuction,
  });
}

extension GenerateBidOutputExtension on GenerateBidOutput {
  external set bid(double value);
  external double get bid;
  external set adRender(JSAny? value);
  external JSAny? get adRender;
  external set ad(JSAny? value);
  external JSAny? get ad;
  external set adComponents(JSArray value);
  external JSArray get adComponents;
  external set adCost(double value);
  external double get adCost;
  external set modelingSignals(double value);
  external double get modelingSignals;
  external set allowComponentAuction(bool value);
  external bool get allowComponentAuction;
}
