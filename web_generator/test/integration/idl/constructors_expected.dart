// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

extension type Shape._(JSObject _) implements JSObject {
  external factory Shape();
}

/// The  **`Node`** interface is an abstract base
/// class upon which many other DOM API objects are based, thus letting those
/// object types
/// to be used similarly and often interchangeably. As an abstract class, there
/// is
/// no such thing as a plain `Node` object. All objects that implement
/// `Node` functionality are based on one of its subclasses. Most notable are
/// [Document], [Element], and [DocumentFragment].
///
/// In addition, every kind of DOM node is represented by an interface based on
/// `Node`. These include [Attr], [CharacterData]
/// (which [Text], [Comment], [CDATASection] and
/// [ProcessingInstruction] are all based on), and [DocumentType].
///
/// In some cases, a particular feature of the base `Node` interface may not
/// apply to one of its child interfaces; in that case, the inheriting node may
/// return `null` or throw an exception, depending on circumstances. For
/// example,
/// attempting to add children to a node type that cannot have children will
/// throw an
/// exception.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Node).
extension type Node._(JSObject _) implements JSObject {}

/// **`Point`** is an interface which represents a point in 2-dimensional space.
/// It is non-standard, not broadly compatible, and should not be used.
///
/// > [!NOTE]
/// > Although it is not directly related to this defunct interface, you are
/// > probably looking for [DOMPoint].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Point).
extension type Point._(JSObject _) implements JSObject {
  external int get x;
  external set x(int value);
  external int get y;
  external set y(int value);
}

/// **`NodeList`** objects are collections of
/// [nodes](https://developer.mozilla.org/en-US/docs/Web/API/Node), usually
/// returned by properties such as [Node.childNodes] and methods such as
/// [document.querySelectorAll].
///
/// This interface was an
/// [attempt to create an unmodifiable list](https://stackoverflow.com/questions/74630989/why-use-domstringlist-rather-than-an-array/74641156#74641156)
/// and only continues to be supported to not break code that's already using
/// it. Modern APIs represent list structures using types based on JavaScript
/// [arrays](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array),
/// thus making many array methods available, and at the same time imposing
/// additional semantics on their usage (such as making their items read-only).
///
/// These historical reasons do not mean that you as a developer should avoid
/// `NodeList`. You don't create `NodeList` objects yourself, but you get them
/// from APIs such as [Document.querySelectorAll], and these APIs are not
/// deprecated. However, be careful of the semantic differences from a real
/// array.
///
/// Although `NodeList` is not an `Array`, it is possible to iterate over it
/// with `forEach()`. It can also be converted to a real `Array` using
/// `Array.from()`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/NodeList).
extension type NodeList._(JSObject _) implements JSObject {
  /// Returns a node from a
  /// [`NodeList`](https://developer.mozilla.org/en-US/docs/Web/API/NodeList) by
  /// index. This method
  /// doesn't throw exceptions as long as you provide arguments. A value of
  /// `null`
  /// is returned if the index is out of range, and a `TypeError` is thrown if
  /// no
  /// argument is provided.
  ///
  /// In JavaScript, instead of calling `nodeList.item(index)`, you can also
  /// access the `index` directly, like `nodeList[index]`.
  external Node item(int index);

  /// The **`NodeList.length`** property returns the number of items
  /// in a [NodeList].
  external int get length;
}
extension type Circle._(JSObject _) implements Shape, JSObject {
  external factory Circle(num radius);

  external static Point triangulate(Circle c1, Circle c2, Circle c3);
  external static int get triangulationCount;
  external double get r;
  external set r(num value);
  external double get cx;
  external set cx(num value);
  external double get cy;
  external set cy(num value);
  external double get circumference;
}
