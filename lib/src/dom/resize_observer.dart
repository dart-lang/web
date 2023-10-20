// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'geometry.dart';

typedef ResizeObserverCallback = JSFunction;
typedef ResizeObserverBoxOptions = String;

@JS()
@staticInterop
@anonymous
class ResizeObserverOptions implements JSObject {
  external factory ResizeObserverOptions({ResizeObserverBoxOptions box});
}

extension ResizeObserverOptionsExtension on ResizeObserverOptions {
  external set box(ResizeObserverBoxOptions value);
  external ResizeObserverBoxOptions get box;
}

@JS('ResizeObserver')
@staticInterop
class ResizeObserver implements JSObject {
  external factory ResizeObserver(ResizeObserverCallback callback);
}

extension ResizeObserverExtension on ResizeObserver {
  external void observe(
    Element target, [
    ResizeObserverOptions options,
  ]);
  external void unobserve(Element target);
  external void disconnect();
}

@JS('ResizeObserverEntry')
@staticInterop
class ResizeObserverEntry implements JSObject {}

extension ResizeObserverEntryExtension on ResizeObserverEntry {
  external Element get target;
  external DOMRectReadOnly get contentRect;
  external JSArray get borderBoxSize;
  external JSArray get contentBoxSize;
  external JSArray get devicePixelContentBoxSize;
}

@JS('ResizeObserverSize')
@staticInterop
class ResizeObserverSize implements JSObject {}

extension ResizeObserverSizeExtension on ResizeObserverSize {
  external num get inlineSize;
  external num get blockSize;
}
