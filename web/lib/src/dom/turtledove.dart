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

import 'dom.dart';
import 'private_aggregation_api.dart';

typedef PreviousWinElement = JSAny;
typedef PreviousWin = JSArray<PreviousWinElement>;
typedef KAnonStatus = String;
extension type AuctionAd._(JSObject _) implements JSObject {
  external factory AuctionAd({
    required String renderURL,
    String sizeGroup,
    JSAny? metadata,
    String buyerReportingId,
    String buyerAndSellerReportingId,
    JSArray<JSString> selectableBuyerAndSellerReportingIds,
    JSArray<JSString> allowedReportingOrigins,
    String adRenderId,
    String creativeScanningMetadata,
  });

  external String get renderURL;
  external set renderURL(String value);
  external String get sizeGroup;
  external set sizeGroup(String value);
  external JSAny? get metadata;
  external set metadata(JSAny? value);
  external String get buyerReportingId;
  external set buyerReportingId(String value);
  external String get buyerAndSellerReportingId;
  external set buyerAndSellerReportingId(String value);
  external JSArray<JSString> get selectableBuyerAndSellerReportingIds;
  external set selectableBuyerAndSellerReportingIds(JSArray<JSString> value);
  external JSArray<JSString> get allowedReportingOrigins;
  external set allowedReportingOrigins(JSArray<JSString> value);
  external String get adRenderId;
  external set adRenderId(String value);
  external String get creativeScanningMetadata;
  external set creativeScanningMetadata(String value);
}
extension type AuctionAdInterestGroupSize._(JSObject _) implements JSObject {
  external factory AuctionAdInterestGroupSize({
    required String width,
    required String height,
  });

  external String get width;
  external set width(String value);
  external String get height;
  external set height(String value);
}
extension type GenerateBidInterestGroup._(JSObject _) implements JSObject {
  external factory GenerateBidInterestGroup({
    required String owner,
    required String name,
    bool enableBiddingSignalsPrioritization,
    JSObject priorityVector,
    JSObject sellerCapabilities,
    String executionMode,
    String biddingLogicURL,
    String biddingWasmHelperURL,
    String updateURL,
    String trustedBiddingSignalsURL,
    JSArray<JSString> trustedBiddingSignalsKeys,
    String trustedBiddingSignalsSlotSizeMode,
    int maxTrustedBiddingSignalsURLLength,
    String trustedBiddingSignalsCoordinator,
    JSAny? userBiddingSignals,
    JSArray<AuctionAd> ads,
    JSArray<AuctionAd> adComponents,
    JSObject adSizes,
    JSObject sizeGroups,
  });

