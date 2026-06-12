// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import '../../web.dart';

// Common `Map` types that were exposed through `dart:html`.

class StorageMap with MapMixin<String, String> implements Map<String, String> {
  final Storage _storage;

  StorageMap(this._storage);

  @override
  void addAll(Map<String, String> other) {
    other.forEach((k, v) {
      this[k] = v;
    });
  }

  @override
  bool containsValue(Object? value) => values.any((e) => e == value);

  @override
  bool containsKey(Object? key) => _storage.getItem(key as String) != null;

  @override
  String? operator [](Object? key) => _storage.getItem(key as String);

  @override
  void operator []=(String key, String value) {
    _storage.setItem(key, value);
  }

  @override
  String putIfAbsent(String key, String Function() ifAbsent) {
    if (!containsKey(key)) this[key] = ifAbsent();
    return this[key] as String;
  }

  @override
  String? remove(Object? key) {
    final value = this[key];
    _storage.removeItem(key as String);
    return value;
  }

  @override
  void clear() => _storage.clear();

  @override
  void forEach(void Function(String key, String value) action) {
    var i = 0;
    while (true) {
      final key = _storage.key(i);
      if (key == null) return;

      action(key, this[key]!);
      i++;
    }
  }

  @override
  Iterable<String> get keys {
    final keys = <String>[];
    forEach((k, v) => keys.add(k));
    return keys;
  }

  @override
  Iterable<String> get values {
    final values = <String>[];
    forEach((k, v) => values.add(v));
    return values;
  }

  @override
  int get length => _storage.length;

  @override
  bool get isEmpty => _storage.key(0) == null;

  @override
  bool get isNotEmpty => !isEmpty;
}
