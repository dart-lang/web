// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Helper layer library that includes additional extension methods on existing
/// `package:web` types.
///
/// The extensions here are added by hand over time, depending on needs and use
/// cases. They currently consist of:
///
///  * renames: methods that provide the same functionality, but use a more
///    idiomatic Dart name. Typically these renames match the names used in
///    `dart:html` in the past.
///
//// * operators: for example access local storage items using `operator[]`.
///
///  * helper logic: commonly these are methods that were very useful and
///    popular from `dart:html` (like the context2D getter in
///    `HTMLCanvasElement`).
///
///  * conversions: for example to wrap a `TouchList` as a `List<Touch>`
library;

import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'dart:math' show Point, Rectangle;

import '../dom.dart' as dom;
import '../dom.dart';
import 'attributes.dart';
import 'css_class_set.dart';
import 'css_rect.dart';
import 'enums.dart';
import 'equivalence.dart';
import 'events/events.dart';
import 'lists.dart';
import 'maps.dart';
import 'string_console.dart';

export 'cross_origin.dart'
    show CrossOriginContentWindowExtension, CrossOriginWindowExtension;

extension BlobExtension on Blob {
  @Equivalence(type: 'Blob', member: '')
  Blob createBlob(List<Object?> blobParts, [String? type, String? endings]) {
    final jsParts = blobParts.jsify() as JSArray<JSAny>;
    if (type == null && endings == null) {
      return Blob(jsParts);
    } else if (type != null && endings != null) {
      return Blob(jsParts, BlobPropertyBag(type: type, endings: endings));
    } else if (type != null) {
      return Blob(jsParts, BlobPropertyBag(type: type));
    } else {
      return Blob(jsParts, BlobPropertyBag(endings: endings!));
    }
  }
}

extension CanvasRenderingContext2DExtension on CanvasRenderingContext2D {
  @Equivalence(type: 'CanvasRenderingContext2D', member: 'drawImageScaled')
  @JS('drawImage')
  external void drawImageScaled(
    CanvasImageSource image,
    double dx,
    double dy,
    double dw,
    double dh,
  );
}

extension CSSStyleDeclarationExtension on CSSStyleDeclaration {
  @Equivalence(
    type: 'CssStyleDeclaration',
    member: 'setProperty',
    details:
        "'dart:html' used to check for support and add vendor prefixes for "
        'properties, but modern browsers no longer need this.',
  )
  void setPropertyNullable(String property, String? value, [String? priority]) {
    value ??= '';
    priority ??= '';
    setProperty(property, value, priority);
  }
}

extension DocumentExtension on Document {
  @Equivalence(
    type: 'Document',
    member: 'querySelectorAll',
    details:
        "'dart:html' returned a `_FrozenElementList`, which provided "
        'additional helpers like stream listeners.',
  )
  JSImmutableListWrapper<NodeList, T> querySelectorAllAsList<T extends Element>(
    String selectors,
  ) => JSImmutableListWrapper<NodeList, T>(querySelectorAll(selectors));
}

extension DOMRectExtension on DOMRect {
  Rectangle<double> asRectangle() => Rectangle(left, top, width, height);
}

extension DOMRectListExtension on DOMRectList {
  List<Rectangle> asList() => JSImmutableListWrapper<DOMRectList, DOMRect>(
    this,
  ).map((rect) => rect.asRectangle()).toList();
}

extension DOMStringMapExtension on DOMStringMap {
  bool containsKey(String name) => (this as JSObject)[name] != null;
}

/// Contains subtype members that were moved up in `dart:html` to `Element`.
extension ElementExtension on Element {
  @Equivalence(type: 'Element', member: 'style')
  external CSSStyleDeclaration get style;

  @Equivalence(type: 'Element', member: 'classes')
  CssClassSet get classes => ElementCssClassSet(this);

  @Equivalence(type: 'Element', member: 'getComputedStyle')
  CSSStyleDeclaration getComputedStyle([String? pseudoElement]) {
    pseudoElement ??= '';
    return window.getComputedStyle(this, pseudoElement);
  }

  @Equivalence(type: 'Element', member: 'tabIndex')
  external int? get tabIndex;
  @Equivalence(type: 'Element', member: 'tabIndex')
  external set tabIndex(int? v);

