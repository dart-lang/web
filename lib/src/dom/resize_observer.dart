// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library resize_observer;

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

  external void observe(
    Element target, [
    ResizeObserverOptions options,
  ]);
  external void unobserve(Element target);
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
