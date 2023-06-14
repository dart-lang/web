// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webgpu.dart';

typedef MLNamedArrayBufferViews = JSAny?;
typedef MLGPUResource = JSAny?;
typedef MLNamedGPUResources = JSAny?;
typedef MLNamedOperands = JSAny?;
typedef MLBufferView = JSAny?;
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

@JS('NavigatorML')
@staticInterop
class NavigatorML implements JSObject {}

extension NavigatorMLExtension on NavigatorML {
  external ML get ml;
}

@JS()
@staticInterop
@anonymous
class MLContextOptions implements JSObject {
  external factory MLContextOptions({
    MLDeviceType deviceType,
    MLPowerPreference powerPreference,
  });
}

extension MLContextOptionsExtension on MLContextOptions {
  external set deviceType(MLDeviceType value);
  external MLDeviceType get deviceType;
  external set powerPreference(MLPowerPreference value);
  external MLPowerPreference get powerPreference;
}

@JS('ML')
@staticInterop
class ML implements JSObject {}

extension MLExtension on ML {
  external JSPromise createContext([JSAny? gpuDeviceOrOptions]);
  external MLContext createContextSync([JSAny? gpuDeviceOrOptions]);
}

@JS('MLGraph')
@staticInterop
class MLGraph implements JSObject {}

@JS()
@staticInterop
@anonymous
class MLOperandDescriptor implements JSObject {
  external factory MLOperandDescriptor({
    required MLOperandType type,
    JSArray dimensions,
  });
}

extension MLOperandDescriptorExtension on MLOperandDescriptor {
  external set type(MLOperandType value);
  external MLOperandType get type;
  external set dimensions(JSArray value);
  external JSArray get dimensions;
}

@JS('MLOperand')
@staticInterop
class MLOperand implements JSObject {}

@JS('MLActivation')
@staticInterop
class MLActivation implements JSObject {}

@JS('MLContext')
@staticInterop
class MLContext implements JSObject {}

extension MLContextExtension on MLContext {
  external JSVoid computeSync(
    MLGraph graph,
    MLNamedArrayBufferViews inputs,
    MLNamedArrayBufferViews outputs,
  );
  external JSPromise compute(
    MLGraph graph,
    MLNamedArrayBufferViews inputs,
    MLNamedArrayBufferViews outputs,
  );
  external MLCommandEncoder createCommandEncoder();
}

@JS()
@staticInterop
@anonymous
class MLComputeResult implements JSObject {
  external factory MLComputeResult({
    MLNamedArrayBufferViews inputs,
    MLNamedArrayBufferViews outputs,
  });
}

extension MLComputeResultExtension on MLComputeResult {
  external set inputs(MLNamedArrayBufferViews value);
  external MLNamedArrayBufferViews get inputs;
  external set outputs(MLNamedArrayBufferViews value);
  external MLNamedArrayBufferViews get outputs;
}

@JS('MLCommandEncoder')
@staticInterop
class MLCommandEncoder implements JSObject {}

extension MLCommandEncoderExtension on MLCommandEncoder {
  external JSVoid initializeGraph(MLGraph graph);
  external JSVoid dispatch(
    MLGraph graph,
    MLNamedGPUResources inputs,
    MLNamedGPUResources outputs,
  );
  external GPUCommandBuffer finish([GPUCommandBufferDescriptor descriptor]);
}

@JS()
@staticInterop
@anonymous
class MLBufferResourceView implements JSObject {
  external factory MLBufferResourceView({
    required GPUBuffer resource,
    int offset,
    int size,
  });
}

extension MLBufferResourceViewExtension on MLBufferResourceView {
  external set resource(GPUBuffer value);
  external GPUBuffer get resource;
  external set offset(int value);
  external int get offset;
  external set size(int value);
  external int get size;
}

@JS('MLGraphBuilder')
@staticInterop
class MLGraphBuilder implements JSObject {
  external factory MLGraphBuilder(MLContext context);
}

