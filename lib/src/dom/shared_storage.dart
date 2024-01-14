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
///   [privacy sandbox enrollment process](https://developer.mozilla.org/en-US/docs/Web/Privacy/Privacy_sandbox/Enrollment),
///   calls to `sharedStorageWorklet.addModule()` will be rejected.
/// - `SharedStorageWorklet` allows only a single module to be added, for
///   privacy reasons. Even with a successful enrollment, repeated calls to
///   `addModule()` on the same shared storage worklet will be rejected.
///
/// `SharedStorageWorklet` is accessed via [WindowSharedStorage.worklet].
@JS('SharedStorageWorklet')
@staticInterop
class SharedStorageWorklet implements Worklet {}

/// The **`SharedStorageWorkletGlobalScope`** interface of the
/// [Shared Storage API] represents the global scope of a [SharedStorageWorklet]
/// module.
@JS('SharedStorageWorkletGlobalScope')
@staticInterop
class SharedStorageWorkletGlobalScope implements WorkletGlobalScope {}

extension SharedStorageWorkletGlobalScopeExtension
    on SharedStorageWorkletGlobalScope {
  /// The **`register()`** method of the
  /// [SharedStorageWorkletGlobalScope] interface registers an
  /// [SharedStorageOperation] defined inside the current worklet module.
  external void register(
    String name,
    SharedStorageOperationConstructor operationCtor,
  );
  external WorkletSharedStorage get sharedStorage;
}

/// The **`SharedStorageOperation`** interface of the [Shared Storage API]
/// represents the base class for all output gate operation types.
///
/// The output gate types are detailed below:
///
/// <table class="no-markdown">
///   <thead>
///     <tr>
///       <th>Name</th>
///       <th>Description</th>
///       <th>Defined by</th>
///       <th>Invoked by</th>
///     </tr>
///   </thead>
///   <tbody>
///     <tr>
///       <td>URL Selection</td>
///       <td>Used to select a URL to display to the user based on shared storage data.</td>
///       <td>[SharedStorageSelectURLOperation]</td>
///       <td>[WindowSharedStorage.selectURL]</td>
///     </tr>
///     <tr>
///       <td>Run</td>
///       <td>A generic way to process some shared storage data. Used, for example, by the <a href="https://developer.chrome.com/docs/privacy-sandbox/private-aggregation/">Private Aggregation API</a> to process shared storage data and generate aggregated reports. </td>
///       <td>[SharedStorageRunOperation]</td>
///       <td>[WindowSharedStorage.run]</td>
///     </tr>
///   </tbody>
/// </table>
@JS('SharedStorageOperation')
@staticInterop
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

/// The **`SharedStorageRunOperation`** interface of the [Shared Storage API]
/// represents a
/// [Run output gate](https://developer.mozilla.org/en-US/docs/Web/API/Shared_Storage_API#run)
/// operation.
@JS('SharedStorageRunOperation')
@staticInterop
class SharedStorageRunOperation implements SharedStorageOperation {}

extension SharedStorageRunOperationExtension on SharedStorageRunOperation {
  /// The **`run()`** method of the
  /// [SharedStorageRunOperation] interface defines the structure to which the
  /// `run()` method defined inside a Run output gate operation should conform.
  external JSPromise run(JSObject data);
}

/// The **`SharedStorageSelectURLOperation`** interface of the
/// [Shared Storage API] represents a
/// [URL Selection output gate](https://developer.mozilla.org/en-US/docs/Web/API/Shared_Storage_API#url_selection)
/// operation.
@JS('SharedStorageSelectURLOperation')
@staticInterop
class SharedStorageSelectURLOperation implements SharedStorageOperation {}

extension SharedStorageSelectURLOperationExtension
    on SharedStorageSelectURLOperation {
  /// The **`run()`** method of the [SharedStorageSelectURLOperation] interface
  /// defines the structure to which the `run()` method defined inside a URL
  /// Selection output gate operation should conform.
  external JSPromise run(
    JSObject data,
    JSArray urls,
  );
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
@JS('SharedStorage')
@staticInterop
class SharedStorage {}

extension SharedStorageExtension on SharedStorage {
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

/// The **`WindowSharedStorage`** interface of the [Shared Storage API]
/// represents the shared storage for a particular origin within a standard
/// browsing context.
///
/// `WindowSharedStorage` is accessed via [Window.sharedStorage].
@JS('WindowSharedStorage')
@staticInterop
class WindowSharedStorage implements SharedStorage {}

extension WindowSharedStorageExtension on WindowSharedStorage {
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

/// The **`WorkletSharedStorage`** interface of the [Shared Storage API]
/// represents the shared storage for a particular origin within a worklet
/// context.
///
/// `WorkletSharedStorage` is accessed via
/// [SharedStorageWorkletGlobalScope.sharedStorage].
@JS('WorkletSharedStorage')
@staticInterop
class WorkletSharedStorage implements SharedStorage {}

extension WorkletSharedStorageExtension on WorkletSharedStorage {
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
