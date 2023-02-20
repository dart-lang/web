// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'mediacapture_streams.dart';

typedef DecodeErrorCallback = JSFunction;
typedef DecodeSuccessCallback = JSFunction;
typedef AudioWorkletProcessorConstructor = JSFunction;
typedef AudioWorkletProcessCallback = JSFunction;
typedef AudioContextState = JSString;
typedef AudioContextLatencyCategory = JSString;
typedef AudioSinkType = JSString;
typedef ChannelCountMode = JSString;
typedef ChannelInterpretation = JSString;
typedef AutomationRate = JSString;
typedef BiquadFilterType = JSString;
typedef OscillatorType = JSString;
typedef PanningModelType = JSString;
typedef DistanceModelType = JSString;
typedef OverSampleType = JSString;

@JS('BaseAudioContext')
@staticInterop
class BaseAudioContext extends EventTarget {
  external factory BaseAudioContext();
}

extension BaseAudioContextExtension on BaseAudioContext {
  external AudioDestinationNode get destination;
  external JSNumber get sampleRate;
  external JSNumber get currentTime;
  external AudioListener get listener;
  external AudioContextState get state;
  external AudioWorklet get audioWorklet;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
  external AnalyserNode createAnalyser();
  external BiquadFilterNode createBiquadFilter();
  external AudioBuffer createBuffer(
    JSNumber numberOfChannels,
    JSNumber length,
    JSNumber sampleRate,
  );
  external AudioBufferSourceNode createBufferSource();
  external ChannelMergerNode createChannelMerger();
  external ChannelMergerNode createChannelMerger1(JSNumber numberOfInputs);
  external ChannelSplitterNode createChannelSplitter();
  external ChannelSplitterNode createChannelSplitter1(JSNumber numberOfOutputs);
  external ConstantSourceNode createConstantSource();
  external ConvolverNode createConvolver();
  external DelayNode createDelay();
  external DelayNode createDelay1(JSNumber maxDelayTime);
  external DynamicsCompressorNode createDynamicsCompressor();
  external GainNode createGain();
  external IIRFilterNode createIIRFilter(
    JSArray feedforward,
    JSArray feedback,
  );
  external OscillatorNode createOscillator();
  external PannerNode createPanner();
  external PeriodicWave createPeriodicWave(
    JSArray real,
    JSArray imag,
  );
  external PeriodicWave createPeriodicWave1(
    JSArray real,
    JSArray imag,
    PeriodicWaveConstraints constraints,
  );
  external ScriptProcessorNode createScriptProcessor();
  external ScriptProcessorNode createScriptProcessor1(JSNumber bufferSize);
  external ScriptProcessorNode createScriptProcessor2(
    JSNumber bufferSize,
    JSNumber numberOfInputChannels,
  );
  external ScriptProcessorNode createScriptProcessor3(
    JSNumber bufferSize,
    JSNumber numberOfInputChannels,
    JSNumber numberOfOutputChannels,
  );
  external StereoPannerNode createStereoPanner();
  external WaveShaperNode createWaveShaper();
  external JSPromise decodeAudioData(JSArrayBuffer audioData);
  external JSPromise decodeAudioData1(
    JSArrayBuffer audioData,
    DecodeSuccessCallback? successCallback,
  );
  external JSPromise decodeAudioData2(
    JSArrayBuffer audioData,
    DecodeSuccessCallback? successCallback,
    DecodeErrorCallback? errorCallback,
  );
}

@JS('AudioContext')
@staticInterop
class AudioContext extends BaseAudioContext {
  external factory AudioContext();

  external factory AudioContext.a1();

  external factory AudioContext.a2(AudioContextOptions contextOptions);
}

extension AudioContextExtension on AudioContext {
  external JSNumber get baseLatency;
  external JSNumber get outputLatency;
  external JSAny get sinkId;
  external AudioRenderCapacity get renderCapacity;
  external set onsinkchange(EventHandler value);
  external EventHandler get onsinkchange;
  external AudioTimestamp getOutputTimestamp();
  external JSPromise resume();
  external JSPromise suspend();
  external JSPromise close();
  external JSPromise setSinkId(JSAny sinkId);
  external MediaElementAudioSourceNode createMediaElementSource(
      HTMLMediaElement mediaElement);
  external MediaStreamAudioSourceNode createMediaStreamSource(
      MediaStream mediaStream);
  external MediaStreamTrackAudioSourceNode createMediaStreamTrackSource(
      MediaStreamTrack mediaStreamTrack);
  external MediaStreamAudioDestinationNode createMediaStreamDestination();
}

@JS()
@staticInterop
@anonymous
class AudioContextOptions {
  external factory AudioContextOptions({
    JSAny latencyHint = 'interactive',
    JSNumber sampleRate,
    JSAny sinkId,
  });
}

extension AudioContextOptionsExtension on AudioContextOptions {
  external set latencyHint(JSAny value);
  external JSAny get latencyHint;
  external set sampleRate(JSNumber value);
  external JSNumber get sampleRate;
  external set sinkId(JSAny value);
  external JSAny get sinkId;
}

@JS()
@staticInterop
@anonymous
class AudioSinkOptions {
  external factory AudioSinkOptions({required AudioSinkType type});
}

extension AudioSinkOptionsExtension on AudioSinkOptions {
  external set type(AudioSinkType value);
  external AudioSinkType get type;
}

@JS('AudioSinkInfo')
@staticInterop
class AudioSinkInfo {
  external factory AudioSinkInfo();
}

