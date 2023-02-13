// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef MutationCallback = JSFunction;
typedef EventListener = JSFunction;
typedef NodeFilter = JSFunction;
typedef XPathNSResolver = JSFunction;
typedef ShadowRootMode = JSString;
typedef SlotAssignmentMode = JSString;

@JS('Event')
@staticInterop
class Event {
  external factory Event();
  external factory Event.a1(JSString type);
  external factory Event.a1_1(JSString type, EventInit eventInitDict);
  external static JSNumber get NONE;
  external static JSNumber get CAPTURING_PHASE;
  external static JSNumber get AT_TARGET;
  external static JSNumber get BUBBLING_PHASE;
}

extension EventExtension on Event {
  external JSString get type;
  external EventTarget? get target;
  external EventTarget? get srcElement;
  external EventTarget? get currentTarget;
  external JSArray composedPath();
  external JSNumber get eventPhase;
  external JSUndefined stopPropagation();
  external JSBoolean get cancelBubble;
  external set cancelBubble(JSBoolean value);
  external JSUndefined stopImmediatePropagation();
  external JSBoolean get bubbles;
  external JSBoolean get cancelable;
  external JSBoolean get returnValue;
  external set returnValue(JSBoolean value);
  external JSUndefined preventDefault();
  external JSBoolean get defaultPrevented;
  external JSBoolean get composed;
  external JSBoolean get isTrusted;
  external DOMHighResTimeStamp get timeStamp;
  external JSUndefined initEvent(JSString type);
  external JSUndefined initEvent_1(JSString type, JSBoolean bubbles);
  external JSUndefined initEvent_2(
      JSString type, JSBoolean bubbles, JSBoolean cancelable);
}

@JS('EventInit')
@staticInterop
class EventInit {
  external factory EventInit();
}

extension EventInitExtension on EventInit {
  // TODO
  // TODO
  // TODO
}

@JS('CustomEvent')
@staticInterop
class CustomEvent extends Event {
  external factory CustomEvent();
  external factory CustomEvent.a1(JSString type);
  external factory CustomEvent.a1_1(
      JSString type, CustomEventInit eventInitDict);
}

extension CustomEventExtension on CustomEvent {
  external JSAny get detail;
  external JSUndefined initCustomEvent(JSString type);
  external JSUndefined initCustomEvent_1(JSString type, JSBoolean bubbles);
  external JSUndefined initCustomEvent_2(
      JSString type, JSBoolean bubbles, JSBoolean cancelable);
  external JSUndefined initCustomEvent_3(
      JSString type, JSBoolean bubbles, JSBoolean cancelable, JSAny detail);
}

@JS('CustomEventInit')
@staticInterop
class CustomEventInit extends EventInit {
  external factory CustomEventInit();
}

extension CustomEventInitExtension on CustomEventInit {
  // TODO
}

@JS('EventTarget')
@staticInterop
class EventTarget {
  external factory EventTarget();
}

extension EventTargetExtension on EventTarget {
  external JSUndefined addEventListener(JSString type, EventListener? callback);
  external JSUndefined addEventListener_1(
      JSString type, EventListener? callback, JSAny options);
  external JSUndefined removeEventListener(
      JSString type, EventListener? callback);
  external JSUndefined removeEventListener_1(
      JSString type, EventListener? callback, JSAny options);
  external JSBoolean dispatchEvent(Event event);
}

@JS('EventListenerOptions')
@staticInterop
class EventListenerOptions {
  external factory EventListenerOptions();
}

extension EventListenerOptionsExtension on EventListenerOptions {
  // TODO
}

@JS('AddEventListenerOptions')
@staticInterop
class AddEventListenerOptions extends EventListenerOptions {
  external factory AddEventListenerOptions();
}

extension AddEventListenerOptionsExtension on AddEventListenerOptions {
  // TODO
  // TODO
  // TODO
}

@JS('AbortController')
@staticInterop
class AbortController {
  external factory AbortController();
}

extension AbortControllerExtension on AbortController {
  external AbortSignal get signal;
  external JSUndefined abort();
  external JSUndefined abort_1(JSAny reason);
}

@JS('AbortSignal')
@staticInterop
class AbortSignal extends EventTarget {
  external factory AbortSignal();
  external static AbortSignal abort();
  external static AbortSignal abort_1(JSAny reason);
  external static AbortSignal timeout(JSNumber milliseconds);
}

