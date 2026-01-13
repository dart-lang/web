// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import '../dom/html.dart';
import '../dom/mathml_core.dart';
import '../dom/svg.dart';

/// Provides nullable api on `DOMStringMap`.
///
/// Native `DOMStringMap` returns non nullable `DOMString` from getter and
/// returns `undefined` when given key does not exist. As in Dart there is no
/// `undefined`, this wrapper will return null in such case.
/// This extension also allows removing `dataset` elements.
extension type NullableDOMStringMap._(JSObject _) implements JSObject {
  /// Retrieves `dataset` element.
  ///
  /// When it is not set (`data-*` attribute is missing) returns `null`.
  external String? operator [](String name);

  void operator []=(
    String name,
    String? value,
  ) {
    if (value != null) {
      setProperty(name.toJS, value.toJS);
    } else {
      remove(name);
    }
  }

  /// Removes `dataset` element (and corresponding `data-*` attribute)
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
  /// Wrapper for nullable [dataset]. See [NullableDOMStringMap] for details.
  @JS('dataset')
  external NullableDOMStringMap get data;
}

extension MathMLElementDatasetExtension on MathMLElement {
  /// Wrapper for nullable [dataset]. See [NullableDOMStringMap] for details.
  @JS('dataset')
  external NullableDOMStringMap get data;
}
