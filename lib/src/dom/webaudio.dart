// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'mediacapture_streams.dart';

typedef DecodeErrorCallback = JSFunction;
typedef DecodeSuccessCallback = JSFunction;
typedef AudioWorkletProcessorConstructor = JSFunction;
typedef AudioWorkletProcessCallback = JSFunction;
typedef AudioContextState = String;
typedef AudioContextRenderSizeCategory = String;
typedef AudioContextLatencyCategory = String;
typedef AudioSinkType = String;
typedef ChannelCountMode = String;
typedef ChannelInterpretation = String;
typedef AutomationRate = String;
typedef BiquadFilterType = String;
typedef OscillatorType = String;
typedef PanningModelType = String;
typedef DistanceModelType = String;
typedef OverSampleType = String;
extension type BaseAudioContext._(JSObject _) implements EventTarget, JSObject {
  external AnalyserNode createAnalyser();
  external BiquadFilterNode createBiquadFilter();
  external AudioBuffer createBuffer(
    int numberOfChannels,
    int length,
    num sampleRate,
  );
  external AudioBufferSourceNode createBufferSource();
  external ChannelMergerNode createChannelMerger([int numberOfInputs]);
  external ChannelSplitterNode createChannelSplitter([int numberOfOutputs]);
  external ConstantSourceNode createConstantSource();
  external ConvolverNode createConvolver();
  external DelayNode createDelay([num maxDelayTime]);
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
    JSArray imag, [
    PeriodicWaveConstraints constraints,
  ]);
  external ScriptProcessorNode createScriptProcessor([
    int bufferSize,
    int numberOfInputChannels,
    int numberOfOutputChannels,
  ]);
  external StereoPannerNode createStereoPanner();
  external WaveShaperNode createWaveShaper();
  external JSPromise decodeAudioData(
    JSArrayBuffer audioData, [
    DecodeSuccessCallback? successCallback,
    DecodeErrorCallback? errorCallback,
  ]);
  external AudioDestinationNode get destination;
  external num get sampleRate;
  external num get currentTime;
  external AudioListener get listener;
  external AudioContextState get state;
  external int get renderQuantumSize;
  external AudioWorklet get audioWorklet;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
}
extension type AudioContext._(JSObject _)
    implements BaseAudioContext, JSObject {
  external factory AudioContext([AudioContextOptions contextOptions]);

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
  external num get baseLatency;
  external num get outputLatency;
  external JSAny get sinkId;
  external AudioRenderCapacity get renderCapacity;
  external set onsinkchange(EventHandler value);
  external EventHandler get onsinkchange;
}
extension type AudioContextOptions._(JSObject _) implements JSObject {
  external factory AudioContextOptions({
    JSAny latencyHint,
    num sampleRate,
    JSAny sinkId,
    JSAny renderSizeHint,
  });

  external set latencyHint(JSAny value);
  external JSAny get latencyHint;
  external set sampleRate(num value);
  external num get sampleRate;
  external set sinkId(JSAny value);
  external JSAny get sinkId;
  external set renderSizeHint(JSAny value);
  external JSAny get renderSizeHint;
}
extension type AudioSinkOptions._(JSObject _) implements JSObject {
  external factory AudioSinkOptions({required AudioSinkType type});

  external set type(AudioSinkType value);
  external AudioSinkType get type;
}
extension type AudioSinkInfo._(JSObject _) implements JSObject {
  external AudioSinkType get type;
}
extension type AudioTimestamp._(JSObject _) implements JSObject {
  external factory AudioTimestamp({
    num contextTime,
    DOMHighResTimeStamp performanceTime,
  });

  external set contextTime(num value);
  external num get contextTime;
  external set performanceTime(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get performanceTime;
}
extension type AudioRenderCapacity._(JSObject _)
    implements EventTarget, JSObject {
  external void start([AudioRenderCapacityOptions options]);
  external void stop();
  external set onupdate(EventHandler value);
  external EventHandler get onupdate;
}
extension type AudioRenderCapacityOptions._(JSObject _) implements JSObject {
  external factory AudioRenderCapacityOptions({num updateInterval});

