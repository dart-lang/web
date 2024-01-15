// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'html.dart';
import 'status.dart';

typedef SharedStorageResponse = JSAny;
typedef SharedStorageOperationConstructor = JSFunction;

@JS('SharedStorageWorklet')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class SharedStorageWorklet implements Worklet {}

@JS('SharedStorageWorkletGlobalScope')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class SharedStorageWorkletGlobalScope implements WorkletGlobalScope {}

extension SharedStorageWorkletGlobalScopeExtension
    on SharedStorageWorkletGlobalScope {
  external void register(
    String name,
    SharedStorageOperationConstructor operationCtor,
  );
  external WorkletSharedStorage get sharedStorage;
}

@JS('SharedStorageOperation')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class SharedStorageOperation {}

@JS()
@staticInterop
@anonymous
class SharedStorageRunOperationMethodOptions {
  external factory SharedStorageRunOperationMethodOptions({
    JSObject data,
    bool resolveToConfig,
    bool keepAlive,
  });
}

extension SharedStorageRunOperationMethodOptionsExtension
    on SharedStorageRunOperationMethodOptions {
  external set data(JSObject value);
  external JSObject get data;
  external set resolveToConfig(bool value);
  external bool get resolveToConfig;
  external set keepAlive(bool value);
  external bool get keepAlive;
}

@JS('SharedStorageRunOperation')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class SharedStorageRunOperation implements SharedStorageOperation {}

extension SharedStorageRunOperationExtension on SharedStorageRunOperation {
  external JSPromise run(JSObject data);
}

@JS('SharedStorageSelectURLOperation')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class SharedStorageSelectURLOperation implements SharedStorageOperation {}

extension SharedStorageSelectURLOperationExtension
    on SharedStorageSelectURLOperation {
  external JSPromise run(
    JSObject data,
    JSArray urls,
  );
}

@JS('SharedStorage')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class SharedStorage {}

extension SharedStorageExtension on SharedStorage {
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

@JS()
@staticInterop
@anonymous
class SharedStorageSetMethodOptions {
  external factory SharedStorageSetMethodOptions({bool ignoreIfPresent});
}

extension SharedStorageSetMethodOptionsExtension
    on SharedStorageSetMethodOptions {
  external set ignoreIfPresent(bool value);
  external bool get ignoreIfPresent;
}

@JS('WindowSharedStorage')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class WindowSharedStorage implements SharedStorage {}

extension WindowSharedStorageExtension on WindowSharedStorage {
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

@JS()
@staticInterop
@anonymous
class SharedStorageUrlWithMetadata {
  external factory SharedStorageUrlWithMetadata({
    required String url,
    JSObject reportingMetadata,
  });
}

extension SharedStorageUrlWithMetadataExtension
    on SharedStorageUrlWithMetadata {
  external set url(String value);
  external String get url;
  external set reportingMetadata(JSObject value);
  external JSObject get reportingMetadata;
}

@JS('WorkletSharedStorage')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class WorkletSharedStorage implements SharedStorage {}

extension WorkletSharedStorageExtension on WorkletSharedStorage {
  external JSPromise get(String key);
  external JSPromise length();
  external JSPromise remainingBudget();
}
