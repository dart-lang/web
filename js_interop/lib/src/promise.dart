// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

/// Extensions to [JSPromise] that provide more access to built-in APIs.
extension JSPromiseExtension<T extends JSAny?> on JSPromise<T> {
  /// See [`Promise.catch`].
  ///
  /// [`Promise.catch`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/catch
  @JS('catch')
  external JSPromise<T> catchError(
    JSFunction<JSAny? Function(JSAny?)> onRejected,
  );

  /// See [`Promise.finally`].
  ///
  /// [`Promise.finally`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/finally
  @JS('finally')
  external JSPromise<T> finallyCall(JSFunction<void Function()> onFinally);

  /// See [`Promise.then`].
  ///
  /// [`Promise.then`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/then
  external JSPromise<S> then<S extends JSAny?>(
    JSFunction<JSAny? Function(T)> onFulfilled, [
    JSFunction<JSAny? Function(JSAny?)> onRejected,
  ]);
}