  external set updateInterval(num value);
  external num get updateInterval;
}
extension type AudioRenderCapacityEvent._(JSObject _)
    implements Event, JSObject {
  external factory AudioRenderCapacityEvent(
    String type, [
    AudioRenderCapacityEventInit eventInitDict,
  ]);

  external num get timestamp;
  external num get averageLoad;
  external num get peakLoad;
  external num get underrunRatio;
}
extension type AudioRenderCapacityEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory AudioRenderCapacityEventInit({
    num timestamp,
    num averageLoad,
    num peakLoad,
    num underrunRatio,
  });

  external set timestamp(num value);
  external num get timestamp;
  external set averageLoad(num value);
  external num get averageLoad;
  external set peakLoad(num value);
  external num get peakLoad;
  external set underrunRatio(num value);
  external num get underrunRatio;
}
extension type OfflineAudioContext._(JSObject _)
    implements BaseAudioContext, JSObject {
  external factory OfflineAudioContext(
    JSAny contextOptionsOrNumberOfChannels, [
    int length,
    num sampleRate,
  ]);

  external JSPromise startRendering();
  external JSPromise resume();
  external JSPromise suspend(num suspendTime);
  external int get length;
  external set oncomplete(EventHandler value);
  external EventHandler get oncomplete;
}
extension type OfflineAudioContextOptions._(JSObject _) implements JSObject {
  external factory OfflineAudioContextOptions({
    int numberOfChannels,
    required int length,
    required num sampleRate,
    JSAny renderSizeHint,
  });

  external set numberOfChannels(int value);
  external int get numberOfChannels;
  external set length(int value);
  external int get length;
  external set sampleRate(num value);
  external num get sampleRate;
  external set renderSizeHint(JSAny value);
  external JSAny get renderSizeHint;
}
extension type OfflineAudioCompletionEvent._(JSObject _)
    implements Event, JSObject {
  external factory OfflineAudioCompletionEvent(
    String type,
    OfflineAudioCompletionEventInit eventInitDict,
  );

  external AudioBuffer get renderedBuffer;
}
extension type OfflineAudioCompletionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory OfflineAudioCompletionEventInit(
      {required AudioBuffer renderedBuffer});

  external set renderedBuffer(AudioBuffer value);
  external AudioBuffer get renderedBuffer;
}
extension type AudioBuffer._(JSObject _) implements JSObject {
  external factory AudioBuffer(AudioBufferOptions options);

  external JSFloat32Array getChannelData(int channel);
  external void copyFromChannel(
    JSFloat32Array destination,
    int channelNumber, [
    int bufferOffset,
  ]);
  external void copyToChannel(
    JSFloat32Array source,
    int channelNumber, [
    int bufferOffset,
  ]);
  external num get sampleRate;
  external int get length;
  external num get duration;
  external int get numberOfChannels;
}
extension type AudioBufferOptions._(JSObject _) implements JSObject {
  external factory AudioBufferOptions({
    int numberOfChannels,
    required int length,
    required num sampleRate,
  });

