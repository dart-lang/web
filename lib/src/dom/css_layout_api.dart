// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'css_typed_om.dart';
import 'html.dart';
import 'webidl.dart';

typedef ChildDisplayType = String;
typedef LayoutSizingMode = String;
typedef BlockFragmentationType = String;
typedef BreakType = String;

@JS('LayoutWorkletGlobalScope')
@staticInterop
class LayoutWorkletGlobalScope implements WorkletGlobalScope {}

extension LayoutWorkletGlobalScopeExtension on LayoutWorkletGlobalScope {
  external JSVoid registerLayout(
    String name,
    VoidFunction layoutCtor,
  );
}

@JS()
@staticInterop
@anonymous
class LayoutOptions implements JSObject {
  external factory LayoutOptions({
    ChildDisplayType childDisplay,
    LayoutSizingMode sizing,
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
class LayoutChild implements JSObject {}

extension LayoutChildExtension on LayoutChild {
  external JSPromise intrinsicSizes();
  external JSPromise layoutNextFragment(
    LayoutConstraintsOptions constraints,
    ChildBreakToken breakToken,
  );
  external StylePropertyMapReadOnly get styleMap;
}

@JS('LayoutFragment')
@staticInterop
class LayoutFragment implements JSObject {}

extension LayoutFragmentExtension on LayoutFragment {
  external double get inlineSize;
  external double get blockSize;
  external set inlineOffset(double value);
  external double get inlineOffset;
  external set blockOffset(double value);
  external double get blockOffset;
  external JSAny? get data;
  external ChildBreakToken? get breakToken;
}

@JS('IntrinsicSizes')
@staticInterop
class IntrinsicSizes implements JSObject {}

extension IntrinsicSizesExtension on IntrinsicSizes {
  external double get minContentSize;
  external double get maxContentSize;
}

@JS('LayoutConstraints')
@staticInterop
class LayoutConstraints implements JSObject {}

extension LayoutConstraintsExtension on LayoutConstraints {
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

@JS()
@staticInterop
@anonymous
class LayoutConstraintsOptions implements JSObject {
  external factory LayoutConstraintsOptions({
    double availableInlineSize,
    double availableBlockSize,
    double fixedInlineSize,
    double fixedBlockSize,
    double percentageInlineSize,
    double percentageBlockSize,
    double blockFragmentationOffset,
    BlockFragmentationType blockFragmentationType,
    JSAny? data,
  });
}

extension LayoutConstraintsOptionsExtension on LayoutConstraintsOptions {
  external set availableInlineSize(double value);
  external double get availableInlineSize;
  external set availableBlockSize(double value);
  external double get availableBlockSize;
  external set fixedInlineSize(double value);
  external double get fixedInlineSize;
  external set fixedBlockSize(double value);
  external double get fixedBlockSize;
  external set percentageInlineSize(double value);
  external double get percentageInlineSize;
  external set percentageBlockSize(double value);
  external double get percentageBlockSize;
  external set blockFragmentationOffset(double value);
  external double get blockFragmentationOffset;
  external set blockFragmentationType(BlockFragmentationType value);
  external BlockFragmentationType get blockFragmentationType;
  external set data(JSAny? value);
  external JSAny? get data;
}

@JS('ChildBreakToken')
@staticInterop
class ChildBreakToken implements JSObject {}

extension ChildBreakTokenExtension on ChildBreakToken {
  external BreakType get breakType;
  external LayoutChild get child;
}

@JS('BreakToken')
@staticInterop
class BreakToken implements JSObject {}

extension BreakTokenExtension on BreakToken {
  external JSArray get childBreakTokens;
  external JSAny? get data;
}

@JS()
@staticInterop
@anonymous
class BreakTokenOptions implements JSObject {
  external factory BreakTokenOptions({
    JSArray childBreakTokens,
    JSAny? data,
  });
}

extension BreakTokenOptionsExtension on BreakTokenOptions {
  external set childBreakTokens(JSArray value);
  external JSArray get childBreakTokens;
  external set data(JSAny? value);
  external JSAny? get data;
}

@JS('LayoutEdges')
@staticInterop
class LayoutEdges implements JSObject {}

extension LayoutEdgesExtension on LayoutEdges {
  external double get inlineStart;
  external double get inlineEnd;
  external double get blockStart;
  external double get blockEnd;
  external double get inline;
  external double get block;
}

@JS()
@staticInterop
@anonymous
class FragmentResultOptions implements JSObject {
  external factory FragmentResultOptions({
    double inlineSize,
    double blockSize,
    double autoBlockSize,
    JSArray childFragments,
    JSAny? data,
    BreakTokenOptions breakToken,
  });
}

extension FragmentResultOptionsExtension on FragmentResultOptions {
  external set inlineSize(double value);
  external double get inlineSize;
  external set blockSize(double value);
  external double get blockSize;
  external set autoBlockSize(double value);
  external double get autoBlockSize;
  external set childFragments(JSArray value);
  external JSArray get childFragments;
  external set data(JSAny? value);
  external JSAny? get data;
  external set breakToken(BreakTokenOptions value);
  external BreakTokenOptions get breakToken;
}

@JS('FragmentResult')
@staticInterop
class FragmentResult implements JSObject {
  external factory FragmentResult([FragmentResultOptions options]);
}

extension FragmentResultExtension on FragmentResult {
  external double get inlineSize;
  external double get blockSize;
}

@JS()
@staticInterop
@anonymous
class IntrinsicSizesResultOptions implements JSObject {
  external factory IntrinsicSizesResultOptions({
    double maxContentSize,
    double minContentSize,
  });
}

extension IntrinsicSizesResultOptionsExtension on IntrinsicSizesResultOptions {
  external set maxContentSize(double value);
  external double get maxContentSize;
  external set minContentSize(double value);
  external double get minContentSize;
}
