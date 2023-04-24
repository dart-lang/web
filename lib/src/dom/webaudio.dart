// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

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
class BaseAudioContext implements EventTarget {}

extension BaseAudioContextExtension on BaseAudioContext {
  external AnalyserNode createAnalyser();
  external BiquadFilterNode createBiquadFilter();
  external AudioBuffer createBuffer(
    JSNumber numberOfChannels,
    JSNumber length,
    JSNumber sampleRate,
  );
  external AudioBufferSourceNode createBufferSource();
  external ChannelMergerNode createChannelMerger([JSNumber numberOfInputs]);
  external ChannelSplitterNode createChannelSplitter(
      [JSNumber numberOfOutputs]);
  external ConstantSourceNode createConstantSource();
  external ConvolverNode createConvolver();
  external DelayNode createDelay([JSNumber maxDelayTime]);
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
    JSNumber bufferSize,
    JSNumber numberOfInputChannels,
    JSNumber numberOfOutputChannels,
  ]);
  external StereoPannerNode createStereoPanner();
  external WaveShaperNode createWaveShaper();
  external JSPromise decodeAudioData(
    JSArrayBuffer audioData, [
    DecodeSuccessCallback? successCallback,
    DecodeErrorCallback? errorCallback,
  ]);
  external AudioDestinationNode get destination;
  external JSNumber get sampleRate;
  external JSNumber get currentTime;
  external AudioListener get listener;
  external AudioContextState get state;
  external AudioWorklet get audioWorklet;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
}

@JS('AudioContext')
@staticInterop
class AudioContext implements BaseAudioContext {
  external factory AudioContext([AudioContextOptions contextOptions]);
}

extension AudioContextExtension on AudioContext {
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
  external JSNumber get baseLatency;
  external JSNumber get outputLatency;
  external JSAny get sinkId;
  external AudioRenderCapacity get renderCapacity;
  external set onsinkchange(EventHandler value);
  external EventHandler get onsinkchange;
}