  external String get owner;
  external set owner(String value);
  external String get name;
  external set name(String value);
  external bool get enableBiddingSignalsPrioritization;
  external set enableBiddingSignalsPrioritization(bool value);
  external JSObject get priorityVector;
  external set priorityVector(JSObject value);
  external JSObject get sellerCapabilities;
  external set sellerCapabilities(JSObject value);
  external String get executionMode;
  external set executionMode(String value);
  external String get biddingLogicURL;
  external set biddingLogicURL(String value);
  external String get biddingWasmHelperURL;
  external set biddingWasmHelperURL(String value);
  external String get updateURL;
  external set updateURL(String value);
  external String get trustedBiddingSignalsURL;
  external set trustedBiddingSignalsURL(String value);
  external JSArray<JSString> get trustedBiddingSignalsKeys;
  external set trustedBiddingSignalsKeys(JSArray<JSString> value);
  external String get trustedBiddingSignalsSlotSizeMode;
  external set trustedBiddingSignalsSlotSizeMode(String value);
  external int get maxTrustedBiddingSignalsURLLength;
  external set maxTrustedBiddingSignalsURLLength(int value);
  external String get trustedBiddingSignalsCoordinator;
  external set trustedBiddingSignalsCoordinator(String value);
  external JSAny? get userBiddingSignals;
  external set userBiddingSignals(JSAny? value);
  external JSArray<AuctionAd> get ads;
  external set ads(JSArray<AuctionAd> value);
  external JSArray<AuctionAd> get adComponents;
  external set adComponents(JSArray<AuctionAd> value);
  external JSObject get adSizes;
  external set adSizes(JSObject value);
  external JSObject get sizeGroups;
  external set sizeGroups(JSObject value);
}
extension type ProtectedAudiencePrivateAggregationConfig._(JSObject _)
    implements JSObject {
  external factory ProtectedAudiencePrivateAggregationConfig(
      {String aggregationCoordinatorOrigin});

  external String get aggregationCoordinatorOrigin;
  external set aggregationCoordinatorOrigin(String value);
}
extension type AuctionAdInterestGroup._(JSObject _)
    implements GenerateBidInterestGroup, JSObject {
  external factory AuctionAdInterestGroup({
    required String owner,
    required String name,
    bool enableBiddingSignalsPrioritization,
    JSObject priorityVector,
    JSObject sellerCapabilities,
    String executionMode,
    String biddingLogicURL,
    String biddingWasmHelperURL,
    String updateURL,
    String trustedBiddingSignalsURL,
    JSArray<JSString> trustedBiddingSignalsKeys,
    String trustedBiddingSignalsSlotSizeMode,
    int maxTrustedBiddingSignalsURLLength,
    String trustedBiddingSignalsCoordinator,
    JSAny? userBiddingSignals,
    JSArray<AuctionAd> ads,
    JSArray<AuctionAd> adComponents,
    JSObject adSizes,
    JSObject sizeGroups,
    num priority,
    JSObject prioritySignalsOverrides,
    required num lifetimeMs,
    String additionalBidKey,
    ProtectedAudiencePrivateAggregationConfig privateAggregationConfig,
  });

  external double get priority;
  external set priority(num value);
  external JSObject get prioritySignalsOverrides;
  external set prioritySignalsOverrides(JSObject value);
  external double get lifetimeMs;
  external set lifetimeMs(num value);
  external String get additionalBidKey;
  external set additionalBidKey(String value);
  external ProtectedAudiencePrivateAggregationConfig
      get privateAggregationConfig;
  external set privateAggregationConfig(
      ProtectedAudiencePrivateAggregationConfig value);
}
extension type AuctionAdInterestGroupKey._(JSObject _) implements JSObject {
  external factory AuctionAdInterestGroupKey({
    required String owner,
    required String name,
  });

  external String get owner;
  external set owner(String value);
  external String get name;
  external set name(String value);
}
extension type AuctionReportBuyersConfig._(JSObject _) implements JSObject {
  external factory AuctionReportBuyersConfig({
    required JSBigInt bucket,
    required num scale,
  });