  @Equivalence(type: 'Element', member: 'dir')
  external String? get dir;
  @Equivalence(type: 'Element', member: 'dir')
  external set dir(String? s);

  @Equivalence(type: 'Element', member: 'innerText')
  external String get innerText;
  @Equivalence(type: 'Element', member: 'innerText')
  external set innerText(String value);

  @Equivalence(type: 'Element', member: 'offsetLeft')
  external int get offsetLeft;
  @Equivalence(type: 'Element', member: 'offsetTop')
  external int get offsetTop;
  @Equivalence(type: 'Element', member: 'offsetWidth')
  external int get offsetWidth;
  @Equivalence(type: 'Element', member: 'offsetHeight')
  external int get offsetHeight;

  @Equivalence(type: 'Element', member: 'offset')
  Rectangle get offset =>
      Rectangle(offsetLeft, offsetTop, offsetWidth, offsetHeight);

  @Equivalence(type: 'Element', member: 'offsetParent')
  external Element? get offsetParent;

  @Equivalence(type: 'Element', member: 'focus')
  external void focus();
  @Equivalence(type: 'Element', member: 'click')
  external void click();
  @Equivalence(type: 'Element', member: 'blur')
  external void blur();

  @Equivalence(type: 'Element', member: 'attributes')
  Map<String, String> get attributesAsMap => ElementAttributeMap(this);

  @Equivalence(type: 'Element', member: 'attributes')
  set attributes(Map<String, String> value) {
    final attrs = attributesAsMap;
    attrs.clear();
    for (final key in value.keys) {
      attrs[key] = value[key]!;
    }
  }

  @Equivalence(type: 'Element', member: 'dataset')
  Map<String, String> get dataset => DataAttributeMap(attributesAsMap);

  @Equivalence(type: 'Element', member: 'matchesWithAncestors')
  bool matchesWithAncestors(String selectors) {
    var elem = this as Element?;
    do {
      if (elem!.matches(selectors)) return true;
      elem = elem.parent;
    } while (elem != null);
    return false;
  }

  @Equivalence(type: 'Element', member: 'namespaceUri')
  String? get namespaceUri => namespaceURI;

  @Equivalence(
    type: 'Element',
    member: 'querySelectorAll',
    details:
        "'dart:html' returned a `_FrozenElementList`, which provided "
        'additional helpers like stream listeners.',
  )
  JSImmutableListWrapper<NodeList, T> querySelectorAllAsList<T extends Element>(
    String selectors,
  ) => JSImmutableListWrapper<NodeList, T>(querySelectorAll(selectors));

  @Equivalence(type: 'Element', member: 'appendText')
  void appendText(String text) => append(Text(text));

  @Equivalence(type: 'Element', member: 'offsetTo')
  Point offsetTo(Element parent) =>
      ElementExtension._offsetToHelper(this, parent);

  static Point _offsetToHelper(Element? current, Element parent) {
    // We're hopping from _offsetParent_ to offsetParent (not just parent), so
    // offsetParent, "tops out" at BODY. But people could conceivably pass in
    // the document.documentElement and I want it to return an absolute offset,
    // so we have the special case checking for HTML.
    final sameAsParent = current.strictEquals(parent).toDart;
    final foundAsParent = sameAsParent || parent.tagName == 'HTML';
    if (current == null || sameAsParent) {
      if (foundAsParent) return const Point(0, 0);
      throw ArgumentError(
        'Specified element is not a transitive offset parent of this element.',
      );
    }
    final parentOffset = current.offsetParent;
    final p = ElementExtension._offsetToHelper(parentOffset, parent);
    return Point(p.x + current.offsetLeft, p.y + current.offsetTop);
  }

  @Equivalence(type: 'Element', member: 'marginEdge')
  CssRect get marginEdge => MarginCssRect(this);

  @Equivalence(type: 'Element', member: 'scrollIntoView')
  void scrollIntoViewWithAlignment([ScrollAlignment? alignment]) {
    final hasScrollIntoViewIfNeeded = has('scrollIntoViewIfNeeded');
    if (alignment == ScrollAlignment.TOP) {
      scrollIntoView(true.toJS);
    } else if (alignment == ScrollAlignment.BOTTOM) {
      scrollIntoView(false.toJS);
    } else if (hasScrollIntoViewIfNeeded) {
      if (alignment == ScrollAlignment.CENTER) {
        scrollIntoViewIfNeeded(true);
      } else {
        scrollIntoViewIfNeeded();
      }
    } else {
      scrollIntoView();
    }
  }