extension AbortSignalExtension on AbortSignal {
  external JSBoolean get aborted;
  external JSAny get reason;
  external JSUndefined throwIfAborted();
  external EventHandler get onabort;
  external set onabort(EventHandler value);
}

@JS('NonElementParentNode')
@staticInterop
class NonElementParentNode {
  external factory NonElementParentNode();
}

extension NonElementParentNodeExtension on NonElementParentNode {
  external Element? getElementById(JSString elementId);
}

@JS('DocumentOrShadowRoot')
@staticInterop
class DocumentOrShadowRoot {
  external factory DocumentOrShadowRoot();
}

extension DocumentOrShadowRootExtension on DocumentOrShadowRoot {
  external StyleSheetList get styleSheets;
  external JSArray get adoptedStyleSheets;
  external set adoptedStyleSheets(JSArray value);
  external Element? get fullscreenElement;
  external Element? get activeElement;
  external Element? get pictureInPictureElement;
  external Element? get pointerLockElement;
  external JSArray getAnimations();
}

@JS('ParentNode')
@staticInterop
class ParentNode {
  external factory ParentNode();
}

extension ParentNodeExtension on ParentNode {
  external HTMLCollection get children;
  external Element? get firstElementChild;
  external Element? get lastElementChild;
  external JSNumber get childElementCount;
  external JSUndefined prepend(JSAny nodes);
  external JSUndefined append(JSAny nodes);
  external JSUndefined replaceChildren(JSAny nodes);
  external Element? querySelector(JSString selectors);
  external NodeList querySelectorAll(JSString selectors);
}

@JS('NonDocumentTypeChildNode')
@staticInterop
class NonDocumentTypeChildNode {
  external factory NonDocumentTypeChildNode();
}

extension NonDocumentTypeChildNodeExtension on NonDocumentTypeChildNode {
  external Element? get previousElementSibling;
  external Element? get nextElementSibling;
}

@JS('ChildNode')
@staticInterop
class ChildNode {
  external factory ChildNode();
}

extension ChildNodeExtension on ChildNode {
  external JSUndefined before(JSAny nodes);
  external JSUndefined after(JSAny nodes);
  external JSUndefined replaceWith(JSAny nodes);
  external JSUndefined remove();
}

@JS('Slottable')
@staticInterop
class Slottable {
  external factory Slottable();
}

extension SlottableExtension on Slottable {
  external HTMLSlotElement? get assignedSlot;
}

@JS('NodeList')
@staticInterop
class NodeList {
  external factory NodeList();
}

extension NodeListExtension on NodeList {
  external Node? item(JSNumber index);
  external JSNumber get length;
  // TODO
}

@JS('HTMLCollection')
@staticInterop
class HTMLCollection {
  external factory HTMLCollection();
}

extension HTMLCollectionExtension on HTMLCollection {
  external JSNumber get length;
  external Element? item(JSNumber index);
  external Element? namedItem(JSString name);
}

@JS('MutationObserver')
@staticInterop
class MutationObserver {
  external factory MutationObserver();
  external factory MutationObserver.a1(MutationCallback callback);
}

extension MutationObserverExtension on MutationObserver {
  external JSUndefined observe(Node target);
  external JSUndefined observe_1(Node target, MutationObserverInit options);
  external JSUndefined disconnect();
  external JSArray takeRecords();
}

@JS('MutationObserverInit')
@staticInterop
class MutationObserverInit {
  external factory MutationObserverInit();
}

extension MutationObserverInitExtension on MutationObserverInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('MutationRecord')
@staticInterop
class MutationRecord {
  external factory MutationRecord();
}

extension MutationRecordExtension on MutationRecord {
  external JSString get type;
  external Node get target;
  external NodeList get addedNodes;
  external NodeList get removedNodes;
  external Node? get previousSibling;
  external Node? get nextSibling;
  external JSString? get attributeName;
  external JSString? get attributeNamespace;
  external JSString? get oldValue;
}

