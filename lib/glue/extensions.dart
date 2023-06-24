// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Glue layer library that includes additional extension methods on existing
/// `package:web` types.
///
/// The extensions here are added by hand over time, depending on needs and use
/// cases. They currently consist of:
///  * renames: methods that provide the same functionaly, but use a more
///    idiomatic Dart name. Typically these renames match the names used in
///    `dart:html` in the past.
///
//// * operators: for exmaple access local storage items using `operator[]`.
///
///  * helper logic: commonly these are methods that were very useful and
///    popular from `dart:html` (like the context2D getter in
///    `HTMLCanvasElement`).
///
///  * conversions: for example to wrap a `TouchList` as a `List<Touch>`
library web.glue.extensions;

import 'dart:js_interop';
import 'dart:math' show Point;

import '../web.dart';
import 'lists.dart';

extension HTMLCanvasElementGlue on HTMLCanvasElement {
  CanvasRenderingContext2D get context2D =>
      getContext('2d') as CanvasRenderingContext2D;

  String toDataUrl(String type, [num? quality]) =>
      (quality == null) ? toDataURL(type) : toDataURL(type, quality.toJS);

  RenderingContext? getContext3d(
      {bool alpha = true,
      bool depth = true,
      bool stencil = false,
      bool antialias = true,
      bool premultipliedAlpha = true,
      bool preserveDrawingBuffer = false}) {
    final options = {
      'alpha': alpha,
      'depth': depth,
      'stencil': stencil,
      'antialias': antialias,
      'premultipliedAlpha': premultipliedAlpha,
      'preserveDrawingBuffer': preserveDrawingBuffer,
    }.jsify();
    return getContext('webgl', options) ??
        getContext('experimental-webgl', options);
  }
}

extension CanvasRenderingContext2DGlue on CanvasRenderingContext2D {
  void drawImageScaled(
    CanvasImageSource image,
    double dx,
    double dy,
    double dw,
    double dh,
  ) =>
      drawImage(image, dx, dy, dw, dh);
}

extension NodeGlue on Node {
  set text(String s) => textContent = s;
  void append(Node other) => appendChild(other);
  void clone(bool deep) => cloneNode(deep);
}

extension EventGlue on MouseEvent {
  Point get client => Point(clientX, clientY);
}

extension TouchGlue on Touch {
  Point get client => Point(clientX, clientY);
}

extension StorageGlue on Storage {
  String? operator [](String key) => getItem(key);
  void operator []=(String key, String value) => setItem(key, value);
}

extension TouchListConvert on TouchList {
  List<Touch> toList() => TouchListWrapper(this);
}
