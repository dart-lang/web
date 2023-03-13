// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'css_font_loading.dart';
import 'css_nav.dart';
import 'css_pseudo.dart';
import 'css_regions.dart';
import 'css_typed_om.dart';
import 'css_view_transitions.dart';
import 'cssom.dart';
import 'cssom_view.dart';
import 'dom_parsing.dart';
import 'edit_context.dart';
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
typedef ShadowRootMode = JSString;
typedef SlotAssignmentMode = JSString;

@JS('Event')
@staticInterop
class Event {
  external factory Event(
    JSString type, [
    EventInit eventInitDict,
  ]);

  external static JSNumber get NONE;
  external static JSNumber get CAPTURING_PHASE;
  external static JSNumber get AT_TARGET;
  external static JSNumber get BUBBLING_PHASE;
}

extension EventExtension on Event {
  external JSArray composedPath();
  external JSVoid stopPropagation();
  external JSVoid stopImmediatePropagation();
  external JSVoid preventDefault();
  external JSVoid initEvent(
    JSString type, [
    JSBoolean bubbles,
    JSBoolean cancelable,
  ]);
  external JSString get type;
  external EventTarget? get target;
  external EventTarget? get srcElement;
  external EventTarget? get currentTarget;
  external JSNumber get eventPhase;
  external set cancelBubble(JSBoolean value);
  external JSBoolean get cancelBubble;
  external JSBoolean get bubbles;
  external JSBoolean get cancelable;
  external set returnValue(JSBoolean value);
  external JSBoolean get returnValue;
  external JSBoolean get defaultPrevented;
  external JSBoolean get composed;
  external JSBoolean get isTrusted;
  external DOMHighResTimeStamp get timeStamp;
}

@JS()
@staticInterop
@anonymous
class EventInit {
  external factory EventInit({
    JSBoolean bubbles = false,
    JSBoolean cancelable = false,
    JSBoolean composed = false,
  });
}

extension EventInitExtension on EventInit {
  external set bubbles(JSBoolean value);
  external JSBoolean get bubbles;
  external set cancelable(JSBoolean value);
  external JSBoolean get cancelable;
  external set composed(JSBoolean value);
  external JSBoolean get composed;
}

@JS('CustomEvent')
@staticInterop
class CustomEvent implements Event {
  external factory CustomEvent(
    JSString type, [
    CustomEventInit eventInitDict,
  ]);
}

extension CustomEventExtension on CustomEvent {
  external JSVoid initCustomEvent(
    JSString type, [
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSAny detail,
  ]);
  external JSAny get detail;
}

@JS()
@staticInterop
@anonymous
class CustomEventInit implements EventInit {
  external factory CustomEventInit({JSAny detail});
}

extension CustomEventInitExtension on CustomEventInit {
  external set detail(JSAny value);
  external JSAny get detail;
}

@JS('EventTarget')
@staticInterop
class EventTarget {
  external factory EventTarget();
}

extension EventTargetExtension on EventTarget {
  external JSVoid addEventListener(
    JSString type,
    EventListener? callback, [
    JSAny options,
  ]);
  external JSVoid removeEventListener(
    JSString type,
    EventListener? callback, [
    JSAny options,
  ]);
  external JSBoolean dispatchEvent(Event event);
}

@JS()
@staticInterop
@anonymous
class EventListenerOptions {
  external factory EventListenerOptions({JSBoolean capture = false});
}

extension EventListenerOptionsExtension on EventListenerOptions {
  external set capture(JSBoolean value);
  external JSBoolean get capture;
}

@JS()
@staticInterop
@anonymous
class AddEventListenerOptions implements EventListenerOptions {
  external factory AddEventListenerOptions({
    JSBoolean passive,
    JSBoolean once = false,
    AbortSignal signal,
  });
}

extension AddEventListenerOptionsExtension on AddEventListenerOptions {
  external set passive(JSBoolean value);
  external JSBoolean get passive;
  external set once(JSBoolean value);
  external JSBoolean get once;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}

@JS('AbortController')
@staticInterop
class AbortController {
  external factory AbortController();
}

