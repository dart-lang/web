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
import 'html.dart';

typedef SpeechRecognitionErrorCode = String;
typedef SpeechSynthesisErrorCode = String;

/// The **`SpeechRecognition`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// is the controller interface for the recognition service; this also handles
/// the [SpeechRecognitionEvent] sent from the recognition service.
///
/// > **Note:** On some browsers, like Chrome, using Speech Recognition on a web
/// > page involves a server-based recognition engine. Your audio is sent to a
/// > web service for recognition processing, so it won't work offline.
@JS('SpeechRecognition')
@staticInterop
class SpeechRecognition implements EventTarget {
  external factory SpeechRecognition();
}

extension SpeechRecognitionExtension on SpeechRecognition {
  /// The **`start()`** method of the
  /// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
  /// starts the speech
  /// recognition service listening to incoming audio with intent to recognize
  /// grammars
  /// associated with the current [SpeechRecognition].
  external void start();

  /// The **`stop()`** method of the
  /// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
  /// stops the speech
  /// recognition service from listening to incoming audio, and attempts to
  /// return a
  /// [SpeechRecognitionResult] using the audio captured so far.
  external void stop();

  /// The **`abort()`** method of the
  /// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
  /// stops the speech
  /// recognition service from listening to incoming audio, and doesn't attempt
  /// to return a
  /// [SpeechRecognitionResult].
  external void abort();
  external set grammars(SpeechGrammarList value);
  external SpeechGrammarList get grammars;
  external set lang(String value);
  external String get lang;
  external set continuous(bool value);
  external bool get continuous;
  external set interimResults(bool value);
  external bool get interimResults;
  external set maxAlternatives(int value);
  external int get maxAlternatives;
  external set onaudiostart(EventHandler value);
  external EventHandler get onaudiostart;
  external set onsoundstart(EventHandler value);
  external EventHandler get onsoundstart;
  external set onspeechstart(EventHandler value);
  external EventHandler get onspeechstart;
  external set onspeechend(EventHandler value);
  external EventHandler get onspeechend;
  external set onsoundend(EventHandler value);
  external EventHandler get onsoundend;
  external set onaudioend(EventHandler value);
  external EventHandler get onaudioend;
  external set onresult(EventHandler value);
  external EventHandler get onresult;
  external set onnomatch(EventHandler value);
  external EventHandler get onnomatch;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onstart(EventHandler value);
  external EventHandler get onstart;
  external set onend(EventHandler value);
  external EventHandler get onend;
}

/// The **`SpeechRecognitionErrorEvent`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents error messages from the recognition service.
@JS('SpeechRecognitionErrorEvent')
@staticInterop
class SpeechRecognitionErrorEvent implements Event {
  external factory SpeechRecognitionErrorEvent(
    String type,
    SpeechRecognitionErrorEventInit eventInitDict,
  );
}

extension SpeechRecognitionErrorEventExtension on SpeechRecognitionErrorEvent {
  external SpeechRecognitionErrorCode get error;
  external String get message;
}

@JS()
@staticInterop
@anonymous
class SpeechRecognitionErrorEventInit implements EventInit {
  external factory SpeechRecognitionErrorEventInit({
    required SpeechRecognitionErrorCode error,
    String message,
  });
}

extension SpeechRecognitionErrorEventInitExtension
    on SpeechRecognitionErrorEventInit {
  external set error(SpeechRecognitionErrorCode value);
  external SpeechRecognitionErrorCode get error;
  external set message(String value);
  external String get message;
}

/// The **`SpeechRecognitionAlternative`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a single word that has been recognized by the speech recognition
/// service.
@JS('SpeechRecognitionAlternative')
@staticInterop
class SpeechRecognitionAlternative {}

extension SpeechRecognitionAlternativeExtension
    on SpeechRecognitionAlternative {
  external String get transcript;
  external num get confidence;
}

/// The **`SpeechRecognitionResult`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a single recognition match, which may contain multiple
/// [SpeechRecognitionAlternative] objects.
@JS('SpeechRecognitionResult')
@staticInterop
class SpeechRecognitionResult {}

extension SpeechRecognitionResultExtension on SpeechRecognitionResult {
  /// The **`item`** getter of the
  /// [SpeechRecognitionResult] interface is a standard getter that allows
  /// [SpeechRecognitionAlternative] objects within the result to be accessed
  /// via
  /// array syntax.
  external SpeechRecognitionAlternative item(int index);
  external int get length;
  external bool get isFinal;
}

/// The **`SpeechRecognitionResultList`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a list of [SpeechRecognitionResult] objects, or a single one if
/// results are being captured in  mode.
@JS('SpeechRecognitionResultList')
@staticInterop
class SpeechRecognitionResultList {}