  external JSBigInt get bucket;
  external set bucket(JSBigInt value);
  external double get scale;
  external set scale(num value);
}
extension type AuctionReportBuyerDebugModeConfig._(JSObject _)
    implements JSObject {
  external factory AuctionReportBuyerDebugModeConfig({
    bool enabled,
    JSBigInt? debugKey,
  });

  external bool get enabled;
  external set enabled(bool value);
  external JSBigInt? get debugKey;
  external set debugKey(JSBigInt? value);
}
extension type AuctionRealTimeReportingConfig._(JSObject _)
    implements JSObject {
  external factory AuctionRealTimeReportingConfig({required String type});

  external String get type;
  external set type(String value);
}
extension type AuctionAdConfig._(JSObject _) implements JSObject {
  external factory AuctionAdConfig({
    required String seller,
    required String decisionLogicURL,
    String trustedScoringSignalsURL,
    int maxTrustedScoringSignalsURLLength,
    String trustedScoringSignalsCoordinator,
    bool sendCreativeScanningMetadata,
    JSArray<JSString> interestGroupBuyers,
    JSPromise<JSAny?> auctionSignals,
    JSPromise<JSAny?> sellerSignals,
    JSPromise<JSString?> directFromSellerSignalsHeaderAdSlot,
    JSPromise<JSObject?> deprecatedRenderURLReplacements,
    int sellerTimeout,
    int sellerExperimentGroupId,
    JSPromise<JSObject?> perBuyerSignals,
    JSPromise<JSObject?> perBuyerTimeouts,
    JSPromise<JSObject?> perBuyerCumulativeTimeouts,
    int reportingTimeout,
    String sellerCurrency,
    JSPromise<JSObject?> perBuyerCurrencies,
    JSObject perBuyerMultiBidLimits,
    JSObject perBuyerGroupLimits,
    JSObject perBuyerExperimentGroupIds,
    JSObject perBuyerPrioritySignals,
    JSArray<JSBigInt> auctionReportBuyerKeys,
    JSObject auctionReportBuyers,
    AuctionReportBuyerDebugModeConfig auctionReportBuyerDebugModeConfig,
    JSArray<JSString> requiredSellerCapabilities,
    ProtectedAudiencePrivateAggregationConfig privateAggregationConfig,
    JSObject requestedSize,
    JSArray<JSObject> allSlotsRequestedSizes,
    JSPromise<JSAny?> additionalBids,
    String auctionNonce,
    AuctionRealTimeReportingConfig sellerRealTimeReportingConfig,
    JSObject perBuyerRealTimeReportingConfig,
    JSArray<AuctionAdConfig> componentAuctions,
    AbortSignal? signal,
    JSPromise<JSBoolean> resolveToConfig,
    JSPromise<JSUint8Array> serverResponse,
    String requestId,
  });

