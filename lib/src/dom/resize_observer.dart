// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'geometry.dart';

typedef ResizeObserverCallback = JSFunction;
typedef ResizeObserverBoxOptions = String;
extension type ResizeObserverOptions._(JSObject _) implements JSObject {
  external factory ResizeObserverOptions({ResizeObserverBoxOptions box});

  external set box(ResizeObserverBoxOptions value);
  external ResizeObserverBoxOptions get box;
}
extension type ResizeObserver._(JSObject _) implements JSObject {
  external factory ResizeObserver(ResizeObserverCallback callback);

  /// The **`observe()`** method of the
  /// [ResizeObserver] interface starts observing the specified
  /// [Element] or [SVGElement].
  external void observe(
    Element target, [
    ResizeObserverOptions options,
  ]);

  /// The **`unobserve()`** method of the
  /// [ResizeObserver] interface ends the observing of a specified
  /// [Element] or [SVGElement].
  external void unobserve(Element target);

  /// The **`disconnect()`** method of the
  /// [ResizeObserver] interface unobserves all observed [Element]
  /// or [SVGElement] targets.
  external void disconnect();
}
extension type ResizeObserverEntry._(JSObject _) implements JSObject {
  external Element get target;
  external DOMRectReadOnly get contentRect;
  external JSArray get borderBoxSize;
  external JSArray get contentBoxSize;
  external JSArray get devicePixelContentBoxSize;
}
extension type ResizeObserverSize._(JSObject _) implements JSObject {
  external num get inlineSize;
  external num get blockSize;
}