extension SpeechRecognitionResultListExtension on SpeechRecognitionResultList {
  /// The **`item`** getter of the
  /// [SpeechRecognitionResultList] interface is a standard getter — it allows
  /// [SpeechRecognitionResult] objects in the list to be accessed via array
  /// syntax.
  external SpeechRecognitionResult item(int index);
  external int get length;
}

/// The **`SpeechRecognitionEvent`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents the event object for the [SpeechRecognition.result_event] and
/// [SpeechRecognition.nomatch_event] events, and contains all the data
/// associated with an interim or final speech recognition result.
@JS('SpeechRecognitionEvent')
@staticInterop
class SpeechRecognitionEvent implements Event {
  external factory SpeechRecognitionEvent(
    String type,
    SpeechRecognitionEventInit eventInitDict,
  );
}

extension SpeechRecognitionEventExtension on SpeechRecognitionEvent {
  external int get resultIndex;
  external SpeechRecognitionResultList get results;
}

@JS()
@staticInterop
@anonymous
class SpeechRecognitionEventInit implements EventInit {
  external factory SpeechRecognitionEventInit({
    int resultIndex,
    required SpeechRecognitionResultList results,
  });
}

extension SpeechRecognitionEventInitExtension on SpeechRecognitionEventInit {
  external set resultIndex(int value);
  external int get resultIndex;
  external set results(SpeechRecognitionResultList value);
  external SpeechRecognitionResultList get results;
}

/// The **`SpeechGrammar`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a set of words or patterns of words that we want the recognition
/// service to recognize.
///
/// Grammar is defined using
/// [JSpeech Grammar Format](https://www.w3.org/TR/jsgf/) (**JSGF**.) Other
/// formats may also be supported in the future.
@JS('SpeechGrammar')
@staticInterop
class SpeechGrammar {}

extension SpeechGrammarExtension on SpeechGrammar {
  external set src(String value);
  external String get src;
  external set weight(num value);
  external num get weight;
}

/// The **`SpeechGrammarList`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a list of [SpeechGrammar] objects containing words or patterns of
/// words that we want the recognition service to recognize.
///
/// Grammar is defined using
/// [JSpeech Grammar Format](https://www.w3.org/TR/jsgf/) (**JSGF**.) Other
/// formats may also be supported in the future.
@JS('SpeechGrammarList')
@staticInterop
class SpeechGrammarList {
  external factory SpeechGrammarList();
}

extension SpeechGrammarListExtension on SpeechGrammarList {
  /// The **`item`** getter of the [SpeechGrammarList]
  /// interface is a standard getter — it allows individual [SpeechGrammar]
  /// objects to be retrieved from the `SpeechGrammarList` using array syntax.
  external SpeechGrammar item(int index);

  /// The **`addFromURI()`** method of the
  /// [SpeechGrammarList] interface takes a grammar present at a specific URI
  /// and
  /// adds it to the `SpeechGrammarList` as a new [SpeechGrammar]
  /// object.
  ///
  /// Note that some speech recognition services may support built-in grammars
  /// that can be
  /// specified by URI.
  external void addFromURI(
    String src, [
    num weight,
  ]);

  /// The **`addFromString()`** method of the
  /// [SpeechGrammarList] interface takes a grammar present in a specific
  /// string within the code base (e.g. stored in a variable) and adds it to
  /// the `SpeechGrammarList` as a new [SpeechGrammar] object.
  external void addFromString(
    String string, [
    num weight,
  ]);
  external int get length;
}

/// The **`SpeechSynthesis`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// is the controller interface for the speech service; this can be used to
/// retrieve information about the synthesis voices available on the device,
/// start and pause speech, and other commands besides.
@JS('SpeechSynthesis')
@staticInterop
class SpeechSynthesis implements EventTarget {}

extension SpeechSynthesisExtension on SpeechSynthesis {
  /// The **`speak()`** method of the [SpeechSynthesis]
  /// interface adds an [SpeechSynthesisUtterance] to the utterance
  /// queue; it will be spoken when any other utterances queued before it have
  /// been spoken.
  external void speak(SpeechSynthesisUtterance utterance);

  /// The **`cancel()`** method of the [SpeechSynthesis]
  /// interface removes all utterances from the utterance queue.
  ///
  /// If an utterance is currently being spoken, speaking will stop immediately.
  external void cancel();

  /// The **`pause()`** method of the [SpeechSynthesis]
  /// interface puts the `SpeechSynthesis` object into a paused state.
  external void pause();

