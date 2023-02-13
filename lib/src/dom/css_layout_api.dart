// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

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
  external JSUndefined registerLayout(JSString name, VoidFunction layoutCtor);
}

@JS('LayoutOptions')
@staticInterop
class LayoutOptions {
  external factory LayoutOptions();
}

extension LayoutOptionsExtension on LayoutOptions {
  // TODO
  // TODO
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
      LayoutConstraintsOptions constraints, ChildBreakToken breakToken);
}

@JS('LayoutFragment')
@staticInterop
class LayoutFragment {
  external factory LayoutFragment();
}

extension LayoutFragmentExtension on LayoutFragment {
  external JSNumber get inlineSize;
  external JSNumber get blockSize;
  external JSNumber get inlineOffset;
  external set inlineOffset(JSNumber value);
  external JSNumber get blockOffset;
  external set blockOffset(JSNumber value);
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

@JS('LayoutConstraintsOptions')
@staticInterop
class LayoutConstraintsOptions {
  external factory LayoutConstraintsOptions();
}

extension LayoutConstraintsOptionsExtension on LayoutConstraintsOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
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

@JS('BreakTokenOptions')
@staticInterop
class BreakTokenOptions {
  external factory BreakTokenOptions();
}

extension BreakTokenOptionsExtension on BreakTokenOptions {
  // TODO
  // TODO
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

@JS('FragmentResultOptions')
@staticInterop
class FragmentResultOptions {
  external factory FragmentResultOptions();
}

extension FragmentResultOptionsExtension on FragmentResultOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('FragmentResult')
@staticInterop
class FragmentResult {
  external factory FragmentResult();
  external factory FragmentResult.a1();
  external factory FragmentResult.a1_1(FragmentResultOptions options);
}

extension FragmentResultExtension on FragmentResult {
  external JSNumber get inlineSize;
  external JSNumber get blockSize;
}

@JS('IntrinsicSizesResultOptions')
@staticInterop
class IntrinsicSizesResultOptions {
  external factory IntrinsicSizesResultOptions();
}

extension IntrinsicSizesResultOptionsExtension on IntrinsicSizesResultOptions {
  // TODO
  // TODO
}
