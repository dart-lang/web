// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import '../../web.dart';

/// `dart:html` helpers that exposed `attributes` and `dataset` as `Map` types
/// and used `getAttribute` and `setAttribute` within.

abstract class AttributeMap extends MapBase<String, String> {
  final Element _element;

  AttributeMap(this._element);

  @override
  void addAll(Map<String, String> other) {
    other.forEach((k, v) {
      this[k] = v;
    });
  }

  @override
  Map<K, V> cast<K, V>() => Map.castFrom<String, String, K, V>(this);
  @override
  bool containsValue(Object? value) {
    for (var v in values) {
      if (value == v) {
        return true;
      }
    }
    return false;
  }

  @override
  String putIfAbsent(String key, String Function() ifAbsent) {
    if (!containsKey(key)) {
      this[key] = ifAbsent();
    }
    return this[key] as String;
  }

  @override
  void clear() {
    for (var key in keys) {
      remove(key);
    }
  }

  @override
  void forEach(void Function(String key, String value) action) {
    for (var key in keys) {
      final value = this[key];
      action(key, value as String);
    }
  }

  @override
  Iterable<String> get keys {
    // TODO: generate a lazy collection instead.
    final attributes = _element.attributes;
    final keys = <String>[];
    for (var i = 0, len = attributes.length; i < len; i++) {
      final attr = attributes.item(i) as Attr;
      if (_matches(attr)) {
        keys.add(attr.name);
      }
    }
    return keys;
  }

  @override
  Iterable<String> get values {
    // TODO: generate a lazy collection instead.
    final attributes = _element.attributes;
    final values = <String>[];
    for (var i = 0, len = attributes.length; i < len; i++) {
      final attr = attributes.item(i) as Attr;
      if (_matches(attr)) {
        values.add(attr.value);
      }
    }
    return values;
  }

  /// Returns true if there is no {key, value} pair in the map.
  @override
  bool get isEmpty {
    return length == 0;
  }

  /// Returns true if there is at least one {key, value} pair in the map.
  @override
  bool get isNotEmpty => !isEmpty;

  /// Checks to see if the node should be included in this map.
  bool _matches(Attr node);
}

/// Wrapper to expose [Element.attributes] as a typed map.
class ElementAttributeMap extends AttributeMap {
  ElementAttributeMap(super.element);

  @override
  bool containsKey(Object? key) {
    return key is String && _element.hasAttribute(key);
  }

  @override
  String? operator [](Object? key) {
    return _element.getAttribute(key as String);
  }

  @override
  void operator []=(String key, String value) {
    _element.setAttribute(key, value);
  }

  @override
  @pragma('dart2js:tryInline')
  String? remove(Object? key) => key is String ? _remove(_element, key) : null;

  /// The number of {key, value} pairs in the map.
  @override
  int get length {
    return keys.length;
  }

  @override
  bool _matches(Attr node) => node.namespaceURI == null;

  // Inline this because almost all call sites of [remove] do not use [value],
  // and the annotations on the `getAttribute` call allow it to be removed.
  @pragma('dart2js:tryInline')
  static String? _remove(Element element, String key) {
    final value = element.getAttribute(key);
    element.removeAttribute(key);
    return value;
  }
}

/// Provides a Map abstraction on top of data-* attributes, similar to the
/// dataSet in the old DOM.
class DataAttributeMap extends MapBase<String, String> {
  final Map<String, String> _attributes;

  DataAttributeMap(this._attributes);

  @override
  void addAll(Map<String, String> other) {
    other.forEach((k, v) {
      this[k] = v;
    });
  }

  @override
  Map<K, V> cast<K, V>() => Map.castFrom<String, String, K, V>(this);

  @override
  bool containsValue(Object? value) => values.any((v) => v == value);

  @override
  bool containsKey(Object? key) =>
      _attributes.containsKey(_attr(key as String));

  @override
  String? operator [](Object? key) => _attributes[_attr(key as String)];

  @override
  void operator []=(String key, String value) {
    _attributes[_attr(key)] = value;
  }

  @override
  String putIfAbsent(String key, String Function() ifAbsent) =>
      _attributes.putIfAbsent(_attr(key), ifAbsent);

  @override
  String? remove(Object? key) => _attributes.remove(_attr(key as String));

  @override
  void clear() {
    // Needs to operate on a snapshot since we are mutating the collection.
    for (var key in keys) {
      remove(key);
    }
  }

  @override
  void forEach(void Function(String key, String value) action) {
    _attributes.forEach((String key, String value) {
      if (_matches(key)) {
        action(_strip(key), value);
      }
    });
  }

  @override
  Iterable<String> get keys {
    final keys = <String>[];
    _attributes.forEach((String key, String value) {
      if (_matches(key)) {
        keys.add(_strip(key));
      }
    });
    return keys;
  }

  @override
  Iterable<String> get values {
    final values = <String>[];
    _attributes.forEach((String key, String value) {
      if (_matches(key)) {
        values.add(value);
      }
    });
    return values;
  }

  @override
  int get length => keys.length;

  @override
  bool get isEmpty => length == 0;

  @override
  bool get isNotEmpty => !isEmpty;

  // Helpers.
  String _attr(String key) => 'data-${_toHyphenedName(key)}';
  bool _matches(String key) => key.startsWith('data-');
  String _strip(String key) => _toCamelCase(key.substring(5));

  /// Converts a string name with hyphens into an identifier, by removing
  /// hyphens and capitalizing the following letter. Optionally [startUppercase]
  /// to capitalize the first letter.
  String _toCamelCase(String hyphenedName, {bool startUppercase = false}) {
    final segments = hyphenedName.split('-');
    final start = startUppercase ? 0 : 1;
    for (var i = start; i < segments.length; i++) {
      final segment = segments[i];
      if (segment.isNotEmpty) {
        // Character between 'a'..'z' mapped to 'A'..'Z'
        segments[i] = '${segment[0].toUpperCase()}${segment.substring(1)}';
      }
    }
    return segments.join();
  }

  /// Reverse of [toCamelCase].
  String _toHyphenedName(String word) {
    final sb = StringBuffer();
    for (var i = 0; i < word.length; i++) {
      final lower = word[i].toLowerCase();
      if (word[i] != lower && i > 0) sb.write('-');
      sb.write(lower);
    }
    return sb.toString();
  }
}
