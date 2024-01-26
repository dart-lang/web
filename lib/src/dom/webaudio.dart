// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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
  /// The `createAnalyser()` method of the
  /// [BaseAudioContext] interface creates an [AnalyserNode], which
  /// can be used to expose audio time and frequency data and create data
  /// visualizations.
  ///
  /// > **Note:** The [AnalyserNode.AnalyserNode] constructor is the
  /// > recommended way to create an [AnalyserNode]; see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  ///
  /// > **Note:** For more on using this node, see the
  /// > [AnalyserNode] page.
  external AnalyserNode createAnalyser();

  /// The `createBiquadFilter()` method of the [BaseAudioContext]
  /// interface creates a [BiquadFilterNode], which represents a second order
  /// filter configurable as several different common filter types.
  ///
  /// > **Note:** The [BiquadFilterNode.BiquadFilterNode] constructor is the
  /// > recommended way to create a [BiquadFilterNode]; see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external BiquadFilterNode createBiquadFilter();

  /// The `createBuffer()` method of the [BaseAudioContext]
  /// Interface is used to create a new, empty [AudioBuffer] object, which
  /// can then be populated by data, and played via an [AudioBufferSourceNode]
  ///
  /// For more details about audio buffers, check out the [AudioBuffer]
  /// reference page.
  ///
  /// > **Note:** `createBuffer()` used to be able to take compressed
  /// > data and give back decoded samples, but this ability was removed from
  /// > the specification,
  /// > because all the decoding was done on the main thread, so
  /// > `createBuffer()` was blocking other code execution. The asynchronous
  /// > method
  /// > `decodeAudioData()` does the same thing — takes compressed audio, such
  /// > as an
  /// > MP3 file, and directly gives you back an [AudioBuffer] that you can
  /// > then play via an [AudioBufferSourceNode]. For simple use cases
  /// > like playing an MP3, `decodeAudioData()` is what you should be using.
  external AudioBuffer createBuffer(
    int numberOfChannels,
    int length,
    num sampleRate,
  );

  /// The `createBufferSource()` method of the [BaseAudioContext]
  /// Interface is used to create a new [AudioBufferSourceNode], which can be
  /// used to play audio data contained within an [AudioBuffer] object.
  /// [AudioBuffer]s are created using
  /// [BaseAudioContext.createBuffer] or returned by
  /// [BaseAudioContext.decodeAudioData] when it successfully decodes an audio
  /// track.
  ///
  /// > **Note:** The [AudioBufferSourceNode.AudioBufferSourceNode]
  /// > constructor is the recommended way to create a [AudioBufferSourceNode];
  /// > see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external AudioBufferSourceNode createBufferSource();

  /// The `createChannelMerger()` method of the [BaseAudioContext] interface
  /// creates a [ChannelMergerNode],
  /// which combines channels from multiple audio streams into a single audio
  /// stream.
  ///
  /// > **Note:** The [ChannelMergerNode.ChannelMergerNode] constructor is the
  /// > recommended way to create a [ChannelMergerNode]; see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external ChannelMergerNode createChannelMerger([int numberOfInputs]);

  /// The `createChannelSplitter()` method of the [BaseAudioContext] Interface
  /// is used to create a [ChannelSplitterNode],
  /// which is used to access the individual channels of an audio stream and
  /// process them separately.
  ///
  /// > **Note:** The [ChannelSplitterNode.ChannelSplitterNode]
  /// > constructor is the recommended way to create a [ChannelSplitterNode];
  /// > see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external ChannelSplitterNode createChannelSplitter([int numberOfOutputs]);

  /// The **`createConstantSource()`**
  /// property of the [BaseAudioContext] interface creates a
  /// [ConstantSourceNode] object, which is an audio source that continuously
  /// outputs a monaural (one-channel) sound signal whose samples all have the
  /// same
  /// value.
  ///
  /// > **Note:** The [ConstantSourceNode.ConstantSourceNode]
  /// > constructor is the recommended way to create a [ConstantSourceNode]; see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external ConstantSourceNode createConstantSource();

  /// The `createConvolver()` method of the [BaseAudioContext]
  /// interface creates a [ConvolverNode], which is commonly used to apply
  /// reverb effects to your audio. See the
  /// [spec definition of Convolution](https://webaudio.github.io/web-audio-api/#background-3)
  /// for more information.
  ///
  /// > **Note:** The [ConvolverNode.ConvolverNode]
  /// > constructor is the recommended way to create a [ConvolverNode]; see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external ConvolverNode createConvolver();

  /// The `createDelay()` method of the
  /// [BaseAudioContext] Interface is used to create a [DelayNode],
  /// which is used to delay the incoming audio signal by a certain amount of
  /// time.
  ///
  /// > **Note:** The [DelayNode.DelayNode]
  /// > constructor is the recommended way to create a [DelayNode]; see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external DelayNode createDelay([num maxDelayTime]);

  /// The `createDynamicsCompressor()` method of the [BaseAudioContext]
  /// Interface is used to create a
  /// [DynamicsCompressorNode], which can be used to apply compression to an
  /// audio signal.
  ///
  /// Compression lowers the volume of the loudest parts of the signal and
  /// raises the volume
  /// of the softest parts. Overall, a louder, richer, and fuller sound can be
  /// achieved. It is
  /// especially important in games and musical applications where large numbers
  /// of individual
  /// sounds are played simultaneously, where you want to control the overall
  /// signal level and
  /// help avoid clipping (distorting) of the audio output.
  ///
  /// > **Note:** The [DynamicsCompressorNode.DynamicsCompressorNode]
  /// > constructor is the recommended way to create a [DynamicsCompressorNode];
  /// > see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external DynamicsCompressorNode createDynamicsCompressor();

  /// The `createGain()` method of the [BaseAudioContext]
  /// interface creates a [GainNode], which can be used to control the
  /// overall gain (or volume) of the audio graph.
  ///
  /// > **Note:** The [GainNode.GainNode]
  /// > constructor is the recommended way to create a [GainNode]; see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external GainNode createGain();

  /// The **`createIIRFilter()`** method of the [BaseAudioContext] interface
  /// creates an [IIRFilterNode],
  /// which represents a general
  /// **[infinite impulse response](https://en.wikipedia.org/wiki/Infinite_impulse_response)**
  /// (IIR) filter which can be configured to serve as various types
  /// of filter.
  ///
  /// > **Note:** The [IIRFilterNode.IIRFilterNode]
  /// > constructor is the recommended way to create a [IIRFilterNode]; see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external IIRFilterNode createIIRFilter(
    JSArray feedforward,
    JSArray feedback,
  );

  /// The `createOscillator()` method of the [BaseAudioContext]
  /// interface creates an [OscillatorNode], a source representing a periodic
  /// waveform. It basically generates a constant tone.
  ///
  /// > **Note:** The [OscillatorNode.OscillatorNode]
  /// > constructor is the recommended way to create a [OscillatorNode]; see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external OscillatorNode createOscillator();

  /// The `createPanner()` method of the [BaseAudioContext]
  /// Interface is used to create a new [PannerNode], which is used to
  /// spatialize an incoming audio stream in 3D space.
  ///
  /// The panner node is spatialized in relation to the AudioContext's
  /// [AudioListener] (defined by the [BaseAudioContext/listener]
  /// attribute), which represents the position and orientation of the person
  /// listening to the
  /// audio.
  ///
  /// > **Note:** The [PannerNode.PannerNode]
  /// > constructor is the recommended way to create a [PannerNode]; see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external PannerNode createPanner();

  /// The `createPeriodicWave()` method of the [BaseAudioContext] Interface
  /// is used to create a [PeriodicWave], which is used to define a periodic
  /// waveform
  /// that can be used to shape the output of an [OscillatorNode].
  external PeriodicWave createPeriodicWave(
    JSArray real,
    JSArray imag, [
    PeriodicWaveConstraints constraints,
  ]);

  /// The `createScriptProcessor()` method of the [BaseAudioContext] interface
  /// creates a [ScriptProcessorNode] used for direct audio processing.
  ///
  /// > **Note:** This feature was replaced by
  /// > [AudioWorklets](https://developer.mozilla.org/en-US/docs/Web/API/AudioWorklet)
  /// > and the [AudioWorkletNode] interface.
  external ScriptProcessorNode createScriptProcessor([
    int bufferSize,
    int numberOfInputChannels,
    int numberOfOutputChannels,
  ]);

  /// The `createStereoPanner()` method of the [BaseAudioContext] interface
  /// creates a [StereoPannerNode], which can be used to apply
  /// stereo panning to an audio source.
  /// It positions an incoming audio stream in a stereo image using a
  /// [low-cost panning algorithm](https://webaudio.github.io/web-audio-api/#stereopanner-algorithm).
  ///
  /// > **Note:** The [StereoPannerNode.StereoPannerNode]
  /// > constructor is the recommended way to create a [StereoPannerNode]; see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external StereoPannerNode createStereoPanner();

  /// The `createWaveShaper()` method of the [BaseAudioContext]
  /// interface creates a [WaveShaperNode], which represents a non-linear
  /// distortion. It is used to apply distortion effects to your audio.
  ///
  /// > **Note:** The [WaveShaperNode.WaveShaperNode]
  /// > constructor is the recommended way to create a [WaveShaperNode]; see
  /// > [Creating an AudioNode](https://developer.mozilla.org/en-US/docs/Web/API/AudioNode#creating_an_audionode).
  external WaveShaperNode createWaveShaper();

  /// The `decodeAudioData()` method of the [BaseAudioContext]
  /// Interface is used to asynchronously decode audio file data contained in an
  /// `ArrayBuffer` that is loaded from [fetch],
  /// [XMLHttpRequest], or [FileReader]. The decoded
  /// [AudioBuffer] is resampled to the [AudioContext]'s sampling
  /// rate, then passed to a callback or promise.
  ///
  /// This is the preferred method of creating an audio source for Web Audio API
  /// from an
  /// audio track. This method only works on complete file data, not fragments
  /// of audio file
  /// data.
  ///
  /// This function implements two alternative ways to asynchronously return the
  /// audio data or error messages: it returns a `Promise` that fulfills with
  /// the audio data, and also accepts callback arguments to handle success or
  /// failure. The primary method of interfacing with this function is via its
  /// Promise return value, and the callback parameters are provided for legacy
  /// reasons.
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

  /// The
  /// **`getOutputTimestamp()`** method of the
  /// [AudioContext] interface returns a new `AudioTimestamp` object
  /// containing two audio timestamp values relating to the current audio
  /// context.
  ///
  /// The two values are as follows:
  ///
  /// - `AudioTimestamp.contextTime`: The time of the sample frame currently
  /// being rendered by the audio output device (i.e., output audio stream
  /// position), in the
  /// same units and origin as the context's [BaseAudioContext/currentTime].
  /// Basically, this is the time after the audio context was first created.
  /// - `AudioTimestamp.performanceTime`: An estimation of the moment when the
  /// sample frame corresponding to the stored `contextTime` value was rendered
  /// by the audio output device, in the same units and origin as
  /// [performance.now]. This is the time after the document containing the
  /// audio context was first rendered.
  external AudioTimestamp getOutputTimestamp();

  /// The **`resume()`** method of the [AudioContext]
  /// interface resumes the progression of time in an audio context that has
  /// previously been
  /// suspended.
  ///
  /// This method will cause an `INVALID_STATE_ERR` exception to be thrown if
  /// called on an [OfflineAudioContext].
  external JSPromise resume();

  /// The `suspend()` method of the [AudioContext] Interface suspends the
  /// progression of time in the audio context, temporarily halting audio
  /// hardware access and reducing CPU/battery usage in the process — this is
  /// useful if you want an application to power down the audio hardware when it
  /// will not be using an audio context for a while.
  ///
  /// This method will cause an `INVALID_STATE_ERR` exception to be thrown if
  /// called on an [OfflineAudioContext].
  external JSPromise suspend();

  /// The `close()` method of the [AudioContext] Interface closes the audio
  /// context, releasing any system audio resources that it uses.
  ///
  /// This function does not automatically release all `AudioContext`-created
  /// objects, unless other references have been released as well; however, it
  /// will forcibly release any system audio resources that might prevent
  /// additional `AudioContexts` from being created and used, suspend the
  /// progression of audio time in the audio context, and stop processing audio
  /// data. The returned `Promise` resolves when all
  /// `AudioContext`-creation-blocking resources have been released. This method
  /// throws an `INVALID_STATE_ERR` exception if called on an
  /// [OfflineAudioContext].
  external JSPromise close();

  /// The **`setSinkId()`** method of the [AudioContext] interface sets the
  /// output audio device for the `AudioContext`. If a sink ID is not explicitly
  /// set, the default system audio output device will be used.
  ///
  /// To set the audio device to a device different than the default one, the
  /// developer needs permission to access to audio devices. If required, the
  /// user can be prompted to grant the required permission via a
  /// [MediaDevices.getUserMedia] call.
  ///
  /// In addition, this feature may be blocked by a
  /// [`speaker-selection`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Permissions-Policy/speaker-selection)
  /// [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy).
  external JSPromise setSinkId(JSAny sinkId);

  /// The `createMediaElementSource()` method of the [AudioContext] Interface is
  /// used to create a new [MediaElementAudioSourceNode] object, given an
  /// existing HTML `audio` or `video` element, the audio from which can then be
  /// played and manipulated.
  ///
  /// For more details about media element audio source nodes, check out the
  /// [MediaElementAudioSourceNode] reference page.
  external MediaElementAudioSourceNode createMediaElementSource(
      HTMLMediaElement mediaElement);

  /// The `createMediaStreamSource()` method of the [AudioContext]
  /// Interface is used to create a new [MediaStreamAudioSourceNode]
  /// object, given a media stream (say, from a [MediaDevices.getUserMedia]
  /// instance), the audio from which can then be played and manipulated.
  ///
  /// For more details about media stream audio source nodes, check out the
  /// [MediaStreamAudioSourceNode] reference page.
  external MediaStreamAudioSourceNode createMediaStreamSource(
      MediaStream mediaStream);

  /// The **`createMediaStreamTrackSource()`** method of the [AudioContext]
  /// interface creates and returns a
  /// [MediaStreamTrackAudioSourceNode] which represents an audio source whose
  /// data comes from the specified [MediaStreamTrack].
  ///
  /// This differs from [AudioContext.createMediaStreamSource], which creates a
  /// [MediaStreamAudioSourceNode] whose audio comes from the audio track in a
  /// specified [MediaStream] whose [MediaStreamTrack.id] is
  /// first, lexicographically (alphabetically).
  external MediaStreamTrackAudioSourceNode createMediaStreamTrackSource(
      MediaStreamTrack mediaStreamTrack);

  /// The `createMediaStreamDestination()` method of the [AudioContext]
  /// Interface is used to create a new [MediaStreamAudioDestinationNode] object
  /// associated with a
  /// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
  /// [MediaStream] representing an audio stream, which may be stored in a local
  /// file or sent to another computer.
  ///
  /// The [MediaStream] is created when the node is created and is accessible
  /// via the [MediaStreamAudioDestinationNode]'s `stream` attribute. This
  /// stream can be used in a similar way as a `MediaStream` obtained via
  /// [navigator.getUserMedia] — it can, for example, be sent to a remote peer
  /// using the `addStream()` method of `RTCPeerConnection`.
  ///
  /// For more details about media stream destination nodes, check out the
  /// [MediaStreamAudioDestinationNode] reference page.
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

  /// The `startRendering()` method of the [OfflineAudioContext] Interface
  /// starts rendering the audio graph, taking into account the current
  /// connections and the current scheduled changes.
  ///
  /// The [OfflineAudioContext/complete_event] event (of type
  /// [OfflineAudioCompletionEvent]) is raised when the rendering is finished,
  /// containing the resulting [AudioBuffer] in its `renderedBuffer` property.
  ///
  /// Browsers currently support two versions of the `startRendering()` method —
  /// an older event-based version and a newer promise-based version.
  /// The former will eventually be removed, but currently both mechanisms are
  /// provided for legacy reasons.
  external JSPromise startRendering();

  /// The **`resume()`** method of the
  /// [OfflineAudioContext] interface resumes the progression of time in an
  /// audio
  /// context that has been suspended. The promise resolves immediately because
  /// the
  /// `OfflineAudioContext` does not require the audio hardware.
  external JSPromise resume();

  /// The **`suspend()`** method of the [OfflineAudioContext] interface
  /// schedules a suspension of the time
  /// progression in the audio context at the specified time and returns a
  /// promise. This is
  /// generally useful at the time of manipulating the audio graph synchronously
  /// on
  /// OfflineAudioContext.
  ///
  /// Note that the maximum precision of suspension is the size of the render
  /// quantum and the
  /// specified suspension time will be rounded down to the nearest render
  /// quantum boundary.
  /// For this reason, it is not allowed to schedule multiple suspends at the
  /// same quantized
  /// frame. Also scheduling should be done while the context is not running to
  /// ensure the
  /// precise suspension.
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

  /// The **`getChannelData()`** method of the [AudioBuffer] Interface returns a
  /// `Float32Array` containing the PCM data associated with the channel,
  /// defined by the channel parameter (with 0 representing the first channel).
  external JSFloat32Array getChannelData(int channel);

  /// The
  /// **`copyFromChannel()`** method of the
  /// [AudioBuffer] interface copies the audio sample data from the specified
  /// channel of the `AudioBuffer` to a specified
  /// `Float32Array`.
  external void copyFromChannel(
    JSFloat32Array destination,
    int channelNumber, [
    int bufferOffset,
  ]);

  /// The `copyToChannel()` method of the [AudioBuffer] interface copies
  /// the samples to the specified channel of the `AudioBuffer`, from the source
  /// array.
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
  /// The `connect()` method of the [AudioNode] interface lets
  /// you connect one of the node's outputs to a target, which may be either
  /// another
  /// `AudioNode` (thereby directing the sound data to the specified node) or an
  /// [AudioParam], so that the node's output data is automatically used to
  /// change the value of that parameter over time.
  external AudioNode? connect(
    JSObject destinationNodeOrDestinationParam, [
    int output,
    int input,
  ]);

  /// The **`disconnect()`** method of the [AudioNode] interface lets you
  /// disconnect one or more nodes from the node on which the method is called.
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
  /// The `setValueAtTime()` method of the
  /// [AudioParam] interface schedules an instant change to the
  /// `AudioParam` value at a precise time, as measured against
  /// [BaseAudioContext/currentTime]. The new value is given in the value
  /// parameter.
  external AudioParam setValueAtTime(
    num value,
    num startTime,
  );

  /// The `linearRampToValueAtTime()` method of the [AudioParam]
  /// Interface schedules a gradual linear change in the value of the
  /// `AudioParam`. The change starts at the time specified for the
  /// _previous_ event, follows a linear ramp to the new value given in the
  /// `value` parameter, and reaches the new value at the time given in the
  /// `endTime` parameter.
  external AudioParam linearRampToValueAtTime(
    num value,
    num endTime,
  );

  /// The **`exponentialRampToValueAtTime()`** method of the [AudioParam]
  /// Interface schedules a gradual exponential change in the value
  /// of the [AudioParam]. The change starts at the time specified for the
  /// _previous_ event, follows an exponential ramp to the new value given in
  /// the
  /// `value` parameter, and reaches the new value at the time given in the
  /// `endTime` parameter.
  ///
  /// > **Note:** Exponential ramps are considered more useful when changing
  /// > frequencies or playback rates than linear ramps because of the way the
  /// > human ear
  /// > works.
  external AudioParam exponentialRampToValueAtTime(
    num value,
    num endTime,
  );

  /// The `setTargetAtTime()` method of the
  /// [AudioParam] interface schedules the start of a gradual change to the
  /// `AudioParam` value. This is useful for decay or release portions of ADSR
  /// envelopes.
  external AudioParam setTargetAtTime(
    num target,
    num startTime,
    num timeConstant,
  );

  /// The
  /// **`setValueCurveAtTime()`** method of the
  /// [AudioParam] interface schedules the parameter's value to change
  /// following a curve defined by a list of values.
  ///
  /// The curve is a linear
  /// interpolation between the sequence of values defined in an array of
  /// floating-point
  /// values, which are scaled to fit into the given interval starting at
  /// `startTime` and a specific duration.
  external AudioParam setValueCurveAtTime(
    JSArray values,
    num startTime,
    num duration,
  );

  /// The `cancelScheduledValues()` method of the [AudioParam]
  /// Interface cancels all scheduled future changes to the `AudioParam`.
  external AudioParam cancelScheduledValues(num cancelTime);

  /// The **`cancelAndHoldAtTime()`** method of the
  /// [AudioParam] interface cancels all scheduled future changes to the
  /// `AudioParam` but holds its value at a given time until further changes are
  /// made using other methods.
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
  /// The `start()` method on
  /// [AudioScheduledSourceNode] schedules a sound to begin playback at the
  /// specified time. If no time is specified, then the sound begins playing
  /// immediately.
  external void start([num when]);

  /// The `stop()` method on [AudioScheduledSourceNode] schedules a
  /// sound to cease playback at the specified time. If no time is specified,
  /// then the sound
  /// stops playing immediately.
  ///
  /// Each time you call `stop()` on the same node, the specified time replaces
  /// any previously-scheduled stop time that hasn't occurred yet. If the node
  /// has already
  /// stopped, this method has no effect.
  ///
  /// > **Note:** If a scheduled stop time occurs before the node's scheduled
  /// > start time, the node never starts to play.
  external void stop([num when]);
  external set onended(EventHandler value);
  external EventHandler get onended;
}
extension type AnalyserNode._(JSObject _) implements AudioNode, JSObject {
  external factory AnalyserNode(
    BaseAudioContext context, [
    AnalyserOptions options,
  ]);

