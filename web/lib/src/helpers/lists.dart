// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:js_interop';
import '../dom/dom.dart';

/// `_JSList` acts as a wrapper around a JS list object providing an interface to
/// access the list items and list length while also allowing us to specify the
/// list item type from outside.
extension type _JSList<T extends JSObject>(JSObject _) implements JSObject {
  /// The **`item()`** method returns the [JSObject]
  /// at the specified index in the list.
  external T item(int index);

  /// The **`length`** read-only property indicates the number of
  /// items in a given list.
  external int get length;
}

/// A wrapper to present a JS immutable list of type `T` and list item type `U` as
/// a `List<U>`.
class JSImmutableListWrapper<T extends JSObject, U extends JSObject>
    with ListMixin<U> {
  final _JSList<U> _jsList;

  JSImmutableListWrapper(T original) : _jsList = _JSList<U>(original);

  @override
  int get length => _jsList.length;

  @override
  U operator [](int index) {
    if (index > length) {
      throw IndexError.withLength(index, length, indexable: this);
    }
    return _jsList.item(index);
  }

  @override
  void operator []=(int index, U value) {
    throw UnsupportedError('Cannot assign element of immutable List.');
  }

  @override
  set length(int value) {
    throw UnsupportedError('Cannot resize immutable List.');
  }

  @override
  U get first {
    if (length > 0) return _jsList.item(0);
    throw StateError('No elements');
  }

  @override
  U get last {
    final len = length;
    if (len > 0) return _jsList.item(len - 1);
    throw StateError('No elements');
  }

  @override
  U get single {
    if (length > 1) throw StateError('More than one element');
    return first;
  }
}

/// This mixin exists to avoid repetition in `NodeListListWrapper` and `HTMLCollectionListWrapper`
/// It can be also used for `HTMLCollection` and `NodeList` that is
/// [live](https://developer.mozilla.org/en-US/docs/Web/API/NodeList#live_vs._static_nodelists)
/// and can be safely modified at runtime.
/// This requires an instance of `P`, a container that elements would be added to or removed from.
abstract mixin class _LiveNodeListMixin<P extends Node, U extends Node> {
  P get _parent;
  _JSList<U> get _list;

  bool contains(Object? element) {
    // TODO(srujzs): migrate this ifs to isJSAny once we have it
    // ignore: invalid_runtime_check_with_js_interop_types
    if ((element is JSAny?) && (element?.isA<Node>() ?? false)) {
      if ((element as Node).parentNode == _parent) {
        return true;
      }
    }
    return false;
  }

  bool remove(Object? element) {
    if (contains(element)) {
      _parent.removeChild(element as Node);
      return true;
    } else {
      return false;
    }
  }

  int get length => _list.length;

  set length(int value) {
    if (value > length) {
      throw UnsupportedError('Cannot add empty nodes.');
    }
    for (var i = length - 1; i >= value; i--) {
      _parent.removeChild(_list.item(i));
    }
  }

  U operator [](int index) {
    if (index > length || index < 0) {
      throw IndexError.withLength(index, length, indexable: this);
    }
    return _list.item(index);
  }

  void operator []=(int index, U value) {
    RangeError.checkValidRange(index, null, length);
    _parent.replaceChild(value, _list.item(index));
  }

  void add(U value) {
    _parent.appendChild(value);
  }

  void removeRange(int start, int end) {
    RangeError.checkValidRange(start, end, length);
    for (var i = 0; i < end - start; i++) {
      _parent.removeChild(this[start]);
    }
  }

  U removeAt(int index) {
    final result = this[index];
    _parent.removeChild(result);
    return result;
  }

  void fillRange(int start, int end, [U? fill]) {
    // without cloning the element we would end up with one `fill` instance
    // this method does not make much sense in nodes lists
    throw UnsupportedError('Cannot fillRange on Node list');
  }

  U get last;

  U removeLast() {
    final result = last;
    _parent.removeChild(result);
    return result;
  }

  void removeWhere(bool Function(U element) test) {
    _filter(test, true);
  }

  void retainWhere(bool Function(U element) test) {
    _filter(test, false);
  }

  Iterator<U> get iterator;

  void _filter(bool Function(U element) test, bool removeMatching) {
    // This implementation of removeWhere/retainWhere is more efficient
    // than the default in ListBase. Child nodes can be removed in constant
    // time.
    final i = iterator;
    U? removeMe;
    while (i.moveNext()) {
      if (removeMe != null) {
        _parent.removeChild(removeMe);
        removeMe = null;
      }
      if (test(i.current) == removeMatching) {
        removeMe = i.current;
      }
    }
    if (removeMe != null) {
      _parent.removeChild(removeMe);
      removeMe = null;
    }
  }

  void insert(int index, U element) {
    if (index < 0 || index > length) {
      throw RangeError.range(index, 0, length);
    }
    if (index == length) {
      _parent.appendChild(element);
    } else {
      _parent.insertBefore(element, this[index]);
    }
  }

  void addAll(Iterable<U> iterable) {
    if (iterable is _LiveNodeListMixin) {
      final otherList = iterable as _LiveNodeListMixin;
      if (otherList._parent.strictEquals(_parent).toDart) {
        throw ArgumentError('Cannot add nodes from same parent');
      }
      // Optimized route for copying between nodes.
      for (var len = otherList.length; len > 0; --len) {
        _parent.appendChild(otherList._parent.firstChild!);
      }
    }

    for (var element in iterable) {
      _parent.appendChild(element);
    }
  }

  void insertAll(int index, Iterable<U> iterable) {
    if (index == length) {
      addAll(iterable);
    } else {
      final child = this[index];
      if (iterable is _LiveNodeListMixin) {
        final otherList = iterable as _LiveNodeListMixin;
        if (otherList._parent.strictEquals(_parent).toDart) {
          throw ArgumentError('Cannot add nodes from same parent');
        }
        // Optimized route for copying between nodes.
        for (var len = otherList.length; len > 0; --len) {
          _parent.insertBefore(otherList._parent.firstChild!, child);
        }
      } else {
        for (var node in iterable) {
          _parent.insertBefore(node, child);
        }
      }
    }
  }
}

