// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/svg.dart';

@JS('SVGFilterElement')
@staticInterop
class SVGFilterElement extends SVGElement implements SVGURIReference {
  external factory SVGFilterElement();
}

extension SVGFilterElementExtension on SVGFilterElement {
  external SVGAnimatedEnumeration get filterUnits;
  external SVGAnimatedEnumeration get primitiveUnits;
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
}

@JS('SVGFilterPrimitiveStandardAttributes')
@staticInterop
class SVGFilterPrimitiveStandardAttributes {
  external factory SVGFilterPrimitiveStandardAttributes();
}

extension SVGFilterPrimitiveStandardAttributesExtension
    on SVGFilterPrimitiveStandardAttributes {
  external SVGAnimatedLength get x;
  external SVGAnimatedLength get y;
  external SVGAnimatedLength get width;
  external SVGAnimatedLength get height;
  external SVGAnimatedString get result;
}

@JS('SVGFEBlendElement')
@staticInterop
class SVGFEBlendElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEBlendElement();

  external static JSNumber get SVG_FEBLEND_MODE_UNKNOWN;
  external static JSNumber get SVG_FEBLEND_MODE_NORMAL;
  external static JSNumber get SVG_FEBLEND_MODE_MULTIPLY;
  external static JSNumber get SVG_FEBLEND_MODE_SCREEN;
  external static JSNumber get SVG_FEBLEND_MODE_DARKEN;
  external static JSNumber get SVG_FEBLEND_MODE_LIGHTEN;
  external static JSNumber get SVG_FEBLEND_MODE_OVERLAY;
  external static JSNumber get SVG_FEBLEND_MODE_COLOR_DODGE;
  external static JSNumber get SVG_FEBLEND_MODE_COLOR_BURN;
  external static JSNumber get SVG_FEBLEND_MODE_HARD_LIGHT;
  external static JSNumber get SVG_FEBLEND_MODE_SOFT_LIGHT;
  external static JSNumber get SVG_FEBLEND_MODE_DIFFERENCE;
  external static JSNumber get SVG_FEBLEND_MODE_EXCLUSION;
  external static JSNumber get SVG_FEBLEND_MODE_HUE;
  external static JSNumber get SVG_FEBLEND_MODE_SATURATION;
  external static JSNumber get SVG_FEBLEND_MODE_COLOR;
  external static JSNumber get SVG_FEBLEND_MODE_LUMINOSITY;
}

extension SVGFEBlendElementExtension on SVGFEBlendElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedString get in2;
  external SVGAnimatedEnumeration get mode;
}

@JS('SVGFEColorMatrixElement')
@staticInterop
class SVGFEColorMatrixElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEColorMatrixElement();

  external static JSNumber get SVG_FECOLORMATRIX_TYPE_UNKNOWN;
  external static JSNumber get SVG_FECOLORMATRIX_TYPE_MATRIX;
  external static JSNumber get SVG_FECOLORMATRIX_TYPE_SATURATE;
  external static JSNumber get SVG_FECOLORMATRIX_TYPE_HUEROTATE;
  external static JSNumber get SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA;
}

extension SVGFEColorMatrixElementExtension on SVGFEColorMatrixElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedEnumeration get type;
  external SVGAnimatedNumberList get values;
}

@JS('SVGFEComponentTransferElement')
@staticInterop
class SVGFEComponentTransferElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEComponentTransferElement();
}

extension SVGFEComponentTransferElementExtension
    on SVGFEComponentTransferElement {
  external SVGAnimatedString get in1;
}

@JS('SVGComponentTransferFunctionElement')
@staticInterop
class SVGComponentTransferFunctionElement extends SVGElement {
  external factory SVGComponentTransferFunctionElement();

  external static JSNumber get SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN;
  external static JSNumber get SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY;
  external static JSNumber get SVG_FECOMPONENTTRANSFER_TYPE_TABLE;
  external static JSNumber get SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE;
  external static JSNumber get SVG_FECOMPONENTTRANSFER_TYPE_LINEAR;
  external static JSNumber get SVG_FECOMPONENTTRANSFER_TYPE_GAMMA;
}

extension SVGComponentTransferFunctionElementExtension
    on SVGComponentTransferFunctionElement {
  external SVGAnimatedEnumeration get type;
  external SVGAnimatedNumberList get tableValues;
  external SVGAnimatedNumber get slope;
  external SVGAnimatedNumber get intercept;
  external SVGAnimatedNumber get amplitude;
  external SVGAnimatedNumber get exponent;
  external SVGAnimatedNumber get offset;
}

@JS('SVGFEFuncRElement')
@staticInterop
class SVGFEFuncRElement extends SVGComponentTransferFunctionElement {
  external factory SVGFEFuncRElement();
}