  external String get seller;
  external set seller(String value);
  external String get decisionLogicURL;
  external set decisionLogicURL(String value);
  external String get trustedScoringSignalsURL;
  external set trustedScoringSignalsURL(String value);
  external int get maxTrustedScoringSignalsURLLength;
  external set maxTrustedScoringSignalsURLLength(int value);
  external String get trustedScoringSignalsCoordinator;
  external set trustedScoringSignalsCoordinator(String value);
  external bool get sendCreativeScanningMetadata;
  external set sendCreativeScanningMetadata(bool value);
  external JSArray<JSString> get interestGroupBuyers;
  external set interestGroupBuyers(JSArray<JSString> value);
  external JSPromise<JSAny?> get auctionSignals;
  external set auctionSignals(JSPromise<JSAny?> value);
  external JSPromise<JSAny?> get sellerSignals;
  external set sellerSignals(JSPromise<JSAny?> value);
  external JSPromise<JSString?> get directFromSellerSignalsHeaderAdSlot;
  external set directFromSellerSignalsHeaderAdSlot(JSPromise<JSString?> value);
  external JSPromise<JSObject?> get deprecatedRenderURLReplacements;
  external set deprecatedRenderURLReplacements(JSPromise<JSObject?> value);
  external int get sellerTimeout;
  external set sellerTimeout(int value);
  external int get sellerExperimentGroupId;
  external set sellerExperimentGroupId(int value);
  external JSPromise<JSObject?> get perBuyerSignals;
  external set perBuyerSignals(JSPromise<JSObject?> value);
  external JSPromise<JSObject?> get perBuyerTimeouts;
  external set perBuyerTimeouts(JSPromise<JSObject?> value);
  external JSPromise<JSObject?> get perBuyerCumulativeTimeouts;
  external set perBuyerCumulativeTimeouts(JSPromise<JSObject?> value);
  external int get reportingTimeout;
  external set reportingTimeout(int value);
  external String get sellerCurrency;
  external set sellerCurrency(String value);
  external JSPromise<JSObject?> get perBuyerCurrencies;
  external set perBuyerCurrencies(JSPromise<JSObject?> value);
  external JSObject get perBuyerMultiBidLimits;
  external set perBuyerMultiBidLimits(JSObject value);
  external JSObject get perBuyerGroupLimits;
  external set perBuyerGroupLimits(JSObject value);
  external JSObject get perBuyerExperimentGroupIds;
  external set perBuyerExperimentGroupIds(JSObject value);
  external JSObject get perBuyerPrioritySignals;
  external set perBuyerPrioritySignals(JSObject value);
  external JSArray<JSBigInt> get auctionReportBuyerKeys;
  external set auctionReportBuyerKeys(JSArray<JSBigInt> value);
  external JSObject get auctionReportBuyers;
  external set auctionReportBuyers(JSObject value);
  external AuctionReportBuyerDebugModeConfig
      get auctionReportBuyerDebugModeConfig;
  external set auctionReportBuyerDebugModeConfig(
      AuctionReportBuyerDebugModeConfig value);
  external JSArray<JSString> get requiredSellerCapabilities;
  external set requiredSellerCapabilities(JSArray<JSString> value);
  external ProtectedAudiencePrivateAggregationConfig
      get privateAggregationConfig;
  external set privateAggregationConfig(
      ProtectedAudiencePrivateAggregationConfig value);
  external JSObject get requestedSize;
  external set requestedSize(JSObject value);
  external JSArray<JSObject> get allSlotsRequestedSizes;
  external set allSlotsRequestedSizes(JSArray<JSObject> value);
  external JSPromise<JSAny?> get additionalBids;
  external set additionalBids(JSPromise<JSAny?> value);
  external String get auctionNonce;
  external set auctionNonce(String value);
  external AuctionRealTimeReportingConfig get sellerRealTimeReportingConfig;
  external set sellerRealTimeReportingConfig(
      AuctionRealTimeReportingConfig value);
  external JSObject get perBuyerRealTimeReportingConfig;
  external set perBuyerRealTimeReportingConfig(JSObject value);
  external JSArray<AuctionAdConfig> get componentAuctions;
  external set componentAuctions(JSArray<AuctionAdConfig> value);
  external AbortSignal? get signal;
  external set signal(AbortSignal? value);
  external JSPromise<JSBoolean> get resolveToConfig;
  external set resolveToConfig(JSPromise<JSBoolean> value);
  external JSPromise<JSUint8Array> get serverResponse;
  external set serverResponse(JSPromise<JSUint8Array> value);
  external String get requestId;
  external set requestId(String value);
}
extension type AdAuctionPerSellerData._(JSObject _) implements JSObject {
  external factory AdAuctionPerSellerData({
    required String seller,
    JSUint8Array request,
    String error,
  });

  external String get seller;
  external set seller(String value);
  external JSUint8Array get request;
  external set request(JSUint8Array value);
  external String get error;
  external set error(String value);
}
extension type AdAuctionData._(JSObject _) implements JSObject {
  external factory AdAuctionData({
    required String requestId,
    JSUint8Array request,
    JSArray<AdAuctionPerSellerData> requests,
  });

  external String get requestId;
  external set requestId(String value);
  external JSUint8Array get request;
  external set request(JSUint8Array value);
  external JSArray<AdAuctionPerSellerData> get requests;
  external set requests(JSArray<AdAuctionPerSellerData> value);
}
extension type AdAuctionOneSeller._(JSObject _) implements JSObject {
  external factory AdAuctionOneSeller({
    required String seller,
    String coordinatorOrigin,
  });

  external String get seller;
  external set seller(String value);
  external String get coordinatorOrigin;
  external set coordinatorOrigin(String value);
}
extension type AdAuctionDataConfig._(JSObject _) implements JSObject {
  external factory AdAuctionDataConfig({
    String seller,
    String coordinatorOrigin,
    JSArray<AdAuctionOneSeller> sellers,
    int requestSize,
    JSObject perBuyerConfig,
  });

