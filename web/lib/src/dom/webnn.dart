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

import 'webidl.dart';

typedef MLNamedTensors = JSObject;
typedef MLDataTypeList = JSArray<JSString>;
typedef MLNumber = JSAny;
typedef MLNamedOperands = JSObject;
typedef MLPowerPreference = String;
typedef MLInputOperandLayout = String;
typedef MLOperandDataType = String;
typedef MLConv2dFilterOperandLayout = String;
typedef MLConvTranspose2dFilterOperandLayout = String;
typedef MLGruWeightLayout = String;
typedef MLRecurrentNetworkActivation = String;
typedef MLRecurrentNetworkDirection = String;
typedef MLLstmWeightLayout = String;
typedef MLPaddingMode = String;
typedef MLRoundingType = String;
typedef MLInterpolationMode = String;
extension type MLContextOptions._(JSObject _) implements JSObject {
  external factory MLContextOptions({
    MLPowerPreference powerPreference,
    bool accelerated,
  });

  external MLPowerPreference get powerPreference;
  external set powerPreference(MLPowerPreference value);
  external bool get accelerated;
  external set accelerated(bool value);
}
extension type ML._(JSObject _) implements JSObject {
  external JSPromise<MLContext> createContext([JSObject gpuDeviceOrOptions]);
}
extension type MLContextLostInfo._(JSObject _) implements JSObject {
  external factory MLContextLostInfo({String message});

  external String get message;
  external set message(String value);
}
extension type MLContext._(JSObject _) implements JSObject {
  external void dispatch(
    MLGraph graph,
    MLNamedTensors inputs,
    MLNamedTensors outputs,
  );
  external JSPromise<MLTensor> createTensor(MLTensorDescriptor descriptor);
  external JSPromise<MLTensor> createConstantTensor(
    MLOperandDescriptor descriptor,
    AllowSharedBufferSource inputData,
  );
  external JSPromise<JSArrayBuffer?> readTensor(
    MLTensor tensor, [
    AllowSharedBufferSource outputData,
  ]);
  external void writeTensor(
    MLTensor tensor,
    AllowSharedBufferSource inputData,
  );
  external MLOpSupportLimits opSupportLimits();
  external void destroy();
  external bool get accelerated;
  external JSPromise<MLContextLostInfo> get lost;
}
extension type MLOpSupportLimits._(JSObject _) implements JSObject {
  external factory MLOpSupportLimits({
    MLInputOperandLayout preferredInputLayout,
    int maxTensorByteLength,
    MLTensorLimits input,
    MLTensorLimits constant,
    MLTensorLimits output,
    MLSingleInputSupportLimits argMin,
    MLSingleInputSupportLimits argMax,
    MLBatchNormalizationSupportLimits batchNormalization,
    MLSingleInputSupportLimits cast,
    MLSingleInputSupportLimits clamp,
    MLConcatSupportLimits concat,
    MLConv2dSupportLimits conv2d,
    MLConv2dSupportLimits convTranspose2d,
    MLSingleInputSupportLimits cumulativeSum,
    MLBinarySupportLimits add,
    MLBinarySupportLimits sub,
    MLBinarySupportLimits mul,
    MLBinarySupportLimits div,
    MLBinarySupportLimits max,
    MLBinarySupportLimits min,
    MLBinarySupportLimits pow,
    MLBinarySupportLimits equal,
    MLBinarySupportLimits notEqual,
    MLBinarySupportLimits greater,
    MLBinarySupportLimits greaterOrEqual,
    MLBinarySupportLimits lesser,
    MLBinarySupportLimits lesserOrEqual,
    MLLogicalNotSupportLimits logicalNot,
    MLBinarySupportLimits logicalAnd,
    MLBinarySupportLimits logicalOr,
    MLBinarySupportLimits logicalXor,
    MLLogicalNotSupportLimits isNaN,
    MLLogicalNotSupportLimits isInfinite,
    MLSingleInputSupportLimits abs,
    MLSingleInputSupportLimits ceil,
    MLSingleInputSupportLimits cos,
    MLSingleInputSupportLimits erf,
    MLSingleInputSupportLimits exp,
    MLSingleInputSupportLimits floor,
    MLSingleInputSupportLimits identity,
    MLSingleInputSupportLimits log,
    MLSingleInputSupportLimits neg,
    MLSingleInputSupportLimits reciprocal,
    MLSingleInputSupportLimits roundEven,
    MLSingleInputSupportLimits sin,
    MLSingleInputSupportLimits sign,
    MLSingleInputSupportLimits sqrt,
    MLSingleInputSupportLimits tan,
    MLQuantizeDequantizeLinearSupportLimits dequantizeLinear,
    MLQuantizeDequantizeLinearSupportLimits quantizeLinear,
    MLSingleInputSupportLimits elu,
    MLSingleInputSupportLimits expand,
    MLGatherSupportLimits gather,
    MLGatherSupportLimits gatherElements,
    MLGatherSupportLimits gatherND,
    MLSingleInputSupportLimits gelu,
    MLGemmSupportLimits gemm,
    MLGruSupportLimits gru,
    MLGruCellSupportLimits gruCell,
    MLSingleInputSupportLimits hardSigmoid,
    MLSingleInputSupportLimits hardSwish,
    MLNormalizationSupportLimits instanceNormalization,
    MLNormalizationSupportLimits layerNormalization,
    MLSingleInputSupportLimits leakyRelu,
    MLSingleInputSupportLimits linear,
    MLLstmSupportLimits lstm,
    MLLstmCellSupportLimits lstmCell,
    MLBinarySupportLimits matmul,
    MLSingleInputSupportLimits pad,
    MLSingleInputSupportLimits averagePool2d,
    MLSingleInputSupportLimits l2Pool2d,
    MLSingleInputSupportLimits maxPool2d,
    MLPreluSupportLimits prelu,
    MLSingleInputSupportLimits reduceL1,
    MLSingleInputSupportLimits reduceL2,
    MLSingleInputSupportLimits reduceLogSum,
    MLSingleInputSupportLimits reduceLogSumExp,
    MLSingleInputSupportLimits reduceMax,
    MLSingleInputSupportLimits reduceMean,
    MLSingleInputSupportLimits reduceMin,
    MLSingleInputSupportLimits reduceProduct,
    MLSingleInputSupportLimits reduceSum,
    MLSingleInputSupportLimits reduceSumSquare,
    MLSingleInputSupportLimits relu,
    MLSingleInputSupportLimits resample2d,
    MLSingleInputSupportLimits reshape,
    MLSingleInputSupportLimits reverse,
    MLScatterSupportLimits scatterElements,
    MLScatterSupportLimits scatterND,
    MLSingleInputSupportLimits sigmoid,
    MLSingleInputSupportLimits slice,
    MLSingleInputSupportLimits softmax,
    MLSingleInputSupportLimits softplus,
    MLSingleInputSupportLimits softsign,
    MLSplitSupportLimits split,
    MLSingleInputSupportLimits tanh,
    MLSingleInputSupportLimits tile,
    MLSingleInputSupportLimits transpose,
    MLSingleInputSupportLimits triangular,
    MLWhereSupportLimits where,
  });

