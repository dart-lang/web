// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef SpeechRecognitionErrorCode = String;
typedef SpeechSynthesisErrorCode = String;
extension type SpeechRecognition._(JSObject _)
    implements EventTarget, JSObject {
  external factory SpeechRecognition();

  external void start();
  external void stop();
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
  external SpeechRecognitionAlternative item(int index);
  external int get length;
  external bool get isFinal;
}
extension type SpeechRecognitionResultList._(JSObject _) implements JSObject {
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

  external SpeechGrammar item(int index);
  external void addFromURI(
    String src, [
    num weight,
  ]);
  external void addFromString(
    String string, [
    num weight,
  ]);
  external int get length;
}
extension type SpeechSynthesis._(JSObject _) implements EventTarget, JSObject {
  external void speak(SpeechSynthesisUtterance utterance);
  external void cancel();
  external void pause();
  external void resume();
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
