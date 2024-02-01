// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'webgpu.dart';

typedef MLNamedArrayBufferViews = JSObject;
typedef MLGPUResource = JSObject;
typedef MLNamedGPUResources = JSObject;
typedef MLNamedOperands = JSObject;
typedef MLBufferView = JSObject;
typedef MLDeviceType = String;
typedef MLPowerPreference = String;
typedef MLInputOperandLayout = String;
typedef MLOperandType = String;
typedef MLConv2dFilterOperandLayout = String;
typedef MLAutoPad = String;
typedef MLConvTranspose2dFilterOperandLayout = String;
typedef MLGruWeightLayout = String;
typedef MLRecurrentNetworkDirection = String;
typedef MLLstmWeightLayout = String;
typedef MLPaddingMode = String;
typedef MLRoundingType = String;
typedef MLInterpolationMode = String;
extension type MLContextOptions._(JSObject _) implements JSObject {
  external factory MLContextOptions({
    MLDeviceType deviceType,
    MLPowerPreference powerPreference,
  });

  external set deviceType(MLDeviceType value);
  external MLDeviceType get deviceType;
  external set powerPreference(MLPowerPreference value);
  external MLPowerPreference get powerPreference;
}
extension type ML._(JSObject _) implements JSObject {
  external JSPromise<MLContext> createContext([JSObject gpuDeviceOrOptions]);
  external MLContext createContextSync([JSObject gpuDeviceOrOptions]);
}
extension type MLGraph._(JSObject _) implements JSObject {}
extension type MLOperandDescriptor._(JSObject _) implements JSObject {
  external factory MLOperandDescriptor({
    required MLOperandType type,
    JSArray<JSNumber> dimensions,
  });

  external set type(MLOperandType value);
  external MLOperandType get type;
  external set dimensions(JSArray<JSNumber> value);
  external JSArray<JSNumber> get dimensions;
}
extension type MLOperand._(JSObject _) implements JSObject {}
extension type MLActivation._(JSObject _) implements JSObject {}
extension type MLContext._(JSObject _) implements JSObject {
  external void computeSync(
    MLGraph graph,
    MLNamedArrayBufferViews inputs,
    MLNamedArrayBufferViews outputs,
  );
  external JSPromise<MLComputeResult> compute(
    MLGraph graph,
    MLNamedArrayBufferViews inputs,
    MLNamedArrayBufferViews outputs,
  );
  external MLCommandEncoder createCommandEncoder();
}
extension type MLComputeResult._(JSObject _) implements JSObject {
  external factory MLComputeResult({
    MLNamedArrayBufferViews inputs,
    MLNamedArrayBufferViews outputs,
  });

  external set inputs(MLNamedArrayBufferViews value);
  external MLNamedArrayBufferViews get inputs;
  external set outputs(MLNamedArrayBufferViews value);
  external MLNamedArrayBufferViews get outputs;
}
extension type MLCommandEncoder._(JSObject _) implements JSObject {
  external void initializeGraph(MLGraph graph);
  external void dispatch(
    MLGraph graph,
    MLNamedGPUResources inputs,
    MLNamedGPUResources outputs,
  );
  external GPUCommandBuffer finish([GPUCommandBufferDescriptor descriptor]);
}
extension type MLBufferResourceView._(JSObject _) implements JSObject {
  external factory MLBufferResourceView({
    required GPUBuffer resource,
    int offset,
    int size,
  });

  external set resource(GPUBuffer value);
  external GPUBuffer get resource;
  external set offset(int value);
  external int get offset;
  external set size(int value);
  external int get size;
}
extension type MLGraphBuilder._(JSObject _) implements JSObject {
  external factory MLGraphBuilder(MLContext context);

