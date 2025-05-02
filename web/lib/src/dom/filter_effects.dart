// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: provide_deprecation_message, unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'svg.dart';

/// The **`SVGFilterElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement).
extension type SVGFilterElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGFilterElement] using the tag 'filter'.
  SVGFilterElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'filter',
        );

  /// The **`filterUnits`** read-only property of the [SVGFilterElement]
  /// interface reflects the `filterUnits` attribute of the given  element. It
  /// takes one of the `SVG_UNIT_TYPE_*` constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get filterUnits;

  /// The **`primitiveUnits`** read-only property of the [SVGFilterElement]
  /// interface reflects the `primitiveUnits` attribute of the given  element.
  /// It takes one of the `SVG_UNIT_TYPE_*` constants defined in [SVGUnitTypes].
  external SVGAnimatedEnumeration get primitiveUnits;

  /// The **`x`** read-only property of the [SVGFilterElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `x` attribute of the  element. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFilterElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `y` attribute of the  element. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFilterElement] interface
  /// describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `width` attribute of the  element. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFilterElement] interface
  /// describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `height` attribute of the  element. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`href`** read-only property of the [SVGFilterElement] interface
  /// reflects the `href` or   attribute of the given  element.
  external SVGAnimatedString get href;
}

/// The **`SVGFEBlendElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement).
extension type SVGFEBlendElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGFEBlendElement] using the tag 'feBlend'.
  SVGFEBlendElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feBlend',
        );

  static const int SVG_FEBLEND_MODE_UNKNOWN = 0;

  static const int SVG_FEBLEND_MODE_NORMAL = 1;

  static const int SVG_FEBLEND_MODE_MULTIPLY = 2;

  static const int SVG_FEBLEND_MODE_SCREEN = 3;

  static const int SVG_FEBLEND_MODE_DARKEN = 4;

  static const int SVG_FEBLEND_MODE_LIGHTEN = 5;

  static const int SVG_FEBLEND_MODE_OVERLAY = 6;

  static const int SVG_FEBLEND_MODE_COLOR_DODGE = 7;

  static const int SVG_FEBLEND_MODE_COLOR_BURN = 8;

  static const int SVG_FEBLEND_MODE_HARD_LIGHT = 9;

  static const int SVG_FEBLEND_MODE_SOFT_LIGHT = 10;

  static const int SVG_FEBLEND_MODE_DIFFERENCE = 11;

  static const int SVG_FEBLEND_MODE_EXCLUSION = 12;

  static const int SVG_FEBLEND_MODE_HUE = 13;

  static const int SVG_FEBLEND_MODE_SATURATION = 14;

  static const int SVG_FEBLEND_MODE_COLOR = 15;

  static const int SVG_FEBLEND_MODE_LUMINOSITY = 16;

  /// The **`in1`** read-only property of the [SVGFEBlendElement] interface
  /// reflects the `in` attribute of the given element.
  external SVGAnimatedString get in1;

  /// The **`in2`** read-only property of the [SVGFEBlendElement] interface
  /// reflects the `in2` attribute of the given element.
  external SVGAnimatedString get in2;

  /// The **`mode`** read-only property of the [SVGFEBlendElement] interface
  /// reflects the `mode` attribute of the given element. It takes one of the
  /// `SVG_FEBLEND_MODE_*` constants defined on this interface.
  external SVGAnimatedEnumeration get mode;

  /// The **`x`** read-only property of the [SVGFEBlendElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `x` filter primitive attribute value. The
  /// `<feBlend>` SVG filter blends two input images together using commonly
  /// used imaging software .
  ///
  /// The attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length)
  /// or [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEBlendElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `y` filter primitive attribute value.
  /// The `<feBlend>` SVG filter blends two input images together using commonly
  /// used imaging software .
  ///
  /// The attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length)
  /// or [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the y-axis.
  /// If the `y` attribute is a percent value, the property value is a relative
  /// to the height of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEBlendElement] interface
  /// describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `width` filter primitive attribute. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  ///
  /// The `<feBlend>` SVG filter blends two input images together using commonly
  /// used imaging software .
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEBlendElement] interface
  /// describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `height` filter primitive attribute. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  ///
  /// The `<feBlend>` SVG filter blends two input images together using commonly
  /// used imaging software .
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEBlendElement] interface
  /// describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the  element's `result` attribute.
  /// The `<feBlend>` SVG filter blends two input images together using commonly
  /// used imaging software .
  ///
  /// The attribute value is a . If supplied, then graphics that result from
  /// processing this filter primitive can be referenced by an `in` attribute on
  /// a subsequent filter primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the `<feBlend>`
  /// filter will only be available for re-use as the implicit input into the
  /// next filter primitive if that filter primitive provides no value for its
  /// `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFEColorMatrixElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement).
extension type SVGFEColorMatrixElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFEColorMatrixElement] using the tag 'feColorMatrix'.
  SVGFEColorMatrixElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feColorMatrix',
        );

  static const int SVG_FECOLORMATRIX_TYPE_UNKNOWN = 0;

  static const int SVG_FECOLORMATRIX_TYPE_MATRIX = 1;

  static const int SVG_FECOLORMATRIX_TYPE_SATURATE = 2;

  static const int SVG_FECOLORMATRIX_TYPE_HUEROTATE = 3;

  static const int SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4;

  /// The **`in1`** read-only property of the [SVGFEColorMatrixElement]
  /// interface reflects the `in` attribute of the given element.
  external SVGAnimatedString get in1;

  /// The **`type`** read-only property of the [SVGFEColorMatrixElement]
  /// interface reflects the `type` attribute of the given element. It takes one
  /// of the `SVG_FECOLORMATRIX_TYPE_*` constants defined on this interface.
  external SVGAnimatedEnumeration get type;

  /// The **`values`** read-only property of the [SVGFEColorMatrixElement]
  /// interface reflects the `values` attribute of the given element.
  external SVGAnimatedNumberList get values;

  /// The **`x`** read-only property of the [SVGFEColorMatrixElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `x` filter primitive attribute value. The
  /// `<feColorMatrix>` filter applies a matrix transformation on the  color and
  /// values. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEColorMatrixElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `y` filter primitive attribute value. The
  /// `<feColorMatrix>` filter applies a matrix transformation on the  color and
  /// values. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEColorMatrixElement]
  /// interface describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `width` filter primitive attribute. The
  /// `<feColorMatrix>` filter applies a matrix transformation on the  color and
  /// values. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEColorMatrixElement]
  /// interface describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `height` filter primitive attribute. The
  /// `<feColorMatrix>` filter applies a matrix transformation on the  color and
  /// values.
  ///
  /// The attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length)
  /// or a [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage)
  /// relative to the height of the filter region. The default value is `100%`.
  /// The property value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEColorMatrixElement]
  /// interface describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the  element's `result` attribute. The `<feColorMatrix>`
  /// filter applies a matrix transformation on the  color and  values. The
  /// attribute value is a . If supplied, then graphics that result from
  /// processing this filter primitive can be referenced by an `in` attribute on
  /// a subsequent filter primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the
  /// `<feColorMatrix>` filter will only be available for re-use as the implicit
  /// input into the next filter primitive if that filter primitive provides no
  /// value for its `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFEComponentTransferElement`** interface corresponds to the