  /// The **`getFloatFrequencyData()`** method of the [AnalyserNode] Interface
  /// copies the current frequency data into a `Float32Array` array passed into
  /// it. Each array value is a _sample_, the magnitude of the signal at a
  /// particular time.
  ///
  /// Each item in the array represents the decibel value for a specific
  /// frequency. The frequencies are spread linearly from 0 to 1/2 of the sample
  /// rate. For example, for a `48000` Hz sample rate, the last item of the
  /// array will represent the decibel value for `24000` Hz.
  ///
  /// If you need higher performance and don't care about precision, you can use
  /// [AnalyserNode.getByteFrequencyData] instead, which works on a
  /// `Uint8Array`.
  external void getFloatFrequencyData(JSFloat32Array array);

  /// The **`getByteFrequencyData()`** method of the [AnalyserNode] interface
  /// copies the current frequency data into a `Uint8Array` (unsigned byte
  /// array) passed into it.
  ///
  /// The frequency data is composed of integers on a scale from 0 to 255.
  ///
  /// Each item in the array represents the decibel value for a specific
  /// frequency. The frequencies are spread linearly from 0 to 1/2 of the sample
  /// rate. For example, for `48000` sample rate, the last item of the array
  /// will represent the decibel value for `24000` Hz.
  ///
  /// If the array has fewer elements than the [AnalyserNode.frequencyBinCount],
  /// excess elements are dropped. If it has more elements than needed, excess
  /// elements are ignored.
  external void getByteFrequencyData(JSUint8Array array);

