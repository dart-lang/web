// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'webgpu.dart';

typedef MLNamedArrayBufferViews = JSAny;
typedef MLGPUResource = JSAny;
typedef MLNamedGPUResources = JSAny;
typedef MLNamedOperands = JSAny;
typedef MLBufferView = JSAny;
typedef MLDeviceType = JSString;
typedef MLPowerPreference = JSString;
typedef MLInputOperandLayout = JSString;
typedef MLOperandType = JSString;
typedef MLConv2dFilterOperandLayout = JSString;
typedef MLAutoPad = JSString;
typedef MLConvTranspose2dFilterOperandLayout = JSString;
typedef MLGruWeightLayout = JSString;
typedef MLRecurrentNetworkDirection = JSString;
typedef MLLstmWeightLayout = JSString;
typedef MLPaddingMode = JSString;
typedef MLRoundingType = JSString;
typedef MLInterpolationMode = JSString;

@JS('NavigatorML')
@staticInterop
class NavigatorML {
  external factory NavigatorML();
}

extension NavigatorMLExtension on NavigatorML {
  external ML get ml;
}

@JS()
@staticInterop
@anonymous
class MLContextOptions {
  external factory MLContextOptions({
    MLDeviceType deviceType = 'cpu',
    MLPowerPreference powerPreference = 'default',
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
class ML {
  external factory ML();
}

extension MLExtension on ML {
  external JSPromise createContext();
  external JSPromise createContext1(MLContextOptions options);
  @JS('createContext')
  external JSPromise createContext_1_(GPUDevice gpuDevice);
  external MLContext createContextSync();
  external MLContext createContextSync1(MLContextOptions options);
  @JS('createContextSync')
  external MLContext createContextSync_1_(GPUDevice gpuDevice);
}

@JS('MLGraph')
@staticInterop
class MLGraph {
  external factory MLGraph();
}

@JS()
@staticInterop
@anonymous
class MLOperandDescriptor {
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
class MLOperand {
  external factory MLOperand();
}

@JS('MLActivation')
@staticInterop
class MLActivation {
  external factory MLActivation();
}

@JS('MLContext')
@staticInterop
class MLContext {
  external factory MLContext();
}

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
class MLComputeResult {
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
class MLCommandEncoder {
  external factory MLCommandEncoder();
}

extension MLCommandEncoderExtension on MLCommandEncoder {
  external JSVoid initializeGraph(MLGraph graph);
  external JSVoid dispatch(
    MLGraph graph,
    MLNamedGPUResources inputs,
    MLNamedGPUResources outputs,
  );
  external GPUCommandBuffer finish();
  external GPUCommandBuffer finish1(GPUCommandBufferDescriptor descriptor);
}

@JS()
@staticInterop
@anonymous
class MLBufferResourceView {
  external factory MLBufferResourceView({
    required GPUBuffer resource,
    JSNumber offset = 0,
    JSNumber size,
  });
}

extension MLBufferResourceViewExtension on MLBufferResourceView {
  external set resource(GPUBuffer value);
  external GPUBuffer get resource;
  external set offset(JSNumber value);
  external JSNumber get offset;
  external set size(JSNumber value);
  external JSNumber get size;
}

@JS('MLGraphBuilder')
@staticInterop
class MLGraphBuilder {
  external factory MLGraphBuilder();

  external factory MLGraphBuilder.a1(MLContext context);
}

extension MLGraphBuilderExtension on MLGraphBuilder {
  external MLOperand input(
    JSString name,
    MLOperandDescriptor desc,
  );
  external MLOperand constant(
    MLOperandDescriptor desc,
    MLBufferView bufferView,
  );
  @JS('constant')
  external MLOperand constant_1_(JSNumber value);
  @JS('constant')
  external MLOperand constant_1_1(
    JSNumber value,
    MLOperandType type,
  );
  external JSPromise build(MLNamedOperands outputs);
  external MLGraph buildSync(MLNamedOperands outputs);
  external MLOperand batchNormalization(
    MLOperand input,
    MLOperand mean,
    MLOperand variance,
  );
  external MLOperand batchNormalization1(
    MLOperand input,
    MLOperand mean,
    MLOperand variance,
    MLBatchNormalizationOptions options,
  );
  external MLOperand clamp(MLOperand x);
  external MLOperand clamp1(
    MLOperand x,
    MLClampOptions options,
  );
  @JS('clamp')
  external MLActivation clamp_1_();
  @JS('clamp')
  external MLActivation clamp_1_1(MLClampOptions options);
  external MLOperand concat(
    JSArray inputs,
    JSNumber axis,
  );
  external MLOperand conv2d(
    MLOperand input,
    MLOperand filter,
  );
  external MLOperand conv2d1(
    MLOperand input,
    MLOperand filter,
    MLConv2dOptions options,
  );
  external MLOperand convTranspose2d(
    MLOperand input,
    MLOperand filter,
  );
  external MLOperand convTranspose2d1(
    MLOperand input,
    MLOperand filter,
    MLConvTranspose2dOptions options,
  );
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
  external MLOperand elu(MLOperand x);
  external MLOperand elu1(
    MLOperand x,
    MLEluOptions options,
  );
  @JS('elu')
  external MLActivation elu_1_();
  @JS('elu')
  external MLActivation elu_1_1(MLEluOptions options);
  external MLOperand gemm(
    MLOperand a,
    MLOperand b,
  );
  external MLOperand gemm1(
    MLOperand a,
    MLOperand b,
    MLGemmOptions options,
  );
  external JSArray gru(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    JSNumber steps,
    JSNumber hiddenSize,
  );
  external JSArray gru1(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    JSNumber steps,
    JSNumber hiddenSize,
    MLGruOptions options,
  );
  external MLOperand gruCell(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    MLOperand hiddenState,
    JSNumber hiddenSize,
  );
  external MLOperand gruCell1(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    MLOperand hiddenState,
    JSNumber hiddenSize,
    MLGruCellOptions options,
  );
  external MLOperand hardSigmoid(MLOperand x);
  external MLOperand hardSigmoid1(
    MLOperand x,
    MLHardSigmoidOptions options,
  );
  @JS('hardSigmoid')
  external MLActivation hardSigmoid_1_();
  @JS('hardSigmoid')
  external MLActivation hardSigmoid_1_1(MLHardSigmoidOptions options);
  external MLOperand hardSwish(MLOperand x);
  @JS('hardSwish')
  external MLActivation hardSwish_1_();
  external MLOperand instanceNormalization(MLOperand input);
  external MLOperand instanceNormalization1(
    MLOperand input,
    MLInstanceNormalizationOptions options,
  );
  external MLOperand leakyRelu(MLOperand x);
  external MLOperand leakyRelu1(
    MLOperand x,
    MLLeakyReluOptions options,
  );
  @JS('leakyRelu')
  external MLActivation leakyRelu_1_();
  @JS('leakyRelu')
  external MLActivation leakyRelu_1_1(MLLeakyReluOptions options);
  external MLOperand linear(MLOperand x);
  external MLOperand linear1(
    MLOperand x,
    MLLinearOptions options,
  );
  @JS('linear')
  external MLActivation linear_1_();
  @JS('linear')
  external MLActivation linear_1_1(MLLinearOptions options);
  external JSArray lstm(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    JSNumber steps,
    JSNumber hiddenSize,
  );
  external JSArray lstm1(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    JSNumber steps,
    JSNumber hiddenSize,
    MLLstmOptions options,
  );
  external JSArray lstmCell(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    MLOperand hiddenState,
    MLOperand cellState,
    JSNumber hiddenSize,
  );
  external JSArray lstmCell1(
    MLOperand input,
    MLOperand weight,
    MLOperand recurrentWeight,
    MLOperand hiddenState,
    MLOperand cellState,
    JSNumber hiddenSize,
    MLLstmCellOptions options,
  );
  external MLOperand matmul(
    MLOperand a,
    MLOperand b,
  );
  external MLOperand pad(
    MLOperand input,
    MLOperand padding,
  );
  external MLOperand pad1(
    MLOperand input,
    MLOperand padding,
    MLPadOptions options,
  );
  external MLOperand averagePool2d(MLOperand input);
  external MLOperand averagePool2d1(
    MLOperand input,
    MLPool2dOptions options,
  );
  external MLOperand l2Pool2d(MLOperand input);
  external MLOperand l2Pool2d1(
    MLOperand input,
    MLPool2dOptions options,
  );
  external MLOperand maxPool2d(MLOperand input);
  external MLOperand maxPool2d1(
    MLOperand input,
    MLPool2dOptions options,
  );
  external MLOperand reduceL1(MLOperand input);
  external MLOperand reduceL11(
    MLOperand input,
    MLReduceOptions options,
  );
  external MLOperand reduceL2(MLOperand input);
  external MLOperand reduceL21(
    MLOperand input,
    MLReduceOptions options,
  );
  external MLOperand reduceLogSum(MLOperand input);
  external MLOperand reduceLogSum1(
    MLOperand input,
    MLReduceOptions options,
  );
  external MLOperand reduceLogSumExp(MLOperand input);
  external MLOperand reduceLogSumExp1(
    MLOperand input,
    MLReduceOptions options,
  );
  external MLOperand reduceMax(MLOperand input);
  external MLOperand reduceMax1(
    MLOperand input,
    MLReduceOptions options,
  );
  external MLOperand reduceMean(MLOperand input);
  external MLOperand reduceMean1(
    MLOperand input,
    MLReduceOptions options,
  );
  external MLOperand reduceMin(MLOperand input);
  external MLOperand reduceMin1(
    MLOperand input,
    MLReduceOptions options,
  );
  external MLOperand reduceProduct(MLOperand input);
  external MLOperand reduceProduct1(
    MLOperand input,
    MLReduceOptions options,
  );
  external MLOperand reduceSum(MLOperand input);
  external MLOperand reduceSum1(
    MLOperand input,
    MLReduceOptions options,
  );
  external MLOperand reduceSumSquare(MLOperand input);
  external MLOperand reduceSumSquare1(
    MLOperand input,
    MLReduceOptions options,
  );
  external MLOperand relu(MLOperand x);
  @JS('relu')
  external MLActivation relu_1_();
  external MLOperand resample2d(MLOperand input);
  external MLOperand resample2d1(
    MLOperand input,
    MLResample2dOptions options,
  );
  external MLOperand reshape(
    MLOperand input,
    JSArray newShape,
  );
  external MLOperand sigmoid(MLOperand x);
  @JS('sigmoid')
  external MLActivation sigmoid_1_();
  external MLOperand slice(
    MLOperand input,
    JSArray starts,
    JSArray sizes,
  );
  external MLOperand slice1(
    MLOperand input,
    JSArray starts,
    JSArray sizes,
    MLSliceOptions options,
  );
  external MLOperand softmax(MLOperand x);
  @JS('softmax')
  external MLActivation softmax_1_();
  external MLOperand softplus(MLOperand x);
  external MLOperand softplus1(
    MLOperand x,
    MLSoftplusOptions options,
  );
  @JS('softplus')
  external MLActivation softplus_1_();
  @JS('softplus')
  external MLActivation softplus_1_1(MLSoftplusOptions options);
  external MLOperand softsign(MLOperand x);
  @JS('softsign')
  external MLActivation softsign_1_();
  external JSArray split(
    MLOperand input,
    JSAny splits,
  );
  external JSArray split1(
    MLOperand input,
    JSAny splits,
    MLSplitOptions options,
  );
  external MLOperand squeeze(MLOperand input);
  external MLOperand squeeze1(
    MLOperand input,
    MLSqueezeOptions options,
  );
  external MLOperand tanh(MLOperand x);
  @JS('tanh')
  external MLActivation tanh_1_();
  external MLOperand transpose(MLOperand input);
  external MLOperand transpose1(
    MLOperand input,
    MLTransposeOptions options,
  );
}

@JS()
@staticInterop
@anonymous
class MLBatchNormalizationOptions {
  external factory MLBatchNormalizationOptions({
    MLOperand scale,
    MLOperand bias,
    JSNumber axis = 1,
    JSNumber epsilon = 1e-5,
    MLActivation activation,
  });
}

extension MLBatchNormalizationOptionsExtension on MLBatchNormalizationOptions {
  external set scale(MLOperand value);
  external MLOperand get scale;
  external set bias(MLOperand value);
  external MLOperand get bias;
  external set axis(JSNumber value);
  external JSNumber get axis;
  external set epsilon(JSNumber value);
  external JSNumber get epsilon;
  external set activation(MLActivation value);
  external MLActivation get activation;
}

@JS()
@staticInterop
@anonymous
class MLClampOptions {
  external factory MLClampOptions({
    JSNumber minValue,
    JSNumber maxValue,
  });
}

extension MLClampOptionsExtension on MLClampOptions {
  external set minValue(JSNumber value);
  external JSNumber get minValue;
  external set maxValue(JSNumber value);
  external JSNumber get maxValue;
}

@JS()
@staticInterop
@anonymous
class MLConv2dOptions {
  external factory MLConv2dOptions({
    JSArray padding,
    JSArray strides,
    JSArray dilations,
    MLAutoPad autoPad = 'explicit',
    JSNumber groups = 1,
    MLInputOperandLayout inputLayout = 'nchw',
    MLConv2dFilterOperandLayout filterLayout = 'oihw',
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
  external set groups(JSNumber value);
  external JSNumber get groups;
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
class MLConvTranspose2dOptions {
  external factory MLConvTranspose2dOptions({
    JSArray padding,
    JSArray strides,
    JSArray dilations,
    JSArray outputPadding,
    JSArray outputSizes,
    MLAutoPad autoPad = 'explicit',
    JSNumber groups = 1,
    MLInputOperandLayout inputLayout = 'nchw',
    MLConvTranspose2dFilterOperandLayout filterLayout = 'iohw',
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
  external set groups(JSNumber value);
  external JSNumber get groups;
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
class MLEluOptions {
  external factory MLEluOptions({JSNumber alpha = 1});
}

extension MLEluOptionsExtension on MLEluOptions {
  external set alpha(JSNumber value);
  external JSNumber get alpha;
}

@JS()
@staticInterop
@anonymous
class MLGemmOptions {
  external factory MLGemmOptions({
    MLOperand c,
    JSNumber alpha = 1.0,
    JSNumber beta = 1.0,
    JSBoolean aTranspose = false,
    JSBoolean bTranspose = false,
  });
}

extension MLGemmOptionsExtension on MLGemmOptions {
  external set c(MLOperand value);
  external MLOperand get c;
  external set alpha(JSNumber value);
  external JSNumber get alpha;
  external set beta(JSNumber value);
  external JSNumber get beta;
  external set aTranspose(JSBoolean value);
  external JSBoolean get aTranspose;
  external set bTranspose(JSBoolean value);
  external JSBoolean get bTranspose;
}

@JS()
@staticInterop
@anonymous
class MLGruOptions {
  external factory MLGruOptions({
    MLOperand bias,
    MLOperand recurrentBias,
    MLOperand initialHiddenState,
    JSBoolean resetAfter = true,
    JSBoolean returnSequence = false,
    MLRecurrentNetworkDirection direction = 'forward',
    MLGruWeightLayout layout = 'zrn',
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
  external set resetAfter(JSBoolean value);
  external JSBoolean get resetAfter;
  external set returnSequence(JSBoolean value);
  external JSBoolean get returnSequence;
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
class MLGruCellOptions {
  external factory MLGruCellOptions({
    MLOperand bias,
    MLOperand recurrentBias,
    JSBoolean resetAfter = true,
    MLGruWeightLayout layout = 'zrn',
    JSArray activations,
  });
}

extension MLGruCellOptionsExtension on MLGruCellOptions {
  external set bias(MLOperand value);
  external MLOperand get bias;
  external set recurrentBias(MLOperand value);
  external MLOperand get recurrentBias;
  external set resetAfter(JSBoolean value);
  external JSBoolean get resetAfter;
  external set layout(MLGruWeightLayout value);
  external MLGruWeightLayout get layout;
  external set activations(JSArray value);
  external JSArray get activations;
}

@JS()
@staticInterop
@anonymous
class MLHardSigmoidOptions {
  external factory MLHardSigmoidOptions({
    JSNumber alpha = 0.2,
    JSNumber beta = 0.5,
  });
}

extension MLHardSigmoidOptionsExtension on MLHardSigmoidOptions {
  external set alpha(JSNumber value);
  external JSNumber get alpha;
  external set beta(JSNumber value);
  external JSNumber get beta;
}

@JS()
@staticInterop
@anonymous
class MLInstanceNormalizationOptions {
  external factory MLInstanceNormalizationOptions({
    MLOperand scale,
    MLOperand bias,
    JSNumber epsilon = 1e-5,
    MLInputOperandLayout layout = 'nchw',
  });
}

extension MLInstanceNormalizationOptionsExtension
    on MLInstanceNormalizationOptions {
  external set scale(MLOperand value);
  external MLOperand get scale;
  external set bias(MLOperand value);
  external MLOperand get bias;
  external set epsilon(JSNumber value);
  external JSNumber get epsilon;
  external set layout(MLInputOperandLayout value);
  external MLInputOperandLayout get layout;
}

@JS()
@staticInterop
@anonymous
class MLLeakyReluOptions {
  external factory MLLeakyReluOptions({JSNumber alpha = 0.01});
}

extension MLLeakyReluOptionsExtension on MLLeakyReluOptions {
  external set alpha(JSNumber value);
  external JSNumber get alpha;
}

@JS()
@staticInterop
@anonymous
class MLLinearOptions {
  external factory MLLinearOptions({
    JSNumber alpha = 1,
    JSNumber beta = 0,
  });
}

extension MLLinearOptionsExtension on MLLinearOptions {
  external set alpha(JSNumber value);
  external JSNumber get alpha;
  external set beta(JSNumber value);
  external JSNumber get beta;
}

@JS()
@staticInterop
@anonymous
class MLLstmOptions {
  external factory MLLstmOptions({
    MLOperand bias,
    MLOperand recurrentBias,
    MLOperand peepholeWeight,
    MLOperand initialHiddenState,
    MLOperand initialCellState,
    JSBoolean returnSequence = false,
    MLRecurrentNetworkDirection direction = 'forward',
    MLLstmWeightLayout layout = 'iofg',
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
  external set returnSequence(JSBoolean value);
  external JSBoolean get returnSequence;
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
class MLLstmCellOptions {
  external factory MLLstmCellOptions({
    MLOperand bias,
    MLOperand recurrentBias,
    MLOperand peepholeWeight,
    MLLstmWeightLayout layout = 'iofg',
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
class MLPadOptions {
  external factory MLPadOptions({
    MLPaddingMode mode = 'constant',
    JSNumber value = 0,
  });
}

extension MLPadOptionsExtension on MLPadOptions {
  external set mode(MLPaddingMode value);
  external MLPaddingMode get mode;
  external set value(JSNumber value);
  external JSNumber get value;
}

@JS()
@staticInterop
@anonymous
class MLPool2dOptions {
  external factory MLPool2dOptions({
    JSArray windowDimensions,
    JSArray padding,
    JSArray strides,
    JSArray dilations,
    MLAutoPad autoPad = 'explicit',
    MLInputOperandLayout layout = 'nchw',
    MLRoundingType roundingType = 'floor',
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
class MLReduceOptions {
  external factory MLReduceOptions({
    JSArray axes,
    JSBoolean keepDimensions = false,
  });
}

extension MLReduceOptionsExtension on MLReduceOptions {
  external set axes(JSArray value);
  external JSArray get axes;
  external set keepDimensions(JSBoolean value);
  external JSBoolean get keepDimensions;
}

@JS()
@staticInterop
@anonymous
class MLResample2dOptions {
  external factory MLResample2dOptions({
    MLInterpolationMode mode = 'nearest-neighbor',
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
class MLSliceOptions {
  external factory MLSliceOptions({JSArray axes});
}

extension MLSliceOptionsExtension on MLSliceOptions {
  external set axes(JSArray value);
  external JSArray get axes;
}

@JS()
@staticInterop
@anonymous
class MLSoftplusOptions {
  external factory MLSoftplusOptions({JSNumber steepness = 1});
}

extension MLSoftplusOptionsExtension on MLSoftplusOptions {
  external set steepness(JSNumber value);
  external JSNumber get steepness;
}

@JS()
@staticInterop
@anonymous
class MLSplitOptions {
  external factory MLSplitOptions({JSNumber axis = 0});
}

extension MLSplitOptionsExtension on MLSplitOptions {
  external set axis(JSNumber value);
  external JSNumber get axis;
}

@JS()
@staticInterop
@anonymous
class MLSqueezeOptions {
  external factory MLSqueezeOptions({JSArray axes});
}

extension MLSqueezeOptionsExtension on MLSqueezeOptions {
  external set axes(JSArray value);
  external JSArray get axes;
}

@JS()
@staticInterop
@anonymous
class MLTransposeOptions {
  external factory MLTransposeOptions({JSArray permutation});
}

extension MLTransposeOptionsExtension on MLTransposeOptions {
  external set permutation(JSArray value);
  external JSArray get permutation;
}