extension MLGraphBuilderExtension on MLGraphBuilder {
  external MLOperand input(
    String name,
    MLOperandDescriptor desc,
  );
  external MLOperand constant(
    JSAny? descOrValue, [
    JSAny? bufferViewOrType,
  ]);
  external JSPromise build(MLNamedOperands outputs);
  external MLGraph buildSync(MLNamedOperands outputs);
  external MLOperand batchNormalization(
    MLOperand input,
    MLOperand mean,
    MLOperand variance, [
    MLBatchNormalizationOptions options,
  ]);
  external JSAny? clamp([
    JSAny? optionsOrX,
    MLClampOptions options,
  ]);
  external MLOperand concat(
    JSArray inputs,
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
  external MLOperand abs(MLOperand x);
  external MLOperand ceil(MLOperand x);
  external MLOperand cos(MLOperand x);
  external MLOperand exp(MLOperand x);
  external MLOperand floor(MLOperand x);
  external MLOperand log(MLOperand x);
  external MLOperand neg(MLOperand x);
  external MLOperand sin(MLOperand x);
  external MLOperand tan(MLOperand x);
  external JSAny? elu([
    JSAny? optionsOrX,
    MLEluOptions options,
  ]);
  external MLOperand gemm(
    MLOperand a,
    MLOperand b, [
    MLGemmOptions options,
  ]);
  external JSArray gru(
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
  external JSAny? hardSigmoid([
    JSAny? optionsOrX,
    MLHardSigmoidOptions options,
  ]);
  external JSAny? hardSwish([MLOperand x]);
  external MLOperand instanceNormalization(
    MLOperand input, [
    MLInstanceNormalizationOptions options,
  ]);
  external JSAny? leakyRelu([
    JSAny? optionsOrX,
    MLLeakyReluOptions options,
  ]);
  external JSAny? linear([
    JSAny? optionsOrX,
    MLLinearOptions options,
  ]);
  external JSArray lstm(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    int steps,
    int hiddenSize, [
    MLLstmOptions options,
  ]);
  external JSArray lstmCell(
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
    JSArray beginningPadding,
    JSArray endingPadding, [
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
    MLOperand x,
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
  external JSAny? relu([MLOperand x]);
  external MLOperand resample2d(
    MLOperand input, [
    MLResample2dOptions options,
  ]);
  external MLOperand reshape(
    MLOperand input,
    JSArray newShape,
  );
  external JSAny? sigmoid([MLOperand x]);
  external MLOperand slice(
    MLOperand input,
    JSArray starts,
    JSArray sizes,
  );
  external JSAny? softmax([MLOperand x]);
  external JSAny? softplus([
    JSAny? optionsOrX,
    MLSoftplusOptions options,
  ]);
  external JSAny? softsign([MLOperand x]);
  external JSArray split(
    MLOperand input,
    JSAny? splits, [
    MLSplitOptions options,
  ]);
  external MLOperand squeeze(
    MLOperand input, [
    MLSqueezeOptions options,
  ]);
  external JSAny? tanh([MLOperand x]);
  external MLOperand transpose(
    MLOperand input, [
    MLTransposeOptions options,
  ]);
}

@JS()
@staticInterop
@anonymous
class MLBatchNormalizationOptions implements JSObject {
  external factory MLBatchNormalizationOptions({
    MLOperand scale,
    MLOperand bias,
    int axis,
    double epsilon,
    MLActivation activation,
  });
}

extension MLBatchNormalizationOptionsExtension on MLBatchNormalizationOptions {
  external set scale(MLOperand value);
  external MLOperand get scale;
  external set bias(MLOperand value);
  external MLOperand get bias;
  external set axis(int value);
  external int get axis;
  external set epsilon(double value);
  external double get epsilon;
  external set activation(MLActivation value);
  external MLActivation get activation;
}

@JS()
@staticInterop
@anonymous
class MLClampOptions implements JSObject {
  external factory MLClampOptions({
    double minValue,
    double maxValue,
  });
}

extension MLClampOptionsExtension on MLClampOptions {
  external set minValue(double value);
  external double get minValue;
  external set maxValue(double value);
  external double get maxValue;
}

@JS()
@staticInterop
@anonymous
class MLConv2dOptions implements JSObject {
  external factory MLConv2dOptions({
    JSArray padding,
    JSArray strides,
    JSArray dilations,
    MLAutoPad autoPad,
    int groups,
    MLInputOperandLayout inputLayout,
    MLConv2dFilterOperandLayout filterLayout,
    MLOperand bias,
    MLActivation activation,
  });
}

extension MLConv2dOptionsExtension on MLConv2dOptions {
  external set padding(JSArray value);
  external JSArray get padding;
  external set strides(JSArray value);
  external JSArray get strides;
  external set dilations(JSArray value);
  external JSArray get dilations;
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

@JS()
@staticInterop
@anonymous
class MLConvTranspose2dOptions implements JSObject {
  external factory MLConvTranspose2dOptions({
    JSArray padding,
    JSArray strides,
    JSArray dilations,
    JSArray outputPadding,
    JSArray outputSizes,
    MLAutoPad autoPad,
    int groups,
    MLInputOperandLayout inputLayout,
    MLConvTranspose2dFilterOperandLayout filterLayout,
    MLOperand bias,
    MLActivation activation,
  });
}

extension MLConvTranspose2dOptionsExtension on MLConvTranspose2dOptions {
  external set padding(JSArray value);
  external JSArray get padding;
  external set strides(JSArray value);
  external JSArray get strides;
  external set dilations(JSArray value);
  external JSArray get dilations;
  external set outputPadding(JSArray value);
  external JSArray get outputPadding;
  external set outputSizes(JSArray value);
  external JSArray get outputSizes;
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

@JS()
@staticInterop
@anonymous
class MLEluOptions implements JSObject {
  external factory MLEluOptions({double alpha});
}

extension MLEluOptionsExtension on MLEluOptions {
  external set alpha(double value);
  external double get alpha;
}

@JS()
@staticInterop
@anonymous
class MLGemmOptions implements JSObject {
  external factory MLGemmOptions({
    MLOperand c,
    double alpha,
    double beta,
    bool aTranspose,
    bool bTranspose,
  });
}

extension MLGemmOptionsExtension on MLGemmOptions {
  external set c(MLOperand value);
  external MLOperand get c;
  external set alpha(double value);
  external double get alpha;
  external set beta(double value);
  external double get beta;
  external set aTranspose(bool value);
  external bool get aTranspose;
  external set bTranspose(bool value);
  external bool get bTranspose;
}

@JS()
@staticInterop
@anonymous
class MLGruOptions implements JSObject {
  external factory MLGruOptions({
    MLOperand bias,
    MLOperand recurrentBias,
    MLOperand initialHiddenState,
    bool resetAfter,
    bool returnSequence,
    MLRecurrentNetworkDirection direction,
    MLGruWeightLayout layout,
    JSArray activations,
  });
}

extension MLGruOptionsExtension on MLGruOptions {
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
  external set activations(JSArray value);
  external JSArray get activations;
}

@JS()
@staticInterop
@anonymous
class MLGruCellOptions implements JSObject {
  external factory MLGruCellOptions({
    MLOperand bias,
    MLOperand recurrentBias,
    bool resetAfter,
    MLGruWeightLayout layout,
    JSArray activations,
  });
}

extension MLGruCellOptionsExtension on MLGruCellOptions {
  external set bias(MLOperand value);
  external MLOperand get bias;
  external set recurrentBias(MLOperand value);
  external MLOperand get recurrentBias;
  external set resetAfter(bool value);
  external bool get resetAfter;
  external set layout(MLGruWeightLayout value);
  external MLGruWeightLayout get layout;
  external set activations(JSArray value);
  external JSArray get activations;
}

@JS()
@staticInterop
@anonymous
class MLHardSigmoidOptions implements JSObject {
  external factory MLHardSigmoidOptions({
    double alpha,
    double beta,
  });
}

extension MLHardSigmoidOptionsExtension on MLHardSigmoidOptions {
  external set alpha(double value);
  external double get alpha;
  external set beta(double value);
  external double get beta;
}

@JS()
@staticInterop
@anonymous
class MLInstanceNormalizationOptions implements JSObject {
  external factory MLInstanceNormalizationOptions({
    MLOperand scale,
    MLOperand bias,
    double epsilon,
    MLInputOperandLayout layout,
  });
}

extension MLInstanceNormalizationOptionsExtension
    on MLInstanceNormalizationOptions {
  external set scale(MLOperand value);
  external MLOperand get scale;
  external set bias(MLOperand value);
  external MLOperand get bias;
  external set epsilon(double value);
  external double get epsilon;
  external set layout(MLInputOperandLayout value);
  external MLInputOperandLayout get layout;
}

@JS()
@staticInterop
@anonymous
class MLLeakyReluOptions implements JSObject {
  external factory MLLeakyReluOptions({double alpha});
}

extension MLLeakyReluOptionsExtension on MLLeakyReluOptions {
  external set alpha(double value);
  external double get alpha;
}

@JS()
@staticInterop
@anonymous
class MLLinearOptions implements JSObject {
  external factory MLLinearOptions({
    double alpha,
    double beta,
  });
}

extension MLLinearOptionsExtension on MLLinearOptions {
  external set alpha(double value);
  external double get alpha;
  external set beta(double value);
  external double get beta;
}

@JS()
@staticInterop
@anonymous
class MLLstmOptions implements JSObject {
  external factory MLLstmOptions({
    MLOperand bias,
    MLOperand recurrentBias,
    MLOperand peepholeWeight,
    MLOperand initialHiddenState,
    MLOperand initialCellState,
    bool returnSequence,
    MLRecurrentNetworkDirection direction,
    MLLstmWeightLayout layout,
    JSArray activations,
  });
}

extension MLLstmOptionsExtension on MLLstmOptions {
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
  external set activations(JSArray value);
  external JSArray get activations;
}

@JS()
@staticInterop
@anonymous
class MLLstmCellOptions implements JSObject {
  external factory MLLstmCellOptions({
    MLOperand bias,
    MLOperand recurrentBias,
    MLOperand peepholeWeight,
    MLLstmWeightLayout layout,
    JSArray activations,
  });
}

extension MLLstmCellOptionsExtension on MLLstmCellOptions {
  external set bias(MLOperand value);
  external MLOperand get bias;
  external set recurrentBias(MLOperand value);
  external MLOperand get recurrentBias;
  external set peepholeWeight(MLOperand value);
  external MLOperand get peepholeWeight;
  external set layout(MLLstmWeightLayout value);
  external MLLstmWeightLayout get layout;
  external set activations(JSArray value);
  external JSArray get activations;
}

@JS()
@staticInterop
@anonymous
class MLPadOptions implements JSObject {
  external factory MLPadOptions({
    MLPaddingMode mode,
    double value,
  });
}

extension MLPadOptionsExtension on MLPadOptions {
  external set mode(MLPaddingMode value);
  external MLPaddingMode get mode;
  external set value(double value);
  external double get value;
}

@JS()
@staticInterop
@anonymous
class MLPool2dOptions implements JSObject {
  external factory MLPool2dOptions({
    JSArray windowDimensions,
    JSArray padding,
    JSArray strides,
    JSArray dilations,
    MLAutoPad autoPad,
    MLInputOperandLayout layout,
    MLRoundingType roundingType,
    JSArray outputSizes,
  });
}

extension MLPool2dOptionsExtension on MLPool2dOptions {
  external set windowDimensions(JSArray value);
  external JSArray get windowDimensions;
  external set padding(JSArray value);
  external JSArray get padding;
  external set strides(JSArray value);
  external JSArray get strides;
  external set dilations(JSArray value);
  external JSArray get dilations;
  external set autoPad(MLAutoPad value);
  external MLAutoPad get autoPad;
  external set layout(MLInputOperandLayout value);
  external MLInputOperandLayout get layout;
  external set roundingType(MLRoundingType value);
  external MLRoundingType get roundingType;
  external set outputSizes(JSArray value);
  external JSArray get outputSizes;
}

@JS()
@staticInterop
@anonymous
class MLReduceOptions implements JSObject {
  external factory MLReduceOptions({
    JSArray axes,
    bool keepDimensions,
  });
}

extension MLReduceOptionsExtension on MLReduceOptions {
  external set axes(JSArray value);
  external JSArray get axes;
  external set keepDimensions(bool value);
  external bool get keepDimensions;
}

@JS()
@staticInterop
@anonymous
class MLResample2dOptions implements JSObject {
  external factory MLResample2dOptions({
    MLInterpolationMode mode,
    JSArray scales,
    JSArray sizes,
    JSArray axes,
  });
}

extension MLResample2dOptionsExtension on MLResample2dOptions {
  external set mode(MLInterpolationMode value);
  external MLInterpolationMode get mode;
  external set scales(JSArray value);
  external JSArray get scales;
  external set sizes(JSArray value);
  external JSArray get sizes;
  external set axes(JSArray value);
  external JSArray get axes;
}

@JS()
@staticInterop
@anonymous
class MLSoftplusOptions implements JSObject {
  external factory MLSoftplusOptions({double steepness});
}

extension MLSoftplusOptionsExtension on MLSoftplusOptions {
  external set steepness(double value);
  external double get steepness;
}

@JS()
@staticInterop
@anonymous
class MLSplitOptions implements JSObject {
  external factory MLSplitOptions({int axis});
}

extension MLSplitOptionsExtension on MLSplitOptions {
  external set axis(int value);
  external int get axis;
}

@JS()
@staticInterop
@anonymous
class MLSqueezeOptions implements JSObject {
  external factory MLSqueezeOptions({JSArray axes});
}

extension MLSqueezeOptionsExtension on MLSqueezeOptions {
  external set axes(JSArray value);
  external JSArray get axes;
}

@JS()
@staticInterop
@anonymous
class MLTransposeOptions implements JSObject {
  external factory MLTransposeOptions({JSArray permutation});
}

extension MLTransposeOptionsExtension on MLTransposeOptions {
  external set permutation(JSArray value);
  external JSArray get permutation;
}