  /// The **`getFloatTimeDomainData()`** method of the [AnalyserNode] Interface
  /// copies the current waveform, or time-domain, data into a `Float32Array`
  /// array passed into it. Each array value is a _sample_, the magnitude of the
  /// signal at a particular time.
  external void getFloatTimeDomainData(JSFloat32Array array);

  /// The **`getByteTimeDomainData()`** method of the [AnalyserNode] Interface
  /// copies the current waveform, or time-domain, data into a `Uint8Array`
  /// (unsigned byte array) passed into it.
  ///
  /// If the array has fewer elements than the [AnalyserNode.fftSize], excess
  /// elements are dropped. If it has more elements than needed, excess elements
  /// are ignored.
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

  /// The `start()` method of the [AudioBufferSourceNode]
  /// Interface is used to schedule playback of the audio data contained in the
  /// buffer, or
  /// to begin playback immediately.
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
  /// The `setPosition()` method of the [AudioListener] Interface defines the
  /// position of the listener.
  ///
  /// The three parameters `x`, `y` and `z` are unitless and describe the
  /// listener's position in 3D space according to the right-hand Cartesian
  /// coordinate system. [PannerNode] objects use this position relative to
  /// individual audio sources for spatialization.
  ///
  /// The default value of the position vector is `(0, 0, 0)`.
  ///
  /// > **Note:** As this method is deprecated, use the three
  /// > [AudioListener.positionX], [AudioListener.positionY], and
  /// > [AudioListener.positionZ] properties instead.
  external void setPosition(
    num x,
    num y,
    num z,
  );

