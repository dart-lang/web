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

import 'cssom.dart';

/// The **`CSSPositionTryRule`** interface describes an object representing a
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_syntax/At-rule).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSPositionTryRule).
extension type CSSPositionTryRule._(JSObject _) implements CSSRule, JSObject {
  /// The **`name`** read-only property of the [CSSPositionTryRule] interface
  /// represents the name of the position try fallback option specified by the
  /// `@position-try` at-rule's .
  external String get name;

  /// The **`style`** read-only property of the [CSSPositionTryRule] interface
  /// returns a [CSSPositionTryDescriptors] object representing the declarations
  /// set in the body of the `@position-try` at-rule.
  external CSSPositionTryDescriptors get style;
}

/// The **`CSSPositionTryDescriptors`** interface defines properties that
/// represent the list of CSS descriptors that can be set in the body of a
/// [at-rule](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_syntax/At-rule).
///
/// Each descriptor in the body of the corresponding  at-rule can be accessed
/// using either its property name in
/// [bracket notation](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Scripting/Object_basics#bracket_notation)
/// or the camel-case version of the property name "propertyName" in
/// [dot notation](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Scripting/Object_basics#dot_notation).
/// For example, you can access the CSS property "property-name" as
/// `style["property-name"]` or `style.propertyName`, where `style` is a
/// `CSSPositionTryDescriptors` instance.
/// A property with a single-word name like `height` can be accessed using
/// either notation: `style["height"]` or `style.height`.
///
/// > [!NOTE]
/// > The [CSSPositionTryRule] interface represents a  at-rule, and the
/// > [CSSPositionTryRule.style] property is an instance of this object.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSPositionTryDescriptors).
extension type CSSPositionTryDescriptors._(JSObject _)
    implements CSSStyleDeclaration, JSObject {
  external String get margin;
  external set margin(String value);
  external String get marginTop;
  external set marginTop(String value);
  external String get marginRight;
  external set marginRight(String value);
  external String get marginBottom;
  external set marginBottom(String value);
  external String get marginLeft;
  external set marginLeft(String value);
  external String get marginBlock;
  external set marginBlock(String value);
  external String get marginBlockStart;
  external set marginBlockStart(String value);
  external String get marginBlockEnd;
  external set marginBlockEnd(String value);
  external String get marginInline;
  external set marginInline(String value);
  external String get marginInlineStart;
  external set marginInlineStart(String value);
  external String get marginInlineEnd;
  external set marginInlineEnd(String value);
  @JS('margin-top')
  external String get margin_top;
  @JS('margin-top')
  external set margin_top(String value);
  @JS('margin-right')
  external String get margin_right;
  @JS('margin-right')
  external set margin_right(String value);
  @JS('margin-bottom')
  external String get margin_bottom;
  @JS('margin-bottom')
  external set margin_bottom(String value);
  @JS('margin-left')
  external String get margin_left;
  @JS('margin-left')
  external set margin_left(String value);
  @JS('margin-block')
  external String get margin_block;
  @JS('margin-block')
  external set margin_block(String value);
  @JS('margin-block-start')
  external String get margin_block_start;
  @JS('margin-block-start')
  external set margin_block_start(String value);
  @JS('margin-block-end')
  external String get margin_block_end;
  @JS('margin-block-end')
  external set margin_block_end(String value);
  @JS('margin-inline')
  external String get margin_inline;
  @JS('margin-inline')
  external set margin_inline(String value);
  @JS('margin-inline-start')
  external String get margin_inline_start;
  @JS('margin-inline-start')
  external set margin_inline_start(String value);
  @JS('margin-inline-end')
  external String get margin_inline_end;
  @JS('margin-inline-end')
  external set margin_inline_end(String value);
  external String get inset;
  external set inset(String value);
  external String get insetBlock;
  external set insetBlock(String value);
  external String get insetBlockStart;
  external set insetBlockStart(String value);
  external String get insetBlockEnd;
  external set insetBlockEnd(String value);
  external String get insetInline;
  external set insetInline(String value);
  external String get insetInlineStart;
  external set insetInlineStart(String value);
  external String get insetInlineEnd;
  external set insetInlineEnd(String value);
  external String get top;
  external set top(String value);
  external String get left;
  external set left(String value);
  external String get right;
  external set right(String value);
  external String get bottom;
  external set bottom(String value);
  @JS('inset-block')
  external String get inset_block;
  @JS('inset-block')
  external set inset_block(String value);
  @JS('inset-block-start')
  external String get inset_block_start;
  @JS('inset-block-start')
  external set inset_block_start(String value);
  @JS('inset-block-end')
  external String get inset_block_end;
  @JS('inset-block-end')
  external set inset_block_end(String value);
  @JS('inset-inline')
  external String get inset_inline;
  @JS('inset-inline')
  external set inset_inline(String value);
  @JS('inset-inline-start')
  external String get inset_inline_start;
  @JS('inset-inline-start')
  external set inset_inline_start(String value);
  @JS('inset-inline-end')
  external String get inset_inline_end;
  @JS('inset-inline-end')
  external set inset_inline_end(String value);
  external String get width;
  external set width(String value);
  external String get minWidth;
  external set minWidth(String value);
  external String get maxWidth;
  external set maxWidth(String value);
  external String get height;
  external set height(String value);
  external String get minHeight;
  external set minHeight(String value);
  external String get maxHeight;
  external set maxHeight(String value);
  external String get blockSize;
  external set blockSize(String value);
  external String get minBlockSize;
  external set minBlockSize(String value);
  external String get maxBlockSize;
  external set maxBlockSize(String value);
  external String get inlineSize;
  external set inlineSize(String value);
  external String get minInlineSize;
  external set minInlineSize(String value);
  external String get maxInlineSize;
  external set maxInlineSize(String value);
  @JS('min-width')
  external String get min_width;
  @JS('min-width')
  external set min_width(String value);
  @JS('max-width')
  external String get max_width;
  @JS('max-width')
  external set max_width(String value);
  @JS('min-height')
  external String get min_height;
  @JS('min-height')
  external set min_height(String value);
  @JS('max-height')
  external String get max_height;
  @JS('max-height')
  external set max_height(String value);
  @JS('block-size')
  external String get block_size;
  @JS('block-size')
  external set block_size(String value);
  @JS('min-block-size')
  external String get min_block_size;
  @JS('min-block-size')
  external set min_block_size(String value);
  @JS('max-block-size')
  external String get max_block_size;
  @JS('max-block-size')
  external set max_block_size(String value);
  @JS('inline-size')
  external String get inline_size;
  @JS('inline-size')
  external set inline_size(String value);
  @JS('min-inline-size')
  external String get min_inline_size;
  @JS('min-inline-size')
  external set min_inline_size(String value);
  @JS('max-inline-size')
  external String get max_inline_size;
  @JS('max-inline-size')
  external set max_inline_size(String value);
  external String get placeSelf;
  external set placeSelf(String value);
  external String get alignSelf;
  external set alignSelf(String value);
  external String get justifySelf;
  external set justifySelf(String value);
  @JS('place-self')
  external String get place_self;
  @JS('place-self')
  external set place_self(String value);
  @JS('align-self')
  external String get align_self;
  @JS('align-self')
  external set align_self(String value);
  @JS('justify-self')
  external String get justify_self;
  @JS('justify-self')
  external set justify_self(String value);
  external String get positionAnchor;
  external set positionAnchor(String value);
  @JS('position-anchor')
  external String get position_anchor;
  @JS('position-anchor')
  external set position_anchor(String value);
  external String get positionArea;
  external set positionArea(String value);
  @JS('position-area')
  external String get position_area;
  @JS('position-area')
  external set position_area(String value);
}