@JS()
@staticInterop
@anonymous
class AudioContextOptions {
  external factory AudioContextOptions({
    JSAny latencyHint,
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
class AudioSinkInfo {}

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
class AudioRenderCapacity implements EventTarget {}

extension AudioRenderCapacityExtension on AudioRenderCapacity {
  external JSVoid start([AudioRenderCapacityOptions options]);
  external JSVoid stop();
  external set onupdate(EventHandler value);
  external EventHandler get onupdate;
}

@JS()
@staticInterop
@anonymous
class AudioRenderCapacityOptions {
  external factory AudioRenderCapacityOptions({JSNumber updateInterval});
}

extension AudioRenderCapacityOptionsExtension on AudioRenderCapacityOptions {
  external set updateInterval(JSNumber value);
  external JSNumber get updateInterval;
}

@JS('AudioRenderCapacityEvent')
@staticInterop
class AudioRenderCapacityEvent implements Event {
  external factory AudioRenderCapacityEvent(
    JSString type, [
    AudioRenderCapacityEventInit eventInitDict,
  ]);
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
class AudioRenderCapacityEventInit implements EventInit {
  external factory AudioRenderCapacityEventInit({
    JSNumber timestamp,
    JSNumber averageLoad,
    JSNumber peakLoad,
    JSNumber underrunRatio,
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
class OfflineAudioContext implements BaseAudioContext {
  external factory OfflineAudioContext(
    JSAny contextOptionsOrNumberOfChannels, [
    JSNumber length,
    JSNumber sampleRate,
  ]);
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
    JSNumber numberOfChannels,
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
class OfflineAudioCompletionEvent implements Event {
  external factory OfflineAudioCompletionEvent(
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
class OfflineAudioCompletionEventInit implements EventInit {
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
  external factory AudioBuffer(AudioBufferOptions options);
}

extension AudioBufferExtension on AudioBuffer {
  external JSFloat32Array getChannelData(JSNumber channel);
  external JSVoid copyFromChannel(
    JSFloat32Array destination,
    JSNumber channelNumber, [
    JSNumber bufferOffset,
  ]);
  external JSVoid copyToChannel(
    JSFloat32Array source,
    JSNumber channelNumber, [
    JSNumber bufferOffset,
  ]);
  external JSNumber get sampleRate;
  external JSNumber get length;
  external JSNumber get duration;
  external JSNumber get numberOfChannels;
}

@JS()
@staticInterop
@anonymous
class AudioBufferOptions {
  external factory AudioBufferOptions({
    JSNumber numberOfChannels,
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
class AudioNode implements EventTarget {}

extension AudioNodeExtension on AudioNode {
  external JSAny connect(
    JSAny destinationNodeOrDestinationParam, [
    JSNumber output,
    JSNumber input,
  ]);
  external JSVoid disconnect([
    JSAny destinationNodeOrDestinationParamOrOutput,
    JSNumber output,
    JSNumber input,
  ]);
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
class AudioParam {}

extension AudioParamExtension on AudioParam {
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
  external set value(JSNumber value);
  external JSNumber get value;
  external set automationRate(AutomationRate value);
  external AutomationRate get automationRate;
  external JSNumber get defaultValue;
  external JSNumber get minValue;
  external JSNumber get maxValue;
}

@JS('AudioScheduledSourceNode')
@staticInterop
class AudioScheduledSourceNode implements AudioNode {}

extension AudioScheduledSourceNodeExtension on AudioScheduledSourceNode {
  external JSVoid start([JSNumber when]);
  external JSVoid stop([JSNumber when]);
  external set onended(EventHandler value);
  external EventHandler get onended;
}

@JS('AnalyserNode')
@staticInterop
class AnalyserNode implements AudioNode {
  external factory AnalyserNode(
    BaseAudioContext context, [
    AnalyserOptions options,
  ]);
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
class AnalyserOptions implements AudioNodeOptions {
  external factory AnalyserOptions({
    JSNumber fftSize,
    JSNumber maxDecibels,
    JSNumber minDecibels,
    JSNumber smoothingTimeConstant,
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
class AudioBufferSourceNode implements AudioScheduledSourceNode {
  external factory AudioBufferSourceNode(
    BaseAudioContext context, [
    AudioBufferSourceOptions options,
  ]);
}

extension AudioBufferSourceNodeExtension on AudioBufferSourceNode {
  external JSVoid start([
    JSNumber when,
    JSNumber offset,
    JSNumber duration,
  ]);
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
}

@JS()
@staticInterop
@anonymous
class AudioBufferSourceOptions {
  external factory AudioBufferSourceOptions({
    AudioBuffer? buffer,
    JSNumber detune,
    JSBoolean loop,
    JSNumber loopEnd,
    JSNumber loopStart,
    JSNumber playbackRate,
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
class AudioDestinationNode implements AudioNode {}

extension AudioDestinationNodeExtension on AudioDestinationNode {
  external JSNumber get maxChannelCount;
}

@JS('AudioListener')
@staticInterop
class AudioListener {}

extension AudioListenerExtension on AudioListener {
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

@JS('AudioProcessingEvent')
@staticInterop
class AudioProcessingEvent implements Event {
  external factory AudioProcessingEvent(
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
class AudioProcessingEventInit implements EventInit {
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
class BiquadFilterNode implements AudioNode {
  external factory BiquadFilterNode(
    BaseAudioContext context, [
    BiquadFilterOptions options,
  ]);
}

extension BiquadFilterNodeExtension on BiquadFilterNode {
  external JSVoid getFrequencyResponse(
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

@JS()
@staticInterop
@anonymous
class BiquadFilterOptions implements AudioNodeOptions {
  external factory BiquadFilterOptions({
    BiquadFilterType type,
    JSNumber Q,
    JSNumber detune,
    JSNumber frequency,
    JSNumber gain,
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
class ChannelMergerNode implements AudioNode {
  external factory ChannelMergerNode(
    BaseAudioContext context, [
    ChannelMergerOptions options,
  ]);
}

@JS()
@staticInterop
@anonymous
class ChannelMergerOptions implements AudioNodeOptions {
  external factory ChannelMergerOptions({JSNumber numberOfInputs});
}

extension ChannelMergerOptionsExtension on ChannelMergerOptions {
  external set numberOfInputs(JSNumber value);
  external JSNumber get numberOfInputs;
}

@JS('ChannelSplitterNode')
@staticInterop
class ChannelSplitterNode implements AudioNode {
  external factory ChannelSplitterNode(
    BaseAudioContext context, [
    ChannelSplitterOptions options,
  ]);
}

@JS()
@staticInterop
@anonymous
class ChannelSplitterOptions implements AudioNodeOptions {
  external factory ChannelSplitterOptions({JSNumber numberOfOutputs});
}

extension ChannelSplitterOptionsExtension on ChannelSplitterOptions {
  external set numberOfOutputs(JSNumber value);
  external JSNumber get numberOfOutputs;
}

@JS('ConstantSourceNode')
@staticInterop
class ConstantSourceNode implements AudioScheduledSourceNode {
  external factory ConstantSourceNode(
    BaseAudioContext context, [
    ConstantSourceOptions options,
  ]);
}

extension ConstantSourceNodeExtension on ConstantSourceNode {
  external AudioParam get offset;
}

@JS()
@staticInterop
@anonymous
class ConstantSourceOptions {
  external factory ConstantSourceOptions({JSNumber offset});
}

extension ConstantSourceOptionsExtension on ConstantSourceOptions {
  external set offset(JSNumber value);
  external JSNumber get offset;
}

@JS('ConvolverNode')
@staticInterop
class ConvolverNode implements AudioNode {
  external factory ConvolverNode(
    BaseAudioContext context, [
    ConvolverOptions options,
  ]);
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
class ConvolverOptions implements AudioNodeOptions {
  external factory ConvolverOptions({
    AudioBuffer? buffer,
    JSBoolean disableNormalization,
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
class DelayNode implements AudioNode {
  external factory DelayNode(
    BaseAudioContext context, [
    DelayOptions options,
  ]);
}

extension DelayNodeExtension on DelayNode {
  external AudioParam get delayTime;
}

@JS()
@staticInterop
@anonymous
class DelayOptions implements AudioNodeOptions {
  external factory DelayOptions({
    JSNumber maxDelayTime,
    JSNumber delayTime,
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
class DynamicsCompressorNode implements AudioNode {
  external factory DynamicsCompressorNode(
    BaseAudioContext context, [
    DynamicsCompressorOptions options,
  ]);
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
class DynamicsCompressorOptions implements AudioNodeOptions {
  external factory DynamicsCompressorOptions({
    JSNumber attack,
    JSNumber knee,
    JSNumber ratio,
    JSNumber release,
    JSNumber threshold,
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
class GainNode implements AudioNode {
  external factory GainNode(
    BaseAudioContext context, [
    GainOptions options,
  ]);
}

extension GainNodeExtension on GainNode {
  external AudioParam get gain;
}

@JS()
@staticInterop
@anonymous
class GainOptions implements AudioNodeOptions {
  external factory GainOptions({JSNumber gain});
}

extension GainOptionsExtension on GainOptions {
  external set gain(JSNumber value);
  external JSNumber get gain;
}

@JS('IIRFilterNode')
@staticInterop
class IIRFilterNode implements AudioNode {
  external factory IIRFilterNode(
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
class IIRFilterOptions implements AudioNodeOptions {
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
class MediaElementAudioSourceNode implements AudioNode {
  external factory MediaElementAudioSourceNode(
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
class MediaStreamAudioDestinationNode implements AudioNode {
  external factory MediaStreamAudioDestinationNode(
    AudioContext context, [
    AudioNodeOptions options,
  ]);
}

extension MediaStreamAudioDestinationNodeExtension
    on MediaStreamAudioDestinationNode {
  external MediaStream get stream;
}

@JS('MediaStreamAudioSourceNode')
@staticInterop
class MediaStreamAudioSourceNode implements AudioNode {
  external factory MediaStreamAudioSourceNode(
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
class MediaStreamTrackAudioSourceNode implements AudioNode {
  external factory MediaStreamTrackAudioSourceNode(
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
class OscillatorNode implements AudioScheduledSourceNode {
  external factory OscillatorNode(
    BaseAudioContext context, [
    OscillatorOptions options,
  ]);
}

extension OscillatorNodeExtension on OscillatorNode {
  external JSVoid setPeriodicWave(PeriodicWave periodicWave);
  external set type(OscillatorType value);
  external OscillatorType get type;
  external AudioParam get frequency;
  external AudioParam get detune;
}

@JS()
@staticInterop
@anonymous
class OscillatorOptions implements AudioNodeOptions {
  external factory OscillatorOptions({
    OscillatorType type,
    JSNumber frequency,
    JSNumber detune,
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
class PannerNode implements AudioNode {
  external factory PannerNode(
    BaseAudioContext context, [
    PannerOptions options,
  ]);
}

extension PannerNodeExtension on PannerNode {
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
}

@JS()
@staticInterop
@anonymous
class PannerOptions implements AudioNodeOptions {
  external factory PannerOptions({
    PanningModelType panningModel,
    DistanceModelType distanceModel,
    JSNumber positionX,
    JSNumber positionY,
    JSNumber positionZ,
    JSNumber orientationX,
    JSNumber orientationY,
    JSNumber orientationZ,
    JSNumber refDistance,
    JSNumber maxDistance,
    JSNumber rolloffFactor,
    JSNumber coneInnerAngle,
    JSNumber coneOuterAngle,
    JSNumber coneOuterGain,
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
  external factory PeriodicWave(
    BaseAudioContext context, [
    PeriodicWaveOptions options,
  ]);
}

@JS()
@staticInterop
@anonymous
class PeriodicWaveConstraints {
  external factory PeriodicWaveConstraints({JSBoolean disableNormalization});
}

extension PeriodicWaveConstraintsExtension on PeriodicWaveConstraints {
  external set disableNormalization(JSBoolean value);
  external JSBoolean get disableNormalization;
}

@JS()
@staticInterop
@anonymous
class PeriodicWaveOptions implements PeriodicWaveConstraints {
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
class ScriptProcessorNode implements AudioNode {}

extension ScriptProcessorNodeExtension on ScriptProcessorNode {
  external set onaudioprocess(EventHandler value);
  external EventHandler get onaudioprocess;
  external JSNumber get bufferSize;
}

@JS('StereoPannerNode')
@staticInterop
class StereoPannerNode implements AudioNode {
  external factory StereoPannerNode(
    BaseAudioContext context, [
    StereoPannerOptions options,
  ]);
}

extension StereoPannerNodeExtension on StereoPannerNode {
  external AudioParam get pan;
}

@JS()
@staticInterop
@anonymous
class StereoPannerOptions implements AudioNodeOptions {
  external factory StereoPannerOptions({JSNumber pan});
}

extension StereoPannerOptionsExtension on StereoPannerOptions {
  external set pan(JSNumber value);
  external JSNumber get pan;
}

@JS('WaveShaperNode')
@staticInterop
class WaveShaperNode implements AudioNode {
  external factory WaveShaperNode(
    BaseAudioContext context, [
    WaveShaperOptions options,
  ]);
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
class WaveShaperOptions implements AudioNodeOptions {
  external factory WaveShaperOptions({
    JSArray curve,
    OverSampleType oversample,
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
class AudioWorklet implements Worklet {}

extension AudioWorkletExtension on AudioWorklet {
  external MessagePort get port;
}

@JS('AudioWorkletGlobalScope')
@staticInterop
class AudioWorkletGlobalScope implements WorkletGlobalScope {}

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
class AudioParamMap {}

extension AudioParamMapExtension on AudioParamMap {}

@JS('AudioWorkletNode')
@staticInterop
class AudioWorkletNode implements AudioNode {
  external factory AudioWorkletNode(
    BaseAudioContext context,
    JSString name, [
    AudioWorkletNodeOptions options,
  ]);
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
class AudioWorkletNodeOptions implements AudioNodeOptions {
  external factory AudioWorkletNodeOptions({
    JSNumber numberOfInputs,
    JSNumber numberOfOutputs,
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
  external factory AudioWorkletProcessor();
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
    JSNumber defaultValue,
    JSNumber minValue,
    JSNumber maxValue,
    AutomationRate automationRate,
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
