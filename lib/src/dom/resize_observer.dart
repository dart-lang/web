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

/// The **`ResizeObserver`** interface reports changes to the dimensions of an
/// [Element]'s content or border box, or the bounding box of an [SVGElement].
///
/// > **Note:** The content box is the box in which content can be placed,
/// > meaning the border box minus the padding and border width. The border box
/// > encompasses the content, padding, and border. See
/// > [The box model](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/The_box_model)
/// > for further explanation.
@JS('ResizeObserver')
@staticInterop
class ResizeObserver {
  external factory ResizeObserver(ResizeObserverCallback callback);
}

extension ResizeObserverExtension on ResizeObserver {
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

/// `Resize Observer API`
///
/// The **`ResizeObserverSize`** interface of the [Resize Observer API] is used
/// by the [ResizeObserverEntry] interface to access the box sizing properties
/// of the element being observed.
///
/// > **Note:** In
/// > [multi-column layout](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_multicol_layout),
/// > which is a fragmented context, the sizing returned by `ResizeObserverSize`
/// > will be the size of the first column.
@JS('ResizeObserverSize')
@staticInterop
class ResizeObserverSize {}

extension ResizeObserverSizeExtension on ResizeObserverSize {
  external num get inlineSize;
  external num get blockSize;
}
