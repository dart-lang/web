// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'css_font_loading.dart';
import 'css_typed_om.dart';
import 'cssom.dart';
import 'cssom_view.dart';
import 'geometry.dart';
import 'hr_time.dart';
import 'html.dart';
import 'selection_api.dart';
import 'svg.dart';
import 'web_animations.dart';

typedef MutationCallback = JSFunction;
typedef EventListener = JSFunction;
typedef NodeFilter = JSFunction;
typedef XPathNSResolver = JSFunction;
typedef ShadowRootMode = String;
typedef SlotAssignmentMode = String;
extension type Event._(JSObject _) implements JSObject {
  external factory Event(
    String type, [
    EventInit eventInitDict,
  ]);

  external static int get NONE;
  external static int get CAPTURING_PHASE;
  external static int get AT_TARGET;
  external static int get BUBBLING_PHASE;
  external JSArray<EventTarget> composedPath();
  external void stopPropagation();
  external void stopImmediatePropagation();
  external void preventDefault();
  external void initEvent(
    String type, [
    bool bubbles,
    bool cancelable,
  ]);
  external String get type;
  external EventTarget? get target;
  external EventTarget? get srcElement;
  external EventTarget? get currentTarget;
  external int get eventPhase;
  external set cancelBubble(bool value);
  external bool get cancelBubble;
  external bool get bubbles;
  external bool get cancelable;
  external set returnValue(bool value);
  external bool get returnValue;
  external bool get defaultPrevented;
  external bool get composed;
  external bool get isTrusted;
  external DOMHighResTimeStamp get timeStamp;
}
extension type EventInit._(JSObject _) implements JSObject {
  external factory EventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
  });

  external set bubbles(bool value);
  external bool get bubbles;
  external set cancelable(bool value);
  external bool get cancelable;
  external set composed(bool value);
  external bool get composed;
}
extension type CustomEvent._(JSObject _) implements Event, JSObject {
  external factory CustomEvent(
    String type, [
    CustomEventInit eventInitDict,
  ]);

  external void initCustomEvent(
    String type, [
    bool bubbles,
    bool cancelable,
    JSAny? detail,
  ]);
  external JSAny? get detail;
}
extension type CustomEventInit._(JSObject _) implements EventInit, JSObject {
  external factory CustomEventInit({JSAny? detail});

  external set detail(JSAny? value);
  external JSAny? get detail;
}
extension type EventTarget._(JSObject _) implements JSObject {
  external factory EventTarget();

  external void addEventListener(
    String type,
    EventListener? callback, [
    JSAny options,
  ]);
  external void removeEventListener(
    String type,
    EventListener? callback, [
    JSAny options,
  ]);
  external bool dispatchEvent(Event event);
}
extension type EventListenerOptions._(JSObject _) implements JSObject {
  external factory EventListenerOptions({bool capture});

  external set capture(bool value);
  external bool get capture;
}
extension type AddEventListenerOptions._(JSObject _)
    implements EventListenerOptions, JSObject {
  external factory AddEventListenerOptions({
    bool passive,
    bool once,
    AbortSignal signal,
  });

  external set passive(bool value);
  external bool get passive;
  external set once(bool value);
  external bool get once;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}
extension type AbortController._(JSObject _) implements JSObject {
  external factory AbortController();

  external void abort([JSAny? reason]);
  external AbortSignal get signal;
}
extension type AbortSignal._(JSObject _) implements EventTarget, JSObject {
  external static AbortSignal abort([JSAny? reason]);
  external static AbortSignal timeout(int milliseconds);
  external static AbortSignal any(JSArray<AbortSignal> signals);
  external void throwIfAborted();
  external bool get aborted;
  external JSAny? get reason;
  external set onabort(EventHandler value);
  external EventHandler get onabort;
}
extension type NodeList._(JSObject _) implements JSObject {
  external Node? item(int index);
  external int get length;
}
extension type HTMLCollection._(JSObject _) implements JSObject {
  external Element? item(int index);
  external Element? namedItem(String name);
  external int get length;
}
extension type MutationObserver._(JSObject _) implements JSObject {
  external factory MutationObserver(MutationCallback callback);

  external void observe(
    Node target, [
    MutationObserverInit options,
  ]);
  external void disconnect();
  external JSArray<MutationRecord> takeRecords();
}
extension type MutationObserverInit._(JSObject _) implements JSObject {
  external factory MutationObserverInit({
    bool childList,
    bool attributes,
    bool characterData,
    bool subtree,
    bool attributeOldValue,
    bool characterDataOldValue,
    JSArray<JSString> attributeFilter,
  });

