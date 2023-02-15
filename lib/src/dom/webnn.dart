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

@JS('MLContextOptions')
@staticInterop
class MLContextOptions {
  external factory MLContextOptions();
}

extension MLContextOptionsExtension on MLContextOptions {}

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

@JS('MLOperandDescriptor')
@staticInterop
class MLOperandDescriptor {
  external factory MLOperandDescriptor();
}

extension MLOperandDescriptorExtension on MLOperandDescriptor {}

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

@JS('MLComputeResult')
@staticInterop
class MLComputeResult {
  external factory MLComputeResult();
}

extension MLComputeResultExtension on MLComputeResult {}

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

@JS('MLBufferResourceView')
@staticInterop
class MLBufferResourceView {
  external factory MLBufferResourceView();
}

extension MLBufferResourceViewExtension on MLBufferResourceView {}

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

@JS('MLBatchNormalizationOptions')
@staticInterop
class MLBatchNormalizationOptions {
  external factory MLBatchNormalizationOptions();
}

extension MLBatchNormalizationOptionsExtension on MLBatchNormalizationOptions {}

@JS('MLClampOptions')
@staticInterop
class MLClampOptions {
  external factory MLClampOptions();
}

extension MLClampOptionsExtension on MLClampOptions {}

@JS('MLConv2dOptions')
@staticInterop
class MLConv2dOptions {
  external factory MLConv2dOptions();
}

extension MLConv2dOptionsExtension on MLConv2dOptions {}

@JS('MLConvTranspose2dOptions')
@staticInterop
class MLConvTranspose2dOptions {
  external factory MLConvTranspose2dOptions();
}

extension MLConvTranspose2dOptionsExtension on MLConvTranspose2dOptions {}

@JS('MLEluOptions')
@staticInterop
class MLEluOptions {
  external factory MLEluOptions();
}

extension MLEluOptionsExtension on MLEluOptions {}

@JS('MLGemmOptions')
@staticInterop
class MLGemmOptions {
  external factory MLGemmOptions();
}

extension MLGemmOptionsExtension on MLGemmOptions {}

@JS('MLGruOptions')
@staticInterop
class MLGruOptions {
  external factory MLGruOptions();
}

extension MLGruOptionsExtension on MLGruOptions {}

@JS('MLGruCellOptions')
@staticInterop
class MLGruCellOptions {
  external factory MLGruCellOptions();
}

extension MLGruCellOptionsExtension on MLGruCellOptions {}

@JS('MLHardSigmoidOptions')
@staticInterop
class MLHardSigmoidOptions {
  external factory MLHardSigmoidOptions();
}

extension MLHardSigmoidOptionsExtension on MLHardSigmoidOptions {}

@JS('MLInstanceNormalizationOptions')
@staticInterop
class MLInstanceNormalizationOptions {
  external factory MLInstanceNormalizationOptions();
}

extension MLInstanceNormalizationOptionsExtension
    on MLInstanceNormalizationOptions {}

@JS('MLLeakyReluOptions')
@staticInterop
class MLLeakyReluOptions {
  external factory MLLeakyReluOptions();
}

extension MLLeakyReluOptionsExtension on MLLeakyReluOptions {}

@JS('MLLinearOptions')
@staticInterop
class MLLinearOptions {
  external factory MLLinearOptions();
}

extension MLLinearOptionsExtension on MLLinearOptions {}

@JS('MLLstmOptions')
@staticInterop
class MLLstmOptions {
  external factory MLLstmOptions();
}

extension MLLstmOptionsExtension on MLLstmOptions {}

@JS('MLLstmCellOptions')
@staticInterop
class MLLstmCellOptions {
  external factory MLLstmCellOptions();
}

extension MLLstmCellOptionsExtension on MLLstmCellOptions {}

@JS('MLPadOptions')
@staticInterop
class MLPadOptions {
  external factory MLPadOptions();
}

extension MLPadOptionsExtension on MLPadOptions {}

@JS('MLPool2dOptions')
@staticInterop
class MLPool2dOptions {
  external factory MLPool2dOptions();
}

extension MLPool2dOptionsExtension on MLPool2dOptions {}

@JS('MLReduceOptions')
@staticInterop
class MLReduceOptions {
  external factory MLReduceOptions();
}

extension MLReduceOptionsExtension on MLReduceOptions {}

@JS('MLResample2dOptions')
@staticInterop
class MLResample2dOptions {
  external factory MLResample2dOptions();
}

extension MLResample2dOptionsExtension on MLResample2dOptions {}

@JS('MLSliceOptions')
@staticInterop
class MLSliceOptions {
  external factory MLSliceOptions();
}

extension MLSliceOptionsExtension on MLSliceOptions {}

@JS('MLSoftplusOptions')
@staticInterop
class MLSoftplusOptions {
  external factory MLSoftplusOptions();
}

extension MLSoftplusOptionsExtension on MLSoftplusOptions {}

@JS('MLSplitOptions')
@staticInterop
class MLSplitOptions {
  external factory MLSplitOptions();
}

extension MLSplitOptionsExtension on MLSplitOptions {}

@JS('MLSqueezeOptions')
@staticInterop
class MLSqueezeOptions {
  external factory MLSqueezeOptions();
}

extension MLSqueezeOptionsExtension on MLSqueezeOptions {}

@JS('MLTransposeOptions')
@staticInterop
class MLTransposeOptions {
  external factory MLTransposeOptions();
}

extension MLTransposeOptionsExtension on MLTransposeOptions {}
