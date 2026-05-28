// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';

import '../../web.dart';

/// A Set that stores the CSS class names for an element.
abstract class CssClassSet implements Set<String> {
  /// Adds the class [value] to the element if it is not on it, removes it if it
  /// is.
  ///
  /// If [shouldAdd] is true, then we always add that [value] to the element. If
  /// [shouldAdd] is false then we always remove [value] from the element.
  ///
  /// If this corresponds to one element, returns `true` if [value] is present
  /// after the operation, and returns `false` if [value] is absent after the
  /// operation.
  ///
  /// If this CssClassSet corresponds to many elements, `false` is always
  /// returned.
  ///
  /// [value] must be a valid 'token' representing a single class, i.e. a
  /// non-empty string containing no whitespace.  To toggle multiple classes,
  /// use [toggleAll].
  bool toggle(String value, [bool? shouldAdd]);

  /// Returns true if classes cannot be added or removed from this
  /// [CssClassSet].
  bool get frozen;

  /// Determine if this element contains the class [value].
  ///
  /// This is the Dart equivalent of jQuery's
  /// [hasClass](http://api.jquery.com/hasClass/).
  ///
  /// [value] must be a valid 'token' representing a single class, i.e. a
  /// non-empty string containing no whitespace.
  @override
  bool contains(Object? value);

  /// Add the class [value] to element.
  ///
  /// [add] and [addAll] are the Dart equivalent of jQuery's
  /// [addClass](http://api.jquery.com/addClass/).
  ///
  /// If this CssClassSet corresponds to one element. Returns true if [value]
  /// was added to the set, otherwise false.
  ///
  /// If this CssClassSet corresponds to many elements, `false` is always
  /// returned.
  ///
  /// [value] must be a valid 'token' representing a single class, i.e. a
  /// non-empty string containing no whitespace.  To add multiple classes use
  /// [addAll].
  @override
  bool add(String value);

  /// Remove the class [value] from element, and return true on successful
  /// removal.
  ///
  /// [remove] and [removeAll] are the Dart equivalent of jQuery's
  /// [removeClass](http://api.jquery.com/removeClass/).
  ///
  /// [value] must be a valid 'token' representing a single class, i.e. a
  /// non-empty string containing no whitespace.  To remove multiple classes,
  /// use [removeAll].
  @override
  bool remove(Object? value);

  /// Add all classes specified in [iterable] to element.
  ///
  /// [add] and [addAll] are the Dart equivalent of jQuery's
  /// [addClass](http://api.jquery.com/addClass/).
  ///
  /// Each element of [iterable] must be a valid 'token' representing a single
  /// class, i.e. a non-empty string containing no whitespace.
  @override
  void addAll(Iterable<String> iterable);

  /// Remove all classes specified in [iterable] from element.
  ///
  /// [remove] and [removeAll] are the Dart equivalent of jQuery's
  /// [removeClass](http://api.jquery.com/removeClass/).
  ///
  /// Each element of [iterable] must be a valid 'token' representing a single
  /// class, i.e. a non-empty string containing no whitespace.
  @override
  void removeAll(Iterable<Object?> iterable);

  /// Toggles all classes specified in [iterable] on element.
  ///
  /// Iterate through [iterable]'s items, and add it if it is not on it, or
  /// remove it if it is. This is the Dart equivalent of jQuery's
  /// [toggleClass](http://api.jquery.com/toggleClass/). If [shouldAdd] is true,
  /// then we always add all the classes in [iterable] element. If [shouldAdd]
  /// is false then we always remove all the classes in [iterable] from the
  /// element.
  ///
  /// Each element of [iterable] must be a valid 'token' representing a single
  /// class, i.e. a non-empty string containing no whitespace.
  void toggleAll(Iterable<String> iterable, [bool? shouldAdd]);
}

abstract class CssClassSetImpl extends SetBase<String> implements CssClassSet {
  static final RegExp _validTokenRE = RegExp(r'^\S+$');

  String _validateToken(String value) {
    if (_validTokenRE.hasMatch(value)) return value;
    throw ArgumentError.value(value, 'value', 'Not a valid class token');
  }

  @override
  String toString() {
    return readClasses().join(' ');
  }

  /// Adds the class [value] to the element if it is not on it, removes it if it
  /// is.
  ///
  /// If [shouldAdd] is true, then we always add that [value] to the element. If
  /// [shouldAdd] is false then we always remove [value] from the element.
  @override
  bool toggle(String value, [bool? shouldAdd]) {
    _validateToken(value);
    final s = readClasses();
    var result = false;
    shouldAdd ??= !s.contains(value);
    if (shouldAdd) {
      s.add(value);
      result = true;
    } else {
      s.remove(value);
    }
    writeClasses(s);
    return result;
  }

  /// Returns true if classes cannot be added or removed from this
  /// [CssClassSet].
  @override
  bool get frozen => false;

  @override
  Iterator<String> get iterator => readClasses().iterator;