@JS('Node')
@staticInterop
class Node extends EventTarget {
  external factory Node();
  external static JSNumber get ELEMENT_NODE;
  external static JSNumber get ATTRIBUTE_NODE;
  external static JSNumber get TEXT_NODE;
  external static JSNumber get CDATA_SECTION_NODE;
  external static JSNumber get ENTITY_REFERENCE_NODE;
  external static JSNumber get ENTITY_NODE;
  external static JSNumber get PROCESSING_INSTRUCTION_NODE;
  external static JSNumber get COMMENT_NODE;
  external static JSNumber get DOCUMENT_NODE;
  external static JSNumber get DOCUMENT_TYPE_NODE;
  external static JSNumber get DOCUMENT_FRAGMENT_NODE;
  external static JSNumber get NOTATION_NODE;
  external static JSNumber get DOCUMENT_POSITION_DISCONNECTED;
  external static JSNumber get DOCUMENT_POSITION_PRECEDING;
  external static JSNumber get DOCUMENT_POSITION_FOLLOWING;
  external static JSNumber get DOCUMENT_POSITION_CONTAINS;
  external static JSNumber get DOCUMENT_POSITION_CONTAINED_BY;
  external static JSNumber get DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC;
}

extension NodeExtension on Node {
  external JSNumber get nodeType;
  external JSString get nodeName;
  external JSString get baseURI;
  external JSBoolean get isConnected;
  external Document? get ownerDocument;
  external Node getRootNode();
  external Node getRootNode_1(GetRootNodeOptions options);
  external Node? get parentNode;
  external Element? get parentElement;
  external JSBoolean hasChildNodes();
  external NodeList get childNodes;
  external Node? get firstChild;
  external Node? get lastChild;
  external Node? get previousSibling;
  external Node? get nextSibling;
  external JSString? get nodeValue;
  external set nodeValue(JSString? value);
  external JSString? get textContent;
  external set textContent(JSString? value);
  external JSUndefined normalize();
  external Node cloneNode();
  external Node cloneNode_1(JSBoolean deep);
  external JSBoolean isEqualNode(Node? otherNode);
  external JSBoolean isSameNode(Node? otherNode);
  external JSNumber compareDocumentPosition(Node other);
  external JSBoolean contains(Node? other);
  external JSString? lookupPrefix(JSString? namespace);
  external JSString? lookupNamespaceURI(JSString? prefix);
  external JSBoolean isDefaultNamespace(JSString? namespace);
  external Node insertBefore(Node node, Node? child);
  external Node appendChild(Node node);
  external Node replaceChild(Node node, Node child);
  external Node removeChild(Node child);
}

@JS('GetRootNodeOptions')
@staticInterop
class GetRootNodeOptions {
  external factory GetRootNodeOptions();
}

extension GetRootNodeOptionsExtension on GetRootNodeOptions {
  // TODO
}

@JS()
external Document get document;