extension AudioSinkInfoExtension on AudioSinkInfo {
  external AudioSinkType get type;
}

@JS()
@staticInterop
@anonymous
class AudioTimestamp {
  external factory AudioTimestamp({
    JSNumber contextTime,
    DOMHighResTimeStamp performanceTime,
  });
}

extension AudioTimestampExtension on AudioTimestamp {
  external set contextTime(JSNumber value);
  external JSNumber get contextTime;
  external set performanceTime(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get performanceTime;
}

@JS('AudioRenderCapacity')
@staticInterop
class AudioRenderCapacity extends EventTarget {
  external factory AudioRenderCapacity();
}

extension AudioRenderCapacityExtension on AudioRenderCapacity {
  external JSVoid start();
  external JSVoid start1(AudioRenderCapacityOptions options);
  external JSVoid stop();
  external set onupdate(EventHandler value);
  external EventHandler get onupdate;
}

@JS()
@staticInterop
@anonymous
class AudioRenderCapacityOptions {
  external factory AudioRenderCapacityOptions({JSNumber updateInterval = 1});
}

extension AudioRenderCapacityOptionsExtension on AudioRenderCapacityOptions {
  external set updateInterval(JSNumber value);
  external JSNumber get updateInterval;
}

@JS('AudioRenderCapacityEvent')
@staticInterop
class AudioRenderCapacityEvent extends Event {
  external factory AudioRenderCapacityEvent();

  external factory AudioRenderCapacityEvent.a1(JSString type);

  external factory AudioRenderCapacityEvent.a2(
    JSString type,
    AudioRenderCapacityEventInit eventInitDict,
  );
}

extension AudioRenderCapacityEventExtension on AudioRenderCapacityEvent {
  external JSNumber get timestamp;
  external JSNumber get averageLoad;
  external JSNumber get peakLoad;
  external JSNumber get underrunRatio;
}

@JS()
@staticInterop
@anonymous
class AudioRenderCapacityEventInit extends EventInit {
  external factory AudioRenderCapacityEventInit({
    JSNumber timestamp = 0,
    JSNumber averageLoad = 0,
    JSNumber peakLoad = 0,
    JSNumber underrunRatio = 0,
  });
}

extension AudioRenderCapacityEventInitExtension
    on AudioRenderCapacityEventInit {
  external set timestamp(JSNumber value);
  external JSNumber get timestamp;
  external set averageLoad(JSNumber value);
  external JSNumber get averageLoad;
  external set peakLoad(JSNumber value);
  external JSNumber get peakLoad;
  external set underrunRatio(JSNumber value);
  external JSNumber get underrunRatio;
}

@JS('OfflineAudioContext')
@staticInterop
class OfflineAudioContext extends BaseAudioContext {
  external factory OfflineAudioContext();

  external factory OfflineAudioContext.a1(
      OfflineAudioContextOptions contextOptions);

  external factory OfflineAudioContext.a2(
    JSNumber numberOfChannels,
    JSNumber length,
    JSNumber sampleRate,
  );
}

extension OfflineAudioContextExtension on OfflineAudioContext {
  external JSPromise startRendering();
  external JSPromise resume();
  external JSPromise suspend(JSNumber suspendTime);
  external JSNumber get length;
  external set oncomplete(EventHandler value);
  external EventHandler get oncomplete;
}

@JS()
@staticInterop
@anonymous
class OfflineAudioContextOptions {
  external factory OfflineAudioContextOptions({
    JSNumber numberOfChannels = 1,
    required JSNumber length,
    required JSNumber sampleRate,
  });
}

extension OfflineAudioContextOptionsExtension on OfflineAudioContextOptions {
  external set numberOfChannels(JSNumber value);
  external JSNumber get numberOfChannels;
  external set length(JSNumber value);
  external JSNumber get length;
  external set sampleRate(JSNumber value);
  external JSNumber get sampleRate;
}

@JS('OfflineAudioCompletionEvent')
@staticInterop
class OfflineAudioCompletionEvent extends Event {
  external factory OfflineAudioCompletionEvent();

  external factory OfflineAudioCompletionEvent.a1(
    JSString type,
    OfflineAudioCompletionEventInit eventInitDict,
  );
}

extension OfflineAudioCompletionEventExtension on OfflineAudioCompletionEvent {
  external AudioBuffer get renderedBuffer;
}

@JS()
@staticInterop
@anonymous
class OfflineAudioCompletionEventInit extends EventInit {
  external factory OfflineAudioCompletionEventInit(
      {required AudioBuffer renderedBuffer});
}

extension OfflineAudioCompletionEventInitExtension
    on OfflineAudioCompletionEventInit {
  external set renderedBuffer(AudioBuffer value);
  external AudioBuffer get renderedBuffer;
}

@JS('AudioBuffer')
@staticInterop
class AudioBuffer {
  external factory AudioBuffer();