  @override
  void forEach(void Function(String element) f) {
    readClasses().forEach(f);
  }

  @override
  String join([String separator = '']) => readClasses().join(separator);

  @override
  Iterable<T> map<T>(T Function(String e) f) => readClasses().map<T>(f);

  @override
  Iterable<String> where(bool Function(String element) f) =>
      readClasses().where(f);

  @override
  Iterable<T> expand<T>(Iterable<T> Function(String element) f) =>
      readClasses().expand<T>(f);

  @override
  bool every(bool Function(String element) f) => readClasses().every(f);

  @override
  bool any(bool Function(String element) test) => readClasses().any(test);

  @override
  bool get isEmpty => readClasses().isEmpty;

  @override
  bool get isNotEmpty => readClasses().isNotEmpty;

  @override
  int get length => readClasses().length;

  @override
  String reduce(String Function(String value, String element) combine) {
    return readClasses().reduce(combine);
  }

  @override
  T fold<T>(
      T initialValue, T Function(T previousValue, String element) combine) {
    return readClasses().fold<T>(initialValue, combine);
  }

  /// Determine if this element contains the class [value].
  ///
  /// This is the Dart equivalent of jQuery's
  /// [hasClass](http://api.jquery.com/hasClass/).
  @override
  bool contains(Object? value) {
    if (value is! String) return false;
    _validateToken(value);
    return readClasses().contains(value);
  }

  /// Lookup from the Set interface. Not interesting for a String set.
  @override
  String? lookup(Object? value) => contains(value) ? value as String : null;

  /// Add the class [value] to element.
  ///
  /// This is the Dart equivalent of jQuery's
  /// [addClass](http://api.jquery.com/addClass/).
  @override
  bool add(String value) {
    _validateToken(value);
    // TODO - figure out if we need to do any validation here
    // or if the browser natively does enough.
    return modify((Set<String> s) => s.add(value)) ?? false;
  }

  /// Remove the class [value] from element, and return true on successful
  /// removal.
  ///
  /// This is the Dart equivalent of jQuery's
  /// [removeClass](http://api.jquery.com/removeClass/).
  @override
  bool remove(Object? value) {
    if (value is! String) return false;
    _validateToken(value);
    final s = readClasses();
    final result = s.remove(value);
    writeClasses(s);
    return result;
  }

  /// Add all classes specified in [iterable] to element.
  ///
  /// This is the Dart equivalent of jQuery's
  /// [addClass](http://api.jquery.com/addClass/).
  @override
  void addAll(Iterable<String> iterable) {
    // TODO - see comment above about validation.
    modify((s) => s.addAll(iterable.map(_validateToken)));
  }

  /// Remove all classes specified in [iterable] from element.
  ///
  /// This is the Dart equivalent of jQuery's
  /// [removeClass](http://api.jquery.com/removeClass/).
  @override
  void removeAll(Iterable<Object?> iterable) {
    modify((s) => s.removeAll(iterable));
  }

  /// Toggles all classes specified in [iterable] on element.
  ///
  /// Iterate through [iterable]'s items, and add it if it is not on it, or
  /// remove it if it is. This is the Dart equivalent of jQuery's
  /// [toggleClass](http://api.jquery.com/toggleClass/). If [shouldAdd] is true,
  /// then we always add all the classes in [iterable] element. If [shouldAdd]
  /// is false then we always remove all the classes in [iterable] from the
  /// element.
  @override
  void toggleAll(Iterable<String> iterable, [bool? shouldAdd]) {
    for (var e in iterable) {
      toggle(e, shouldAdd);
    }
  }

  @override
  void retainAll(Iterable<Object?> elements) {
    modify((s) => s.retainAll(elements));
  }

  @override
  void removeWhere(bool Function(String name) test) {
    modify((s) => s.removeWhere(test));
  }

  @override
  void retainWhere(bool Function(String name) test) {
    modify((s) => s.retainWhere(test));
  }

  @override
  bool containsAll(Iterable<Object?> other) => readClasses().containsAll(other);

  @override
  Set<String> intersection(Set<Object?> other) =>
      readClasses().intersection(other);

  @override
  Set<String> union(Set<String> other) => readClasses().union(other);

  @override
  Set<String> difference(Set<Object?> other) => readClasses().difference(other);

  @override
  String get first => readClasses().first;

  @override
  String get last => readClasses().last;

  @override
  String get single => readClasses().single;

  @override
  List<String> toList({bool growable = true}) =>
      readClasses().toList(growable: growable);

  @override
  Set<String> toSet() => readClasses().toSet();

  @override
  Iterable<String> take(int n) => readClasses().take(n);

  @override
  Iterable<String> takeWhile(bool Function(String value) test) =>
      readClasses().takeWhile(test);

  @override
  Iterable<String> skip(int n) => readClasses().skip(n);

  @override
  Iterable<String> skipWhile(bool Function(String value) test) =>
      readClasses().skipWhile(test);