  external set childList(bool value);
  external bool get childList;
  external set attributes(bool value);
  external bool get attributes;
  external set characterData(bool value);
  external bool get characterData;
  external set subtree(bool value);
  external bool get subtree;
  external set attributeOldValue(bool value);
  external bool get attributeOldValue;
  external set characterDataOldValue(bool value);
  external bool get characterDataOldValue;
  external set attributeFilter(JSArray<JSString> value);
  external JSArray<JSString> get attributeFilter;
}
extension type MutationRecord._(JSObject _) implements JSObject {
  external String get type;
  external Node get target;
  external NodeList get addedNodes;
  external NodeList get removedNodes;
  external Node? get previousSibling;
  external Node? get nextSibling;
  external String? get attributeName;
  external String? get attributeNamespace;
  external String? get oldValue;
}
extension type Node._(JSObject _) implements EventTarget, JSObject {
  external static int get ELEMENT_NODE;
  external static int get ATTRIBUTE_NODE;
  external static int get TEXT_NODE;
  external static int get CDATA_SECTION_NODE;
  external static int get ENTITY_REFERENCE_NODE;
  external static int get ENTITY_NODE;
  external static int get PROCESSING_INSTRUCTION_NODE;
  external static int get COMMENT_NODE;
  external static int get DOCUMENT_NODE;
  external static int get DOCUMENT_TYPE_NODE;
  external static int get DOCUMENT_FRAGMENT_NODE;
  external static int get NOTATION_NODE;
  external static int get DOCUMENT_POSITION_DISCONNECTED;
  external static int get DOCUMENT_POSITION_PRECEDING;
  external static int get DOCUMENT_POSITION_FOLLOWING;
  external static int get DOCUMENT_POSITION_CONTAINS;
  external static int get DOCUMENT_POSITION_CONTAINED_BY;
  external static int get DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC;
  external Node getRootNode([GetRootNodeOptions options]);
  external bool hasChildNodes();
  external void normalize();
  external Node cloneNode([bool deep]);
  external bool isEqualNode(Node? otherNode);
  external bool isSameNode(Node? otherNode);
  external int compareDocumentPosition(Node other);
  external bool contains(Node? other);
  external String? lookupPrefix(String? namespace);
  external String? lookupNamespaceURI(String? prefix);
  external bool isDefaultNamespace(String? namespace);
  external Node insertBefore(
    Node node,
    Node? child,
  );
  external Node appendChild(Node node);
  external Node replaceChild(
    Node node,
    Node child,
  );
  external Node removeChild(Node child);
  external int get nodeType;
  external String get nodeName;
  external String get baseURI;
  external bool get isConnected;
  external Document? get ownerDocument;
  external Node? get parentNode;
  external Element? get parentElement;
  external NodeList get childNodes;
  external Node? get firstChild;
  external Node? get lastChild;
  external Node? get previousSibling;
  external Node? get nextSibling;
  external set nodeValue(String? value);
  external String? get nodeValue;
  external set textContent(String? value);
  external String? get textContent;
}
extension type GetRootNodeOptions._(JSObject _) implements JSObject {
  external factory GetRootNodeOptions({bool composed});

  external set composed(bool value);
  external bool get composed;
}
@JS()
external Document get document;
extension type Document._(JSObject _) implements Node, JSObject {
  external factory Document();

