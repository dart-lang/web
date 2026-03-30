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
import 'webidl.dart';

typedef ObserverUnion = JSObject;
typedef ObservableInspectorUnion = JSObject;
typedef SubscribeCallback = JSFunction;
typedef ObservableSubscriptionCallback = JSFunction;
typedef ObservableInspectorAbortHandler = JSFunction;
typedef Predicate = JSFunction;
typedef Reducer = JSFunction;
typedef Mapper = JSFunction;
typedef Visitor = JSFunction;
typedef CatchCallback = JSFunction;
extension type Subscriber._(JSObject _) implements JSObject {
  external void next(JSAny? value);
  external void error(JSAny? error);
  external void complete();
  external void addTeardown(VoidFunction teardown);
  external bool get active;
  external AbortSignal get signal;
}
extension type SubscriptionObserver._(JSObject _) implements JSObject {
  external factory SubscriptionObserver({
    ObservableSubscriptionCallback next,
    ObservableSubscriptionCallback error,
    VoidFunction complete,
  });

  external ObservableSubscriptionCallback get next;
  external set next(ObservableSubscriptionCallback value);
  external ObservableSubscriptionCallback get error;
  external set error(ObservableSubscriptionCallback value);
  external VoidFunction get complete;
  external set complete(VoidFunction value);
}
extension type ObservableInspector._(JSObject _) implements JSObject {
  external factory ObservableInspector({
    ObservableSubscriptionCallback next,
    ObservableSubscriptionCallback error,
    VoidFunction complete,
    VoidFunction subscribe,
    ObservableInspectorAbortHandler abort,
  });

  external ObservableSubscriptionCallback get next;
  external set next(ObservableSubscriptionCallback value);
  external ObservableSubscriptionCallback get error;
  external set error(ObservableSubscriptionCallback value);
  external VoidFunction get complete;
  external set complete(VoidFunction value);
  external VoidFunction get subscribe;
  external set subscribe(VoidFunction value);
  external ObservableInspectorAbortHandler get abort;
  external set abort(ObservableInspectorAbortHandler value);
}
extension type SubscribeOptions._(JSObject _) implements JSObject {
  external factory SubscribeOptions({AbortSignal signal});

  external AbortSignal get signal;
  external set signal(AbortSignal value);
}
extension type Observable._(JSObject _) implements JSObject {
  external factory Observable(SubscribeCallback callback);

  external static Observable from(JSAny? value);
  external void subscribe([
    ObserverUnion observer,
    SubscribeOptions options,
  ]);
  external Observable takeUntil(JSAny? value);
  external Observable map(Mapper mapper);
  external Observable filter(Predicate predicate);
  external Observable take(int amount);
  external Observable drop(int amount);
  external Observable flatMap(Mapper mapper);
  external Observable switchMap(Mapper mapper);
  external Observable inspect([ObservableInspectorUnion inspectorUnion]);
  @JS('catch')
  external Observable catch_(CatchCallback callback);
  @JS('finally')
  external Observable finally_(VoidFunction callback);
  external JSPromise<JSArray<JSAny?>> toArray([SubscribeOptions options]);
  external JSPromise<JSAny?> forEach(
    Visitor callback, [
    SubscribeOptions options,
  ]);
  external JSPromise<JSBoolean> every(
    Predicate predicate, [
    SubscribeOptions options,
  ]);
  external JSPromise<JSAny?> first([SubscribeOptions options]);
  external JSPromise<JSAny?> last([SubscribeOptions options]);
  external JSPromise<JSAny?> find(
    Predicate predicate, [
    SubscribeOptions options,
  ]);
  external JSPromise<JSBoolean> some(
    Predicate predicate, [
    SubscribeOptions options,
  ]);
  external JSPromise<JSAny?> reduce(
    Reducer reducer, [
    JSAny? initialValue,
    SubscribeOptions options,
  ]);
}
extension type ObservableEventListenerOptions._(JSObject _)
    implements JSObject {
  external factory ObservableEventListenerOptions({
    bool capture,
    bool passive,
  });

  external bool get capture;
  external set capture(bool value);
  external bool get passive;
  external set passive(bool value);
}
