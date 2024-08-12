// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognition).
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

  /// The **`grammars`** property of the
  /// [SpeechRecognition] interface returns and sets a collection of
  /// [SpeechGrammar] objects that represent the grammars that will be
  /// understood
  /// by the current `SpeechRecognition`.
  external JSObject get grammars;
  external set grammars(JSObject value);

  /// The **`lang`** property of the [SpeechRecognition]
  /// interface returns and sets the language of the current
  /// `SpeechRecognition`.
  /// If not specified, this defaults to the HTML
  /// [`lang`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/html#lang)
  /// attribute
  /// value, or the user agent's language setting if that isn't set either.
  external String get lang;
  external set lang(String value);

  /// The **`continuous`** property of the
  /// [SpeechRecognition] interface controls whether continuous results are
  /// returned for each recognition, or only a single result.
  ///
  /// It defaults to single results (`false`.)
  external bool get continuous;
  external set continuous(bool value);

  /// The **`interimResults`** property of the
  /// [SpeechRecognition] interface controls whether interim results should be
  /// returned (`true`) or not (`false`). Interim results are results
  /// that are not yet final (e.g. the [SpeechRecognitionResult.isFinal]
  /// property
  /// is `false`).
  ///
  /// The default value for **`interimResults`** is `false`.
  external bool get interimResults;
  external set interimResults(bool value);

  /// The **`maxAlternatives`** property of the
  /// [SpeechRecognition] interface sets the maximum number of
  /// [SpeechRecognitionAlternative]s provided per
  /// [SpeechRecognitionResult].
  ///
  /// The default value is 1.
  external int get maxAlternatives;
  external set maxAlternatives(int value);
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

/// The **`SpeechRecognitionErrorEvent`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents error messages from the recognition service.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionErrorEvent).
extension type SpeechRecognitionErrorEvent._(JSObject _)
    implements Event, JSObject {
  /// The **`error`** read-only property of the
  /// [SpeechRecognitionErrorEvent] interface returns the type of error raised.
  external SpeechRecognitionErrorCode get error;

  /// The **`message`** read-only property of the
  /// [SpeechRecognitionErrorEvent] interface returns a message describing the
  /// error in more detail.
  external String get message;
}

/// The **`SpeechRecognitionAlternative`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a single word that has been recognized by the speech recognition
/// service.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionAlternative).
extension type SpeechRecognitionAlternative._(JSObject _) implements JSObject {
  /// The **`transcript`** read-only property of the
  /// [SpeechRecognitionResult] interface returns a string containing the
  /// transcript of the recognized word(s).
  ///
  /// For continuous recognition, leading or trailing whitespace will be
  /// included where
  /// necessary so that concatenation of consecutive [SpeechRecognitionResult]s
  /// produces a proper transcript of the session.
  external String get transcript;

  /// The **`confidence`** read-only property of the
  /// [SpeechRecognitionResult] interface returns a numeric estimate of how
  /// confident the speech recognition system is that the recognition is
  /// correct.
  ///
  /// > **Note:** Mozilla's implementation of `confidence` is still
  /// > being worked on — at the moment, it always seems to return 1.
  external double get confidence;
}

/// The **`SpeechRecognitionResult`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a single recognition match, which may contain multiple
/// [SpeechRecognitionAlternative] objects.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionResult).
extension type SpeechRecognitionResult._(JSObject _) implements JSObject {
  /// The **`item`** getter of the
  /// [SpeechRecognitionResult] interface is a standard getter that allows
  /// [SpeechRecognitionAlternative] objects within the result to be accessed
  /// via
  /// array syntax.
  external SpeechRecognitionAlternative item(int index);

  /// The **`length`** read-only property of the
  /// [SpeechRecognitionResult] interface returns the length of the "array"
  /// — the number of [SpeechRecognitionAlternative] objects contained
  /// in the result (also referred to as "n-best alternatives".)
  ///
  /// The number of alternatives contained in the result depends on what the
  /// [SpeechRecognition.maxAlternatives] property was set to when the speech
  /// recognition was first initiated.
  external int get length;

  /// The **`isFinal`** read-only property of the
  /// [SpeechRecognitionResult] interface is a boolean value that states
  /// whether this result is final (`true`) or not (`false`) — if so,
  /// then this is the final time this result will be returned; if not, then
  /// this result is an
  /// interim result, and may be updated later on.
  external bool get isFinal;
}

/// The **`SpeechRecognitionResultList`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a list of [SpeechRecognitionResult] objects, or a single one if
/// results are being captured in  mode.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionResultList).
extension type SpeechRecognitionResultList._(JSObject _) implements JSObject {
  /// The **`item`** getter of the
  /// [SpeechRecognitionResultList] interface is a standard getter — it allows
  /// [SpeechRecognitionResult] objects in the list to be accessed via array
  /// syntax.
  external SpeechRecognitionResult item(int index);

  /// The **`length`** read-only property of the
  /// [SpeechRecognitionResultList] interface returns the length of the
  /// "array" — the number of [SpeechRecognitionResult] objects in the
  /// list.
  external int get length;
}

