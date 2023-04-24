// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'geometry.dart';

typedef ResizeObserverCallback = JSFunction;
typedef ResizeObserverBoxOptions = JSString;

@JS()
@staticInterop
@anonymous
class ResizeObserverOptions {
  external factory ResizeObserverOptions({ResizeObserverBoxOptions box});
}

extension ResizeObserverOptionsExtension on ResizeObserverOptions {
  external set box(ResizeObserverBoxOptions value);
  external ResizeObserverBoxOptions get box;
}

@JS('ResizeObserver')
@staticInterop
class ResizeObserver {
  external factory ResizeObserver(ResizeObserverCallback callback);
}

extension ResizeObserverExtension on ResizeObserver {
  external JSVoid observe(
    Element target, [
    ResizeObserverOptions options,
  ]);
  external JSVoid unobserve(Element target);
  external JSVoid disconnect();
}

@JS('ResizeObserverEntry')
@staticInterop
class ResizeObserverEntry {}

extension ResizeObserverEntryExtension on ResizeObserverEntry {
  external Element get target;
  external DOMRectReadOnly get contentRect;
  external JSArray get borderBoxSize;
  external JSArray get contentBoxSize;
  external JSArray get devicePixelContentBoxSize;
}

@JS('ResizeObserverSize')
@staticInterop
class ResizeObserverSize {}

extension ResizeObserverSizeExtension on ResizeObserverSize {
  external JSNumber get inlineSize;
  external JSNumber get blockSize;
}