  external MLOperand input(
    String name,
    MLOperandDescriptor descriptor,
  );
  external MLOperand constant(
    JSAny descriptorOrValue, [
    JSAny bufferViewOrType,
  ]);
  external JSPromise<MLGraph> build(MLNamedOperands outputs);
  external MLGraph buildSync(MLNamedOperands outputs);
  external MLOperand batchNormalization(
    MLOperand input,
    MLOperand mean,
    MLOperand variance, [
    MLBatchNormalizationOptions options,
  ]);
  external JSObject clamp([
    JSObject operandOrOptions,
    MLClampOptions options,
  ]);
  external MLOperand concat(
    JSArray<MLOperand> inputs,
    int axis,
  );
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
  external MLOperand add(
    MLOperand a,
    MLOperand b,
  );
  external MLOperand sub(
    MLOperand a,
    MLOperand b,
  );
  external MLOperand mul(
    MLOperand a,
    MLOperand b,
  );
  external MLOperand div(
    MLOperand a,
    MLOperand b,
  );
  external MLOperand max(
    MLOperand a,
    MLOperand b,
  );
  external MLOperand min(
    MLOperand a,
    MLOperand b,
  );
  external MLOperand pow(
    MLOperand a,
    MLOperand b,
  );
  external MLOperand abs(MLOperand input);
  external MLOperand ceil(MLOperand input);
  external MLOperand cos(MLOperand input);
  external MLOperand exp(MLOperand input);
  external MLOperand floor(MLOperand input);
  external MLOperand log(MLOperand input);
  external MLOperand neg(MLOperand input);
  external MLOperand sin(MLOperand input);
  external MLOperand tan(MLOperand input);
  external JSObject elu([
    JSObject inputOrOptions,
    MLEluOptions options,
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
  external JSObject hardSigmoid([
    JSObject inputOrOptions,
    MLHardSigmoidOptions options,
  ]);
  external JSObject hardSwish([MLOperand input]);
  external MLOperand instanceNormalization(
    MLOperand input, [
    MLInstanceNormalizationOptions options,
  ]);
  external JSObject leakyRelu([
    JSObject inputOrOptions,
    MLLeakyReluOptions options,
  ]);
  external JSObject linear([
    JSObject inputOrOptions,
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
    MLOperand b,
  );
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
    MLOperand slope,
  );
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
  external JSObject relu([MLOperand input]);
  external MLOperand resample2d(
    MLOperand input, [
    MLResample2dOptions options,
  ]);
  external MLOperand reshape(
    MLOperand input,
    JSArray<JSNumber?> newShape,
  );
  external JSObject sigmoid([MLOperand input]);
  external MLOperand slice(
    MLOperand input,
    JSArray<JSNumber> starts,
    JSArray<JSNumber> sizes,
  );
  external JSObject softmax([MLOperand input]);
  external JSObject softplus([
    JSObject inputOrOptions,
    MLSoftplusOptions options,
  ]);
  external JSObject softsign([MLOperand input]);
  external JSArray<MLOperand> split(
    MLOperand input,
    JSAny splits, [
    MLSplitOptions options,
  ]);
  external MLOperand squeeze(
    MLOperand input, [
    MLSqueezeOptions options,
  ]);
  external JSObject tanh([MLOperand input]);
  external MLOperand transpose(
    MLOperand input, [
    MLTransposeOptions options,
  ]);
}
extension type MLBatchNormalizationOptions._(JSObject _) implements JSObject {
  external factory MLBatchNormalizationOptions({
    MLOperand scale,
    MLOperand bias,
    int axis,
    num epsilon,
    MLActivation activation,
  });

  external set scale(MLOperand value);
  external MLOperand get scale;
  external set bias(MLOperand value);
  external MLOperand get bias;
  external set axis(int value);
  external int get axis;
  external set epsilon(num value);
  external num get epsilon;
  external set activation(MLActivation value);
  external MLActivation get activation;
}
extension type MLClampOptions._(JSObject _) implements JSObject {
  external factory MLClampOptions({
    num minValue,
    num maxValue,
  });

  external set minValue(num value);
  external num get minValue;
  external set maxValue(num value);
  external num get maxValue;
}
extension type MLConv2dOptions._(JSObject _) implements JSObject {
  external factory MLConv2dOptions({
    JSArray<JSNumber> padding,
    JSArray<JSNumber> strides,
    JSArray<JSNumber> dilations,
    MLAutoPad autoPad,
    int groups,
    MLInputOperandLayout inputLayout,
    MLConv2dFilterOperandLayout filterLayout,
    MLOperand bias,
    MLActivation activation,
  });

  external set padding(JSArray<JSNumber> value);
  external JSArray<JSNumber> get padding;
  external set strides(JSArray<JSNumber> value);
  external JSArray<JSNumber> get strides;
  external set dilations(JSArray<JSNumber> value);
  external JSArray<JSNumber> get dilations;
  external set autoPad(MLAutoPad value);
  external MLAutoPad get autoPad;
  external set groups(int value);
  external int get groups;
  external set inputLayout(MLInputOperandLayout value);
  external MLInputOperandLayout get inputLayout;
  external set filterLayout(MLConv2dFilterOperandLayout value);
  external MLConv2dFilterOperandLayout get filterLayout;
  external set bias(MLOperand value);
  external MLOperand get bias;
  external set activation(MLActivation value);
  external MLActivation get activation;
}
extension type MLConvTranspose2dOptions._(JSObject _) implements JSObject {
  external factory MLConvTranspose2dOptions({
    JSArray<JSNumber> padding,
    JSArray<JSNumber> strides,
    JSArray<JSNumber> dilations,
    JSArray<JSNumber> outputPadding,
    JSArray<JSNumber> outputSizes,
    MLAutoPad autoPad,
    int groups,
    MLInputOperandLayout inputLayout,
    MLConvTranspose2dFilterOperandLayout filterLayout,
    MLOperand bias,
    MLActivation activation,
  });

  external set padding(JSArray<JSNumber> value);
  external JSArray<JSNumber> get padding;
  external set strides(JSArray<JSNumber> value);
  external JSArray<JSNumber> get strides;
  external set dilations(JSArray<JSNumber> value);
  external JSArray<JSNumber> get dilations;
  external set outputPadding(JSArray<JSNumber> value);
  external JSArray<JSNumber> get outputPadding;
  external set outputSizes(JSArray<JSNumber> value);
  external JSArray<JSNumber> get outputSizes;
  external set autoPad(MLAutoPad value);
  external MLAutoPad get autoPad;
  external set groups(int value);
  external int get groups;
  external set inputLayout(MLInputOperandLayout value);
  external MLInputOperandLayout get inputLayout;
  external set filterLayout(MLConvTranspose2dFilterOperandLayout value);
  external MLConvTranspose2dFilterOperandLayout get filterLayout;
  external set bias(MLOperand value);
  external MLOperand get bias;
  external set activation(MLActivation value);
  external MLActivation get activation;
}
extension type MLEluOptions._(JSObject _) implements JSObject {
  external factory MLEluOptions({num alpha});

  external set alpha(num value);
  external num get alpha;
}
extension type MLGemmOptions._(JSObject _) implements JSObject {
  external factory MLGemmOptions({
    MLOperand c,
    num alpha,
    num beta,
    bool aTranspose,
    bool bTranspose,
  });

  external set c(MLOperand value);
  external MLOperand get c;
  external set alpha(num value);
  external num get alpha;
  external set beta(num value);
  external num get beta;
  external set aTranspose(bool value);
  external bool get aTranspose;
  external set bTranspose(bool value);
  external bool get bTranspose;
}
extension type MLGruOptions._(JSObject _) implements JSObject {
  external factory MLGruOptions({
    MLOperand bias,
    MLOperand recurrentBias,
    MLOperand initialHiddenState,
    bool resetAfter,
    bool returnSequence,
    MLRecurrentNetworkDirection direction,
    MLGruWeightLayout layout,
    JSArray<MLActivation> activations,
  });

  external set bias(MLOperand value);
  external MLOperand get bias;
  external set recurrentBias(MLOperand value);
  external MLOperand get recurrentBias;
  external set initialHiddenState(MLOperand value);
  external MLOperand get initialHiddenState;
  external set resetAfter(bool value);
  external bool get resetAfter;
  external set returnSequence(bool value);
  external bool get returnSequence;
  external set direction(MLRecurrentNetworkDirection value);
  external MLRecurrentNetworkDirection get direction;
  external set layout(MLGruWeightLayout value);
  external MLGruWeightLayout get layout;
  external set activations(JSArray<MLActivation> value);
  external JSArray<MLActivation> get activations;
}
extension type MLGruCellOptions._(JSObject _) implements JSObject {
  external factory MLGruCellOptions({
    MLOperand bias,
    MLOperand recurrentBias,
    bool resetAfter,
    MLGruWeightLayout layout,
    JSArray<MLActivation> activations,
  });

  external set bias(MLOperand value);
  external MLOperand get bias;
  external set recurrentBias(MLOperand value);
  external MLOperand get recurrentBias;
  external set resetAfter(bool value);
  external bool get resetAfter;
  external set layout(MLGruWeightLayout value);
  external MLGruWeightLayout get layout;
  external set activations(JSArray<MLActivation> value);
  external JSArray<MLActivation> get activations;
}
extension type MLHardSigmoidOptions._(JSObject _) implements JSObject {
  external factory MLHardSigmoidOptions({
    num alpha,
    num beta,
  });

  external set alpha(num value);
  external num get alpha;
  external set beta(num value);
  external num get beta;
}
extension type MLInstanceNormalizationOptions._(JSObject _)
    implements JSObject {
  external factory MLInstanceNormalizationOptions({
    MLOperand scale,
    MLOperand bias,
    num epsilon,
    MLInputOperandLayout layout,
  });

  external set scale(MLOperand value);
  external MLOperand get scale;
  external set bias(MLOperand value);
  external MLOperand get bias;
  external set epsilon(num value);
  external num get epsilon;
  external set layout(MLInputOperandLayout value);
  external MLInputOperandLayout get layout;
}
extension type MLLeakyReluOptions._(JSObject _) implements JSObject {
  external factory MLLeakyReluOptions({num alpha});

  external set alpha(num value);
  external num get alpha;
}
extension type MLLinearOptions._(JSObject _) implements JSObject {
  external factory MLLinearOptions({
    num alpha,
    num beta,
  });

  external set alpha(num value);
  external num get alpha;
  external set beta(num value);
  external num get beta;
}
extension type MLLstmOptions._(JSObject _) implements JSObject {
  external factory MLLstmOptions({
    MLOperand bias,
    MLOperand recurrentBias,
    MLOperand peepholeWeight,
    MLOperand initialHiddenState,
    MLOperand initialCellState,
    bool returnSequence,
    MLRecurrentNetworkDirection direction,
    MLLstmWeightLayout layout,
    JSArray<MLActivation> activations,
  });

  external set bias(MLOperand value);
  external MLOperand get bias;
  external set recurrentBias(MLOperand value);
  external MLOperand get recurrentBias;
  external set peepholeWeight(MLOperand value);
  external MLOperand get peepholeWeight;
  external set initialHiddenState(MLOperand value);
  external MLOperand get initialHiddenState;
  external set initialCellState(MLOperand value);
  external MLOperand get initialCellState;
  external set returnSequence(bool value);
  external bool get returnSequence;
  external set direction(MLRecurrentNetworkDirection value);
  external MLRecurrentNetworkDirection get direction;
  external set layout(MLLstmWeightLayout value);
  external MLLstmWeightLayout get layout;
  external set activations(JSArray<MLActivation> value);
  external JSArray<MLActivation> get activations;
}
extension type MLLstmCellOptions._(JSObject _) implements JSObject {
  external factory MLLstmCellOptions({
    MLOperand bias,
    MLOperand recurrentBias,
    MLOperand peepholeWeight,
    MLLstmWeightLayout layout,
    JSArray<MLActivation> activations,
  });

  external set bias(MLOperand value);
  external MLOperand get bias;
  external set recurrentBias(MLOperand value);
  external MLOperand get recurrentBias;
  external set peepholeWeight(MLOperand value);
  external MLOperand get peepholeWeight;
  external set layout(MLLstmWeightLayout value);
  external MLLstmWeightLayout get layout;
  external set activations(JSArray<MLActivation> value);
  external JSArray<MLActivation> get activations;
}
extension type MLPadOptions._(JSObject _) implements JSObject {
  external factory MLPadOptions({
    MLPaddingMode mode,
    num value,
  });

  external set mode(MLPaddingMode value);
  external MLPaddingMode get mode;
  external set value(num value);
  external num get value;
}
extension type MLPool2dOptions._(JSObject _) implements JSObject {
  external factory MLPool2dOptions({
    JSArray<JSNumber> windowDimensions,
    JSArray<JSNumber> padding,
    JSArray<JSNumber> strides,
    JSArray<JSNumber> dilations,
    MLAutoPad autoPad,
    MLInputOperandLayout layout,
    MLRoundingType roundingType,
    JSArray<JSNumber> outputSizes,
  });

  external set windowDimensions(JSArray<JSNumber> value);
  external JSArray<JSNumber> get windowDimensions;
  external set padding(JSArray<JSNumber> value);
  external JSArray<JSNumber> get padding;
  external set strides(JSArray<JSNumber> value);
  external JSArray<JSNumber> get strides;
  external set dilations(JSArray<JSNumber> value);
  external JSArray<JSNumber> get dilations;
  external set autoPad(MLAutoPad value);
  external MLAutoPad get autoPad;
  external set layout(MLInputOperandLayout value);
  external MLInputOperandLayout get layout;
  external set roundingType(MLRoundingType value);
  external MLRoundingType get roundingType;
  external set outputSizes(JSArray<JSNumber> value);
  external JSArray<JSNumber> get outputSizes;
}
extension type MLReduceOptions._(JSObject _) implements JSObject {
  external factory MLReduceOptions({
    JSArray<JSNumber> axes,
    bool keepDimensions,
  });

  external set axes(JSArray<JSNumber> value);
  external JSArray<JSNumber> get axes;
  external set keepDimensions(bool value);
  external bool get keepDimensions;
}
extension type MLResample2dOptions._(JSObject _) implements JSObject {
  external factory MLResample2dOptions({
    MLInterpolationMode mode,
    JSArray<JSNumber> scales,
    JSArray<JSNumber> sizes,
    JSArray<JSNumber> axes,
  });

  external set mode(MLInterpolationMode value);
  external MLInterpolationMode get mode;
  external set scales(JSArray<JSNumber> value);
  external JSArray<JSNumber> get scales;
  external set sizes(JSArray<JSNumber> value);
  external JSArray<JSNumber> get sizes;
  external set axes(JSArray<JSNumber> value);
  external JSArray<JSNumber> get axes;
}
extension type MLSoftplusOptions._(JSObject _) implements JSObject {
  external factory MLSoftplusOptions({num steepness});

  external set steepness(num value);
  external num get steepness;
}
extension type MLSplitOptions._(JSObject _) implements JSObject {
  external factory MLSplitOptions({int axis});

  external set axis(int value);
  external int get axis;
}
extension type MLSqueezeOptions._(JSObject _) implements JSObject {
  external factory MLSqueezeOptions({JSArray<JSNumber> axes});

  external set axes(JSArray<JSNumber> value);
  external JSArray<JSNumber> get axes;
}
extension type MLTransposeOptions._(JSObject _) implements JSObject {
  external factory MLTransposeOptions({JSArray<JSNumber> permutation});

  external set permutation(JSArray<JSNumber> value);
  external JSArray<JSNumber> get permutation;
}
