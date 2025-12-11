// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Helper layer library that includes additional extension methods on existing
/// `package:web` types.
///
/// The extensions here are added by hand over time, depending on needs and use
/// cases. They currently consist of:
///
///  * renames: methods that provide the same functionality, but use a more
///    idiomatic Dart name. Typically these renames match the names used in
///    `dart:html` in the past.
///
//// * operators: for example access local storage items using `operator[]`.
///
///  * helper logic: commonly these are methods that were very useful and
///    popular from `dart:html` (like the context2D getter in
///    `HTMLCanvasElement`).
///
///  * conversions: for example to wrap a `TouchList` as a `List<Touch>`
library;

import 'dart:convert';
import 'dart:js_interop';

import '../dom.dart';
import 'lists.dart';

export 'cross_origin.dart'
    show CrossOriginContentWindowExtension, CrossOriginWindowExtension;

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

extension XMLHttpRequestGlue on XMLHttpRequest {
  /// Returns all response headers as a key-value map.
  ///
  /// Multiple values for the same header key can be combined into one,
  /// separated by a comma and a space.
  ///
  /// See: https://xhr.spec.whatwg.org/#the-getresponseheader()-method
  Map<String, String> get responseHeaders {
    // from Closure's goog.net.Xhrio.getResponseHeaders.
    final headers = <String, String>{};
    final headersString = getAllResponseHeaders();
    for (final header in LineSplitter.split(headersString)
        .where((header) => header.isNotEmpty)) {
      final split = header.split(': ');
      if (split.length <= 1) {
        continue;
      }
      final key = split[0].toLowerCase();
      final value = split.skip(1).join(': ');
      headers.update(
        key,
        (oldValue) => '$oldValue, $value',
        ifAbsent: () => value,
      );
    }
    return headers;
  }
}

extension URLToUri on URL {
  /// Converts this to a Dart [Uri] object.
  Uri get toDart => Uri.parse(toString());
}

extension UriToURL on Uri {
  /// Converts this to a JavaScript [URL] object.
  ///
  /// Throws an [ArgumentError] if this isn't an absolute URL, since [URL] can
  /// only represent absolute URLs.
  URL get toJS {
    try {
      return URL(toString());
    } catch (_) {
      throw ArgumentError.value(this, 'this', '"$this" isn\'t a valid JS URL.');
    }
  }
}

extension NodeExtension on Node {
  /// Returns [childNodes] as a modifiable [List]
  List<Node> get childNodesAsList => JSLiveNodeListWrapper(this, childNodes);
}

extension ElementExtension on Element {
  /// Returns [children] as a modifiable [List]
  List<Element> get childrenAsList =>
      JSLiveNodeListWrapper<Element, HTMLCollection, Element>(this, children);
}
