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

@JS('NavigationUpdateCurrentEntryOptions')
@staticInterop
class NavigationUpdateCurrentEntryOptions {
  external factory NavigationUpdateCurrentEntryOptions();
}

extension NavigationUpdateCurrentEntryOptionsExtension
    on NavigationUpdateCurrentEntryOptions {}

@JS('NavigationOptions')
@staticInterop
class NavigationOptions {
  external factory NavigationOptions();
}

extension NavigationOptionsExtension on NavigationOptions {}

@JS('NavigationNavigateOptions')
@staticInterop
class NavigationNavigateOptions extends NavigationOptions {
  external factory NavigationNavigateOptions();
}

extension NavigationNavigateOptionsExtension on NavigationNavigateOptions {}

@JS('NavigationReloadOptions')
@staticInterop
class NavigationReloadOptions extends NavigationOptions {
  external factory NavigationReloadOptions();
}

extension NavigationReloadOptionsExtension on NavigationReloadOptions {}

@JS('NavigationResult')
@staticInterop
class NavigationResult {
  external factory NavigationResult();
}

extension NavigationResultExtension on NavigationResult {}

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

@JS('NavigationCurrentEntryChangeEventInit')
@staticInterop
class NavigationCurrentEntryChangeEventInit extends EventInit {
  external factory NavigationCurrentEntryChangeEventInit();
}

extension NavigationCurrentEntryChangeEventInitExtension
    on NavigationCurrentEntryChangeEventInit {}

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

@JS('NavigateEventInit')
@staticInterop
class NavigateEventInit extends EventInit {
  external factory NavigateEventInit();
}

extension NavigateEventInitExtension on NavigateEventInit {}

@JS('NavigationInterceptOptions')
@staticInterop
class NavigationInterceptOptions {
  external factory NavigationInterceptOptions();
}

extension NavigationInterceptOptionsExtension on NavigationInterceptOptions {}

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