  /// The **`resume()`** method of the [SpeechSynthesis]
  /// interface puts the `SpeechSynthesis` object into a non-paused state:
  /// resumes it if it was already paused.
  external void resume();

  /// The **`getVoices()`** method of the
  /// [SpeechSynthesis] interface returns a list of
  /// [SpeechSynthesisVoice] objects representing all the available voices on
  /// the
  /// current device.
  external JSArray getVoices();
  external bool get pending;
  external bool get speaking;
  external bool get paused;
  external set onvoiceschanged(EventHandler value);
  external EventHandler get onvoiceschanged;
}

/// The **`SpeechSynthesisUtterance`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a speech request.
/// It contains the content the speech service should read and information about
/// how to read it (e.g. language, pitch and volume.)
@JS('SpeechSynthesisUtterance')
@staticInterop
class SpeechSynthesisUtterance implements EventTarget {
  external factory SpeechSynthesisUtterance([String text]);
}

extension SpeechSynthesisUtteranceExtension on SpeechSynthesisUtterance {
  external set text(String value);
  external String get text;
  external set lang(String value);
  external String get lang;
  external set voice(SpeechSynthesisVoice? value);
  external SpeechSynthesisVoice? get voice;
  external set volume(num value);
  external num get volume;
  external set rate(num value);
  external num get rate;
  external set pitch(num value);
  external num get pitch;
  external set onstart(EventHandler value);
  external EventHandler get onstart;
  external set onend(EventHandler value);
  external EventHandler get onend;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onpause(EventHandler value);
  external EventHandler get onpause;
  external set onresume(EventHandler value);
  external EventHandler get onresume;
  external set onmark(EventHandler value);
  external EventHandler get onmark;
  external set onboundary(EventHandler value);
  external EventHandler get onboundary;
}

/// The **`SpeechSynthesisEvent`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// contains information about the current state of [SpeechSynthesisUtterance]
/// objects that have been processed in the speech service.
@JS('SpeechSynthesisEvent')
@staticInterop
class SpeechSynthesisEvent implements Event {
  external factory SpeechSynthesisEvent(
    String type,
    SpeechSynthesisEventInit eventInitDict,
  );
}

extension SpeechSynthesisEventExtension on SpeechSynthesisEvent {
  external SpeechSynthesisUtterance get utterance;
  external int get charIndex;
  external int get charLength;
  external num get elapsedTime;
  external String get name;
}

@JS()
@staticInterop
@anonymous
class SpeechSynthesisEventInit implements EventInit {
  external factory SpeechSynthesisEventInit({
    required SpeechSynthesisUtterance utterance,
    int charIndex,
    int charLength,
    num elapsedTime,
    String name,
  });
}

extension SpeechSynthesisEventInitExtension on SpeechSynthesisEventInit {
  external set utterance(SpeechSynthesisUtterance value);
  external SpeechSynthesisUtterance get utterance;
  external set charIndex(int value);
  external int get charIndex;
  external set charLength(int value);
  external int get charLength;
  external set elapsedTime(num value);
  external num get elapsedTime;
  external set name(String value);
  external String get name;
}

/// The **`SpeechSynthesisErrorEvent`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// contains information about any errors that occur while processing
/// [SpeechSynthesisUtterance] objects in the speech service.
@JS('SpeechSynthesisErrorEvent')
@staticInterop
class SpeechSynthesisErrorEvent implements SpeechSynthesisEvent {
  external factory SpeechSynthesisErrorEvent(
    String type,
    SpeechSynthesisErrorEventInit eventInitDict,
  );
}

extension SpeechSynthesisErrorEventExtension on SpeechSynthesisErrorEvent {
  external SpeechSynthesisErrorCode get error;
}

@JS()
@staticInterop
@anonymous
class SpeechSynthesisErrorEventInit implements SpeechSynthesisEventInit {
  external factory SpeechSynthesisErrorEventInit(
      {required SpeechSynthesisErrorCode error});
}

extension SpeechSynthesisErrorEventInitExtension
    on SpeechSynthesisErrorEventInit {
  external set error(SpeechSynthesisErrorCode value);
  external SpeechSynthesisErrorCode get error;
}

/// The **`SpeechSynthesisVoice`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a voice that the system supports.
/// Every `SpeechSynthesisVoice` has its own relative speech service including
/// information about language, name and URI.
@JS('SpeechSynthesisVoice')
@staticInterop
class SpeechSynthesisVoice {}

extension SpeechSynthesisVoiceExtension on SpeechSynthesisVoice {
  external String get voiceURI;
  external String get name;
  external String get lang;
  external bool get localService;
  @JS('default')
  external bool get default_;
}
