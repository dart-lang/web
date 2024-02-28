// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

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

/// The **`ResizeObserver`** interface reports changes to the dimensions of an
/// [Element]'s content or border box, or the bounding box of an [SVGElement].
///
/// > **Note:** The content box is the box in which content can be placed,
/// > meaning the border box minus the padding and border width. The border box
/// > encompasses the content, padding, and border. See
/// > [The box model](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/The_box_model)
/// > for further explanation.
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

/// The **`ResizeObserverEntry`** interface represents the object passed to the
/// [ResizeObserver.ResizeObserver] constructor's callback function, which
/// allows you to access the new dimensions of the [Element] or [SVGElement]
/// being observed.
extension type ResizeObserverEntry._(JSObject _) implements JSObject {
  external Element get target;
  external DOMRectReadOnly get contentRect;
  external JSArray<ResizeObserverSize> get borderBoxSize;
  external JSArray<ResizeObserverSize> get contentBoxSize;
  external JSArray<ResizeObserverSize> get devicePixelContentBoxSize;
}

/// The **`ResizeObserverSize`** interface of the [Resize Observer API] is used
/// by the [ResizeObserverEntry] interface to access the box sizing properties
/// of the element being observed.
///
/// > **Note:** In
/// > [multi-column layout](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_multicol_layout),
/// > which is a fragmented context, the sizing returned by `ResizeObserverSize`
/// > will be the size of the first column.
extension type ResizeObserverSize._(JSObject _) implements JSObject {
  external num get inlineSize;
  external num get blockSize;
}