@JS('Document')
@staticInterop
class Document extends Node
    implements
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
  external SVGSVGElement? get rootElement;
  external NamedFlowMap get namedFlows;
  external ViewTransition startViewTransition();
  external ViewTransition startViewTransition_1(UpdateCallback? updateCallback);
  external Element? elementFromPoint(JSNumber x, JSNumber y);
  external JSArray elementsFromPoint(JSNumber x, JSNumber y);
  external CaretPosition? caretPositionFromPoint(JSNumber x, JSNumber y);
  external Element? get scrollingElement;
  external DOMImplementation get implementation;
  external JSString get URL;
  external JSString get documentURI;
  external JSString get compatMode;
  external JSString get characterSet;
  external JSString get charset;
  external JSString get inputEncoding;
  external JSString get contentType;
  external DocumentType? get doctype;
  external Element? get documentElement;
  external HTMLCollection getElementsByTagName(JSString qualifiedName);
  external HTMLCollection getElementsByTagNameNS(
      JSString? namespace, JSString localName);
  external HTMLCollection getElementsByClassName(JSString classNames);
  external Element createElement(JSString localName);
  external Element createElement_1(JSString localName, JSAny options);
  external Element createElementNS(JSString? namespace, JSString qualifiedName);
  external Element createElementNS_1(
      JSString? namespace, JSString qualifiedName, JSAny options);
  external DocumentFragment createDocumentFragment();
  external Text createTextNode(JSString data);
  external CDATASection createCDATASection(JSString data);
  external Comment createComment(JSString data);
  external ProcessingInstruction createProcessingInstruction(
      JSString target, JSString data);
  external Node importNode(Node node);
  external Node importNode_1(Node node, JSBoolean deep);
  external Node adoptNode(Node node);
  external Attr createAttribute(JSString localName);
  external Attr createAttributeNS(JSString? namespace, JSString qualifiedName);
  external Event createEvent(JSString interface);
  external Range createRange();
  external NodeIterator createNodeIterator(Node root);
  external NodeIterator createNodeIterator_1(Node root, JSNumber whatToShow);
  external NodeIterator createNodeIterator_2(
      Node root, JSNumber whatToShow, NodeFilter? filter);
  external TreeWalker createTreeWalker(Node root);
  external TreeWalker createTreeWalker_1(Node root, JSNumber whatToShow);
  external TreeWalker createTreeWalker_2(
      Node root, JSNumber whatToShow, NodeFilter? filter);
  external FontMetrics measureElement(Element element);
  external FontMetrics measureText(
      JSString text, StylePropertyMapReadOnly styleMap);
  external JSBoolean get fullscreenEnabled;
  external JSBoolean get fullscreen;
  external JSPromise exitFullscreen();
  external EventHandler get onfullscreenchange;
  external set onfullscreenchange(EventHandler value);
  external EventHandler get onfullscreenerror;
  external set onfullscreenerror(EventHandler value);
  external Location? get location;
  external JSString get domain;
  external set domain(JSString value);
  external JSString get referrer;
  external JSString get cookie;
  external set cookie(JSString value);
  external JSString get lastModified;
  external DocumentReadyState get readyState;
  external JSString get title;
  external set title(JSString value);
  external JSString get dir;
  external set dir(JSString value);
  external HTMLElement? get body;
  external set body(HTMLElement? value);
  external HTMLHeadElement? get head;
  external HTMLCollection get images;
  external HTMLCollection get embeds;
  external HTMLCollection get plugins;
  external HTMLCollection get links;
  external HTMLCollection get forms;
  external HTMLCollection get scripts;
  external NodeList getElementsByName(JSString elementName);
  external HTMLOrSVGScriptElement? get currentScript;
  external Document open();
  external Document open_1(JSString unused1);
  external Document open_2(JSString unused1, JSString unused2);
  @JS('open')
  external Window? open1(JSString url, JSString name, JSString features);
  external JSUndefined close();
  external JSUndefined write(JSString text);
  external JSUndefined writeln(JSString text);
  external Window? get defaultView;
  external JSBoolean hasFocus();
  external JSString get designMode;
  external set designMode(JSString value);
  external JSBoolean execCommand(JSString commandId);
  external JSBoolean execCommand_1(JSString commandId, JSBoolean showUI);
  external JSBoolean execCommand_2(
      JSString commandId, JSBoolean showUI, JSString value);
  external JSBoolean queryCommandEnabled(JSString commandId);
  external JSBoolean queryCommandIndeterm(JSString commandId);
  external JSBoolean queryCommandState(JSString commandId);
  external JSBoolean queryCommandSupported(JSString commandId);
  external JSString queryCommandValue(JSString commandId);
  external JSBoolean get hidden;
  external DocumentVisibilityState get visibilityState;
  external EventHandler get onreadystatechange;
  external set onreadystatechange(EventHandler value);
  external EventHandler get onvisibilitychange;
  external set onvisibilitychange(EventHandler value);
  external JSString get fgColor;
  external set fgColor(JSString value);
  external JSString get linkColor;
  external set linkColor(JSString value);
  external JSString get vlinkColor;
  external set vlinkColor(JSString value);
  external JSString get alinkColor;
  external set alinkColor(JSString value);
  external JSString get bgColor;
  external set bgColor(JSString value);
  external HTMLCollection get anchors;
  external HTMLCollection get applets;
  external JSUndefined clear();
  external JSUndefined captureEvents();
  external JSUndefined releaseEvents();
  external HTMLAllCollection get all;
  external EventHandler get onfreeze;
  external set onfreeze(EventHandler value);
  external EventHandler get onresume;
  external set onresume(EventHandler value);
  external JSBoolean get wasDiscarded;
  external PermissionsPolicy get permissionsPolicy;
  external JSBoolean get pictureInPictureEnabled;
  external JSPromise exitPictureInPicture();
  external EventHandler get onpointerlockchange;
  external set onpointerlockchange(EventHandler value);
  external EventHandler get onpointerlockerror;
  external set onpointerlockerror(EventHandler value);
  external JSUndefined exitPointerLock();
  external JSBoolean get prerendering;
  external EventHandler get onprerenderingchange;
  external set onprerenderingchange(EventHandler value);
  external JSPromise requestStorageAccessForOrigin(JSString origin);
  external FragmentDirective get fragmentDirective;
  external Selection? getSelection();
  external JSPromise hasStorageAccess();
  external JSPromise requestStorageAccess();
  external DocumentTimeline get timeline;
}