  external String get seller;
  external set seller(String value);
  external String get coordinatorOrigin;
  external set coordinatorOrigin(String value);
  external JSArray<AdAuctionOneSeller> get sellers;
  external set sellers(JSArray<AdAuctionOneSeller> value);
  external int get requestSize;
  external set requestSize(int value);
  external JSObject get perBuyerConfig;
  external set perBuyerConfig(JSObject value);
}
extension type AdAuctionDataBuyerConfig._(JSObject _) implements JSObject {
  external factory AdAuctionDataBuyerConfig({int targetSize});

  external int get targetSize;
  external set targetSize(int value);
}
extension type StorageInterestGroup._(JSObject _)
    implements AuctionAdInterestGroup, JSObject {
  external factory StorageInterestGroup({
    required String owner,
    required String name,
    bool enableBiddingSignalsPrioritization,
    JSObject priorityVector,
    JSObject sellerCapabilities,
    String executionMode,
    String biddingLogicURL,
    String biddingWasmHelperURL,
    String updateURL,
    String trustedBiddingSignalsURL,
    JSArray<JSString> trustedBiddingSignalsKeys,
    String trustedBiddingSignalsSlotSizeMode,
    int maxTrustedBiddingSignalsURLLength,
    String trustedBiddingSignalsCoordinator,
    JSAny? userBiddingSignals,
    JSArray<AuctionAd> ads,
    JSArray<AuctionAd> adComponents,
    JSObject adSizes,
    JSObject sizeGroups,
    num priority,
    JSObject prioritySignalsOverrides,
    required num lifetimeMs,
    String additionalBidKey,
    ProtectedAudiencePrivateAggregationConfig privateAggregationConfig,
    int joinCount,
    int bidCount,
    JSArray<PreviousWin> prevWinsMs,
    String joiningOrigin,
    int timeSinceGroupJoinedMs,
    int lifetimeRemainingMs,
    int timeSinceLastUpdateMs,
    int timeUntilNextUpdateMs,
    int estimatedSize,
  });

  external int get joinCount;
  external set joinCount(int value);
  external int get bidCount;
  external set bidCount(int value);
  external JSArray<PreviousWin> get prevWinsMs;
  external set prevWinsMs(JSArray<PreviousWin> value);
  external String get joiningOrigin;
  external set joiningOrigin(String value);
  external int get timeSinceGroupJoinedMs;
  external set timeSinceGroupJoinedMs(int value);
  external int get lifetimeRemainingMs;
  external set lifetimeRemainingMs(int value);
  external int get timeSinceLastUpdateMs;
  external set timeSinceLastUpdateMs(int value);
  external int get timeUntilNextUpdateMs;
  external set timeUntilNextUpdateMs(int value);
  external int get estimatedSize;
  external set estimatedSize(int value);
}
extension type InterestGroupScriptRunnerGlobalScope._(JSObject _)
    implements JSObject {
  external PrivateAggregation? get privateAggregation;
  external ProtectedAudienceUtilities get protectedAudience;
}
extension type PASignalValue._(JSObject _) implements JSObject {
  external factory PASignalValue({
    required String baseValue,
    num scale,
    JSAny offset,
  });

  external String get baseValue;
  external set baseValue(String value);
  external double get scale;
  external set scale(num value);
  external JSAny get offset;
  external set offset(JSAny value);
}
extension type PAExtendedHistogramContribution._(JSObject _)
    implements JSObject {
  external factory PAExtendedHistogramContribution({
    required JSAny bucket,
    required JSAny value,
    JSBigInt filteringId,
  });

  external JSAny get bucket;
  external set bucket(JSAny value);
  external JSAny get value;
  external set value(JSAny value);
  external JSBigInt get filteringId;
  external set filteringId(JSBigInt value);
}
extension type ProtectedAudienceUtilities._(JSObject _) implements JSObject {
  external JSUint8Array encodeUtf8(String input);
  external String decodeUtf8(JSUint8Array bytes);
}
extension type ForDebuggingOnly._(JSObject _) implements JSObject {
  external void reportAdAuctionWin(String url);
  external void reportAdAuctionLoss(String url);
}
extension type RealTimeReporting._(JSObject _) implements JSObject {
  external void contributeToHistogram(RealTimeContribution contribution);
}
extension type RealTimeContribution._(JSObject _) implements JSObject {
  external factory RealTimeContribution({
    required int bucket,
    required num priorityWeight,
    int latencyThreshold,
  });

