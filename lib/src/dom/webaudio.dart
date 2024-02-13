// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

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

/// The `BaseAudioContext` interface of the
/// [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
/// acts as a base definition for online and offline audio-processing graphs, as
/// represented by [AudioContext] and [OfflineAudioContext] respectively. You
/// wouldn't use `BaseAudioContext` directly — you'd use its features via one of
/// these two inheriting interfaces.
///
/// A `BaseAudioContext` can be a target of events, therefore it implements the
/// [EventTarget] interface.
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
    JSArray<JSNumber> feedforward,
    JSArray<JSNumber> feedback,
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
    JSArray<JSNumber> real,
    JSArray<JSNumber> imag, [
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
  external JSPromise<AudioBuffer> decodeAudioData(
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

/// The `AudioContext` interface represents an audio-processing graph built from
/// audio modules linked together, each represented by an [AudioNode].
///
/// An audio context controls both the creation of the nodes it contains and the
/// execution of the audio processing, or decoding. You need to create an
/// `AudioContext` before you do anything else, as everything happens inside a
/// context. It's recommended to create one AudioContext and reuse it instead of
/// initializing a new one each time, and it's OK to use a single `AudioContext`
/// for several different audio sources and pipeline concurrently.
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
  external JSPromise<JSAny?> resume();

  /// The `suspend()` method of the [AudioContext] Interface suspends the
  /// progression of time in the audio context, temporarily halting audio
  /// hardware access and reducing CPU/battery usage in the process — this is
  /// useful if you want an application to power down the audio hardware when it
  /// will not be using an audio context for a while.
  ///
  /// This method will cause an `INVALID_STATE_ERR` exception to be thrown if
  /// called on an [OfflineAudioContext].
  external JSPromise<JSAny?> suspend();

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
  external JSPromise<JSAny?> close();

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
  external JSPromise<JSAny?> setSinkId(JSAny sinkId);

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

/// The **`AudioSinkInfo`** interface of the [Web Audio API] represents
/// information describing an [AudioContext]'s sink ID, retrieved via
/// [AudioContext.sinkId].
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

/// The `OfflineAudioContext` interface is an [AudioContext] interface
/// representing an audio-processing graph built from linked together
/// [AudioNode]s. In contrast with a standard [AudioContext], an
/// `OfflineAudioContext` doesn't render the audio to the device hardware;
/// instead, it generates it, as fast as it can, and outputs the result to an
/// [AudioBuffer].
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
  external JSPromise<AudioBuffer> startRendering();

  /// The **`resume()`** method of the
  /// [OfflineAudioContext] interface resumes the progression of time in an
  /// audio
  /// context that has been suspended. The promise resolves immediately because
  /// the
  /// `OfflineAudioContext` does not require the audio hardware.
  external JSPromise<JSAny?> resume();

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
  external JSPromise<JSAny?> suspend(num suspendTime);
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

/// The
/// [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
/// `OfflineAudioCompletionEvent` interface represents events that occur when
/// the processing of an [OfflineAudioContext] is terminated. The
/// [OfflineAudioContext/complete_event] event uses this interface.
///
/// > **Note:** This interface is marked as deprecated; it is still supported
/// > for legacy reasons, but it will soon be superseded when the promise
/// > version of [OfflineAudioContext.startRendering] is supported in browsers,
/// > which will no longer need it.
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

/// The **`AudioBuffer`** interface represents a short audio asset residing in
/// memory, created from an audio file using the
/// [BaseAudioContext/decodeAudioData] method, or from raw data using
/// [BaseAudioContext/createBuffer]. Once put into an AudioBuffer, the audio can
/// then be played by being passed into an [AudioBufferSourceNode].
///
/// Objects of these types are designed to hold small audio snippets, typically
/// less than 45 s. For longer sounds, objects implementing the
/// [MediaElementAudioSourceNode] are more suitable. The buffer contains the
/// audio signal waveform encoded as a series of amplitudes in the following
/// format: non-interleaved IEEE754 32-bit linear PCM with a nominal range
/// between `-1` and `+1`, that is, a 32-bit floating point buffer, with each
/// sample between -1.0 and 1.0. If the [AudioBuffer] has multiple channels,
/// they are stored in separate buffers.
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

/// The **`AudioNode`** interface is a generic interface for representing an
/// audio processing module.
///
/// Examples include:
///
/// - an audio source (e.g. an HTML `audio` or `video` element, an
///   [OscillatorNode], etc.),
/// - the audio destination,
/// - intermediate processing module (e.g. a filter like [BiquadFilterNode] or
///   [ConvolverNode]), or
/// - volume control (like [GainNode])
///
/// > **Note:** An `AudioNode` can be target of events, therefore it implements
/// > the [EventTarget] interface.
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

/// The Web Audio API's `AudioParam` interface represents an audio-related
/// parameter, usually a parameter of an [AudioNode] (such as [GainNode.gain]).
///
/// An `AudioParam` can be set to a specific value or a change in value, and can
/// be scheduled to happen at a specific time and following a specific pattern.
///
/// Each `AudioParam` has a list of events, initially empty, that define when
/// and how values change. When this list is not empty, changes using the
/// `AudioParam.value` attributes are ignored. This list of events allows us to
/// schedule changes that have to happen at very precise times, using arbitrary
/// timeline-based automation curves. The time used is the one defined in
/// [BaseAudioContext/currentTime].
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
    JSArray<JSNumber> values,
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

/// The `AudioScheduledSourceNode` interface—part of the Web Audio API—is a
/// parent interface for several types of audio source node interfaces which
/// share the ability to be started and stopped, optionally at specified times.
/// Specifically, this interface defines the [AudioScheduledSourceNode.start]
/// and [AudioScheduledSourceNode.stop] methods, as well as the
/// [AudioScheduledSourceNode.ended_event] event.
///
/// > **Note:** You can't create an `AudioScheduledSourceNode` object directly.
/// > Instead, use an interface which extends it, such as
/// > [AudioBufferSourceNode], [OscillatorNode] or [ConstantSourceNode].
///
/// Unless stated otherwise, nodes based upon `AudioScheduledSourceNode` output
/// silence when not playing (that is, before `start()` is called and after
/// `stop()` is called). Silence is represented, as always, by a stream of
/// samples with the value zero (0).
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

/// The **`AnalyserNode`** interface represents a node able to provide real-time
/// frequency and time-domain analysis information. It is an [AudioNode] that
/// passes the audio stream unchanged from the input to the output, but allows
/// you to take the generated data, process it, and create audio visualizations.
///
/// An `AnalyserNode` has exactly one input and one output. The node works even
/// if the output is not connected.
///
/// ![Without modifying the audio stream, the node allows to get the frequency
/// and time-domain data associated to it, using a FFT.](fttaudiodata_en.svg)
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code> (but may be left unconnected)</td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"max"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
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

/// The **`AudioBufferSourceNode`** interface is an [AudioScheduledSourceNode]
/// which represents an audio source consisting of in-memory audio data, stored
/// in an [AudioBuffer].
///
/// This interface is especially useful for playing back audio which has
/// particularly stringent timing accuracy requirements, such as for sounds that
/// must match a specific rhythm and can be kept in memory rather than being
/// played from disk or the network. To play sounds which require accurate
/// timing but must be streamed from the network or played from disk, use a
/// [AudioWorkletNode] to implement its playback.
///
/// An `AudioBufferSourceNode` has no inputs and exactly one output, which has
/// the same number of channels as the `AudioBuffer` indicated by its
/// [AudioBufferSourceNode.buffer] property. If there's no buffer set—that is,
/// if `buffer` is `null`—the output contains a single channel of silence (every
/// sample is 0).
///
/// An `AudioBufferSourceNode` can only be played once; after each call to
/// [AudioBufferSourceNode.start], you have to create a new node if you want to
/// play the same sound again. Fortunately, these nodes are very inexpensive to
/// create, and the actual `AudioBuffer`s can be reused for multiple plays of
/// the sound. Indeed, you can use these nodes in a "fire and forget" manner:
/// create the node, call `start()` to begin playing the sound, and don't even
/// bother to hold a reference to it. It will automatically be garbage-collected
/// at an appropriate time, which won't be until sometime after the sound has
/// finished playing.
///
/// Multiple calls to [AudioScheduledSourceNode/stop] are allowed. The most
/// recent call replaces the previous one, if the `AudioBufferSourceNode` has
/// not already reached the end of the buffer.
///
/// ![The AudioBufferSourceNode takes the content of an AudioBuffer and m](webaudioaudiobuffersourcenode.png)
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>0</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td>defined by the associated [AudioBuffer]</td>
///     </tr>
///   </tbody>
/// </table>
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

/// The `AudioDestinationNode` interface represents the end destination of an
/// audio graph in a given context — usually the speakers of your device. It can
/// also be the node that will "record" the audio data when used with an
/// `OfflineAudioContext`.
///
/// `AudioDestinationNode` has no output (as it _is_ the output, no more
/// `AudioNode` can be linked after it in the audio graph) and one input. The
/// number of channels in the input must be between `0` and the
/// `maxChannelCount` value or an exception is raised.
///
/// The `AudioDestinationNode` of a given `AudioContext` can be retrieved using
/// the [BaseAudioContext/destination] property.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>0</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"explicit"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
extension type AudioDestinationNode._(JSObject _)
    implements AudioNode, JSObject {
  external int get maxChannelCount;
}

/// The `AudioListener` interface represents the position and orientation of the
/// unique person listening to the audio scene, and is used in
/// [audio spatialization](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API/Web_audio_spatialization_basics).
/// All [PannerNode]s spatialize in relation to the `AudioListener` stored in
/// the [BaseAudioContext.listener] attribute.
///
/// It is important to note that there is only one listener per context and that
/// it isn't an [AudioNode].
///
/// ![We see the position, up and front vectors of an AudioListener, with the up
/// and front vectors at 90° from the other.](webaudiolistenerreduced.png)
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

/// The `AudioProcessingEvent` interface of the
/// [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
/// represents events that occur when a [ScriptProcessorNode] input buffer is
/// ready to be processed.
///
/// An `audioprocess` event with this interface is fired on a
/// [ScriptProcessorNode] when audio processing is required. During audio
/// processing, the input buffer is read and processed to produce output audio
/// data, which is then written to the output buffer.
///
/// > **Warning:** This feature has been deprecated and should be replaced by an
/// > [`AudioWorklet`](https://developer.mozilla.org/en-US/docs/Web/API/AudioWorklet).
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

/// The `BiquadFilterNode` interface represents a simple low-order filter, and
/// is created using the [BaseAudioContext/createBiquadFilter] method. It is an
/// [AudioNode] that can represent different kinds of filters, tone control
/// devices, and graphic equalizers. A `BiquadFilterNode` always has exactly one
/// input and one output.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"max"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2</code> (not used in the default count mode)</td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
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

/// The `ChannelMergerNode` interface, often used in conjunction with its
/// opposite, [ChannelSplitterNode], reunites different mono inputs into a
/// single output. Each input is used to fill a channel of the output. This is
/// useful for accessing each channels separately, e.g. for performing channel
/// mixing where gain must be separately controlled on each channel.
///
/// ![Default channel merger node with six mono inputs combining to form a
/// single output.](webaudiomerger.png)
///
/// If `ChannelMergerNode` has one single output, but as many inputs as there
/// are channels to merge; the number of inputs is defined as a parameter of its
/// constructor and the call to [BaseAudioContext/createChannelMerger]. In the
/// case that no value is given, it will default to `6`.
///
/// Using a `ChannelMergerNode`, it is possible to create outputs with more
/// channels than the rendering hardware is able to process. In that case, when
/// the signal is sent to the [BaseAudioContext/listener] object, supernumerary
/// channels will be ignored.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td>variable; default to <code>6</code>.</td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"explicit"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2 </code>(not used in the default count mode)</td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
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

/// The `ChannelSplitterNode` interface, often used in conjunction with its
/// opposite, [ChannelMergerNode], separates the different channels of an audio
/// source into a set of mono outputs. This is useful for accessing each channel
/// separately, e.g. for performing channel mixing where gain must be separately
/// controlled on each channel.
///
/// ![Default channel splitter node with a single input splitting to form 6 mono
/// outputs.](webaudiosplitter.png)
///
/// If your `ChannelSplitterNode` always has one single input, the amount of
/// outputs is defined by a parameter on its constructor and the call to
/// [BaseAudioContext/createChannelSplitter]. In the case that no value is
/// given, it will default to `6`. If there are fewer channels in the input than
/// there are outputs, supernumerary outputs are silent.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td>variable; default to <code>6</code>.</td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td>
///         <code>"explicit"</code> Older implementations, as per earlier versions
/// of the spec use <code>"max"</code>.
///       </td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td>
/// Fixed to the number of outputs. Older implementations, as per earlier
/// versions of the spec use <code>2 </code>(not used in the default count
/// mode).
///       </td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"discrete"</code></td>
///     </tr>
///   </tbody>
/// </table>
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

/// The `ConstantSourceNode` interface—part of the Web Audio API—represents an
/// audio source (based upon [AudioScheduledSourceNode]) whose output is single
/// unchanging value. This makes it useful for cases in which you need a
/// constant value coming in from an audio source. In addition, it can be used
/// like a constructible [AudioParam] by automating the value of its
/// [ConstantSourceNode.offset] or by connecting another node to it; see
/// [Controlling multiple parameters with ConstantSourceNode](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API/Controlling_multiple_parameters_with_ConstantSourceNode).
///
/// A `ConstantSourceNode` has no inputs and exactly one monaural (one-channel)
/// output. The output's value is always the same as the value of the
/// [ConstantSourceNode.offset] parameter.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>0</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///   </tbody>
/// </table>
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

/// The `ConvolverNode` interface is an [AudioNode] that performs a Linear
/// Convolution on a given [AudioBuffer], often used to achieve a reverb effect.
/// A `ConvolverNode` always has exactly one input and one output.
///
/// > **Note:** For more information on the theory behind Linear Convolution,
/// > see the
/// > [Convolution article on Wikipedia](https://en.wikipedia.org/wiki/Convolution).
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"clamped-max"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>1</code>, <code>2</code>, or <code>4</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
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

/// The **`DelayNode`** interface represents a
/// [delay-line](https://en.wikipedia.org/wiki/Digital_delay_line); an
/// [AudioNode] audio-processing module that causes a delay between the arrival
/// of an input data and its propagation to the output.
///
/// A `DelayNode` always has exactly one input and one output, both with the
/// same amount of channels.
///
/// ![The DelayNode acts as a delay-line, here with a value of
/// 1s.](webaudiodelaynode.png)
///
/// When creating a graph that has a cycle, it is mandatory to have at least one
/// `DelayNode` in the cycle, or the nodes taking part in the cycle will be
/// muted.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"max"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2</code> (not used in the default count mode)</td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
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

/// The `DynamicsCompressorNode` interface provides a compression effect, which
/// lowers the volume of the loudest parts of the signal in order to help
/// prevent clipping and distortion that can occur when multiple sounds are
/// played and multiplexed together at once. This is often used in musical
/// production and game audio. `DynamicsCompressorNode` is an [AudioNode] that
/// has exactly one input and one output.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"clamped-max"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
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

/// The `GainNode` interface represents a change in volume. It is an [AudioNode]
/// audio-processing module that causes a given gain to be applied to the input
/// data before its propagation to the output. A `GainNode` always has exactly
/// one input and one output, both with the same number of channels.
///
/// The gain is a unitless value, changing with time, that is multiplied to each
/// corresponding sample of all input channels. If modified, the new gain is
/// instantly applied, causing unaesthetic 'clicks' in the resulting audio. To
/// prevent this from happening, never change the value directly but use the
/// exponential interpolation methods on the [AudioParam] interface.
///
/// ![The GainNode is increasing the gain of the output.](webaudiogainnode.png)
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"max"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2</code> (not used in the default count mode)</td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
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

/// The **`IIRFilterNode`** interface of the
/// [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
/// is a [AudioNode] processor which implements a general
/// **[infinite impulse response](https://en.wikipedia.org/wiki/Infinite_impulse_response)**
/// (IIR) filter; this type of filter can be used to implement tone control
/// devices and graphic equalizers as well. It lets the parameters of the filter
/// response be specified, so that it can be tuned as needed.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"max"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td>Same as on the input</td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
///
/// Typically, it's best to use the [BiquadFilterNode] interface to implement
/// higher-order filters. There are several reasons why:
///
/// - Biquad filters are typically less sensitive to numeric quirks.
/// - The filter parameters of biquad filters can be automated.
/// - All even-ordered IIR filters can be created using [BiquadFilterNode].
///
/// However, if you need to create an odd-ordered IIR filter, you'll need to use
/// `IIRFilterNode`. You may also find this interface useful if you don't need
/// automation, or for other reasons.
///
/// > **Note:** Once the node has been created, you can't change its
/// > coefficients.
///
/// `IIRFilterNode`s have a tail-time reference; they continue to output
/// non-silent audio with zero input. As an IIR filter, the non-zero input
/// continues forever, but this can be limited after some finite time in
/// practice, when the output has approached zero closely enough. The actual
/// time that takes depends on the filter coefficients provided.
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
    required JSArray<JSNumber> feedforward,
    required JSArray<JSNumber> feedback,
  });

  external set feedforward(JSArray<JSNumber> value);
  external JSArray<JSNumber> get feedforward;
  external set feedback(JSArray<JSNumber> value);
  external JSArray<JSNumber> get feedback;
}