  external static Document parseHTMLUnsafe(String html);
  external Element? elementFromPoint(
    num x,
    num y,
  );
  external JSArray<Element> elementsFromPoint(
    num x,
    num y,
  );
  external CaretPosition? caretPositionFromPoint(
    num x,
    num y,
  );
  external HTMLCollection getElementsByTagName(String qualifiedName);
  external HTMLCollection getElementsByTagNameNS(
    String? namespace,
    String localName,
  );
  external HTMLCollection getElementsByClassName(String classNames);
  external Element createElement(
    String localName, [
    JSAny options,
  ]);
  external Element createElementNS(
    String? namespace,
    String qualifiedName, [
    JSAny options,
  ]);
  external DocumentFragment createDocumentFragment();
  external Text createTextNode(String data);
  external CDATASection createCDATASection(String data);
  external Comment createComment(String data);
  external ProcessingInstruction createProcessingInstruction(
    String target,
    String data,
  );
  external Node importNode(
    Node node, [
    bool deep,
  ]);
  external Node adoptNode(Node node);
  external Attr createAttribute(String localName);
  external Attr createAttributeNS(
    String? namespace,
    String qualifiedName,
  );
  external Event createEvent(String interface);
  external Range createRange();
  external NodeIterator createNodeIterator(
    Node root, [
    int whatToShow,
    NodeFilter? filter,
  ]);
  external TreeWalker createTreeWalker(
    Node root, [
    int whatToShow,
    NodeFilter? filter,
  ]);
  external NodeList getElementsByName(String elementName);
  external JSObject? open([
    String unused1OrUrl,
    String nameOrUnused2,
    String features,
  ]);
  external void close();
  external void write(String text);
  external void writeln(String text);
  external bool hasFocus();
  external bool execCommand(
    String commandId, [
    bool showUI,
    String value,
  ]);
  external bool queryCommandEnabled(String commandId);
  external bool queryCommandIndeterm(String commandId);
  external bool queryCommandState(String commandId);
  external bool queryCommandSupported(String commandId);
  external String queryCommandValue(String commandId);
  external void clear();
  external void captureEvents();
  external void releaseEvents();
  external Selection? getSelection();
  external JSArray<DOMQuad> getBoxQuads([BoxQuadOptions options]);
  external DOMQuad convertQuadFromNode(
    DOMQuadInit quad,
    GeometryNode from, [
    ConvertCoordinateOptions options,
  ]);
  external DOMQuad convertRectFromNode(
    DOMRectReadOnly rect,
    GeometryNode from, [
    ConvertCoordinateOptions options,
  ]);
  external DOMPoint convertPointFromNode(
    DOMPointInit point,
    GeometryNode from, [
    ConvertCoordinateOptions options,
  ]);
  external Element? getElementById(String elementId);
  external JSArray<Animation> getAnimations();
  external void prepend(JSAny nodes);
  external void append(JSAny nodes);
  external void replaceChildren(JSAny nodes);
  external Element? querySelector(String selectors);
  external NodeList querySelectorAll(String selectors);
  external XPathExpression createExpression(
    String expression, [
    XPathNSResolver? resolver,
  ]);
  external Node createNSResolver(Node nodeResolver);
  external XPathResult evaluate(
    String expression,
    Node contextNode, [
    XPathNSResolver? resolver,
    int type,
    XPathResult? result,
  ]);
  external SVGSVGElement? get rootElement;
  external Element? get scrollingElement;
  external DOMImplementation get implementation;
  external String get URL;
  external String get documentURI;
  external String get compatMode;
  external String get characterSet;
  external String get charset;
  external String get inputEncoding;
  external String get contentType;
  external DocumentType? get doctype;
  external Element? get documentElement;
  external Location? get location;
  external set domain(String value);
  external String get domain;
  external String get referrer;
  external set cookie(String value);
  external String get cookie;
  external String get lastModified;
  external DocumentReadyState get readyState;
  external set title(String value);
  external String get title;
  external set dir(String value);
  external String get dir;
  external set body(HTMLElement? value);
  external HTMLElement? get body;
  external HTMLHeadElement? get head;
  external HTMLCollection get images;
  external HTMLCollection get embeds;
  external HTMLCollection get plugins;
  external HTMLCollection get links;
  external HTMLCollection get forms;
  external HTMLCollection get scripts;
  external HTMLOrSVGScriptElement? get currentScript;
  external Window? get defaultView;
  external set designMode(String value);
  external String get designMode;
  external bool get hidden;
  external DocumentVisibilityState get visibilityState;
  external set onreadystatechange(EventHandler value);
  external EventHandler get onreadystatechange;
  external set onvisibilitychange(EventHandler value);
  external EventHandler get onvisibilitychange;
  external set fgColor(String value);
  external String get fgColor;
  external set linkColor(String value);
  external String get linkColor;
  external set vlinkColor(String value);
  external String get vlinkColor;
  external set alinkColor(String value);
  external String get alinkColor;
  external set bgColor(String value);
  external String get bgColor;
  external HTMLCollection get anchors;
  external HTMLCollection get applets;
  external HTMLAllCollection get all;
  external DocumentTimeline get timeline;
  external FontFaceSet get fonts;
  external StyleSheetList get styleSheets;
  external set adoptedStyleSheets(JSArray<CSSStyleSheet> value);
  external JSArray<CSSStyleSheet> get adoptedStyleSheets;
  external Element? get activeElement;
  external HTMLCollection get children;
  external Element? get firstElementChild;
  external Element? get lastElementChild;
  external int get childElementCount;
  external set onanimationstart(EventHandler value);
  external EventHandler get onanimationstart;
  external set onanimationiteration(EventHandler value);
  external EventHandler get onanimationiteration;
  external set onanimationend(EventHandler value);
  external EventHandler get onanimationend;
  external set onanimationcancel(EventHandler value);
  external EventHandler get onanimationcancel;
  external set ontransitionrun(EventHandler value);
  external EventHandler get ontransitionrun;
  external set ontransitionstart(EventHandler value);
  external EventHandler get ontransitionstart;
  external set ontransitionend(EventHandler value);
  external EventHandler get ontransitionend;
  external set ontransitioncancel(EventHandler value);
  external EventHandler get ontransitioncancel;
  external set onabort(EventHandler value);
  external EventHandler get onabort;
  external set onauxclick(EventHandler value);
  external EventHandler get onauxclick;
  external set onbeforeinput(EventHandler value);
  external EventHandler get onbeforeinput;
  external set onbeforematch(EventHandler value);
  external EventHandler get onbeforematch;
  external set onbeforetoggle(EventHandler value);
  external EventHandler get onbeforetoggle;
  external set onblur(EventHandler value);
  external EventHandler get onblur;
  external set oncancel(EventHandler value);
  external EventHandler get oncancel;
  external set oncanplay(EventHandler value);
  external EventHandler get oncanplay;
  external set oncanplaythrough(EventHandler value);
  external EventHandler get oncanplaythrough;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onclick(EventHandler value);
  external EventHandler get onclick;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
  external set oncontextlost(EventHandler value);
  external EventHandler get oncontextlost;
  external set oncontextmenu(EventHandler value);
  external EventHandler get oncontextmenu;
  external set oncontextrestored(EventHandler value);
  external EventHandler get oncontextrestored;
  external set oncopy(EventHandler value);
  external EventHandler get oncopy;
  external set oncuechange(EventHandler value);
  external EventHandler get oncuechange;
  external set oncut(EventHandler value);
  external EventHandler get oncut;
  external set ondblclick(EventHandler value);
  external EventHandler get ondblclick;
  external set ondrag(EventHandler value);
  external EventHandler get ondrag;
  external set ondragend(EventHandler value);
  external EventHandler get ondragend;
  external set ondragenter(EventHandler value);
  external EventHandler get ondragenter;
  external set ondragleave(EventHandler value);
  external EventHandler get ondragleave;
  external set ondragover(EventHandler value);
  external EventHandler get ondragover;
  external set ondragstart(EventHandler value);
  external EventHandler get ondragstart;
  external set ondrop(EventHandler value);
  external EventHandler get ondrop;
  external set ondurationchange(EventHandler value);
  external EventHandler get ondurationchange;
  external set onemptied(EventHandler value);
  external EventHandler get onemptied;
  external set onended(EventHandler value);
  external EventHandler get onended;
  external set onerror(OnErrorEventHandler value);
  external OnErrorEventHandler get onerror;
  external set onfocus(EventHandler value);
  external EventHandler get onfocus;
  external set onformdata(EventHandler value);
  external EventHandler get onformdata;
  external set oninput(EventHandler value);
  external EventHandler get oninput;
  external set oninvalid(EventHandler value);
  external EventHandler get oninvalid;
  external set onkeydown(EventHandler value);
  external EventHandler get onkeydown;
  external set onkeypress(EventHandler value);
  external EventHandler get onkeypress;
  external set onkeyup(EventHandler value);
  external EventHandler get onkeyup;
  external set onload(EventHandler value);
  external EventHandler get onload;
  external set onloadeddata(EventHandler value);
  external EventHandler get onloadeddata;
  external set onloadedmetadata(EventHandler value);
  external EventHandler get onloadedmetadata;
  external set onloadstart(EventHandler value);
  external EventHandler get onloadstart;
  external set onmousedown(EventHandler value);
  external EventHandler get onmousedown;
  external set onmouseenter(EventHandler value);
  external EventHandler get onmouseenter;
  external set onmouseleave(EventHandler value);
  external EventHandler get onmouseleave;
  external set onmousemove(EventHandler value);
  external EventHandler get onmousemove;
  external set onmouseout(EventHandler value);
  external EventHandler get onmouseout;
  external set onmouseover(EventHandler value);
  external EventHandler get onmouseover;
  external set onmouseup(EventHandler value);
  external EventHandler get onmouseup;
  external set onpaste(EventHandler value);
  external EventHandler get onpaste;
  external set onpause(EventHandler value);
  external EventHandler get onpause;
  external set onplay(EventHandler value);
  external EventHandler get onplay;
  external set onplaying(EventHandler value);
  external EventHandler get onplaying;
  external set onprogress(EventHandler value);
  external EventHandler get onprogress;
  external set onratechange(EventHandler value);
  external EventHandler get onratechange;
  external set onreset(EventHandler value);
  external EventHandler get onreset;
  external set onresize(EventHandler value);
  external EventHandler get onresize;
  external set onscroll(EventHandler value);
  external EventHandler get onscroll;
  external set onscrollend(EventHandler value);
  external EventHandler get onscrollend;
  external set onsecuritypolicyviolation(EventHandler value);
  external EventHandler get onsecuritypolicyviolation;
  external set onseeked(EventHandler value);
  external EventHandler get onseeked;
  external set onseeking(EventHandler value);
  external EventHandler get onseeking;
  external set onselect(EventHandler value);
  external EventHandler get onselect;
  external set onslotchange(EventHandler value);
  external EventHandler get onslotchange;
  external set onstalled(EventHandler value);
  external EventHandler get onstalled;
  external set onsubmit(EventHandler value);
  external EventHandler get onsubmit;
  external set onsuspend(EventHandler value);
  external EventHandler get onsuspend;
  external set ontimeupdate(EventHandler value);
  external EventHandler get ontimeupdate;
  external set ontoggle(EventHandler value);
  external EventHandler get ontoggle;
  external set onvolumechange(EventHandler value);
  external EventHandler get onvolumechange;
  external set onwaiting(EventHandler value);
  external EventHandler get onwaiting;
  external set onwebkitanimationend(EventHandler value);
  external EventHandler get onwebkitanimationend;
  external set onwebkitanimationiteration(EventHandler value);
  external EventHandler get onwebkitanimationiteration;
  external set onwebkitanimationstart(EventHandler value);
  external EventHandler get onwebkitanimationstart;
  external set onwebkittransitionend(EventHandler value);
  external EventHandler get onwebkittransitionend;
  external set onwheel(EventHandler value);
  external EventHandler get onwheel;
  external set onpointerover(EventHandler value);
  external EventHandler get onpointerover;
  external set onpointerenter(EventHandler value);
  external EventHandler get onpointerenter;
  external set onpointerdown(EventHandler value);
  external EventHandler get onpointerdown;
  external set onpointermove(EventHandler value);
  external EventHandler get onpointermove;
  external set onpointerrawupdate(EventHandler value);
  external EventHandler get onpointerrawupdate;
  external set onpointerup(EventHandler value);
  external EventHandler get onpointerup;
  external set onpointercancel(EventHandler value);
  external EventHandler get onpointercancel;
  external set onpointerout(EventHandler value);
  external EventHandler get onpointerout;
  external set onpointerleave(EventHandler value);
  external EventHandler get onpointerleave;
  external set ongotpointercapture(EventHandler value);
  external EventHandler get ongotpointercapture;
  external set onlostpointercapture(EventHandler value);
  external EventHandler get onlostpointercapture;
  external set onselectstart(EventHandler value);
  external EventHandler get onselectstart;
  external set onselectionchange(EventHandler value);
  external EventHandler get onselectionchange;
  external set ontouchstart(EventHandler value);
  external EventHandler get ontouchstart;
  external set ontouchend(EventHandler value);
  external EventHandler get ontouchend;
  external set ontouchmove(EventHandler value);
  external EventHandler get ontouchmove;
  external set ontouchcancel(EventHandler value);
  external EventHandler get ontouchcancel;
}
extension type XMLDocument._(JSObject _) implements Document, JSObject {}
extension type ElementCreationOptions._(JSObject _) implements JSObject {
  external factory ElementCreationOptions({String is_});