extension AbortControllerExtension on AbortController {
  external JSVoid abort([JSAny reason]);
  external AbortSignal get signal;
}

@JS('AbortSignal')
@staticInterop
class AbortSignal implements EventTarget {
  external static AbortSignal abort([JSAny reason]);
  external static AbortSignal timeout(JSNumber milliseconds);
}

extension AbortSignalExtension on AbortSignal {
  external JSVoid throwIfAborted();
  external JSBoolean get aborted;
  external JSAny get reason;
  external set onabort(EventHandler value);
  external EventHandler get onabort;
}

@JS('NonElementParentNode')
@staticInterop
class NonElementParentNode {}

extension NonElementParentNodeExtension on NonElementParentNode {
  external Element? getElementById(JSString elementId);
}

@JS('DocumentOrShadowRoot')
@staticInterop
class DocumentOrShadowRoot {}

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
class ParentNode {}

extension ParentNodeExtension on ParentNode {
  external JSVoid prepend(JSAny nodes);
  external JSVoid append(JSAny nodes);
  external JSVoid replaceChildren(JSAny nodes);
  external Element? querySelector(JSString selectors);
  external NodeList querySelectorAll(JSString selectors);
  external HTMLCollection get children;
  external Element? get firstElementChild;
  external Element? get lastElementChild;
  external JSNumber get childElementCount;
}

@JS('NonDocumentTypeChildNode')
@staticInterop
class NonDocumentTypeChildNode {}

extension NonDocumentTypeChildNodeExtension on NonDocumentTypeChildNode {
  external Element? get previousElementSibling;
  external Element? get nextElementSibling;
}

@JS('ChildNode')
@staticInterop
class ChildNode {}

extension ChildNodeExtension on ChildNode {
  external JSVoid before(JSAny nodes);
  external JSVoid after(JSAny nodes);
  external JSVoid replaceWith(JSAny nodes);
  external JSVoid remove();
}

@JS('Slottable')
@staticInterop
class Slottable {}

extension SlottableExtension on Slottable {
  external HTMLSlotElement? get assignedSlot;
}

@JS('NodeList')
@staticInterop
class NodeList {}

extension NodeListExtension on NodeList {
  external Node? item(JSNumber index);
  external JSNumber get length;
}

@JS('HTMLCollection')
@staticInterop
class HTMLCollection {}

extension HTMLCollectionExtension on HTMLCollection {
  external Element? item(JSNumber index);
  external Element? namedItem(JSString name);
  external JSNumber get length;
}

@JS('MutationObserver')
@staticInterop
class MutationObserver {
  external factory MutationObserver(MutationCallback callback);
}

extension MutationObserverExtension on MutationObserver {
  external JSVoid observe(
    Node target, [
    MutationObserverInit options,
  ]);
  external JSVoid disconnect();
  external JSArray takeRecords();
}

@JS()
@staticInterop
@anonymous
class MutationObserverInit {
  external factory MutationObserverInit({
    JSBoolean childList = false,
    JSBoolean attributes,
    JSBoolean characterData,
    JSBoolean subtree = false,
    JSBoolean attributeOldValue,
    JSBoolean characterDataOldValue,
    JSArray attributeFilter,
  });
}

extension MutationObserverInitExtension on MutationObserverInit {
  external set childList(JSBoolean value);
  external JSBoolean get childList;
  external set attributes(JSBoolean value);
  external JSBoolean get attributes;
  external set characterData(JSBoolean value);
  external JSBoolean get characterData;
  external set subtree(JSBoolean value);
  external JSBoolean get subtree;
  external set attributeOldValue(JSBoolean value);
  external JSBoolean get attributeOldValue;
  external set characterDataOldValue(JSBoolean value);
  external JSBoolean get characterDataOldValue;
  external set attributeFilter(JSArray value);
  external JSArray get attributeFilter;
}