/// element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEComponentTransferElement).
extension type SVGFEComponentTransferElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFEComponentTransferElement] using the tag
  /// 'feComponentTransfer'.
  SVGFEComponentTransferElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feComponentTransfer',
        );

  /// The **`in1`** read-only property of the [SVGFEComponentTransferElement]
  /// interface reflects the `in` attribute of the given  element.
  external SVGAnimatedString get in1;

  /// The **`x`** read-only property of the [SVGFEComponentTransferElement]
  /// interface describes the horizontal coordinate of the position of an SVG
  /// filter primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `x` filter primitive attribute value. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEComponentTransferElement]
  /// interface describes the vertical coordinate of the position of an SVG
  /// filter primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `y` filter primitive attribute value. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEComponentTransferElement]
  /// interface describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `width` filter primitive attribute. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEComponentTransferElement]
  /// interface describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `height` filter primitive attribute. The
  /// `<feComponentTransfer>` filter performs component-wise color and alpha
  /// transparency remapping, allowing for brightness, contrast, color balance
  /// and threshold adjustments.
  ///
  /// The attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length)
  /// or a [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage)
  /// relative to the height of the filter region. The default value is `100%`.
  /// The property value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEComponentTransferElement]
  /// interface describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the  element's `result` attribute. The attribute value is a .
  /// If supplied, then graphics that result from processing this filter
  /// primitive can be referenced by an `in` attribute on a subsequent filter
  /// primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the
  /// `<feComponentTransfer>` filter will only be available for re-use as the
  /// implicit input into the next filter primitive if that filter primitive
  /// provides no value for its `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGComponentTransferFunctionElement`** interface defines a base
/// interface used by the component transfer function interfaces.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement).
extension type SVGComponentTransferFunctionElement._(JSObject _)
    implements SVGElement, JSObject {
  static const int SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0;

  static const int SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 1;

  static const int SVG_FECOMPONENTTRANSFER_TYPE_TABLE = 2;

  static const int SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 3;

  static const int SVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 4;

  static const int SVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 5;

  /// The **`type`** read-only property of the
  /// [SVGComponentTransferFunctionElement] interface reflects the `type`
  /// attribute of the given element. It takes one of the
  /// [`SVG_FECOMPONENTTRANSFER_TYPE_*`](/en-US/docs/Web/API/SVGComponentTransferFunctionElement#constants)
  /// constants defined on this interface.
  external SVGAnimatedEnumeration get type;

  /// The **`tableValues`** read-only property of the
  /// [SVGComponentTransferFunctionElement] interface reflects the `tableValues`
  /// attribute of the given element.
  external SVGAnimatedNumberList get tableValues;

  /// The **`slope`** read-only property of the
  /// [SVGComponentTransferFunctionElement] interface reflects the `slope`
  /// attribute of the given element.
  external SVGAnimatedNumber get slope;

  /// The **`intercept`** read-only property of the
  /// [SVGComponentTransferFunctionElement] interface reflects the `intercept`
  /// attribute of the given element.
  external SVGAnimatedNumber get intercept;

  /// The **`amplitude`** read-only property of the
  /// [SVGComponentTransferFunctionElement] interface reflects the `amplitude`
  /// attribute of the given element.
  external SVGAnimatedNumber get amplitude;

  /// The **`exponent`** read-only property of the
  /// [SVGComponentTransferFunctionElement] interface reflects the `exponent`
  /// attribute of the given element.
  external SVGAnimatedNumber get exponent;

  /// The **`offset`** read-only property of the
  /// [SVGComponentTransferFunctionElement] interface reflects the `offset`
  /// attribute of the given element.
  external SVGAnimatedNumber get offset;
}

/// The **`SVGFEFuncRElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncRElement).
extension type SVGFEFuncRElement._(JSObject _)
    implements SVGComponentTransferFunctionElement, JSObject {
  /// Creates an [SVGFEFuncRElement] using the tag 'feFuncR'.
  SVGFEFuncRElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feFuncR',
        );
}

/// The **`SVGFEFuncGElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncGElement).
extension type SVGFEFuncGElement._(JSObject _)
    implements SVGComponentTransferFunctionElement, JSObject {
  /// Creates an [SVGFEFuncGElement] using the tag 'feFuncG'.
  SVGFEFuncGElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feFuncG',
        );
}

/// The **`SVGFEFuncBElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncBElement).
extension type SVGFEFuncBElement._(JSObject _)
    implements SVGComponentTransferFunctionElement, JSObject {
  /// Creates an [SVGFEFuncBElement] using the tag 'feFuncB'.
  SVGFEFuncBElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feFuncB',
        );
}

/// The **`SVGFEFuncAElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFuncAElement).
extension type SVGFEFuncAElement._(JSObject _)
    implements SVGComponentTransferFunctionElement, JSObject {
  /// Creates an [SVGFEFuncAElement] using the tag 'feFuncA'.
  SVGFEFuncAElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feFuncA',
        );
}

