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
typedef AudioContextState = String;
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

@JS('BaseAudioContext')
@staticInterop
class BaseAudioContext implements EventTarget {}

extension BaseAudioContextExtension on BaseAudioContext {
  external AnalyserNode createAnalyser();
  external BiquadFilterNode createBiquadFilter();
  external AudioBuffer createBuffer(
    int numberOfChannels,
    int length,
    double sampleRate,
  );
  external AudioBufferSourceNode createBufferSource();
  external ChannelMergerNode createChannelMerger([int numberOfInputs]);
  external ChannelSplitterNode createChannelSplitter([int numberOfOutputs]);
  external ConstantSourceNode createConstantSource();
  external ConvolverNode createConvolver();
  external DelayNode createDelay([double maxDelayTime]);
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
  external double get sampleRate;
  external double get currentTime;
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
  external JSPromise setSinkId(JSAny? sinkId);
  external MediaElementAudioSourceNode createMediaElementSource(
      HTMLMediaElement mediaElement);
  external MediaStreamAudioSourceNode createMediaStreamSource(
      MediaStream mediaStream);
  external MediaStreamTrackAudioSourceNode createMediaStreamTrackSource(
      MediaStreamTrack mediaStreamTrack);
  external MediaStreamAudioDestinationNode createMediaStreamDestination();
  external double get baseLatency;
  external double get outputLatency;
  external JSAny? get sinkId;
  external AudioRenderCapacity get renderCapacity;
  external set onsinkchange(EventHandler value);
  external EventHandler get onsinkchange;
}

@JS()
@staticInterop
@anonymous
class AudioContextOptions implements JSObject {
  external factory AudioContextOptions({
    JSAny? latencyHint,
    double sampleRate,
    JSAny? sinkId,
  });
}

extension AudioContextOptionsExtension on AudioContextOptions {
  external set latencyHint(JSAny? value);
  external JSAny? get latencyHint;
  external set sampleRate(double value);
  external double get sampleRate;
  external set sinkId(JSAny? value);
  external JSAny? get sinkId;
}

@JS()
@staticInterop
@anonymous
class AudioSinkOptions implements JSObject {
  external factory AudioSinkOptions({required AudioSinkType type});
}

extension AudioSinkOptionsExtension on AudioSinkOptions {
  external set type(AudioSinkType value);
  external AudioSinkType get type;
}

@JS('AudioSinkInfo')
@staticInterop
class AudioSinkInfo implements JSObject {}

extension AudioSinkInfoExtension on AudioSinkInfo {
  external AudioSinkType get type;
}

@JS()
@staticInterop
@anonymous
class AudioTimestamp implements JSObject {
  external factory AudioTimestamp({
    double contextTime,
    DOMHighResTimeStamp performanceTime,
  });
}