  external MLInputOperandLayout get preferredInputLayout;
  external set preferredInputLayout(MLInputOperandLayout value);
  external int get maxTensorByteLength;
  external set maxTensorByteLength(int value);
  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get constant;
  external set constant(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
  external MLSingleInputSupportLimits get argMin;
  external set argMin(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get argMax;
  external set argMax(MLSingleInputSupportLimits value);
  external MLBatchNormalizationSupportLimits get batchNormalization;
  external set batchNormalization(MLBatchNormalizationSupportLimits value);
  external MLSingleInputSupportLimits get cast;
  external set cast(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get clamp;
  external set clamp(MLSingleInputSupportLimits value);
  external MLConcatSupportLimits get concat;
  external set concat(MLConcatSupportLimits value);
  external MLConv2dSupportLimits get conv2d;
  external set conv2d(MLConv2dSupportLimits value);
  external MLConv2dSupportLimits get convTranspose2d;
  external set convTranspose2d(MLConv2dSupportLimits value);
  external MLSingleInputSupportLimits get cumulativeSum;
  external set cumulativeSum(MLSingleInputSupportLimits value);
  external MLBinarySupportLimits get add;
  external set add(MLBinarySupportLimits value);
  external MLBinarySupportLimits get sub;
  external set sub(MLBinarySupportLimits value);
  external MLBinarySupportLimits get mul;
  external set mul(MLBinarySupportLimits value);
  external MLBinarySupportLimits get div;
  external set div(MLBinarySupportLimits value);
  external MLBinarySupportLimits get max;
  external set max(MLBinarySupportLimits value);
  external MLBinarySupportLimits get min;
  external set min(MLBinarySupportLimits value);
  external MLBinarySupportLimits get pow;
  external set pow(MLBinarySupportLimits value);
  external MLBinarySupportLimits get equal;
  external set equal(MLBinarySupportLimits value);
  external MLBinarySupportLimits get notEqual;
  external set notEqual(MLBinarySupportLimits value);
  external MLBinarySupportLimits get greater;
  external set greater(MLBinarySupportLimits value);
  external MLBinarySupportLimits get greaterOrEqual;
  external set greaterOrEqual(MLBinarySupportLimits value);
  external MLBinarySupportLimits get lesser;
  external set lesser(MLBinarySupportLimits value);
  external MLBinarySupportLimits get lesserOrEqual;
  external set lesserOrEqual(MLBinarySupportLimits value);
  external MLLogicalNotSupportLimits get logicalNot;
  external set logicalNot(MLLogicalNotSupportLimits value);
  external MLBinarySupportLimits get logicalAnd;
  external set logicalAnd(MLBinarySupportLimits value);
  external MLBinarySupportLimits get logicalOr;
  external set logicalOr(MLBinarySupportLimits value);
  external MLBinarySupportLimits get logicalXor;
  external set logicalXor(MLBinarySupportLimits value);
  external MLLogicalNotSupportLimits get isNaN;
  external set isNaN(MLLogicalNotSupportLimits value);
  external MLLogicalNotSupportLimits get isInfinite;
  external set isInfinite(MLLogicalNotSupportLimits value);
  external MLSingleInputSupportLimits get abs;
  external set abs(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get ceil;
  external set ceil(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get cos;
  external set cos(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get erf;
  external set erf(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get exp;
  external set exp(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get floor;
  external set floor(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get identity;
  external set identity(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get log;
  external set log(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get neg;
  external set neg(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get reciprocal;
  external set reciprocal(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get roundEven;
  external set roundEven(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get sin;
  external set sin(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get sign;
  external set sign(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get sqrt;
  external set sqrt(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get tan;
  external set tan(MLSingleInputSupportLimits value);
  external MLQuantizeDequantizeLinearSupportLimits get dequantizeLinear;
  external set dequantizeLinear(MLQuantizeDequantizeLinearSupportLimits value);
  external MLQuantizeDequantizeLinearSupportLimits get quantizeLinear;
  external set quantizeLinear(MLQuantizeDequantizeLinearSupportLimits value);
  external MLSingleInputSupportLimits get elu;
  external set elu(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get expand;
  external set expand(MLSingleInputSupportLimits value);
  external MLGatherSupportLimits get gather;
  external set gather(MLGatherSupportLimits value);
  external MLGatherSupportLimits get gatherElements;
  external set gatherElements(MLGatherSupportLimits value);
  external MLGatherSupportLimits get gatherND;
  external set gatherND(MLGatherSupportLimits value);
  external MLSingleInputSupportLimits get gelu;
  external set gelu(MLSingleInputSupportLimits value);
  external MLGemmSupportLimits get gemm;
  external set gemm(MLGemmSupportLimits value);
  external MLGruSupportLimits get gru;
  external set gru(MLGruSupportLimits value);
  external MLGruCellSupportLimits get gruCell;
  external set gruCell(MLGruCellSupportLimits value);
  external MLSingleInputSupportLimits get hardSigmoid;
  external set hardSigmoid(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get hardSwish;
  external set hardSwish(MLSingleInputSupportLimits value);
  external MLNormalizationSupportLimits get instanceNormalization;
  external set instanceNormalization(MLNormalizationSupportLimits value);
  external MLNormalizationSupportLimits get layerNormalization;
  external set layerNormalization(MLNormalizationSupportLimits value);
  external MLSingleInputSupportLimits get leakyRelu;
  external set leakyRelu(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get linear;
  external set linear(MLSingleInputSupportLimits value);
  external MLLstmSupportLimits get lstm;
  external set lstm(MLLstmSupportLimits value);
  external MLLstmCellSupportLimits get lstmCell;
  external set lstmCell(MLLstmCellSupportLimits value);
  external MLBinarySupportLimits get matmul;
  external set matmul(MLBinarySupportLimits value);
  external MLSingleInputSupportLimits get pad;
  external set pad(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get averagePool2d;
  external set averagePool2d(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get l2Pool2d;
  external set l2Pool2d(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get maxPool2d;
  external set maxPool2d(MLSingleInputSupportLimits value);
  external MLPreluSupportLimits get prelu;
  external set prelu(MLPreluSupportLimits value);
  external MLSingleInputSupportLimits get reduceL1;
  external set reduceL1(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get reduceL2;
  external set reduceL2(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get reduceLogSum;
  external set reduceLogSum(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get reduceLogSumExp;
  external set reduceLogSumExp(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get reduceMax;
  external set reduceMax(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get reduceMean;
  external set reduceMean(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get reduceMin;
  external set reduceMin(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get reduceProduct;
  external set reduceProduct(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get reduceSum;
  external set reduceSum(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get reduceSumSquare;
  external set reduceSumSquare(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get relu;
  external set relu(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get resample2d;
  external set resample2d(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get reshape;
  external set reshape(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get reverse;
  external set reverse(MLSingleInputSupportLimits value);
  external MLScatterSupportLimits get scatterElements;
  external set scatterElements(MLScatterSupportLimits value);
  external MLScatterSupportLimits get scatterND;
  external set scatterND(MLScatterSupportLimits value);
  external MLSingleInputSupportLimits get sigmoid;
  external set sigmoid(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get slice;
  external set slice(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get softmax;
  external set softmax(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get softplus;
  external set softplus(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get softsign;
  external set softsign(MLSingleInputSupportLimits value);
  external MLSplitSupportLimits get split;
  external set split(MLSplitSupportLimits value);
  external MLSingleInputSupportLimits get tanh;
  external set tanh(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get tile;
  external set tile(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get transpose;
  external set transpose(MLSingleInputSupportLimits value);
  external MLSingleInputSupportLimits get triangular;
  external set triangular(MLSingleInputSupportLimits value);
  external MLWhereSupportLimits get where;
  external set where(MLWhereSupportLimits value);
}
extension type MLRankRange._(JSObject _) implements JSObject {
  external factory MLRankRange({
    int min,
    int max,
  });

  external int get min;
  external set min(int value);
  external int get max;
  external set max(int value);
}
extension type MLTensorLimits._(JSObject _) implements JSObject {
  external factory MLTensorLimits({
    MLDataTypeList dataTypes,
    MLRankRange rankRange,
  });

  external MLDataTypeList get dataTypes;
  external set dataTypes(MLDataTypeList value);
  external MLRankRange get rankRange;
  external set rankRange(MLRankRange value);
}
extension type MLBinarySupportLimits._(JSObject _) implements JSObject {
  external factory MLBinarySupportLimits({
    MLTensorLimits a,
    MLTensorLimits b,
    MLTensorLimits output,
  });

  external MLTensorLimits get a;
  external set a(MLTensorLimits value);
  external MLTensorLimits get b;
  external set b(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLSingleInputSupportLimits._(JSObject _) implements JSObject {
  external factory MLSingleInputSupportLimits({
    MLTensorLimits input,
    MLTensorLimits output,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLGraph._(JSObject _) implements JSObject {
  external void destroy();
}
extension type MLOperandDescriptor._(JSObject _) implements JSObject {
  external factory MLOperandDescriptor({
    required MLOperandDataType dataType,
    required JSArray<JSNumber> shape,
  });

  external MLOperandDataType get dataType;
  external set dataType(MLOperandDataType value);
  external JSArray<JSNumber> get shape;
  external set shape(JSArray<JSNumber> value);
}
extension type MLOperand._(JSObject _) implements JSObject {
  external MLOperandDataType get dataType;
  external JSArray<JSNumber> get shape;
}
extension type MLOperatorOptions._(JSObject _) implements JSObject {
  external factory MLOperatorOptions({String label});

  external String get label;
  external set label(String value);
}
extension type MLTensorDescriptor._(JSObject _)
    implements MLOperandDescriptor, JSObject {
  external factory MLTensorDescriptor({
    required MLOperandDataType dataType,
    required JSArray<JSNumber> shape,
    bool readable,
    bool writable,
  });

  external bool get readable;
  external set readable(bool value);
  external bool get writable;
  external set writable(bool value);
}
extension type MLTensor._(JSObject _) implements JSObject {
  external void destroy();
  external MLOperandDataType get dataType;
  external JSArray<JSNumber> get shape;
  external bool get readable;
  external bool get writable;
  external bool get constant;
}
extension type MLGraphBuilder._(JSObject _) implements JSObject {
  external factory MLGraphBuilder(MLContext context);

  external MLOperand input(
    String name,
    MLOperandDescriptor descriptor,
  );
  external MLOperand constant(
    JSAny dataTypeOrDescriptorOrTensor, [
    JSAny bufferOrValue,
  ]);
  external JSPromise<MLGraph> build(MLNamedOperands outputs);
  external MLOperand argMin(
    MLOperand input,
    int axis, [
    MLArgMinMaxOptions options,
  ]);
  external MLOperand argMax(
    MLOperand input,
    int axis, [
    MLArgMinMaxOptions options,
  ]);
  external MLOperand batchNormalization(
    MLOperand input,
    MLOperand mean,
    MLOperand variance, [
    MLBatchNormalizationOptions options,
  ]);
  external MLOperand cast(
    MLOperand input,
    MLOperandDataType dataType, [
    MLOperatorOptions options,
  ]);
  external MLOperand clamp(
    MLOperand input, [
    MLClampOptions options,
  ]);
  external MLOperand concat(
    JSArray<MLOperand> inputs,
    int axis, [
    MLOperatorOptions options,
  ]);
  external MLOperand conv2d(
    MLOperand input,
    MLOperand filter, [
    MLConv2dOptions options,
  ]);
  external MLOperand convTranspose2d(
    MLOperand input,
    MLOperand filter, [
    MLConvTranspose2dOptions options,
  ]);
  external MLOperand cumulativeSum(
    MLOperand input,
    int axis, [
    MLCumulativeSumOptions options,
  ]);
  external MLOperand add(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand sub(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand mul(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand div(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand max(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand min(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand pow(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand equal(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand notEqual(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand greater(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand greaterOrEqual(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand lesser(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand lesserOrEqual(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand logicalNot(
    MLOperand a, [
    MLOperatorOptions options,
  ]);
  external MLOperand logicalAnd(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand logicalOr(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand logicalXor(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand isNaN(
    MLOperand a, [
    MLOperatorOptions options,
  ]);
  external MLOperand isInfinite(
    MLOperand a, [
    MLOperatorOptions options,
  ]);
  external MLOperand abs(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand ceil(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand cos(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand erf(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand exp(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand floor(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand identity(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand log(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand neg(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand reciprocal(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand roundEven(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand sin(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand sign(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand sqrt(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand tan(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand dequantizeLinear(
    MLOperand input,
    MLOperand scale,
    MLOperand zeroPoint, [
    MLOperatorOptions options,
  ]);
  external MLOperand quantizeLinear(
    MLOperand input,
    MLOperand scale,
    MLOperand zeroPoint, [
    MLOperatorOptions options,
  ]);
  external MLOperand elu(
    MLOperand input, [
    MLEluOptions options,
  ]);
  external MLOperand expand(
    MLOperand input,
    JSArray<JSNumber> newShape, [
    MLOperatorOptions options,
  ]);
  external MLOperand gather(
    MLOperand input,
    MLOperand indices, [
    MLGatherOptions options,
  ]);
  external MLOperand gatherElements(
    MLOperand input,
    MLOperand indices, [
    MLGatherOptions options,
  ]);
  external MLOperand gatherND(
    MLOperand input,
    MLOperand indices, [
    MLOperatorOptions options,
  ]);
  external MLOperand gelu(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand gemm(
    MLOperand a,
    MLOperand b, [
    MLGemmOptions options,
  ]);
  external JSArray<MLOperand> gru(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    int steps,
    int hiddenSize, [
    MLGruOptions options,
  ]);
  external MLOperand gruCell(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    MLOperand hiddenState,
    int hiddenSize, [
    MLGruCellOptions options,
  ]);
  external MLOperand hardSigmoid(
    MLOperand input, [
    MLHardSigmoidOptions options,
  ]);
  external MLOperand hardSwish(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand instanceNormalization(
    MLOperand input, [
    MLInstanceNormalizationOptions options,
  ]);
  external MLOperand layerNormalization(
    MLOperand input, [
    MLLayerNormalizationOptions options,
  ]);
  external MLOperand leakyRelu(
    MLOperand input, [
    MLLeakyReluOptions options,
  ]);
  external MLOperand linear(
    MLOperand input, [
    MLLinearOptions options,
  ]);
  external JSArray<MLOperand> lstm(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    int steps,
    int hiddenSize, [
    MLLstmOptions options,
  ]);
  external JSArray<MLOperand> lstmCell(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    MLOperand hiddenState,
    MLOperand cellState,
    int hiddenSize, [
    MLLstmCellOptions options,
  ]);
  external MLOperand matmul(
    MLOperand a,
    MLOperand b, [
    MLOperatorOptions options,
  ]);
  external MLOperand pad(
    MLOperand input,
    JSArray<JSNumber> beginningPadding,
    JSArray<JSNumber> endingPadding, [
    MLPadOptions options,
  ]);
  external MLOperand averagePool2d(
    MLOperand input, [
    MLPool2dOptions options,
  ]);
  external MLOperand l2Pool2d(
    MLOperand input, [
    MLPool2dOptions options,
  ]);
  external MLOperand maxPool2d(
    MLOperand input, [
    MLPool2dOptions options,
  ]);
  external MLOperand prelu(
    MLOperand input,
    MLOperand slope, [
    MLOperatorOptions options,
  ]);
  external MLOperand reduceL1(
    MLOperand input, [
    MLReduceOptions options,
  ]);
  external MLOperand reduceL2(
    MLOperand input, [
    MLReduceOptions options,
  ]);
  external MLOperand reduceLogSum(
    MLOperand input, [
    MLReduceOptions options,
  ]);
  external MLOperand reduceLogSumExp(
    MLOperand input, [
    MLReduceOptions options,
  ]);
  external MLOperand reduceMax(
    MLOperand input, [
    MLReduceOptions options,
  ]);
  external MLOperand reduceMean(
    MLOperand input, [
    MLReduceOptions options,
  ]);
  external MLOperand reduceMin(
    MLOperand input, [
    MLReduceOptions options,
  ]);
  external MLOperand reduceProduct(
    MLOperand input, [
    MLReduceOptions options,
  ]);
  external MLOperand reduceSum(
    MLOperand input, [
    MLReduceOptions options,
  ]);
  external MLOperand reduceSumSquare(
    MLOperand input, [
    MLReduceOptions options,
  ]);
  external MLOperand relu(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand resample2d(
    MLOperand input, [
    MLResample2dOptions options,
  ]);
  external MLOperand reshape(
    MLOperand input,
    JSArray<JSNumber> newShape, [
    MLOperatorOptions options,
  ]);
  external MLOperand reverse(
    MLOperand input, [
    MLReverseOptions options,
  ]);
  external MLOperand scatterElements(
    MLOperand input,
    MLOperand indices,
    MLOperand updates, [
    MLScatterOptions options,
  ]);
  external MLOperand scatterND(
    MLOperand input,
    MLOperand indices,
    MLOperand updates, [
    MLOperatorOptions options,
  ]);
  external MLOperand sigmoid(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand slice(
    MLOperand input,
    JSArray<JSNumber> starts,
    JSArray<JSNumber> sizes, [
    MLSliceOptions options,
  ]);
  external MLOperand softmax(
    MLOperand input,
    int axis, [
    MLOperatorOptions options,
  ]);
  external MLOperand softplus(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand softsign(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external JSArray<MLOperand> split(
    MLOperand input,
    JSAny splits, [
    MLSplitOptions options,
  ]);
  external MLOperand tanh(
    MLOperand input, [
    MLOperatorOptions options,
  ]);
  external MLOperand tile(
    MLOperand input,
    JSArray<JSNumber> repetitions, [
    MLOperatorOptions options,
  ]);
  external MLOperand transpose(
    MLOperand input, [
    MLTransposeOptions options,
  ]);
  external MLOperand triangular(
    MLOperand input, [
    MLTriangularOptions options,
  ]);
  external MLOperand where(
    MLOperand condition,
    MLOperand trueValue,
    MLOperand falseValue, [
    MLOperatorOptions options,
  ]);
}
extension type MLArgMinMaxOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLArgMinMaxOptions({
    String label,
    bool keepDimensions,
    MLOperandDataType outputDataType,
  });

  external bool get keepDimensions;
  external set keepDimensions(bool value);
  external MLOperandDataType get outputDataType;
  external set outputDataType(MLOperandDataType value);
}
extension type MLBatchNormalizationOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLBatchNormalizationOptions({
    String label,
    MLOperand scale,
    MLOperand bias,
    int axis,
    num epsilon,
  });

  external MLOperand get scale;
  external set scale(MLOperand value);
  external MLOperand get bias;
  external set bias(MLOperand value);
  external int get axis;
  external set axis(int value);
  external double get epsilon;
  external set epsilon(num value);
}
extension type MLBatchNormalizationSupportLimits._(JSObject _)
    implements JSObject {
  external factory MLBatchNormalizationSupportLimits({
    MLTensorLimits input,
    MLTensorLimits mean,
    MLTensorLimits variance,
    MLTensorLimits scale,
    MLTensorLimits bias,
    MLTensorLimits output,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get mean;
  external set mean(MLTensorLimits value);
  external MLTensorLimits get variance;
  external set variance(MLTensorLimits value);
  external MLTensorLimits get scale;
  external set scale(MLTensorLimits value);
  external MLTensorLimits get bias;
  external set bias(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLClampOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLClampOptions({
    String label,
    MLNumber minValue,
    MLNumber maxValue,
  });

  external MLNumber get minValue;
  external set minValue(MLNumber value);
  external MLNumber get maxValue;
  external set maxValue(MLNumber value);
}
extension type MLConcatSupportLimits._(JSObject _) implements JSObject {
  external factory MLConcatSupportLimits({
    MLTensorLimits inputs,
    MLTensorLimits output,
  });

  external MLTensorLimits get inputs;
  external set inputs(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLConv2dOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLConv2dOptions({
    String label,
    JSArray<JSNumber> padding,
    JSArray<JSNumber> strides,
    JSArray<JSNumber> dilations,
    int groups,
    MLInputOperandLayout inputLayout,
    MLConv2dFilterOperandLayout filterLayout,
    MLOperand bias,
  });

  external JSArray<JSNumber> get padding;
  external set padding(JSArray<JSNumber> value);
  external JSArray<JSNumber> get strides;
  external set strides(JSArray<JSNumber> value);
  external JSArray<JSNumber> get dilations;
  external set dilations(JSArray<JSNumber> value);
  external int get groups;
  external set groups(int value);
  external MLInputOperandLayout get inputLayout;
  external set inputLayout(MLInputOperandLayout value);
  external MLConv2dFilterOperandLayout get filterLayout;
  external set filterLayout(MLConv2dFilterOperandLayout value);
  external MLOperand get bias;
  external set bias(MLOperand value);
}
extension type MLConv2dSupportLimits._(JSObject _) implements JSObject {
  external factory MLConv2dSupportLimits({
    MLTensorLimits input,
    MLTensorLimits filter,
    MLTensorLimits bias,
    MLTensorLimits output,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get filter;
  external set filter(MLTensorLimits value);
  external MLTensorLimits get bias;
  external set bias(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLConvTranspose2dOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLConvTranspose2dOptions({
    String label,
    JSArray<JSNumber> padding,
    JSArray<JSNumber> strides,
    JSArray<JSNumber> dilations,
    JSArray<JSNumber> outputPadding,
    JSArray<JSNumber> outputSizes,
    int groups,
    MLInputOperandLayout inputLayout,
    MLConvTranspose2dFilterOperandLayout filterLayout,
    MLOperand bias,
  });

  external JSArray<JSNumber> get padding;
  external set padding(JSArray<JSNumber> value);
  external JSArray<JSNumber> get strides;
  external set strides(JSArray<JSNumber> value);
  external JSArray<JSNumber> get dilations;
  external set dilations(JSArray<JSNumber> value);
  external JSArray<JSNumber> get outputPadding;
  external set outputPadding(JSArray<JSNumber> value);
  external JSArray<JSNumber> get outputSizes;
  external set outputSizes(JSArray<JSNumber> value);
  external int get groups;
  external set groups(int value);
  external MLInputOperandLayout get inputLayout;
  external set inputLayout(MLInputOperandLayout value);
  external MLConvTranspose2dFilterOperandLayout get filterLayout;
  external set filterLayout(MLConvTranspose2dFilterOperandLayout value);
  external MLOperand get bias;
  external set bias(MLOperand value);
}
extension type MLCumulativeSumOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLCumulativeSumOptions({
    String label,
    bool exclusive,
    bool reversed,
  });

  external bool get exclusive;
  external set exclusive(bool value);
  external bool get reversed;
  external set reversed(bool value);
}
extension type MLLogicalNotSupportLimits._(JSObject _) implements JSObject {
  external factory MLLogicalNotSupportLimits({
    MLTensorLimits a,
    MLTensorLimits output,
  });

  external MLTensorLimits get a;
  external set a(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLQuantizeDequantizeLinearSupportLimits._(JSObject _)
    implements JSObject {
  external factory MLQuantizeDequantizeLinearSupportLimits({
    MLTensorLimits input,
    MLTensorLimits scale,
    MLTensorLimits zeroPoint,
    MLTensorLimits output,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get scale;
  external set scale(MLTensorLimits value);
  external MLTensorLimits get zeroPoint;
  external set zeroPoint(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLEluOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLEluOptions({
    String label,
    num alpha,
  });

  external double get alpha;
  external set alpha(num value);
}
extension type MLGatherOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLGatherOptions({
    String label,
    int axis,
  });

  external int get axis;
  external set axis(int value);
}
extension type MLGatherSupportLimits._(JSObject _) implements JSObject {
  external factory MLGatherSupportLimits({
    MLTensorLimits input,
    MLTensorLimits indices,
    MLTensorLimits output,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get indices;
  external set indices(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLGemmOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLGemmOptions({
    String label,
    MLOperand c,
    num alpha,
    num beta,
    bool aTranspose,
    bool bTranspose,
  });

  external MLOperand get c;
  external set c(MLOperand value);
  external double get alpha;
  external set alpha(num value);
  external double get beta;
  external set beta(num value);
  external bool get aTranspose;
  external set aTranspose(bool value);
  external bool get bTranspose;
  external set bTranspose(bool value);
}
extension type MLGemmSupportLimits._(JSObject _) implements JSObject {
  external factory MLGemmSupportLimits({
    MLTensorLimits a,
    MLTensorLimits b,
    MLTensorLimits c,
    MLTensorLimits output,
  });

  external MLTensorLimits get a;
  external set a(MLTensorLimits value);
  external MLTensorLimits get b;
  external set b(MLTensorLimits value);
  external MLTensorLimits get c;
  external set c(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLGruOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLGruOptions({
    String label,
    MLOperand bias,
    MLOperand recurrentBias,
    MLOperand initialHiddenState,
    bool resetAfter,
    bool returnSequence,
    MLRecurrentNetworkDirection direction,
    MLGruWeightLayout layout,
    JSArray<JSString> activations,
  });

  external MLOperand get bias;
  external set bias(MLOperand value);
  external MLOperand get recurrentBias;
  external set recurrentBias(MLOperand value);
  external MLOperand get initialHiddenState;
  external set initialHiddenState(MLOperand value);
  external bool get resetAfter;
  external set resetAfter(bool value);
  external bool get returnSequence;
  external set returnSequence(bool value);
  external MLRecurrentNetworkDirection get direction;
  external set direction(MLRecurrentNetworkDirection value);
  external MLGruWeightLayout get layout;
  external set layout(MLGruWeightLayout value);
  external JSArray<JSString> get activations;
  external set activations(JSArray<JSString> value);
}
extension type MLGruSupportLimits._(JSObject _) implements JSObject {
  external factory MLGruSupportLimits({
    MLTensorLimits input,
    MLTensorLimits weight,
    MLTensorLimits recurrentWeight,
    MLTensorLimits bias,
    MLTensorLimits recurrentBias,
    MLTensorLimits initialHiddenState,
    MLTensorLimits output0,
    MLTensorLimits output1,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get weight;
  external set weight(MLTensorLimits value);
  external MLTensorLimits get recurrentWeight;
  external set recurrentWeight(MLTensorLimits value);
  external MLTensorLimits get bias;
  external set bias(MLTensorLimits value);
  external MLTensorLimits get recurrentBias;
  external set recurrentBias(MLTensorLimits value);
  external MLTensorLimits get initialHiddenState;
  external set initialHiddenState(MLTensorLimits value);
  external MLTensorLimits get output0;
  external set output0(MLTensorLimits value);
  external MLTensorLimits get output1;
  external set output1(MLTensorLimits value);
}
extension type MLGruCellOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLGruCellOptions({
    String label,
    MLOperand bias,
    MLOperand recurrentBias,
    bool resetAfter,
    MLGruWeightLayout layout,
    JSArray<JSString> activations,
  });

  external MLOperand get bias;
  external set bias(MLOperand value);
  external MLOperand get recurrentBias;
  external set recurrentBias(MLOperand value);
  external bool get resetAfter;
  external set resetAfter(bool value);
  external MLGruWeightLayout get layout;
  external set layout(MLGruWeightLayout value);
  external JSArray<JSString> get activations;
  external set activations(JSArray<JSString> value);
}
extension type MLGruCellSupportLimits._(JSObject _) implements JSObject {
  external factory MLGruCellSupportLimits({
    MLTensorLimits input,
    MLTensorLimits weight,
    MLTensorLimits recurrentWeight,
    MLTensorLimits hiddenState,
    MLTensorLimits bias,
    MLTensorLimits recurrentBias,
    MLTensorLimits output,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get weight;
  external set weight(MLTensorLimits value);
  external MLTensorLimits get recurrentWeight;
  external set recurrentWeight(MLTensorLimits value);
  external MLTensorLimits get hiddenState;
  external set hiddenState(MLTensorLimits value);
  external MLTensorLimits get bias;
  external set bias(MLTensorLimits value);
  external MLTensorLimits get recurrentBias;
  external set recurrentBias(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLHardSigmoidOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLHardSigmoidOptions({
    String label,
    num alpha,
    num beta,
  });

  external double get alpha;
  external set alpha(num value);
  external double get beta;
  external set beta(num value);
}
extension type MLInstanceNormalizationOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLInstanceNormalizationOptions({
    String label,
    MLOperand scale,
    MLOperand bias,
    num epsilon,
    MLInputOperandLayout layout,
  });

  external MLOperand get scale;
  external set scale(MLOperand value);
  external MLOperand get bias;
  external set bias(MLOperand value);
  external double get epsilon;
  external set epsilon(num value);
  external MLInputOperandLayout get layout;
  external set layout(MLInputOperandLayout value);
}
extension type MLNormalizationSupportLimits._(JSObject _) implements JSObject {
  external factory MLNormalizationSupportLimits({
    MLTensorLimits input,
    MLTensorLimits scale,
    MLTensorLimits bias,
    MLTensorLimits output,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get scale;
  external set scale(MLTensorLimits value);
  external MLTensorLimits get bias;
  external set bias(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLLayerNormalizationOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLLayerNormalizationOptions({
    String label,
    MLOperand scale,
    MLOperand bias,
    JSArray<JSNumber> axes,
    num epsilon,
  });

  external MLOperand get scale;
  external set scale(MLOperand value);
  external MLOperand get bias;
  external set bias(MLOperand value);
  external JSArray<JSNumber> get axes;
  external set axes(JSArray<JSNumber> value);
  external double get epsilon;
  external set epsilon(num value);
}
extension type MLLeakyReluOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLLeakyReluOptions({
    String label,
    num alpha,
  });

  external double get alpha;
  external set alpha(num value);
}
extension type MLLinearOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLLinearOptions({
    String label,
    num alpha,
    num beta,
  });

  external double get alpha;
  external set alpha(num value);
  external double get beta;
  external set beta(num value);
}
extension type MLLstmOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLLstmOptions({
    String label,
    MLOperand bias,
    MLOperand recurrentBias,
    MLOperand peepholeWeight,
    MLOperand initialHiddenState,
    MLOperand initialCellState,
    bool returnSequence,
    MLRecurrentNetworkDirection direction,
    MLLstmWeightLayout layout,
    JSArray<JSString> activations,
  });

  external MLOperand get bias;
  external set bias(MLOperand value);
  external MLOperand get recurrentBias;
  external set recurrentBias(MLOperand value);
  external MLOperand get peepholeWeight;
  external set peepholeWeight(MLOperand value);
  external MLOperand get initialHiddenState;
  external set initialHiddenState(MLOperand value);
  external MLOperand get initialCellState;
  external set initialCellState(MLOperand value);
  external bool get returnSequence;
  external set returnSequence(bool value);
  external MLRecurrentNetworkDirection get direction;
  external set direction(MLRecurrentNetworkDirection value);
  external MLLstmWeightLayout get layout;
  external set layout(MLLstmWeightLayout value);
  external JSArray<JSString> get activations;
  external set activations(JSArray<JSString> value);
}
extension type MLLstmSupportLimits._(JSObject _) implements JSObject {
  external factory MLLstmSupportLimits({
    MLTensorLimits input,
    MLTensorLimits weight,
    MLTensorLimits recurrentWeight,
    MLTensorLimits bias,
    MLTensorLimits recurrentBias,
    MLTensorLimits peepholeWeight,
    MLTensorLimits initialHiddenState,
    MLTensorLimits initialCellState,
    MLTensorLimits output0,
    MLTensorLimits output1,
    MLTensorLimits output2,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get weight;
  external set weight(MLTensorLimits value);
  external MLTensorLimits get recurrentWeight;
  external set recurrentWeight(MLTensorLimits value);
  external MLTensorLimits get bias;
  external set bias(MLTensorLimits value);
  external MLTensorLimits get recurrentBias;
  external set recurrentBias(MLTensorLimits value);
  external MLTensorLimits get peepholeWeight;
  external set peepholeWeight(MLTensorLimits value);
  external MLTensorLimits get initialHiddenState;
  external set initialHiddenState(MLTensorLimits value);
  external MLTensorLimits get initialCellState;
  external set initialCellState(MLTensorLimits value);
  external MLTensorLimits get output0;
  external set output0(MLTensorLimits value);
  external MLTensorLimits get output1;
  external set output1(MLTensorLimits value);
  external MLTensorLimits get output2;
  external set output2(MLTensorLimits value);
}
extension type MLLstmCellOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLLstmCellOptions({
    String label,
    MLOperand bias,
    MLOperand recurrentBias,
    MLOperand peepholeWeight,
    MLLstmWeightLayout layout,
    JSArray<JSString> activations,
  });

  external MLOperand get bias;
  external set bias(MLOperand value);
  external MLOperand get recurrentBias;
  external set recurrentBias(MLOperand value);
  external MLOperand get peepholeWeight;
  external set peepholeWeight(MLOperand value);
  external MLLstmWeightLayout get layout;
  external set layout(MLLstmWeightLayout value);
  external JSArray<JSString> get activations;
  external set activations(JSArray<JSString> value);
}
extension type MLLstmCellSupportLimits._(JSObject _) implements JSObject {
  external factory MLLstmCellSupportLimits({
    MLTensorLimits input,
    MLTensorLimits weight,
    MLTensorLimits recurrentWeight,
    MLTensorLimits hiddenState,
    MLTensorLimits cellState,
    MLTensorLimits bias,
    MLTensorLimits recurrentBias,
    MLTensorLimits peepholeWeight,
    MLTensorLimits output0,
    MLTensorLimits output1,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get weight;
  external set weight(MLTensorLimits value);
  external MLTensorLimits get recurrentWeight;
  external set recurrentWeight(MLTensorLimits value);
  external MLTensorLimits get hiddenState;
  external set hiddenState(MLTensorLimits value);
  external MLTensorLimits get cellState;
  external set cellState(MLTensorLimits value);
  external MLTensorLimits get bias;
  external set bias(MLTensorLimits value);
  external MLTensorLimits get recurrentBias;
  external set recurrentBias(MLTensorLimits value);
  external MLTensorLimits get peepholeWeight;
  external set peepholeWeight(MLTensorLimits value);
  external MLTensorLimits get output0;
  external set output0(MLTensorLimits value);
  external MLTensorLimits get output1;
  external set output1(MLTensorLimits value);
}
extension type MLPadOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLPadOptions({
    String label,
    MLPaddingMode mode,
    MLNumber value,
  });

  external MLPaddingMode get mode;
  external set mode(MLPaddingMode value);
  external MLNumber get value;
  external set value(MLNumber value);
}
extension type MLPool2dOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLPool2dOptions({
    String label,
    JSArray<JSNumber> windowDimensions,
    JSArray<JSNumber> padding,
    JSArray<JSNumber> strides,
    JSArray<JSNumber> dilations,
    MLInputOperandLayout layout,
    MLRoundingType outputShapeRounding,
    JSArray<JSNumber> outputSizes,
  });

  external JSArray<JSNumber> get windowDimensions;
  external set windowDimensions(JSArray<JSNumber> value);
  external JSArray<JSNumber> get padding;
  external set padding(JSArray<JSNumber> value);
  external JSArray<JSNumber> get strides;
  external set strides(JSArray<JSNumber> value);
  external JSArray<JSNumber> get dilations;
  external set dilations(JSArray<JSNumber> value);
  external MLInputOperandLayout get layout;
  external set layout(MLInputOperandLayout value);
  external MLRoundingType get outputShapeRounding;
  external set outputShapeRounding(MLRoundingType value);
  external JSArray<JSNumber> get outputSizes;
  external set outputSizes(JSArray<JSNumber> value);
}
extension type MLPreluSupportLimits._(JSObject _) implements JSObject {
  external factory MLPreluSupportLimits({
    MLTensorLimits input,
    MLTensorLimits slope,
    MLTensorLimits output,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get slope;
  external set slope(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLReduceOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLReduceOptions({
    String label,
    JSArray<JSNumber> axes,
    bool keepDimensions,
  });

  external JSArray<JSNumber> get axes;
  external set axes(JSArray<JSNumber> value);
  external bool get keepDimensions;
  external set keepDimensions(bool value);
}
extension type MLResample2dOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLResample2dOptions({
    String label,
    MLInterpolationMode mode,
    JSArray<JSNumber> scales,
    JSArray<JSNumber> sizes,
    JSArray<JSNumber> axes,
  });

  external MLInterpolationMode get mode;
  external set mode(MLInterpolationMode value);
  external JSArray<JSNumber> get scales;
  external set scales(JSArray<JSNumber> value);
  external JSArray<JSNumber> get sizes;
  external set sizes(JSArray<JSNumber> value);
  external JSArray<JSNumber> get axes;
  external set axes(JSArray<JSNumber> value);
}
extension type MLReverseOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLReverseOptions({
    String label,
    JSArray<JSNumber> axes,
  });

  external JSArray<JSNumber> get axes;
  external set axes(JSArray<JSNumber> value);
}
extension type MLScatterOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLScatterOptions({
    String label,
    int axis,
  });

  external int get axis;
  external set axis(int value);
}
extension type MLScatterSupportLimits._(JSObject _) implements JSObject {
  external factory MLScatterSupportLimits({
    MLTensorLimits input,
    MLTensorLimits indices,
    MLTensorLimits updates,
    MLTensorLimits output,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get indices;
  external set indices(MLTensorLimits value);
  external MLTensorLimits get updates;
  external set updates(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
extension type MLSliceOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLSliceOptions({
    String label,
    JSArray<JSNumber> strides,
  });

  external JSArray<JSNumber> get strides;
  external set strides(JSArray<JSNumber> value);
}
extension type MLSplitOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLSplitOptions({
    String label,
    int axis,
  });

  external int get axis;
  external set axis(int value);
}
extension type MLSplitSupportLimits._(JSObject _) implements JSObject {
  external factory MLSplitSupportLimits({
    MLTensorLimits input,
    MLTensorLimits outputs,
  });

  external MLTensorLimits get input;
  external set input(MLTensorLimits value);
  external MLTensorLimits get outputs;
  external set outputs(MLTensorLimits value);
}
extension type MLTransposeOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLTransposeOptions({
    String label,
    JSArray<JSNumber> permutation,
  });

  external JSArray<JSNumber> get permutation;
  external set permutation(JSArray<JSNumber> value);
}
extension type MLTriangularOptions._(JSObject _)
    implements MLOperatorOptions, JSObject {
  external factory MLTriangularOptions({
    String label,
    bool upper,
    int diagonal,
  });

  external bool get upper;
  external set upper(bool value);
  external int get diagonal;
  external set diagonal(int value);
}
extension type MLWhereSupportLimits._(JSObject _) implements JSObject {
  external factory MLWhereSupportLimits({
    MLTensorLimits condition,
    MLTensorLimits trueValue,
    MLTensorLimits falseValue,
    MLTensorLimits output,
  });

  external MLTensorLimits get condition;
  external set condition(MLTensorLimits value);
  external MLTensorLimits get trueValue;
  external set trueValue(MLTensorLimits value);
  external MLTensorLimits get falseValue;
  external set falseValue(MLTensorLimits value);
  external MLTensorLimits get output;
  external set output(MLTensorLimits value);
}
