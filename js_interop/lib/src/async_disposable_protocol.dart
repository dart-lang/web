// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

// TODO(nweiz): Use JSSymbol.asyncDispose once it's available.
@JS('Symbol.asyncDispose')
external JSSymbol get _asyncDispose;

/// The `AsyncDisposable` type from the ECMAScript [explicit resource
/// management] feature.
///
/// [explicit resource management]: https://github.com/tc39/proposal-explicit-resource-management
extension type JSAsyncDisposableProtocol._(JSObject _) implements JSObject {
  /// The [`@@asyncDispose`] function that disposes this object.
  ///
  /// [`@@asyncDispose`]: https://tc39.es/proposal-explicit-resource-management/#table-asyncdisposable-interface-required-properties
  JSPromise<Null> asyncDispose() => callMethod(_asyncDispose);
}

/// An extension for [JSAsyncDisposableProtocol] to provide an analog to JavaScript's
/// `await using` declaration.
extension JSAsyncDisposableUse<T extends JSAsyncDisposableProtocol> on T {
  /// Passes [this] to [callback] and disposes of it after the callback
  /// completes (even if it produces an error).
  ///
  /// If [callback] returns a `Future`, [this] is instead disposed after that
  /// future completes.
  ///
  /// This is intended to provide similar functionality to JavaScript's [`await
  /// using`] declaration. It's recommended that the variable passed to the
  /// callback be the only binding for this [AsyncDisposable] so that it's
  /// guaranteed to be disposed if and only if it can't be referenced. For example:
  ///
  /// [`await using`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/await_using
  ///
  /// ```dart
  /// void main() {
  ///   database.connect().use((db) {
  ///     db.store(Record());
  ///   });
  /// }
  /// ```
  Future<R> use<R>(FutureOr<R> Function(T) callback) => Future.sync(
    () => callback(this),
  ).whenComplete(() => asyncDispose().toDart);
}