/// The **`SVGFECompositeElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFECompositeElement).
extension type SVGFECompositeElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFECompositeElement] using the tag 'feComposite'.
  SVGFECompositeElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feComposite',
        );

  static const int SVG_FECOMPOSITE_OPERATOR_UNKNOWN = 0;

  static const int SVG_FECOMPOSITE_OPERATOR_OVER = 1;

  static const int SVG_FECOMPOSITE_OPERATOR_IN = 2;

  static const int SVG_FECOMPOSITE_OPERATOR_OUT = 3;

  static const int SVG_FECOMPOSITE_OPERATOR_ATOP = 4;

  static const int SVG_FECOMPOSITE_OPERATOR_XOR = 5;

  static const int SVG_FECOMPOSITE_OPERATOR_ARITHMETIC = 6;

  /// The **`in1`** read-only property of the [SVGFECompositeElement] interface
  /// reflects the `in` attribute of the given  element.
  external SVGAnimatedString get in1;

  /// The **`in2`** read-only property of the [SVGFECompositeElement] interface
  /// reflects the `in2` attribute of the given  element.
  external SVGAnimatedString get in2;

  /// The **`operator`** read-only property of the [SVGFECompositeElement]
  /// interface reflects the `operator` attribute of the given  element.
  external SVGAnimatedEnumeration get operator;

  /// The **`k1`** read-only property of the [SVGFECompositeElement] interface
  /// reflects the `k1` attribute of the given  element.
  external SVGAnimatedNumber get k1;

  /// The **`k2`** read-only property of the [SVGFECompositeElement] interface
  /// reflects the `k2` attribute of the given  element.
  external SVGAnimatedNumber get k2;

  /// The **`k3`** read-only property of the [SVGFECompositeElement] interface
  /// reflects the `k3` attribute of the given  element.
  external SVGAnimatedNumber get k3;

  /// The **`k4`** read-only property of the [SVGFECompositeElement] interface
  /// reflects the `k4` attribute of the given  element.
  external SVGAnimatedNumber get k4;

  /// The **`x`** read-only property of the [SVGFECompositeElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `x` filter primitive attribute value. The
  /// `<feComposite>` SVG filter primitive combines two input images using a
  /// Porter-Duff compositing operation. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFECompositeElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `y` filter primitive attribute value. The
  /// `<feComposite>` SVG filter primitive combines two input images using a
  /// Porter-Duff compositing operation. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFECompositeElement]
  /// interface describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `width` filter primitive attribute. The
  /// `<feComposite>` SVG filter primitive combines two input images using a
  /// Porter-Duff compositing operation. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFECompositeElement]
  /// interface describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `height` filter primitive attribute. The
  /// `<feComposite>` SVG filter primitive combines two input images using a
  /// Porter-Duff compositing operation. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFECompositeElement]
  /// interface describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the  element's `result` attribute. The `<feComposite>` SVG
  /// filter primitive combines two input images using a Porter-Duff compositing
  /// operation. The attribute value is a . If supplied, then graphics that
  /// result from processing this filter primitive can be referenced by an `in`
  /// attribute on a subsequent filter primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the `<feComposite>`
  /// filter will only be available for re-use as the implicit input into the
  /// next filter primitive if that filter primitive provides no value for its
  /// `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFEConvolveMatrixElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEConvolveMatrixElement).
extension type SVGFEConvolveMatrixElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFEConvolveMatrixElement] using the tag 'feConvolveMatrix'.
  SVGFEConvolveMatrixElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feConvolveMatrix',
        );

  static const int SVG_EDGEMODE_UNKNOWN = 0;

  static const int SVG_EDGEMODE_DUPLICATE = 1;

  static const int SVG_EDGEMODE_WRAP = 2;

  static const int SVG_EDGEMODE_NONE = 3;

  /// The **`in1`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface reflects the `in` attribute of the given  element.
  external SVGAnimatedString get in1;

  /// The **`orderX`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface reflects the `order` attribute of the given  element.
  ///
  /// It specifies how many cells (or elements) are present in each row of the
  /// kernel matrix along the X-axis.
  external SVGAnimatedInteger get orderX;

  /// The **`orderY`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface reflects the `order` attribute of the given  element.
  ///
  /// It specifies how many cells (or elements) are present in each row of the
  /// kernel matrix along the Y-axis.
  external SVGAnimatedInteger get orderY;

  /// The **`kernelMatrix`** read-only property of the
  /// [SVGFEConvolveMatrixElement] interface reflects the `kernelMatrix`
  /// attribute of the given  element.
  external SVGAnimatedNumberList get kernelMatrix;

  /// The **`divisor`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface reflects the `divisor` attribute of the given  element.
  external SVGAnimatedNumber get divisor;

  /// The **`bias`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface reflects the `bias` attribute of the given  element.
  external SVGAnimatedNumber get bias;

  /// The **`targetX`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface reflects the `targetX` attribute of the given  element.
  external SVGAnimatedInteger get targetX;

  /// The **`targetY`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface reflects the `targetY` attribute of the given  element.
  external SVGAnimatedInteger get targetY;

  /// The **`edgeMode`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface reflects the `edgeMode` attribute of the given  element. The
  /// `SVG_EDGEMODE_*` constants defined on this interface are represented by
  /// the numbers 1 through 3, where the default `duplicate` is `1`, `wrap` is
  /// `2`, and `none` is `3`.
  external SVGAnimatedEnumeration get edgeMode;

  /// The **`kernelUnitLengthX`** read-only property of the
  /// [SVGFEConvolveMatrixElement] interface reflects the `kernelUnitLength`
  /// attribute of the given  element.
  ///
  /// It specifies the length in user units for each cell of the convolution
  /// matrix along the X-axis.
  external SVGAnimatedNumber get kernelUnitLengthX;

  /// The **`kernelUnitLengthY`** read-only property of the
  /// [SVGFEConvolveMatrixElement] interface reflects the `kernelUnitLength`
  /// attribute of the given  element.
  ///
  /// It specifies the length in user units for each cell of the convolution
  /// matrix along the Y-axis.
  external SVGAnimatedNumber get kernelUnitLengthY;

  /// The **`preserveAlpha`** read-only property of the
  /// [SVGFEConvolveMatrixElement] interface reflects the `preserveAlpha`
  /// attribute of the given  element.
  external SVGAnimatedBoolean get preserveAlpha;

  /// The **`x`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface describes the horizontal coordinate of the position of an SVG
  /// filter primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `x` filter primitive attribute value. The
  /// `<feConvolveMatrix>` filter applies a matrix convolution effect, combining
  /// pixels in the input image with neighboring pixels to produce a convolution
  /// effect such as blurring, edge detection, sharpening, embossing or
  /// beveling. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface describes the vertical coordinate of the position of an SVG
  /// filter primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `y` filter primitive attribute value. The
  /// `<feConvolveMatrix>` filter applies a matrix convolution effect, combining
  /// pixels in the input image with neighboring pixels to produce a convolution
  /// effect such as blurring, edge detection, sharpening, embossing or
  /// beveling.
  ///
  /// The attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length)
  /// or [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `width` filter primitive attribute. The
  /// `<feConvolveMatrix>` filter applies a matrix convolution effect, combining
  /// pixels in the input image with neighboring pixels to produce a convolution
  /// effect such as blurring, edge detection, sharpening, embossing or
  /// beveling. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `height` filter primitive attribute. The
  /// `<feConvolveMatrix>` filter applies a matrix convolution effect, combining
  /// pixels in the input image with neighboring pixels to produce a convolution
  /// effect such as blurring, edge detection, sharpening, embossing or
  /// beveling. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEConvolveMatrixElement]
  /// interface describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the  element's `result` attribute. The `<feConvolveMatrix>`
  /// filter applies a matrix convolution effect, combining pixels in the input
  /// image with neighboring pixels to produce a convolution effect such as
  /// blurring, edge detection, sharpening, embossing or beveling.
  ///
  /// The attribute value is a . If supplied, then graphics that result from
  /// processing this filter primitive can be referenced by an `in` attribute on
  /// a subsequent filter primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the
  /// `<feConvolveMatrix>` filter will only be available for re-use as the
  /// implicit input into the next filter primitive if that filter primitive
  /// provides no value for its `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFEDiffuseLightingElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDiffuseLightingElement).
extension type SVGFEDiffuseLightingElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFEDiffuseLightingElement] using the tag
  /// 'feDiffuseLighting'.
  SVGFEDiffuseLightingElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feDiffuseLighting',
        );

  /// The **`in1`** read-only property of the [SVGFEDiffuseLightingElement]
  /// interface reflects the `in` attribute of the given  element.
  external SVGAnimatedString get in1;

  /// The **`surfaceScale`** read-only property of the
  /// [SVGFEDiffuseLightingElement] interface reflects the `surfaceScale`
  /// attribute of the given  element.
  external SVGAnimatedNumber get surfaceScale;

  /// The **`diffuseConstant`** read-only property of the
  /// [SVGFEDiffuseLightingElement] interface reflects the `diffuseConstant`
  /// attribute of the given  element.
  external SVGAnimatedNumber get diffuseConstant;

  /// The **`kernelUnitLengthX`** read-only property of the
  /// [SVGFEDiffuseLightingElement] interface reflects the X component of the
  /// `kernelUnitLength` attribute of the given  element.
  external SVGAnimatedNumber get kernelUnitLengthX;

  /// The **`kernelUnitLengthY`** read-only property of the
  /// [SVGFEDiffuseLightingElement] interface reflects the Y component of the
  /// `kernelUnitLength` attribute of the given  element.
  external SVGAnimatedNumber get kernelUnitLengthY;

  /// The **`x`** read-only property of the [SVGFEDiffuseLightingElement]
  /// interface describes the horizontal coordinate of the position of an SVG
  /// filter primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `x` filter primitive attribute value. The
  /// filter lights an image using the alpha channel as a bump map. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEDiffuseLightingElement]
  /// interface describes the vertical coordinate of the position of an SVG
  /// filter primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `y` filter primitive attribute value. The
  /// filter lights an image using the alpha channel as a bump map. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEDiffuseLightingElement]
  /// interface describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `width` filter primitive attribute. The filter
  /// lights an image using the alpha channel as a bump map. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEDiffuseLightingElement]
  /// interface describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `height` filter primitive attribute. The filter
  /// lights an image using the alpha channel as a bump map. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEDiffuseLightingElement]
  /// interface describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the  element's `result` attribute. The filter lights an image
  /// using the alpha channel as a bump map. The attribute value is a . If
  /// supplied, then graphics that result from processing this filter primitive
  /// can be referenced by an `in` attribute on a subsequent filter primitive
  /// within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the
  /// `<feDiffuseLighting>` filter will only be available for re-use as the
  /// implicit input into the next filter primitive if that filter primitive
  /// provides no value for its `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFEDistantLightElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDistantLightElement).
extension type SVGFEDistantLightElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFEDistantLightElement] using the tag 'feDistantLight'.
  SVGFEDistantLightElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feDistantLight',
        );

  /// The **`azimuth`** read-only property of the [SVGFEDistantLightElement]
  /// interface reflects the `azimuth` attribute of the given  element.
  external SVGAnimatedNumber get azimuth;

  /// The **`elevation`** read-only property of the [SVGFEDistantLightElement]
  /// interface reflects the `elevation` attribute of the given  element.
  external SVGAnimatedNumber get elevation;
}

/// The **`SVGFEPointLightElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEPointLightElement).
extension type SVGFEPointLightElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFEPointLightElement] using the tag 'fePointLight'.
  SVGFEPointLightElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'fePointLight',
        );

  /// The **`x`** read-only property of the [SVGFEPointLightElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedNumber].
  ///
  /// It reflects the `x` attribute of the  element, which can be used to define
  /// the light source in a point light effect. The attribute is a
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The default value
  /// is `0`.
  external SVGAnimatedNumber get x;

  /// The **`y`** read-only property of the [SVGFEPointLightElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedNumber].
  ///
  /// It reflects the `y` attribute of the  element, which can be used to define
  /// the light source in a point light effect. The attribute is a
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The default value
  /// is `0`.
  external SVGAnimatedNumber get y;

  /// The **`z`** read-only property of the [SVGFEPointLightElement] interface
  /// describes the z-axis value of the position of an SVG filter primitive as a
  /// [SVGAnimatedNumber]. A positive Z-axis comes out towards the person
  /// viewing the content.
  ///
  /// It reflects the `z` attribute of the  element, which can be used to define
  /// the light source in a point light effect. The attribute is a
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The default value
  /// is `0`.
  external SVGAnimatedNumber get z;
}