/// The `MediaElementAudioSourceNode` interface represents an audio source
/// consisting of an HTML `audio` or `video` element. It is an [AudioNode] that
/// acts as an audio source.
///
/// A `MediaElementAudioSourceNode` has no inputs and exactly one output, and is
/// created using the [AudioContext.createMediaElementSource] method. The number
/// of channels in the output equals the number of channels of the audio
/// referenced by the [HTMLMediaElement] used in the creation of the node, or is
/// 1 if the [HTMLMediaElement] has no audio.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>0</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td>
/// 2 (but note that [AudioNode.channelCount] is only used for up-mixing and
/// down-mixing [AudioNode] inputs, and [MediaElementAudioSourceNode] doesn't
/// have any input)
///       </td>
///     </tr>
///   </tbody>
/// </table>
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

/// The `MediaStreamAudioDestinationNode` interface represents an audio
/// destination consisting of a
/// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// [MediaStream] with a single `AudioMediaStreamTrack`, which can be used in a
/// similar way to a `MediaStream` obtained from [MediaDevices.getUserMedia].
///
/// It is an [AudioNode] that acts as an audio destination, created using the
/// [AudioContext.createMediaStreamDestination] method.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>0</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"explicit"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
extension type MediaStreamAudioDestinationNode._(JSObject _)
    implements AudioNode, JSObject {
  external factory MediaStreamAudioDestinationNode(
    AudioContext context, [
    AudioNodeOptions options,
  ]);

  external MediaStream get stream;
}