  external factory AudioBuffer.a1(AudioBufferOptions options);
}

extension AudioBufferExtension on AudioBuffer {
  external JSNumber get sampleRate;
  external JSNumber get length;
  external JSNumber get duration;
  external JSNumber get numberOfChannels;
  external JSFloat32Array getChannelData(JSNumber channel);
  external JSVoid copyFromChannel(
    JSFloat32Array destination,
    JSNumber channelNumber,
  );
  external JSVoid copyFromChannel1(
    JSFloat32Array destination,
    JSNumber channelNumber,
    JSNumber bufferOffset,
  );
  external JSVoid copyToChannel(
    JSFloat32Array source,
    JSNumber channelNumber,
  );
  external JSVoid copyToChannel1(
    JSFloat32Array source,
    JSNumber channelNumber,
    JSNumber bufferOffset,
  );
}

@JS()
@staticInterop
@anonymous
class AudioBufferOptions {
  external factory AudioBufferOptions({
    JSNumber numberOfChannels = 1,
    required JSNumber length,
    required JSNumber sampleRate,
  });
}

extension AudioBufferOptionsExtension on AudioBufferOptions {
  external set numberOfChannels(JSNumber value);
  external JSNumber get numberOfChannels;
  external set length(JSNumber value);
  external JSNumber get length;
  external set sampleRate(JSNumber value);
  external JSNumber get sampleRate;
}

@JS('AudioNode')
@staticInterop
class AudioNode extends EventTarget {
  external factory AudioNode();
}

extension AudioNodeExtension on AudioNode {
  external AudioNode connect(AudioNode destinationNode);
  external AudioNode connect1(
    AudioNode destinationNode,
    JSNumber output,
  );
  external AudioNode connect2(
    AudioNode destinationNode,
    JSNumber output,
    JSNumber input,
  );
  @JS('connect')
  external JSVoid connect_1_(AudioParam destinationParam);
  @JS('connect')
  external JSVoid connect_1_1(
    AudioParam destinationParam,
    JSNumber output,
  );
  external JSVoid disconnect();
  @JS('disconnect')
  external JSVoid disconnect_1_(JSNumber output);
  @JS('disconnect')
  external JSVoid disconnect_2_(AudioNode destinationNode);
  @JS('disconnect')
  external JSVoid disconnect_3_(
    AudioNode destinationNode,
    JSNumber output,
  );
  @JS('disconnect')
  external JSVoid disconnect_4_(
    AudioNode destinationNode,
    JSNumber output,
    JSNumber input,
  );
  @JS('disconnect')
  external JSVoid disconnect_5_(AudioParam destinationParam);
  @JS('disconnect')
  external JSVoid disconnect_6_(
    AudioParam destinationParam,
    JSNumber output,
  );
  external BaseAudioContext get context;
  external JSNumber get numberOfInputs;
  external JSNumber get numberOfOutputs;
  external set channelCount(JSNumber value);
  external JSNumber get channelCount;
  external set channelCountMode(ChannelCountMode value);
  external ChannelCountMode get channelCountMode;
  external set channelInterpretation(ChannelInterpretation value);
  external ChannelInterpretation get channelInterpretation;
}

@JS()
@staticInterop
@anonymous
class AudioNodeOptions {
  external factory AudioNodeOptions({
    JSNumber channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
  });
}

extension AudioNodeOptionsExtension on AudioNodeOptions {
  external set channelCount(JSNumber value);
  external JSNumber get channelCount;
  external set channelCountMode(ChannelCountMode value);
  external ChannelCountMode get channelCountMode;
  external set channelInterpretation(ChannelInterpretation value);
  external ChannelInterpretation get channelInterpretation;
}

@JS('AudioParam')
@staticInterop
class AudioParam {
  external factory AudioParam();
}

extension AudioParamExtension on AudioParam {
  external set value(JSNumber value);
  external JSNumber get value;
  external set automationRate(AutomationRate value);
  external AutomationRate get automationRate;
  external JSNumber get defaultValue;
  external JSNumber get minValue;
  external JSNumber get maxValue;
  external AudioParam setValueAtTime(
    JSNumber value,
    JSNumber startTime,
  );
  external AudioParam linearRampToValueAtTime(
    JSNumber value,
    JSNumber endTime,
  );
  external AudioParam exponentialRampToValueAtTime(
    JSNumber value,
    JSNumber endTime,
  );
  external AudioParam setTargetAtTime(
    JSNumber target,
    JSNumber startTime,
    JSNumber timeConstant,
  );
  external AudioParam setValueCurveAtTime(
    JSArray values,
    JSNumber startTime,
    JSNumber duration,
  );
  external AudioParam cancelScheduledValues(JSNumber cancelTime);
  external AudioParam cancelAndHoldAtTime(JSNumber cancelTime);
}

@JS('AudioScheduledSourceNode')
@staticInterop
class AudioScheduledSourceNode extends AudioNode {
  external factory AudioScheduledSourceNode();
}

extension AudioScheduledSourceNodeExtension on AudioScheduledSourceNode {
  external set onended(EventHandler value);
  external EventHandler get onended;
  external JSVoid start();
  external JSVoid start1(JSNumber when);
  external JSVoid stop();
  external JSVoid stop1(JSNumber when);
}

@JS('AnalyserNode')
@staticInterop
class AnalyserNode extends AudioNode {
  external factory AnalyserNode();

  external factory AnalyserNode.a1(BaseAudioContext context);

