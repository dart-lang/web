// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

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

  external SVGAnimatedEnumeration get filterUnits;
  external SVGAnimatedEnumeration get primitiveUnits;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedString get in1;
  external SVGAnimatedString get in2;
  external SVGAnimatedEnumeration get mode;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedString get in1;
  external SVGAnimatedEnumeration get type;
  external SVGAnimatedNumberList get values;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedString get in1;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedEnumeration get type;
  external SVGAnimatedNumberList get tableValues;
  external SVGAnimatedNumber get slope;
  external SVGAnimatedNumber get intercept;
  external SVGAnimatedNumber get amplitude;
  external SVGAnimatedNumber get exponent;
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

  external SVGAnimatedString get in1;
  external SVGAnimatedString get in2;
  external SVGAnimatedEnumeration get operator;
  external SVGAnimatedNumber get k1;
  external SVGAnimatedNumber get k2;
  external SVGAnimatedNumber get k3;
  external SVGAnimatedNumber get k4;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedString get in1;
  external SVGAnimatedInteger get orderX;
  external SVGAnimatedInteger get orderY;
  external SVGAnimatedNumberList get kernelMatrix;
  external SVGAnimatedNumber get divisor;
  external SVGAnimatedNumber get bias;
  external SVGAnimatedInteger get targetX;
  external SVGAnimatedInteger get targetY;
  external SVGAnimatedEnumeration get edgeMode;
  external SVGAnimatedNumber get kernelUnitLengthX;
  external SVGAnimatedNumber get kernelUnitLengthY;
  external SVGAnimatedBoolean get preserveAlpha;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get surfaceScale;
  external SVGAnimatedNumber get diffuseConstant;
  external SVGAnimatedNumber get kernelUnitLengthX;
  external SVGAnimatedNumber get kernelUnitLengthY;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedNumber get azimuth;
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

  external SVGAnimatedNumber get x;
  external SVGAnimatedNumber get y;
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

  external SVGAnimatedNumber get x;
  external SVGAnimatedNumber get y;
  external SVGAnimatedNumber get z;
  external SVGAnimatedNumber get pointsAtX;
  external SVGAnimatedNumber get pointsAtY;
  external SVGAnimatedNumber get pointsAtZ;
  external SVGAnimatedNumber get specularExponent;
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

  external SVGAnimatedString get in1;
  external SVGAnimatedString get in2;
  external SVGAnimatedNumber get scale;
  external SVGAnimatedEnumeration get xChannelSelector;
  external SVGAnimatedEnumeration get yChannelSelector;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external void setStdDeviation(
    num stdDeviationX,
    num stdDeviationY,
  );
  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get dx;
  external SVGAnimatedNumber get dy;
  external SVGAnimatedNumber get stdDeviationX;
  external SVGAnimatedNumber get stdDeviationY;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external void setStdDeviation(
    num stdDeviationX,
    num stdDeviationY,
  );
  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get stdDeviationX;
  external SVGAnimatedNumber get stdDeviationY;
  external SVGAnimatedEnumeration get edgeMode;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
  external SVGAnimatedString get crossOrigin;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedString get result;
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

  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedString get in1;
  external SVGAnimatedEnumeration get operator;
  external SVGAnimatedNumber get radiusX;
  external SVGAnimatedNumber get radiusY;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get dx;
  external SVGAnimatedNumber get dy;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get surfaceScale;
  external SVGAnimatedNumber get specularConstant;
  external SVGAnimatedNumber get specularExponent;
  external SVGAnimatedNumber get kernelUnitLengthX;
  external SVGAnimatedNumber get kernelUnitLengthY;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedString get in1;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
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

  external SVGAnimatedNumber get baseFrequencyX;
  external SVGAnimatedNumber get baseFrequencyY;
  external SVGAnimatedInteger get numOctaves;
  external SVGAnimatedNumber get seed;
  external SVGAnimatedEnumeration get stitchTiles;
  external SVGAnimatedEnumeration get type;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedString get result;
}
