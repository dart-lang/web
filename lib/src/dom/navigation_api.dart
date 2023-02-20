// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';
import 'xhr.dart';

typedef NavigationInterceptHandler = JSFunction;
typedef NavigationHistoryBehavior = JSString;
typedef NavigationFocusReset = JSString;
typedef NavigationScrollBehavior = JSString;
typedef NavigationType = JSString;

@JS('Navigation')
@staticInterop
class Navigation extends EventTarget {
  external factory Navigation();
}

extension NavigationExtension on Navigation {
  external JSArray entries();
  external NavigationHistoryEntry? get currentEntry;
  external JSVoid updateCurrentEntry(
      NavigationUpdateCurrentEntryOptions options);
  external NavigationTransition? get transition;
  external JSBoolean get canGoBack;
  external JSBoolean get canGoForward;
  external NavigationResult navigate(JSString url);
  external NavigationResult navigate1(
    JSString url,
    NavigationNavigateOptions options,
  );
  external NavigationResult reload();
  external NavigationResult reload1(NavigationReloadOptions options);
  external NavigationResult traverseTo(JSString key);
  external NavigationResult traverseTo1(
    JSString key,
    NavigationOptions options,
  );
  external NavigationResult back();
  external NavigationResult back1(NavigationOptions options);
  external NavigationResult forward();
  external NavigationResult forward1(NavigationOptions options);
  external set onnavigate(EventHandler value);
  external EventHandler get onnavigate;
  external set onnavigatesuccess(EventHandler value);
  external EventHandler get onnavigatesuccess;
  external set onnavigateerror(EventHandler value);
  external EventHandler get onnavigateerror;
  external set oncurrententrychange(EventHandler value);
  external EventHandler get oncurrententrychange;
}

@JS()
@staticInterop
@anonymous
class NavigationUpdateCurrentEntryOptions {
  external factory NavigationUpdateCurrentEntryOptions({required JSAny state});
}

extension NavigationUpdateCurrentEntryOptionsExtension
    on NavigationUpdateCurrentEntryOptions {
  external set state(JSAny value);
  external JSAny get state;
}

@JS()
@staticInterop
@anonymous
class NavigationOptions {
  external factory NavigationOptions({JSAny info});
}

extension NavigationOptionsExtension on NavigationOptions {
  external set info(JSAny value);
  external JSAny get info;
}

@JS()
@staticInterop
@anonymous
class NavigationNavigateOptions extends NavigationOptions {
  external factory NavigationNavigateOptions({
    JSAny state,
    NavigationHistoryBehavior history = 'auto',
  });
}

extension NavigationNavigateOptionsExtension on NavigationNavigateOptions {
  external set state(JSAny value);
  external JSAny get state;
  external set history(NavigationHistoryBehavior value);
  external NavigationHistoryBehavior get history;
}

@JS()
@staticInterop
@anonymous
class NavigationReloadOptions extends NavigationOptions {
  external factory NavigationReloadOptions({JSAny state});
}

extension NavigationReloadOptionsExtension on NavigationReloadOptions {
  external set state(JSAny value);
  external JSAny get state;
}

@JS()
@staticInterop
@anonymous
class NavigationResult {
  external factory NavigationResult({
    JSPromise committed,
    JSPromise finished,
  });
}

extension NavigationResultExtension on NavigationResult {
  external set committed(JSPromise value);
  external JSPromise get committed;
  external set finished(JSPromise value);
  external JSPromise get finished;
}

@JS('NavigationCurrentEntryChangeEvent')
@staticInterop
class NavigationCurrentEntryChangeEvent extends Event {
  external factory NavigationCurrentEntryChangeEvent();

  external factory NavigationCurrentEntryChangeEvent.a1(
    JSString type,
    NavigationCurrentEntryChangeEventInit eventInit,
  );
}

extension NavigationCurrentEntryChangeEventExtension
    on NavigationCurrentEntryChangeEvent {
  external NavigationType? get navigationType;
  external NavigationHistoryEntry get from;
}