  /// The `setOrientation()` method of the [AudioListener] interface defines the
  /// orientation of the listener.
  ///
  /// It consists of two direction vectors:
  ///
  /// - The _front vector_, defined by the three unitless parameters `x`, `y`
  ///   and `z`, describes the direction of the face of the listener, that is
  ///   the direction the nose of the person is pointing towards. The front
  ///   vector's default value is `(0, 0, -1)`.
  /// - The _up vector_, defined by three unitless parameters `xUp`, `yUp` and
  ///   `zUp`, describes the direction of the top of the listener's head. The up
  ///   vector's default value is `(0, 1, 0)`.
  ///
  /// The two vectors must be separated by an angle of 90° — in linear analysis
  /// terms, they must be perpendicular to each other.
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

  /// The `getFrequencyResponse()` method of the [BiquadFilterNode] interface
  /// takes the current filtering algorithm's settings and calculates the
  /// frequency response for frequencies specified in a specified array of
  /// frequencies.
  ///
  /// The two output arrays, `magResponseOutput` and
  /// `phaseResponseOutput`, must be created before calling this method; they
  /// must be the same size as the array of input frequency values
  /// (`frequencyArray`).
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

  /// The `getFrequencyResponse()` method of the [IIRFilterNode]
  /// interface takes the current filtering algorithm's settings and calculates
  /// the
  /// frequency response for frequencies specified in a specified array of
  /// frequencies.
  ///
  /// The two output arrays, `magResponseOutput` and
  /// `phaseResponseOutput`, must be created before calling this method; they
  /// must be the same size as the array of input frequency values
  /// (`frequencyArray`).
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