extension AudioTimestampExtension on AudioTimestamp {
  external set contextTime(double value);
  external double get contextTime;
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
class AudioRenderCapacityOptions implements JSObject {
  external factory AudioRenderCapacityOptions({double updateInterval});
}

extension AudioRenderCapacityOptionsExtension on AudioRenderCapacityOptions {
  external set updateInterval(double value);
  external double get updateInterval;
}

@JS('AudioRenderCapacityEvent')
@staticInterop
class AudioRenderCapacityEvent implements Event {
  external factory AudioRenderCapacityEvent(
    String type, [
    AudioRenderCapacityEventInit eventInitDict,
  ]);
}

extension AudioRenderCapacityEventExtension on AudioRenderCapacityEvent {
  external double get timestamp;
  external double get averageLoad;
  external double get peakLoad;
  external double get underrunRatio;
}

@JS()
@staticInterop
@anonymous
class AudioRenderCapacityEventInit implements EventInit {
  external factory AudioRenderCapacityEventInit({
    double timestamp,
    double averageLoad,
    double peakLoad,
    double underrunRatio,
  });
}

extension AudioRenderCapacityEventInitExtension
    on AudioRenderCapacityEventInit {
  external set timestamp(double value);
  external double get timestamp;
  external set averageLoad(double value);
  external double get averageLoad;
  external set peakLoad(double value);
  external double get peakLoad;
  external set underrunRatio(double value);
  external double get underrunRatio;
}

@JS('OfflineAudioContext')
@staticInterop
class OfflineAudioContext implements BaseAudioContext {
  external factory OfflineAudioContext(
    JSAny? contextOptionsOrNumberOfChannels, [
    int length,
    double sampleRate,
  ]);
}

extension OfflineAudioContextExtension on OfflineAudioContext {
  external JSPromise startRendering();
  external JSPromise resume();
  external JSPromise suspend(double suspendTime);
  external int get length;
  external set oncomplete(EventHandler value);
  external EventHandler get oncomplete;
}

@JS()
@staticInterop
@anonymous
class OfflineAudioContextOptions implements JSObject {
  external factory OfflineAudioContextOptions({
    int numberOfChannels,
    required int length,
    required double sampleRate,
  });
}

extension OfflineAudioContextOptionsExtension on OfflineAudioContextOptions {
  external set numberOfChannels(int value);
  external int get numberOfChannels;
  external set length(int value);
  external int get length;
  external set sampleRate(double value);
  external double get sampleRate;
}

@JS('OfflineAudioCompletionEvent')
@staticInterop
class OfflineAudioCompletionEvent implements Event {
  external factory OfflineAudioCompletionEvent(
    String type,
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
class AudioBuffer implements JSObject {
  external factory AudioBuffer(AudioBufferOptions options);
}

extension AudioBufferExtension on AudioBuffer {
  external JSFloat32Array getChannelData(int channel);
  external JSVoid copyFromChannel(
    JSFloat32Array destination,
    int channelNumber, [
    int bufferOffset,
  ]);
  external JSVoid copyToChannel(
    JSFloat32Array source,
    int channelNumber, [
    int bufferOffset,
  ]);
  external double get sampleRate;
  external int get length;
  external double get duration;
  external int get numberOfChannels;
}

@JS()
@staticInterop
@anonymous
class AudioBufferOptions implements JSObject {
  external factory AudioBufferOptions({
    int numberOfChannels,
    required int length,
    required double sampleRate,
  });
}

extension AudioBufferOptionsExtension on AudioBufferOptions {
  external set numberOfChannels(int value);
  external int get numberOfChannels;
  external set length(int value);
  external int get length;
  external set sampleRate(double value);
  external double get sampleRate;
}

@JS('AudioNode')
@staticInterop
class AudioNode implements EventTarget {}

extension AudioNodeExtension on AudioNode {
  external JSAny? connect(
    JSAny? destinationNodeOrDestinationParam, [
    int output,
    int input,
  ]);
  external JSVoid disconnect([
    JSAny? destinationNodeOrDestinationParamOrOutput,
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

@JS()
@staticInterop
@anonymous
class AudioNodeOptions implements JSObject {
  external factory AudioNodeOptions({
    int channelCount,
    ChannelCountMode channelCountMode,
    ChannelInterpretation channelInterpretation,
  });
}

extension AudioNodeOptionsExtension on AudioNodeOptions {
  external set channelCount(int value);
  external int get channelCount;
  external set channelCountMode(ChannelCountMode value);
  external ChannelCountMode get channelCountMode;
  external set channelInterpretation(ChannelInterpretation value);
  external ChannelInterpretation get channelInterpretation;
}

@JS('AudioParam')
@staticInterop
class AudioParam implements JSObject {}

extension AudioParamExtension on AudioParam {
  external AudioParam setValueAtTime(
    double value,
    double startTime,
  );
  external AudioParam linearRampToValueAtTime(
    double value,
    double endTime,
  );
  external AudioParam exponentialRampToValueAtTime(
    double value,
    double endTime,
  );
  external AudioParam setTargetAtTime(
    double target,
    double startTime,
    double timeConstant,
  );
  external AudioParam setValueCurveAtTime(
    JSArray values,
    double startTime,
    double duration,
  );
  external AudioParam cancelScheduledValues(double cancelTime);
  external AudioParam cancelAndHoldAtTime(double cancelTime);
  external set value(double value);
  external double get value;
  external set automationRate(AutomationRate value);
  external AutomationRate get automationRate;
  external double get defaultValue;
  external double get minValue;
  external double get maxValue;
}

@JS('AudioScheduledSourceNode')
@staticInterop
class AudioScheduledSourceNode implements AudioNode {}

extension AudioScheduledSourceNodeExtension on AudioScheduledSourceNode {
  external JSVoid start([double when]);
  external JSVoid stop([double when]);
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
  external set fftSize(int value);
  external int get fftSize;
  external int get frequencyBinCount;
  external set minDecibels(double value);
  external double get minDecibels;
  external set maxDecibels(double value);
  external double get maxDecibels;
  external set smoothingTimeConstant(double value);
  external double get smoothingTimeConstant;
}

@JS()
@staticInterop
@anonymous
class AnalyserOptions implements AudioNodeOptions {
  external factory AnalyserOptions({
    int fftSize,
    double maxDecibels,
    double minDecibels,
    double smoothingTimeConstant,
  });
}

extension AnalyserOptionsExtension on AnalyserOptions {
  external set fftSize(int value);
  external int get fftSize;
  external set maxDecibels(double value);
  external double get maxDecibels;
  external set minDecibels(double value);
  external double get minDecibels;
  external set smoothingTimeConstant(double value);
  external double get smoothingTimeConstant;
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
    double when,
    double offset,
    double duration,
  ]);
  external set buffer(AudioBuffer? value);
  external AudioBuffer? get buffer;
  external AudioParam get playbackRate;
  external AudioParam get detune;
  external set loop(bool value);
  external bool get loop;
  external set loopStart(double value);
  external double get loopStart;
  external set loopEnd(double value);
  external double get loopEnd;
}

@JS()
@staticInterop
@anonymous
class AudioBufferSourceOptions implements JSObject {
  external factory AudioBufferSourceOptions({
    AudioBuffer? buffer,
    double detune,
    bool loop,
    double loopEnd,
    double loopStart,
    double playbackRate,
  });
}

extension AudioBufferSourceOptionsExtension on AudioBufferSourceOptions {
  external set buffer(AudioBuffer? value);
  external AudioBuffer? get buffer;
  external set detune(double value);
  external double get detune;
  external set loop(bool value);
  external bool get loop;
  external set loopEnd(double value);
  external double get loopEnd;
  external set loopStart(double value);
  external double get loopStart;
  external set playbackRate(double value);
  external double get playbackRate;
}

@JS('AudioDestinationNode')
@staticInterop
class AudioDestinationNode implements AudioNode {}

extension AudioDestinationNodeExtension on AudioDestinationNode {
  external int get maxChannelCount;
}

@JS('AudioListener')
@staticInterop
class AudioListener implements JSObject {}

extension AudioListenerExtension on AudioListener {
  external JSVoid setPosition(
    double x,
    double y,
    double z,
  );
  external JSVoid setOrientation(
    double x,
    double y,
    double z,
    double xUp,
    double yUp,
    double zUp,
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
    String type,
    AudioProcessingEventInit eventInitDict,
  );
}

extension AudioProcessingEventExtension on AudioProcessingEvent {
  external double get playbackTime;
  external AudioBuffer get inputBuffer;
  external AudioBuffer get outputBuffer;
}

@JS()
@staticInterop
@anonymous
class AudioProcessingEventInit implements EventInit {
  external factory AudioProcessingEventInit({
    required double playbackTime,
    required AudioBuffer inputBuffer,
    required AudioBuffer outputBuffer,
  });
}

extension AudioProcessingEventInitExtension on AudioProcessingEventInit {
  external set playbackTime(double value);
  external double get playbackTime;
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
    double Q,
    double detune,
    double frequency,
    double gain,
  });
}

extension BiquadFilterOptionsExtension on BiquadFilterOptions {
  external set type(BiquadFilterType value);
  external BiquadFilterType get type;
  external set Q(double value);
  external double get Q;
  external set detune(double value);
  external double get detune;
  external set frequency(double value);
  external double get frequency;
  external set gain(double value);
  external double get gain;
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
  external factory ChannelMergerOptions({int numberOfInputs});
}

extension ChannelMergerOptionsExtension on ChannelMergerOptions {
  external set numberOfInputs(int value);
  external int get numberOfInputs;
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
  external factory ChannelSplitterOptions({int numberOfOutputs});
}

extension ChannelSplitterOptionsExtension on ChannelSplitterOptions {
  external set numberOfOutputs(int value);
  external int get numberOfOutputs;
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
class ConstantSourceOptions implements JSObject {
  external factory ConstantSourceOptions({double offset});
}

extension ConstantSourceOptionsExtension on ConstantSourceOptions {
  external set offset(double value);
  external double get offset;
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
  external set normalize(bool value);
  external bool get normalize;
}

@JS()
@staticInterop
@anonymous
class ConvolverOptions implements AudioNodeOptions {
  external factory ConvolverOptions({
    AudioBuffer? buffer,
    bool disableNormalization,
  });
}

extension ConvolverOptionsExtension on ConvolverOptions {
  external set buffer(AudioBuffer? value);
  external AudioBuffer? get buffer;
  external set disableNormalization(bool value);
  external bool get disableNormalization;
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
    double maxDelayTime,
    double delayTime,
  });
}

extension DelayOptionsExtension on DelayOptions {
  external set maxDelayTime(double value);
  external double get maxDelayTime;
  external set delayTime(double value);
  external double get delayTime;
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
  external double get reduction;
  external AudioParam get attack;
  external AudioParam get release;
}

@JS()
@staticInterop
@anonymous
class DynamicsCompressorOptions implements AudioNodeOptions {
  external factory DynamicsCompressorOptions({
    double attack,
    double knee,
    double ratio,
    double release,
    double threshold,
  });
}

extension DynamicsCompressorOptionsExtension on DynamicsCompressorOptions {
  external set attack(double value);
  external double get attack;
  external set knee(double value);
  external double get knee;
  external set ratio(double value);
  external double get ratio;
  external set release(double value);
  external double get release;
  external set threshold(double value);
  external double get threshold;
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
  external factory GainOptions({double gain});
}

extension GainOptionsExtension on GainOptions {
  external set gain(double value);
  external double get gain;
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
class MediaElementAudioSourceOptions implements JSObject {
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
class MediaStreamAudioSourceOptions implements JSObject {
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
class MediaStreamTrackAudioSourceOptions implements JSObject {
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
    double frequency,
    double detune,
    PeriodicWave periodicWave,
  });
}

extension OscillatorOptionsExtension on OscillatorOptions {
  external set type(OscillatorType value);
  external OscillatorType get type;
  external set frequency(double value);
  external double get frequency;
  external set detune(double value);
  external double get detune;
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
    double x,
    double y,
    double z,
  );
  external JSVoid setOrientation(
    double x,
    double y,
    double z,
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
  external set refDistance(double value);
  external double get refDistance;
  external set maxDistance(double value);
  external double get maxDistance;
  external set rolloffFactor(double value);
  external double get rolloffFactor;
  external set coneInnerAngle(double value);
  external double get coneInnerAngle;
  external set coneOuterAngle(double value);
  external double get coneOuterAngle;
  external set coneOuterGain(double value);
  external double get coneOuterGain;
}

@JS()
@staticInterop
@anonymous
class PannerOptions implements AudioNodeOptions {
  external factory PannerOptions({
    PanningModelType panningModel,
    DistanceModelType distanceModel,
    double positionX,
    double positionY,
    double positionZ,
    double orientationX,
    double orientationY,
    double orientationZ,
    double refDistance,
    double maxDistance,
    double rolloffFactor,
    double coneInnerAngle,
    double coneOuterAngle,
    double coneOuterGain,
  });
}

extension PannerOptionsExtension on PannerOptions {
  external set panningModel(PanningModelType value);
  external PanningModelType get panningModel;
  external set distanceModel(DistanceModelType value);
  external DistanceModelType get distanceModel;
  external set positionX(double value);
  external double get positionX;
  external set positionY(double value);
  external double get positionY;
  external set positionZ(double value);
  external double get positionZ;
  external set orientationX(double value);
  external double get orientationX;
  external set orientationY(double value);
  external double get orientationY;
  external set orientationZ(double value);
  external double get orientationZ;
  external set refDistance(double value);
  external double get refDistance;
  external set maxDistance(double value);
  external double get maxDistance;
  external set rolloffFactor(double value);
  external double get rolloffFactor;
  external set coneInnerAngle(double value);
  external double get coneInnerAngle;
  external set coneOuterAngle(double value);
  external double get coneOuterAngle;
  external set coneOuterGain(double value);
  external double get coneOuterGain;
}

@JS('PeriodicWave')
@staticInterop
class PeriodicWave implements JSObject {
  external factory PeriodicWave(
    BaseAudioContext context, [
    PeriodicWaveOptions options,
  ]);
}

@JS()
@staticInterop
@anonymous
class PeriodicWaveConstraints implements JSObject {
  external factory PeriodicWaveConstraints({bool disableNormalization});
}

extension PeriodicWaveConstraintsExtension on PeriodicWaveConstraints {
  external set disableNormalization(bool value);
  external bool get disableNormalization;
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
  external int get bufferSize;
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
  external factory StereoPannerOptions({double pan});
}

extension StereoPannerOptionsExtension on StereoPannerOptions {
  external set pan(double value);
  external double get pan;
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
    String name,
    AudioWorkletProcessorConstructor processorCtor,
  );
  external int get currentFrame;
  external double get currentTime;
  external double get sampleRate;
  external MessagePort get port;
}

@JS('AudioParamMap')
@staticInterop
class AudioParamMap implements JSObject {}

extension AudioParamMapExtension on AudioParamMap {}

@JS('AudioWorkletNode')
@staticInterop
class AudioWorkletNode implements AudioNode {
  external factory AudioWorkletNode(
    BaseAudioContext context,
    String name, [
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
    int numberOfInputs,
    int numberOfOutputs,
    JSArray outputChannelCount,
    JSAny? parameterData,
    JSObject processorOptions,
  });
}

extension AudioWorkletNodeOptionsExtension on AudioWorkletNodeOptions {
  external set numberOfInputs(int value);
  external int get numberOfInputs;
  external set numberOfOutputs(int value);
  external int get numberOfOutputs;
  external set outputChannelCount(JSArray value);
  external JSArray get outputChannelCount;
  external set parameterData(JSAny? value);
  external JSAny? get parameterData;
  external set processorOptions(JSObject value);
  external JSObject get processorOptions;
}

@JS('AudioWorkletProcessor')
@staticInterop
class AudioWorkletProcessor implements JSObject {
  external factory AudioWorkletProcessor();
}

extension AudioWorkletProcessorExtension on AudioWorkletProcessor {
  external MessagePort get port;
}

@JS()
@staticInterop
@anonymous
class AudioParamDescriptor implements JSObject {
  external factory AudioParamDescriptor({
    required String name,
    double defaultValue,
    double minValue,
    double maxValue,
    AutomationRate automationRate,
  });
}

extension AudioParamDescriptorExtension on AudioParamDescriptor {
  external set name(String value);
  external String get name;
  external set defaultValue(double value);
  external double get defaultValue;
  external set minValue(double value);
  external double get minValue;
  external set maxValue(double value);
  external double get maxValue;
  external set automationRate(AutomationRate value);
  external AutomationRate get automationRate;
}
