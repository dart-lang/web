// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'css_font_loading.dart';
import 'css_nav.dart';
import 'css_pseudo.dart';
import 'css_regions.dart';
import 'css_typed_om.dart';
import 'css_view_transitions.dart';
import 'cssom.dart';
import 'cssom_view.dart';
import 'dom_parsing.dart';
import 'font_metrics_api.dart';
import 'fullscreen.dart';
import 'geometry.dart';
import 'hr_time.dart';
import 'html.dart';
import 'permissions_policy.dart';
import 'sanitizer_api.dart';
import 'scroll_to_text_fragment.dart';
import 'selection_api.dart';
import 'svg.dart';
import 'wai_aria.dart';
import 'web_animations.dart';

typedef MutationCallback = JSFunction;
typedef EventListener = JSFunction;
typedef NodeFilter = JSFunction;
typedef XPathNSResolver = JSFunction;
typedef ShadowRootMode = String;
typedef SlotAssignmentMode = String;

@JS('Event')
@staticInterop
class Event implements JSObject {
  external factory Event(
    String type, [
    EventInit eventInitDict,
  ]);

  external static int get NONE;
  external static int get CAPTURING_PHASE;
  external static int get AT_TARGET;
  external static int get BUBBLING_PHASE;
}

extension EventExtension on Event {
  external JSArray composedPath();
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

@JS()
@staticInterop
@anonymous
class EventInit implements JSObject {
  external factory EventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
  });
}

extension EventInitExtension on EventInit {
  external set bubbles(bool value);
  external bool get bubbles;
  external set cancelable(bool value);
  external bool get cancelable;
  external set composed(bool value);
  external bool get composed;
}

@JS('CustomEvent')
@staticInterop
class CustomEvent implements Event {
  external factory CustomEvent(
    String type, [
    CustomEventInit eventInitDict,
  ]);
}

extension CustomEventExtension on CustomEvent {
  external void initCustomEvent(
    String type, [
    bool bubbles,
    bool cancelable,
    JSAny? detail,
  ]);
  external JSAny? get detail;
}

@JS()
@staticInterop
@anonymous
class CustomEventInit implements EventInit {
  external factory CustomEventInit({JSAny? detail});
}

extension CustomEventInitExtension on CustomEventInit {
  external set detail(JSAny? value);
  external JSAny? get detail;
}

@JS('EventTarget')
@staticInterop
class EventTarget implements JSObject {
  external factory EventTarget();
}