/// The **`SVGFESpotLightElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpotLightElement).
extension type SVGFESpotLightElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFESpotLightElement] using the tag 'feSpotLight'.
  SVGFESpotLightElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feSpotLight',
        );

  /// The **`x`** read-only property of the [SVGFESpotLightElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedNumber].
  ///
  /// It reflects the `x` attribute of the  element., which can be used to
  /// define the light source in a spotlight effect. The attribute is a
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The default value
  /// is `0`.
  external SVGAnimatedNumber get x;

  /// The **`y`** read-only property of the [SVGFESpotLightElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedNumber].
  ///
  /// It reflects the `y` attribute of the  element., which can be used to
  /// define the light source in a spotlight effect. The attribute is a
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The default value
  /// is `0`.
  external SVGAnimatedNumber get y;

  /// The **`z`** read-only property of the [SVGFESpotLightElement] interface
  /// describes the z-axis value of the position of an SVG filter primitive as a
  /// [SVGAnimatedNumber]. A positive Z-axis comes out towards the person
  /// viewing the content.
  ///
  /// It reflects the `z` attribute of the  element, which can be used to define
  /// the light source in a spotlight effect. The attribute is a
  /// [`<number>`](/en-US/docs/Web/SVG/Content_type#number). The default value
  /// is `0`.
  external SVGAnimatedNumber get z;

  /// The **`pointsAtX`** read-only property of the [SVGFESpotLightElement]
  /// interface reflects the `pointsAtX` attribute of the given  element.
  external SVGAnimatedNumber get pointsAtX;

  /// The **`pointsAtY`** read-only property of the [SVGFESpotLightElement]
  /// interface reflects the `pointsAtY` attribute of the given  element.
  external SVGAnimatedNumber get pointsAtY;

  /// The **`pointsAtZ`** read-only property of the [SVGFESpotLightElement]
  /// interface reflects the `pointsAtZ` attribute of the given  element.
  external SVGAnimatedNumber get pointsAtZ;

  /// The **`specularExponent`** read-only property of the
  /// [SVGFESpotLightElement] interface reflects the `specularExponent`
  /// attribute of the given  element.
  external SVGAnimatedNumber get specularExponent;

  /// The **`limitingConeAngle`** read-only property of the
  /// [SVGFESpotLightElement] interface reflects the `limitingConeAngle`
  /// attribute of the given  element.
  external SVGAnimatedNumber get limitingConeAngle;
}

/// The **`SVGFEDisplacementMapElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement).
extension type SVGFEDisplacementMapElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFEDisplacementMapElement] using the tag
  /// 'feDisplacementMap'.
  SVGFEDisplacementMapElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feDisplacementMap',
        );

  static const int SVG_CHANNEL_UNKNOWN = 0;

  static const int SVG_CHANNEL_R = 1;

  static const int SVG_CHANNEL_G = 2;

  static const int SVG_CHANNEL_B = 3;

  static const int SVG_CHANNEL_A = 4;

  /// The **`in1`** read-only property of the [SVGFEDisplacementMapElement]
  /// interface reflects the `in` attribute of the given  element.
  external SVGAnimatedString get in1;

  /// The **`in2`** read-only property of the [SVGFEDisplacementMapElement]
  /// interface reflects the `in2` attribute of the given  element.
  external SVGAnimatedString get in2;

  /// The **`scale`** read-only property of the [SVGFEDisplacementMapElement]
  /// interface reflects the `scale` attribute of the given  element.
  external SVGAnimatedNumber get scale;

  /// The **`xChannelSelector`** read-only property of the
  /// [SVGFEDisplacementMapElement] interface reflects the `xChannelSelector`
  /// attribute of the given  element. It takes one of the `SVG_CHANNEL_*`
  /// constants defined on this interface.
  external SVGAnimatedEnumeration get xChannelSelector;

  /// The **`yChannelSelector`** read-only property of the
  /// [SVGFEDisplacementMapElement] interface reflects the `yChannelSelector`
  /// attribute of the given  element. It takes one of the `SVG_CHANNEL_*`
  /// constants defined on this interface.
  external SVGAnimatedEnumeration get yChannelSelector;

  /// The **`x`** read-only property of the [SVGFEDisplacementMapElement]
  /// interface describes the horizontal coordinate of the position of an SVG
  /// filter primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `x` filter primitive attribute value. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEDisplacementMapElement]
  /// interface describes the vertical coordinate of the position of an SVG
  /// filter primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the  element's `y` filter primitive attribute value. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEDisplacementMapElement]
  /// interface describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `width` filter primitive attribute. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEDisplacementMapElement]
  /// interface describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the  element's `height` filter primitive attribute. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEDisplacementMapElement]
  /// interface describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the  element's `result` attribute. The attribute value is a .
  /// If supplied, then graphics that result from processing this filter
  /// primitive can be referenced by an `in` attribute on a subsequent filter
  /// primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the
  /// `<feDisplacementMap>` filter will only be available for re-use as the
  /// implicit input into the next filter primitive if that filter primitive
  /// provides no value for its `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFEDropShadowElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement).
extension type SVGFEDropShadowElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFEDropShadowElement] using the tag 'feDropShadow'.
  SVGFEDropShadowElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feDropShadow',
        );

  /// The `setStdDeviation()` method of the [SVGFEDropShadowElement] interface
  /// sets the values for the `stdDeviation` attribute.
  external void setStdDeviation(
    num stdDeviationX,
    num stdDeviationY,
  );

  /// The **`in1`** read-only property of the [SVGFEDropShadowElement] interface
  /// reflects the `in` attribute of the given  element.
  external SVGAnimatedString get in1;

  /// The **`dx`** read-only property of the [SVGFEDropShadowElement] interface
  /// reflects the `dx` attribute of the given  element.
  external SVGAnimatedNumber get dx;

  /// The **`dy`** read-only property of the [SVGFEDropShadowElement] interface
  /// reflects the `dy` attribute of the given  element.
  external SVGAnimatedNumber get dy;

  /// The **`stdDeviationX`** read-only property of the [SVGFEDropShadowElement]
  /// interface reflects the (possibly automatically computed) X component of
  /// the `stdDeviation` attribute of the given  element.
  external SVGAnimatedNumber get stdDeviationX;

  /// The **`stdDeviationY`** read-only property of the [SVGFEDropShadowElement]
  /// interface reflects the (possibly automatically computed) Y component of
  /// the `stdDeviation` attribute of the given  element.
  external SVGAnimatedNumber get stdDeviationY;

  /// The **`x`** read-only property of the [SVGFEDropShadowElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `x` attribute of the  element, which creates a drop shadow
  /// of an input image. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEDropShadowElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `y` attribute of the  element, which creates a drop shadow
  /// of an input image. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEDropShadowElement]
  /// interface describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `width` filter primitive attribute. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEDropShadowElement]
  /// interface describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `height` filter primitive attribute. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEDropShadowElement]
  /// interface describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the `result` attribute. The attribute value is a . If
  /// supplied, then graphics that result from processing this filter primitive
  /// can be referenced by an `in` attribute on a subsequent filter primitive
  /// within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the `<feDropShadow>`
  /// filter will only be available for re-use as the implicit input into the
  /// next filter primitive if that filter primitive provides no value for its
  /// `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFEFloodElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEFloodElement).