@JS('MutationRecord')
@staticInterop
class MutationRecord {}

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
class Node implements EventTarget {
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
  external Node getRootNode([GetRootNodeOptions options]);
  external JSBoolean hasChildNodes();
  external JSVoid normalize();
  external Node cloneNode([JSBoolean deep]);
  external JSBoolean isEqualNode(Node? otherNode);
  external JSBoolean isSameNode(Node? otherNode);
  external JSNumber compareDocumentPosition(Node other);
  external JSBoolean contains(Node? other);
  external JSString? lookupPrefix(JSString? namespace);
  external JSString? lookupNamespaceURI(JSString? prefix);
  external JSBoolean isDefaultNamespace(JSString? namespace);
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
  external JSNumber get nodeType;
  external JSString get nodeName;
  external JSString get baseURI;
  external JSBoolean get isConnected;
  external Document? get ownerDocument;
  external Node? get parentNode;
  external Element? get parentElement;
  external NodeList get childNodes;
  external Node? get firstChild;
  external Node? get lastChild;
  external Node? get previousSibling;
  external Node? get nextSibling;
  external set nodeValue(JSString? value);
  external JSString? get nodeValue;
  external set textContent(JSString? value);
  external JSString? get textContent;
}

@JS()
@staticInterop
@anonymous
class GetRootNodeOptions {
  external factory GetRootNodeOptions({JSBoolean composed = false});
}

extension GetRootNodeOptionsExtension on GetRootNodeOptions {
  external set composed(JSBoolean value);
  external JSBoolean get composed;
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
    JSNumber x,
    JSNumber y,
  );
  external JSArray elementsFromPoint(
    JSNumber x,
    JSNumber y,
  );
  external CaretPosition? caretPositionFromPoint(
    JSNumber x,
    JSNumber y,
  );
  external HTMLCollection getElementsByTagName(JSString qualifiedName);
  external HTMLCollection getElementsByTagNameNS(
    JSString? namespace,
    JSString localName,
  );
  external HTMLCollection getElementsByClassName(JSString classNames);
  external Element createElement(
    JSString localName, [
    JSAny options,
  ]);
  external Element createElementNS(
    JSString? namespace,
    JSString qualifiedName, [
    JSAny options,
  ]);
  external DocumentFragment createDocumentFragment();
  external Text createTextNode(JSString data);
  external CDATASection createCDATASection(JSString data);
  external Comment createComment(JSString data);
  external ProcessingInstruction createProcessingInstruction(
    JSString target,
    JSString data,
  );
  external Node importNode(
    Node node, [
    JSBoolean deep,
  ]);
  external Node adoptNode(Node node);
  external Attr createAttribute(JSString localName);
  external Attr createAttributeNS(
    JSString? namespace,
    JSString qualifiedName,
  );
  external Event createEvent(JSString interface);
  external Range createRange();
  external NodeIterator createNodeIterator(
    Node root, [
    JSNumber whatToShow,
    NodeFilter? filter,
  ]);
  external TreeWalker createTreeWalker(
    Node root, [
    JSNumber whatToShow,
    NodeFilter? filter,
  ]);
  external FontMetrics measureElement(Element element);
  external FontMetrics measureText(
    JSString text,
    StylePropertyMapReadOnly styleMap,
  );
  external JSPromise exitFullscreen();
  external NodeList getElementsByName(JSString elementName);
  external JSAny? open([
    JSString unused1OrUrl,
    JSString nameOrUnused2,
    JSString features,
  ]);
  external JSVoid close();
  external JSVoid write(JSString text);
  external JSVoid writeln(JSString text);
  external JSBoolean hasFocus();
  external JSBoolean execCommand(
    JSString commandId, [
    JSBoolean showUI,
    JSString value,
  ]);
  external JSBoolean queryCommandEnabled(JSString commandId);
  external JSBoolean queryCommandIndeterm(JSString commandId);
  external JSBoolean queryCommandState(JSString commandId);
  external JSBoolean queryCommandSupported(JSString commandId);
  external JSString queryCommandValue(JSString commandId);
  external JSVoid clear();
  external JSVoid captureEvents();
  external JSVoid releaseEvents();
  external JSPromise exitPictureInPicture();
  external JSVoid exitPointerLock();
  external JSPromise requestStorageAccessForOrigin(JSString requestedOrigin);
  external Selection? getSelection();
  external JSPromise hasStorageAccess();
  external JSPromise requestStorageAccess();
  external JSPromise hasPrivateTokens(
    JSString issuer,
    JSString type,
  );
  external JSPromise hasRedemptionRecord(
    JSString issuer,
    JSString type,
  );
  external SVGSVGElement? get rootElement;
  external NamedFlowMap get namedFlows;
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
  external JSBoolean get fullscreenEnabled;
  external JSBoolean get fullscreen;
  external set onfullscreenchange(EventHandler value);
  external EventHandler get onfullscreenchange;
  external set onfullscreenerror(EventHandler value);
  external EventHandler get onfullscreenerror;
  external Location? get location;
  external set domain(JSString value);
  external JSString get domain;
  external JSString get referrer;
  external set cookie(JSString value);
  external JSString get cookie;
  external JSString get lastModified;
  external DocumentReadyState get readyState;
  external set title(JSString value);
  external JSString get title;
  external set dir(JSString value);
  external JSString get dir;
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
  external set designMode(JSString value);
  external JSString get designMode;
  external JSBoolean get hidden;
  external DocumentVisibilityState get visibilityState;
  external set onreadystatechange(EventHandler value);
  external EventHandler get onreadystatechange;
  external set onvisibilitychange(EventHandler value);
  external EventHandler get onvisibilitychange;
  external set fgColor(JSString value);
  external JSString get fgColor;
  external set linkColor(JSString value);
  external JSString get linkColor;
  external set vlinkColor(JSString value);
  external JSString get vlinkColor;
  external set alinkColor(JSString value);
  external JSString get alinkColor;
  external set bgColor(JSString value);
  external JSString get bgColor;
  external HTMLCollection get anchors;
  external HTMLCollection get applets;
  external HTMLAllCollection get all;
  external set onfreeze(EventHandler value);
  external EventHandler get onfreeze;
  external set onresume(EventHandler value);
  external EventHandler get onresume;
  external JSBoolean get wasDiscarded;
  external PermissionsPolicy get permissionsPolicy;
  external JSBoolean get pictureInPictureEnabled;
  external set onpointerlockchange(EventHandler value);
  external EventHandler get onpointerlockchange;
  external set onpointerlockerror(EventHandler value);
  external EventHandler get onpointerlockerror;
  external JSBoolean get prerendering;
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
class ElementCreationOptions {
  external factory ElementCreationOptions({JSString is_});
}