@JS('XMLDocument')
@staticInterop
class XMLDocument extends Document {
  external factory XMLDocument();
}

@JS('ElementCreationOptions')
@staticInterop
class ElementCreationOptions {
  external factory ElementCreationOptions();
}

extension ElementCreationOptionsExtension on ElementCreationOptions {
  // TODO
}

@JS('DOMImplementation')
@staticInterop
class DOMImplementation {
  external factory DOMImplementation();
}

extension DOMImplementationExtension on DOMImplementation {
  external DocumentType createDocumentType(
      JSString qualifiedName, JSString publicId, JSString systemId);
  external XMLDocument createDocument(
      JSString? namespace, JSString qualifiedName);
  external XMLDocument createDocument_1(
      JSString? namespace, JSString qualifiedName, DocumentType? doctype);
  external Document createHTMLDocument();
  external Document createHTMLDocument_1(JSString title);
  external JSBoolean hasFeature();
}

@JS('DocumentType')
@staticInterop
class DocumentType extends Node implements ChildNode {
  external factory DocumentType();
}

extension DocumentTypeExtension on DocumentType {
  external JSString get name;
  external JSString get publicId;
  external JSString get systemId;
}

@JS('DocumentFragment')
@staticInterop
class DocumentFragment extends Node
    implements NonElementParentNode, ParentNode {
  external factory DocumentFragment();
}

@JS('ShadowRoot')
@staticInterop
class ShadowRoot extends DocumentFragment
    implements InnerHTML, DocumentOrShadowRoot {
  external factory ShadowRoot();
}

extension ShadowRootExtension on ShadowRoot {
  external ShadowRootMode get mode;
  external JSBoolean get delegatesFocus;
  external SlotAssignmentMode get slotAssignment;
  external Element get host;
  external EventHandler get onslotchange;
  external set onslotchange(EventHandler value);
}

@JS('Element')
@staticInterop
class Element extends Node
    implements
        InnerHTML,
        Region,
        GeometryUtils,
        ParentNode,
        NonDocumentTypeChildNode,
        ChildNode,
        Slottable,
        ARIAMixin,
        Animatable {
  external factory Element();
}