  @Equivalence(type: 'Element', member: 'scrollIntoViewIfNeeded')
  @JS('scrollIntoViewIfNeeded')
  external void scrollIntoViewIfNeeded([bool? centerIfNeeded]);

  @Equivalence(type: 'Element', member: 'borderEdge')
  CssRect get borderEdge => BorderCssRect(this);

  @Equivalence(type: 'Element', member: 'documentOffset')
  Point get documentOffset => offsetTo(document.documentElement!);

  /// Returns [children] as a modifiable [List].
  @Equivalence(type: 'Element', member: 'children')
  List<Element> get childrenAsList => HTMLCollectionListWrapper(this, children);
}

extension EventExtension on Event {
  @Equivalence(type: 'Event', member: 'path')
  List<EventTarget> get path =>
      has('composedPath') ? composedPath().toDart : [];
}

extension EventTargetExtension on EventTarget {
  @Equivalence(type: 'EventTarget', member: 'addEventListener')
  void addEventListenerWithFunction<T extends Event>(
    String type,
    void Function(T) onData, [
    bool useCapture = false,
  ]) {
    addEventListener(type, onData.toJS, useCapture.toJS);
  }
}

extension InputElementExtension on HTMLInputElement {
  @Equivalence(type: 'InputElement', member: 'files')
  List<File>? get filesAsList => files?.asList();
}

extension DataTransferExtension on DataTransfer {
  @Equivalence(type: 'DataTransfer', member: 'files')
  List<File>? get filesAsList => has('files') ? files.asList() : null;
}

extension FileListExtension on FileList {
  List<File> asList() => JSImmutableListWrapper<FileList, File>(this);
  @Equivalence(type: 'FileList', member: 'first')
  File get first => item(0)!;
  @Equivalence(type: 'FileList', member: 'isEmpty')
  bool get isEmpty => length == 0;
  @Equivalence(type: 'FileList', member: 'elementAt')
  File elementAt(int i) => item(i)!;
}

extension HTMLCanvasElementExtension on HTMLCanvasElement {
  @Equivalence(type: 'CanvasElement', member: 'context2D')
  CanvasRenderingContext2D get context2D =>
      getContext('2d') as CanvasRenderingContext2D;

  @Equivalence(type: 'CanvasElement', member: 'toDataUrl')
  String toDataUrl([String type = 'image/png', num? quality]) =>
      (quality == null) ? toDataURL(type) : toDataURL(type, quality.toJS);

  @Equivalence(type: 'CanvasElement', member: 'getContext3d')
  RenderingContext? getContext3d({
    bool alpha = true,
    bool depth = true,
    bool stencil = false,
    bool antialias = true,
    bool premultipliedAlpha = true,
    bool preserveDrawingBuffer = false,
  }) {
    final options = JSObject()
      ..['alpha'] = alpha.toJS
      ..['depth'] = depth.toJS
      ..['stencil'] = stencil.toJS
      ..['antialias'] = antialias.toJS
      ..['premultipliedAlpha'] = premultipliedAlpha.toJS
      ..['preserveDrawingBuffer'] = preserveDrawingBuffer.toJS;
    return getContext('webgl', options) ??
        getContext('experimental-webgl', options);
  }

  @Equivalence(type: 'CanvasElement', member: 'toBlob')
  Future<Blob> toBlobFuture([String? type, num? quality]) {
    final completer = Completer<Blob>();
    void getBlob(Blob value) {
      completer.complete(value);
    }

    final blobCallback = getBlob.toJS;
    if (type == null) {
      toBlob(blobCallback);
    } else if (quality == null) {
      toBlob(blobCallback, type);
    } else {
      toBlob(blobCallback, type, quality.toJS);
    }
    return completer.future;
  }
}

extension HTMLCollectionExtension on HTMLCollection {
  @Equivalence(type: 'HtmlCollection', member: 'isEmpty')
  bool get isEmpty => length == 0;

  @Equivalence(type: 'HtmlCollection', member: 'isNotEmpty')
  bool get isNotEmpty => length > 0;