extension EventTargetExtension on EventTarget {
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

@JS()
@staticInterop
@anonymous
class EventListenerOptions implements JSObject {
  external factory EventListenerOptions({bool capture});
}

extension EventListenerOptionsExtension on EventListenerOptions {
  external set capture(bool value);
  external bool get capture;
}

@JS()
@staticInterop
@anonymous
class AddEventListenerOptions implements EventListenerOptions {
  external factory AddEventListenerOptions({
    bool passive,
    bool once,
    AbortSignal signal,
  });
}

extension AddEventListenerOptionsExtension on AddEventListenerOptions {
  external set passive(bool value);
  external bool get passive;
  external set once(bool value);
  external bool get once;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}

@JS('AbortController')
@staticInterop
class AbortController implements JSObject {
  external factory AbortController();
}

extension AbortControllerExtension on AbortController {
  external void abort([JSAny? reason]);
  external AbortSignal get signal;
}

@JS('AbortSignal')
@staticInterop
class AbortSignal implements EventTarget {
  external static AbortSignal abort([JSAny? reason]);
  external static AbortSignal timeout(int milliseconds);
  external static AbortSignal any(JSArray signals);
}

extension AbortSignalExtension on AbortSignal {
  external void throwIfAborted();
  external bool get aborted;
  external JSAny? get reason;
  external set onabort(EventHandler value);
  external EventHandler get onabort;
}

@JS('NonElementParentNode')
@staticInterop
class NonElementParentNode implements JSObject {}

extension NonElementParentNodeExtension on NonElementParentNode {
  external Element? getElementById(String elementId);
}

@JS('DocumentOrShadowRoot')
@staticInterop
class DocumentOrShadowRoot implements JSObject {}

extension DocumentOrShadowRootExtension on DocumentOrShadowRoot {
  external JSArray getAnimations();
  external StyleSheetList get styleSheets;
  external set adoptedStyleSheets(JSArray value);
  external JSArray get adoptedStyleSheets;
  external Element? get fullscreenElement;
  external Element? get activeElement;
  external Element? get pictureInPictureElement;
  external Element? get pointerLockElement;
}

@JS('ParentNode')
@staticInterop
class ParentNode implements JSObject {}

extension ParentNodeExtension on ParentNode {
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

@JS('NonDocumentTypeChildNode')
@staticInterop
class NonDocumentTypeChildNode implements JSObject {}

extension NonDocumentTypeChildNodeExtension on NonDocumentTypeChildNode {
  external Element? get previousElementSibling;
  external Element? get nextElementSibling;
}

@JS('ChildNode')
@staticInterop
class ChildNode implements JSObject {}

extension ChildNodeExtension on ChildNode {
  external void before(JSAny nodes);
  external void after(JSAny nodes);
  external void replaceWith(JSAny nodes);
  external void remove();
}

@JS('Slottable')
@staticInterop
class Slottable implements JSObject {}

extension SlottableExtension on Slottable {
  external HTMLSlotElement? get assignedSlot;
}

@JS('NodeList')
@staticInterop
class NodeList implements JSObject {}

extension NodeListExtension on NodeList {
  external Node? item(int index);
  external int get length;
}

@JS('HTMLCollection')
@staticInterop
class HTMLCollection implements JSObject {}

extension HTMLCollectionExtension on HTMLCollection {
  external Element? item(int index);
  external Element? namedItem(String name);
  external int get length;
}

@JS('MutationObserver')
@staticInterop
class MutationObserver implements JSObject {
  external factory MutationObserver(MutationCallback callback);
}

extension MutationObserverExtension on MutationObserver {
  external void observe(
    Node target, [
    MutationObserverInit options,
  ]);
  external void disconnect();
  external JSArray takeRecords();
}

@JS()
@staticInterop
@anonymous
class MutationObserverInit implements JSObject {
  external factory MutationObserverInit({
    bool childList,
    bool attributes,
    bool characterData,
    bool subtree,
    bool attributeOldValue,
    bool characterDataOldValue,
    JSArray attributeFilter,
  });
}

extension MutationObserverInitExtension on MutationObserverInit {
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
  external set attributeFilter(JSArray value);
  external JSArray get attributeFilter;
}

@JS('MutationRecord')
@staticInterop
class MutationRecord implements JSObject {}

extension MutationRecordExtension on MutationRecord {
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

@JS('Node')
@staticInterop
class Node implements EventTarget {
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
}

extension NodeExtension on Node {
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

@JS()
@staticInterop
@anonymous
class GetRootNodeOptions implements JSObject {
  external factory GetRootNodeOptions({bool composed});
}

extension GetRootNodeOptionsExtension on GetRootNodeOptions {
  external set composed(bool value);
  external bool get composed;
}

@JS()
external Document get document;

@JS('Document')
@staticInterop
class Document
    implements
        Node,
        FontFaceSource,
        GeometryUtils,
        NonElementParentNode,
        DocumentOrShadowRoot,
        ParentNode,
        XPathEvaluatorBase,
        GlobalEventHandlers {
  external factory Document();
}

extension DocumentExtension on Document {
  external ViewTransition startViewTransition([UpdateCallback? updateCallback]);
  external Element? elementFromPoint(
    num x,
    num y,
  );
  external JSArray elementsFromPoint(
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
  external FontMetrics measureElement(Element element);
  external FontMetrics measureText(
    String text,
    StylePropertyMapReadOnly styleMap,
  );
  external JSPromise exitFullscreen();
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
  external JSPromise exitPictureInPicture();
  external void exitPointerLock();
  external JSPromise requestStorageAccessFor(String requestedOrigin);
  external Selection? getSelection();
  external JSPromise hasStorageAccess();
  external JSPromise requestStorageAccess();
  external JSPromise hasPrivateTokens(String issuer);
  external JSPromise hasRedemptionRecord(String issuer);
  external SVGSVGElement? get rootElement;
  external NamedFlowMap get namedFlows;
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
  external bool get fullscreenEnabled;
  external bool get fullscreen;
  external set onfullscreenchange(EventHandler value);
  external EventHandler get onfullscreenchange;
  external set onfullscreenerror(EventHandler value);
  external EventHandler get onfullscreenerror;
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
  external set onfreeze(EventHandler value);
  external EventHandler get onfreeze;
  external set onresume(EventHandler value);
  external EventHandler get onresume;
  external bool get wasDiscarded;
  external PermissionsPolicy get permissionsPolicy;
  external bool get pictureInPictureEnabled;
  external set onpointerlockchange(EventHandler value);
  external EventHandler get onpointerlockchange;
  external set onpointerlockerror(EventHandler value);
  external EventHandler get onpointerlockerror;
  external bool get prerendering;
  external set onprerenderingchange(EventHandler value);
  external EventHandler get onprerenderingchange;
  external FragmentDirective get fragmentDirective;
  external DocumentTimeline get timeline;
}

@JS('XMLDocument')
@staticInterop
class XMLDocument implements Document {}

@JS()
@staticInterop
@anonymous
class ElementCreationOptions implements JSObject {
  external factory ElementCreationOptions({String is_});
}

extension ElementCreationOptionsExtension on ElementCreationOptions {
  @JS('is')
  external set is_(String value);
  @JS('is')
  external String get is_;
}

@JS('DOMImplementation')
@staticInterop
class DOMImplementation implements JSObject {}

extension DOMImplementationExtension on DOMImplementation {
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

@JS('DocumentType')
@staticInterop
class DocumentType implements Node, ChildNode {}

extension DocumentTypeExtension on DocumentType {
  external String get name;
  external String get publicId;
  external String get systemId;
}

@JS('DocumentFragment')
@staticInterop
class DocumentFragment implements Node, NonElementParentNode, ParentNode {
  external factory DocumentFragment();
}

@JS('ShadowRoot')
@staticInterop
class ShadowRoot implements DocumentFragment, InnerHTML, DocumentOrShadowRoot {}

extension ShadowRootExtension on ShadowRoot {
  external ShadowRootMode get mode;
  external bool get delegatesFocus;
  external SlotAssignmentMode get slotAssignment;
  external Element get host;
  external set onslotchange(EventHandler value);
  external EventHandler get onslotchange;
}

@JS('Element')
@staticInterop
class Element
    implements
        Node,
        InnerHTML,
        Region,
        GeometryUtils,
        ParentNode,
        NonDocumentTypeChildNode,
        ChildNode,
        Slottable,
        ARIAMixin,
        Animatable {}

extension ElementExtension on Element {
  external void insertAdjacentHTML(
    String position,
    String text,
  );
  external Node getSpatialNavigationContainer();
  external JSArray focusableAreas([FocusableAreasOption option]);
  external Node? spatialNavigationSearch(
    SpatialNavigationDirection dir, [
    SpatialNavigationSearchOptions options,
  ]);
  external CSSPseudoElement? pseudo(String type);
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
  external JSArray getAttributeNames();
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
  external JSPromise requestFullscreen([FullscreenOptions options]);
  external void setPointerCapture(int pointerId);
  external void releasePointerCapture(int pointerId);
  external bool hasPointerCapture(int pointerId);
  external void requestPointerLock();
  external void setHTML(
    String input, [
    SetHTMLOptions options,
  ]);
  external set outerHTML(String value);
  external String get outerHTML;
  external DOMTokenList get part;
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
  external set elementTiming(String value);
  external String get elementTiming;
  external set onfullscreenchange(EventHandler value);
  external EventHandler get onfullscreenchange;
  external set onfullscreenerror(EventHandler value);
  external EventHandler get onfullscreenerror;
}

@JS()
@staticInterop
@anonymous
class ShadowRootInit implements JSObject {
  external factory ShadowRootInit({
    required ShadowRootMode mode,
    bool delegatesFocus,
    SlotAssignmentMode slotAssignment,
  });
}

extension ShadowRootInitExtension on ShadowRootInit {
  external set mode(ShadowRootMode value);
  external ShadowRootMode get mode;
  external set delegatesFocus(bool value);
  external bool get delegatesFocus;
  external set slotAssignment(SlotAssignmentMode value);
  external SlotAssignmentMode get slotAssignment;
}

@JS('NamedNodeMap')
@staticInterop
class NamedNodeMap implements JSObject {}

extension NamedNodeMapExtension on NamedNodeMap {
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

@JS('Attr')
@staticInterop
class Attr implements Node {}

extension AttrExtension on Attr {
  external String? get namespaceURI;
  external String? get prefix;
  external String get localName;
  external String get name;
  external set value(String value);
  external String get value;
  external Element? get ownerElement;
  external bool get specified;
}

@JS('CharacterData')
@staticInterop
class CharacterData implements Node, NonDocumentTypeChildNode, ChildNode {}

extension CharacterDataExtension on CharacterData {
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
  external set data(String value);
  external String get data;
  external int get length;
}

@JS('Text')
@staticInterop
class Text implements CharacterData, GeometryUtils, Slottable {
  external factory Text([String data]);
}

extension TextExtension on Text {
  external Text splitText(int offset);
  external String get wholeText;
}

@JS('CDATASection')
@staticInterop
class CDATASection implements Text {}

@JS('ProcessingInstruction')
@staticInterop
class ProcessingInstruction implements CharacterData, LinkStyle {}

extension ProcessingInstructionExtension on ProcessingInstruction {
  external String get target;
}

@JS('Comment')
@staticInterop
class Comment implements CharacterData {
  external factory Comment([String data]);
}

@JS('AbstractRange')
@staticInterop
class AbstractRange implements JSObject {}

extension AbstractRangeExtension on AbstractRange {
  external Node get startContainer;
  external int get startOffset;
  external Node get endContainer;
  external int get endOffset;
  external bool get collapsed;
}

@JS()
@staticInterop
@anonymous
class StaticRangeInit implements JSObject {
  external factory StaticRangeInit({
    required Node startContainer,
    required int startOffset,
    required Node endContainer,
    required int endOffset,
  });
}

extension StaticRangeInitExtension on StaticRangeInit {
  external set startContainer(Node value);
  external Node get startContainer;
  external set startOffset(int value);
  external int get startOffset;
  external set endContainer(Node value);
  external Node get endContainer;
  external set endOffset(int value);
  external int get endOffset;
}

@JS('StaticRange')
@staticInterop
class StaticRange implements AbstractRange {
  external factory StaticRange(StaticRangeInit init);
}

@JS('Range')
@staticInterop
class Range implements AbstractRange {
  external factory Range();

