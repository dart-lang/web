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
import 'html.dart';
import 'streams.dart';

typedef CreateMonitorCallback = JSFunction;
typedef SummarizerType = String;
typedef SummarizerFormat = String;
typedef SummarizerLength = String;
typedef WriterTone = String;
typedef WriterFormat = String;
typedef WriterLength = String;
typedef RewriterTone = String;
typedef RewriterFormat = String;
typedef RewriterLength = String;
typedef Availability = String;
extension type Summarizer._(JSObject _) implements JSObject {
  external static JSPromise<Summarizer> create(
      [SummarizerCreateOptions options]);
  external static JSPromise<JSString> availability(
      [SummarizerCreateCoreOptions options]);
  external JSPromise<JSString> summarize(
    String input, [
    SummarizerSummarizeOptions options,
  ]);
  external ReadableStream summarizeStreaming(
    String input, [
    SummarizerSummarizeOptions options,
  ]);
  external JSPromise<JSNumber> measureInputUsage(
    String input, [
    SummarizerSummarizeOptions options,
  ]);
  external void destroy();
  external String get sharedContext;
  external SummarizerType get type;
  external SummarizerFormat get format;
  external SummarizerLength get length;
  external JSArray<JSString>? get expectedInputLanguages;
  external JSArray<JSString>? get expectedContextLanguages;
  external String? get outputLanguage;
  external double get inputQuota;
}
extension type SummarizerCreateCoreOptions._(JSObject _) implements JSObject {
  external factory SummarizerCreateCoreOptions({
    SummarizerType type,
    SummarizerFormat format,
    SummarizerLength length,
    JSArray<JSString> expectedInputLanguages,
    JSArray<JSString> expectedContextLanguages,
    String outputLanguage,
  });

  external SummarizerType get type;
  external set type(SummarizerType value);
  external SummarizerFormat get format;
  external set format(SummarizerFormat value);
  external SummarizerLength get length;
  external set length(SummarizerLength value);
  external JSArray<JSString> get expectedInputLanguages;
  external set expectedInputLanguages(JSArray<JSString> value);
  external JSArray<JSString> get expectedContextLanguages;
  external set expectedContextLanguages(JSArray<JSString> value);
  external String get outputLanguage;
  external set outputLanguage(String value);
}
extension type SummarizerCreateOptions._(JSObject _)
    implements SummarizerCreateCoreOptions, JSObject {
  external factory SummarizerCreateOptions({
    SummarizerType type,
    SummarizerFormat format,
    SummarizerLength length,
    JSArray<JSString> expectedInputLanguages,
    JSArray<JSString> expectedContextLanguages,
    String outputLanguage,
    AbortSignal signal,
    CreateMonitorCallback monitor,
    String sharedContext,
  });

  external AbortSignal get signal;
  external set signal(AbortSignal value);
  external CreateMonitorCallback get monitor;
  external set monitor(CreateMonitorCallback value);
  external String get sharedContext;
  external set sharedContext(String value);
}
extension type SummarizerSummarizeOptions._(JSObject _) implements JSObject {
  external factory SummarizerSummarizeOptions({
    AbortSignal signal,
    String context,
  });

  external AbortSignal get signal;
  external set signal(AbortSignal value);
  external String get context;
  external set context(String value);
}
extension type Writer._(JSObject _) implements JSObject {
  external static JSPromise<Writer> create([WriterCreateOptions options]);
  external static JSPromise<JSString> availability(
      [WriterCreateCoreOptions options]);
  external JSPromise<JSString> write(
    String input, [
    WriterWriteOptions options,
  ]);
  external ReadableStream writeStreaming(
    String input, [
    WriterWriteOptions options,
  ]);
  external JSPromise<JSNumber> measureInputUsage(
    String input, [
    WriterWriteOptions options,
  ]);
  external void destroy();
  external String get sharedContext;
  external WriterTone get tone;
  external WriterFormat get format;
  external WriterLength get length;
  external JSArray<JSString>? get expectedInputLanguages;
  external JSArray<JSString>? get expectedContextLanguages;
  external String? get outputLanguage;
  external double get inputQuota;
}
extension type WriterCreateCoreOptions._(JSObject _) implements JSObject {
  external factory WriterCreateCoreOptions({
    WriterTone tone,
    WriterFormat format,
    WriterLength length,
    JSArray<JSString> expectedInputLanguages,
    JSArray<JSString> expectedContextLanguages,
    String outputLanguage,
  });