  @Equivalence(type: 'HtmlCollection', member: 'first')
  Element get first => item(0)!;

  @Equivalence(type: 'HtmlCollection', member: 'last')
  Element get last => item(length - 1)!;

  @Equivalence(type: 'HtmlCollection', member: 'single')
  Element get single {
    if (length != 1) {
      throw ArgumentError('HTMLCollection must have exactly one element.');
    }
    return item(0)!;
  }

  @Equivalence(type: 'HtmlCollection', member: '[]')
  Element operator [](int i) => item(i)!;

  List<Element> asList() =>
      JSImmutableListWrapper<HTMLCollection, Element>(this);
}

extension XMLHttpRequestExtension on XMLHttpRequest {
  @Equivalence(type: 'HttpRequest', member: 'responseHeaders')
  Map<String, String> get responseHeaders {
    final headers = <String, String>{};
    final headersString = getAllResponseHeaders();
    final headersList = headersString.split('\r\n');
    for (final header in headersList) {
      if (header.isEmpty) {
        continue;
      }
      final splitIdx = header.indexOf(': ');
      if (splitIdx == -1) {
        continue;
      }
      final key = header.substring(0, splitIdx).toLowerCase();
      final value = header.substring(splitIdx + 2);
      if (headers.containsKey(key)) {
        headers[key] = '${headers[key]}, $value';
      } else {
        headers[key] = value;
      }
    }
    return headers;
  }

  @Equivalence(type: 'HttpRequest', member: 'request')
  static Future<XMLHttpRequest> request(
    String url, {
    String? method,
    bool? withCredentials,
    String? responseType,
    String? mimeType,
    Map<String, String>? requestHeaders,
    Object? sendData,
    void Function(ProgressEvent e)? onProgress,
  }) {
    final completer = Completer<XMLHttpRequest>();

    final xhr = XMLHttpRequest();
    method ??= 'GET';
    xhr.open(method, url, true);

    if (withCredentials != null) {
      xhr.withCredentials = withCredentials;
    }

    if (responseType != null) {
      xhr.responseType = responseType;
    }

    if (mimeType != null) {
      xhr.overrideMimeType(mimeType);
    }

    if (requestHeaders != null) {
      requestHeaders.forEach(
        // Can't tear-off a JS interop function.
        // ignore: unnecessary_lambdas
        (String name, String value) => xhr.setRequestHeader(name, value),
      );
    }

    if (onProgress != null) {
      xhr.onProgress.listen(onProgress);
    }

    xhr.onLoad.listen((e) {
      final status = xhr.status;
      final accepted = status >= 200 && status < 300;
      final fileUri = status == 0;
      final notModified = status == 304;
      final unknownRedirect = status > 307 && status < 400;

      if (accepted || fileUri || notModified || unknownRedirect) {
        completer.complete(xhr);
      } else {
        completer.completeError(e);
      }
    });

    xhr.onError.listen(completer.completeError);

    if (sendData != null) {
      // `dart:html` accepted any value before. These values may be typed data,
      // so we may need to do a `jsify`. However, it's faster to check if it's a
      // JS value before we attempt a `jsify`, so do that.
      xhr.send(sendData.isA<JSAny?>() ? sendData as JSAny? : sendData.jsify());
    } else {
      xhr.send();
    }

    return completer.future;
  }
}

extension URLToUri on URL {
  /// Converts this to a Dart [Uri] object.
  Uri get toDart => Uri.parse(toString());
}

extension UriToURL on Uri {
  /// Converts this to a JavaScript [URL] object.
  ///
  /// Throws an [ArgumentError] if this isn't an absolute URL, since [URL] can
  /// only represent absolute URLs.
  URL get toJS {
    try {
      return URL(toString());
    } catch (_) {
      throw ArgumentError.value(this, 'this', '"$this" isn\'t a valid JS URL.');
    }
  }
}

extension MouseEventExtension on MouseEvent {
  @Equivalence(type: 'MouseEvent', member: 'client')
  Point get client => Point(clientX, clientY);

  @Equivalence(type: 'MouseEvent', member: 'screen')
  Point get screen => Point(screenX, screenY);

  @Equivalence(type: 'MouseEvent', member: 'page')
  Point get page => Point(pageX, pageY);