extension ElementCreationOptionsExtension on ElementCreationOptions {
  @JS('is')
  external set is_(JSString value);
  @JS('is')
  external JSString get is_;
}

@JS('DOMImplementation')
@staticInterop
class DOMImplementation {}

extension DOMImplementationExtension on DOMImplementation {
  external DocumentType createDocumentType(
    JSString qualifiedName,
    JSString publicId,
    JSString systemId,
  );
  external XMLDocument createDocument(
    JSString? namespace,
    JSString qualifiedName, [
    DocumentType? doctype,
  ]);
  external Document createHTMLDocument([JSString title]);
  external JSBoolean hasFeature();
}

@JS('DocumentType')
@staticInterop
class DocumentType implements Node, ChildNode {}

extension DocumentTypeExtension on DocumentType {
  external JSString get name;
  external JSString get publicId;
  external JSString get systemId;
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
  external JSBoolean get delegatesFocus;
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
  external JSVoid insertAdjacentHTML(
    JSString position,
    JSString text,
  );
  external Node getSpatialNavigationContainer();
  external JSArray focusableAreas([FocusableAreasOption option]);
  external Node? spatialNavigationSearch(
    SpatialNavigationDirection dir, [
    SpatialNavigationSearchOptions options,
  ]);
  external CSSPseudoElement? pseudo(JSString type);
  external StylePropertyMapReadOnly computedStyleMap();
  external DOMRectList getClientRects();
  external DOMRect getBoundingClientRect();
  external JSBoolean checkVisibility([CheckVisibilityOptions options]);
  external JSVoid scrollIntoView([JSAny arg]);
  external JSVoid scroll([
    JSAny optionsOrX,
    JSNumber y,
  ]);
  external JSVoid scrollTo([
    JSAny optionsOrX,
    JSNumber y,
  ]);
  external JSVoid scrollBy([
    JSAny optionsOrX,
    JSNumber y,
  ]);
  external JSBoolean hasAttributes();
  external JSArray getAttributeNames();
  external JSString? getAttribute(JSString qualifiedName);
  external JSString? getAttributeNS(
    JSString? namespace,
    JSString localName,
  );
  external JSVoid setAttribute(
    JSString qualifiedName,
    JSString value,
  );
  external JSVoid setAttributeNS(
    JSString? namespace,
    JSString qualifiedName,
    JSString value,
  );
  external JSVoid removeAttribute(JSString qualifiedName);
  external JSVoid removeAttributeNS(
    JSString? namespace,
    JSString localName,
  );
  external JSBoolean toggleAttribute(
    JSString qualifiedName, [
    JSBoolean force,
  ]);
  external JSBoolean hasAttribute(JSString qualifiedName);
  external JSBoolean hasAttributeNS(
    JSString? namespace,
    JSString localName,
  );
  external Attr? getAttributeNode(JSString qualifiedName);
  external Attr? getAttributeNodeNS(
    JSString? namespace,
    JSString localName,
  );
  external Attr? setAttributeNode(Attr attr);
  external Attr? setAttributeNodeNS(Attr attr);
  external Attr removeAttributeNode(Attr attr);
  external ShadowRoot attachShadow(ShadowRootInit init);
  external Element? closest(JSString selectors);
  external JSBoolean matches(JSString selectors);
  external JSBoolean webkitMatchesSelector(JSString selectors);
  external HTMLCollection getElementsByTagName(JSString qualifiedName);
  external HTMLCollection getElementsByTagNameNS(
    JSString? namespace,
    JSString localName,
  );
  external HTMLCollection getElementsByClassName(JSString classNames);
  external Element? insertAdjacentElement(
    JSString where,
    Element element,
  );
  external JSVoid insertAdjacentText(
    JSString where,
    JSString data,
  );
  external JSPromise requestFullscreen([FullscreenOptions options]);
  external JSVoid setPointerCapture(JSNumber pointerId);
  external JSVoid releasePointerCapture(JSNumber pointerId);
  external JSBoolean hasPointerCapture(JSNumber pointerId);
  external JSVoid requestPointerLock();
  external JSVoid setHTML(
    JSString input, [
    SetHTMLOptions options,
  ]);
  external set outerHTML(JSString value);
  external JSString get outerHTML;
  external DOMTokenList get part;
  external set scrollTop(JSNumber value);
  external JSNumber get scrollTop;
  external set scrollLeft(JSNumber value);
  external JSNumber get scrollLeft;
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
  external set id(JSString value);
  external JSString get id;
  external set className(JSString value);
  external JSString get className;
  external DOMTokenList get classList;
  external set slot(JSString value);
  external JSString get slot;
  external NamedNodeMap get attributes;
  external ShadowRoot? get shadowRoot;
  external set editContext(EditContext? value);
  external EditContext? get editContext;
  external set elementTiming(JSString value);
  external JSString get elementTiming;
  external set onfullscreenchange(EventHandler value);
  external EventHandler get onfullscreenchange;
  external set onfullscreenerror(EventHandler value);
  external EventHandler get onfullscreenerror;
}

