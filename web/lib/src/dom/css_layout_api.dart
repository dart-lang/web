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

import 'css_typed_om.dart';
import 'html.dart';
import 'webidl.dart';

typedef ChildDisplayType = String;
typedef LayoutSizingMode = String;
typedef BlockFragmentationType = String;
typedef BreakType = String;
extension type LayoutWorkletGlobalScope._(JSObject _)
    implements WorkletGlobalScope, JSObject {
  external void registerLayout(
    String name,
    VoidFunction layoutCtor,
  );
}
extension type LayoutOptions._(JSObject _) implements JSObject {
  external factory LayoutOptions({
    ChildDisplayType childDisplay,
    LayoutSizingMode sizing,
  });

  external ChildDisplayType get childDisplay;
  external set childDisplay(ChildDisplayType value);
  external LayoutSizingMode get sizing;
  external set sizing(LayoutSizingMode value);
}
extension type LayoutChild._(JSObject _) implements JSObject {
  external JSPromise<IntrinsicSizes> intrinsicSizes();
  external JSPromise<LayoutFragment> layoutNextFragment(
    LayoutConstraintsOptions constraints,
    ChildBreakToken breakToken,
  );
  external StylePropertyMapReadOnly get styleMap;
}
extension type LayoutFragment._(JSObject _) implements JSObject {
  external double get inlineSize;
  external double get blockSize;
  external double get inlineOffset;
  external set inlineOffset(num value);
  external double get blockOffset;
  external set blockOffset(num value);
  external JSAny? get data;
  external ChildBreakToken? get breakToken;
}
extension type IntrinsicSizes._(JSObject _) implements JSObject {
  external double get minContentSize;
  external double get maxContentSize;
}
extension type LayoutConstraints._(JSObject _) implements JSObject {
  external double get availableInlineSize;
  external double get availableBlockSize;
  external double? get fixedInlineSize;
  external double? get fixedBlockSize;
  external double get percentageInlineSize;
  external double get percentageBlockSize;
  external double? get blockFragmentationOffset;
  external BlockFragmentationType get blockFragmentationType;
  external JSAny? get data;
}
extension type LayoutConstraintsOptions._(JSObject _) implements JSObject {
  external factory LayoutConstraintsOptions({
    num availableInlineSize,
    num availableBlockSize,
    num fixedInlineSize,
    num fixedBlockSize,
    num percentageInlineSize,
    num percentageBlockSize,
    num blockFragmentationOffset,
    BlockFragmentationType blockFragmentationType,
    JSAny? data,
  });

  external double get availableInlineSize;
  external set availableInlineSize(num value);
  external double get availableBlockSize;
  external set availableBlockSize(num value);
  external double get fixedInlineSize;
  external set fixedInlineSize(num value);
  external double get fixedBlockSize;
  external set fixedBlockSize(num value);
  external double get percentageInlineSize;
  external set percentageInlineSize(num value);
  external double get percentageBlockSize;
  external set percentageBlockSize(num value);
  external double get blockFragmentationOffset;
  external set blockFragmentationOffset(num value);
  external BlockFragmentationType get blockFragmentationType;
  external set blockFragmentationType(BlockFragmentationType value);
  external JSAny? get data;
  external set data(JSAny? value);
}
extension type ChildBreakToken._(JSObject _) implements JSObject {
  external BreakType get breakType;
  external LayoutChild get child;
}
extension type BreakToken._(JSObject _) implements JSObject {
  external JSArray<ChildBreakToken> get childBreakTokens;
  external JSAny? get data;
}
extension type BreakTokenOptions._(JSObject _) implements JSObject {
  external factory BreakTokenOptions({
    JSArray<ChildBreakToken> childBreakTokens,
    JSAny? data,
  });

  external JSArray<ChildBreakToken> get childBreakTokens;
  external set childBreakTokens(JSArray<ChildBreakToken> value);
  external JSAny? get data;
  external set data(JSAny? value);
}
extension type LayoutEdges._(JSObject _) implements JSObject {
  external double get inlineStart;
  external double get inlineEnd;
  external double get blockStart;
  external double get blockEnd;
  external double get inline;
  external double get block;
}
extension type FragmentResultOptions._(JSObject _) implements JSObject {
  external factory FragmentResultOptions({
    num inlineSize,
    num blockSize,
    num autoBlockSize,
    JSArray<LayoutFragment> childFragments,
    JSAny? data,
    BreakTokenOptions breakToken,
  });

  external double get inlineSize;
  external set inlineSize(num value);
  external double get blockSize;
  external set blockSize(num value);
  external double get autoBlockSize;
  external set autoBlockSize(num value);
  external JSArray<LayoutFragment> get childFragments;
  external set childFragments(JSArray<LayoutFragment> value);
  external JSAny? get data;
  external set data(JSAny? value);
  external BreakTokenOptions get breakToken;
  external set breakToken(BreakTokenOptions value);
}
extension type FragmentResult._(JSObject _) implements JSObject {
  external factory FragmentResult([FragmentResultOptions options]);

  external double get inlineSize;
  external double get blockSize;
}
extension type IntrinsicSizesResultOptions._(JSObject _) implements JSObject {
  external factory IntrinsicSizesResultOptions({
    num maxContentSize,
    num minContentSize,
  });

  external double get maxContentSize;
  external set maxContentSize(num value);
  external double get minContentSize;
  external set minContentSize(num value);
}