/// The **`MediaStreamAudioSourceNode`** interface is a type of [AudioNode]
/// which operates as an audio source whose media is received from a
/// [MediaStream] obtained using the WebRTC or Media Capture and Streams APIs.
///
/// This media could be from a microphone (through [MediaDevices.getUserMedia])
/// or from a remote peer on a WebRTC call (using the [RTCPeerConnection]'s
/// audio tracks).
///
/// A `MediaStreamAudioSourceNode` has no inputs and exactly one output, and is
/// created using the [AudioContext.createMediaStreamSource] method.
///
/// The `MediaStreamAudioSourceNode` takes the audio from the _first_
/// [MediaStreamTrack] whose [MediaStreamTrack.kind] attribute's value is
/// `audio`. See [Track ordering](#track_ordering) for more information about
/// the order of tracks.
///
/// The number of channels output by the node matches the number of tracks found
/// in the selected audio track.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>0</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td>
/// 2 (but note that [AudioNode.channelCount] is only used for up-mixing and
/// down-mixing [AudioNode] inputs, and [MediaStreamAudioSourceNode] doesn't
/// have any input)
///       </td>
///     </tr>
///   </tbody>
/// </table>
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

/// The **`MediaStreamTrackAudioSourceNode`** interface is a type of [AudioNode]
/// which represents a source of audio data taken from a specific
/// [MediaStreamTrack] obtained through the
/// [WebRTC](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API) or
/// [Media Capture and Streams](https://developer.mozilla.org/en-US/docs/Web/API/Media_Capture_and_Streams_API)
/// APIs.
///
/// The audio itself might be input from a microphone or other audio sampling
/// device, or might be received through a [RTCPeerConnection], among other
/// possible options.
///
/// A `MediaStreamTrackAudioSourceNode` has no inputs and exactly one output,
/// and is created using the [AudioContext.createMediaStreamTrackSource] method.
/// This interface is similar to [MediaStreamAudioSourceNode], except it lets
/// you specifically state the track to use, rather than assuming the first
/// audio track on a stream.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>0</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td>
/// defined by the first audio [MediaStreamTrack]
/// passed to the
/// [AudioContext.createMediaStreamTrackSource]
/// method that created it.
///       </td>
///     </tr>
///   </tbody>
/// </table>
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