extension type SVGFEFloodElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGFEFloodElement] using the tag 'feFlood'.
  SVGFEFloodElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feFlood',
        );

  /// The **`x`** read-only property of the [SVGFEFloodElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `x` attribute of the  element, which fills an SVG filter
  /// subregion with the color and opacity defined by  and . The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEFloodElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `y` attribute of the  element, which fills an SVG filter
  /// subregion with the color and opacity defined by  and . The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is relative to the height
  /// of the filter region in user coordinate system units. The default value is
  /// `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEFloodElement] interface
  /// describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `width` attribute of the  element, which fills an SVG
  /// filter subregion with the color and opacity defined by  and . The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEFloodElement] interface
  /// describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `height` attribute of the  element, which fills an SVG
  /// filter subregion with the color and opacity defined by  and . The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEFloodElement] interface
  /// describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the `result` attribute of the  element, which fills an SVG
  /// filter subregion with the color and opacity defined by  and . The
  /// attribute value is a . If supplied, then graphics that result from
  /// processing this filter primitive can be referenced by an `in` attribute on
  /// a subsequent filter primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the `<feFlood>`
  /// filter will only be available for re-use as the implicit input into the
  /// next filter primitive if that filter primitive provides no value for its
  /// `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFEGaussianBlurElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement).
extension type SVGFEGaussianBlurElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFEGaussianBlurElement] using the tag 'feGaussianBlur'.
  SVGFEGaussianBlurElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feGaussianBlur',
        );

  static const int SVG_EDGEMODE_UNKNOWN = 0;

  static const int SVG_EDGEMODE_DUPLICATE = 1;

  static const int SVG_EDGEMODE_WRAP = 2;

  static const int SVG_EDGEMODE_NONE = 3;

  /// The `setStdDeviation()` method of the [SVGFEGaussianBlurElement] interface
  /// sets the values for the `stdDeviation` attribute.
  external void setStdDeviation(
    num stdDeviationX,
    num stdDeviationY,
  );

  /// The **`in1`** read-only property of the [SVGFEGaussianBlurElement]
  /// interface reflects the `in` attribute of the given  element.
  external SVGAnimatedString get in1;

  /// The **`stdDeviationX`** read-only property of the
  /// [SVGFEGaussianBlurElement] interface reflects the (possibly automatically
  /// computed) X component of the `stdDeviation` attribute of the given
  /// element.
  external SVGAnimatedNumber get stdDeviationX;

  /// The **`stdDeviationY`** read-only property of the
  /// [SVGFEGaussianBlurElement] interface reflects the (possibly automatically
  /// computed) Y component of the `stdDeviation` attribute of the given
  /// element.
  external SVGAnimatedNumber get stdDeviationY;
  external SVGAnimatedEnumeration get edgeMode;

  /// The **`x`** read-only property of the [SVGFEGaussianBlurElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `x` attribute of the  element, which blurs an input image.
  /// The attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length)
  /// or [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEGaussianBlurElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `y` attribute of the  element, which blurs an input image.
  /// The attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length)
  /// or [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is relative to the height
  /// of the filter region in user coordinate system units. The default value is
  /// `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEGaussianBlurElement]
  /// interface describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `width` attribute of the  element, which blurs an input
  /// image. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEGaussianBlurElement]
  /// interface describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `height` attribute of the  element, which blurs an input
  /// image. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEGaussianBlurElement]
  /// interface describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the `result` attribute of the  element, which blurs an input
  /// image. The attribute value is a . If supplied, then graphics that result
  /// from processing this filter primitive can be referenced by an `in`
  /// attribute on a subsequent filter primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the
  /// `<feGaussianBlur>` filter will only be available for re-use as the
  /// implicit input into the next filter primitive if that filter primitive
  /// provides no value for its `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFEImageElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEImageElement).
extension type SVGFEImageElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGFEImageElement] using the tag 'feImage'.
  SVGFEImageElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feImage',
        );

  /// The **`preserveAspectRatio`** read-only property of the
  /// [SVGFEImageElement] interface reflects the `preserveAspectRatio` attribute
  /// of the given  element.
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
  external SVGAnimatedString get crossOrigin;

  /// The **`x`** read-only property of the [SVGFEImageElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `x` attribute of the  element, which fetches image data
  /// from an external source and provides the pixel data as output. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEImageElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `y` attribute of the  element, which fetches image data
  /// from an external source and provides the pixel data as output. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEImageElement] interface
  /// describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `width` attribute of the  element, which fetches image
  /// data from an external source and provides the pixel data as output. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEImageElement] interface
  /// describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `height` attribute of the  element, which fetches image
  /// data from an external source and provides the pixel data as output. The
  /// attribute is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEImageElement] interface
  /// describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the `result` attribute of the  element, which fetches image
  /// data from an external source and provides the pixel data as output. The
  /// attribute value is a . If supplied, then graphics that result from
  /// processing this filter primitive can be referenced by an `in` attribute on
  /// a subsequent filter primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the `<feImage>`
  /// filter will only be available for re-use as the implicit input into the
  /// next filter primitive if that filter primitive provides no value for its
  /// `in` attribute.
  external SVGAnimatedString get result;

  /// The **`href`** read-only property of the [SVGFEImageElement] interface
  /// reflects the `href` or   attribute of the given  element.
  external SVGAnimatedString get href;
}

/// The **`SVGFEMergeElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMergeElement).
extension type SVGFEMergeElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGFEMergeElement] using the tag 'feMerge'.
  SVGFEMergeElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feMerge',
        );

  /// The **`x`** read-only property of the [SVGFEMergeElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `x` attribute of the  element. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEMergeElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `y` attribute of the  element. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEMergeElement] interface
  /// describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `width` attribute of the  element. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEMergeElement] interface
  /// describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `height` attribute of the  element. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEMergeElement] interface
  /// describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the `result` attribute of the  element. The attribute value is
  /// a . If supplied, then graphics that result from processing this filter
  /// primitive can be referenced by an `in` attribute on a subsequent filter
  /// primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the `<feMerge>`
  /// filter will only be available for re-use as the implicit input into the
  /// next filter primitive if that filter primitive provides no value for its
  /// `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFEMergeNodeElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMergeNodeElement).
extension type SVGFEMergeNodeElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFEMergeNodeElement] using the tag 'feMergeNode'.
  SVGFEMergeNodeElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feMergeNode',
        );

  /// The **`in1`** read-only property of the [SVGFEMergeNodeElement] interface
  /// reflects the `in` attribute of the given  element.
  external SVGAnimatedString get in1;
}