  external set numberOfChannels(int value);
  external int get numberOfChannels;
  external set length(int value);
  external int get length;
  external set sampleRate(num value);
  external num get sampleRate;
}
extension type AudioNode._(JSObject _) implements EventTarget, JSObject {
  external AudioNode? connect(
    JSObject destinationNodeOrDestinationParam, [
    int output,
    int input,
  ]);
  external void disconnect([
    JSAny destinationNodeOrDestinationParamOrOutput,
    int output,
    int input,
  ]);
  external BaseAudioContext get context;
  external int get numberOfInputs;
  external int get numberOfOutputs;
  external set channelCount(int value);
  external int get channelCount;
  external set channelCountMode(ChannelCountMode value);
  external ChannelCountMode get channelCountMode;
  external set channelInterpretation(ChannelInterpretation value);
  external ChannelInterpretation get channelInterpretation;
}
extension type AudioNodeOptions._(JSObject _) implements JSObject {
  external factory AudioNodeOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
  });

  external set channelCount(int value);
  external int get channelCount;
  external set channelCountMode(ChannelCountMode value);
  external ChannelCountMode get channelCountMode;
  external set channelInterpretation(ChannelInterpretation value);
  external ChannelInterpretation get channelInterpretation;
}
extension type AudioParam._(JSObject _) implements JSObject {
  external AudioParam setValueAtTime(
    num value,
    num startTime,
  );
  external AudioParam linearRampToValueAtTime(
    num value,
    num endTime,
  );
  external AudioParam exponentialRampToValueAtTime(
    num value,
    num endTime,
  );
  external AudioParam setTargetAtTime(
    num target,
    num startTime,
    num timeConstant,
  );
  external AudioParam setValueCurveAtTime(
    JSArray values,
    num startTime,
    num duration,
  );
  external AudioParam cancelScheduledValues(num cancelTime);
  external AudioParam cancelAndHoldAtTime(num cancelTime);
  external set value(num value);
  external num get value;
  external set automationRate(AutomationRate value);
  external AutomationRate get automationRate;
  external num get defaultValue;
  external num get minValue;
  external num get maxValue;
}
extension type AudioScheduledSourceNode._(JSObject _)
    implements AudioNode, JSObject {
  external void start([num when]);
  external void stop([num when]);
  external set onended(EventHandler value);
  external EventHandler get onended;
}
extension type AnalyserNode._(JSObject _) implements AudioNode, JSObject {
  external factory AnalyserNode(
    BaseAudioContext context, [
    AnalyserOptions options,
  ]);

  external void getFloatFrequencyData(JSFloat32Array array);
  external void getByteFrequencyData(JSUint8Array array);
  external void getFloatTimeDomainData(JSFloat32Array array);
  external void getByteTimeDomainData(JSUint8Array array);
  external set fftSize(int value);
  external int get fftSize;
  external int get frequencyBinCount;
  external set minDecibels(num value);
  external num get minDecibels;
  external set maxDecibels(num value);
  external num get maxDecibels;
  external set smoothingTimeConstant(num value);
  external num get smoothingTimeConstant;
}
extension type AnalyserOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory AnalyserOptions({
    int fftSize,
    num maxDecibels,
    num minDecibels,
    num smoothingTimeConstant,
  });

  external set fftSize(int value);
  external int get fftSize;
  external set maxDecibels(num value);
  external num get maxDecibels;
  external set minDecibels(num value);
  external num get minDecibels;
  external set smoothingTimeConstant(num value);
  external num get smoothingTimeConstant;
}
extension type AudioBufferSourceNode._(JSObject _)
    implements AudioScheduledSourceNode, JSObject {
  external factory AudioBufferSourceNode(
    BaseAudioContext context, [
    AudioBufferSourceOptions options,
  ]);

  external void start([
    num when,
    num offset,
    num duration,
  ]);
  external set buffer(AudioBuffer? value);
  external AudioBuffer? get buffer;
  external AudioParam get playbackRate;
  external AudioParam get detune;
  external set loop(bool value);
  external bool get loop;
  external set loopStart(num value);
  external num get loopStart;
  external set loopEnd(num value);
  external num get loopEnd;
}
extension type AudioBufferSourceOptions._(JSObject _) implements JSObject {
  external factory AudioBufferSourceOptions({
    AudioBuffer? buffer,
    num detune,
    bool loop,
    num loopEnd,
    num loopStart,
    num playbackRate,
  });