  external int get bucket;
  external set bucket(int value);
  external double get priorityWeight;
  external set priorityWeight(num value);
  external int get latencyThreshold;
  external set latencyThreshold(int value);
}
extension type InterestGroupBiddingAndScoringScriptRunnerGlobalScope._(
    JSObject _) implements InterestGroupScriptRunnerGlobalScope, JSObject {
  external ForDebuggingOnly get forDebuggingOnly;
  external RealTimeReporting get realTimeReporting;
}
extension type InterestGroupBiddingScriptRunnerGlobalScope._(JSObject _)
    implements InterestGroupBiddingAndScoringScriptRunnerGlobalScope, JSObject {
  external bool setBid([JSObject oneOrManyBids]);
  external void setPriority(num priority);
  external void setPrioritySignalsOverride(
    String key, [
    num? priority,
  ]);
}
extension type AdRender._(JSObject _) implements JSObject {
  external factory AdRender({
    required String url,
    String width,
    String height,
  });

  external String get url;
  external set url(String value);
  external String get width;
  external set width(String value);
  external String get height;
  external set height(String value);
}
extension type GenerateBidOutput._(JSObject _) implements JSObject {
  external factory GenerateBidOutput({
    num bid,
    String bidCurrency,
    JSAny render,
    JSAny? ad,
    String selectedBuyerAndSellerReportingId,
    JSArray<JSAny> adComponents,
    num adCost,
    num modelingSignals,
    bool allowComponentAuction,
    int targetNumAdComponents,
    int numMandatoryAdComponents,
  });

  external double get bid;
  external set bid(num value);
  external String get bidCurrency;
  external set bidCurrency(String value);
  external JSAny get render;
  external set render(JSAny value);
  external JSAny? get ad;
  external set ad(JSAny? value);
  external String get selectedBuyerAndSellerReportingId;
  external set selectedBuyerAndSellerReportingId(String value);
  external JSArray<JSAny> get adComponents;
  external set adComponents(JSArray<JSAny> value);
  external double get adCost;
  external set adCost(num value);
  external double get modelingSignals;
  external set modelingSignals(num value);
  external bool get allowComponentAuction;
  external set allowComponentAuction(bool value);
  external int get targetNumAdComponents;
  external set targetNumAdComponents(int value);
  external int get numMandatoryAdComponents;
  external set numMandatoryAdComponents(int value);
}
extension type InterestGroupScoringScriptRunnerGlobalScope._(JSObject _)
    implements
        InterestGroupBiddingAndScoringScriptRunnerGlobalScope,
        JSObject {}
extension type InterestGroupReportingScriptRunnerGlobalScope._(JSObject _)
    implements InterestGroupScriptRunnerGlobalScope, JSObject {
  external void sendReportTo(String url);
  external void registerAdBeacon(JSObject map);
  external void registerAdMacro(
    String name,
    String value,
  );
}
extension type ProtectedAudience._(JSObject _) implements JSObject {
  external JSAny? queryFeatureSupport(String feature);
}
extension type BiddingBrowserSignals._(JSObject _) implements JSObject {
  external factory BiddingBrowserSignals({
    required String topWindowHostname,
    required String seller,
    required int joinCount,
    required int bidCount,
    required int recency,
    required int adComponentsLimit,
    required int multiBidLimit,
    JSObject requestedSize,
    String topLevelSeller,
    JSArray<PreviousWin> prevWinsMs,
    JSObject wasmHelper,
    int dataVersion,
    int crossOriginDataVersion,
    bool forDebuggingOnlyInCooldownOrLockout,
  });