/// Allows iterating `HTMLCollection` with `nextElementSibling` for optimisation and easier encapsulation
class _HTMLCollectionIterator implements Iterator<Element> {
  @override
  Element get current => _current!;

  Element? _current;
  bool start = true;

  _HTMLCollectionIterator(this._current);

  @override
  bool moveNext() {
    if (start) {
      start = false;
    } else {
      _current = _current?.nextElementSibling;
    }
    return _current != null;
  }
}

/// Wrapper for `HTMLCollection` returned from `children` that implements modifiable list interface and allows easier DOM manipulation.
/// This is loosely based on `_ChildrenElementList` from `dart:html` to preserve compatibility
class HTMLCollectionListWrapper
    with ListMixin<Element>, _LiveNodeListMixin<Element, Element> {
  @override
  final Element _parent;
  @override
  _JSList<Element> get _list => _JSList<Element>(_htmlCollection);

  final HTMLCollection _htmlCollection;

  HTMLCollectionListWrapper(this._parent, this._htmlCollection);

  @override
  Iterator<Element> get iterator =>
      _HTMLCollectionIterator(_parent.firstElementChild);

  @override
  bool get isEmpty {
    return _parent.firstElementChild == null;
  }

  @override
  Element get first {
    final result = _parent.firstElementChild;
    if (result == null) throw StateError('No elements');
    return result;
  }

  @override
  Element get last {
    final result = _parent.lastElementChild;
    if (result == null) throw StateError('No elements');
    return result;
  }

  @override
  Element get single {
    final l = length;
    if (l == 0) throw StateError('No elements');
    if (l > 1) throw StateError('More than one element');
    return _parent.firstElementChild!;
  }

  @override
  void clear() {
    while (_parent.firstElementChild != null) {
      _parent.removeChild(_parent.firstElementChild!);
    }
  }
}

/// Allows iterating `NodeList` with `nextSibling` for optimisation and easier encapsulation
class _NodeListIterator implements Iterator<Node> {
  @override
  Node get current => _current!;

  Node? _current;
  bool start = true;

  _NodeListIterator(this._current);

  @override
  bool moveNext() {
    if (start) {
      start = false;
    } else {
      _current = _current?.nextSibling;
    }
    return _current != null;
  }
}

/// Wrapper for `NodeList` returned from `childNodes` that implements modifiable list interface and allows easier DOM manipulation.
/// This is loosely based on `_ChildNodeListLazy` from `dart:html` to preserve compatibility
class NodeListListWrapper with ListMixin<Node>, _LiveNodeListMixin<Node, Node> {
  @override
  final Node _parent;
  @override
  _JSList<Node> get _list => _JSList<Node>(_nodeList);

  final NodeList _nodeList;

  NodeListListWrapper(this._parent, this._nodeList);

  @override
  Iterator<Node> get iterator => _NodeListIterator(_parent.firstChild);

  @override
  bool get isEmpty {
    return _parent.firstChild == null;
  }

  @override
  Node get first {
    final result = _parent.firstChild;
    if (result == null) throw StateError('No elements');
    return result;
  }

  @override
  Node get last {
    final result = _parent.lastChild;
    if (result == null) throw StateError('No elements');
    return result;
  }

  @override
  Node get single {
    final l = length;
    if (l == 0) throw StateError('No elements');
    if (l > 1) throw StateError('More than one element');
    return _parent.firstChild!;
  }

  @override
  void clear() {
    while (_parent.firstChild != null) {
      _parent.removeChild(_parent.firstChild!);
    }
  }
}
