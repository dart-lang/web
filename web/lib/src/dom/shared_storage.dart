// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

import 'fetch.dart';
import 'html.dart';
import 'turtledove.dart';

typedef SharedStorageResponse = JSAny;

/// The **`SharedStorageWorklet`** interface of the [Shared Storage API]
/// represents the shared storage worklet for the current origin.
///
/// `SharedStorageWorklet` does not have its own properties or methods. Rather,
/// it inherits the [Worklet.addModule] method from the [Worklet] interface.
/// This method is used for adding a module.
///
/// Unlike a regular [Worklet]:
///
/// - If the calling site has not included the Shared Storage API in a
///   [privacy sandbox enrollment process](https://developer.mozilla.org/en-US/docs/Web/Privacy/Guides/Privacy_sandbox/Enrollment),
///   calls to `sharedStorageWorklet.addModule()` will be rejected.
/// - `SharedStorageWorklet` allows only a single module to be added, for
///   privacy reasons. Even with a successful enrollment, repeated calls to
///   `addModule()` on the same shared storage worklet will be rejected.
///
/// `SharedStorageWorklet` is accessed via [WindowSharedStorage.worklet].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SharedStorageWorklet).
extension type SharedStorageWorklet._(JSObject _) implements Worklet, JSObject {
  external JSPromise<SharedStorageResponse> selectURL(
    String name,
    JSArray<SharedStorageUrlWithMetadata> urls, [
    SharedStorageRunOperationMethodOptions options,
  ]);
  external JSPromise<JSAny?> run(
    String name, [
    SharedStorageRunOperationMethodOptions options,
  ]);
}

/// The **`SharedStorageWorkletGlobalScope`** interface of the
/// [Shared Storage API] represents the global scope of a [SharedStorageWorklet]
/// module.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SharedStorageWorkletGlobalScope).
extension type SharedStorageWorkletGlobalScope._(JSObject _)
    implements WorkletGlobalScope, JSObject {
  /// The **`register()`** method of the
  /// [SharedStorageWorkletGlobalScope] interface registers an
  /// [SharedStorageOperation] defined inside the current worklet module.
  external void register(
    String name,
    JSFunction operationCtor,
  );
  external JSPromise<JSArray<StorageInterestGroup>> interestGroups();

  /// The **`context`** read-only property of the
  /// [SharedStorageWorkletGlobalScope] interface contains a
  /// [WorkletSharedStorage] object instance, which represents the shared
  /// storage for a particular origin as exposed to a worklet context.
  external SharedStorage get sharedStorage;
}
extension type SharedStorageUrlWithMetadata._(JSObject _) implements JSObject {
  external factory SharedStorageUrlWithMetadata({
    required String url,
    JSObject reportingMetadata,
  });

  external String get url;
  external set url(String value);
  external JSObject get reportingMetadata;
  external set reportingMetadata(JSObject value);
}
extension type SharedStorageModifierMethod._(JSObject _) implements JSObject {}
extension type SharedStorageSetMethod._(JSObject _)
    implements SharedStorageModifierMethod, JSObject {
  external factory SharedStorageSetMethod(
    String key,
    String value, [
    SharedStorageSetMethodOptions options,
  ]);
}
extension type SharedStorageAppendMethod._(JSObject _)
    implements SharedStorageModifierMethod, JSObject {
  external factory SharedStorageAppendMethod(
    String key,
    String value, [
    SharedStorageModifierMethodOptions options,
  ]);
}
extension type SharedStorageDeleteMethod._(JSObject _)
    implements SharedStorageModifierMethod, JSObject {
  external factory SharedStorageDeleteMethod(
    String key, [
    SharedStorageModifierMethodOptions options,
  ]);
}
extension type SharedStorageClearMethod._(JSObject _)
    implements SharedStorageModifierMethod, JSObject {
  external factory SharedStorageClearMethod(
      [SharedStorageModifierMethodOptions options]);
}
extension type SharedStorageModifierMethodOptions._(JSObject _)
    implements JSObject {
  external factory SharedStorageModifierMethodOptions({String withLock});

  external String get withLock;
  external set withLock(String value);
}
extension type SharedStorageSetMethodOptions._(JSObject _)
    implements SharedStorageModifierMethodOptions, JSObject {
  external factory SharedStorageSetMethodOptions({
    String withLock,
    bool ignoreIfPresent,
  });

  external bool get ignoreIfPresent;
  external set ignoreIfPresent(bool value);
}

