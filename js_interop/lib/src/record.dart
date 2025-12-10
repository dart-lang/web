// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'unsafe/object.dart';

/// A JavaScript "record type", or in other words an object that's used as a
/// lightweight map.
///
/// This provides a map-like API and utilities for interacting with records, as
/// well as a [toDart] method for converting it into a true map. It considers
/// the object's keys to be its enumerable, own, string properties (following
/// `Object.keys()`).
///
/// In most cases, JS records only accept string keys, and this type is
/// optimized to make this case easy to work with by automatically wrapping and
/// unwrapping [JSString]s. However, there are cases where [JSSymbol]s are used
/// as keys, in which case [JSSymbolicRecord] may be used instead.
///
/// Because this is a JavaScript object it follows JavaScript ordering
/// semantics. Specifically: all number-like keys come first in numeric order,
/// then all string keys in insertion order.
///
/// **Note:** Like Dart collections, it's not guaranteed to be safe to modify
/// this while iterating over it. Unlike Dart collections, it doesn't have any
/// fail-safes to throw errors if this happens. So be extra careful!
extension type JSRecord<V extends JSAny?>._(JSObject _) implements JSObject {
  /// Returns an iterable over tuples of the `key`/`value` pairs in this record.
  Iterable<(String, V)> get pairs => JSObjectUnsafeExtension(this).entries.cast<(String, V)>();

  /// See [Map.entries].
  Iterable<MapEntry<String, V>> get entries sync* {
    for (var (key, value) in pairs) {
      yield MapEntry(key, value);
    }
  }

  /// See [Map.isEmpty].
  bool get isEmpty => length == 0;

  /// See [Map.isNotEmpty].
  bool get isNotEmpty => length != 0;

  /// See [Map.keys].
  Iterable<String> get keys sync* {
    for (var key in JSObjectUnsafeExtension(this).keys) {
      yield key.toDart;
    }
  }

  /// See [Map.length].
  int get length => keys.length;

  /// See [Map.values].
  Iterable<V> get values => JSObjectUnsafeExtension(this).values.cast<V>();

  /// Creates a new Dart map with the same contents as this record.
  Map<String, V> get toDart => {for (var (key, value) in pairs) key: value};

  /// Creates a new, empty record.
  factory JSRecord() => JSRecord._(JSObject());

  /// Creates a [JSRecord] with the same keys and values as [other].
  static JSRecord<V> ofRecord<V extends JSAny?>(JSRecord<V> other) =>
      JSRecord<V>()..addAllRecord(other);

  /// Like [Map.of], but creates a record.
  static JSRecord<V> ofMap<V extends JSAny?>(Map<String, V> other) =>
      JSRecord.fromEntries<V>(other.entries);

  /// Like [Map.fromEntries], but creates a record.
  static JSRecord<V> fromEntries<V extends JSAny?>(
    Iterable<MapEntry<String, V>> entries,
  ) => JSRecord<V>()..addEntries(entries);

  /// Creates a new record and adds all the [pairs].
  ///
  /// If multiple pairs have the same key, later occurrences overwrite the value
  /// of the earlier ones.
  static JSRecord<V> fromPairs<V extends JSAny?>(Iterable<(String, V)> pairs) =>
      JSRecord<V>()..addPairs(pairs);

  /// See [Map.addAll].
  void addAll(Map<String, V> other) => addEntries(other.entries);

  /// Adds all enumerable, own, string key/value pairs of [other] to this
  /// record.
  ///
  /// If a key of [other] is already in this record, its value is overwritten.
  ///
  /// The operation is equivalent to doing `this[key] = value` for each key and
  /// associated value in [other]. It iterates over [other], which must therefore
  /// not change during the iteration.
  void addAllRecord(JSRecord<V> other) => addPairs(other.pairs);

  /// See [Map.addEntries].
  void addEntries(Iterable<MapEntry<String, V>> entries) {
    for (var MapEntry(key: key, value: value) in entries) {
      this[key] = value;
    }
  }

  /// Adds all key/value pairs of [newPairs] to this record.
  ///
  /// If a key of [newPairs] is already in this record, the corresponding value
  /// is overwritten.
  ///
  /// The operation is equivalent to doing `this[entry.key] = entry.value` for
  /// each pair of the iterable.
  void addPairs(Iterable<(String, V)> newPairs) {
    for (var (key, value) in newPairs) {
      this[key] = value;
    }
  }

  /// See [Map.clear].
  void clear() {
    for (var key in keys) {
      delete(key.toJS);
    }
  }

  /// See [Map.containsKey].
  bool containsKey(Object? key) =>
      key is String && propertyIsEnumerable(key.toJS);

  /// See [Map.containsValue].
  bool containsValue(Object? value) => values.any((actual) => actual == value);

  /// See [Map.forEach].
  void forEach(void action(String key, V value)) {
    for (var (key, value) in pairs) {
      action(key, value);
    }
  }

  /// See [Map.map].
  Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> convert(String key, V value)) =>
      Map.fromEntries(pairs.map((pair) => convert(pair.$1, pair.$2)));

  /// See [Map.putIfAbsent].
  V putIfAbsent(String key, V ifAbsent()) {
    if (containsKey(key)) return this[key]!;
    var result = ifAbsent();
    this[key] = result;
    return result;
  }

  /// See [Map.remove].
  V? remove(Object? key) {
    if (!containsKey(key)) return null;
    var value = this[key];
    delete((key as String).toJS);
    return value;
  }

  /// See [Map.removeWhere].
  void removeWhere(bool test(String key, V value)) {
    for (var (key, value) in pairs) {
      if (test(key, value)) delete(key.toJS);
    }
  }

  /// See [Map.update].
  V update(String key, V update(V value), {V ifAbsent()?}) {
    if (containsKey(key)) {
      return this[key] = update(this[key]!);
    } else if (ifAbsent == null) {
      throw new ArgumentError("ifAbsent must be passed if the key is absent.");
    } else {
      return this[key] = ifAbsent();
    }
  }

  /// See [Map.updateAll].
  void updateAll(V update(String key, V value)) {
    for (var (key, value) in pairs) {
      this[key] = update(key, value);
    }
  }

  /// See [Map.operator[]].
  V? operator [](Object? key) =>
      key is String ? getProperty(key.toJS) as V? : null;

  /// See [Map.operator[]=].
  void operator []=(String key, V value) => setProperty(key.toJS, value);
}