  external factory AnalyserNode.a2(
    BaseAudioContext context,
    AnalyserOptions options,
  );
}

extension AnalyserNodeExtension on AnalyserNode {
  external JSVoid getFloatFrequencyData(JSFloat32Array array);
  external JSVoid getByteFrequencyData(JSUint8Array array);
  external JSVoid getFloatTimeDomainData(JSFloat32Array array);
  external JSVoid getByteTimeDomainData(JSUint8Array array);
  external set fftSize(JSNumber value);
  external JSNumber get fftSize;
  external JSNumber get frequencyBinCount;
  external set minDecibels(JSNumber value);
  external JSNumber get minDecibels;
  external set maxDecibels(JSNumber value);
  external JSNumber get maxDecibels;
  external set smoothingTimeConstant(JSNumber value);
  external JSNumber get smoothingTimeConstant;
}

@JS()
@staticInterop
@anonymous
class AnalyserOptions extends AudioNodeOptions {
  external factory AnalyserOptions({
    JSNumber fftSize = 2048,
    JSNumber maxDecibels = -30,
    JSNumber minDecibels = -100,
    JSNumber smoothingTimeConstant = 0.8,
  });
}

extension AnalyserOptionsExtension on AnalyserOptions {
  external set fftSize(JSNumber value);
  external JSNumber get fftSize;
  external set maxDecibels(JSNumber value);
  external JSNumber get maxDecibels;
  external set minDecibels(JSNumber value);
  external JSNumber get minDecibels;
  external set smoothingTimeConstant(JSNumber value);
  external JSNumber get smoothingTimeConstant;
}

@JS('AudioBufferSourceNode')
@staticInterop
class AudioBufferSourceNode extends AudioScheduledSourceNode {
  external factory AudioBufferSourceNode();

  external factory AudioBufferSourceNode.a1(BaseAudioContext context);

  external factory AudioBufferSourceNode.a2(
    BaseAudioContext context,
    AudioBufferSourceOptions options,
  );
}

extension AudioBufferSourceNodeExtension on AudioBufferSourceNode {
  external set buffer(AudioBuffer? value);
  external AudioBuffer? get buffer;
  external AudioParam get playbackRate;
  external AudioParam get detune;
  external set loop(JSBoolean value);
  external JSBoolean get loop;
  external set loopStart(JSNumber value);
  external JSNumber get loopStart;
  external set loopEnd(JSNumber value);
  external JSNumber get loopEnd;
  external JSVoid start();
  external JSVoid start1(JSNumber when);
  external JSVoid start2(
    JSNumber when,
    JSNumber offset,
  );
  external JSVoid start3(
    JSNumber when,
    JSNumber offset,
    JSNumber duration,
  );
}

@JS()
@staticInterop
@anonymous
class AudioBufferSourceOptions {
  external factory AudioBufferSourceOptions({
    AudioBuffer? buffer,
    JSNumber detune = 0,
    JSBoolean loop = false,
    JSNumber loopEnd = 0,
    JSNumber loopStart = 0,
    JSNumber playbackRate = 1,
  });
}

extension AudioBufferSourceOptionsExtension on AudioBufferSourceOptions {
  external set buffer(AudioBuffer? value);
  external AudioBuffer? get buffer;
  external set detune(JSNumber value);
  external JSNumber get detune;
  external set loop(JSBoolean value);
  external JSBoolean get loop;
  external set loopEnd(JSNumber value);
  external JSNumber get loopEnd;
  external set loopStart(JSNumber value);
  external JSNumber get loopStart;
  external set playbackRate(JSNumber value);
  external JSNumber get playbackRate;
}

@JS('AudioDestinationNode')
@staticInterop
class AudioDestinationNode extends AudioNode {
  external factory AudioDestinationNode();
}

extension AudioDestinationNodeExtension on AudioDestinationNode {
  external JSNumber get maxChannelCount;
}

@JS('AudioListener')
@staticInterop
class AudioListener {
  external factory AudioListener();
}

extension AudioListenerExtension on AudioListener {
  external AudioParam get positionX;
  external AudioParam get positionY;
  external AudioParam get positionZ;
  external AudioParam get forwardX;
  external AudioParam get forwardY;
  external AudioParam get forwardZ;
  external AudioParam get upX;
  external AudioParam get upY;
  external AudioParam get upZ;
  external JSVoid setPosition(
    JSNumber x,
    JSNumber y,
    JSNumber z,
  );
  external JSVoid setOrientation(
    JSNumber x,
    JSNumber y,
    JSNumber z,
    JSNumber xUp,
    JSNumber yUp,
    JSNumber zUp,
  );
}

@JS('AudioProcessingEvent')
@staticInterop
class AudioProcessingEvent extends Event {
  external factory AudioProcessingEvent();

  external factory AudioProcessingEvent.a1(
    JSString type,
    AudioProcessingEventInit eventInitDict,
  );
}

extension AudioProcessingEventExtension on AudioProcessingEvent {
  external JSNumber get playbackTime;
  external AudioBuffer get inputBuffer;
  external AudioBuffer get outputBuffer;
}

@JS()
@staticInterop
@anonymous
class AudioProcessingEventInit extends EventInit {
  external factory AudioProcessingEventInit({
    required JSNumber playbackTime,
    required AudioBuffer inputBuffer,
    required AudioBuffer outputBuffer,
  });
}

extension AudioProcessingEventInitExtension on AudioProcessingEventInit {
  external set playbackTime(JSNumber value);
  external JSNumber get playbackTime;
  external set inputBuffer(AudioBuffer value);
  external AudioBuffer get inputBuffer;
  external set outputBuffer(AudioBuffer value);
  external AudioBuffer get outputBuffer;
}

@JS('BiquadFilterNode')
@staticInterop
class BiquadFilterNode extends AudioNode {
  external factory BiquadFilterNode();

  external factory BiquadFilterNode.a1(BaseAudioContext context);