@JS('SVGFEFuncGElement')
@staticInterop
class SVGFEFuncGElement extends SVGComponentTransferFunctionElement {
  external factory SVGFEFuncGElement();
}

@JS('SVGFEFuncBElement')
@staticInterop
class SVGFEFuncBElement extends SVGComponentTransferFunctionElement {
  external factory SVGFEFuncBElement();
}

@JS('SVGFEFuncAElement')
@staticInterop
class SVGFEFuncAElement extends SVGComponentTransferFunctionElement {
  external factory SVGFEFuncAElement();
}

@JS('SVGFECompositeElement')
@staticInterop
class SVGFECompositeElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFECompositeElement();

  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_UNKNOWN;
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_OVER;
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_IN;
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_OUT;
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_ATOP;
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_XOR;
  external static JSNumber get SVG_FECOMPOSITE_OPERATOR_ARITHMETIC;
}

extension SVGFECompositeElementExtension on SVGFECompositeElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedString get in2;
  external SVGAnimatedEnumeration get operator;
  external SVGAnimatedNumber get k1;
  external SVGAnimatedNumber get k2;
  external SVGAnimatedNumber get k3;
  external SVGAnimatedNumber get k4;
}

@JS('SVGFEConvolveMatrixElement')
@staticInterop
class SVGFEConvolveMatrixElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEConvolveMatrixElement();

  external static JSNumber get SVG_EDGEMODE_UNKNOWN;
  external static JSNumber get SVG_EDGEMODE_DUPLICATE;
  external static JSNumber get SVG_EDGEMODE_WRAP;
  external static JSNumber get SVG_EDGEMODE_NONE;
}

extension SVGFEConvolveMatrixElementExtension on SVGFEConvolveMatrixElement {
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
}

@JS('SVGFEDiffuseLightingElement')
@staticInterop
class SVGFEDiffuseLightingElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEDiffuseLightingElement();
}

extension SVGFEDiffuseLightingElementExtension on SVGFEDiffuseLightingElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get surfaceScale;
  external SVGAnimatedNumber get diffuseConstant;
  external SVGAnimatedNumber get kernelUnitLengthX;
  external SVGAnimatedNumber get kernelUnitLengthY;
}

@JS('SVGFEDistantLightElement')
@staticInterop
class SVGFEDistantLightElement extends SVGElement {
  external factory SVGFEDistantLightElement();
}

extension SVGFEDistantLightElementExtension on SVGFEDistantLightElement {
  external SVGAnimatedNumber get azimuth;
  external SVGAnimatedNumber get elevation;
}

@JS('SVGFEPointLightElement')
@staticInterop
class SVGFEPointLightElement extends SVGElement {
  external factory SVGFEPointLightElement();
}

extension SVGFEPointLightElementExtension on SVGFEPointLightElement {
  external SVGAnimatedNumber get x;
  external SVGAnimatedNumber get y;
  external SVGAnimatedNumber get z;
}

@JS('SVGFESpotLightElement')
@staticInterop
class SVGFESpotLightElement extends SVGElement {
  external factory SVGFESpotLightElement();
}

extension SVGFESpotLightElementExtension on SVGFESpotLightElement {
  external SVGAnimatedNumber get x;
  external SVGAnimatedNumber get y;
  external SVGAnimatedNumber get z;
  external SVGAnimatedNumber get pointsAtX;
  external SVGAnimatedNumber get pointsAtY;
  external SVGAnimatedNumber get pointsAtZ;
  external SVGAnimatedNumber get specularExponent;
  external SVGAnimatedNumber get limitingConeAngle;
}

@JS('SVGFEDisplacementMapElement')
@staticInterop
class SVGFEDisplacementMapElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEDisplacementMapElement();

  external static JSNumber get SVG_CHANNEL_UNKNOWN;
  external static JSNumber get SVG_CHANNEL_R;
  external static JSNumber get SVG_CHANNEL_G;
  external static JSNumber get SVG_CHANNEL_B;
  external static JSNumber get SVG_CHANNEL_A;
}

extension SVGFEDisplacementMapElementExtension on SVGFEDisplacementMapElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedString get in2;
  external SVGAnimatedNumber get scale;
  external SVGAnimatedEnumeration get xChannelSelector;
  external SVGAnimatedEnumeration get yChannelSelector;
}

@JS('SVGFEDropShadowElement')
@staticInterop
class SVGFEDropShadowElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEDropShadowElement();
}