/// The **`OscillatorNode`** interface represents a periodic waveform, such as a
/// sine wave. It is an [AudioScheduledSourceNode] audio-processing module that
/// causes a specified frequency of a given wave to be created—in effect, a
/// constant tone.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>0</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>max</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2</code> (not used in the default count mode)</td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>speakers</code></td>
///     </tr>
///   </tbody>
/// </table>
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

/// The `PannerNode` interface defines an audio-processing object that
/// represents the location, direction, and behavior of an audio source signal
/// in a simulated physical space. This [AudioNode] uses right-hand Cartesian
/// coordinates to describe the source's _position_ as a vector and its
/// _orientation_ as a 3D directional cone.
///
/// A `PannerNode` always has exactly one input and one output: the input can be
/// _mono_ or _stereo_ but the output is always _stereo_ (2 channels); you can't
/// have panning effects without at least two audio channels!
///
/// ![The PannerNode defines a spatial position and direction for a given
/// signal.](webaudiopannernode.png)
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"clamped-max"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
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

/// The **`PeriodicWave`** interface defines a periodic waveform that can be
/// used to shape the output of an [OscillatorNode].
///
/// `PeriodicWave` has no inputs or outputs; it is used to define custom
/// oscillators when calling [OscillatorNode.setPeriodicWave]. The
/// `PeriodicWave` itself is created/returned by
/// [BaseAudioContext.createPeriodicWave].
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
    JSArray<JSNumber> real,
    JSArray<JSNumber> imag,
  });

  external set real(JSArray<JSNumber> value);
  external JSArray<JSNumber> get real;
  external set imag(JSArray<JSNumber> value);
  external JSArray<JSNumber> get imag;
}

