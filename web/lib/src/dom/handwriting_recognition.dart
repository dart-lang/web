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

import 'hr_time.dart';

typedef HandwritingRecognitionType = String;
typedef HandwritingInputType = String;
extension type HandwritingModelConstraint._(JSObject _) implements JSObject {
  external factory HandwritingModelConstraint(
      {required JSArray<JSString> languages});

  external JSArray<JSString> get languages;
  external set languages(JSArray<JSString> value);
}
extension type HandwritingRecognizerQueryResult._(JSObject _)
    implements JSObject {
  external factory HandwritingRecognizerQueryResult({
    bool textAlternatives,
    bool textSegmentation,
    HandwritingHintsQueryResult hints,
  });

  external bool get textAlternatives;
  external set textAlternatives(bool value);
  external bool get textSegmentation;
  external set textSegmentation(bool value);
  external HandwritingHintsQueryResult get hints;
  external set hints(HandwritingHintsQueryResult value);
}
extension type HandwritingHintsQueryResult._(JSObject _) implements JSObject {
  external factory HandwritingHintsQueryResult({
    JSArray<JSString> recognitionType,
    JSArray<JSString> inputType,
    bool textContext,
    bool alternatives,
  });

  external JSArray<JSString> get recognitionType;
  external set recognitionType(JSArray<JSString> value);
  external JSArray<JSString> get inputType;
  external set inputType(JSArray<JSString> value);
  external bool get textContext;
  external set textContext(bool value);
  external bool get alternatives;
  external set alternatives(bool value);
}
extension type HandwritingRecognizer._(JSObject _) implements JSObject {
  external HandwritingDrawing startDrawing([HandwritingHints hints]);
  external void finish();
}
extension type HandwritingHints._(JSObject _) implements JSObject {
  external factory HandwritingHints({
    String recognitionType,
    String inputType,
    String textContext,
    int alternatives,
  });

  external String get recognitionType;
  external set recognitionType(String value);
  external String get inputType;
  external set inputType(String value);
  external String get textContext;
  external set textContext(String value);
  external int get alternatives;
  external set alternatives(int value);
}
extension type HandwritingDrawing._(JSObject _) implements JSObject {
  external void addStroke(HandwritingStroke stroke);
  external void removeStroke(HandwritingStroke stroke);
  external void clear();
  external JSArray<HandwritingStroke> getStrokes();
  external JSPromise<JSArray<HandwritingPrediction>> getPrediction();
}
extension type HandwritingStroke._(JSObject _) implements JSObject {
  external factory HandwritingStroke();

  external void addPoint(HandwritingPoint point);
  external JSArray<HandwritingPoint> getPoints();
  external void clear();
}
extension type HandwritingPoint._(JSObject _) implements JSObject {
  external factory HandwritingPoint({
    required num x,
    required num y,
    DOMHighResTimeStamp t,
  });

  external double get x;
  external set x(num value);
  external double get y;
  external set y(num value);
  external double get t;
  external set t(DOMHighResTimeStamp value);
}
extension type HandwritingPrediction._(JSObject _) implements JSObject {
  external factory HandwritingPrediction({
    required String text,
    JSArray<HandwritingSegment> segmentationResult,
  });

  external String get text;
  external set text(String value);
  external JSArray<HandwritingSegment> get segmentationResult;
  external set segmentationResult(JSArray<HandwritingSegment> value);
}
extension type HandwritingSegment._(JSObject _) implements JSObject {
  external factory HandwritingSegment({
    required String grapheme,
    required int beginIndex,
    required int endIndex,
    required JSArray<HandwritingDrawingSegment> drawingSegments,
  });

  external String get grapheme;
  external set grapheme(String value);
  external int get beginIndex;
  external set beginIndex(int value);
  external int get endIndex;
  external set endIndex(int value);
  external JSArray<HandwritingDrawingSegment> get drawingSegments;
  external set drawingSegments(JSArray<HandwritingDrawingSegment> value);
}
extension type HandwritingDrawingSegment._(JSObject _) implements JSObject {
  external factory HandwritingDrawingSegment({
    required int strokeIndex,
    required int beginPointIndex,
    required int endPointIndex,
  });

  external int get strokeIndex;
  external set strokeIndex(int value);
  external int get beginPointIndex;
  external set beginPointIndex(int value);
  external int get endPointIndex;
  external set endPointIndex(int value);
}