  external static int get START_TO_START;
  external static int get START_TO_END;
  external static int get END_TO_END;
  external static int get END_TO_START;
}

extension RangeExtension on Range {
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

@JS('NodeIterator')
@staticInterop
class NodeIterator implements JSObject {}

extension NodeIteratorExtension on NodeIterator {
  external Node? nextNode();
  external Node? previousNode();
  external void detach();
  external Node get root;
  external Node get referenceNode;
  external bool get pointerBeforeReferenceNode;
  external int get whatToShow;
  external NodeFilter? get filter;
}

@JS('TreeWalker')
@staticInterop
class TreeWalker implements JSObject {}

extension TreeWalkerExtension on TreeWalker {
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

@JS('DOMTokenList')
@staticInterop
class DOMTokenList implements JSObject {}

extension DOMTokenListExtension on DOMTokenList {
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

@JS('XPathResult')
@staticInterop
class XPathResult implements JSObject {
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
}

extension XPathResultExtension on XPathResult {
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

@JS('XPathExpression')
@staticInterop
class XPathExpression implements JSObject {}

extension XPathExpressionExtension on XPathExpression {
  external XPathResult evaluate(
    Node contextNode, [
    int type,
    XPathResult? result,
  ]);
}

@JS('XPathEvaluatorBase')
@staticInterop
class XPathEvaluatorBase implements JSObject {}

extension XPathEvaluatorBaseExtension on XPathEvaluatorBase {
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

@JS('XPathEvaluator')
@staticInterop
class XPathEvaluator implements XPathEvaluatorBase {
  external factory XPathEvaluator();
}

@JS('XSLTProcessor')
@staticInterop
class XSLTProcessor implements JSObject {
  external factory XSLTProcessor();
}

extension XSLTProcessorExtension on XSLTProcessor {
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