  @JS('is')
  external set is_(String value);
  @JS('is')
  external String get is_;
}
extension type DOMImplementation._(JSObject _) implements JSObject {
  external DocumentType createDocumentType(
    String qualifiedName,
    String publicId,
    String systemId,
  );
  external XMLDocument createDocument(
    String? namespace,
    String qualifiedName, [
    DocumentType? doctype,
  ]);
  external Document createHTMLDocument([String title]);
  external bool hasFeature();
}
extension type DocumentType._(JSObject _) implements Node, JSObject {
  external void before(JSAny nodes);
  external void after(JSAny nodes);
  external void replaceWith(JSAny nodes);
  external void remove();
  external String get name;
  external String get publicId;
  external String get systemId;
}
extension type DocumentFragment._(JSObject _) implements Node, JSObject {
  external factory DocumentFragment();

  external Element? getElementById(String elementId);
  external void prepend(JSAny nodes);
  external void append(JSAny nodes);
  external void replaceChildren(JSAny nodes);
  external Element? querySelector(String selectors);
  external NodeList querySelectorAll(String selectors);
  external HTMLCollection get children;
  external Element? get firstElementChild;
  external Element? get lastElementChild;
  external int get childElementCount;
}
extension type ShadowRoot._(JSObject _) implements DocumentFragment, JSObject {
  external void setHTMLUnsafe(String html);
  external JSArray<Animation> getAnimations();
  external ShadowRootMode get mode;
  external bool get delegatesFocus;
  external SlotAssignmentMode get slotAssignment;
  external bool get clonable;
  external Element get host;
  external set onslotchange(EventHandler value);
  external EventHandler get onslotchange;
  external set innerHTML(String value);
  external String get innerHTML;
  external StyleSheetList get styleSheets;
  external set adoptedStyleSheets(JSArray<CSSStyleSheet> value);
  external JSArray<CSSStyleSheet> get adoptedStyleSheets;
  external Element? get activeElement;
}
extension type Element._(JSObject _) implements Node, JSObject {
  external void insertAdjacentHTML(
    String position,
    String text,
  );
  external StylePropertyMapReadOnly computedStyleMap();
  external DOMRectList getClientRects();
  external DOMRect getBoundingClientRect();
  external bool checkVisibility([CheckVisibilityOptions options]);
  external void scrollIntoView([JSAny arg]);
  external void scroll([
    JSAny optionsOrX,
    num y,
  ]);
  external void scrollTo([
    JSAny optionsOrX,
    num y,
  ]);
  external void scrollBy([
    JSAny optionsOrX,
    num y,
  ]);
  external bool hasAttributes();
  external JSArray<JSString> getAttributeNames();
  external String? getAttribute(String qualifiedName);
  external String? getAttributeNS(
    String? namespace,
    String localName,
  );
  external void setAttribute(
    String qualifiedName,
    String value,
  );
  external void setAttributeNS(
    String? namespace,
    String qualifiedName,
    String value,
  );
  external void removeAttribute(String qualifiedName);
  external void removeAttributeNS(
    String? namespace,
    String localName,
  );
  external bool toggleAttribute(
    String qualifiedName, [
    bool force,
  ]);
  external bool hasAttribute(String qualifiedName);
  external bool hasAttributeNS(
    String? namespace,
    String localName,
  );
  external Attr? getAttributeNode(String qualifiedName);
  external Attr? getAttributeNodeNS(
    String? namespace,
    String localName,
  );
  external Attr? setAttributeNode(Attr attr);
  external Attr? setAttributeNodeNS(Attr attr);
  external Attr removeAttributeNode(Attr attr);
  external ShadowRoot attachShadow(ShadowRootInit init);
  external Element? closest(String selectors);
  external bool matches(String selectors);
  external bool webkitMatchesSelector(String selectors);
  external HTMLCollection getElementsByTagName(String qualifiedName);
  external HTMLCollection getElementsByTagNameNS(
    String? namespace,
    String localName,
  );
  external HTMLCollection getElementsByClassName(String classNames);
  external Element? insertAdjacentElement(
    String where,
    Element element,
  );
  external void insertAdjacentText(
    String where,
    String data,
  );
  external void setHTMLUnsafe(String html);
  external void setPointerCapture(int pointerId);
  external void releasePointerCapture(int pointerId);
  external bool hasPointerCapture(int pointerId);
  external JSArray<DOMQuad> getBoxQuads([BoxQuadOptions options]);
  external DOMQuad convertQuadFromNode(
    DOMQuadInit quad,
    GeometryNode from, [
    ConvertCoordinateOptions options,
  ]);
  external DOMQuad convertRectFromNode(
    DOMRectReadOnly rect,
    GeometryNode from, [
    ConvertCoordinateOptions options,
  ]);
  external DOMPoint convertPointFromNode(
    DOMPointInit point,
    GeometryNode from, [
    ConvertCoordinateOptions options,
  ]);
  external void prepend(JSAny nodes);
  external void append(JSAny nodes);
  external void replaceChildren(JSAny nodes);
  external Element? querySelector(String selectors);
  external NodeList querySelectorAll(String selectors);
  external void before(JSAny nodes);
  external void after(JSAny nodes);
  external void replaceWith(JSAny nodes);
  external void remove();
  external Animation animate(
    JSObject? keyframes, [
    JSAny options,
  ]);
  external JSArray<Animation> getAnimations([GetAnimationsOptions options]);
  external set outerHTML(String value);
  external String get outerHTML;
  external set scrollTop(num value);
  external num get scrollTop;
  external set scrollLeft(num value);
  external num get scrollLeft;
  external int get scrollWidth;
  external int get scrollHeight;
  external int get clientTop;
  external int get clientLeft;
  external int get clientWidth;
  external int get clientHeight;
  external String? get namespaceURI;
  external String? get prefix;
  external String get localName;
  external String get tagName;
  external set id(String value);
  external String get id;
  external set className(String value);
  external String get className;
  external DOMTokenList get classList;
  external set slot(String value);
  external String get slot;
  external NamedNodeMap get attributes;
  external ShadowRoot? get shadowRoot;
  external set innerHTML(String value);
  external String get innerHTML;
  external HTMLCollection get children;
  external Element? get firstElementChild;
  external Element? get lastElementChild;
  external int get childElementCount;
  external Element? get previousElementSibling;
  external Element? get nextElementSibling;
  external HTMLSlotElement? get assignedSlot;
}
extension type ShadowRootInit._(JSObject _) implements JSObject {
  external factory ShadowRootInit({
    required ShadowRootMode mode,
    bool delegatesFocus,
    SlotAssignmentMode slotAssignment,
    bool clonable,
  });