/// The **`SpeechRecognitionEvent`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents the event object for the [SpeechRecognition.result_event] and
/// [SpeechRecognition.nomatch_event] events, and contains all the data
/// associated with an interim or final speech recognition result.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechRecognitionEvent).
extension type SpeechRecognitionEvent._(JSObject _) implements Event, JSObject {
  /// The **`resultIndex`** read-only property of the
  /// [SpeechRecognitionEvent] interface returns the lowest index value result
  /// in
  /// the [SpeechRecognitionResultList] "array" that has actually changed.
  ///
  /// The [SpeechRecognitionResultList] object is not an array, but it has a
  /// getter that allows it to be accessed by array syntax.
  external int get resultIndex;

  /// The **`results`** read-only property of the
  /// [SpeechRecognitionEvent] interface returns a
  /// [SpeechRecognitionResultList] object representing all the speech
  /// recognition results for the current session.
  ///
  /// Specifically this object will contain all final results that have been
  /// returned,
  /// followed by the current best hypothesis for all interim results. When
  /// subsequent
  /// [SpeechRecognition.result_event] events are fired, interim results may be
  /// overwritten by a newer
  /// interim result or by a final result — they may even be removed, if they
  /// are at the end
  /// of the "results" array and the array length decreases. Final results on
  /// the other hand
  /// will not be overwritten or removed.
  external SpeechRecognitionResultList get results;
}

/// The **`SpeechSynthesis`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// is the controller interface for the speech service; this can be used to
/// retrieve information about the synthesis voices available on the device,
/// start and pause speech, and other commands besides.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis).
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
  external JSArray<SpeechSynthesisVoice> getVoices();

  /// The **`pending`** read-only property of the
  /// [SpeechSynthesis] interface is a boolean value that returns
  /// `true` if the utterance queue contains as-yet-unspoken utterances.
  external bool get pending;

  /// The **`speaking`** read-only property of the
  /// [SpeechSynthesis] interface is a boolean value that returns
  /// `true` if an utterance is currently in the process of being spoken — even
  /// if `SpeechSynthesis` is in a
  /// [SpeechSynthesis.pause] state.
  external bool get speaking;

  /// The **`paused`** read-only property of the
  /// [SpeechSynthesis] interface is a boolean value that returns
  /// `true` if the `SpeechSynthesis` object is in a paused state, or `false` if
  /// not.
  ///
  /// It can be set to [SpeechSynthesis.pause] even if nothing is
  /// currently being spoken through it. If
  /// [SpeechSynthesisUtterance] are then added to the utterance
  /// queue, they will not be spoken until the `SpeechSynthesis` object is
  /// unpaused, using [SpeechSynthesis.resume].
  external bool get paused;
  external EventHandler get onvoiceschanged;
  external set onvoiceschanged(EventHandler value);
}

