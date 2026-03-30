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

typedef AttributionAggregationProtocol = String;
extension type AttributionAggregationService._(JSObject _) implements JSObject {
  external factory AttributionAggregationService(
      {required AttributionAggregationProtocol protocol});

  external AttributionAggregationProtocol get protocol;
  external set protocol(AttributionAggregationProtocol value);
}
extension type AttributionAggregationServices._(JSObject _)
    implements JSObject {}
extension type Attribution._(JSObject _) implements JSObject {
  external JSPromise<AttributionImpressionResult> saveImpression(
      AttributionImpressionOptions options);
  external JSPromise<AttributionConversionResult> measureConversion(
      AttributionConversionOptions options);
  external AttributionAggregationServices get aggregationServices;
}
extension type AttributionImpressionOptions._(JSObject _) implements JSObject {
  external factory AttributionImpressionOptions({
    required int histogramIndex,
    int matchValue,
    JSArray<JSString> conversionSites,
    JSArray<JSString> conversionCallers,
    int lifetimeDays,
    int priority,
  });

  external int get histogramIndex;
  external set histogramIndex(int value);
  external int get matchValue;
  external set matchValue(int value);
  external JSArray<JSString> get conversionSites;
  external set conversionSites(JSArray<JSString> value);
  external JSArray<JSString> get conversionCallers;
  external set conversionCallers(JSArray<JSString> value);
  external int get lifetimeDays;
  external set lifetimeDays(int value);
  external int get priority;
  external set priority(int value);
}
extension type AttributionImpressionResult._(JSObject _) implements JSObject {
  AttributionImpressionResult() : _ = JSObject();
}
extension type AttributionConversionOptions._(JSObject _) implements JSObject {
  external factory AttributionConversionOptions({
    required String aggregationService,
    num epsilon,
    required int histogramSize,
    int lookbackDays,
    JSArray<JSNumber> matchValues,
    JSArray<JSString> impressionSites,
    JSArray<JSString> impressionCallers,
    JSArray<JSNumber> credit,
    int value,
    int maxValue,
  });

  external String get aggregationService;
  external set aggregationService(String value);
  external double get epsilon;
  external set epsilon(num value);
  external int get histogramSize;
  external set histogramSize(int value);
  external int get lookbackDays;
  external set lookbackDays(int value);
  external JSArray<JSNumber> get matchValues;
  external set matchValues(JSArray<JSNumber> value);
  external JSArray<JSString> get impressionSites;
  external set impressionSites(JSArray<JSString> value);
  external JSArray<JSString> get impressionCallers;
  external set impressionCallers(JSArray<JSString> value);
  external JSArray<JSNumber> get credit;
  external set credit(JSArray<JSNumber> value);
  external int get value;
  external set value(int value);
  external int get maxValue;
  external set maxValue(int value);
}
extension type AttributionConversionResult._(JSObject _) implements JSObject {
  external factory AttributionConversionResult({required JSUint8Array report});

  external JSUint8Array get report;
  external set report(JSUint8Array value);
}
