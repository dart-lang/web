// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

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
class Navigation implements EventTarget {}

extension NavigationExtension on Navigation {
  external JSArray entries();
  external JSVoid updateCurrentEntry(
      NavigationUpdateCurrentEntryOptions options);
  external NavigationResult navigate(
    JSString url, [
    NavigationNavigateOptions options,
  ]);
  external NavigationResult reload([NavigationReloadOptions options]);
  external NavigationResult traverseTo(
    JSString key, [
    NavigationOptions options,
  ]);
  external NavigationResult back([NavigationOptions options]);
  external NavigationResult forward([NavigationOptions options]);
  external NavigationHistoryEntry? get currentEntry;
  external NavigationTransition? get transition;
  external JSBoolean get canGoBack;
  external JSBoolean get canGoForward;
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
class NavigationNavigateOptions implements NavigationOptions {
  external factory NavigationNavigateOptions({
    JSAny state,
    NavigationHistoryBehavior history,
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
class NavigationReloadOptions implements NavigationOptions {
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
class NavigationCurrentEntryChangeEvent implements Event {
  external factory NavigationCurrentEntryChangeEvent(
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
class NavigationCurrentEntryChangeEventInit implements EventInit {
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
class NavigationTransition {}

extension NavigationTransitionExtension on NavigationTransition {
  external NavigationType get navigationType;
  external NavigationHistoryEntry get from;
  external JSPromise get finished;
}

@JS('NavigateEvent')
@staticInterop
class NavigateEvent implements Event {
  external factory NavigateEvent(
    JSString type,
    NavigateEventInit eventInit,
  );
}

extension NavigateEventExtension on NavigateEvent {
  external JSVoid intercept([NavigationInterceptOptions options]);
  external JSVoid scroll();
  external NavigationType get navigationType;
  external NavigationDestination get destination;
  external JSBoolean get canIntercept;
  external JSBoolean get userInitiated;
  external JSBoolean get hashChange;
  external AbortSignal get signal;
  external FormData? get formData;
  external JSString? get downloadRequest;
  external JSAny get info;
}

@JS()
@staticInterop
@anonymous
class NavigateEventInit implements EventInit {
  external factory NavigateEventInit({
    NavigationType navigationType,
    required NavigationDestination destination,
    JSBoolean canIntercept,
    JSBoolean userInitiated,
    JSBoolean hashChange,
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
class NavigationDestination {}

extension NavigationDestinationExtension on NavigationDestination {
  external JSAny getState();
  external JSString get url;
  external JSString? get key;
  external JSString? get id;
  external JSNumber get index;
  external JSBoolean get sameDocument;
}

@JS('NavigationHistoryEntry')
@staticInterop
class NavigationHistoryEntry implements EventTarget {}

extension NavigationHistoryEntryExtension on NavigationHistoryEntry {
  external JSAny getState();
  external JSString? get url;
  external JSString get key;
  external JSString get id;
  external JSNumber get index;
  external JSBoolean get sameDocument;
  external set ondispose(EventHandler value);
  external EventHandler get ondispose;
}
