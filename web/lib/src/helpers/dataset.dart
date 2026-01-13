// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import '../dom/html.dart';
import '../dom/svg.dart';

/// `_ElementWithDataset` is a wrapper around an Element with `dataset` getter
/// It is used to abstract `HTMLElement` and `SVGElement` in `NullableDatasetWrapper`
extension type _ElementWithDataset<T extends JSObject>(JSObject _)
    implements JSObject {
  external DOMStringMap get dataset;
  external bool hasAttribute(String qualifiedName);
  external void removeAttribute(String qualifiedName);
}

/// Provides nullable api on `DOMStringMap`
/// When data-* attribute is missing `[]` operator will return null instead of
/// throwing runtime exception.
/// It also allows to clear data-* attributes by setting value to `null`.
class NullableDatasetWrapper<T extends JSObject> {
  final _ElementWithDataset<T> _element;

  NullableDatasetWrapper._(T element)
      : _element = _ElementWithDataset<T>(element);

  String? operator [](String name) {
    if (_element.hasAttribute('data-$name')) {
      return _element.dataset[name];
    }
    return null;
  }

  void operator []=(String name, String? value) {
    if (value != null) {
      _element.dataset[name] = value;
    } else {
      _element.removeAttribute('data-$name');
    }
  }
}

extension HTMLElementDatasetExtension on HTMLElement {
  /// Wrapper for nullable dataset.
  NullableDatasetWrapper get data => NullableDatasetWrapper._(this);
}

extension SVGElementDatasetExtension on SVGElement {
  /// Wrapper for nullable dataset.
  NullableDatasetWrapper get data => NullableDatasetWrapper._(this);
}
