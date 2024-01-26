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
extension type SpeechRecognition._(JSObject _)
    implements EventTarget, JSObject {
  external factory SpeechRecognition();

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
extension type SpeechRecognitionErrorEvent._(JSObject _)
    implements Event, JSObject {
  external factory SpeechRecognitionErrorEvent(
    String type,
    SpeechRecognitionErrorEventInit eventInitDict,
  );

  external SpeechRecognitionErrorCode get error;
  external String get message;
}
extension type SpeechRecognitionErrorEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory SpeechRecognitionErrorEventInit({
    required SpeechRecognitionErrorCode error,
    String message,
  });

  external set error(SpeechRecognitionErrorCode value);
  external SpeechRecognitionErrorCode get error;
  external set message(String value);
  external String get message;
}
extension type SpeechRecognitionAlternative._(JSObject _) implements JSObject {
  external String get transcript;
  external num get confidence;
}
extension type SpeechRecognitionResult._(JSObject _) implements JSObject {
  /// The **`item`** getter of the
  /// [SpeechRecognitionResult] interface is a standard getter that allows
  /// [SpeechRecognitionAlternative] objects within the result to be accessed
  /// via
  /// array syntax.
  external SpeechRecognitionAlternative item(int index);
  external int get length;
  external bool get isFinal;
}
extension type SpeechRecognitionResultList._(JSObject _) implements JSObject {
  /// The **`item`** getter of the
  /// [SpeechRecognitionResultList] interface is a standard getter — it allows
  /// [SpeechRecognitionResult] objects in the list to be accessed via array
  /// syntax.
  external SpeechRecognitionResult item(int index);
  external int get length;
}
extension type SpeechRecognitionEvent._(JSObject _) implements Event, JSObject {
  external factory SpeechRecognitionEvent(
    String type,
    SpeechRecognitionEventInit eventInitDict,
  );

  external int get resultIndex;
  external SpeechRecognitionResultList get results;
}
extension type SpeechRecognitionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory SpeechRecognitionEventInit({
    int resultIndex,
    required SpeechRecognitionResultList results,
  });

  external set resultIndex(int value);
  external int get resultIndex;
  external set results(SpeechRecognitionResultList value);
  external SpeechRecognitionResultList get results;
}
extension type SpeechGrammar._(JSObject _) implements JSObject {
  external set src(String value);
  external String get src;
  external set weight(num value);
  external num get weight;
}
extension type SpeechGrammarList._(JSObject _) implements JSObject {
  external factory SpeechGrammarList();

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
extension type SpeechSynthesis._(JSObject _) implements EventTarget, JSObject {
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
extension type SpeechSynthesisUtterance._(JSObject _)
    implements EventTarget, JSObject {
  external factory SpeechSynthesisUtterance([String text]);

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
extension type SpeechSynthesisEvent._(JSObject _) implements Event, JSObject {
  external factory SpeechSynthesisEvent(
    String type,
    SpeechSynthesisEventInit eventInitDict,
  );

  external SpeechSynthesisUtterance get utterance;
  external int get charIndex;
  external int get charLength;
  external num get elapsedTime;
  external String get name;
}
extension type SpeechSynthesisEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory SpeechSynthesisEventInit({
    required SpeechSynthesisUtterance utterance,
    int charIndex,
    int charLength,
    num elapsedTime,
    String name,
  });

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
extension type SpeechSynthesisErrorEvent._(JSObject _)
    implements SpeechSynthesisEvent, JSObject {
  external factory SpeechSynthesisErrorEvent(
    String type,
    SpeechSynthesisErrorEventInit eventInitDict,
  );

  external SpeechSynthesisErrorCode get error;
}
extension type SpeechSynthesisErrorEventInit._(JSObject _)
    implements SpeechSynthesisEventInit, JSObject {
  external factory SpeechSynthesisErrorEventInit(
      {required SpeechSynthesisErrorCode error});

  external set error(SpeechSynthesisErrorCode value);
  external SpeechSynthesisErrorCode get error;
}
extension type SpeechSynthesisVoice._(JSObject _) implements JSObject {
  external String get voiceURI;
  external String get name;
  external String get lang;
  external bool get localService;
  @JS('default')
  external bool get default_;
}