  external factory BiquadFilterNode.a2(
    BaseAudioContext context,
    BiquadFilterOptions options,
  );
}

extension BiquadFilterNodeExtension on BiquadFilterNode {
  external set type(BiquadFilterType value);
  external BiquadFilterType get type;
  external AudioParam get frequency;
  external AudioParam get detune;
  external AudioParam get Q;
  external AudioParam get gain;
  external JSVoid getFrequencyResponse(
    JSFloat32Array frequencyHz,
    JSFloat32Array magResponse,
    JSFloat32Array phaseResponse,
  );
}

@JS()
@staticInterop
@anonymous
class BiquadFilterOptions extends AudioNodeOptions {
  external factory BiquadFilterOptions({
    BiquadFilterType type = 'lowpass',
    JSNumber Q = 1,
    JSNumber detune = 0,
    JSNumber frequency = 350,
    JSNumber gain = 0,
  });
}

extension BiquadFilterOptionsExtension on BiquadFilterOptions {
  external set type(BiquadFilterType value);
  external BiquadFilterType get type;
  external set Q(JSNumber value);
  external JSNumber get Q;
  external set detune(JSNumber value);
  external JSNumber get detune;
  external set frequency(JSNumber value);
  external JSNumber get frequency;
  external set gain(JSNumber value);
  external JSNumber get gain;
}

@JS('ChannelMergerNode')
@staticInterop
class ChannelMergerNode extends AudioNode {
  external factory ChannelMergerNode();

  external factory ChannelMergerNode.a1(BaseAudioContext context);

  external factory ChannelMergerNode.a2(
    BaseAudioContext context,
    ChannelMergerOptions options,
  );
}

@JS()
@staticInterop
@anonymous
class ChannelMergerOptions extends AudioNodeOptions {
  external factory ChannelMergerOptions({JSNumber numberOfInputs = 6});
}

extension ChannelMergerOptionsExtension on ChannelMergerOptions {
  external set numberOfInputs(JSNumber value);
  external JSNumber get numberOfInputs;
}

@JS('ChannelSplitterNode')
@staticInterop
class ChannelSplitterNode extends AudioNode {
  external factory ChannelSplitterNode();

  external factory ChannelSplitterNode.a1(BaseAudioContext context);

  external factory ChannelSplitterNode.a2(
    BaseAudioContext context,
    ChannelSplitterOptions options,
  );
}

@JS()
@staticInterop
@anonymous
class ChannelSplitterOptions extends AudioNodeOptions {
  external factory ChannelSplitterOptions({JSNumber numberOfOutputs = 6});
}

extension ChannelSplitterOptionsExtension on ChannelSplitterOptions {
  external set numberOfOutputs(JSNumber value);
  external JSNumber get numberOfOutputs;
}

@JS('ConstantSourceNode')
@staticInterop
class ConstantSourceNode extends AudioScheduledSourceNode {
  external factory ConstantSourceNode();

  external factory ConstantSourceNode.a1(BaseAudioContext context);

  external factory ConstantSourceNode.a2(
    BaseAudioContext context,
    ConstantSourceOptions options,
  );
}

extension ConstantSourceNodeExtension on ConstantSourceNode {
  external AudioParam get offset;
}

@JS()
@staticInterop
@anonymous
class ConstantSourceOptions {
  external factory ConstantSourceOptions({JSNumber offset = 1});
}

extension ConstantSourceOptionsExtension on ConstantSourceOptions {
  external set offset(JSNumber value);
  external JSNumber get offset;
}

@JS('ConvolverNode')
@staticInterop
class ConvolverNode extends AudioNode {
  external factory ConvolverNode();

  external factory ConvolverNode.a1(BaseAudioContext context);

  external factory ConvolverNode.a2(
    BaseAudioContext context,
    ConvolverOptions options,
  );
}

extension ConvolverNodeExtension on ConvolverNode {
  external set buffer(AudioBuffer? value);
  external AudioBuffer? get buffer;
  external set normalize(JSBoolean value);
  external JSBoolean get normalize;
}

@JS()
@staticInterop
@anonymous
class ConvolverOptions extends AudioNodeOptions {
  external factory ConvolverOptions({
    AudioBuffer? buffer,
    JSBoolean disableNormalization = false,
  });
}

extension ConvolverOptionsExtension on ConvolverOptions {
  external set buffer(AudioBuffer? value);
  external AudioBuffer? get buffer;
  external set disableNormalization(JSBoolean value);
  external JSBoolean get disableNormalization;
}

@JS('DelayNode')
@staticInterop
class DelayNode extends AudioNode {
  external factory DelayNode();

  external factory DelayNode.a1(BaseAudioContext context);

  external factory DelayNode.a2(
    BaseAudioContext context,
    DelayOptions options,
  );
}

extension DelayNodeExtension on DelayNode {
  external AudioParam get delayTime;
}

@JS()
@staticInterop
@anonymous
class DelayOptions extends AudioNodeOptions {
  external factory DelayOptions({
    JSNumber maxDelayTime = 1,
    JSNumber delayTime = 0,
  });
}

extension DelayOptionsExtension on DelayOptions {
  external set maxDelayTime(JSNumber value);
  external JSNumber get maxDelayTime;
  external set delayTime(JSNumber value);
  external JSNumber get delayTime;
}

@JS('DynamicsCompressorNode')
@staticInterop
class DynamicsCompressorNode extends AudioNode {
  external factory DynamicsCompressorNode();

  external factory DynamicsCompressorNode.a1(BaseAudioContext context);