  // This really belongs on the `DragEvent` subtype, but `dart:html` moved it
  // up.
  @Equivalence(type: 'MouseEvent', member: 'dataTransfer')
  external DataTransfer get dataTransfer;
}

extension NodeExtension on Node {
  @Equivalence(type: 'Node', member: 'text')
  String? get text => textContent;

  @Equivalence(type: 'Node', member: 'text')
  set text(String? s) => textContent = s;

  @Equivalence(type: 'Node', member: 'append')
  Node append(Node other) => appendChild(other);

  @Equivalence(type: 'Node', member: 'clone')
  Node clone(bool? deep) => cloneNode(deep ?? false);

  @Equivalence(type: 'Node', member: 'parent')
  Element? get parent => parentElement;

  @Equivalence(type: 'Node', member: 'nextNode')
  Node? get nextNode => nextSibling;

  @Equivalence(type: 'Node', member: 'remove')
  void remove() {
    final parent = parentNode;
    if (parent != null) {
      parent.removeChild(this);
    }
  }

  @Equivalence(type: 'Node', member: 'insertAllBefore')
  void insertAllBefore(Iterable<Node> newNodes, Node child) {
    for (var node in newNodes) {
      insertBefore(node, child);
    }
  }

  /// Returns [childNodes] as a modifiable [List].
  @Equivalence(type: 'Node', member: 'childNodes')
  List<Node> get childNodesAsList => NodeListListWrapper(this, childNodes);

  @Equivalence(type: 'Node', member: 'nodes')
  List<Node> get nodes => childNodesAsList;

  @Equivalence(type: 'Node', member: 'nodes')
  set nodes(Iterable<Node> value) {
    final copy = value.toList();
    text = '';
    for (final node in copy) {
      appendChild(node);
    }
  }
}

extension NodeListExtension on NodeList {
  /// Returns node list as an immutable [List].
  List<T> asList<T extends Node>() => JSImmutableListWrapper<NodeList, T>(this);

  @Equivalence(type: 'NodeList', member: 'isEmpty')
  bool get isEmpty => length == 0;

  @Equivalence(type: 'NodeList', member: 'elementAt')
  Element elementAt(int i) => item(i) as Element;
}

extension StorageExtension on Storage {
  @Equivalence(type: 'Storage', member: '[]')
  String? operator [](String key) => getItem(key);

  @Equivalence(type: 'Storage', member: '[]=')
  void operator []=(String key, String value) => setItem(key, value);
}

extension TouchEventExtension on TouchEvent {
  // Safari still doesn't support `TouchEvent`s:
  // https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent
  @Equivalence(type: 'TouchEvent', member: 'supported')
  static bool get supported {
    try {
      TouchEvent('touches');
      return true;
    } catch (e) {
      return false;
    }
  }
}

extension TouchExtension on Touch {
  @Equivalence(type: 'Touch', member: 'page')
  Point get page => Point(pageX, pageY);

  @Equivalence(type: 'Touch', member: 'client')
  Point get client => Point(clientX, clientY);
}

extension TouchListExtension on TouchList {
  List<Touch> asList() => JSImmutableListWrapper<TouchList, Touch>(this);
  @Equivalence(type: 'TouchList', member: 'first')
  Touch get first => item(0)!;
  @Equivalence(type: 'TouchList', member: 'isEmpty')
  bool get isEmpty => length == 0;
  @Equivalence(type: 'TouchList', member: 'elementAt')
  Touch elementAt(int i) => item(i)!;
}

extension WindowExtension on Window {
  @Equivalence(type: 'Window', member: 'animationFrame')
  Future<num> get animationFrame {
    final completer = Completer<num>.sync();
    void getTimestamp(num timestamp) {
      completer.complete(timestamp);
    }

    requestAnimationFrame(getTimestamp.toJS);
    return completer.future;
  }

  @Equivalence(type: 'Window', member: 'console')
  StringConsole get console => StringConsole(dom.console);

  @Equivalence(type: 'Window', member: 'localStorage')
  StorageMap get localStorageAsMap => StorageMap(localStorage);

  @Equivalence(type: 'Window', member: 'sessionStorage')
  StorageMap get sessionStorageAsMap => StorageMap(sessionStorage);
}

@Equivalence(type: null, member: 'querySelector')
Element? querySelector(String selectors) => document.querySelector(selectors);