extension ElementExtension on Element {
  external JSString get outerHTML;
  external set outerHTML(JSString value);
  external JSUndefined insertAdjacentHTML(JSString position, JSString text);
  external Node getSpatialNavigationContainer();
  external JSArray focusableAreas();
  external JSArray focusableAreas_1(FocusableAreasOption option);
  external Node? spatialNavigationSearch(SpatialNavigationDirection dir);
  external Node? spatialNavigationSearch_1(
      SpatialNavigationDirection dir, SpatialNavigationSearchOptions options);
  external CSSPseudoElement? pseudo(JSString type);
  external DOMTokenList get part;
  external StylePropertyMapReadOnly computedStyleMap();
  external DOMRectList getClientRects();
  external DOMRect getBoundingClientRect();
  external JSBoolean checkVisibility();
  external JSBoolean checkVisibility_1(CheckVisibilityOptions options);
  external JSUndefined scrollIntoView();
  external JSUndefined scrollIntoView_1(JSAny arg);
  external JSUndefined scroll();
  external JSUndefined scroll_1(ScrollToOptions options);
  @JS('scroll')
  external JSUndefined scroll1(JSNumber x, JSNumber y);
  external JSUndefined scrollTo();
  external JSUndefined scrollTo_1(ScrollToOptions options);
  @JS('scrollTo')
  external JSUndefined scrollTo1(JSNumber x, JSNumber y);
  external JSUndefined scrollBy();
  external JSUndefined scrollBy_1(ScrollToOptions options);
  @JS('scrollBy')
  external JSUndefined scrollBy1(JSNumber x, JSNumber y);
  external JSNumber get scrollTop;
  external set scrollTop(JSNumber value);
  external JSNumber get scrollLeft;
  external set scrollLeft(JSNumber value);
  external JSNumber get scrollWidth;
  external JSNumber get scrollHeight;
  external JSNumber get clientTop;
  external JSNumber get clientLeft;
  external JSNumber get clientWidth;
  external JSNumber get clientHeight;
  external JSString? get namespaceURI;
  external JSString? get prefix;
  external JSString get localName;
  external JSString get tagName;
  external JSString get id;
  external set id(JSString value);
  external JSString get className;
  external set className(JSString value);
  external DOMTokenList get classList;
  external JSString get slot;
  external set slot(JSString value);
  external JSBoolean hasAttributes();
  external NamedNodeMap get attributes;
  external JSArray getAttributeNames();
  external JSString? getAttribute(JSString qualifiedName);
  external JSString? getAttributeNS(JSString? namespace, JSString localName);
  external JSUndefined setAttribute(JSString qualifiedName, JSString value);
  external JSUndefined setAttributeNS(
      JSString? namespace, JSString qualifiedName, JSString value);
  external JSUndefined removeAttribute(JSString qualifiedName);
  external JSUndefined removeAttributeNS(
      JSString? namespace, JSString localName);
  external JSBoolean toggleAttribute(JSString qualifiedName);
  external JSBoolean toggleAttribute_1(JSString qualifiedName, JSBoolean force);
  external JSBoolean hasAttribute(JSString qualifiedName);
  external JSBoolean hasAttributeNS(JSString? namespace, JSString localName);
  external Attr? getAttributeNode(JSString qualifiedName);
  external Attr? getAttributeNodeNS(JSString? namespace, JSString localName);
  external Attr? setAttributeNode(Attr attr);
  external Attr? setAttributeNodeNS(Attr attr);
  external Attr removeAttributeNode(Attr attr);
  external ShadowRoot attachShadow(ShadowRootInit init);
  external ShadowRoot? get shadowRoot;
  external Element? closest(JSString selectors);
  external JSBoolean matches(JSString selectors);
  external JSBoolean webkitMatchesSelector(JSString selectors);
  external HTMLCollection getElementsByTagName(JSString qualifiedName);
  external HTMLCollection getElementsByTagNameNS(
      JSString? namespace, JSString localName);
  external HTMLCollection getElementsByClassName(JSString classNames);
  external Element? insertAdjacentElement(JSString where, Element element);
  external JSUndefined insertAdjacentText(JSString where, JSString data);
  external EditContext? get editContext;
  external set editContext(EditContext? value);
  external JSString get elementTiming;
  external set elementTiming(JSString value);
  external JSPromise requestFullscreen();
  external JSPromise requestFullscreen_1(FullscreenOptions options);
  external EventHandler get onfullscreenchange;
  external set onfullscreenchange(EventHandler value);
  external EventHandler get onfullscreenerror;
  external set onfullscreenerror(EventHandler value);
  external JSUndefined setPointerCapture(JSNumber pointerId);
  external JSUndefined releasePointerCapture(JSNumber pointerId);
  external JSBoolean hasPointerCapture(JSNumber pointerId);
  external JSUndefined requestPointerLock();
  external JSUndefined setHTML(JSString input);
  external JSUndefined setHTML_1(JSString input, SetHTMLOptions options);
}

@JS('ShadowRootInit')
@staticInterop
class ShadowRootInit {
  external factory ShadowRootInit();
}

extension ShadowRootInitExtension on ShadowRootInit {
  // TODO
  // TODO
  // TODO
}

@JS('NamedNodeMap')
@staticInterop
class NamedNodeMap {
  external factory NamedNodeMap();
}

extension NamedNodeMapExtension on NamedNodeMap {
  external JSNumber get length;
  external Attr? item(JSNumber index);
  external Attr? getNamedItem(JSString qualifiedName);
  external Attr? getNamedItemNS(JSString? namespace, JSString localName);
  external Attr? setNamedItem(Attr attr);
  external Attr? setNamedItemNS(Attr attr);
  external Attr removeNamedItem(JSString qualifiedName);
  external Attr removeNamedItemNS(JSString? namespace, JSString localName);
}

@JS('Attr')
@staticInterop
class Attr extends Node {
  external factory Attr();
}

extension AttrExtension on Attr {
  external JSString? get namespaceURI;
  external JSString? get prefix;
  external JSString get localName;
  external JSString get name;
  external JSString get value;
  external set value(JSString value);
  external Element? get ownerElement;
  external JSBoolean get specified;
}