@JS()
@staticInterop
@anonymous
class ShadowRootInit {
  external factory ShadowRootInit({
    required ShadowRootMode mode,
    JSBoolean delegatesFocus = false,
    SlotAssignmentMode slotAssignment = 'named',
  });
}

extension ShadowRootInitExtension on ShadowRootInit {
  external set mode(ShadowRootMode value);
  external ShadowRootMode get mode;
  external set delegatesFocus(JSBoolean value);
  external JSBoolean get delegatesFocus;
  external set slotAssignment(SlotAssignmentMode value);
  external SlotAssignmentMode get slotAssignment;
}

@JS('NamedNodeMap')
@staticInterop
class NamedNodeMap {}

extension NamedNodeMapExtension on NamedNodeMap {
  external Attr? item(JSNumber index);
  external Attr? getNamedItem(JSString qualifiedName);
  external Attr? getNamedItemNS(
    JSString? namespace,
    JSString localName,
  );
  external Attr? setNamedItem(Attr attr);
  external Attr? setNamedItemNS(Attr attr);
  external Attr removeNamedItem(JSString qualifiedName);
  external Attr removeNamedItemNS(
    JSString? namespace,
    JSString localName,
  );
  external JSNumber get length;
}

@JS('Attr')
@staticInterop
class Attr implements Node {}

