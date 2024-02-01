// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

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

  external set childDisplay(ChildDisplayType value);
  external ChildDisplayType get childDisplay;
  external set sizing(LayoutSizingMode value);
  external LayoutSizingMode get sizing;
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
  external num get inlineSize;
  external num get blockSize;
  external set inlineOffset(num value);
  external num get inlineOffset;
  external set blockOffset(num value);
  external num get blockOffset;
  external JSAny? get data;
  external ChildBreakToken? get breakToken;
}
extension type IntrinsicSizes._(JSObject _) implements JSObject {
  external num get minContentSize;
  external num get maxContentSize;
}
extension type LayoutConstraints._(JSObject _) implements JSObject {
  external num get availableInlineSize;
  external num get availableBlockSize;
  external num? get fixedInlineSize;
  external num? get fixedBlockSize;
  external num get percentageInlineSize;
  external num get percentageBlockSize;
  external num? get blockFragmentationOffset;
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

  external set availableInlineSize(num value);
  external num get availableInlineSize;
  external set availableBlockSize(num value);
  external num get availableBlockSize;
  external set fixedInlineSize(num value);
  external num get fixedInlineSize;
  external set fixedBlockSize(num value);
  external num get fixedBlockSize;
  external set percentageInlineSize(num value);
  external num get percentageInlineSize;
  external set percentageBlockSize(num value);
  external num get percentageBlockSize;
  external set blockFragmentationOffset(num value);
  external num get blockFragmentationOffset;
  external set blockFragmentationType(BlockFragmentationType value);
  external BlockFragmentationType get blockFragmentationType;
  external set data(JSAny? value);
  external JSAny? get data;
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

  external set childBreakTokens(JSArray<ChildBreakToken> value);
  external JSArray<ChildBreakToken> get childBreakTokens;
  external set data(JSAny? value);
  external JSAny? get data;
}
extension type LayoutEdges._(JSObject _) implements JSObject {
  external num get inlineStart;
  external num get inlineEnd;
  external num get blockStart;
  external num get blockEnd;
  external num get inline;
  external num get block;
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

  external set inlineSize(num value);
  external num get inlineSize;
  external set blockSize(num value);
  external num get blockSize;
  external set autoBlockSize(num value);
  external num get autoBlockSize;
  external set childFragments(JSArray<LayoutFragment> value);
  external JSArray<LayoutFragment> get childFragments;
  external set data(JSAny? value);
  external JSAny? get data;
  external set breakToken(BreakTokenOptions value);
  external BreakTokenOptions get breakToken;
}
extension type FragmentResult._(JSObject _) implements JSObject {
  external factory FragmentResult([FragmentResultOptions options]);

  external num get inlineSize;
  external num get blockSize;
}
extension type IntrinsicSizesResultOptions._(JSObject _) implements JSObject {
  external factory IntrinsicSizesResultOptions({
    num maxContentSize,
    num minContentSize,
  });

  external set maxContentSize(num value);
  external num get maxContentSize;
  external set minContentSize(num value);
  external num get minContentSize;
}
