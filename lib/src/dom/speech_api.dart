// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef SpeechRecognitionErrorCode = JSString;
typedef SpeechSynthesisErrorCode = JSString;

@JS('SpeechRecognition')
@staticInterop
class SpeechRecognition implements EventTarget {
  external factory SpeechRecognition();
}

extension SpeechRecognitionExtension on SpeechRecognition {
  external JSVoid start();
  external JSVoid stop();
  external JSVoid abort();
  external set grammars(SpeechGrammarList value);
  external SpeechGrammarList get grammars;
  external set lang(JSString value);
  external JSString get lang;
  external set continuous(JSBoolean value);
  external JSBoolean get continuous;
  external set interimResults(JSBoolean value);
  external JSBoolean get interimResults;
  external set maxAlternatives(JSNumber value);
  external JSNumber get maxAlternatives;
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

@JS('SpeechRecognitionErrorEvent')
@staticInterop
class SpeechRecognitionErrorEvent implements Event {
  external factory SpeechRecognitionErrorEvent(
    JSString type,
    SpeechRecognitionErrorEventInit eventInitDict,
  );
}

extension SpeechRecognitionErrorEventExtension on SpeechRecognitionErrorEvent {
  external SpeechRecognitionErrorCode get error;
  external JSString get message;
}

@JS()
@staticInterop
@anonymous
class SpeechRecognitionErrorEventInit implements EventInit {
  external factory SpeechRecognitionErrorEventInit({
    required SpeechRecognitionErrorCode error,
    JSString message,
  });
}

extension SpeechRecognitionErrorEventInitExtension
    on SpeechRecognitionErrorEventInit {
  external set error(SpeechRecognitionErrorCode value);
  external SpeechRecognitionErrorCode get error;
  external set message(JSString value);
  external JSString get message;
}

@JS('SpeechRecognitionAlternative')
@staticInterop
class SpeechRecognitionAlternative {}

extension SpeechRecognitionAlternativeExtension
    on SpeechRecognitionAlternative {
  external JSString get transcript;
  external JSNumber get confidence;
}

@JS('SpeechRecognitionResult')
@staticInterop
class SpeechRecognitionResult {}

extension SpeechRecognitionResultExtension on SpeechRecognitionResult {
  external SpeechRecognitionAlternative item(JSNumber index);
  external JSNumber get length;
  external JSBoolean get isFinal;
}

@JS('SpeechRecognitionResultList')
@staticInterop
class SpeechRecognitionResultList {}

extension SpeechRecognitionResultListExtension on SpeechRecognitionResultList {
  external SpeechRecognitionResult item(JSNumber index);
  external JSNumber get length;
}

@JS('SpeechRecognitionEvent')
@staticInterop
class SpeechRecognitionEvent implements Event {
  external factory SpeechRecognitionEvent(
    JSString type,
    SpeechRecognitionEventInit eventInitDict,
  );
}

extension SpeechRecognitionEventExtension on SpeechRecognitionEvent {
  external JSNumber get resultIndex;
  external SpeechRecognitionResultList get results;
}

@JS()
@staticInterop
@anonymous
class SpeechRecognitionEventInit implements EventInit {
  external factory SpeechRecognitionEventInit({
    JSNumber resultIndex,
    required SpeechRecognitionResultList results,
  });
}

extension SpeechRecognitionEventInitExtension on SpeechRecognitionEventInit {
  external set resultIndex(JSNumber value);
  external JSNumber get resultIndex;
  external set results(SpeechRecognitionResultList value);
  external SpeechRecognitionResultList get results;
}

@JS('SpeechGrammar')
@staticInterop
class SpeechGrammar {}

extension SpeechGrammarExtension on SpeechGrammar {
  external set src(JSString value);
  external JSString get src;
  external set weight(JSNumber value);
  external JSNumber get weight;
}

@JS('SpeechGrammarList')
@staticInterop
class SpeechGrammarList {
  external factory SpeechGrammarList();
}

extension SpeechGrammarListExtension on SpeechGrammarList {
  external SpeechGrammar item(JSNumber index);
  external JSVoid addFromURI(
    JSString src, [
    JSNumber weight,
  ]);
  external JSVoid addFromString(
    JSString string, [
    JSNumber weight,
  ]);
  external JSNumber get length;
}

@JS('SpeechSynthesis')
@staticInterop
class SpeechSynthesis implements EventTarget {}

extension SpeechSynthesisExtension on SpeechSynthesis {
  external JSVoid speak(SpeechSynthesisUtterance utterance);
  external JSVoid cancel();
  external JSVoid pause();
  external JSVoid resume();
  external JSArray getVoices();
  external JSBoolean get pending;
  external JSBoolean get speaking;
  external JSBoolean get paused;
  external set onvoiceschanged(EventHandler value);
  external EventHandler get onvoiceschanged;
}

@JS('SpeechSynthesisUtterance')
@staticInterop
class SpeechSynthesisUtterance implements EventTarget {
  external factory SpeechSynthesisUtterance([JSString text]);
}

extension SpeechSynthesisUtteranceExtension on SpeechSynthesisUtterance {
  external set text(JSString value);
  external JSString get text;
  external set lang(JSString value);
  external JSString get lang;
  external set voice(SpeechSynthesisVoice? value);
  external SpeechSynthesisVoice? get voice;
  external set volume(JSNumber value);
  external JSNumber get volume;
  external set rate(JSNumber value);
  external JSNumber get rate;
  external set pitch(JSNumber value);
  external JSNumber get pitch;
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

@JS('SpeechSynthesisEvent')
@staticInterop
class SpeechSynthesisEvent implements Event {
  external factory SpeechSynthesisEvent(
    JSString type,
    SpeechSynthesisEventInit eventInitDict,
  );
}

extension SpeechSynthesisEventExtension on SpeechSynthesisEvent {
  external SpeechSynthesisUtterance get utterance;
  external JSNumber get charIndex;
  external JSNumber get charLength;
  external JSNumber get elapsedTime;
  external JSString get name;
}

@JS()
@staticInterop
@anonymous
class SpeechSynthesisEventInit implements EventInit {
  external factory SpeechSynthesisEventInit({
    required SpeechSynthesisUtterance utterance,
    JSNumber charIndex,
    JSNumber charLength,
    JSNumber elapsedTime,
    JSString name,
  });
}

extension SpeechSynthesisEventInitExtension on SpeechSynthesisEventInit {
  external set utterance(SpeechSynthesisUtterance value);
  external SpeechSynthesisUtterance get utterance;
  external set charIndex(JSNumber value);
  external JSNumber get charIndex;
  external set charLength(JSNumber value);
  external JSNumber get charLength;
  external set elapsedTime(JSNumber value);
  external JSNumber get elapsedTime;
  external set name(JSString value);
  external JSString get name;
}

@JS('SpeechSynthesisErrorEvent')
@staticInterop
class SpeechSynthesisErrorEvent implements SpeechSynthesisEvent {
  external factory SpeechSynthesisErrorEvent(
    JSString type,
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

@JS('SpeechSynthesisVoice')
@staticInterop
class SpeechSynthesisVoice {}

extension SpeechSynthesisVoiceExtension on SpeechSynthesisVoice {
  external JSString get voiceURI;
  external JSString get name;
  external JSString get lang;
  external JSBoolean get localService;
  @JS('default')
  external JSBoolean get default_;
}