extension AttrExtension on Attr {
  external JSString? get namespaceURI;
  external JSString? get prefix;
  external JSString get localName;
  external JSString get name;
  external set value(JSString value);
  external JSString get value;
  external Element? get ownerElement;
  external JSBoolean get specified;
}

@JS('CharacterData')
@staticInterop
class CharacterData implements Node, NonDocumentTypeChildNode, ChildNode {}

extension CharacterDataExtension on CharacterData {
  external JSString substringData(
    JSNumber offset,
    JSNumber count,
  );
  external JSVoid appendData(JSString data);
  external JSVoid insertData(
    JSNumber offset,
    JSString data,
  );
  external JSVoid deleteData(
    JSNumber offset,
    JSNumber count,
  );
  external JSVoid replaceData(
    JSNumber offset,
    JSNumber count,
    JSString data,
  );
  external set data(JSString value);
  external JSString get data;
  external JSNumber get length;
}

@JS('Text')
@staticInterop
class Text implements CharacterData, GeometryUtils, Slottable {
  external factory Text([JSString data]);
}

extension TextExtension on Text {
  external Text splitText(JSNumber offset);
  external JSString get wholeText;
}

@JS('CDATASection')
@staticInterop
class CDATASection implements Text {}

@JS('ProcessingInstruction')
@staticInterop
class ProcessingInstruction implements CharacterData, LinkStyle {}

extension ProcessingInstructionExtension on ProcessingInstruction {
  external JSString get target;
}

@JS('Comment')
@staticInterop
class Comment implements CharacterData {
  external factory Comment([JSString data]);
}

@JS('AbstractRange')
@staticInterop
class AbstractRange {}

extension AbstractRangeExtension on AbstractRange {
  external Node get startContainer;
  external JSNumber get startOffset;
  external Node get endContainer;
  external JSNumber get endOffset;
  external JSBoolean get collapsed;
}

@JS()
@staticInterop
@anonymous
class StaticRangeInit {
  external factory StaticRangeInit({
    required Node startContainer,
    required JSNumber startOffset,
    required Node endContainer,
    required JSNumber endOffset,
  });
}

extension StaticRangeInitExtension on StaticRangeInit {
  external set startContainer(Node value);
  external Node get startContainer;
  external set startOffset(JSNumber value);
  external JSNumber get startOffset;
  external set endContainer(Node value);
  external Node get endContainer;
  external set endOffset(JSNumber value);
  external JSNumber get endOffset;
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

  external static JSNumber get START_TO_START;
  external static JSNumber get START_TO_END;
  external static JSNumber get END_TO_END;
  external static JSNumber get END_TO_START;
}