/// The `ScriptProcessorNode` interface allows the generation, processing, or
/// analyzing of audio using JavaScript.
///
/// > **Note:** This feature was replaced by
/// > [AudioWorklets](https://developer.mozilla.org/en-US/docs/Web/API/AudioWorklet)
/// > and the [AudioWorkletNode] interface.
///
/// The `ScriptProcessorNode` interface is an [AudioNode] audio-processing
/// module that is linked to two buffers, one containing the input audio data,
/// one containing the processed output audio data. An event, implementing the
/// [AudioProcessingEvent] interface, is sent to the object each time the input
/// buffer contains new data, and the event handler terminates when it has
/// filled the output buffer with data.
///
/// ![The ScriptProcessorNode stores the input in a buffer, send the
/// audioprocess event. The EventHandler takes the input buffer and fill the
/// output buffer which is sent to the output by the
/// ScriptProcessorNode.](webaudioscriptprocessingnode.png)
///
/// The size of the input and output buffer are defined at the creation time,
/// when the [BaseAudioContext.createScriptProcessor] method is called (both are
/// defined by [BaseAudioContext.createScriptProcessor]'s `bufferSize`
/// parameter). The buffer size must be a power of 2 between `256` and `16384`,
/// that is `256`, `512`, `1024`, `2048`, `4096`, `8192` or `16384`. Small
/// numbers lower the _latency_, but large number may be necessary to avoid
/// audio breakup and glitches.
///
/// If the buffer size is not defined, which is recommended, the browser will
/// pick one that its heuristic deems appropriate.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"max"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2</code> (not used in the default count mode)</td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
extension type ScriptProcessorNode._(JSObject _)
    implements AudioNode, JSObject {
  external set onaudioprocess(EventHandler value);
  external EventHandler get onaudioprocess;
  external int get bufferSize;
}

