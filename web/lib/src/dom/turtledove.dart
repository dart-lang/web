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

typedef PreviousWinElement = JSAny;
typedef PreviousWin = JSArray<PreviousWinElement>;
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
