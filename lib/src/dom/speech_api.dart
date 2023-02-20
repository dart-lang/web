// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';

typedef SpeechRecognitionErrorCode = JSString;
typedef SpeechSynthesisErrorCode = JSString;

@JS('SpeechRecognition')
@staticInterop
class SpeechRecognition extends EventTarget {
  external factory SpeechRecognition.a0();
}

extension SpeechRecognitionExtension on SpeechRecognition {
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
  external JSVoid start();
  external JSVoid stop();
  external JSVoid abort();
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
class SpeechRecognitionErrorEvent extends Event {
  external factory SpeechRecognitionErrorEvent();

  external factory SpeechRecognitionErrorEvent.a1(
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
class SpeechRecognitionErrorEventInit extends EventInit {
  external factory SpeechRecognitionErrorEventInit({
    required SpeechRecognitionErrorCode error,
    JSString message = '',
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
class SpeechRecognitionAlternative {
  external factory SpeechRecognitionAlternative();
}

extension SpeechRecognitionAlternativeExtension
    on SpeechRecognitionAlternative {
  external JSString get transcript;
  external JSNumber get confidence;
}

@JS('SpeechRecognitionResult')
@staticInterop
class SpeechRecognitionResult {
  external factory SpeechRecognitionResult();
}

extension SpeechRecognitionResultExtension on SpeechRecognitionResult {
  external JSNumber get length;
  external SpeechRecognitionAlternative item(JSNumber index);
  external JSBoolean get isFinal;
}

@JS('SpeechRecognitionResultList')
@staticInterop
class SpeechRecognitionResultList {
  external factory SpeechRecognitionResultList();
}

extension SpeechRecognitionResultListExtension on SpeechRecognitionResultList {
  external JSNumber get length;
  external SpeechRecognitionResult item(JSNumber index);
}

@JS('SpeechRecognitionEvent')
@staticInterop
class SpeechRecognitionEvent extends Event {
  external factory SpeechRecognitionEvent();

  external factory SpeechRecognitionEvent.a1(
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
class SpeechRecognitionEventInit extends EventInit {
  external factory SpeechRecognitionEventInit({
    JSNumber resultIndex = 0,
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
class SpeechGrammar {
  external factory SpeechGrammar();
}

extension SpeechGrammarExtension on SpeechGrammar {
  external set src(JSString value);
  external JSString get src;
  external set weight(JSNumber value);
  external JSNumber get weight;
}

@JS('SpeechGrammarList')
@staticInterop
class SpeechGrammarList {
  external factory SpeechGrammarList.a0();
}

extension SpeechGrammarListExtension on SpeechGrammarList {
  external JSNumber get length;
  external SpeechGrammar item(JSNumber index);
  external JSVoid addFromURI(JSString src);
  external JSVoid addFromURI1(
    JSString src,
    JSNumber weight,
  );
  external JSVoid addFromString(JSString string);
  external JSVoid addFromString1(
    JSString string,
    JSNumber weight,
  );
}

@JS('SpeechSynthesis')
@staticInterop
class SpeechSynthesis extends EventTarget {
  external factory SpeechSynthesis();
}

extension SpeechSynthesisExtension on SpeechSynthesis {
  external JSBoolean get pending;
  external JSBoolean get speaking;
  external JSBoolean get paused;
  external set onvoiceschanged(EventHandler value);
  external EventHandler get onvoiceschanged;
  external JSVoid speak(SpeechSynthesisUtterance utterance);
  external JSVoid cancel();
  external JSVoid pause();
  external JSVoid resume();
  external JSArray getVoices();
}

@JS('SpeechSynthesisUtterance')
@staticInterop
class SpeechSynthesisUtterance extends EventTarget {
  external factory SpeechSynthesisUtterance();

  external factory SpeechSynthesisUtterance.a1();

  external factory SpeechSynthesisUtterance.a2(JSString text);
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
class SpeechSynthesisEvent extends Event {
  external factory SpeechSynthesisEvent();

  external factory SpeechSynthesisEvent.a1(
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
class SpeechSynthesisEventInit extends EventInit {
  external factory SpeechSynthesisEventInit({
    required SpeechSynthesisUtterance utterance,
    JSNumber charIndex = 0,
    JSNumber charLength = 0,
    JSNumber elapsedTime = 0,
    JSString name = '',
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
class SpeechSynthesisErrorEvent extends SpeechSynthesisEvent {
  external factory SpeechSynthesisErrorEvent();

  external factory SpeechSynthesisErrorEvent.a1(
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
class SpeechSynthesisErrorEventInit extends SpeechSynthesisEventInit {
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
class SpeechSynthesisVoice {
  external factory SpeechSynthesisVoice();
}

extension SpeechSynthesisVoiceExtension on SpeechSynthesisVoice {
  external JSString get voiceURI;
  external JSString get name;
  external JSString get lang;
  external JSBoolean get localService;
  @JS('default')
  external JSBoolean get default_0_;
}
