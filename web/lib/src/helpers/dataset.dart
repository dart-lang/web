// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import '../dom/html.dart';
import '../dom/svg.dart';

/// Provides nullable api on `DOMStringMap`.
/// When data-* attribute is missing, `[]` operator will return null.
/// It also allows to remove data-* attributes by using `remove()`.
extension type NullableDOMStringMap._(JSObject _) implements JSObject {
  /// `DOMStringMap` returns non nullable `DOMString` from getter.
  /// It returns `undefined` when given key does not exist.
  /// As in Dart there is no `undefined` we return null in such case.
  external String? operator [](String name);

  external void operator []=(
    String name,
    String value,
  );

  /// `DomStringMap` uses unnamed deleter that cant be mapped to dart.
  /// This allows calling js `delete` operator on dataset.
  String? remove(String name) {
    final ret = this[name];
    delete(name.toJS);
    return ret;
  }
}

extension HTMLElementDatasetExtension on HTMLElement {
  /// Wrapper for nullable [dataset]. See [NullableDOMStringMap] for details.
  @JS('dataset')
  external NullableDOMStringMap get data;
}

extension SVGElementDatasetExtension on SVGElement {
  /// Wrapper for nullable dataset. See [NullableDOMStringMap] for details.
  @JS('dataset')
  external NullableDOMStringMap get data;
}