extension RangeExtension on Range {
  external DocumentFragment createContextualFragment(JSString fragment);
  external DOMRectList getClientRects();
  external DOMRect getBoundingClientRect();
  external JSVoid setStart(
    Node node,
    JSNumber offset,
  );
  external JSVoid setEnd(
    Node node,
    JSNumber offset,
  );
  external JSVoid setStartBefore(Node node);
  external JSVoid setStartAfter(Node node);
  external JSVoid setEndBefore(Node node);
  external JSVoid setEndAfter(Node node);
  external JSVoid collapse([JSBoolean toStart]);
  external JSVoid selectNode(Node node);
  external JSVoid selectNodeContents(Node node);
  external JSNumber compareBoundaryPoints(
    JSNumber how,
    Range sourceRange,
  );
  external JSVoid deleteContents();
  external DocumentFragment extractContents();
  external DocumentFragment cloneContents();
  external JSVoid insertNode(Node node);
  external JSVoid surroundContents(Node newParent);
  external Range cloneRange();
  external JSVoid detach();
  external JSBoolean isPointInRange(
    Node node,
    JSNumber offset,
  );
  external JSNumber comparePoint(
    Node node,
    JSNumber offset,
  );
  external JSBoolean intersectsNode(Node node);
  external Node get commonAncestorContainer;
}

@JS('NodeIterator')
@staticInterop
class NodeIterator {}

extension NodeIteratorExtension on NodeIterator {
  external Node? nextNode();
  external Node? previousNode();
  external JSVoid detach();
  external Node get root;
  external Node get referenceNode;
  external JSBoolean get pointerBeforeReferenceNode;
  external JSNumber get whatToShow;
  external NodeFilter? get filter;
}

@JS('TreeWalker')
@staticInterop
class TreeWalker {}

extension TreeWalkerExtension on TreeWalker {
  external Node? parentNode();
  external Node? firstChild();
  external Node? lastChild();
  external Node? previousSibling();
  external Node? nextSibling();
  external Node? previousNode();
  external Node? nextNode();
  external Node get root;
  external JSNumber get whatToShow;
  external NodeFilter? get filter;
  external set currentNode(Node value);
  external Node get currentNode;
}

@JS('DOMTokenList')
@staticInterop
class DOMTokenList {}

extension DOMTokenListExtension on DOMTokenList {
  external JSString? item(JSNumber index);
  external JSBoolean contains(JSString token);
  external JSVoid add(JSString tokens);
  external JSVoid remove(JSString tokens);
  external JSBoolean toggle(
    JSString token, [
    JSBoolean force,
  ]);
  external JSBoolean replace(
    JSString token,
    JSString newToken,
  );
  external JSBoolean supports(JSString token);
  external JSNumber get length;
  external set value(JSString value);
  external JSString get value;
}

@JS('XPathResult')
@staticInterop
class XPathResult {
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
  external Node? iterateNext();
  external Node? snapshotItem(JSNumber index);
  external JSNumber get resultType;
  external JSNumber get numberValue;
  external JSString get stringValue;
  external JSBoolean get booleanValue;
  external Node? get singleNodeValue;
  external JSBoolean get invalidIteratorState;
  external JSNumber get snapshotLength;
}

@JS('XPathExpression')
@staticInterop
class XPathExpression {}

extension XPathExpressionExtension on XPathExpression {
  external XPathResult evaluate(
    Node contextNode, [
    JSNumber type,
    XPathResult? result,
  ]);
}

@JS('XPathEvaluatorBase')
@staticInterop
class XPathEvaluatorBase {}

extension XPathEvaluatorBaseExtension on XPathEvaluatorBase {
  external XPathExpression createExpression(
    JSString expression, [
    XPathNSResolver? resolver,
  ]);
  external Node createNSResolver(Node nodeResolver);
  external XPathResult evaluate(
    JSString expression,
    Node contextNode, [
    XPathNSResolver? resolver,
    JSNumber type,
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
class XSLTProcessor {
  external factory XSLTProcessor();
}

extension XSLTProcessorExtension on XSLTProcessor {
  external JSVoid importStylesheet(Node style);
  external DocumentFragment transformToFragment(
    Node source,
    Document output,
  );
  external Document transformToDocument(Node source);
  external JSVoid setParameter(
    JSString namespaceURI,
    JSString localName,
    JSAny value,
  );
  external JSAny getParameter(
    JSString namespaceURI,
    JSString localName,
  );
  external JSVoid removeParameter(
    JSString namespaceURI,
    JSString localName,
  );
  external JSVoid clearParameters();
  external JSVoid reset();
}