  external set buffer(AudioBuffer? value);
  external AudioBuffer? get buffer;
  external set detune(num value);
  external num get detune;
  external set loop(bool value);
  external bool get loop;
  external set loopEnd(num value);
  external num get loopEnd;
  external set loopStart(num value);
  external num get loopStart;
  external set playbackRate(num value);
  external num get playbackRate;
}
extension type AudioDestinationNode._(JSObject _)
    implements AudioNode, JSObject {
  external int get maxChannelCount;
}
extension type AudioListener._(JSObject _) implements JSObject {
  external void setPosition(
    num x,
    num y,
    num z,
  );
  external void setOrientation(
    num x,
    num y,
    num z,
    num xUp,
    num yUp,
    num zUp,
  );
  external AudioParam get positionX;
  external AudioParam get positionY;
  external AudioParam get positionZ;
  external AudioParam get forwardX;
  external AudioParam get forwardY;
  external AudioParam get forwardZ;
  external AudioParam get upX;
  external AudioParam get upY;
  external AudioParam get upZ;
}
extension type AudioProcessingEvent._(JSObject _) implements Event, JSObject {
  external factory AudioProcessingEvent(
    String type,
    AudioProcessingEventInit eventInitDict,
  );

  external num get playbackTime;
  external AudioBuffer get inputBuffer;
  external AudioBuffer get outputBuffer;
}
extension type AudioProcessingEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory AudioProcessingEventInit({
    required num playbackTime,
    required AudioBuffer inputBuffer,
    required AudioBuffer outputBuffer,
  });

  external set playbackTime(num value);
  external num get playbackTime;
  external set inputBuffer(AudioBuffer value);
  external AudioBuffer get inputBuffer;
  external set outputBuffer(AudioBuffer value);
  external AudioBuffer get outputBuffer;
}
extension type BiquadFilterNode._(JSObject _) implements AudioNode, JSObject {
  external factory BiquadFilterNode(
    BaseAudioContext context, [
    BiquadFilterOptions options,
  ]);

  external void getFrequencyResponse(
    JSFloat32Array frequencyHz,
    JSFloat32Array magResponse,
    JSFloat32Array phaseResponse,
  );
  external set type(BiquadFilterType value);
  external BiquadFilterType get type;
  external AudioParam get frequency;
  external AudioParam get detune;
  external AudioParam get Q;
  external AudioParam get gain;
}
extension type BiquadFilterOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory BiquadFilterOptions({
    BiquadFilterType type,
    num Q,
    num detune,
    num frequency,
    num gain,
  });

  external set type(BiquadFilterType value);
  external BiquadFilterType get type;
  external set Q(num value);
  external num get Q;
  external set detune(num value);
  external num get detune;
  external set frequency(num value);
  external num get frequency;
  external set gain(num value);
  external num get gain;
}
extension type ChannelMergerNode._(JSObject _) implements AudioNode, JSObject {
  external factory ChannelMergerNode(
    BaseAudioContext context, [
    ChannelMergerOptions options,
  ]);
}
extension type ChannelMergerOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory ChannelMergerOptions({int numberOfInputs});

  external set numberOfInputs(int value);
  external int get numberOfInputs;
}
extension type ChannelSplitterNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory ChannelSplitterNode(
    BaseAudioContext context, [
    ChannelSplitterOptions options,
  ]);
}
extension type ChannelSplitterOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory ChannelSplitterOptions({int numberOfOutputs});

  external set numberOfOutputs(int value);
  external int get numberOfOutputs;
}
extension type ConstantSourceNode._(JSObject _)
    implements AudioScheduledSourceNode, JSObject {
  external factory ConstantSourceNode(
    BaseAudioContext context, [
    ConstantSourceOptions options,
  ]);

  external AudioParam get offset;
}
extension type ConstantSourceOptions._(JSObject _) implements JSObject {
  external factory ConstantSourceOptions({num offset});