/// The **`SpeechSynthesisUtterance`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a speech request.
/// It contains the content the speech service should read and information about
/// how to read it (e.g. language, pitch and volume.)
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance).
extension type SpeechSynthesisUtterance._(JSObject _)
    implements EventTarget, JSObject {
  external factory SpeechSynthesisUtterance([String text]);

  /// The **`text`** property of the
  /// [SpeechSynthesisUtterance] interface gets and sets the text that will be
  /// synthesized when the utterance is spoken.
  ///
  /// The text may be provided as plain text, or a well-formed
  /// [SSML](https://www.w3.org/TR/speech-synthesis/) document.
  /// The SSML tags will be stripped away by devices that don't support SSML.
  external String get text;
  external set text(String value);

  /// The **`lang`** property of the [SpeechSynthesisUtterance] interface gets
  /// and sets the language of the utterance.
  ///
  /// If unset, the app's (i.e. the `html`
  /// [`lang`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/html#lang)
  /// value) lang will be used, or the user-agent default if that is unset too.
  external String get lang;
  external set lang(String value);

  /// The **`voice`** property of the [SpeechSynthesisUtterance] interface gets
  /// and sets the voice that will be used to speak the utterance.
  ///
  /// This should be set to one of the [SpeechSynthesisVoice] objects returned
  /// by [SpeechSynthesis.getVoices].
  /// If not set by the time the utterance is spoken, the voice used will be the
  /// most suitable default voice available for the utterance's
  /// [SpeechSynthesisUtterance.lang] setting.
  external SpeechSynthesisVoice? get voice;
  external set voice(SpeechSynthesisVoice? value);

  /// The **`volume`** property of the [SpeechSynthesisUtterance] interface gets
  /// and sets the volume that the utterance will be spoken at.
  ///
  /// If not set, the default value 1 will be used.
  external double get volume;
  external set volume(num value);

  /// The **`rate`** property of the [SpeechSynthesisUtterance] interface gets
  /// and sets the speed at which the utterance will be spoken at.
  ///
  /// If unset, a default value of 1 will be used.
  external double get rate;
  external set rate(num value);

  /// The **`pitch`** property of the [SpeechSynthesisUtterance] interface gets
  /// and sets the pitch at which the utterance will be spoken at.
  ///
  /// If unset, a default value of 1 will be used.
  external double get pitch;
  external set pitch(num value);
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

/// The **`SpeechSynthesisEvent`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// contains information about the current state of [SpeechSynthesisUtterance]
/// objects that have been processed in the speech service.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisEvent).
extension type SpeechSynthesisEvent._(JSObject _) implements Event, JSObject {
  external factory SpeechSynthesisEvent(
    String type,
    SpeechSynthesisEventInit eventInitDict,
  );

  /// The **`utterance`** read-only property of the [SpeechSynthesisUtterance]
  /// interface returns the [SpeechSynthesisUtterance] instance that the event
  /// was triggered on.
  external SpeechSynthesisUtterance get utterance;

  /// The **`charIndex`** read-only property of the [SpeechSynthesisUtterance]
  /// interface returns the index position of the character in
  /// [SpeechSynthesisUtterance.text] that was being spoken when the event was
  /// triggered.
  external int get charIndex;

  /// The read-only **`charLength`** property of the [SpeechSynthesisEvent]
  /// interface returns the number of characters left to be spoken after the
  /// character at the [SpeechSynthesisEvent.charIndex] position.
  ///
  /// If the speech engine can't determine it, it returns 0.
  external int get charLength;

  /// The **`elapsedTime`** read-only property of the [SpeechSynthesisEvent]
  /// returns the elapsed time in seconds, after the
  /// [SpeechSynthesisUtterance.text] started being spoken, at which the
  /// [event](https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisUtterance#events)
  /// was triggered.
  external double get elapsedTime;

  /// The **`name`** read-only property of the [SpeechSynthesisUtterance]
  /// interface returns the name associated with certain types of events
  /// occurring as the [SpeechSynthesisUtterance.text] is being spoken:
  /// the name of the [SSML](https://www.w3.org/TR/speech-synthesis/#S3.3.2)
  /// marker reached in the case of a [SpeechSynthesisUtterance.mark_event]
  /// event, or the type of boundary reached in the case of a
  /// [SpeechSynthesisUtterance.boundary_event] event.
  external String get name;
}
extension type SpeechSynthesisEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory SpeechSynthesisEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required SpeechSynthesisUtterance utterance,
    int charIndex,
    int charLength,
    num elapsedTime,
    String name,
  });

  external SpeechSynthesisUtterance get utterance;
  external set utterance(SpeechSynthesisUtterance value);
  external int get charIndex;
  external set charIndex(int value);
  external int get charLength;
  external set charLength(int value);
  external double get elapsedTime;
  external set elapsedTime(num value);
  external String get name;
  external set name(String value);
}

/// The **`SpeechSynthesisErrorEvent`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// contains information about any errors that occur while processing
/// [SpeechSynthesisUtterance] objects in the speech service.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisErrorEvent).
extension type SpeechSynthesisErrorEvent._(JSObject _)
    implements SpeechSynthesisEvent, JSObject {
  external factory SpeechSynthesisErrorEvent(
    String type,
    SpeechSynthesisErrorEventInit eventInitDict,
  );

  /// The **`error`** property of the
  /// [SpeechSynthesisErrorEvent] interface returns an error code indicating
  /// what has gone wrong with a speech synthesis attempt.
  external SpeechSynthesisErrorCode get error;
}
extension type SpeechSynthesisErrorEventInit._(JSObject _)
    implements SpeechSynthesisEventInit, JSObject {
  external factory SpeechSynthesisErrorEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required SpeechSynthesisUtterance utterance,
    int charIndex,
    int charLength,
    num elapsedTime,
    String name,
    required SpeechSynthesisErrorCode error,
  });

  external SpeechSynthesisErrorCode get error;
  external set error(SpeechSynthesisErrorCode value);
}

/// The **`SpeechSynthesisVoice`** interface of the
/// [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
/// represents a voice that the system supports.
/// Every `SpeechSynthesisVoice` has its own relative speech service including
/// information about language, name and URI.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesisVoice).
extension type SpeechSynthesisVoice._(JSObject _) implements JSObject {
  /// The **`voiceURI`** read-only property of the
  /// [SpeechSynthesisVoice] interface returns the type of URI and location of
  /// the speech synthesis service for this voice.
  external String get voiceURI;

  /// The **`name`** read-only property of the
  /// [SpeechSynthesisVoice] interface returns a human-readable name that
  /// represents the voice.
  external String get name;

  /// The **`lang`** read-only property of the [SpeechSynthesisVoice] interface
  /// returns a BCP 47 language tag indicating the language of the voice.
  external String get lang;

  /// The **`localService`** read-only property of the
  /// [SpeechSynthesisVoice] interface returns a boolean value
  /// indicating whether the voice is supplied by a local speech synthesizer
  /// service
  /// (`true`), or a remote speech synthesizer service (`false`.)
  ///
  /// This property is provided to allow differentiation in the case that some
  /// voice options
  /// are provided by a remote service; it is possible that remote voices might
  /// have extra
  /// latency, bandwidth or cost associated with them, so such distinction may
  /// be useful.
  external bool get localService;
  @JS('default')
  external bool get default_;
}