@JS('CharacterData')
@staticInterop
class CharacterData extends Node
    implements NonDocumentTypeChildNode, ChildNode {
  external factory CharacterData();
}

extension CharacterDataExtension on CharacterData {
  external JSString get data;
  external set data(JSString value);
  external JSNumber get length;
  external JSString substringData(JSNumber offset, JSNumber count);
  external JSUndefined appendData(JSString data);
  external JSUndefined insertData(JSNumber offset, JSString data);
  external JSUndefined deleteData(JSNumber offset, JSNumber count);
  external JSUndefined replaceData(
      JSNumber offset, JSNumber count, JSString data);
}

@JS('Text')
@staticInterop
class Text extends CharacterData implements GeometryUtils, Slottable {
  external factory Text();
  external factory Text.a1();
  external factory Text.a1_1(JSString data);
}

extension TextExtension on Text {
  external Text splitText(JSNumber offset);
  external JSString get wholeText;
}

@JS('CDATASection')
@staticInterop
class CDATASection extends Text {
  external factory CDATASection();
}

@JS('ProcessingInstruction')
@staticInterop
class ProcessingInstruction extends CharacterData implements LinkStyle {
  external factory ProcessingInstruction();
}

extension ProcessingInstructionExtension on ProcessingInstruction {
  external JSString get target;
}

@JS('Comment')
@staticInterop
class Comment extends CharacterData {
  external factory Comment();
  external factory Comment.a1();
  external factory Comment.a1_1(JSString data);
}

@JS('AbstractRange')
@staticInterop
class AbstractRange {
  external factory AbstractRange();
}

extension AbstractRangeExtension on AbstractRange {
  external Node get startContainer;
  external JSNumber get startOffset;
  external Node get endContainer;
  external JSNumber get endOffset;
  external JSBoolean get collapsed;
}

@JS('StaticRangeInit')
@staticInterop
class StaticRangeInit {
  external factory StaticRangeInit();
}

extension StaticRangeInitExtension on StaticRangeInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('StaticRange')
@staticInterop
class StaticRange extends AbstractRange {
  external factory StaticRange();
  external factory StaticRange.a1(StaticRangeInit init);
}

@JS('Range')
@staticInterop
class Range extends AbstractRange {
  external factory Range();
  external static JSNumber get START_TO_START;
  external static JSNumber get START_TO_END;
  external static JSNumber get END_TO_END;
  external static JSNumber get END_TO_START;
}

extension RangeExtension on Range {
  external DocumentFragment createContextualFragment(JSString fragment);
  external DOMRectList getClientRects();
  external DOMRect getBoundingClientRect();
  external Node get commonAncestorContainer;
  external JSUndefined setStart(Node node, JSNumber offset);
  external JSUndefined setEnd(Node node, JSNumber offset);
  external JSUndefined setStartBefore(Node node);
  external JSUndefined setStartAfter(Node node);
  external JSUndefined setEndBefore(Node node);
  external JSUndefined setEndAfter(Node node);
  external JSUndefined collapse();
  external JSUndefined collapse_1(JSBoolean toStart);
  external JSUndefined selectNode(Node node);
  external JSUndefined selectNodeContents(Node node);
  external JSNumber compareBoundaryPoints(JSNumber how, Range sourceRange);
  external JSUndefined deleteContents();
  external DocumentFragment extractContents();
  external DocumentFragment cloneContents();
  external JSUndefined insertNode(Node node);
  external JSUndefined surroundContents(Node newParent);
  external Range cloneRange();
  external JSUndefined detach();
  external JSBoolean isPointInRange(Node node, JSNumber offset);
  external JSNumber comparePoint(Node node, JSNumber offset);
  external JSBoolean intersectsNode(Node node);
}

@JS('NodeIterator')
@staticInterop
class NodeIterator {
  external factory NodeIterator();
}

extension NodeIteratorExtension on NodeIterator {
  external Node get root;
  external Node get referenceNode;
  external JSBoolean get pointerBeforeReferenceNode;
  external JSNumber get whatToShow;
  external NodeFilter? get filter;
  external Node? nextNode();
  external Node? previousNode();
  external JSUndefined detach();
}

@JS('TreeWalker')
@staticInterop
class TreeWalker {
  external factory TreeWalker();
}