  external String get topWindowHostname;
  external set topWindowHostname(String value);
  external String get seller;
  external set seller(String value);
  external int get joinCount;
  external set joinCount(int value);
  external int get bidCount;
  external set bidCount(int value);
  external int get recency;
  external set recency(int value);
  external int get adComponentsLimit;
  external set adComponentsLimit(int value);
  external int get multiBidLimit;
  external set multiBidLimit(int value);
  external JSObject get requestedSize;
  external set requestedSize(JSObject value);
  external String get topLevelSeller;
  external set topLevelSeller(String value);
  external JSArray<PreviousWin> get prevWinsMs;
  external set prevWinsMs(JSArray<PreviousWin> value);
  external JSObject get wasmHelper;
  external set wasmHelper(JSObject value);
  external int get dataVersion;
  external set dataVersion(int value);
  external int get crossOriginDataVersion;
  external set crossOriginDataVersion(int value);
  external bool get forDebuggingOnlyInCooldownOrLockout;
  external set forDebuggingOnlyInCooldownOrLockout(bool value);
}
extension type ScoringBrowserSignals._(JSObject _) implements JSObject {
  external factory ScoringBrowserSignals({
    required String topWindowHostname,
    required String interestGroupOwner,
    required String renderURL,
    required int biddingDurationMsec,
    required String bidCurrency,
    JSObject renderSize,
    int dataVersion,
    int crossOriginDataVersion,
    JSArray<JSString> adComponents,
    bool forDebuggingOnlyInCooldownOrLockout,
    String creativeScanningMetadata,
    JSArray<JSString?> adComponentsCreativeScanningMetadata,
  });

  external String get topWindowHostname;
  external set topWindowHostname(String value);
  external String get interestGroupOwner;
  external set interestGroupOwner(String value);
  external String get renderURL;
  external set renderURL(String value);
  external int get biddingDurationMsec;
  external set biddingDurationMsec(int value);
  external String get bidCurrency;
  external set bidCurrency(String value);
  external JSObject get renderSize;
  external set renderSize(JSObject value);
  external int get dataVersion;
  external set dataVersion(int value);
  external int get crossOriginDataVersion;
  external set crossOriginDataVersion(int value);
  external JSArray<JSString> get adComponents;
  external set adComponents(JSArray<JSString> value);
  external bool get forDebuggingOnlyInCooldownOrLockout;
  external set forDebuggingOnlyInCooldownOrLockout(bool value);
  external String get creativeScanningMetadata;
  external set creativeScanningMetadata(String value);
  external JSArray<JSString?> get adComponentsCreativeScanningMetadata;
  external set adComponentsCreativeScanningMetadata(JSArray<JSString?> value);
}
extension type ReportingBrowserSignals._(JSObject _) implements JSObject {
  external factory ReportingBrowserSignals({
    required String topWindowHostname,
    required String interestGroupOwner,
    required String renderURL,
    required num bid,
    required num highestScoringOtherBid,
    String bidCurrency,
    String highestScoringOtherBidCurrency,
    String topLevelSeller,
    String componentSeller,
    String buyerAndSellerReportingId,
    String selectedBuyerAndSellerReportingId,
  });

