// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/mediacapture_streams.dart';

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

@JS('AudioContextOptions')
@staticInterop
class AudioContextOptions {
  external factory AudioContextOptions();
}

extension AudioContextOptionsExtension on AudioContextOptions {}

@JS('AudioSinkOptions')
@staticInterop
class AudioSinkOptions {
  external factory AudioSinkOptions();
}

extension AudioSinkOptionsExtension on AudioSinkOptions {}

@JS('AudioSinkInfo')
@staticInterop
class AudioSinkInfo {
  external factory AudioSinkInfo();
}

extension AudioSinkInfoExtension on AudioSinkInfo {
  external AudioSinkType get type;
}

@JS('AudioTimestamp')
@staticInterop
class AudioTimestamp {
  external factory AudioTimestamp();
}

extension AudioTimestampExtension on AudioTimestamp {}

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

@JS('AudioRenderCapacityOptions')
@staticInterop
class AudioRenderCapacityOptions {
  external factory AudioRenderCapacityOptions();
}

extension AudioRenderCapacityOptionsExtension on AudioRenderCapacityOptions {}

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

@JS('AudioRenderCapacityEventInit')
@staticInterop
class AudioRenderCapacityEventInit extends EventInit {
  external factory AudioRenderCapacityEventInit();
}

extension AudioRenderCapacityEventInitExtension
    on AudioRenderCapacityEventInit {}

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

@JS('OfflineAudioContextOptions')
@staticInterop
class OfflineAudioContextOptions {
  external factory OfflineAudioContextOptions();
}

extension OfflineAudioContextOptionsExtension on OfflineAudioContextOptions {}

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

@JS('OfflineAudioCompletionEventInit')
@staticInterop
class OfflineAudioCompletionEventInit extends EventInit {
  external factory OfflineAudioCompletionEventInit();
}

extension OfflineAudioCompletionEventInitExtension
    on OfflineAudioCompletionEventInit {}

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

@JS('AudioBufferOptions')
@staticInterop
class AudioBufferOptions {
  external factory AudioBufferOptions();
}

extension AudioBufferOptionsExtension on AudioBufferOptions {}

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

@JS('AudioNodeOptions')
@staticInterop
class AudioNodeOptions {
  external factory AudioNodeOptions();
}

extension AudioNodeOptionsExtension on AudioNodeOptions {}

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

@JS('AnalyserOptions')
@staticInterop
class AnalyserOptions extends AudioNodeOptions {
  external factory AnalyserOptions();
}

extension AnalyserOptionsExtension on AnalyserOptions {}

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

@JS('AudioBufferSourceOptions')
@staticInterop
class AudioBufferSourceOptions {
  external factory AudioBufferSourceOptions();
}

extension AudioBufferSourceOptionsExtension on AudioBufferSourceOptions {}

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

@JS('AudioProcessingEventInit')
@staticInterop
class AudioProcessingEventInit extends EventInit {
  external factory AudioProcessingEventInit();
}

extension AudioProcessingEventInitExtension on AudioProcessingEventInit {}

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

@JS('BiquadFilterOptions')
@staticInterop
class BiquadFilterOptions extends AudioNodeOptions {
  external factory BiquadFilterOptions();
}

extension BiquadFilterOptionsExtension on BiquadFilterOptions {}

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

@JS('ChannelMergerOptions')
@staticInterop
class ChannelMergerOptions extends AudioNodeOptions {
  external factory ChannelMergerOptions();
}

extension ChannelMergerOptionsExtension on ChannelMergerOptions {}

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

@JS('ChannelSplitterOptions')
@staticInterop
class ChannelSplitterOptions extends AudioNodeOptions {
  external factory ChannelSplitterOptions();
}

extension ChannelSplitterOptionsExtension on ChannelSplitterOptions {}

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

@JS('ConstantSourceOptions')
@staticInterop
class ConstantSourceOptions {
  external factory ConstantSourceOptions();
}

extension ConstantSourceOptionsExtension on ConstantSourceOptions {}

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

@JS('ConvolverOptions')
@staticInterop
class ConvolverOptions extends AudioNodeOptions {
  external factory ConvolverOptions();
}

extension ConvolverOptionsExtension on ConvolverOptions {}

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