  external set offset(num value);
  external num get offset;
}
extension type ConvolverNode._(JSObject _) implements AudioNode, JSObject {
  external factory ConvolverNode(
    BaseAudioContext context, [
    ConvolverOptions options,
  ]);

  external set buffer(AudioBuffer? value);
  external AudioBuffer? get buffer;
  external set normalize(bool value);
  external bool get normalize;
}
extension type ConvolverOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory ConvolverOptions({
    AudioBuffer? buffer,
    bool disableNormalization,
  });

  external set buffer(AudioBuffer? value);
  external AudioBuffer? get buffer;
  external set disableNormalization(bool value);
  external bool get disableNormalization;
}
extension type DelayNode._(JSObject _) implements AudioNode, JSObject {
  external factory DelayNode(
    BaseAudioContext context, [
    DelayOptions options,
  ]);

  external AudioParam get delayTime;
}
extension type DelayOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory DelayOptions({
    num maxDelayTime,
    num delayTime,
  });

  external set maxDelayTime(num value);
  external num get maxDelayTime;
  external set delayTime(num value);
  external num get delayTime;
}
extension type DynamicsCompressorNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory DynamicsCompressorNode(
    BaseAudioContext context, [
    DynamicsCompressorOptions options,
  ]);

  external AudioParam get threshold;
  external AudioParam get knee;
  external AudioParam get ratio;
  external num get reduction;
  external AudioParam get attack;
  external AudioParam get release;
}
extension type DynamicsCompressorOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory DynamicsCompressorOptions({
    num attack,
    num knee,
    num ratio,
    num release,
    num threshold,
  });

  external set attack(num value);
  external num get attack;
  external set knee(num value);
  external num get knee;
  external set ratio(num value);
  external num get ratio;
  external set release(num value);
  external num get release;
  external set threshold(num value);
  external num get threshold;
}
extension type GainNode._(JSObject _) implements AudioNode, JSObject {
  external factory GainNode(
    BaseAudioContext context, [
    GainOptions options,
  ]);

  external AudioParam get gain;
}
extension type GainOptions._(JSObject _) implements AudioNodeOptions, JSObject {
  external factory GainOptions({num gain});

  external set gain(num value);
  external num get gain;
}
extension type IIRFilterNode._(JSObject _) implements AudioNode, JSObject {
  external factory IIRFilterNode(
    BaseAudioContext context,
    IIRFilterOptions options,
  );

  external void getFrequencyResponse(
    JSFloat32Array frequencyHz,
    JSFloat32Array magResponse,
    JSFloat32Array phaseResponse,
  );
}
extension type IIRFilterOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory IIRFilterOptions({
    required JSArray feedforward,
    required JSArray feedback,
  });

  external set feedforward(JSArray value);
  external JSArray get feedforward;
  external set feedback(JSArray value);
  external JSArray get feedback;
}
extension type MediaElementAudioSourceNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory MediaElementAudioSourceNode(
    AudioContext context,
    MediaElementAudioSourceOptions options,
  );

  external HTMLMediaElement get mediaElement;
}
extension type MediaElementAudioSourceOptions._(JSObject _)
    implements JSObject {
  external factory MediaElementAudioSourceOptions(
      {required HTMLMediaElement mediaElement});

  external set mediaElement(HTMLMediaElement value);
  external HTMLMediaElement get mediaElement;
}
extension type MediaStreamAudioDestinationNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory MediaStreamAudioDestinationNode(
    AudioContext context, [
    AudioNodeOptions options,
  ]);

  external MediaStream get stream;
}
extension type MediaStreamAudioSourceNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory MediaStreamAudioSourceNode(
    AudioContext context,
    MediaStreamAudioSourceOptions options,
  );

  external MediaStream get mediaStream;
}
extension type MediaStreamAudioSourceOptions._(JSObject _) implements JSObject {
  external factory MediaStreamAudioSourceOptions(
      {required MediaStream mediaStream});

