// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef SpeechRecognitionErrorCode = JSString;
typedef SpeechSynthesisErrorCode = JSString;

@JS('SpeechRecognition')
@staticInterop
class SpeechRecognition extends EventTarget {
  external factory SpeechRecognition();
}

extension SpeechRecognitionExtension on SpeechRecognition {
  external SpeechGrammarList get grammars;
  external set grammars(SpeechGrammarList value);
  external JSString get lang;
  external set lang(JSString value);
  external JSBoolean get continuous;
  external set continuous(JSBoolean value);
  external JSBoolean get interimResults;
  external set interimResults(JSBoolean value);
  external JSNumber get maxAlternatives;
  external set maxAlternatives(JSNumber value);
  external JSUndefined start();
  external JSUndefined stop();
  external JSUndefined abort();
  external EventHandler get onaudiostart;
  external set onaudiostart(EventHandler value);
  external EventHandler get onsoundstart;
  external set onsoundstart(EventHandler value);
  external EventHandler get onspeechstart;
  external set onspeechstart(EventHandler value);
  external EventHandler get onspeechend;
  external set onspeechend(EventHandler value);
  external EventHandler get onsoundend;
  external set onsoundend(EventHandler value);
  external EventHandler get onaudioend;
  external set onaudioend(EventHandler value);
  external EventHandler get onresult;
  external set onresult(EventHandler value);
  external EventHandler get onnomatch;
  external set onnomatch(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onstart;
  external set onstart(EventHandler value);
  external EventHandler get onend;
  external set onend(EventHandler value);
}

@JS('SpeechRecognitionErrorEvent')
@staticInterop
class SpeechRecognitionErrorEvent extends Event {
  external factory SpeechRecognitionErrorEvent();
  external factory SpeechRecognitionErrorEvent.a1(
      JSString type, SpeechRecognitionErrorEventInit eventInitDict);
}

extension SpeechRecognitionErrorEventExtension on SpeechRecognitionErrorEvent {
  external SpeechRecognitionErrorCode get error;
  external JSString get message;
}

@JS('SpeechRecognitionErrorEventInit')
@staticInterop
class SpeechRecognitionErrorEventInit extends EventInit {
  external factory SpeechRecognitionErrorEventInit();
}

extension SpeechRecognitionErrorEventInitExtension
    on SpeechRecognitionErrorEventInit {
  // TODO
  // TODO
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
      JSString type, SpeechRecognitionEventInit eventInitDict);
}

extension SpeechRecognitionEventExtension on SpeechRecognitionEvent {
  external JSNumber get resultIndex;
  external SpeechRecognitionResultList get results;
}

@JS('SpeechRecognitionEventInit')
@staticInterop
class SpeechRecognitionEventInit extends EventInit {
  external factory SpeechRecognitionEventInit();
}

extension SpeechRecognitionEventInitExtension on SpeechRecognitionEventInit {
  // TODO
  // TODO
}

@JS('SpeechGrammar')
@staticInterop
class SpeechGrammar {
  external factory SpeechGrammar();
}

extension SpeechGrammarExtension on SpeechGrammar {
  external JSString get src;
  external set src(JSString value);
  external JSNumber get weight;
  external set weight(JSNumber value);
}

@JS('SpeechGrammarList')
@staticInterop
class SpeechGrammarList {
  external factory SpeechGrammarList();
}

extension SpeechGrammarListExtension on SpeechGrammarList {
  external JSNumber get length;
  external SpeechGrammar item(JSNumber index);
  external JSUndefined addFromURI(JSString src);
  external JSUndefined addFromURI_1(JSString src, JSNumber weight);
  external JSUndefined addFromString(JSString string);
  external JSUndefined addFromString_1(JSString string, JSNumber weight);
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
  external EventHandler get onvoiceschanged;
  external set onvoiceschanged(EventHandler value);
  external JSUndefined speak(SpeechSynthesisUtterance utterance);
  external JSUndefined cancel();
  external JSUndefined pause();
  external JSUndefined resume();
  external JSArray getVoices();
}

@JS('SpeechSynthesisUtterance')
@staticInterop
class SpeechSynthesisUtterance extends EventTarget {
  external factory SpeechSynthesisUtterance();
  external factory SpeechSynthesisUtterance.a1();
  external factory SpeechSynthesisUtterance.a1_1(JSString text);
}

extension SpeechSynthesisUtteranceExtension on SpeechSynthesisUtterance {
  external JSString get text;
  external set text(JSString value);
  external JSString get lang;
  external set lang(JSString value);
  external SpeechSynthesisVoice? get voice;
  external set voice(SpeechSynthesisVoice? value);
  external JSNumber get volume;
  external set volume(JSNumber value);
  external JSNumber get rate;
  external set rate(JSNumber value);
  external JSNumber get pitch;
  external set pitch(JSNumber value);
  external EventHandler get onstart;
  external set onstart(EventHandler value);
  external EventHandler get onend;
  external set onend(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onpause;
  external set onpause(EventHandler value);
  external EventHandler get onresume;
  external set onresume(EventHandler value);
  external EventHandler get onmark;
  external set onmark(EventHandler value);
  external EventHandler get onboundary;
  external set onboundary(EventHandler value);
}

@JS('SpeechSynthesisEvent')
@staticInterop
class SpeechSynthesisEvent extends Event {
  external factory SpeechSynthesisEvent();
  external factory SpeechSynthesisEvent.a1(
      JSString type, SpeechSynthesisEventInit eventInitDict);
}

extension SpeechSynthesisEventExtension on SpeechSynthesisEvent {
  external SpeechSynthesisUtterance get utterance;
  external JSNumber get charIndex;
  external JSNumber get charLength;
  external JSNumber get elapsedTime;
  external JSString get name;
}

@JS('SpeechSynthesisEventInit')
@staticInterop
class SpeechSynthesisEventInit extends EventInit {
  external factory SpeechSynthesisEventInit();
}

extension SpeechSynthesisEventInitExtension on SpeechSynthesisEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('SpeechSynthesisErrorEvent')
@staticInterop
class SpeechSynthesisErrorEvent extends SpeechSynthesisEvent {
  external factory SpeechSynthesisErrorEvent();
  external factory SpeechSynthesisErrorEvent.a1(
      JSString type, SpeechSynthesisErrorEventInit eventInitDict);
}

extension SpeechSynthesisErrorEventExtension on SpeechSynthesisErrorEvent {
  external SpeechSynthesisErrorCode get error;
}

@JS('SpeechSynthesisErrorEventInit')
@staticInterop
class SpeechSynthesisErrorEventInit extends SpeechSynthesisEventInit {
  external factory SpeechSynthesisErrorEventInit();
}

extension SpeechSynthesisErrorEventInitExtension
    on SpeechSynthesisErrorEventInit {
  // TODO
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
  external JSBoolean get default0;
}