  external WriterTone get tone;
  external set tone(WriterTone value);
  external WriterFormat get format;
  external set format(WriterFormat value);
  external WriterLength get length;
  external set length(WriterLength value);
  external JSArray<JSString> get expectedInputLanguages;
  external set expectedInputLanguages(JSArray<JSString> value);
  external JSArray<JSString> get expectedContextLanguages;
  external set expectedContextLanguages(JSArray<JSString> value);
  external String get outputLanguage;
  external set outputLanguage(String value);
}
extension type WriterCreateOptions._(JSObject _)
    implements WriterCreateCoreOptions, JSObject {
  external factory WriterCreateOptions({
    WriterTone tone,
    WriterFormat format,
    WriterLength length,
    JSArray<JSString> expectedInputLanguages,
    JSArray<JSString> expectedContextLanguages,
    String outputLanguage,
    AbortSignal signal,
    CreateMonitorCallback monitor,
    String sharedContext,
  });

  external AbortSignal get signal;
  external set signal(AbortSignal value);
  external CreateMonitorCallback get monitor;
  external set monitor(CreateMonitorCallback value);
  external String get sharedContext;
  external set sharedContext(String value);
}
extension type WriterWriteOptions._(JSObject _) implements JSObject {
  external factory WriterWriteOptions({
    String context,
    AbortSignal signal,
  });

  external String get context;
  external set context(String value);
  external AbortSignal get signal;
  external set signal(AbortSignal value);
}
extension type Rewriter._(JSObject _) implements JSObject {
  external static JSPromise<Rewriter> create([RewriterCreateOptions options]);
  external static JSPromise<JSString> availability(
      [RewriterCreateCoreOptions options]);
  external JSPromise<JSString> rewrite(
    String input, [
    RewriterRewriteOptions options,
  ]);
  external ReadableStream rewriteStreaming(
    String input, [
    RewriterRewriteOptions options,
  ]);
  external JSPromise<JSNumber> measureInputUsage(
    String input, [
    RewriterRewriteOptions options,
  ]);
  external void destroy();
  external String get sharedContext;
  external RewriterTone get tone;
  external RewriterFormat get format;
  external RewriterLength get length;
  external JSArray<JSString>? get expectedInputLanguages;
  external JSArray<JSString>? get expectedContextLanguages;
  external String? get outputLanguage;
  external double get inputQuota;
}
extension type RewriterCreateCoreOptions._(JSObject _) implements JSObject {
  external factory RewriterCreateCoreOptions({
    RewriterTone tone,
    RewriterFormat format,
    RewriterLength length,
    JSArray<JSString> expectedInputLanguages,
    JSArray<JSString> expectedContextLanguages,
    String outputLanguage,
  });

  external RewriterTone get tone;
  external set tone(RewriterTone value);
  external RewriterFormat get format;
  external set format(RewriterFormat value);
  external RewriterLength get length;
  external set length(RewriterLength value);
  external JSArray<JSString> get expectedInputLanguages;
  external set expectedInputLanguages(JSArray<JSString> value);
  external JSArray<JSString> get expectedContextLanguages;
  external set expectedContextLanguages(JSArray<JSString> value);
  external String get outputLanguage;
  external set outputLanguage(String value);
}
extension type RewriterCreateOptions._(JSObject _)
    implements RewriterCreateCoreOptions, JSObject {
  external factory RewriterCreateOptions({
    RewriterTone tone,
    RewriterFormat format,
    RewriterLength length,
    JSArray<JSString> expectedInputLanguages,
    JSArray<JSString> expectedContextLanguages,
    String outputLanguage,
    AbortSignal signal,
    CreateMonitorCallback monitor,
    String sharedContext,
  });

  external AbortSignal get signal;
  external set signal(AbortSignal value);
  external CreateMonitorCallback get monitor;
  external set monitor(CreateMonitorCallback value);
  external String get sharedContext;
  external set sharedContext(String value);
}
extension type RewriterRewriteOptions._(JSObject _) implements JSObject {
  external factory RewriterRewriteOptions({
    String context,
    AbortSignal signal,
  });

  external String get context;
  external set context(String value);
  external AbortSignal get signal;
  external set signal(AbortSignal value);
}
extension type CreateMonitor._(JSObject _) implements EventTarget, JSObject {
  external EventHandler get ondownloadprogress;
  external set ondownloadprogress(EventHandler value);
}