  external set mode(ShadowRootMode value);
  external ShadowRootMode get mode;
  external set delegatesFocus(bool value);
  external bool get delegatesFocus;
  external set slotAssignment(SlotAssignmentMode value);
  external SlotAssignmentMode get slotAssignment;
  external set clonable(bool value);
  external bool get clonable;
}
extension type NamedNodeMap._(JSObject _) implements JSObject {
  external Attr? item(int index);
  external Attr? getNamedItem(String qualifiedName);
  external Attr? getNamedItemNS(
    String? namespace,
    String localName,
  );
  external Attr? setNamedItem(Attr attr);
  external Attr? setNamedItemNS(Attr attr);
  external Attr removeNamedItem(String qualifiedName);
  external Attr removeNamedItemNS(
    String? namespace,
    String localName,
  );
  external int get length;
}
extension type Attr._(JSObject _) implements Node, JSObject {
  external String? get namespaceURI;
  external String? get prefix;
  external String get localName;
  external String get name;
  external set value(String value);
  external String get value;
  external Element? get ownerElement;
  external bool get specified;
}
extension type CharacterData._(JSObject _) implements Node, JSObject {
  external String substringData(
    int offset,
    int count,
  );
  external void appendData(String data);
  external void insertData(
    int offset,
    String data,
  );
  external void deleteData(
    int offset,
    int count,
  );
  external void replaceData(
    int offset,
    int count,
    String data,
  );
  external void before(JSAny nodes);
  external void after(JSAny nodes);
  external void replaceWith(JSAny nodes);
  external void remove();
  external set data(String value);
  external String get data;
  external int get length;
  external Element? get previousElementSibling;
  external Element? get nextElementSibling;
}
extension type Text._(JSObject _) implements CharacterData, JSObject {
  external factory Text([String data]);