  external factory DynamicsCompressorNode.a2(
    BaseAudioContext context,
    DynamicsCompressorOptions options,
  );
}

extension DynamicsCompressorNodeExtension on DynamicsCompressorNode {
  external AudioParam get threshold;
  external AudioParam get knee;
  external AudioParam get ratio;
  external JSNumber get reduction;
  external AudioParam get attack;
  external AudioParam get release;
}

@JS()
@staticInterop
@anonymous
class DynamicsCompressorOptions extends AudioNodeOptions {
  external factory DynamicsCompressorOptions({
    JSNumber attack = 0.003,
    JSNumber knee = 30,
    JSNumber ratio = 12,
    JSNumber release = 0.25,
    JSNumber threshold = -24,
  });
}

extension DynamicsCompressorOptionsExtension on DynamicsCompressorOptions {
  external set attack(JSNumber value);
  external JSNumber get attack;
  external set knee(JSNumber value);
  external JSNumber get knee;
  external set ratio(JSNumber value);
  external JSNumber get ratio;
  external set release(JSNumber value);
  external JSNumber get release;
  external set threshold(JSNumber value);
  external JSNumber get threshold;
}

@JS('GainNode')
@staticInterop
class GainNode extends AudioNode {
  external factory GainNode();

  external factory GainNode.a1(BaseAudioContext context);

  external factory GainNode.a2(
    BaseAudioContext context,
    GainOptions options,
  );
}

extension GainNodeExtension on GainNode {
  external AudioParam get gain;
}

@JS()
@staticInterop
@anonymous
class GainOptions extends AudioNodeOptions {
  external factory GainOptions({JSNumber gain = 1.0});
}

extension GainOptionsExtension on GainOptions {
  external set gain(JSNumber value);
  external JSNumber get gain;
}

@JS('IIRFilterNode')
@staticInterop
class IIRFilterNode extends AudioNode {
  external factory IIRFilterNode();

  external factory IIRFilterNode.a1(
    BaseAudioContext context,
    IIRFilterOptions options,
  );
}

extension IIRFilterNodeExtension on IIRFilterNode {
  external JSVoid getFrequencyResponse(
    JSFloat32Array frequencyHz,
    JSFloat32Array magResponse,
    JSFloat32Array phaseResponse,
  );
}

@JS()
@staticInterop
@anonymous
class IIRFilterOptions extends AudioNodeOptions {
  external factory IIRFilterOptions({
    required JSArray feedforward,
    required JSArray feedback,
  });
}

extension IIRFilterOptionsExtension on IIRFilterOptions {
  external set feedforward(JSArray value);
  external JSArray get feedforward;
  external set feedback(JSArray value);
  external JSArray get feedback;
}

@JS('MediaElementAudioSourceNode')
@staticInterop
class MediaElementAudioSourceNode extends AudioNode {
  external factory MediaElementAudioSourceNode();

  external factory MediaElementAudioSourceNode.a1(
    AudioContext context,
    MediaElementAudioSourceOptions options,
  );
}

extension MediaElementAudioSourceNodeExtension on MediaElementAudioSourceNode {
  external HTMLMediaElement get mediaElement;
}

@JS()
@staticInterop
@anonymous
class MediaElementAudioSourceOptions {
  external factory MediaElementAudioSourceOptions(
      {required HTMLMediaElement mediaElement});
}

extension MediaElementAudioSourceOptionsExtension
    on MediaElementAudioSourceOptions {
  external set mediaElement(HTMLMediaElement value);
  external HTMLMediaElement get mediaElement;
}

@JS('MediaStreamAudioDestinationNode')
@staticInterop
class MediaStreamAudioDestinationNode extends AudioNode {
  external factory MediaStreamAudioDestinationNode();

  external factory MediaStreamAudioDestinationNode.a1(AudioContext context);

  external factory MediaStreamAudioDestinationNode.a2(
    AudioContext context,
    AudioNodeOptions options,
  );
}

extension MediaStreamAudioDestinationNodeExtension
    on MediaStreamAudioDestinationNode {
  external MediaStream get stream;
}

@JS('MediaStreamAudioSourceNode')
@staticInterop
class MediaStreamAudioSourceNode extends AudioNode {
  external factory MediaStreamAudioSourceNode();

  external factory MediaStreamAudioSourceNode.a1(
    AudioContext context,
    MediaStreamAudioSourceOptions options,
  );
}

extension MediaStreamAudioSourceNodeExtension on MediaStreamAudioSourceNode {
  external MediaStream get mediaStream;
}

@JS()
@staticInterop
@anonymous
class MediaStreamAudioSourceOptions {
  external factory MediaStreamAudioSourceOptions(
      {required MediaStream mediaStream});
}

extension MediaStreamAudioSourceOptionsExtension
    on MediaStreamAudioSourceOptions {
  external set mediaStream(MediaStream value);
  external MediaStream get mediaStream;
}

@JS('MediaStreamTrackAudioSourceNode')
@staticInterop
class MediaStreamTrackAudioSourceNode extends AudioNode {
  external factory MediaStreamTrackAudioSourceNode();

  external factory MediaStreamTrackAudioSourceNode.a1(
    AudioContext context,
    MediaStreamTrackAudioSourceOptions options,
  );
}

@JS()
@staticInterop
@anonymous
class MediaStreamTrackAudioSourceOptions {
  external factory MediaStreamTrackAudioSourceOptions(
      {required MediaStreamTrack mediaStreamTrack});
}

extension MediaStreamTrackAudioSourceOptionsExtension
    on MediaStreamTrackAudioSourceOptions {
  external set mediaStreamTrack(MediaStreamTrack value);
  external MediaStreamTrack get mediaStreamTrack;
}

@JS('OscillatorNode')
@staticInterop
class OscillatorNode extends AudioScheduledSourceNode {
  external factory OscillatorNode();