  external String get topWindowHostname;
  external set topWindowHostname(String value);
  external String get interestGroupOwner;
  external set interestGroupOwner(String value);
  external String get renderURL;
  external set renderURL(String value);
  external double get bid;
  external set bid(num value);
  external double get highestScoringOtherBid;
  external set highestScoringOtherBid(num value);
  external String get bidCurrency;
  external set bidCurrency(String value);
  external String get highestScoringOtherBidCurrency;
  external set highestScoringOtherBidCurrency(String value);
  external String get topLevelSeller;
  external set topLevelSeller(String value);
  external String get componentSeller;
  external set componentSeller(String value);
  external String get buyerAndSellerReportingId;
  external set buyerAndSellerReportingId(String value);
  external String get selectedBuyerAndSellerReportingId;
  external set selectedBuyerAndSellerReportingId(String value);
}
extension type ReportResultBrowserSignals._(JSObject _)
    implements ReportingBrowserSignals, JSObject {
  external factory ReportResultBrowserSignals({
    required String topWindowHostname,
    required String interestGroupOwner,
    required String renderURL,
    required num bid,
    required num highestScoringOtherBid,
    String bidCurrency,
    String highestScoringOtherBidCurrency,
    String topLevelSeller,
    String componentSeller,
    String buyerAndSellerReportingId,
    String selectedBuyerAndSellerReportingId,
    required num desirability,
    String topLevelSellerSignals,
    num modifiedBid,
    int dataVersion,
  });

  external double get desirability;
  external set desirability(num value);
  external String get topLevelSellerSignals;
  external set topLevelSellerSignals(String value);
  external double get modifiedBid;
  external set modifiedBid(num value);
  external int get dataVersion;
  external set dataVersion(int value);
}
extension type ReportWinBrowserSignals._(JSObject _)
    implements ReportingBrowserSignals, JSObject {
  external factory ReportWinBrowserSignals({
    required String topWindowHostname,
    required String interestGroupOwner,
    required String renderURL,
    required num bid,
    required num highestScoringOtherBid,
    String bidCurrency,
    String highestScoringOtherBidCurrency,
    String topLevelSeller,
    String componentSeller,
    String buyerAndSellerReportingId,
    String selectedBuyerAndSellerReportingId,
    num adCost,
    String seller,
    bool madeHighestScoringOtherBid,
    String interestGroupName,
    String buyerReportingId,
    int modelingSignals,
    int dataVersion,
    KAnonStatus kAnonStatus,
  });

  external double get adCost;
  external set adCost(num value);
  external String get seller;
  external set seller(String value);
  external bool get madeHighestScoringOtherBid;
  external set madeHighestScoringOtherBid(bool value);
  external String get interestGroupName;
  external set interestGroupName(String value);
  external String get buyerReportingId;
  external set buyerReportingId(String value);
  external int get modelingSignals;
  external set modelingSignals(int value);
  external int get dataVersion;
  external set dataVersion(int value);
  external KAnonStatus get kAnonStatus;
  external set kAnonStatus(KAnonStatus value);
}
extension type DirectFromSellerSignalsForBuyer._(JSObject _)
    implements JSObject {
  external factory DirectFromSellerSignalsForBuyer({
    JSAny? auctionSignals,
    JSAny? perBuyerSignals,
  });

  external JSAny? get auctionSignals;
  external set auctionSignals(JSAny? value);
  external JSAny? get perBuyerSignals;
  external set perBuyerSignals(JSAny? value);
}
extension type DirectFromSellerSignalsForSeller._(JSObject _)
    implements JSObject {
  external factory DirectFromSellerSignalsForSeller({
    JSAny? auctionSignals,
    JSAny? sellerSignals,
  });

  external JSAny? get auctionSignals;
  external set auctionSignals(JSAny? value);
  external JSAny? get sellerSignals;
  external set sellerSignals(JSAny? value);
}
extension type ScoreAdOutput._(JSObject _) implements JSObject {
  external factory ScoreAdOutput({
    required num desirability,
    num bid,
    String bidCurrency,
    num incomingBidInSellerCurrency,
    bool allowComponentAuction,
  });

  external double get desirability;
  external set desirability(num value);
  external double get bid;
  external set bid(num value);
  external String get bidCurrency;
  external set bidCurrency(String value);
  external double get incomingBidInSellerCurrency;
  external set incomingBidInSellerCurrency(num value);
  external bool get allowComponentAuction;
  external set allowComponentAuction(bool value);
}
