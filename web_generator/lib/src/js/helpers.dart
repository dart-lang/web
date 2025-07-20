import 'dart:collection';
import 'dart:js_interop';

/// A JS [Iterator](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Iterator)
/// There is no definition of the Iterator protocol in JS as it is **hidden**, and implementations inherit from its prototype
///
/// This can be used as the base type used for implementing iterators used in Arrays, Maps, etc
/// which can then be translated to iterator interfaces and more used in `dart:core`, `dart:async` and `dart:typed_data`
///
/// The thing is: JavaScript handles iterators and their usage differently from how Dart does
///
/// When doing `for of` loops in JS, you use the `Iterator` itself, while in Dart, you use an `Iterable` (or `Stream` for `await for of`)
///
/// Implementations converting an `Iterator` to both a Dart `Iterator` and `Iterable` are available
@JS('Iterator')
extension type JSIterator<T extends JSAny>._(JSObject _) implements JSObject {
  external factory JSIterator.from(JSIterator object);

  external JSIteratorResult<T> next([T value]);

  // MDN says the rest are optional, but they are here for completeness.
  // I've seen that `return` is useful when converting to Dart types, but most likely not `throw`
  @JS('return')
  external JSIteratorResult<T> return$([T value]);
}

extension type JSIteratorResult<T extends JSAny>._(JSObject _)
    implements JSObject {
  external JSIteratorResult({bool done, T value});
  external bool get done;
  external T get value;
}

extension ToDartIterableIterator<T extends JSAny> on JSIterator<T> {
  Iterator<T> get toDart => JSIteratorRep<T>._(this);
  // TODO: Upgrade to SDK 3.8 to use `Iterable.withIterator`
  Iterable<T> get toDartIterable => iterableFromIterator(toDart);
}

Iterable<T> iterableFromIterator<T>(Iterator<T> iterator) sync* {
  while (iterator.moveNext()) {
    yield iterator.current;
  }
}

class JSIteratorRep<T extends JSAny> implements Iterator<T> {
  JSIterator<T> iterator;

  bool isDone = false;
  T? _currentValue;

  JSIteratorRep._(this.iterator);

  @override
  T get current {
    if (isDone) {
      throw Exception('Stream Iterator Done');
    } else if (_currentValue == null) {
      throw Exception('No value');
    } else {
      return _currentValue!;
    }
  }

  @override
  bool moveNext() {
    final value = iterator.next();
    if (value.done) {
      _currentValue = null;
      isDone = true;
    } else {
      _currentValue = value.value;
    }
    return !value.done;
  }
}

/// A JS [Map](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map)
///
@JS('Map')
extension type JSMap<K extends JSAny, V extends JSAny>._(JSObject _)
    implements JSIterator {
  // TODO: We could optimize this and make the property `JSArray<JSTuple2<K, V>>`
  external JSMap([JSArray<JSArray<JSAny>> iterable]);

  external int get size;

  external bool delete(K key);
  external bool has(K key);
  external V? get(K key);
  external JSMap<K, V> set(K key, V value);
  external void clear();

  external JSIterator<K> keys();
  external JSIterator<V> values();
}

extension JSMapToMap<K extends JSAny, V extends JSAny> on JSMap<K, V> {
  Map<K, V> get toDart => JSMapRep._(this);
}

// TODO: Should we make use of a `DelegatingMap`:
//  https://pub.dev/documentation/collection/latest/collection/DelegatingMap-class.html
class JSMapRep<K extends JSAny, V extends JSAny> extends MapBase<K, V> {
  final JSMap<K, V> _map;

  JSMapRep._(this._map);

  @override
  V? operator [](covariant K? key) => key == null ? null : _map.get(key);

  @override
  void operator []=(K key, V value) => _map.set(key, value);

  @override
  void clear() => _map.clear();

  @override
  Iterable<K> get keys => _map.keys().toDartIterable;

  @override
  Iterable<V> get values => _map.values().toDartIterable;

  @override
  V? remove(covariant K? key) {
    if (key == null) {
      return null;
    } else {
      final value = _map.get(key);
      _map.delete(key);
      return value;
    }
  }
}