  external factory OscillatorNode.a1(BaseAudioContext context);

  external factory OscillatorNode.a2(
    BaseAudioContext context,
    OscillatorOptions options,
  );
}

extension OscillatorNodeExtension on OscillatorNode {
  external set type(OscillatorType value);
  external OscillatorType get type;
  external AudioParam get frequency;
  external AudioParam get detune;
  external JSVoid setPeriodicWave(PeriodicWave periodicWave);
}

@JS()
@staticInterop
@anonymous
class OscillatorOptions extends AudioNodeOptions {
  external factory OscillatorOptions({
    OscillatorType type = 'sine',
    JSNumber frequency = 440,
    JSNumber detune = 0,
    PeriodicWave periodicWave,
  });
}

extension OscillatorOptionsExtension on OscillatorOptions {
  external set type(OscillatorType value);
  external OscillatorType get type;
  external set frequency(JSNumber value);
  external JSNumber get frequency;
  external set detune(JSNumber value);
  external JSNumber get detune;
  external set periodicWave(PeriodicWave value);
  external PeriodicWave get periodicWave;
}

@JS('PannerNode')
@staticInterop
class PannerNode extends AudioNode {
  external factory PannerNode();

  external factory PannerNode.a1(BaseAudioContext context);

  external factory PannerNode.a2(
    BaseAudioContext context,
    PannerOptions options,
  );
}

extension PannerNodeExtension on PannerNode {
  external set panningModel(PanningModelType value);
  external PanningModelType get panningModel;
  external AudioParam get positionX;
  external AudioParam get positionY;
  external AudioParam get positionZ;
  external AudioParam get orientationX;
  external AudioParam get orientationY;
  external AudioParam get orientationZ;
  external set distanceModel(DistanceModelType value);
  external DistanceModelType get distanceModel;
  external set refDistance(JSNumber value);
  external JSNumber get refDistance;
  external set maxDistance(JSNumber value);
  external JSNumber get maxDistance;
  external set rolloffFactor(JSNumber value);
  external JSNumber get rolloffFactor;
  external set coneInnerAngle(JSNumber value);
  external JSNumber get coneInnerAngle;
  external set coneOuterAngle(JSNumber value);
  external JSNumber get coneOuterAngle;
  external set coneOuterGain(JSNumber value);
  external JSNumber get coneOuterGain;
  external JSVoid setPosition(
    JSNumber x,
    JSNumber y,
    JSNumber z,
  );
  external JSVoid setOrientation(
    JSNumber x,
    JSNumber y,
    JSNumber z,
  );
}

@JS()
@staticInterop
@anonymous
class PannerOptions extends AudioNodeOptions {
  external factory PannerOptions({
    PanningModelType panningModel = 'equalpower',
    DistanceModelType distanceModel = 'inverse',
    JSNumber positionX = 0,
    JSNumber positionY = 0,
    JSNumber positionZ = 0,
    JSNumber orientationX = 1,
    JSNumber orientationY = 0,
    JSNumber orientationZ = 0,
    JSNumber refDistance = 1,
    JSNumber maxDistance = 10000,
    JSNumber rolloffFactor = 1,
    JSNumber coneInnerAngle = 360,
    JSNumber coneOuterAngle = 360,
    JSNumber coneOuterGain = 0,
  });
}

extension PannerOptionsExtension on PannerOptions {
  external set panningModel(PanningModelType value);
  external PanningModelType get panningModel;
  external set distanceModel(DistanceModelType value);
  external DistanceModelType get distanceModel;
  external set positionX(JSNumber value);
  external JSNumber get positionX;
  external set positionY(JSNumber value);
  external JSNumber get positionY;
  external set positionZ(JSNumber value);
  external JSNumber get positionZ;
  external set orientationX(JSNumber value);
  external JSNumber get orientationX;
  external set orientationY(JSNumber value);
  external JSNumber get orientationY;
  external set orientationZ(JSNumber value);
  external JSNumber get orientationZ;
  external set refDistance(JSNumber value);
  external JSNumber get refDistance;
  external set maxDistance(JSNumber value);
  external JSNumber get maxDistance;
  external set rolloffFactor(JSNumber value);
  external JSNumber get rolloffFactor;
  external set coneInnerAngle(JSNumber value);
  external JSNumber get coneInnerAngle;
  external set coneOuterAngle(JSNumber value);
  external JSNumber get coneOuterAngle;
  external set coneOuterGain(JSNumber value);
  external JSNumber get coneOuterGain;
}

@JS('PeriodicWave')
@staticInterop
class PeriodicWave {
  external factory PeriodicWave();

  external factory PeriodicWave.a1(BaseAudioContext context);

  external factory PeriodicWave.a2(
    BaseAudioContext context,
    PeriodicWaveOptions options,
  );
}

@JS()
@staticInterop
@anonymous
class PeriodicWaveConstraints {
  external factory PeriodicWaveConstraints(
      {JSBoolean disableNormalization = false});
}

extension PeriodicWaveConstraintsExtension on PeriodicWaveConstraints {
  external set disableNormalization(JSBoolean value);
  external JSBoolean get disableNormalization;
}

@JS()
@staticInterop
@anonymous
class PeriodicWaveOptions extends PeriodicWaveConstraints {
  external factory PeriodicWaveOptions({
    JSArray real,
    JSArray imag,
  });
}

extension PeriodicWaveOptionsExtension on PeriodicWaveOptions {
  external set real(JSArray value);
  external JSArray get real;
  external set imag(JSArray value);
  external JSArray get imag;
}

@JS('ScriptProcessorNode')
@staticInterop
class ScriptProcessorNode extends AudioNode {
  external factory ScriptProcessorNode();
}

extension ScriptProcessorNodeExtension on ScriptProcessorNode {
  external set onaudioprocess(EventHandler value);
  external EventHandler get onaudioprocess;
  external JSNumber get bufferSize;
}

@JS('StereoPannerNode')
@staticInterop
class StereoPannerNode extends AudioNode {
  external factory StereoPannerNode();