/// The **`SVGFEMorphologyElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement).
extension type SVGFEMorphologyElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFEMorphologyElement] using the tag 'feMorphology'.
  SVGFEMorphologyElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feMorphology',
        );

  static const int SVG_MORPHOLOGY_OPERATOR_UNKNOWN = 0;

  static const int SVG_MORPHOLOGY_OPERATOR_ERODE = 1;

  static const int SVG_MORPHOLOGY_OPERATOR_DILATE = 2;

  /// The **`in1`** read-only property of the [SVGFEMorphologyElement] interface
  /// reflects the `in` attribute of the given  element.
  external SVGAnimatedString get in1;

  /// The **`operator`** read-only property of the [SVGFEMorphologyElement]
  /// interface reflects the `operator` attribute of the given  element. It
  /// takes one of the `SVG_MORPHOLOGY_OPERATOR_*` constants defined on this
  /// interface.
  external SVGAnimatedEnumeration get operator;

  /// The **`radiusX`** read-only property of the [SVGFEMorphologyElement]
  /// interface reflects the X component of the `radius` attribute of the given
  /// element.
  external SVGAnimatedNumber get radiusX;

  /// The **`radiusY`** read-only property of the [SVGFEMorphologyElement]
  /// interface reflects the Y component of the `radius` attribute of the given
  /// element.
  external SVGAnimatedNumber get radiusY;

  /// The **`x`** read-only property of the [SVGFEMorphologyElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `x` attribute of the  element. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEMorphologyElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `y` attribute of the  element. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEMorphologyElement]
  /// interface describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `width` attribute of the  element. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEMorphologyElement]
  /// interface describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `height` attribute of the  element. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEMorphologyElement]
  /// interface describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the `result` attribute of the  element. The attribute value is
  /// a . If supplied, then graphics that result from processing this filter
  /// primitive can be referenced by an `in` attribute on a subsequent filter
  /// primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the `<feMorphology>`
  /// filter will only be available for re-use as the implicit input into the
  /// next filter primitive if that filter primitive provides no value for its
  /// `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFEOffsetElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement).
extension type SVGFEOffsetElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFEOffsetElement] using the tag 'feOffset'.
  SVGFEOffsetElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feOffset',
        );

  /// The **`in1`** read-only property of the [SVGFEOffsetElement] interface
  /// reflects the `in` attribute of the given  element.
  external SVGAnimatedString get in1;

  /// The **`dx`** read-only property of the [SVGFEOffsetElement] interface
  /// reflects the `dx` attribute of the given  element.
  external SVGAnimatedNumber get dx;

  /// The **`dy`** read-only property of the [SVGFEOffsetElement] interface
  /// reflects the `dy` attribute of the given  element.
  external SVGAnimatedNumber get dy;

  /// The **`x`** read-only property of the [SVGFEOffsetElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `x` attribute of the  element, which offsets the input
  /// image relative to its current position. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFEOffsetElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `y` attribute of the  element, which offsets the input
  /// image relative to its current position. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFEOffsetElement] interface
  /// describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `width` attribute of the  element, which offsets the input
  /// image relative to its current position. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFEOffsetElement] interface
  /// describes the vertical size of an SVG filter primitive as an
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `height` attribute of the  element, which offsets the
  /// input image relative to its current position. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFEOffsetElement] interface
  /// describes the assigned name of an SVG filter primitive as an
  /// [SVGAnimatedString].
  ///
  /// It reflects the `result` attribute of the  element, which offsets the
  /// input image relative to its current position. The attribute value is a .
  /// If supplied, then graphics that result from processing this filter
  /// primitive can be referenced by an `in` attribute on a subsequent filter
  /// primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the `<feOffset>`
  /// filter will only be available for re-use as the implicit input into the
  /// next filter primitive if that filter primitive provides no value for its
  /// `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFESpecularLightingElement`** interface corresponds to the
/// element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFESpecularLightingElement).
extension type SVGFESpecularLightingElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFESpecularLightingElement] using the tag
  /// 'feSpecularLighting'.
  SVGFESpecularLightingElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feSpecularLighting',
        );

  /// The **`in1`** read-only property of the [SVGFESpecularLightingElement]
  /// interface reflects the `in` attribute of the given  element.
  external SVGAnimatedString get in1;

  /// The **`surfaceScale`** read-only property of the
  /// [SVGFESpecularLightingElement] interface reflects the `surfaceScale`
  /// attribute of the given  element.
  external SVGAnimatedNumber get surfaceScale;

  /// The **`specularConstant`** read-only property of the
  /// [SVGFESpecularLightingElement] interface reflects the `specularConstant`
  /// attribute of the given  element.
  external SVGAnimatedNumber get specularConstant;

  /// The **`specularExponent`** read-only property of the
  /// [SVGFESpecularLightingElement] interface reflects the `specularExponent`
  /// attribute of the given  element.
  external SVGAnimatedNumber get specularExponent;
  external SVGAnimatedNumber get kernelUnitLengthX;
  external SVGAnimatedNumber get kernelUnitLengthY;

  /// The **`x`** read-only property of the [SVGFESpecularLightingElement]
  /// interface describes the horizontal coordinate of the position of an SVG
  /// filter primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `x` attribute of the  element, which lights a source
  /// graphic using the alpha channel as a bump map. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFESpecularLightingElement]
  /// interface describes the vertical coordinate of the position of an SVG
  /// filter primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `y` attribute of the  element, which lights a source
  /// graphic using the alpha channel as a bump map. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFESpecularLightingElement]
  /// interface describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `width` attribute of the  element, which lights a source
  /// graphic using the alpha channel as a bump map. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFESpecularLightingElement]
  /// interface describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `height` attribute of the  element, which lights a source
  /// graphic using the alpha channel as a bump map. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFESpecularLightingElement]
  /// interface describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the `result` attribute of the  element, which lights a source
  /// graphic using the alpha channel as a bump map. The attribute value is a .
  /// If supplied, then graphics that result from processing this filter
  /// primitive can be referenced by an `in` attribute on a subsequent filter
  /// primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the
  /// `<feSpecularLighting>` filter will only be available for re-use as the
  /// implicit input into the next filter primitive if that filter primitive
  /// provides no value for its `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFETileElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFETileElement).