@JS()
@staticInterop
@anonymous
class NavigationCurrentEntryChangeEventInit extends EventInit {
  external factory NavigationCurrentEntryChangeEventInit({
    NavigationType? navigationType,
    required NavigationHistoryEntry destination,
  });
}

extension NavigationCurrentEntryChangeEventInitExtension
    on NavigationCurrentEntryChangeEventInit {
  external set navigationType(NavigationType? value);
  external NavigationType? get navigationType;
  external set destination(NavigationHistoryEntry value);
  external NavigationHistoryEntry get destination;
}

@JS('NavigationTransition')
@staticInterop
class NavigationTransition {
  external factory NavigationTransition();
}

extension NavigationTransitionExtension on NavigationTransition {
  external NavigationType get navigationType;
  external NavigationHistoryEntry get from;
  external JSPromise get finished;
}

@JS('NavigateEvent')
@staticInterop
class NavigateEvent extends Event {
  external factory NavigateEvent();

  external factory NavigateEvent.a1(
    JSString type,
    NavigateEventInit eventInit,
  );
}

extension NavigateEventExtension on NavigateEvent {
  external NavigationType get navigationType;
  external NavigationDestination get destination;
  external JSBoolean get canIntercept;
  external JSBoolean get userInitiated;
  external JSBoolean get hashChange;
  external AbortSignal get signal;
  external FormData? get formData;
  external JSString? get downloadRequest;
  external JSAny get info;
  external JSVoid intercept();
  external JSVoid intercept1(NavigationInterceptOptions options);
  external JSVoid scroll();
}

@JS()
@staticInterop
@anonymous
class NavigateEventInit extends EventInit {
  external factory NavigateEventInit({
    NavigationType navigationType = 'push',
    required NavigationDestination destination,
    JSBoolean canIntercept = false,
    JSBoolean userInitiated = false,
    JSBoolean hashChange = false,
    required AbortSignal signal,
    FormData? formData,
    JSString? downloadRequest,
    JSAny info,
  });
}

extension NavigateEventInitExtension on NavigateEventInit {
  external set navigationType(NavigationType value);
  external NavigationType get navigationType;
  external set destination(NavigationDestination value);
  external NavigationDestination get destination;
  external set canIntercept(JSBoolean value);
  external JSBoolean get canIntercept;
  external set userInitiated(JSBoolean value);
  external JSBoolean get userInitiated;
  external set hashChange(JSBoolean value);
  external JSBoolean get hashChange;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
  external set formData(FormData? value);
  external FormData? get formData;
  external set downloadRequest(JSString? value);
  external JSString? get downloadRequest;
  external set info(JSAny value);
  external JSAny get info;
}

@JS()
@staticInterop
@anonymous
class NavigationInterceptOptions {
  external factory NavigationInterceptOptions({
    NavigationInterceptHandler handler,
    NavigationFocusReset focusReset,
    NavigationScrollBehavior scroll,
  });
}

extension NavigationInterceptOptionsExtension on NavigationInterceptOptions {
  external set handler(NavigationInterceptHandler value);
  external NavigationInterceptHandler get handler;
  external set focusReset(NavigationFocusReset value);
  external NavigationFocusReset get focusReset;
  external set scroll(NavigationScrollBehavior value);
  external NavigationScrollBehavior get scroll;
}

@JS('NavigationDestination')
@staticInterop
class NavigationDestination {
  external factory NavigationDestination();
}

extension NavigationDestinationExtension on NavigationDestination {
  external JSString get url;
  external JSString? get key;
  external JSString? get id;
  external JSNumber get index;
  external JSBoolean get sameDocument;
  external JSAny getState();
}

@JS('NavigationHistoryEntry')
@staticInterop
class NavigationHistoryEntry extends EventTarget {
  external factory NavigationHistoryEntry();
}

extension NavigationHistoryEntryExtension on NavigationHistoryEntry {
  external JSString? get url;
  external JSString get key;
  external JSString get id;
  external JSNumber get index;
  external JSBoolean get sameDocument;
  external JSAny getState();
  external set ondispose(EventHandler value);
  external EventHandler get ondispose;
}