extension SVGFEDropShadowElementExtension on SVGFEDropShadowElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get dx;
  external SVGAnimatedNumber get dy;
  external SVGAnimatedNumber get stdDeviationX;
  external SVGAnimatedNumber get stdDeviationY;
  external JSVoid setStdDeviation(
    JSNumber stdDeviationX,
    JSNumber stdDeviationY,
  );
}

@JS('SVGFEFloodElement')
@staticInterop
class SVGFEFloodElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEFloodElement();
}

@JS('SVGFEGaussianBlurElement')
@staticInterop
class SVGFEGaussianBlurElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEGaussianBlurElement();

  external static JSNumber get SVG_EDGEMODE_UNKNOWN;
  external static JSNumber get SVG_EDGEMODE_DUPLICATE;
  external static JSNumber get SVG_EDGEMODE_WRAP;
  external static JSNumber get SVG_EDGEMODE_NONE;
}

extension SVGFEGaussianBlurElementExtension on SVGFEGaussianBlurElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get stdDeviationX;
  external SVGAnimatedNumber get stdDeviationY;
  external SVGAnimatedEnumeration get edgeMode;
  external JSVoid setStdDeviation(
    JSNumber stdDeviationX,
    JSNumber stdDeviationY,
  );
}

@JS('SVGFEImageElement')
@staticInterop
class SVGFEImageElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes, SVGURIReference {
  external factory SVGFEImageElement();
}

extension SVGFEImageElementExtension on SVGFEImageElement {
  external SVGAnimatedPreserveAspectRatio get preserveAspectRatio;
  external SVGAnimatedString get crossOrigin;
}

@JS('SVGFEMergeElement')
@staticInterop
class SVGFEMergeElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEMergeElement();
}

@JS('SVGFEMergeNodeElement')
@staticInterop
class SVGFEMergeNodeElement extends SVGElement {
  external factory SVGFEMergeNodeElement();
}

extension SVGFEMergeNodeElementExtension on SVGFEMergeNodeElement {
  external SVGAnimatedString get in1;
}

@JS('SVGFEMorphologyElement')
@staticInterop
class SVGFEMorphologyElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEMorphologyElement();

  external static JSNumber get SVG_MORPHOLOGY_OPERATOR_UNKNOWN;
  external static JSNumber get SVG_MORPHOLOGY_OPERATOR_ERODE;
  external static JSNumber get SVG_MORPHOLOGY_OPERATOR_DILATE;
}

extension SVGFEMorphologyElementExtension on SVGFEMorphologyElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedEnumeration get operator;
  external SVGAnimatedNumber get radiusX;
  external SVGAnimatedNumber get radiusY;
}

@JS('SVGFEOffsetElement')
@staticInterop
class SVGFEOffsetElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFEOffsetElement();
}

extension SVGFEOffsetElementExtension on SVGFEOffsetElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get dx;
  external SVGAnimatedNumber get dy;
}

@JS('SVGFESpecularLightingElement')
@staticInterop
class SVGFESpecularLightingElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFESpecularLightingElement();
}

extension SVGFESpecularLightingElementExtension
    on SVGFESpecularLightingElement {
  external SVGAnimatedString get in1;
  external SVGAnimatedNumber get surfaceScale;
  external SVGAnimatedNumber get specularConstant;
  external SVGAnimatedNumber get specularExponent;
  external SVGAnimatedNumber get kernelUnitLengthX;
  external SVGAnimatedNumber get kernelUnitLengthY;
}

@JS('SVGFETileElement')
@staticInterop
class SVGFETileElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFETileElement();
}

extension SVGFETileElementExtension on SVGFETileElement {
  external SVGAnimatedString get in1;
}

@JS('SVGFETurbulenceElement')
@staticInterop
class SVGFETurbulenceElement extends SVGElement
    implements SVGFilterPrimitiveStandardAttributes {
  external factory SVGFETurbulenceElement();

  external static JSNumber get SVG_TURBULENCE_TYPE_UNKNOWN;
  external static JSNumber get SVG_TURBULENCE_TYPE_FRACTALNOISE;
  external static JSNumber get SVG_TURBULENCE_TYPE_TURBULENCE;
  external static JSNumber get SVG_STITCHTYPE_UNKNOWN;
  external static JSNumber get SVG_STITCHTYPE_STITCH;
  external static JSNumber get SVG_STITCHTYPE_NOSTITCH;
}

extension SVGFETurbulenceElementExtension on SVGFETurbulenceElement {
  external SVGAnimatedNumber get baseFrequencyX;
  external SVGAnimatedNumber get baseFrequencyY;
  external SVGAnimatedInteger get numOctaves;
  external SVGAnimatedNumber get seed;
  external SVGAnimatedEnumeration get stitchTiles;
  external SVGAnimatedEnumeration get type;
}