extension type SVGFETileElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGFETileElement] using the tag 'feTile'.
  SVGFETileElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feTile',
        );

  /// The **`in1`** read-only property of the [SVGFETileElement] interface
  /// reflects the `in` attribute of the given  element.
  external SVGAnimatedString get in1;

  /// The **`x`** read-only property of the [SVGFETileElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as an [SVGAnimatedLength].
  ///
  /// It reflects the `x` attribute of the  element, which fills a target
  /// rectangle with a repeated, tiled pattern of an input image. The attribute
  /// is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFETileElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as an [SVGAnimatedLength].
  ///
  /// It reflects the `y` attribute of the  element, which fills a target
  /// rectangle with a repeated, tiled pattern of an input image. The attribute
  /// is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFETileElement] interface
  /// describes the horizontal size of an SVG filter primitive as an
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `width` attribute of the  element, which fills a target
  /// rectangle with a repeated, tiled pattern of an input image. The attribute
  /// is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFETileElement] interface
  /// describes the vertical size of an SVG filter primitive as an
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `height` attribute of the  element, which fills a target
  /// rectangle with a repeated, tiled pattern of an input image. The attribute
  /// is a [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFETileElement] interface
  /// describes the assigned name of an SVG filter primitive as an
  /// [SVGAnimatedString].
  ///
  /// It reflects the `result` attribute of the  element, which fills a target
  /// rectangle with a repeated, tiled pattern of an input image. The attribute
  /// value is a . If supplied, then graphics that result from processing this
  /// filter primitive can be referenced by an `in` attribute on a subsequent
  /// filter primitive within the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the `<feTile>`
  /// filter will only be available for re-use as the implicit input into the
  /// next filter primitive if that filter primitive provides no value for its
  /// `in` attribute.
  external SVGAnimatedString get result;
}

/// The **`SVGFETurbulenceElement`** interface corresponds to the  element.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement).
extension type SVGFETurbulenceElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGFETurbulenceElement] using the tag 'feTurbulence'.
  SVGFETurbulenceElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feTurbulence',
        );

  static const int SVG_TURBULENCE_TYPE_UNKNOWN = 0;

  static const int SVG_TURBULENCE_TYPE_FRACTALNOISE = 1;

  static const int SVG_TURBULENCE_TYPE_TURBULENCE = 2;

  static const int SVG_STITCHTYPE_UNKNOWN = 0;

  static const int SVG_STITCHTYPE_STITCH = 1;

  static const int SVG_STITCHTYPE_NOSTITCH = 2;

  /// The **`baseFrequencyX`** read-only property of the
  /// [SVGFETurbulenceElement] interface reflects the X component of the
  /// `baseFrequency` attribute of the given  element.
  external SVGAnimatedNumber get baseFrequencyX;

  /// The **`baseFrequencyY`** read-only property of the
  /// [SVGFETurbulenceElement] interface reflects the Y component of the
  /// `baseFrequency` attribute of the given  element.
  external SVGAnimatedNumber get baseFrequencyY;

  /// The **`numOctaves`** read-only property of the [SVGFETurbulenceElement]
  /// interface reflects the `numOctaves` attribute of the given  element.
  external SVGAnimatedInteger get numOctaves;

  /// The **`seed`** read-only property of the [SVGFETurbulenceElement]
  /// interface reflects the `seed` attribute of the given  element.
  ///
  /// It sets a numeric seed for the random generation of the fractal noise or
  /// turbulence effect.
  external SVGAnimatedNumber get seed;

  /// The **`stitchTiles`** read-only property of the [SVGFETurbulenceElement]
  /// interface reflects the `stitchTiles` attribute of the given  element. It
  /// takes one of the `SVG_STITCHTYPE_*` constants defined on this interface.
  external SVGAnimatedEnumeration get stitchTiles;

  /// The **`type`** read-only property of the [SVGFETurbulenceElement]
  /// interface reflects the `type` attribute of the given  element. It takes
  /// one of the `SVG_TURBULENCE_TYPE_*` constants defined on this interface.
  external SVGAnimatedEnumeration get type;

  /// The **`x`** read-only property of the [SVGFETurbulenceElement] interface
  /// describes the horizontal coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `x` attribute of the  element, which allows the synthesis
  /// of artificial textures. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the user coordinate system along the x-axis.
  /// If the `x` attribute is a percent value, the property value is relative to
  /// the width of the filter region in user coordinate system units. The
  /// default value is `0`.
  external SVGAnimatedLength get x;

  /// The **`y`** read-only property of the [SVGFETurbulenceElement] interface
  /// describes the vertical coordinate of the position of an SVG filter
  /// primitive as a [SVGAnimatedLength].
  ///
  /// It reflects the `y` attribute of the  element, which allows the synthesis
  /// of artificial textures. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage). The
  /// `<coordinate>` is a length in the user coordinate system that is the given
  /// distance from the origin of the filter along the y-axis. If the `y`
  /// attribute is a percent value, the property value is a relative to the
  /// height of the filter region in user coordinate system units. The default
  /// value is `0`.
  external SVGAnimatedLength get y;

  /// The **`width`** read-only property of the [SVGFETurbulenceElement]
  /// interface describes the horizontal size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `width` attribute of the  element, which allows the
  /// synthesis of artificial textures. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the width of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get width;

  /// The **`height`** read-only property of the [SVGFETurbulenceElement]
  /// interface describes the vertical size of an SVG filter primitive as a
  /// [SVGAnimatedLength].
  ///
  /// It reflects the `height` attribute of the  element, which allows the
  /// synthesis of artificial textures. The attribute is a
  /// [`<length>`](/en-US/docs/Web/SVG/Content_type#length) or a
  /// [`<percentage>`](/en-US/docs/Web/SVG/Content_type#percentage) relative to
  /// the height of the filter region. The default value is `100%`. The property
  /// value is a length in user coordinate system units.
  external SVGAnimatedLength get height;

  /// The **`result`** read-only property of the [SVGFETurbulenceElement]
  /// interface describes the assigned name of an SVG filter primitive as a
  /// [SVGAnimatedString].
  ///
  /// It reflects the `result` attribute of the  element, which allows the
  /// synthesis of artificial textures. The attribute value is a . If supplied,
  /// then graphics that result from processing this filter primitive can be
  /// referenced by an `in` attribute on a subsequent filter primitive within
  /// the same  element.
  ///
  /// If no `result` attribute is defined, the filter's `result.baseVal` and
  /// `result.animVal` are empty strings, and the output of the `<feTurbulence>`
  /// filter will only be available for re-use as the implicit input into the
  /// next filter primitive if that filter primitive provides no value for its
  /// `in` attribute.
  external SVGAnimatedString get result;
}