  external Text splitText(int offset);
  external JSArray<DOMQuad> getBoxQuads([BoxQuadOptions options]);
  external DOMQuad convertQuadFromNode(
    DOMQuadInit quad,
    GeometryNode from, [
    ConvertCoordinateOptions options,
  ]);
  external DOMQuad convertRectFromNode(
    DOMRectReadOnly rect,
    GeometryNode from, [
    ConvertCoordinateOptions options,
  ]);
  external DOMPoint convertPointFromNode(
    DOMPointInit point,
    GeometryNode from, [
    ConvertCoordinateOptions options,
  ]);
  external String get wholeText;
  external HTMLSlotElement? get assignedSlot;
}
extension type CDATASection._(JSObject _) implements Text, JSObject {}
extension type ProcessingInstruction._(JSObject _)
    implements CharacterData, JSObject {
  external String get target;
  external CSSStyleSheet? get sheet;
}
extension type Comment._(JSObject _) implements CharacterData, JSObject {
  external factory Comment([String data]);
}
extension type AbstractRange._(JSObject _) implements JSObject {
  external Node get startContainer;
  external int get startOffset;
  external Node get endContainer;
  external int get endOffset;
  external bool get collapsed;
}
extension type StaticRangeInit._(JSObject _) implements JSObject {
  external factory StaticRangeInit({
    required Node startContainer,
    required int startOffset,
    required Node endContainer,
    required int endOffset,
  });

