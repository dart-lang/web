// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'html.dart';

typedef SharedStorageResponse = JSAny;
typedef SharedStorageOperationConstructor = JSFunction;
extension type SharedStorageWorklet._(JSObject _)
    implements Worklet, JSObject {}
extension type SharedStorageWorkletGlobalScope._(JSObject _)
    implements WorkletGlobalScope, JSObject {
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
  external JSPromise run(JSObject data);
}
extension type SharedStorageSelectURLOperation._(JSObject _)
    implements SharedStorageOperation, JSObject {
  external JSPromise run(
    JSObject data,
    JSArray urls,
  );
}
extension type SharedStorage._(JSObject _) implements JSObject {
  external JSPromise set(
    String key,
    String value, [
    SharedStorageSetMethodOptions options,
  ]);
  external JSPromise append(
    String key,
    String value,
  );
  external JSPromise delete(String key);
  external JSPromise clear();
}
extension type SharedStorageSetMethodOptions._(JSObject _) implements JSObject {
  external factory SharedStorageSetMethodOptions({bool ignoreIfPresent});

  external set ignoreIfPresent(bool value);
  external bool get ignoreIfPresent;
}
extension type WindowSharedStorage._(JSObject _)
    implements SharedStorage, JSObject {
  external JSPromise run(
    String name, [
    SharedStorageRunOperationMethodOptions options,
  ]);
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
  external JSPromise get(String key);
  external JSPromise length();
  external JSPromise remainingBudget();
}
