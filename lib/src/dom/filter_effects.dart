// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'svg.dart';

extension type SVGFilterElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates a(n) [SVGFilterElement] using the tag 'filter'.
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
extension type SVGFEBlendElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEBlendElement] using the tag 'feBlend'.
  SVGFEBlendElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feBlend',
        );

  external static int get SVG_FEBLEND_MODE_UNKNOWN;
  external static int get SVG_FEBLEND_MODE_NORMAL;
  external static int get SVG_FEBLEND_MODE_MULTIPLY;
  external static int get SVG_FEBLEND_MODE_SCREEN;
  external static int get SVG_FEBLEND_MODE_DARKEN;
  external static int get SVG_FEBLEND_MODE_LIGHTEN;
  external static int get SVG_FEBLEND_MODE_OVERLAY;
  external static int get SVG_FEBLEND_MODE_COLOR_DODGE;
  external static int get SVG_FEBLEND_MODE_COLOR_BURN;
  external static int get SVG_FEBLEND_MODE_HARD_LIGHT;
  external static int get SVG_FEBLEND_MODE_SOFT_LIGHT;
  external static int get SVG_FEBLEND_MODE_DIFFERENCE;
  external static int get SVG_FEBLEND_MODE_EXCLUSION;
  external static int get SVG_FEBLEND_MODE_HUE;
  external static int get SVG_FEBLEND_MODE_SATURATION;
  external static int get SVG_FEBLEND_MODE_COLOR;
  external static int get SVG_FEBLEND_MODE_LUMINOSITY;
  external SVGAnimatedString get in1;
  external SVGAnimatedString get in2;
  external SVGAnimatedEnumeration get mode;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedString get result;
}
extension type SVGFEColorMatrixElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEColorMatrixElement] using the tag 'feColorMatrix'.
  SVGFEColorMatrixElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feColorMatrix',
        );

  external static int get SVG_FECOLORMATRIX_TYPE_UNKNOWN;
  external static int get SVG_FECOLORMATRIX_TYPE_MATRIX;
  external static int get SVG_FECOLORMATRIX_TYPE_SATURATE;
  external static int get SVG_FECOLORMATRIX_TYPE_HUEROTATE;
  external static int get SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA;
  external SVGAnimatedString get in1;
  external SVGAnimatedEnumeration get type;
  external SVGAnimatedNumberList get values;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedString get result;
}
extension type SVGFEComponentTransferElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEComponentTransferElement] using the tag 'feComponentTransfer'.
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
extension type SVGComponentTransferFunctionElement._(JSObject _)
    implements SVGElement, JSObject {
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_TABLE;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_LINEAR;
  external static int get SVG_FECOMPONENTTRANSFER_TYPE_GAMMA;
  external SVGAnimatedEnumeration get type;
  external SVGAnimatedNumberList get tableValues;
  external SVGAnimatedNumber get slope;
  external SVGAnimatedNumber get intercept;
  external SVGAnimatedNumber get amplitude;
  external SVGAnimatedNumber get exponent;
  external SVGAnimatedNumber get offset;
}
extension type SVGFEFuncRElement._(JSObject _)
    implements SVGComponentTransferFunctionElement, JSObject {
  /// Creates a(n) [SVGFEFuncRElement] using the tag 'feFuncR'.
  SVGFEFuncRElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feFuncR',
        );
}
extension type SVGFEFuncGElement._(JSObject _)
    implements SVGComponentTransferFunctionElement, JSObject {
  /// Creates a(n) [SVGFEFuncGElement] using the tag 'feFuncG'.
  SVGFEFuncGElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feFuncG',
        );
}
extension type SVGFEFuncBElement._(JSObject _)
    implements SVGComponentTransferFunctionElement, JSObject {
  /// Creates a(n) [SVGFEFuncBElement] using the tag 'feFuncB'.
  SVGFEFuncBElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feFuncB',
        );
}
extension type SVGFEFuncAElement._(JSObject _)
    implements SVGComponentTransferFunctionElement, JSObject {
  /// Creates a(n) [SVGFEFuncAElement] using the tag 'feFuncA'.
  SVGFEFuncAElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feFuncA',
        );
}
extension type SVGFECompositeElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFECompositeElement] using the tag 'feComposite'.
  SVGFECompositeElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feComposite',
        );

  external static int get SVG_FECOMPOSITE_OPERATOR_UNKNOWN;
  external static int get SVG_FECOMPOSITE_OPERATOR_OVER;
  external static int get SVG_FECOMPOSITE_OPERATOR_IN;
  external static int get SVG_FECOMPOSITE_OPERATOR_OUT;
  external static int get SVG_FECOMPOSITE_OPERATOR_ATOP;
  external static int get SVG_FECOMPOSITE_OPERATOR_XOR;
  external static int get SVG_FECOMPOSITE_OPERATOR_ARITHMETIC;
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
extension type SVGFEConvolveMatrixElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEConvolveMatrixElement] using the tag 'feConvolveMatrix'.
  SVGFEConvolveMatrixElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feConvolveMatrix',
        );

  external static int get SVG_EDGEMODE_UNKNOWN;
  external static int get SVG_EDGEMODE_DUPLICATE;
  external static int get SVG_EDGEMODE_WRAP;
  external static int get SVG_EDGEMODE_NONE;
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
extension type SVGFEDiffuseLightingElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEDiffuseLightingElement] using the tag 'feDiffuseLighting'.
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
extension type SVGFEDistantLightElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEDistantLightElement] using the tag 'feDistantLight'.
  SVGFEDistantLightElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feDistantLight',
        );

  external SVGAnimatedNumber get azimuth;
  external SVGAnimatedNumber get elevation;
}
extension type SVGFEPointLightElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEPointLightElement] using the tag 'fePointLight'.
  SVGFEPointLightElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'fePointLight',
        );

  external SVGAnimatedNumber get x;
  external SVGAnimatedNumber get y;
  external SVGAnimatedNumber get z;
}
extension type SVGFESpotLightElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFESpotLightElement] using the tag 'feSpotLight'.
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
extension type SVGFEDisplacementMapElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEDisplacementMapElement] using the tag 'feDisplacementMap'.
  SVGFEDisplacementMapElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feDisplacementMap',
        );

  external static int get SVG_CHANNEL_UNKNOWN;
  external static int get SVG_CHANNEL_R;
  external static int get SVG_CHANNEL_G;
  external static int get SVG_CHANNEL_B;
  external static int get SVG_CHANNEL_A;
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
extension type SVGFEDropShadowElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEDropShadowElement] using the tag 'feDropShadow'.
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
extension type SVGFEFloodElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEFloodElement] using the tag 'feFlood'.
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
extension type SVGFEGaussianBlurElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEGaussianBlurElement] using the tag 'feGaussianBlur'.
  SVGFEGaussianBlurElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feGaussianBlur',
        );

  external static int get SVG_EDGEMODE_UNKNOWN;
  external static int get SVG_EDGEMODE_DUPLICATE;
  external static int get SVG_EDGEMODE_WRAP;
  external static int get SVG_EDGEMODE_NONE;
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
extension type SVGFEImageElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEImageElement] using the tag 'feImage'.
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
extension type SVGFEMergeElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEMergeElement] using the tag 'feMerge'.
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
extension type SVGFEMergeNodeElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEMergeNodeElement] using the tag 'feMergeNode'.
  SVGFEMergeNodeElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feMergeNode',
        );

  external SVGAnimatedString get in1;
}
extension type SVGFEMorphologyElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEMorphologyElement] using the tag 'feMorphology'.
  SVGFEMorphologyElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feMorphology',
        );

  external static int get SVG_MORPHOLOGY_OPERATOR_UNKNOWN;
  external static int get SVG_MORPHOLOGY_OPERATOR_ERODE;
  external static int get SVG_MORPHOLOGY_OPERATOR_DILATE;
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
extension type SVGFEOffsetElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFEOffsetElement] using the tag 'feOffset'.
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
extension type SVGFESpecularLightingElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFESpecularLightingElement] using the tag 'feSpecularLighting'.
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
extension type SVGFETileElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates a(n) [SVGFETileElement] using the tag 'feTile'.
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
extension type SVGFETurbulenceElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates a(n) [SVGFETurbulenceElement] using the tag 'feTurbulence'.
  SVGFETurbulenceElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'feTurbulence',
        );

  external static int get SVG_TURBULENCE_TYPE_UNKNOWN;
  external static int get SVG_TURBULENCE_TYPE_FRACTALNOISE;
  external static int get SVG_TURBULENCE_TYPE_TURBULENCE;
  external static int get SVG_STITCHTYPE_UNKNOWN;
  external static int get SVG_STITCHTYPE_STITCH;
  external static int get SVG_STITCHTYPE_NOSTITCH;
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