  external set startContainer(Node value);
  external Node get startContainer;
  external set startOffset(int value);
  external int get startOffset;
  external set endContainer(Node value);
  external Node get endContainer;
  external set endOffset(int value);
  external int get endOffset;
}
extension type StaticRange._(JSObject _) implements AbstractRange, JSObject {
  external factory StaticRange(StaticRangeInit init);
}
extension type Range._(JSObject _) implements AbstractRange, JSObject {
  external factory Range();

  external static int get START_TO_START;
  external static int get START_TO_END;
  external static int get END_TO_END;
  external static int get END_TO_START;
  external DocumentFragment createContextualFragment(String fragment);
  external DOMRectList getClientRects();
  external DOMRect getBoundingClientRect();
  external void setStart(
    Node node,
    int offset,
  );
  external void setEnd(
    Node node,
    int offset,
  );
  external void setStartBefore(Node node);
  external void setStartAfter(Node node);
  external void setEndBefore(Node node);
  external void setEndAfter(Node node);
  external void collapse([bool toStart]);
  external void selectNode(Node node);
  external void selectNodeContents(Node node);
  external int compareBoundaryPoints(
    int how,
    Range sourceRange,
  );
  external void deleteContents();
  external DocumentFragment extractContents();
  external DocumentFragment cloneContents();
  external void insertNode(Node node);
  external void surroundContents(Node newParent);
  external Range cloneRange();
  external void detach();
  external bool isPointInRange(
    Node node,
    int offset,
  );
  external int comparePoint(
    Node node,
    int offset,
  );
  external bool intersectsNode(Node node);
  external Node get commonAncestorContainer;
}
extension type NodeIterator._(JSObject _) implements JSObject {
  external Node? nextNode();
  external Node? previousNode();
  external void detach();
  external Node get root;
  external Node get referenceNode;
  external bool get pointerBeforeReferenceNode;
  external int get whatToShow;
  external NodeFilter? get filter;
}
extension type TreeWalker._(JSObject _) implements JSObject {
  external Node? parentNode();
  external Node? firstChild();
  external Node? lastChild();
  external Node? previousSibling();
  external Node? nextSibling();
  external Node? previousNode();
  external Node? nextNode();
  external Node get root;
  external int get whatToShow;
  external NodeFilter? get filter;
  external set currentNode(Node value);
  external Node get currentNode;
}
extension type DOMTokenList._(JSObject _) implements JSObject {
  external String? item(int index);
  external bool contains(String token);
  external void add(String tokens);
  external void remove(String tokens);
  external bool toggle(
    String token, [
    bool force,
  ]);
  external bool replace(
    String token,
    String newToken,
  );
  external bool supports(String token);
  external int get length;
  external set value(String value);
  external String get value;
}
extension type XPathResult._(JSObject _) implements JSObject {
  external static int get ANY_TYPE;
  external static int get NUMBER_TYPE;
  external static int get STRING_TYPE;
  external static int get BOOLEAN_TYPE;
  external static int get UNORDERED_NODE_ITERATOR_TYPE;
  external static int get ORDERED_NODE_ITERATOR_TYPE;
  external static int get UNORDERED_NODE_SNAPSHOT_TYPE;
  external static int get ORDERED_NODE_SNAPSHOT_TYPE;
  external static int get ANY_UNORDERED_NODE_TYPE;
  external static int get FIRST_ORDERED_NODE_TYPE;
  external Node? iterateNext();
  external Node? snapshotItem(int index);
  external int get resultType;
  external num get numberValue;
  external String get stringValue;
  external bool get booleanValue;
  external Node? get singleNodeValue;
  external bool get invalidIteratorState;
  external int get snapshotLength;
}
extension type XPathExpression._(JSObject _) implements JSObject {
  external XPathResult evaluate(
    Node contextNode, [
    int type,
    XPathResult? result,
  ]);
}
extension type XPathEvaluator._(JSObject _) implements JSObject {
  external factory XPathEvaluator();

  external XPathExpression createExpression(
    String expression, [
    XPathNSResolver? resolver,
  ]);
  external Node createNSResolver(Node nodeResolver);
  external XPathResult evaluate(
    String expression,
    Node contextNode, [
    XPathNSResolver? resolver,
    int type,
    XPathResult? result,
  ]);
}
extension type XSLTProcessor._(JSObject _) implements JSObject {
  external factory XSLTProcessor();

  external void importStylesheet(Node style);
  external DocumentFragment transformToFragment(
    Node source,
    Document output,
  );
  external Document transformToDocument(Node source);
  external void setParameter(
    String namespaceURI,
    String localName,
    JSAny? value,
  );
  external JSAny? getParameter(
    String namespaceURI,
    String localName,
  );
  external void removeParameter(
    String namespaceURI,
    String localName,
  );
  external void clearParameters();
  external void reset();
}
