// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'streams.dart';
import 'writing_assistance_apis.dart';

extension type Translator._(JSObject _) implements JSObject {
  external static JSPromise<Translator> create(TranslatorCreateOptions options);
  external static JSPromise<JSString> availability(
      TranslatorCreateCoreOptions options);
  external JSPromise<JSString> translate(
    String input, [
    TranslatorTranslateOptions options,
  ]);
  external ReadableStream translateStreaming(
    String input, [
    TranslatorTranslateOptions options,
  ]);
  external JSPromise<JSNumber> measureInputUsage(
    String input, [
    TranslatorTranslateOptions options,
  ]);
  external void destroy();
  external String get sourceLanguage;
  external String get targetLanguage;
  external double get inputQuota;
}
extension type TranslatorCreateCoreOptions._(JSObject _) implements JSObject {
  external factory TranslatorCreateCoreOptions({
    required String sourceLanguage,
    required String targetLanguage,
  });

  external String get sourceLanguage;
  external set sourceLanguage(String value);
  external String get targetLanguage;
  external set targetLanguage(String value);
}
extension type TranslatorCreateOptions._(JSObject _)
    implements TranslatorCreateCoreOptions, JSObject {
  external factory TranslatorCreateOptions({
    required String sourceLanguage,
    required String targetLanguage,
    AbortSignal signal,
    CreateMonitorCallback monitor,
  });

  external AbortSignal get signal;
  external set signal(AbortSignal value);
  external CreateMonitorCallback get monitor;
  external set monitor(CreateMonitorCallback value);
}
extension type TranslatorTranslateOptions._(JSObject _) implements JSObject {
  external factory TranslatorTranslateOptions({AbortSignal signal});

  external AbortSignal get signal;
  external set signal(AbortSignal value);
}
extension type LanguageDetector._(JSObject _) implements JSObject {
  external static JSPromise<LanguageDetector> create(
      [LanguageDetectorCreateOptions options]);
  external static JSPromise<JSString> availability(
      [LanguageDetectorCreateCoreOptions options]);
  external JSPromise<JSArray<LanguageDetectionResult>> detect(
    String input, [
    LanguageDetectorDetectOptions options,
  ]);
  external JSPromise<JSNumber> measureInputUsage(
    String input, [
    LanguageDetectorDetectOptions options,
  ]);
  external void destroy();
  external JSArray<JSString>? get expectedInputLanguages;
  external double get inputQuota;
}
extension type LanguageDetectorCreateCoreOptions._(JSObject _)
    implements JSObject {
  external factory LanguageDetectorCreateCoreOptions(
      {JSArray<JSString> expectedInputLanguages});

  external JSArray<JSString> get expectedInputLanguages;
  external set expectedInputLanguages(JSArray<JSString> value);
}
extension type LanguageDetectorCreateOptions._(JSObject _)
    implements LanguageDetectorCreateCoreOptions, JSObject {
  external factory LanguageDetectorCreateOptions({
    JSArray<JSString> expectedInputLanguages,
    AbortSignal signal,
    CreateMonitorCallback monitor,
  });

  external AbortSignal get signal;
  external set signal(AbortSignal value);
  external CreateMonitorCallback get monitor;
  external set monitor(CreateMonitorCallback value);
}
extension type LanguageDetectorDetectOptions._(JSObject _) implements JSObject {
  external factory LanguageDetectorDetectOptions({AbortSignal signal});

  external AbortSignal get signal;
  external set signal(AbortSignal value);
}
extension type LanguageDetectionResult._(JSObject _) implements JSObject {
  external factory LanguageDetectionResult({
    String detectedLanguage,
    num confidence,
  });

  external String get detectedLanguage;
  external set detectedLanguage(String value);
  external double get confidence;
  external set confidence(num value);
}
