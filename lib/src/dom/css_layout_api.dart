// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'css_typed_om.dart';
import 'html.dart';
import 'webidl.dart';

typedef ChildDisplayType = JSString;
typedef LayoutSizingMode = JSString;
typedef BlockFragmentationType = JSString;
typedef BreakType = JSString;

@JS('LayoutWorkletGlobalScope')
@staticInterop
class LayoutWorkletGlobalScope extends WorkletGlobalScope {
  external factory LayoutWorkletGlobalScope();
}

extension LayoutWorkletGlobalScopeExtension on LayoutWorkletGlobalScope {
  external JSVoid registerLayout(
    JSString name,
    VoidFunction layoutCtor,
  );
}

@JS()
@staticInterop
@anonymous
class LayoutOptions {
  external factory LayoutOptions({
    ChildDisplayType childDisplay = 'block',
    LayoutSizingMode sizing = 'block-like',
  });
}

extension LayoutOptionsExtension on LayoutOptions {
  external set childDisplay(ChildDisplayType value);
  external ChildDisplayType get childDisplay;
  external set sizing(LayoutSizingMode value);
  external LayoutSizingMode get sizing;
}

@JS('LayoutChild')
@staticInterop
class LayoutChild {
  external factory LayoutChild();
}

extension LayoutChildExtension on LayoutChild {
  external StylePropertyMapReadOnly get styleMap;
  external JSPromise intrinsicSizes();
  external JSPromise layoutNextFragment(
    LayoutConstraintsOptions constraints,
    ChildBreakToken breakToken,
  );
}

@JS('LayoutFragment')
@staticInterop
class LayoutFragment {
  external factory LayoutFragment();
}

extension LayoutFragmentExtension on LayoutFragment {
  external JSNumber get inlineSize;
  external JSNumber get blockSize;
  external set inlineOffset(JSNumber value);
  external JSNumber get inlineOffset;
  external set blockOffset(JSNumber value);
  external JSNumber get blockOffset;
  external JSAny get data;
  external ChildBreakToken? get breakToken;
}

@JS('IntrinsicSizes')
@staticInterop
class IntrinsicSizes {
  external factory IntrinsicSizes();
}

extension IntrinsicSizesExtension on IntrinsicSizes {
  external JSNumber get minContentSize;
  external JSNumber get maxContentSize;
}

@JS('LayoutConstraints')
@staticInterop
class LayoutConstraints {
  external factory LayoutConstraints();
}

extension LayoutConstraintsExtension on LayoutConstraints {
  external JSNumber get availableInlineSize;
  external JSNumber get availableBlockSize;
  external JSNumber? get fixedInlineSize;
  external JSNumber? get fixedBlockSize;
  external JSNumber get percentageInlineSize;
  external JSNumber get percentageBlockSize;
  external JSNumber? get blockFragmentationOffset;
  external BlockFragmentationType get blockFragmentationType;
  external JSAny get data;
}

@JS()
@staticInterop
@anonymous
class LayoutConstraintsOptions {
  external factory LayoutConstraintsOptions({
    JSNumber availableInlineSize,
    JSNumber availableBlockSize,
    JSNumber fixedInlineSize,
    JSNumber fixedBlockSize,
    JSNumber percentageInlineSize,
    JSNumber percentageBlockSize,
    JSNumber blockFragmentationOffset,
    BlockFragmentationType blockFragmentationType = 'none',
    JSAny data,
  });
}

extension LayoutConstraintsOptionsExtension on LayoutConstraintsOptions {
  external set availableInlineSize(JSNumber value);
  external JSNumber get availableInlineSize;
  external set availableBlockSize(JSNumber value);
  external JSNumber get availableBlockSize;
  external set fixedInlineSize(JSNumber value);
  external JSNumber get fixedInlineSize;
  external set fixedBlockSize(JSNumber value);
  external JSNumber get fixedBlockSize;
  external set percentageInlineSize(JSNumber value);
  external JSNumber get percentageInlineSize;
  external set percentageBlockSize(JSNumber value);
  external JSNumber get percentageBlockSize;
  external set blockFragmentationOffset(JSNumber value);
  external JSNumber get blockFragmentationOffset;
  external set blockFragmentationType(BlockFragmentationType value);
  external BlockFragmentationType get blockFragmentationType;
  external set data(JSAny value);
  external JSAny get data;
}

@JS('ChildBreakToken')
@staticInterop
class ChildBreakToken {
  external factory ChildBreakToken();
}

extension ChildBreakTokenExtension on ChildBreakToken {
  external BreakType get breakType;
  external LayoutChild get child;
}

@JS('BreakToken')
@staticInterop
class BreakToken {
  external factory BreakToken();
}

extension BreakTokenExtension on BreakToken {
  external JSArray get childBreakTokens;
  external JSAny get data;
}

@JS()
@staticInterop
@anonymous
class BreakTokenOptions {
  external factory BreakTokenOptions({
    JSArray childBreakTokens,
    JSAny data,
  });
}

extension BreakTokenOptionsExtension on BreakTokenOptions {
  external set childBreakTokens(JSArray value);
  external JSArray get childBreakTokens;
  external set data(JSAny value);
  external JSAny get data;
}

@JS('LayoutEdges')
@staticInterop
class LayoutEdges {
  external factory LayoutEdges();
}

extension LayoutEdgesExtension on LayoutEdges {
  external JSNumber get inlineStart;
  external JSNumber get inlineEnd;
  external JSNumber get blockStart;
  external JSNumber get blockEnd;
  external JSNumber get inline;
  external JSNumber get block;
}

@JS()
@staticInterop
@anonymous
class FragmentResultOptions {
  external factory FragmentResultOptions({
    JSNumber inlineSize = 0,
    JSNumber blockSize = 0,
    JSNumber autoBlockSize = 0,
    JSArray childFragments = const [],
    JSAny data,
    BreakTokenOptions breakToken,
  });
}

extension FragmentResultOptionsExtension on FragmentResultOptions {
  external set inlineSize(JSNumber value);
  external JSNumber get inlineSize;
  external set blockSize(JSNumber value);
  external JSNumber get blockSize;
  external set autoBlockSize(JSNumber value);
  external JSNumber get autoBlockSize;
  external set childFragments(JSArray value);
  external JSArray get childFragments;
  external set data(JSAny value);
  external JSAny get data;
  external set breakToken(BreakTokenOptions value);
  external BreakTokenOptions get breakToken;
}

@JS('FragmentResult')
@staticInterop
class FragmentResult {
  external factory FragmentResult();

  external factory FragmentResult.a1();

  external factory FragmentResult.a2(FragmentResultOptions options);
}

extension FragmentResultExtension on FragmentResult {
  external JSNumber get inlineSize;
  external JSNumber get blockSize;
}

@JS()
@staticInterop
@anonymous
class IntrinsicSizesResultOptions {
  external factory IntrinsicSizesResultOptions({
    JSNumber maxContentSize,
    JSNumber minContentSize,
  });
}

extension IntrinsicSizesResultOptionsExtension on IntrinsicSizesResultOptions {
  external set maxContentSize(JSNumber value);
  external JSNumber get maxContentSize;
  external set minContentSize(JSNumber value);
  external JSNumber get minContentSize;
}