/// The `StereoPannerNode` interface of the
/// [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
/// represents a simple stereo panner node that can be used to pan an audio
/// stream left or right. It is an [AudioNode] audio-processing module that
/// positions an incoming audio stream in a stereo image using a low-cost
/// equal-power
/// [panning algorithm](https://webaudio.github.io/web-audio-api/#panning-algorithm).
///
/// The [StereoPannerNode.pan] property takes a unitless value between `-1`
/// (full left pan) and `1` (full right pan). This interface was introduced as a
/// much simpler way to apply a simple panning effect than having to use a full
/// [PannerNode].
///
/// ![The Stereo Panner Node moved the sound's position from the center of two
/// speakers to the left.](stereopannernode.png)
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"clamped-max"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
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

/// The **`WaveShaperNode`** interface represents a non-linear distorter.
///
/// It is an [AudioNode] that uses a curve to apply a wave shaping distortion to
/// the signal. Beside obvious distortion effects, it is often used to add a
/// warm feeling to the signal.
///
/// A `WaveShaperNode` always has exactly one input and one output.
///
/// <table class="properties">
///   <tbody>
///     <tr>
///       <th scope="row">Number of inputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Number of outputs</th>
///       <td><code>1</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count mode</th>
///       <td><code>"max"</code></td>
///     </tr>
///     <tr>
///       <th scope="row">Channel count</th>
///       <td><code>2</code> (not used in the default count mode)</td>
///     </tr>
///     <tr>
///       <th scope="row">Channel interpretation</th>
///       <td><code>"speakers"</code></td>
///     </tr>
///   </tbody>
/// </table>
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
    JSArray<JSNumber> curve,
    OverSampleType oversample,
  });

  external set curve(JSArray<JSNumber> value);
  external JSArray<JSNumber> get curve;
  external set oversample(OverSampleType value);
  external OverSampleType get oversample;
}