/// The **`SharedStorage`** interface of the [Shared Storage API] represents the
/// shared storage for a particular origin, defining methods to write data to
/// the shared storage.
///
/// `SharedStorage` is the base class for:
///
/// - [WindowSharedStorage], accessed via [Window.sharedStorage].
/// - [WorkletSharedStorage], accessed via
///   [SharedStorageWorkletGlobalScope.sharedStorage].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SharedStorage).
extension type SharedStorage._(JSObject _) implements JSObject {
  external JSPromise<JSString> get(String key);

  /// The **`set()`** method of the [SharedStorage] interface either stores a
  /// new key-value pair in the current origin's shared storage or updates an
  /// existing one.
  external JSPromise<JSAny?> set(
    String key,
    String value, [
    SharedStorageSetMethodOptions options,
  ]);

  /// The **`append()`** method of the [SharedStorage] interface appends a
  /// string to the value of an existing key-value pair in the current origin's
  /// shared storage.
  external JSPromise<JSAny?> append(
    String key,
    String value, [
    SharedStorageModifierMethodOptions options,
  ]);

  /// The **`delete()`** method of the [SharedStorage] interface deletes an
  /// existing key-value pair from the current origin's shared storage.
  external JSPromise<JSAny?> delete(
    String key, [
    SharedStorageModifierMethodOptions options,
  ]);

  /// The **`clear()`** method of the [SharedStorage] interface clears the
  /// current origin's shared storage, removing all data from it.
  external JSPromise<JSAny?> clear(
      [SharedStorageModifierMethodOptions options]);
  external JSPromise<JSAny?> batchUpdate(
    JSArray<SharedStorageModifierMethod> methods, [
    SharedStorageModifierMethodOptions options,
  ]);
  external JSPromise<SharedStorageResponse> selectURL(
    String name,
    JSArray<SharedStorageUrlWithMetadata> urls, [
    SharedStorageRunOperationMethodOptions options,
  ]);
  external JSPromise<JSAny?> run(
    String name, [
    SharedStorageRunOperationMethodOptions options,
  ]);
  external JSPromise<SharedStorageWorklet> createWorklet(
    String moduleURL, [
    SharedStorageWorkletOptions options,
  ]);
  external SharedStorageWorklet get worklet;
}
extension type SharedStoragePrivateAggregationConfig._(JSObject _)
    implements JSObject {
  external factory SharedStoragePrivateAggregationConfig({
    String aggregationCoordinatorOrigin,
    String contextId,
    int filteringIdMaxBytes,
    int maxContributions,
  });

  external String get aggregationCoordinatorOrigin;
  external set aggregationCoordinatorOrigin(String value);
  external String get contextId;
  external set contextId(String value);
  external int get filteringIdMaxBytes;
  external set filteringIdMaxBytes(int value);
  external int get maxContributions;
  external set maxContributions(int value);
}
extension type SharedStorageRunOperationMethodOptions._(JSObject _)
    implements JSObject {
  external factory SharedStorageRunOperationMethodOptions({
    JSObject data,
    bool resolveToConfig,
    bool keepAlive,
    SharedStoragePrivateAggregationConfig privateAggregationConfig,
    String savedQuery,
  });

  external JSObject get data;
  external set data(JSObject value);
  external bool get resolveToConfig;
  external set resolveToConfig(bool value);
  external bool get keepAlive;
  external set keepAlive(bool value);
  external SharedStoragePrivateAggregationConfig get privateAggregationConfig;
  external set privateAggregationConfig(
      SharedStoragePrivateAggregationConfig value);
  external String get savedQuery;
  external set savedQuery(String value);
}
extension type SharedStorageWorkletOptions._(JSObject _)
    implements WorkletOptions, JSObject {
  external factory SharedStorageWorkletOptions({
    RequestCredentials credentials,
    String dataOrigin,
  });

  external String get dataOrigin;
  external set dataOrigin(String value);
}