  /// The **`setPeriodicWave()`** method of the [OscillatorNode] interface is
  /// used to point to a [PeriodicWave]
  /// defining a periodic waveform that can be used to shape the oscillator's
  /// output, when
  /// [OscillatorNode.type] is `custom`.
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

  /// > **Note:** The suggested replacement for this deprecated method is to
  /// > instead set the
  /// > [`positionX`](https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/positionX),
  /// > [`positionY`](https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/positionY),
  /// > and
  /// > [`positionZ`](https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/positionZ)
  /// > attributes directly.
  ///
  /// The `setPosition()` method of the [PannerNode] Interface defines the
  /// position of the audio source relative to the listener (represented by an
  /// [AudioListener] object stored in the [BaseAudioContext.listener]
  /// attribute.) The three parameters `x`, `y` and `z` are unitless and
  /// describe the source's position in 3D space using the right-hand Cartesian
  /// coordinate system.
  ///
  /// The `setPosition()` method's default value of the position is `(0, 0, 0)`.
  external void setPosition(
    num x,
    num y,
    num z,
  );

  /// > **Note:** The suggested replacement for this deprecated method is to
  /// > instead set the
  /// > [`orientationX`](https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/orientationX),
  /// > [`orientationY`](https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/orientationY),
  /// > and
  /// > [`orientationZ`](https://developer.mozilla.org/en-US/docs/Web/API/PannerNode/orientationZ)
  /// > attributes directly.
  ///
  /// The `setOrientation()` method of the [PannerNode] Interface defines the
  /// direction the audio source is playing in.
  ///
  /// This can have a big effect if the sound is very directional — controlled
  /// by the three cone-related attributes [PannerNode.coneInnerAngle],
  /// [PannerNode.coneOuterAngle], and [PannerNode.coneOuterGain]. In such a
  /// case, a sound pointing away from the listener can be very quiet or even
  /// silent.
  ///
  /// The three parameters `x`, `y` and `z` are unitless and describe a
  /// direction vector in 3D space using the right-hand Cartesian coordinate
  /// system. The default value of the direction vector is `(1, 0, 0)`.
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
  /// The **`registerProcessor`** method of the
  /// [AudioWorkletGlobalScope] interface registers a class constructor derived
  /// from [AudioWorkletProcessor] interface under a specified _name_.
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
