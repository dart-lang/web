// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'html.dart';

typedef SharedStorageResponse = JSAny;
typedef SharedStorageOperationConstructor = JSFunction;
extension type SharedStorageWorklet._(JSObject _)
    implements Worklet, JSObject {}
extension type SharedStorageWorkletGlobalScope._(JSObject _)
    implements WorkletGlobalScope, JSObject {
  /// The **`register()`** method of the
  /// [SharedStorageWorkletGlobalScope] interface registers an
  /// [SharedStorageOperation] defined inside the current worklet module.
  external void register(
    String name,
    SharedStorageOperationConstructor operationCtor,
  );
  external WorkletSharedStorage get sharedStorage;
}
extension type SharedStorageOperation._(JSObject _) implements JSObject {}
extension type SharedStorageRunOperationMethodOptions._(JSObject _)
    implements JSObject {
  external factory SharedStorageRunOperationMethodOptions({
    JSObject data,
    bool resolveToConfig,
    bool keepAlive,
  });

  external set data(JSObject value);
  external JSObject get data;
  external set resolveToConfig(bool value);
  external bool get resolveToConfig;
  external set keepAlive(bool value);
  external bool get keepAlive;
}
extension type SharedStorageRunOperation._(JSObject _)
    implements SharedStorageOperation, JSObject {
  /// The **`run()`** method of the
  /// [SharedStorageRunOperation] interface defines the structure to which the
  /// `run()` method defined inside a Run output gate operation should conform.
  external JSPromise run(JSObject data);
}
extension type SharedStorageSelectURLOperation._(JSObject _)
    implements SharedStorageOperation, JSObject {
  /// The **`run()`** method of the [SharedStorageSelectURLOperation] interface
  /// defines the structure to which the `run()` method defined inside a URL
  /// Selection output gate operation should conform.
  external JSPromise run(
    JSObject data,
    JSArray urls,
  );
}
extension type SharedStorage._(JSObject _) implements JSObject {
  /// The **`set()`** method of the [SharedStorage] interface either stores a
  /// new key-value pair in the current origin's shared storage or updates an
  /// existing one.
  external JSPromise set(
    String key,
    String value, [
    SharedStorageSetMethodOptions options,
  ]);

  /// The **`append()`** method of the [SharedStorage] interface appends a
  /// string to the value of an existing key-value pair in the current origin's
  /// shared storage.
  external JSPromise append(
    String key,
    String value,
  );

  /// The **`delete()`** method of the [SharedStorage] interface deletes an
  /// existing key-value pair from the current origin's shared storage.
  external JSPromise delete(String key);

  /// The **`clear()`** method of the [SharedStorage] interface clears the
  /// current origin's shared storage, removing all data from it.
  external JSPromise clear();
}
extension type SharedStorageSetMethodOptions._(JSObject _) implements JSObject {
  external factory SharedStorageSetMethodOptions({bool ignoreIfPresent});

  external set ignoreIfPresent(bool value);
  external bool get ignoreIfPresent;
}
extension type WindowSharedStorage._(JSObject _)
    implements SharedStorage, JSObject {
  /// The **`run()`** method of the
  /// [WindowSharedStorage] interface executes a
  /// [run operation](https://developer.mozilla.org/en-US/docs/Web/API/SharedStorageRunOperation)
  /// that is registered in a module added to the current origin's
  /// [SharedStorageWorklet].
  ///
  /// > **Note:** The
  /// > [Run output gate](https://developer.mozilla.org/en-US/docs/Web/API/Shared_Storage_API#run)
  /// > is intended as a generic way to process some shared storage data.
  external JSPromise run(
    String name, [
    SharedStorageRunOperationMethodOptions options,
  ]);

  /// The **`selectURL()`** method of the
  /// [WindowSharedStorage] interface executes a
  /// [URL Selection operation](https://developer.mozilla.org/en-US/docs/Web/API/SharedStorageSelectURLOperation)
  /// that is registered in a module added to the current origin's
  /// [SharedStorageWorklet].
  ///
  /// > **Note:** The
  /// > [URL Selection output gate](https://developer.mozilla.org/en-US/docs/Web/API/Shared_Storage_API#url_selection)
  /// > is used to select a URL from a provided list to display to the user,
  /// > based on shared storage data.
  external JSPromise selectURL(
    String name,
    JSArray urls, [
    SharedStorageRunOperationMethodOptions options,
  ]);
  external SharedStorageWorklet get worklet;
}
extension type SharedStorageUrlWithMetadata._(JSObject _) implements JSObject {
  external factory SharedStorageUrlWithMetadata({
    required String url,
    JSObject reportingMetadata,
  });

  external set url(String value);
  external String get url;
  external set reportingMetadata(JSObject value);
  external JSObject get reportingMetadata;
}
extension type WorkletSharedStorage._(JSObject _)
    implements SharedStorage, JSObject {
  /// The **`get()`** method of the
  /// [WorkletSharedStorage] interface retrieves a value from shared storage.
  external JSPromise get(String key);

  /// The **`length()`** method of the
  /// [WorkletSharedStorage] interface returns the number of entries currently
  /// stored in shared storage for the current origin.
  external JSPromise length();

  /// The **`remainingBudget()`** method of the
  /// [WorkletSharedStorage] interface returns the remaining navigation budget
  /// for the current origin.
  ///
  /// The navigation budget is the number of entropy bits permitted inside a
  /// `fencedframe` due to the [WindowSharedStorage.selectURL] calls per origin
  /// every 24 hours. This is not the same as the number of navigations; rather,
  /// it is based on the number of potential navigations in each call. Each time
  /// a `selectURL()` navigation occurs, the corresponding origin's budget
  /// decreases by the logarithm (base 2) of the number of URL choices.
  ///
  /// Navigation budget is a mechanism designed to limit the rate of leakage of
  /// cross-site data to the destination pages navigated to in
  /// [fenced frames](https://developer.mozilla.org/en-US/docs/Web/API/Fenced_Frame_API).
  external JSPromise remainingBudget();
}