  @override
  String firstWhere(bool Function(String value) test,
          {String Function()? orElse}) =>
      readClasses().firstWhere(test, orElse: orElse);

  @override
  String lastWhere(bool Function(String value) test,
          {String Function()? orElse}) =>
      readClasses().lastWhere(test, orElse: orElse);

  @override
  String singleWhere(bool Function(String value) test,
          {String Function()? orElse}) =>
      readClasses().singleWhere(test, orElse: orElse);

  @override
  String elementAt(int index) => readClasses().elementAt(index);

  @override
  void clear() {
    // TODO(sra): Do this without reading the classes.
    modify((s) => s.clear());
  }

  /// Helper method used to modify the set of css classes on this element.
  ///
  ///   f - callback with:
  ///   s - a Set of all the css class name currently on this element.
  ///
  ///   After f returns, the modified set is written to the
  ///       className property of this element.
  T modify<T>(T Function(Set<String>) f) {
    final s = readClasses();
    final ret = f(s);
    writeClasses(s);
    return ret;
  }

  /// Read the class names from the Element class property, and put them into a
  /// set (duplicates are discarded). This is intended to be overridden by
  /// specific implementations.
  Set<String> readClasses();

  /// Join all the elements of a set into one string and write
  /// back to the element.
  /// This is intended to be overridden by specific implementations.
  void writeClasses(Set<String> s);
}

class ElementCssClassSet extends CssClassSetImpl {
  final Element _element;

  ElementCssClassSet(this._element);

  @override
  Set<String> readClasses() {
    final s = <String>{};
    final classname = _element.className;

    for (final name in classname.split(' ')) {
      final trimmed = name.trim();
      if (trimmed.isNotEmpty) {
        s.add(trimmed);
      }
    }
    return s;
  }

  @override
  void writeClasses(Set<String> s) {
    _element.className = s.join(' ');
  }

  @override
  int get length => _element.classList.length;

  @override
  bool get isEmpty => length == 0;

  @override
  bool get isNotEmpty => length != 0;

  @override
  void clear() {
    _element.className = '';
  }

  @override
  bool contains(Object? value) {
    return _contains(_element, value);
  }

  @override
  bool add(String value) {
    return _add(_element, value);
  }

  @override
  bool remove(Object? value) {
    return value is String && _remove(_element, value);
  }

  @override
  bool toggle(String value, [bool? shouldAdd]) {
    return _toggle(_element, value, shouldAdd);
  }

  @override
  void addAll(Iterable<String> iterable) {
    _addAll(_element, iterable);
  }

  @override
  void removeAll(Iterable<Object?> iterable) {
    _removeAll(_element, iterable);
  }

  @override
  void retainAll(Iterable<Object?> elements) {
    _removeWhere(_element, elements.toSet().contains, false);
  }

  @override
  void removeWhere(bool Function(String name) test) {
    _removeWhere(_element, test, true);
  }

  @override
  void retainWhere(bool Function(String name) test) {
    _removeWhere(_element, test, false);
  }

  static bool _contains(Element element, Object? value) {
    return value is String && element.classList.contains(value);
  }

  @pragma('dart2js:tryInline')
  static bool _add(Element element, String value) {
    final list = element.classList;
    // Compute returned result independently of action upon the set.
    final added = !list.contains(value); // ** side-effects can be ignored
    list.add(value);
    return added;
  }

  @pragma('dart2js:tryInline')
  static bool _remove(Element element, String value) {
    final list = element.classList;
    final removed = !list.contains(value); // ** side-effects can be ignored
    list.remove(value);
    return removed;
  }

  static bool _toggle(Element element, String value, bool? shouldAdd) {
    // There is no value that can be passed as the second argument of
    // DomTokenList.toggle that behaves the same as passing one argument.
    // `null` is seen as false, meaning 'remove'.
    return shouldAdd == null
        ? _toggleDefault(element, value)
        : _toggleOnOff(element, value, shouldAdd);
  }

  static bool _toggleDefault(Element element, String value) {
    final list = element.classList;
    return list.toggle(value);
  }

  static bool _toggleOnOff(Element element, String value, bool? shouldAdd) {
    final list = element.classList;
    if (shouldAdd ?? false) {
      list.add(value);
      return true;
    } else {
      list.remove(value);
      return false;
    }
  }

  static void _addAll(Element element, Iterable<String> iterable) {
    final list = element.classList;
    for (var value in iterable) {
      list.add(value);
    }
  }

  static void _removeAll(Element element, Iterable<Object?> iterable) {
    final list = element.classList;
    for (var value in iterable) {
      list.remove(value as String);
    }
  }

  static void _removeWhere(
    Element element,
    bool Function(String name) test,
    bool doRemove,
  ) {
    final list = element.classList;
    var i = 0;
    while (i < list.length) {
      final item = list.item(i)!;
      if (doRemove == test(item)) {
        list.remove(item);
      } else {
        ++i;
      }
    }
  }
}