extension TreeWalkerExtension on TreeWalker {
  external Node get root;
  external JSNumber get whatToShow;
  external NodeFilter? get filter;
  external Node get currentNode;
  external set currentNode(Node value);
  external Node? parentNode();
  external Node? firstChild();
  external Node? lastChild();
  external Node? previousSibling();
  external Node? nextSibling();
  external Node? previousNode();
  external Node? nextNode();
}

@JS('DOMTokenList')
@staticInterop
class DOMTokenList {
  external factory DOMTokenList();
}

extension DOMTokenListExtension on DOMTokenList {
  external JSNumber get length;
  external JSString? item(JSNumber index);
  external JSBoolean contains(JSString token);
  external JSUndefined add(JSString tokens);
  external JSUndefined remove(JSString tokens);
  external JSBoolean toggle(JSString token);
  external JSBoolean toggle_1(JSString token, JSBoolean force);
  external JSBoolean replace(JSString token, JSString newToken);
  external JSBoolean supports(JSString token);
  external JSString get value;
  external set value(JSString value);
  // TODO
}

@JS('XPathResult')
@staticInterop
class XPathResult {
  external factory XPathResult();
  external static JSNumber get ANY_TYPE;
  external static JSNumber get NUMBER_TYPE;
  external static JSNumber get STRING_TYPE;
  external static JSNumber get BOOLEAN_TYPE;
  external static JSNumber get UNORDERED_NODE_ITERATOR_TYPE;
  external static JSNumber get ORDERED_NODE_ITERATOR_TYPE;
  external static JSNumber get UNORDERED_NODE_SNAPSHOT_TYPE;
  external static JSNumber get ORDERED_NODE_SNAPSHOT_TYPE;
  external static JSNumber get ANY_UNORDERED_NODE_TYPE;
  external static JSNumber get FIRST_ORDERED_NODE_TYPE;
}

extension XPathResultExtension on XPathResult {
  external JSNumber get resultType;
  external JSNumber get numberValue;
  external JSString get stringValue;
  external JSBoolean get booleanValue;
  external Node? get singleNodeValue;
  external JSBoolean get invalidIteratorState;
  external JSNumber get snapshotLength;
  external Node? iterateNext();
  external Node? snapshotItem(JSNumber index);
}

@JS('XPathExpression')
@staticInterop
class XPathExpression {
  external factory XPathExpression();
}

extension XPathExpressionExtension on XPathExpression {
  external XPathResult evaluate(Node contextNode);
  external XPathResult evaluate_1(Node contextNode, JSNumber type);
  external XPathResult evaluate_2(
      Node contextNode, JSNumber type, XPathResult? result);
}

@JS('XPathEvaluatorBase')
@staticInterop
class XPathEvaluatorBase {
  external factory XPathEvaluatorBase();
}

extension XPathEvaluatorBaseExtension on XPathEvaluatorBase {
  external XPathExpression createExpression(JSString expression);
  external XPathExpression createExpression_1(
      JSString expression, XPathNSResolver? resolver);
  external XPathNSResolver createNSResolver(Node nodeResolver);
  external XPathResult evaluate(JSString expression, Node contextNode);
  external XPathResult evaluate_1(
      JSString expression, Node contextNode, XPathNSResolver? resolver);
  external XPathResult evaluate_2(JSString expression, Node contextNode,
      XPathNSResolver? resolver, JSNumber type);
  external XPathResult evaluate_3(JSString expression, Node contextNode,
      XPathNSResolver? resolver, JSNumber type, XPathResult? result);
}

@JS('XPathEvaluator')
@staticInterop
class XPathEvaluator implements XPathEvaluatorBase {
  external factory XPathEvaluator();
}

@JS('XSLTProcessor')
@staticInterop
class XSLTProcessor {
  external factory XSLTProcessor();
}

extension XSLTProcessorExtension on XSLTProcessor {
  external JSUndefined importStylesheet(Node style);
  external DocumentFragment transformToFragment(Node source, Document output);
  external Document transformToDocument(Node source);
  external JSUndefined setParameter(
      JSString namespaceURI, JSString localName, JSAny value);
  external JSAny getParameter(JSString namespaceURI, JSString localName);
  external JSUndefined removeParameter(
      JSString namespaceURI, JSString localName);
  external JSUndefined clearParameters();
  external JSUndefined reset();
}