  external set mediaStream(MediaStream value);
  external MediaStream get mediaStream;
}
extension type MediaStreamTrackAudioSourceNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory MediaStreamTrackAudioSourceNode(
    AudioContext context,
    MediaStreamTrackAudioSourceOptions options,
  );
}
extension type MediaStreamTrackAudioSourceOptions._(JSObject _)
    implements JSObject {
  external factory MediaStreamTrackAudioSourceOptions(
      {required MediaStreamTrack mediaStreamTrack});

  external set mediaStreamTrack(MediaStreamTrack value);
  external MediaStreamTrack get mediaStreamTrack;
}
extension type OscillatorNode._(JSObject _)
    implements AudioScheduledSourceNode, JSObject {
  external factory OscillatorNode(
    BaseAudioContext context, [
    OscillatorOptions options,
  ]);

  external void setPeriodicWave(PeriodicWave periodicWave);
  external set type(OscillatorType value);
  external OscillatorType get type;
  external AudioParam get frequency;
  external AudioParam get detune;
}
extension type OscillatorOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory OscillatorOptions({
    OscillatorType type,
    num frequency,
    num detune,
    PeriodicWave periodicWave,
  });

  external set type(OscillatorType value);
  external OscillatorType get type;
  external set frequency(num value);
  external num get frequency;
  external set detune(num value);
  external num get detune;
  external set periodicWave(PeriodicWave value);
  external PeriodicWave get periodicWave;
}
extension type PannerNode._(JSObject _) implements AudioNode, JSObject {
  external factory PannerNode(
    BaseAudioContext context, [
    PannerOptions options,
  ]);

  external void setPosition(
    num x,
    num y,
    num z,
  );
  external void setOrientation(
    num x,
    num y,
    num z,
  );
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
  external set refDistance(num value);
  external num get refDistance;
  external set maxDistance(num value);
  external num get maxDistance;
  external set rolloffFactor(num value);
  external num get rolloffFactor;
  external set coneInnerAngle(num value);
  external num get coneInnerAngle;
  external set coneOuterAngle(num value);
  external num get coneOuterAngle;
  external set coneOuterGain(num value);
  external num get coneOuterGain;
}
extension type PannerOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory PannerOptions({
    PanningModelType panningModel,
    DistanceModelType distanceModel,
    num positionX,
    num positionY,
    num positionZ,
    num orientationX,
    num orientationY,
    num orientationZ,
    num refDistance,
    num maxDistance,
    num rolloffFactor,
    num coneInnerAngle,
    num coneOuterAngle,
    num coneOuterGain,
  });

  external set panningModel(PanningModelType value);
  external PanningModelType get panningModel;
  external set distanceModel(DistanceModelType value);
  external DistanceModelType get distanceModel;
  external set positionX(num value);
  external num get positionX;
  external set positionY(num value);
  external num get positionY;
  external set positionZ(num value);
  external num get positionZ;
  external set orientationX(num value);
  external num get orientationX;
  external set orientationY(num value);
  external num get orientationY;
  external set orientationZ(num value);
  external num get orientationZ;
  external set refDistance(num value);
  external num get refDistance;
  external set maxDistance(num value);
  external num get maxDistance;
  external set rolloffFactor(num value);
  external num get rolloffFactor;
  external set coneInnerAngle(num value);
  external num get coneInnerAngle;
  external set coneOuterAngle(num value);
  external num get coneOuterAngle;
  external set coneOuterGain(num value);
  external num get coneOuterGain;
}
extension type PeriodicWave._(JSObject _) implements JSObject {
  external factory PeriodicWave(
    BaseAudioContext context, [
    PeriodicWaveOptions options,
  ]);
}
extension type PeriodicWaveConstraints._(JSObject _) implements JSObject {
  external factory PeriodicWaveConstraints({bool disableNormalization});