/// The **`AudioWorklet`** interface of the
/// [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
/// is used to supply custom audio processing scripts that execute in a separate
/// thread to provide very low latency audio processing.
///
/// The worklet's code is run in the [AudioWorkletGlobalScope] global execution
/// context, using a separate Web Audio thread which is shared by the worklet
/// and other audio nodes.
///
/// Access the audio context's instance of `AudioWorklet` through the
/// [BaseAudioContext.audioWorklet] property.
extension type AudioWorklet._(JSObject _) implements Worklet, JSObject {
  external MessagePort get port;
}

/// The **`AudioWorkletGlobalScope`** interface of the
/// [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
/// represents a global execution context for user-supplied code, which defines
/// custom [AudioWorkletProcessor]-derived classes.
///
/// Each [BaseAudioContext] has a single [AudioWorklet] available under the
/// [BaseAudioContext.audioWorklet] property, which runs its code in a single
/// `AudioWorkletGlobalScope`.
///
/// As the global execution context is shared across the current
/// `BaseAudioContext`, it's possible to define any other variables and perform
/// any actions allowed in worklets — apart from defining
/// `AudioWorkletProcessor` derived classes.
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

/// The **`AudioParamMap`** interface of the
/// [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
/// represents an iterable and read-only set of multiple audio parameters.
///
/// An `AudioParamMap` instance is a read-only
/// [`Map`-like object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map#map-like_browser_apis),
/// in which each key is the name string for a parameter, and the corresponding
/// value is an [AudioParam] containing the value of that parameter.
extension type AudioParamMap._(JSObject _) implements JSObject {}

/// > **Note:** Although the interface is available outside
/// > [secure contexts](https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts),
/// > the [BaseAudioContext.audioWorklet] property is not, thus custom
/// > [AudioWorkletProcessor]s cannot be defined outside them.
///
/// The **`AudioWorkletNode`** interface of the
/// [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
/// represents a base class for a user-defined [AudioNode], which can be
/// connected to an audio routing graph along with other nodes. It has an
/// associated [AudioWorkletProcessor], which does the actual audio processing
/// in a Web Audio rendering thread.
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
    JSArray<JSNumber> outputChannelCount,
    JSObject parameterData,
    JSObject processorOptions,
  });

  external set numberOfInputs(int value);
  external int get numberOfInputs;
  external set numberOfOutputs(int value);
  external int get numberOfOutputs;
  external set outputChannelCount(JSArray<JSNumber> value);
  external JSArray<JSNumber> get outputChannelCount;
  external set parameterData(JSObject value);
  external JSObject get parameterData;
  external set processorOptions(JSObject value);
  external JSObject get processorOptions;
}

/// The **`AudioWorkletProcessor`** interface of the
/// [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
/// represents an audio processing code behind a custom [AudioWorkletNode]. It
/// lives in the [AudioWorkletGlobalScope] and runs on the Web Audio rendering
/// thread. In turn, an [AudioWorkletNode] based on it runs on the main thread.
extension type AudioWorkletProcessor._(JSObject _) implements JSObject {
  external factory AudioWorkletProcessor();

  external MessagePort get port;
}

/// The **`AudioParamDescriptor`** dictionary of the
/// [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API)
/// specifies properties for [AudioParam] objects.
///
/// It is used to create custom `AudioParam`s on an [AudioWorkletNode]. If the
/// underlying [AudioWorkletProcessor] has a
/// [AudioWorkletProcessor.parameterDescriptors] static getter, then the
/// returned array of objects based on this dictionary is used internally by
/// `AudioWorkletNode` constructor to populate its [AudioWorkletNode.parameters]
/// property accordingly.
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