@JS('DelayOptions')
@staticInterop
class DelayOptions extends AudioNodeOptions {
  external factory DelayOptions();
}

extension DelayOptionsExtension on DelayOptions {}

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

@JS('DynamicsCompressorOptions')
@staticInterop
class DynamicsCompressorOptions extends AudioNodeOptions {
  external factory DynamicsCompressorOptions();
}

extension DynamicsCompressorOptionsExtension on DynamicsCompressorOptions {}

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

@JS('GainOptions')
@staticInterop
class GainOptions extends AudioNodeOptions {
  external factory GainOptions();
}

extension GainOptionsExtension on GainOptions {}

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

@JS('IIRFilterOptions')
@staticInterop
class IIRFilterOptions extends AudioNodeOptions {
  external factory IIRFilterOptions();
}

extension IIRFilterOptionsExtension on IIRFilterOptions {}

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

@JS('MediaElementAudioSourceOptions')
@staticInterop
class MediaElementAudioSourceOptions {
  external factory MediaElementAudioSourceOptions();
}

extension MediaElementAudioSourceOptionsExtension
    on MediaElementAudioSourceOptions {}

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

@JS('MediaStreamAudioSourceOptions')
@staticInterop
class MediaStreamAudioSourceOptions {
  external factory MediaStreamAudioSourceOptions();
}

extension MediaStreamAudioSourceOptionsExtension
    on MediaStreamAudioSourceOptions {}

@JS('MediaStreamTrackAudioSourceNode')
@staticInterop
class MediaStreamTrackAudioSourceNode extends AudioNode {
  external factory MediaStreamTrackAudioSourceNode();

  external factory MediaStreamTrackAudioSourceNode.a1(
    AudioContext context,
    MediaStreamTrackAudioSourceOptions options,
  );
}

@JS('MediaStreamTrackAudioSourceOptions')
@staticInterop
class MediaStreamTrackAudioSourceOptions {
  external factory MediaStreamTrackAudioSourceOptions();
}

extension MediaStreamTrackAudioSourceOptionsExtension
    on MediaStreamTrackAudioSourceOptions {}

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

@JS('OscillatorOptions')
@staticInterop
class OscillatorOptions extends AudioNodeOptions {
  external factory OscillatorOptions();
}

extension OscillatorOptionsExtension on OscillatorOptions {}

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

@JS('PannerOptions')
@staticInterop
class PannerOptions extends AudioNodeOptions {
  external factory PannerOptions();
}

extension PannerOptionsExtension on PannerOptions {}

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

@JS('PeriodicWaveConstraints')
@staticInterop
class PeriodicWaveConstraints {
  external factory PeriodicWaveConstraints();
}

extension PeriodicWaveConstraintsExtension on PeriodicWaveConstraints {}

@JS('PeriodicWaveOptions')
@staticInterop
class PeriodicWaveOptions extends PeriodicWaveConstraints {
  external factory PeriodicWaveOptions();
}

extension PeriodicWaveOptionsExtension on PeriodicWaveOptions {}

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

@JS('StereoPannerOptions')
@staticInterop
class StereoPannerOptions extends AudioNodeOptions {
  external factory StereoPannerOptions();
}

extension StereoPannerOptionsExtension on StereoPannerOptions {}

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

@JS('WaveShaperOptions')
@staticInterop
class WaveShaperOptions extends AudioNodeOptions {
  external factory WaveShaperOptions();
}

extension WaveShaperOptionsExtension on WaveShaperOptions {}

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

@JS('AudioWorkletNodeOptions')
@staticInterop
class AudioWorkletNodeOptions extends AudioNodeOptions {
  external factory AudioWorkletNodeOptions();
}

extension AudioWorkletNodeOptionsExtension on AudioWorkletNodeOptions {}

@JS('AudioWorkletProcessor')
@staticInterop
class AudioWorkletProcessor {
  external factory AudioWorkletProcessor.a0();
}

extension AudioWorkletProcessorExtension on AudioWorkletProcessor {
  external MessagePort get port;
}

@JS('AudioParamDescriptor')
@staticInterop
class AudioParamDescriptor {
  external factory AudioParamDescriptor();
}

extension AudioParamDescriptorExtension on AudioParamDescriptor {}
