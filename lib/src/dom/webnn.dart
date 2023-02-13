// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

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

extension MLContextOptionsExtension on MLContextOptions {
  // TODO
  // TODO
}

@JS('ML')
@staticInterop
class ML {
  external factory ML();
}

extension MLExtension on ML {
  external JSPromise createContext();
  external JSPromise createContext_1(MLContextOptions options);
  @JS('createContext')
  external JSPromise createContext1(GPUDevice gpuDevice);
  external MLContext createContextSync();
  external MLContext createContextSync_1(MLContextOptions options);
  @JS('createContextSync')
  external MLContext createContextSync1(GPUDevice gpuDevice);
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

extension MLOperandDescriptorExtension on MLOperandDescriptor {
  // TODO
  // TODO
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
  external JSUndefined computeSync(MLGraph graph,
      MLNamedArrayBufferViews inputs, MLNamedArrayBufferViews outputs);
  external JSPromise compute(MLGraph graph, MLNamedArrayBufferViews inputs,
      MLNamedArrayBufferViews outputs);
  external MLCommandEncoder createCommandEncoder();
}

@JS('MLComputeResult')
@staticInterop
class MLComputeResult {
  external factory MLComputeResult();
}

extension MLComputeResultExtension on MLComputeResult {
  // TODO
  // TODO
}

@JS('MLCommandEncoder')
@staticInterop
class MLCommandEncoder {
  external factory MLCommandEncoder();
}

extension MLCommandEncoderExtension on MLCommandEncoder {
  external JSUndefined initializeGraph(MLGraph graph);
  external JSUndefined dispatch(
      MLGraph graph, MLNamedGPUResources inputs, MLNamedGPUResources outputs);
  external GPUCommandBuffer finish();
  external GPUCommandBuffer finish_1(GPUCommandBufferDescriptor descriptor);
}

@JS('MLBufferResourceView')
@staticInterop
class MLBufferResourceView {
  external factory MLBufferResourceView();
}

extension MLBufferResourceViewExtension on MLBufferResourceView {
  // TODO
  // TODO
  // TODO
}

@JS('MLGraphBuilder')
@staticInterop
class MLGraphBuilder {
  external factory MLGraphBuilder();
  external factory MLGraphBuilder.a1(MLContext context);
}

extension MLGraphBuilderExtension on MLGraphBuilder {
  external MLOperand input(JSString name, MLOperandDescriptor desc);
  external MLOperand constant(
      MLOperandDescriptor desc, MLBufferView bufferView);
  @JS('constant')
  external MLOperand constant1(JSNumber value);
  @JS('constant')
  external MLOperand constant1_1(JSNumber value, MLOperandType type);
  external JSPromise build(MLNamedOperands outputs);
  external MLGraph buildSync(MLNamedOperands outputs);
  external MLOperand batchNormalization(
      MLOperand input, MLOperand mean, MLOperand variance);
  external MLOperand batchNormalization_1(MLOperand input, MLOperand mean,
      MLOperand variance, MLBatchNormalizationOptions options);
  external MLOperand clamp(MLOperand x);
  external MLOperand clamp_1(MLOperand x, MLClampOptions options);
  @JS('clamp')
  external MLActivation clamp1();
  @JS('clamp')
  external MLActivation clamp1_1(MLClampOptions options);
  external MLOperand concat(JSArray inputs, JSNumber axis);
  external MLOperand conv2d(MLOperand input, MLOperand filter);
  external MLOperand conv2d_1(
      MLOperand input, MLOperand filter, MLConv2dOptions options);
  external MLOperand convTranspose2d(MLOperand input, MLOperand filter);
  external MLOperand convTranspose2d_1(
      MLOperand input, MLOperand filter, MLConvTranspose2dOptions options);
  external MLOperand add(MLOperand a, MLOperand b);
  external MLOperand sub(MLOperand a, MLOperand b);
  external MLOperand mul(MLOperand a, MLOperand b);
  external MLOperand div(MLOperand a, MLOperand b);
  external MLOperand max(MLOperand a, MLOperand b);
  external MLOperand min(MLOperand a, MLOperand b);
  external MLOperand pow(MLOperand a, MLOperand b);
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
  external MLOperand elu_1(MLOperand x, MLEluOptions options);
  @JS('elu')
  external MLActivation elu1();
  @JS('elu')
  external MLActivation elu1_1(MLEluOptions options);
  external MLOperand gemm(MLOperand a, MLOperand b);
  external MLOperand gemm_1(MLOperand a, MLOperand b, MLGemmOptions options);
  external JSArray gru(MLOperand input, MLOperand weight,
      MLOperand recurrentWeight, JSNumber steps, JSNumber hiddenSize);
  external JSArray gru_1(
      MLOperand input,
      MLOperand weight,
      MLOperand recurrentWeight,
      JSNumber steps,
      JSNumber hiddenSize,
      MLGruOptions options);
  external MLOperand gruCell(MLOperand input, MLOperand weight,
      MLOperand recurrentWeight, MLOperand hiddenState, JSNumber hiddenSize);
  external MLOperand gruCell_1(
      MLOperand input,
      MLOperand weight,
      MLOperand recurrentWeight,
      MLOperand hiddenState,
      JSNumber hiddenSize,
      MLGruCellOptions options);
  external MLOperand hardSigmoid(MLOperand x);
  external MLOperand hardSigmoid_1(MLOperand x, MLHardSigmoidOptions options);
  @JS('hardSigmoid')
  external MLActivation hardSigmoid1();
  @JS('hardSigmoid')
  external MLActivation hardSigmoid1_1(MLHardSigmoidOptions options);
  external MLOperand hardSwish(MLOperand x);
  @JS('hardSwish')
  external MLActivation hardSwish1();
  external MLOperand instanceNormalization(MLOperand input);
  external MLOperand instanceNormalization_1(
      MLOperand input, MLInstanceNormalizationOptions options);
  external MLOperand leakyRelu(MLOperand x);
  external MLOperand leakyRelu_1(MLOperand x, MLLeakyReluOptions options);
  @JS('leakyRelu')
  external MLActivation leakyRelu1();
  @JS('leakyRelu')
  external MLActivation leakyRelu1_1(MLLeakyReluOptions options);
  external MLOperand linear(MLOperand x);
  external MLOperand linear_1(MLOperand x, MLLinearOptions options);
  @JS('linear')
  external MLActivation linear1();
  @JS('linear')
  external MLActivation linear1_1(MLLinearOptions options);
  external JSArray lstm(MLOperand input, MLOperand weight,
      MLOperand recurrentWeight, JSNumber steps, JSNumber hiddenSize);
  external JSArray lstm_1(
      MLOperand input,
      MLOperand weight,
      MLOperand recurrentWeight,
      JSNumber steps,
      JSNumber hiddenSize,
      MLLstmOptions options);
  external JSArray lstmCell(
      MLOperand input,
      MLOperand weight,
      MLOperand recurrentWeight,
      MLOperand hiddenState,
      MLOperand cellState,
      JSNumber hiddenSize);
  external JSArray lstmCell_1(
      MLOperand input,
      MLOperand weight,
      MLOperand recurrentWeight,
      MLOperand hiddenState,
      MLOperand cellState,
      JSNumber hiddenSize,
      MLLstmCellOptions options);
  external MLOperand matmul(MLOperand a, MLOperand b);
  external MLOperand pad(MLOperand input, MLOperand padding);
  external MLOperand pad_1(
      MLOperand input, MLOperand padding, MLPadOptions options);
  external MLOperand averagePool2d(MLOperand input);
  external MLOperand averagePool2d_1(MLOperand input, MLPool2dOptions options);
  external MLOperand l2Pool2d(MLOperand input);
  external MLOperand l2Pool2d_1(MLOperand input, MLPool2dOptions options);
  external MLOperand maxPool2d(MLOperand input);
  external MLOperand maxPool2d_1(MLOperand input, MLPool2dOptions options);
  external MLOperand reduceL1(MLOperand input);
  external MLOperand reduceL1_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceL2(MLOperand input);
  external MLOperand reduceL2_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceLogSum(MLOperand input);
  external MLOperand reduceLogSum_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceLogSumExp(MLOperand input);
  external MLOperand reduceLogSumExp_1(
      MLOperand input, MLReduceOptions options);
  external MLOperand reduceMax(MLOperand input);
  external MLOperand reduceMax_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceMean(MLOperand input);
  external MLOperand reduceMean_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceMin(MLOperand input);
  external MLOperand reduceMin_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceProduct(MLOperand input);
  external MLOperand reduceProduct_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceSum(MLOperand input);
  external MLOperand reduceSum_1(MLOperand input, MLReduceOptions options);
  external MLOperand reduceSumSquare(MLOperand input);
  external MLOperand reduceSumSquare_1(
      MLOperand input, MLReduceOptions options);
  external MLOperand relu(MLOperand x);
  @JS('relu')
  external MLActivation relu1();
  external MLOperand resample2d(MLOperand input);
  external MLOperand resample2d_1(MLOperand input, MLResample2dOptions options);
  external MLOperand reshape(MLOperand input, JSArray newShape);
  external MLOperand sigmoid(MLOperand x);
  @JS('sigmoid')
  external MLActivation sigmoid1();
  external MLOperand slice(MLOperand input, JSArray starts, JSArray sizes);
  external MLOperand slice_1(
      MLOperand input, JSArray starts, JSArray sizes, MLSliceOptions options);
  external MLOperand softmax(MLOperand x);
  @JS('softmax')
  external MLActivation softmax1();
  external MLOperand softplus(MLOperand x);
  external MLOperand softplus_1(MLOperand x, MLSoftplusOptions options);
  @JS('softplus')
  external MLActivation softplus1();
  @JS('softplus')
  external MLActivation softplus1_1(MLSoftplusOptions options);
  external MLOperand softsign(MLOperand x);
  @JS('softsign')
  external MLActivation softsign1();
  external JSArray split(MLOperand input, JSAny splits);
  external JSArray split_1(
      MLOperand input, JSAny splits, MLSplitOptions options);
  external MLOperand squeeze(MLOperand input);
  external MLOperand squeeze_1(MLOperand input, MLSqueezeOptions options);
  external MLOperand tanh(MLOperand x);
  @JS('tanh')
  external MLActivation tanh1();
  external MLOperand transpose(MLOperand input);
  external MLOperand transpose_1(MLOperand input, MLTransposeOptions options);
}

@JS('MLBatchNormalizationOptions')
@staticInterop
class MLBatchNormalizationOptions {
  external factory MLBatchNormalizationOptions();
}

extension MLBatchNormalizationOptionsExtension on MLBatchNormalizationOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLClampOptions')
@staticInterop
class MLClampOptions {
  external factory MLClampOptions();
}

extension MLClampOptionsExtension on MLClampOptions {
  // TODO
  // TODO
}

@JS('MLConv2dOptions')
@staticInterop
class MLConv2dOptions {
  external factory MLConv2dOptions();
}

extension MLConv2dOptionsExtension on MLConv2dOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLConvTranspose2dOptions')
@staticInterop
class MLConvTranspose2dOptions {
  external factory MLConvTranspose2dOptions();
}

extension MLConvTranspose2dOptionsExtension on MLConvTranspose2dOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLEluOptions')
@staticInterop
class MLEluOptions {
  external factory MLEluOptions();
}

extension MLEluOptionsExtension on MLEluOptions {
  // TODO
}

@JS('MLGemmOptions')
@staticInterop
class MLGemmOptions {
  external factory MLGemmOptions();
}

extension MLGemmOptionsExtension on MLGemmOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLGruOptions')
@staticInterop
class MLGruOptions {
  external factory MLGruOptions();
}

extension MLGruOptionsExtension on MLGruOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLGruCellOptions')
@staticInterop
class MLGruCellOptions {
  external factory MLGruCellOptions();
}

extension MLGruCellOptionsExtension on MLGruCellOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLHardSigmoidOptions')
@staticInterop
class MLHardSigmoidOptions {
  external factory MLHardSigmoidOptions();
}

extension MLHardSigmoidOptionsExtension on MLHardSigmoidOptions {
  // TODO
  // TODO
}

@JS('MLInstanceNormalizationOptions')
@staticInterop
class MLInstanceNormalizationOptions {
  external factory MLInstanceNormalizationOptions();
}

extension MLInstanceNormalizationOptionsExtension
    on MLInstanceNormalizationOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLLeakyReluOptions')
@staticInterop
class MLLeakyReluOptions {
  external factory MLLeakyReluOptions();
}

extension MLLeakyReluOptionsExtension on MLLeakyReluOptions {
  // TODO
}

@JS('MLLinearOptions')
@staticInterop
class MLLinearOptions {
  external factory MLLinearOptions();
}

extension MLLinearOptionsExtension on MLLinearOptions {
  // TODO
  // TODO
}

@JS('MLLstmOptions')
@staticInterop
class MLLstmOptions {
  external factory MLLstmOptions();
}

extension MLLstmOptionsExtension on MLLstmOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLLstmCellOptions')
@staticInterop
class MLLstmCellOptions {
  external factory MLLstmCellOptions();
}

extension MLLstmCellOptionsExtension on MLLstmCellOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLPadOptions')
@staticInterop
class MLPadOptions {
  external factory MLPadOptions();
}

extension MLPadOptionsExtension on MLPadOptions {
  // TODO
  // TODO
}

@JS('MLPool2dOptions')
@staticInterop
class MLPool2dOptions {
  external factory MLPool2dOptions();
}

extension MLPool2dOptionsExtension on MLPool2dOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLReduceOptions')
@staticInterop
class MLReduceOptions {
  external factory MLReduceOptions();
}

extension MLReduceOptionsExtension on MLReduceOptions {
  // TODO
  // TODO
}

@JS('MLResample2dOptions')
@staticInterop
class MLResample2dOptions {
  external factory MLResample2dOptions();
}

extension MLResample2dOptionsExtension on MLResample2dOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MLSliceOptions')
@staticInterop
class MLSliceOptions {
  external factory MLSliceOptions();
}

extension MLSliceOptionsExtension on MLSliceOptions {
  // TODO
}

@JS('MLSoftplusOptions')
@staticInterop
class MLSoftplusOptions {
  external factory MLSoftplusOptions();
}

extension MLSoftplusOptionsExtension on MLSoftplusOptions {
  // TODO
}

@JS('MLSplitOptions')
@staticInterop
class MLSplitOptions {
  external factory MLSplitOptions();
}

extension MLSplitOptionsExtension on MLSplitOptions {
  // TODO
}

@JS('MLSqueezeOptions')
@staticInterop
class MLSqueezeOptions {
  external factory MLSqueezeOptions();
}

extension MLSqueezeOptionsExtension on MLSqueezeOptions {
  // TODO
}

@JS('MLTransposeOptions')
@staticInterop
class MLTransposeOptions {
  external factory MLTransposeOptions();
}

extension MLTransposeOptionsExtension on MLTransposeOptions {
  // TODO
}