  external set disableNormalization(bool value);
  external bool get disableNormalization;
}
extension type PeriodicWaveOptions._(JSObject _)
    implements PeriodicWaveConstraints, JSObject {
  external factory PeriodicWaveOptions({
    JSArray real,
    JSArray imag,
  });

  external set real(JSArray value);
  external JSArray get real;
  external set imag(JSArray value);
  external JSArray get imag;
}
extension type ScriptProcessorNode._(JSObject _)
    implements AudioNode, JSObject {
  external set onaudioprocess(EventHandler value);
  external EventHandler get onaudioprocess;
  external int get bufferSize;
}
extension type StereoPannerNode._(JSObject _) implements AudioNode, JSObject {
  external factory StereoPannerNode(
    BaseAudioContext context, [
    StereoPannerOptions options,
  ]);

  external AudioParam get pan;
}
extension type StereoPannerOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory StereoPannerOptions({num pan});

  external set pan(num value);
  external num get pan;
}
extension type WaveShaperNode._(JSObject _) implements AudioNode, JSObject {
  external factory WaveShaperNode(
    BaseAudioContext context, [
    WaveShaperOptions options,
  ]);

  external set curve(JSFloat32Array? value);
  external JSFloat32Array? get curve;
  external set oversample(OverSampleType value);
  external OverSampleType get oversample;
}
extension type WaveShaperOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory WaveShaperOptions({
    JSArray curve,
    OverSampleType oversample,
  });

  external set curve(JSArray value);
  external JSArray get curve;
  external set oversample(OverSampleType value);
  external OverSampleType get oversample;
}
extension type AudioWorklet._(JSObject _) implements Worklet, JSObject {
  external MessagePort get port;
}
extension type AudioWorkletGlobalScope._(JSObject _)
    implements WorkletGlobalScope, JSObject {
  external void registerProcessor(
    String name,
    AudioWorkletProcessorConstructor processorCtor,
  );
  external int get currentFrame;
  external num get currentTime;
  external num get sampleRate;
  external int get renderQuantumSize;
  external MessagePort get port;
}
extension type AudioParamMap._(JSObject _) implements JSObject {}
extension type AudioWorkletNode._(JSObject _) implements AudioNode, JSObject {
  external factory AudioWorkletNode(
    BaseAudioContext context,
    String name, [
    AudioWorkletNodeOptions options,
  ]);

  external AudioParamMap get parameters;
  external MessagePort get port;
  external set onprocessorerror(EventHandler value);
  external EventHandler get onprocessorerror;
}
extension type AudioWorkletNodeOptions._(JSObject _)
    implements AudioNodeOptions, JSObject {
  external factory AudioWorkletNodeOptions({
    int numberOfInputs,
    int numberOfOutputs,
    JSArray outputChannelCount,
    JSAny parameterData,
    JSObject processorOptions,
  });

  external set numberOfInputs(int value);
  external int get numberOfInputs;
  external set numberOfOutputs(int value);
  external int get numberOfOutputs;
  external set outputChannelCount(JSArray value);
  external JSArray get outputChannelCount;
  external set parameterData(JSAny value);
  external JSAny get parameterData;
  external set processorOptions(JSObject value);
  external JSObject get processorOptions;
}
extension type AudioWorkletProcessor._(JSObject _) implements JSObject {
  external factory AudioWorkletProcessor();

  external MessagePort get port;
}
extension type AudioParamDescriptor._(JSObject _) implements JSObject {
  external factory AudioParamDescriptor({
    required String name,
    num defaultValue,
    num minValue,
    num maxValue,
    AutomationRate automationRate,
  });

  external set name(String value);
  external String get name;
  external set defaultValue(num value);
  external num get defaultValue;
  external set minValue(num value);
  external num get minValue;
  external set maxValue(num value);
  external num get maxValue;
  external set automationRate(AutomationRate value);
  external AutomationRate get automationRate;
}