  external factory StereoPannerNode.a1(BaseAudioContext context);

  external factory StereoPannerNode.a2(
    BaseAudioContext context,
    StereoPannerOptions options,
  );
}

extension StereoPannerNodeExtension on StereoPannerNode {
  external AudioParam get pan;
}

@JS()
@staticInterop
@anonymous
class StereoPannerOptions extends AudioNodeOptions {
  external factory StereoPannerOptions({JSNumber pan = 0});
}

extension StereoPannerOptionsExtension on StereoPannerOptions {
  external set pan(JSNumber value);
  external JSNumber get pan;
}

@JS('WaveShaperNode')
@staticInterop
class WaveShaperNode extends AudioNode {
  external factory WaveShaperNode();

  external factory WaveShaperNode.a1(BaseAudioContext context);

  external factory WaveShaperNode.a2(
    BaseAudioContext context,
    WaveShaperOptions options,
  );
}

extension WaveShaperNodeExtension on WaveShaperNode {
  external set curve(JSFloat32Array? value);
  external JSFloat32Array? get curve;
  external set oversample(OverSampleType value);
  external OverSampleType get oversample;
}

@JS()
@staticInterop
@anonymous
class WaveShaperOptions extends AudioNodeOptions {
  external factory WaveShaperOptions({
    JSArray curve,
    OverSampleType oversample = 'none',
  });
}

extension WaveShaperOptionsExtension on WaveShaperOptions {
  external set curve(JSArray value);
  external JSArray get curve;
  external set oversample(OverSampleType value);
  external OverSampleType get oversample;
}

@JS('AudioWorklet')
@staticInterop
class AudioWorklet extends Worklet {
  external factory AudioWorklet();
}

extension AudioWorkletExtension on AudioWorklet {
  external MessagePort get port;
}

@JS('AudioWorkletGlobalScope')
@staticInterop
class AudioWorkletGlobalScope extends WorkletGlobalScope {
  external factory AudioWorkletGlobalScope();
}

extension AudioWorkletGlobalScopeExtension on AudioWorkletGlobalScope {
  external JSVoid registerProcessor(
    JSString name,
    AudioWorkletProcessorConstructor processorCtor,
  );
  external JSNumber get currentFrame;
  external JSNumber get currentTime;
  external JSNumber get sampleRate;
  external MessagePort get port;
}

@JS('AudioParamMap')
@staticInterop
class AudioParamMap {
  external factory AudioParamMap();
}

extension AudioParamMapExtension on AudioParamMap {}

@JS('AudioWorkletNode')
@staticInterop
class AudioWorkletNode extends AudioNode {
  external factory AudioWorkletNode();

  external factory AudioWorkletNode.a1(
    BaseAudioContext context,
    JSString name,
  );

  external factory AudioWorkletNode.a2(
    BaseAudioContext context,
    JSString name,
    AudioWorkletNodeOptions options,
  );
}

extension AudioWorkletNodeExtension on AudioWorkletNode {
  external AudioParamMap get parameters;
  external MessagePort get port;
  external set onprocessorerror(EventHandler value);
  external EventHandler get onprocessorerror;
}

@JS()
@staticInterop
@anonymous
class AudioWorkletNodeOptions extends AudioNodeOptions {
  external factory AudioWorkletNodeOptions({
    JSNumber numberOfInputs = 1,
    JSNumber numberOfOutputs = 1,
    JSArray outputChannelCount,
    JSAny parameterData,
    JSObject processorOptions,
  });
}

extension AudioWorkletNodeOptionsExtension on AudioWorkletNodeOptions {
  external set numberOfInputs(JSNumber value);
  external JSNumber get numberOfInputs;
  external set numberOfOutputs(JSNumber value);
  external JSNumber get numberOfOutputs;
  external set outputChannelCount(JSArray value);
  external JSArray get outputChannelCount;
  external set parameterData(JSAny value);
  external JSAny get parameterData;
  external set processorOptions(JSObject value);
  external JSObject get processorOptions;
}

@JS('AudioWorkletProcessor')
@staticInterop
class AudioWorkletProcessor {
  external factory AudioWorkletProcessor.a0();
}

extension AudioWorkletProcessorExtension on AudioWorkletProcessor {
  external MessagePort get port;
}

@JS()
@staticInterop
@anonymous
class AudioParamDescriptor {
  external factory AudioParamDescriptor({
    required JSString name,
    JSNumber defaultValue = 0,
    JSNumber minValue = -3.4028235e38,
    JSNumber maxValue = 3.4028235e38,
    AutomationRate automationRate = 'a-rate',
  });
}

extension AudioParamDescriptorExtension on AudioParamDescriptor {
  external set name(JSString value);
  external JSString get name;
  external set defaultValue(JSNumber value);
  external JSNumber get defaultValue;
  external set minValue(JSNumber value);
  external JSNumber get minValue;
  external set maxValue(JSNumber value);
  external JSNumber get maxValue;
  external set automationRate(AutomationRate value);
  external AutomationRate get automationRate;
}
