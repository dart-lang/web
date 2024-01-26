// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'css_font_loading.dart';
import 'css_nav.dart';
import 'css_pseudo.dart';
import 'css_regions.dart';
import 'css_typed_om.dart';
import 'css_view_transitions.dart';
import 'cssom.dart';
import 'cssom_view.dart';
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

  /// The **`composedPath()`** method of the [Event]
  /// interface returns the event's path which is an array of the objects on
  /// which listeners
  /// will be invoked. This does not include nodes in shadow trees if the shadow
  /// root was
  /// created with its [ShadowRoot.mode] closed.
  external JSArray composedPath();

  /// The **`stopPropagation()`** method of the [Event]
  /// interface prevents further propagation of the current event in the
  /// capturing and
  /// bubbling phases. It does not, however, prevent any default behaviors from
  /// occurring; for
  /// instance, clicks on links are still processed. If you want to stop those
  /// behaviors, see
  /// the [Event.preventDefault] method. It also does not
  /// prevent propagation to other event-handlers of the current element. If you
  /// want to stop those,
  /// see [Event.stopImmediatePropagation].
  external void stopPropagation();

  /// The **`stopImmediatePropagation()`** method of the
  /// [Event] interface prevents other listeners of the same event from being
  /// called.
  ///
  /// If several listeners are attached to the same element for the same event
  /// type, they are called in the order in which they were added. If
  /// `stopImmediatePropagation()` is invoked during one such call, no remaining
  /// listeners will be called, either on that element or any other element.
  external void stopImmediatePropagation();

  /// The **`preventDefault()`** method of the [Event] interface tells the  that
  /// if the event does not get explicitly handled, its default action should
  /// not be taken as it normally would be.
  ///
  /// The event continues to propagate as usual,
  /// unless one of its event listeners calls
  /// [Event.stopPropagation]
  /// or [Event.stopImmediatePropagation],
  /// either of which terminates propagation at once.
  ///
  /// As noted below, calling **`preventDefault()`** for a
  /// non-cancelable event, such as one dispatched via
  /// [EventTarget.dispatchEvent], without specifying
  /// `cancelable: true` has no effect.
  external void preventDefault();

  /// The **`Event.initEvent()`** method is used to initialize the
  /// value of an [event] created using [Document.createEvent].
  ///
  /// Events initialized in this way must have been created with the
  /// [Document.createEvent] method.
  /// This method must be called to set the event
  /// before it is dispatched, using [EventTarget.dispatchEvent].
  /// Once dispatched, it doesn't do anything anymore.
  ///
  /// > **Note:** _Do not use this method anymore as it is deprecated._
  /// > Instead use specific event constructors, like [Event.Event].
  /// > The page on
  /// > [Creating and triggering events](https://developer.mozilla.org/en-US/docs/Web/Events/Creating_and_triggering_events)
  /// > gives more information about the way to use these.
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

  /// The **`CustomEvent.initCustomEvent()`** method initializes a [CustomEvent]
  /// object.
  /// If the event has already been dispatched, this method does nothing.
  ///
  /// Events initialized in this way must have been created with the
  /// [Document.createEvent] method.
  /// This method must be called to set the event before it is dispatched using
  /// [EventTarget.dispatchEvent].
  /// Once dispatched, it doesn't do anything anymore.
  ///
  /// > **Note:** **Do not use this method anymore, as it is deprecated.**
  /// >
  /// > Rather than using the feature, instead use specific event constructors,
  /// > like [CustomEvent.CustomEvent].
  /// > The page on
  /// > [Creating and triggering events](https://developer.mozilla.org/en-US/docs/Web/Events/Creating_and_triggering_events)
  /// > gives more information about the way to use those.
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

  /// The **`addEventListener()`** method of the [EventTarget] interface
  /// sets up a function that will be called whenever the specified event is
  /// delivered to the target.
  ///
  /// Common targets are [Element], or its children, [Document], and [Window],
  /// but the target may be any object that supports events (such as
  /// [IDBRequest]).
  ///
  /// > **Note:** The `addEventListener()` method is the _recommended_ way to
  /// > register an event listener. The benefits are as follows:
  /// >
  /// > - It allows adding more than one handler for an event. This is
  /// > particularly
  /// > useful for libraries, JavaScript modules, or any other kind of
  /// > code that needs to work well with other libraries or extensions.
  /// > - In contrast to using an `onXYZ` property, it gives you finer-grained
  /// > control of the phase when the listener is activated (capturing vs.
  /// > bubbling).
  /// > - It works on any event target, not just HTML or SVG elements.
  ///
  /// The method `addEventListener()` works by adding a function, or an object
  /// that implements a `handleEvent()` function, to the list of event listeners
  /// for the specified event type
  /// on the [EventTarget] on which it's called. If the function or object is
  /// already in the list of event listeners for this target, the function or
  /// object is not added a second time.
  ///
  /// > **Note:** If a particular anonymous function is in the list of event
  /// > listeners registered for a certain target, and then later in the code,
  /// > an identical anonymous function is given in an `addEventListener` call,
  /// > the second function will _also_ be added to the list of event listeners
  /// > for that target.
  /// >
  /// > Indeed, anonymous functions are not identical even if defined using
  /// > the _same_ unchanging source-code called repeatedly, **even if in a
  /// > loop**.
  /// >
  /// > Repeatedly defining the same unnamed function in such cases can be
  /// > problematic. (See [Memory issues](#memory_issues), below.)
  ///
  /// If an event listener is added to an [EventTarget] from inside another
  /// listener —
  /// that is, during the processing of the event —
  /// that event will not trigger the new listener.
  /// However, the new listener may be triggered during a later stage of event
  /// flow,
  /// such as during the bubbling phase.
  external void addEventListener(
    String type,
    EventListener? callback, [
    JSAny options,
  ]);

  /// The **`removeEventListener()`** method of the [EventTarget] interface
  /// removes an event listener previously registered with
  /// [EventTarget.addEventListener] from the target.
  /// The event listener to be removed is identified using a combination of the
  /// event type,
  /// the event listener function itself, and various optional options that may
  /// affect the matching process;
  /// see
  /// [Matching event listeners for removal](#matching_event_listeners_for_removal).
  ///
  /// Calling `removeEventListener()` with arguments that do not identify any
  /// currently registered
  /// [event listener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener#the_event_listener_callback)
  /// on the `EventTarget` has no
  /// effect.
  ///
  /// If an
  /// [event listener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener#the_event_listener_callback)
  /// is removed from an [EventTarget] while another listener of the target is
  /// processing an event, it will not be triggered by the event. However, it
  /// can be reattached.
  ///
  /// > **Warning:** If a listener is registered twice, one with the _capture_
  /// > flag set and one without, you must remove each one separately. Removal
  /// > of a capturing listener does not affect a non-capturing version of the
  /// > same listener, and vice versa.
  ///
  /// Event listeners can also be removed by passing an [AbortSignal] to an
  /// [EventTarget/addEventListener] and then later calling
  /// [AbortController/abort] on the controller owning the signal.
  external void removeEventListener(
    String type,
    EventListener? callback, [
    JSAny options,
  ]);

  /// The **`dispatchEvent()`** method of the [EventTarget] sends an [Event] to
  /// the object, (synchronously) invoking the affected
  /// event listeners in the appropriate order. The normal event processing
  /// rules (including the capturing and optional bubbling phase) also apply to
  /// events
  /// dispatched manually with `dispatchEvent()`.
  ///
  /// Calling `dispatchEvent()` is the last step to _firing an event_. The event
  /// should have already been created and initialized using an [Event/Event]
  /// constructor.
  ///
  /// > **Note:** When calling this method, the [Event.target] property is
  /// > initialized to the current `EventTarget`.
  ///
  /// Unlike "native" events, which are fired by the browser and invoke event
  /// handlers
  /// asynchronously via the
  /// [event loop](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Event_loop),
  /// `dispatchEvent()` invokes event handlers _synchronously_. All applicable
  /// event
  /// handlers are called and return before `dispatchEvent()` returns.
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

  /// The **`abort()`** method of the [AbortController] interface aborts an
  /// asynchronous operation before it has completed.
  /// This is able to abort
  /// [fetch requests](https://developer.mozilla.org/en-US/docs/Web/API/fetch),
  /// the consumption of any response bodies, or streams.
  external void abort([JSAny? reason]);
  external AbortSignal get signal;
}
extension type AbortSignal._(JSObject _) implements EventTarget, JSObject {
  external static AbortSignal abort([JSAny? reason]);
  external static AbortSignal timeout(int milliseconds);
  external static AbortSignal any(JSArray signals);

  /// The **`throwIfAborted()`** method throws the signal's abort
  /// [AbortSignal.reason] if the signal has been aborted; otherwise it does
  /// nothing.
  ///
  /// An API that needs to support aborting can accept an [AbortSignal] object
  /// and use `throwIfAborted()` to test and throw when the
  /// [`abort`](https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal/abort_event)
  /// event is signalled.
  ///
  /// This method can also be used to abort operations at particular points in
  /// code, rather than passing to functions that take a signal.
  external void throwIfAborted();
  external bool get aborted;
  external JSAny? get reason;
  external set onabort(EventHandler value);
  external EventHandler get onabort;
}
extension type NodeList._(JSObject _) implements JSObject {
  /// Returns a node from a
  /// [`NodeList`](https://developer.mozilla.org/en-US/docs/Web/API/NodeList) by
  /// index. This method
  /// doesn't throw exceptions as long as you provide arguments. A value of
  /// `null`
  /// is returned if the index is out of range, and a `TypeError` is thrown if
  /// no
  /// argument is provided.
  external Node? item(int index);
  external int get length;
}
extension type HTMLCollection._(JSObject _) implements JSObject {
  /// The [HTMLCollection] method `item()`
  /// returns the element located at the specified offset into the collection.
  ///
  /// > **Note:** Because the contents of an `HTMLCollection` are
  /// > live, changes to the underlying DOM can and will cause the position of
  /// > individual
  /// > elements in the collection to change, so the index value will not
  /// > necessarily remain
  /// > constant for a given element.
  external Element? item(int index);

  /// The **`namedItem()`** method of the [HTMLCollection] interface returns
  /// the first [Element] in the collection whose `id` or `name` attribute match
  /// the specified name, or `null` if no element matches.
  ///
  /// In JavaScript, using the array bracket syntax with a `String`, like
  /// `collection["value"]` is equivalent to `collection.namedItem("value")`.
  external Element? namedItem(String name);
  external int get length;
}
extension type MutationObserver._(JSObject _) implements JSObject {
  external factory MutationObserver(MutationCallback callback);

  /// The [MutationObserver] method **`observe()`** configures the
  /// `MutationObserver`
  /// callback to begin receiving notifications of changes to the DOM that match
  /// the given options.
  ///
  /// Depending on the configuration, the observer may watch a single [Node] in
  /// the DOM tree, or that node and some or all of its descendant nodes.
  ///
  /// To stop the `MutationObserver` (so that none of its callbacks will be
  /// triggered any longer), call [MutationObserver.disconnect].
  external void observe(
    Node target, [
    MutationObserverInit options,
  ]);

  /// The [MutationObserver] method
  /// **`disconnect()`** tells the observer to stop watching for
  /// mutations.
  ///
  /// The observer can be reused by calling its
  /// [MutationObserver.observe] method again.
  external void disconnect();

  /// The [MutationObserver] method
  /// **`takeRecords()`** returns a list of all matching DOM changes
  /// that have been detected but not yet processed by the observer's callback
  /// function,
  /// leaving the mutation queue empty.
  ///
  /// The most common use case for this is to
  /// immediately fetch all pending mutation records immediately prior to
  /// disconnecting the
  /// observer, so that any pending mutations can be processed when shutting
  /// down the
  /// observer.
  external JSArray takeRecords();
}
extension type MutationObserverInit._(JSObject _) implements JSObject {
  external factory MutationObserverInit({
    bool childList,
    bool attributes,
    bool characterData,
    bool subtree,
    bool attributeOldValue,
    bool characterDataOldValue,
    JSArray attributeFilter,
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
  external set attributeFilter(JSArray value);
  external JSArray get attributeFilter;
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

  /// The **`getRootNode()`** method of the [Node] interface
  /// returns the context object's root,
  /// which optionally includes the shadow root if it is available.
  external Node getRootNode([GetRootNodeOptions options]);

  /// The **`hasChildNodes()`** method of the [Node] interface
  /// returns a boolean value indicating
  /// whether the given [Node] has
  /// [child nodes](https://developer.mozilla.org/en-US/docs/Web/API/Node/childNodes)
  /// or not.
  external bool hasChildNodes();

  /// The **`normalize()`** method of the [Node] interface puts the specified
  /// node
  /// and all of its sub-tree into a _normalized_ form.
  /// In a normalized sub-tree, no text nodes in the sub-tree are empty and
  /// there are no adjacent text nodes.
  external void normalize();

  /// The **`cloneNode()`** method of the [Node] interface
  /// returns a duplicate of the node on which this method was called.
  /// Its parameter controls if the subtree contained in a node is also cloned
  /// or not.
  ///
  /// Cloning a node copies all of its attributes and their values,
  /// including intrinsic (inline) listeners. It does _not_ copy event listeners
  /// added
  /// using
  /// [`addEventListener()`](/en-US/docs/Web/API/EventTarget/addEventListener)
  /// or
  /// those assigned to element properties (e.g., `node.onclick =
  /// someFunction`).
  /// Additionally, for a `canvas` element, the painted image is not copied.
  ///
  /// > **Warning:** `cloneNode()` may lead to duplicate element IDs in a
  /// > document!
  /// >
  /// > If the original node has an `id` attribute, and the clone
  /// > will be placed in the same document, then you should modify the clone's
  /// > ID to be
  /// > unique.
  /// >
  /// > Also, `name` attributes may need to be modified,
  /// > depending on whether duplicate names are expected.
  ///
  /// To clone a node to insert into a _different_ document, use
  /// [Document.importNode] instead.
  external Node cloneNode([bool deep]);

  /// The **`isEqualNode()`** method of the [Node] interface tests whether two
  /// nodes are equal.
  /// Two nodes are equal when they have the same type, defining characteristics
  /// (for
  /// elements, this would be their ID, number of children, and so forth), its
  /// attributes
  /// match, and so on. The specific set of data points that must match varies
  /// depending on
  /// the types of the nodes.
  external bool isEqualNode(Node? otherNode);

  /// The **`isSameNode()`** method of the [Node] interface
  /// is a legacy alias the [for the `===` strict equality
  /// operator](/en-US/docs/Web/JavaScript/Reference/Operators/Strict_equality).
  /// That is, it tests whether two nodes are the same
  /// (in other words, whether they reference the same object).
  ///
  /// > **Note:** There is no need to use `isSameNode()`; instead use the `===`
  /// > strict equality operator.
  external bool isSameNode(Node? otherNode);

  /// The **`compareDocumentPosition()`** method of the [Node] interface
  /// reports the position of its argument node relative to the node on which it
  /// is called.
  external int compareDocumentPosition(Node other);

  /// The **`contains()`** method of the [Node] interface
  /// returns a boolean value indicating
  /// whether a node is a descendant of a given node, that is the node itself,
  /// one of its direct children ([Node.childNodes]),
  /// one of the children's direct children, and so on.
  ///
  /// > **Note:** A node is _contained_ inside itself.
  external bool contains(Node? other);

  /// The **`lookupPrefix()`** method of the [Node] interface
  /// returns a string containing the prefix for a given namespace URI, if
  /// present,
  /// and `null` if not.
  /// When multiple prefixes are possible, the first prefix is returned.
  external String? lookupPrefix(String? namespace);

  /// The **`lookupNamespaceURI()`** method of the [Node] interface
  /// takes a prefix as parameter and returns the namespace URI associated with
  /// it on the given node if found (and
  /// `null` if not).
  external String? lookupNamespaceURI(String? prefix);

  /// The **`isDefaultNamespace()`** method of the [Node] interface accepts a
  /// namespace URI as an argument.
  /// It returns a boolean value that is `true` if the namespace is the default
  /// namespace on the given node and `false` if not.
  ///
  /// > **Note:** The default namespace of an HTML element is always `""`. For a
  /// > SVG element, it is set by the `xmlns` attribute.
  external bool isDefaultNamespace(String? namespace);

  /// The **`insertBefore()`** method of the [Node] interface
  /// inserts a node before a _reference node_ as a child of a specified _parent
  /// node_.
  ///
  /// If the given node already exists in the document,
  /// `insertBefore()` moves it from its current position to the new position.
  /// (That is, it will automatically be removed from its existing parent
  /// before appending it to the specified new parent.)
  ///
  /// This means that a node cannot be in two locations of the document
  /// simultaneously.
  ///
  /// > **Note:** The [Node.cloneNode] can be used to make a copy
  /// > of the node before appending it under the new parent. Note that the
  /// > copies made with
  /// > `cloneNode()` will not be automatically kept in sync.
  ///
  /// If the given child is a [DocumentFragment], the entire contents of the
  /// `DocumentFragment` are moved into the child list of the specified parent
  /// node.
  external Node insertBefore(
    Node node,
    Node? child,
  );

  /// The **`appendChild()`** method of the [Node] interface adds a node to the
  /// end of the list of children of a specified parent node.
  ///
  /// > **Note:** If the given child is a reference to an existing node in the
  /// > document, `appendChild()` moves it from its current position to the new
  /// > position.
  ///
  /// If the given child is a [DocumentFragment], the entire contents of the
  /// [DocumentFragment] are moved into the child list of the specified parent
  /// node.
  ///
  /// `appendChild()` returns the newly appended node, or if the child is a
  /// [DocumentFragment], the emptied fragment.
  ///
  /// > **Note:** Unlike this method, the [Element.append] method supports
  /// > multiple arguments and appending strings. You can prefer using it if
  /// > your node is an element.
  external Node appendChild(Node node);

  /// The **`replaceChild()`** method of the [Node] interface replaces a child
  /// node within the given (parent) node.
  external Node replaceChild(
    Node node,
    Node child,
  );

  /// The **`removeChild()`** method of the [Node] interface
  /// removes a child node from the DOM and returns the removed node.
  ///
  /// > **Note:** As long as a reference is kept on the removed child,
  /// > it still exists in memory, but is no longer part of the DOM.
  /// > It can still be reused later in the code.
  /// >
  /// > If the return value of `removeChild()` is not stored, and no other
  /// > reference is kept,
  /// > it will be
  /// > [automatically deleted](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Memory_management)
  /// > from memory after a short time.
  ///
  /// Unlike [Node.cloneNode] the return value preserves the `EventListener`
  /// objects associated with it.
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

  /// The **`startViewTransition()`** method of the
  /// [View Transitions API] starts a new view transition and returns a
  /// [ViewTransition] object to represent it.
  ///
  /// When `startViewTransition()` is invoked, a sequence of steps is followed
  /// as explained in
  /// [The view transition process](https://developer.mozilla.org/en-US/docs/Web/API/View_Transitions_API#the_view_transition_process).
  external ViewTransition startViewTransition([UpdateCallback? updateCallback]);

  /// The **`elementFromPoint()`**
  /// method, available on the [Document] object, returns the topmost [Element]
  /// at the specified coordinates
  /// (relative to the viewport).
  ///
  /// If the element at the specified point belongs to another document (for
  /// example, the
  /// document of an `iframe`), that document's parent element is returned
  /// (the `<iframe>` itself). If the element at the given point is anonymous
  /// or XBL generated content, such as a textbox's scroll bars, then the first
  /// non-anonymous
  /// ancestor element (for example, the textbox) is returned.
  ///
  /// Elements with  set to `none` will be ignored,
  /// and the element below it will be returned.
  ///
  /// If the method is run on another document (like an `<iframe>`'s
  /// subdocument), the coordinates are relative to the document where the
  /// method is being
  /// called.
  ///
  /// If the specified point is outside the visible bounds of the document or
  /// either
  /// coordinate is negative, the result is `null`.
  ///
  /// If you need to find the specific position inside the element, use
  /// [Document.caretPositionFromPoint].
  external Element? elementFromPoint(
    num x,
    num y,
  );

  /// The **`elementsFromPoint()`** method
  /// of the [Document] interface returns an array of all elements
  /// at the specified coordinates (relative to the viewport).
  /// The elements are ordered from the topmost to the bottommost box of the
  /// viewport.
  ///
  /// It operates in a similar way to the [Document.elementFromPoint] method.
  external JSArray elementsFromPoint(
    num x,
    num y,
  );

  /// The **`caretPositionFromPoint()`**
  /// method of the [Document] interface returns a
  /// [CaretPosition] object, containing the DOM node, along with the caret and
  /// caret's character offset within that node.
  external CaretPosition? caretPositionFromPoint(
    num x,
    num y,
  );

  /// The **`getElementsByTagName`** method of
  /// [Document] interface returns an
  /// [HTMLCollection] of elements with the given tag name.
  ///
  /// The complete
  /// document is searched, including the root node. The returned
  /// `HTMLCollection`
  /// is live, meaning that it updates itself automatically to stay in sync with
  /// the DOM tree
  /// without having to call `document.getElementsByTagName()` again.
  external HTMLCollection getElementsByTagName(String qualifiedName);

  /// Returns a list of elements with the given tag name belonging to the given
  /// namespace.
  /// The complete document is searched, including the root node.
  external HTMLCollection getElementsByTagNameNS(
    String? namespace,
    String localName,
  );

  /// The **`getElementsByClassName`** method of
  /// [Document] interface returns an array-like object
  /// of all child elements which have all of the given class name(s).
  ///
  /// When called on
  /// the [document] object, the complete document is searched, including the
  /// root node. You may also call [Element.getElementsByClassName] on any
  /// element; it will return only elements which are
  /// descendants of the specified root element with the given class name(s).
  ///
  /// > **Warning:** This is a live [HTMLCollection]. Changes in the DOM will
  /// > reflect in the array as the changes occur. If an element selected by
  /// > this array no
  /// > longer qualifies for the selector, it will automatically be removed. Be
  /// > aware of this
  /// > for iteration purposes.
  external HTMLCollection getElementsByClassName(String classNames);

  /// In an [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML) document,
  /// the **`document.createElement()`** method creates the HTML element
  /// specified by _tagName_, or an [HTMLUnknownElement] if _tagName_ isn't
  /// recognized.
  external Element createElement(
    String localName, [
    JSAny options,
  ]);

  /// Creates an element with the specified namespace URI and qualified name.
  ///
  /// To create an element without specifying a namespace URI, use the
  /// [Document.createElement] method.
  external Element createElementNS(
    String? namespace,
    String qualifiedName, [
    JSAny options,
  ]);

  /// Creates a new empty [DocumentFragment] into which
  /// DOM nodes can be added to build an offscreen DOM tree.
  external DocumentFragment createDocumentFragment();

  /// Creates a new [Text] node. This method can be used to escape HTML
  /// characters.
  external Text createTextNode(String data);

  /// **`createCDATASection()`** creates a new CDATA section node,
  /// and returns it.
  external CDATASection createCDATASection(String data);

  /// **`createComment()`** creates a new comment node, and returns
  /// it.
  external Comment createComment(String data);

  /// `createProcessingInstruction()` generates a new
  /// [processing instruction](https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction)
  /// node and returns it.
  ///
  /// The new node usually will be inserted into an XML document in order to
  /// accomplish anything with it, such as with [node.insertBefore].
  external ProcessingInstruction createProcessingInstruction(
    String target,
    String data,
  );

  /// The [Document] object's **`importNode()`** method creates a copy of a
  /// [Node] or [DocumentFragment] from another document, to be
  /// inserted into the current document later.
  ///
  /// The imported node is not yet included in the document tree. To include it,
  /// you need to
  /// call an insertion method such as [Node.appendChild] or
  /// [Node.insertBefore] with a node that _is_
  /// currently in the document tree.
  ///
  /// Unlike [document.adoptNode], the original node is not removed from its
  /// original document. The imported node is a clone of the original.
  external Node importNode(
    Node node, [
    bool deep,
  ]);

  /// **`Document.adoptNode()`** transfers a  from another [Document] into the
  /// method's
  /// document. The adopted node and its subtree are removed from their original
  /// document (if
  /// any), and their [Node.ownerDocument] is changed to the
  /// current document. The node can then be inserted into the current document.
  external Node adoptNode(Node node);

  /// The **`Document.createAttribute()`** method creates a new
  /// attribute node, and returns it. The object created is a node implementing
  /// the
  /// [Attr] interface. The DOM does not enforce what sort of attributes can be
  /// added to a particular element in this manner.
  ///
  /// > **Note:** The string given in parameter is converted to lowercase.
  external Attr createAttribute(String localName);

  /// The **`Document.createAttributeNS()`** method creates a new attribute node
  /// with the specified namespace URI and qualified name, and returns it.
  /// The object created is a node implementing the
  /// [Attr] interface. The DOM does not enforce what sort of attributes can be
  /// added to a particular element in this manner.
  external Attr createAttributeNS(
    String? namespace,
    String qualifiedName,
  );

  /// > **Warning:** Many methods used with `createEvent`, such as
  /// > `initCustomEvent`, are deprecated.
  /// > Use
  /// > [event constructors](https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent)
  /// > instead.
  ///
  /// Creates an [event](https://developer.mozilla.org/en-US/docs/Web/API/Event)
  /// of the type specified. The
  /// returned object should be first initialized and can then be passed to
  /// [EventTarget.dispatchEvent].
  external Event createEvent(String interface);

  /// The **`Document.createRange()`** method returns a new
  /// [Range] object.
  external Range createRange();

  /// The **`Document.createNodeIterator()`** method returns a new
  /// [`NodeIterator`](https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator)
  /// object.
  external NodeIterator createNodeIterator(
    Node root, [
    int whatToShow,
    NodeFilter? filter,
  ]);

  /// The **`Document.createTreeWalker()`** creator method returns a newly
  /// created [TreeWalker] object.
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

  /// The [Document] method
  /// **`exitFullscreen()`** requests that the element on this
  /// document which is currently being presented in fullscreen mode be taken
  /// out of
  /// fullscreen mode, restoring the previous state of the screen. This usually
  /// reverses the effects of a previous call to [Element.requestFullscreen].
  external JSPromise exitFullscreen();

  /// The **`getElementsByName()`** method
  /// of the [Document] object returns a [NodeList] Collection of
  /// elements with a given `name` attribute in the document.
  external NodeList getElementsByName(String elementName);

  /// The **`Document.open()`** method opens a document for
  /// [Document.write].
  ///
  /// This does come with some side effects. For example:
  ///
  /// - All event listeners currently registered on the document, nodes inside
  ///   the document,
  /// or the document's window are removed.
  /// - All existing nodes are removed from the document.
  external JSObject? open([
    String unused1OrUrl,
    String nameOrUnused2,
    String features,
  ]);

  /// The **`Document.close()`** method finishes writing to a
  /// document, opened with [Document.open].
  external void close();

  /// > **Warning:** Use of the `document.write()` method is strongly
  /// > discouraged.
  /// >
  /// > As
  /// > [the HTML spec itself warns](<https://html.spec.whatwg.org/multipage/dynamic-markup-insertion.html#document.write()>):
  /// >
  /// > > This method has very idiosyncratic behavior. In some cases, this
  /// > method can affect the state of the
  /// > [HTML parser](https://html.spec.whatwg.org/multipage/parsing.html#html-parser)
  /// > while the parser is running, resulting in a DOM that does not correspond
  /// > to the source of the document (e.g. if the string written is the string
  /// > "`<plaintext>`" or "`<!--`"). In other cases, the call can clear the
  /// > current page first, as if
  /// > [`document.open()`](https://html.spec.whatwg.org/multipage/dynamic-markup-insertion.html#dom-document-open)
  /// > had been called. In yet more cases, the method is simply ignored, or
  /// > throws an exception. Users agents are
  /// > [explicitly allowed to avoid executing `script` elements inserted via this method](https://html.spec.whatwg.org/multipage/parsing.html#document-written-scripts-intervention).
  /// > And to make matters even worse, the exact behavior of this method can in
  /// > some cases be dependent on network latency, which can lead to failures
  /// > that are very hard to debug. For all these reasons, use of this method
  /// > is strongly discouraged.
  /// > > Therefore, avoid using `document.write()` — and if possible, update
  /// > any existing code that is still using it.
  ///
  /// The **`document.write()`** method writes a string of text to a document
  /// stream opened by [document.open].
  ///
  /// > **Note:** Because `document.write()` writes to the document **stream**,
  /// > calling `document.write()` on a closed (loaded) document automatically
  /// > calls `document.open()`,
  /// > [which will clear the document](https://developer.mozilla.org/en-US/docs/Web/API/Document/open#notes).
  external void write(String text);

  /// > **Warning:** Use of the `document.writeln()` method is strongly
  /// > discouraged.
  /// >
  /// > As
  /// > [the HTML spec itself warns](<https://html.spec.whatwg.org/multipage/dynamic-markup-insertion.html#document.write()>):
  /// >
  /// > > This method has very idiosyncratic behavior. In some cases, this
  /// > method can affect the state of the
  /// > [HTML parser](https://html.spec.whatwg.org/multipage/parsing.html#html-parser)
  /// > while the parser is running, resulting in a DOM that does not correspond
  /// > to the source of the document (e.g. if the string written is the string
  /// > "`<plaintext>`" or "`<!--`"). In other cases, the call can clear the
  /// > current page first, as if
  /// > [`document.open()`](https://html.spec.whatwg.org/multipage/dynamic-markup-insertion.html#dom-document-open)
  /// > had been called. In yet more cases, the method is simply ignored, or
  /// > throws an exception. Users agents are
  /// > [explicitly allowed to avoid executing `script` elements inserted via this method](https://html.spec.whatwg.org/multipage/parsing.html#document-written-scripts-intervention).
  /// > And to make matters even worse, the exact behavior of this method can in
  /// > some cases be dependent on network latency, which can lead to failures
  /// > that are very hard to debug. For all these reasons, use of this method
  /// > is strongly discouraged.
  /// > > Therefore, avoid using `document.writeln()` — and if possible, update
  /// > any existing code that is still using it.
  ///
  /// Writes a string of text followed by a newline character to a document.
  external void writeln(String text);

  /// The **`hasFocus()`** method of the [Document] interface returns a boolean
  /// value indicating whether the document or any element inside the document
  /// has focus.
  /// This method can be used to determine whether the active element in a
  /// document has focus.
  ///
  /// > **Note:** When viewing a document, an element with focus is always the
  /// > [active element](https://developer.mozilla.org/en-US/docs/Web/API/Document/activeElement)
  /// > in the document, but an active element does not necessarily have focus.
  /// > For example, an active element within a popup window that is not the
  /// > foreground doesn't have focus.
  external bool hasFocus();

  /// The **`execCommand`** method implements multiple different commands. Some
  /// of them provide access to the clipboard, while others are for editing
  /// [form inputs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input),
  /// [`contenteditable`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/contenteditable)
  /// elements or entire documents (when switched to
  /// [design mode](https://developer.mozilla.org/en-US/docs/Web/API/Document/designMode)).
  ///
  /// To access the clipboard, the newer
  /// [Clipboard API](https://developer.mozilla.org/en-US/docs/Web/API/Clipboard_API)
  /// is recommended over `execCommand()`. However, there is no replacement for
  /// the editing commands: unlike direct DOM manipulation, modifications
  /// performed by `execCommand()` preserve the undo buffer (edit history).
  ///
  /// Most commands affect the document's
  /// [selection](https://developer.mozilla.org/en-US/docs/Web/API/Selection).
  /// For example, some commands (bold, italics, etc.) format the currently
  /// selected text, while others delete the selection, insert new elements
  /// (replacing the selection) or affect an entire line (indenting). Only the
  /// currently active editable element can be modified, but some commands (e.g.
  /// `copy`) can work without an editable element.
  ///
  /// > **Note:** Modifications performed by `execCommand()` may or may not
  /// > trigger [Element/beforeinput_event] and [Element/input_event] events,
  /// > depending on the browser and configuration. If triggered, the handlers
  /// > for the events will run before `execCommand()` returns. Authors need to
  /// > be careful about such recursive calls, especially if they call
  /// > `execCommand()` in response to these events. From Firefox 82, nested
  /// > `execCommand()` calls will always fail, see
  /// > [bug 1634262](https://bugzil.la/1634262).
  external bool execCommand(
    String commandId, [
    bool showUI,
    String value,
  ]);

  /// The **`Document.queryCommandEnabled()`** method reports whether
  /// or not the specified editor command is enabled by the browser.
  external bool queryCommandEnabled(String commandId);
  external bool queryCommandIndeterm(String commandId);

  /// The **`queryCommandState()`** method will tell you if the current
  /// selection has a certain [Document.execCommand] command applied.
  external bool queryCommandState(String commandId);

  /// The **`Document.queryCommandSupported()`** method reports
  /// whether or not the specified editor command is supported by the browser.
  external bool queryCommandSupported(String commandId);
  external String queryCommandValue(String commandId);

  /// The **`Document.clear()`** method does nothing, but doesn't raise any
  /// error.
  external void clear();
  external void captureEvents();
  external void releaseEvents();

  /// The **`exitPictureInPicture()`** method of the [Document] interface
  /// requests that a video contained
  /// in this document, which is currently floating, be taken out of
  /// picture-in-picture
  /// mode, restoring the previous state of the screen. This usually reverses
  /// the
  /// effects of a previous call to [HTMLVideoElement.requestPictureInPicture].
  external JSPromise exitPictureInPicture();

  /// The **`exitPointerLock()`** method of the [Document] interface
  /// asynchronously releases a pointer lock previously requested through
  /// [Element.requestPointerLock].
  ///
  /// > **Note:** While the **`exitPointerLock()`** method is called on the
  /// > document, the **`requestPointerLock()`** method is called on an element.
  ///
  /// To track the success or failure of the request, it is necessary to listen
  /// for the [Document/pointerlockchange_event] and
  /// [Document/pointerlockerror_event] events.
  external void exitPointerLock();

  /// The **`requestStorageAccessFor()`** method of the [Document] interface
  /// allows top-level sites to request third-party cookie access on behalf of
  /// embedded content originating from another site in the same
  /// [related website set](https://developer.mozilla.org/en-US/docs/Web/API/Storage_Access_API/Related_website_sets).
  /// It returns a `Promise` that resolves if the access was granted, and
  /// rejects if access was denied.
  external JSPromise requestStorageAccessFor(String requestedOrigin);

  /// The **`getSelection()`** method of
  /// the [Document] interface returns a [Selection]
  /// object representing the range of text selected by the user, or the current
  /// position of
  /// the caret.
  external Selection? getSelection();

  /// The **`hasStorageAccess()`** method of the [Document] interface returns a
  /// `Promise` that resolves with a boolean value indicating whether the
  /// document has access to
  /// [third-party](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies#third-party_cookies),
  /// [unpartitioned](https://developer.mozilla.org/en-US/docs/Web/API/Storage_Access_API#unpartitioned_versus_partitioned_cookies)
  /// cookies.
  ///
  /// This method is part of the
  /// [Storage Access API](https://developer.mozilla.org/en-US/docs/Web/API/Storage_Access_API).
  external JSPromise hasStorageAccess();

  /// The **`requestStorageAccess()`** method of the [Document] interface allows
  /// content loaded in a third-party context (i.e., embedded in an `iframe`) to
  /// request access to third-party cookies. This is relevant to user agents
  /// that, by default, block access to
  /// [third-party](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies#third-party_cookies),
  /// [unpartitioned](https://developer.mozilla.org/en-US/docs/Web/API/Storage_Access_API#unpartitioned_versus_partitioned_cookies)
  /// cookies to improve privacy (e.g., to prevent tracking), and is part of the
  /// [Storage Access API](https://developer.mozilla.org/en-US/docs/Web/API/Storage_Access_API).
  ///
  /// To check whether permission to access third-party cookies has already been
  /// granted, you can call [Permissions.query], specifying the feature name
  /// `"storage-access"`.
  ///
  /// > **Note:** Usage of this feature may be blocked by a
  /// > [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy)
  /// > set on your server. In addition, the document must pass additional
  /// > browser-specific checks such as allowlists, blocklists, on-device
  /// > classification, user settings,
  /// > anti-[clickjacking](https://developer.mozilla.org/en-US/docs/Glossary/Clickjacking)
  /// > heuristics, or prompting the user for explicit permission.
  external JSPromise requestStorageAccess();
  external JSPromise hasPrivateTokens(String issuer);
  external JSPromise hasRedemptionRecord(String issuer);
  external JSArray getBoxQuads([BoxQuadOptions options]);
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

  /// The **`getElementById()`** method of the [Document] interface returns an
  /// [Element] object representing the element whose [Element.id] property
  /// matches the specified string. Since element IDs are required to be unique
  /// if specified, they're a useful way to get access to a specific element
  /// quickly.
  ///
  /// If you need to get access to an element which doesn't have an ID, you can
  /// use [Document.querySelector] to find the element using any .
  ///
  /// > **Note:** IDs should be unique inside a document. If two or more
  /// > elements in a document have the same ID, this method returns the first
  /// > element found.
  external Element? getElementById(String elementId);

  /// The `getAnimations()` method of the [Document] interface
  /// returns an array of all [Animation] objects currently in effect whose
  /// target elements are descendants of the document. This array includes
  /// [CSS Animations](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_animations),
  /// [CSS Transitions](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_transitions),
  /// and
  /// [Web Animations](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API).
  external JSArray getAnimations();

  /// The **`Document.prepend()`** method
  /// inserts a set of [Node] objects or string objects before
  /// the first child of the document. String objects
  /// are inserted as equivalent [Text] nodes.
  ///
  /// This method prepends a child to a `Document`. To prepend to an arbitrary
  /// element in the tree, see [Element.prepend].
  external void prepend(JSAny nodes);

  /// The **`Document.append()`** method
  /// inserts a set of [Node] objects or string objects after
  /// the last child of the document. String objects
  /// are inserted as equivalent [Text] nodes.
  ///
  /// This method appends a child to a `Document`. To append to an arbitrary
  /// element in the tree, see [Element.append].
  external void append(JSAny nodes);

  /// The **`Document.replaceChildren()`** method replaces the
  /// existing children of a `Document` with a specified new set of children.
  external void replaceChildren(JSAny nodes);

  /// The [Document] method **`querySelector()`**
  /// returns the first [Element] within the document that matches the specified
  /// selector, or group of selectors. If no matches are found, `null` is
  /// returned.
  ///
  /// > **Note:** The matching is done using depth-first pre-order traversal of
  /// > the document's nodes starting with the first element in the document's
  /// > markup and
  /// > iterating through sequential nodes by order of the number of child
  /// > nodes.
  external Element? querySelector(String selectors);

  /// The [Document] method **`querySelectorAll()`**
  /// returns a static (not live) [NodeList] representing a list of the
  /// document's elements that match the specified group of selectors.
  external NodeList querySelectorAll(String selectors);

  /// This method compiles an [XPathExpression] which can then be used for
  /// (repeated) evaluations.
  ///
  /// You must call this method on the same document that you run the expression
  /// against.
  external XPathExpression createExpression(
    String expression, [
    XPathNSResolver? resolver,
  ]);

  /// Creates an `XPathNSResolver` which resolves namespaces with respect to the
  /// definitions in scope for a specified node.
  external Node createNSResolver(Node nodeResolver);

  /// The **`evaluate()`** method of the [Document] interface selects elements
  /// based on the [XPath](https://developer.mozilla.org/en-US/docs/Web/XPath)
  /// expression given in parameters.
  ///
  /// XPath expressions can be evaluated on both HTML and XML documents.
  external XPathResult evaluate(
    String expression,
    Node contextNode, [
    XPathNSResolver? resolver,
    int type,
    XPathResult? result,
  ]);
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
  external FontFaceSet get fonts;
  external StyleSheetList get styleSheets;
  external set adoptedStyleSheets(JSArray value);
  external JSArray get adoptedStyleSheets;
  external Element? get fullscreenElement;
  external Element? get activeElement;
  external Element? get pictureInPictureElement;
  external Element? get pointerLockElement;
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
  external set onbeforexrselect(EventHandler value);
  external EventHandler get onbeforexrselect;
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
  /// The **`DOMImplementation.createDocumentType()`** method returns
  /// a [DocumentType] object which can either be used with
  /// [DOMImplementation.createDocument] upon document creation or can be put
  /// into the document via methods like [Node.insertBefore] or
  /// [Node.replaceChild].
  external DocumentType createDocumentType(
    String qualifiedName,
    String publicId,
    String systemId,
  );

  /// The **`DOMImplementation.createDocument()`** method creates and
  /// returns an [XMLDocument].
  external XMLDocument createDocument(
    String? namespace,
    String qualifiedName, [
    DocumentType? doctype,
  ]);

  /// The
  /// **`DOMImplementation.createHTMLDocument()`** method creates a
  /// new HTML [Document].
  external Document createHTMLDocument([String title]);

  /// The
  /// **`DOMImplementation.hasFeature()`** method returns a
  /// boolean flag indicating if a given feature is supported. It is
  /// deprecated and modern browsers return `true` in all cases.
  ///
  /// The different implementations fairly diverged in what kind of features
  /// were reported.
  /// The latest version of the spec settled to force this method to always
  /// return
  /// `true`, where the functionality was accurate and in use.
  external bool hasFeature();
}
extension type DocumentType._(JSObject _) implements Node, JSObject {
  /// The **`DocumentType.before()`** method inserts a set of
  /// [Node] objects or strings in the children list of the
  /// `DocumentType`'s parent, just before the `DocumentType`.
  /// Strings are inserted as equivalent [Text] nodes.
  external void before(JSAny nodes);

  /// The **`DocumentType.after()`** method inserts a set of
  /// [Node] objects or strings in the children list of the
  /// `DocumentType`'s parent, just after the `DocumentType`.
  /// Strings are inserted as equivalent [Text] nodes.
  external void after(JSAny nodes);

  /// The **`DocumentType.replaceWith()`** method replaces the document type
  /// with a set of given nodes.
  external void replaceWith(JSAny nodes);

  /// The **`DocumentType.remove()`** method removes a document's `doctype`.
  external void remove();
  external String get name;
  external String get publicId;
  external String get systemId;
}
extension type DocumentFragment._(JSObject _) implements Node, JSObject {
  external factory DocumentFragment();

  /// The **`getElementById()`** method of the [DocumentFragment] returns an
  /// [Element] object representing the element whose [Element.id] property
  /// matches the specified string. Since element IDs are required to be unique
  /// if specified, they're a useful way to get access to a specific element
  /// quickly.
  ///
  /// If you need to get access to an element which doesn't have an ID, you can
  /// use [Document.querySelector] to find the element using any .
  ///
  /// > **Note:** IDs should be unique inside a document fragment. If two or
  /// > more elements in a document fragment have the same ID, this method
  /// > returns the first element found.
  external Element? getElementById(String elementId);

  /// The **`DocumentFragment.prepend()`** method
  /// inserts a set of [Node] objects or string objects before
  /// the first child of the document fragment. String objects
  /// are inserted as equivalent [Text] nodes.
  ///
  /// This method prepends a child to a `DocumentFragment`. To prepend to an
  /// arbitrary element in the tree, see [Element.prepend].
  external void prepend(JSAny nodes);

  /// The **`DocumentFragment.append()`** method
  /// inserts a set of [Node] objects or string objects after
  /// the last child of the document fragment. String objects
  /// are inserted as equivalent [Text] nodes.
  ///
  /// This method appends a child to a `DocumentFragment`. To append to an
  /// arbitrary element in the tree, see [Element.append].
  external void append(JSAny nodes);

  /// The **`DocumentFragment.replaceChildren()`** method replaces the
  /// existing children of a `DocumentFragment` with a specified new set of
  /// children. These
  /// can be string or [Node] objects.
  external void replaceChildren(JSAny nodes);

  /// The **`DocumentFragment.querySelector()`** method returns the
  /// first element, or `null` if no matches are found, within the
  /// [DocumentFragment] (using depth-first pre-order traversal of the
  /// document's nodes) that matches the specified group of selectors.
  ///
  /// If the selector matches an ID and this ID is erroneously used several
  /// times in the
  /// document, it returns the first matching element.
  ///
  /// If the selectors specified in parameter are invalid a [DOMException] with
  /// a `SYNTAX_ERR` value is raised.
  external Element? querySelector(String selectors);

  /// The **`DocumentFragment.querySelectorAll()`** method returns a
  /// [NodeList] of elements within the [DocumentFragment] (using
  /// depth-first pre-order traversal of the document's nodes) that matches the
  /// specified
  /// group of selectors.
  ///
  /// If the selectors specified in parameter are invalid a [DOMException] with
  /// a `SYNTAX_ERR` value is raised.
  external NodeList querySelectorAll(String selectors);
  external HTMLCollection get children;
  external Element? get firstElementChild;
  external Element? get lastElementChild;
  external int get childElementCount;
}
extension type ShadowRoot._(JSObject _) implements DocumentFragment, JSObject {
  /// The **`getAnimations()`** method of the [ShadowRoot] interface
  /// returns an array of all [Animation] objects currently in effect whose
  /// target elements are descendants of the shadow tree. This array includes
  /// [CSS Animations](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_animations),
  /// [CSS Transitions](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_transitions),
  /// and
  /// [Web Animations](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API).
  external JSArray getAnimations();
  external ShadowRootMode get mode;
  external bool get delegatesFocus;
  external SlotAssignmentMode get slotAssignment;
  external Element get host;
  external set onslotchange(EventHandler value);
  external EventHandler get onslotchange;
  external set innerHTML(String value);
  external String get innerHTML;
  external StyleSheetList get styleSheets;
  external set adoptedStyleSheets(JSArray value);
  external JSArray get adoptedStyleSheets;
  external Element? get fullscreenElement;
  external Element? get activeElement;
  external Element? get pictureInPictureElement;
  external Element? get pointerLockElement;
}
extension type Element._(JSObject _) implements Node, JSObject {
  /// The **`insertAdjacentHTML()`** method of the
  /// [Element] interface parses the specified text as HTML or XML and inserts
  /// the resulting nodes into the DOM tree at a specified position.
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

  /// The **`computedStyleMap()`** method of
  /// the [Element] interface returns a [StylePropertyMapReadOnly]
  /// interface which provides a read-only representation of a CSS declaration
  /// block that is
  /// an alternative to [CSSStyleDeclaration].
  external StylePropertyMapReadOnly computedStyleMap();

  /// The **`getClientRects()`** method of the [Element]
  /// interface returns a collection of [DOMRect] objects that indicate the
  /// bounding rectangles for each
  /// [CSS border box](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_box_model/Introduction_to_the_CSS_box_model)
  /// in a client.
  ///
  /// Most elements only have one border box each, but a multiline
  /// [inline-level element](https://developer.mozilla.org/en-US/docs/Glossary/Inline-level_content)
  /// (such as a multiline
  /// `span` element, by default) has a border box around each line.
  external DOMRectList getClientRects();

  /// The **`Element.getBoundingClientRect()`** method returns a
  /// [DOMRect] object providing information about the size of an element and
  /// its
  /// position relative to the
  /// [viewport](https://developer.mozilla.org/en-US/docs/Glossary/Viewport).
  external DOMRect getBoundingClientRect();

  /// The **`checkVisibility()`** method of the [Element] interface checks
  /// whether the element is visible.
  ///
  /// The method returns `false` in either of the following situations:
  ///
  /// - The element doesn't have an associated box, for example because the CSS
  ///   `display` property is set to
  ///   [`none`](https://developer.mozilla.org/en-US/docs/Web/CSS/display#none)
  ///   or
  ///   [`contents`](https://developer.mozilla.org/en-US/docs/Web/CSS/display#contents).
  /// - The element is not being rendered because the element or an ancestor
  ///   element sets the  property to
  ///   [`hidden`](https://developer.mozilla.org/en-US/docs/Web/CSS/content-visibility#hidden).
  ///
  /// The optional parameter enables additional checks to test for other
  /// interpretations of what "visible" means.
  /// For example, you can further check whether an element has an opacity of
  /// `0`, if the value of the element
  /// [`visibility`](https://developer.mozilla.org/en-US/docs/Web/CSS/visibility)
  /// property makes it invisible, or if the element  property has a value of
  /// [`auto`](https://developer.mozilla.org/en-US/docs/Web/CSS/content-visibility#auto)
  /// and its rendering is currently being skipped.
  external bool checkVisibility([CheckVisibilityOptions options]);

  /// The [Element] interface's
  /// **`scrollIntoView()`** method scrolls the element's ancestor
  /// containers such that the element on which `scrollIntoView()` is called is
  /// visible to the user.
  external void scrollIntoView([JSAny arg]);

  /// The **`scroll()`** method of the [Element]
  /// interface scrolls the element to a particular set of coordinates inside a
  /// given
  /// element.
  external void scroll([
    JSAny optionsOrX,
    num y,
  ]);

  /// The **`scrollTo()`** method of the [Element]
  /// interface scrolls to a particular set of coordinates inside a given
  /// element.
  external void scrollTo([
    JSAny optionsOrX,
    num y,
  ]);

  /// The **`scrollBy()`** method of the [Element]
  /// interface scrolls an element by the given amount.
  external void scrollBy([
    JSAny optionsOrX,
    num y,
  ]);

  /// The **`hasAttributes()`** method of the [Element]
  /// interface returns a boolean value indicating whether the current element
  /// has any
  /// attributes or not.
  external bool hasAttributes();

  /// The **`getAttributeNames()`** method of the
  /// [Element] interface returns the attribute names of the element as an
  /// `Array` of strings. If the element has no attributes it returns an empty
  /// array.
  ///
  /// Using `getAttributeNames()` along with
  /// [Element.getAttribute], is a memory-efficient and
  /// performant alternative to accessing [Element.attributes].
  ///
  /// The names returned by **`getAttributeNames()`** are _qualified_ attribute
  /// names, meaning that attributes with a namespace prefix have their names
  /// returned with that namespace prefix (_not_ the actual namespace), followed
  /// by a colon, followed by the attribute name (for example,
  /// **`xlink:href`**), while any attributes which have no namespace prefix
  /// have their names returned as-is (for example, **`href`**).
  external JSArray getAttributeNames();

  /// The **`getAttribute()`** method of the
  /// [Element] interface returns the value of a specified attribute on the
  /// element.
  ///
  /// If the given attribute does not exist, the value returned will
  /// either be `null` or `""` (the empty string); see
  /// [Non-existing attributes](#non-existing_attributes) for details.
  external String? getAttribute(String qualifiedName);

  /// The **`getAttributeNS()`** method of the [Element]
  /// interface returns the string value of the attribute with the specified
  /// namespace and
  /// name. If the named attribute does not exist, the value returned will
  /// either be
  /// `null` or `""` (the empty string); see [Notes](#notes) for
  /// details.
  external String? getAttributeNS(
    String? namespace,
    String localName,
  );

  /// Sets the value of an attribute on the specified element. If
  /// the attribute already exists, the value is updated; otherwise a new
  /// attribute is added
  /// with the specified name and value.
  ///
  /// To get the current value of an attribute, use [Element.getAttribute]; to
  /// remove an attribute, call [Element.removeAttribute].
  external void setAttribute(
    String qualifiedName,
    String value,
  );

  /// `setAttributeNS` adds a new attribute or changes the value of an attribute
  /// with the given namespace and name.
  external void setAttributeNS(
    String? namespace,
    String qualifiedName,
    String value,
  );

  /// The [Element] method
  /// **`removeAttribute()`** removes the attribute with the
  /// specified name from the element.
  external void removeAttribute(String qualifiedName);

  /// The **`removeAttributeNS()`** method of the
  /// [Element] interface removes the specified attribute from an element.
  external void removeAttributeNS(
    String? namespace,
    String localName,
  );

  /// The **`toggleAttribute()`** method of the
  /// [Element] interface toggles a Boolean attribute (removing it if it is
  /// present and adding it if it is not present) on the given element.
  external bool toggleAttribute(
    String qualifiedName, [
    bool force,
  ]);

  /// The **`Element.hasAttribute()`** method returns a
  /// **Boolean** value indicating whether the specified element has the
  /// specified attribute or not.
  external bool hasAttribute(String qualifiedName);

  /// `hasAttributeNS` returns a boolean value indicating whether the current
  /// element has the specified attribute.
  external bool hasAttributeNS(
    String? namespace,
    String localName,
  );

  /// Returns the specified attribute of the specified element, as an `Attr`
  /// node.
  external Attr? getAttributeNode(String qualifiedName);

  /// Returns the `Attr` node for the attribute with the given namespace and
  /// name.
  external Attr? getAttributeNodeNS(
    String? namespace,
    String localName,
  );

  /// The **`setAttributeNode()`** method adds a new
  /// `Attr` node to the specified element.
  external Attr? setAttributeNode(Attr attr);

  /// `setAttributeNodeNS` adds a new namespaced attribute node to an element.
  external Attr? setAttributeNodeNS(Attr attr);

  /// The **`removeAttributeNode()`** method of the
  /// [Element] interface removes the specified attribute from the element.
  external Attr removeAttributeNode(Attr attr);

  /// The **`Element.attachShadow()`** method attaches a shadow DOM tree to the
  /// specified element and returns a reference to its [ShadowRoot].
  external ShadowRoot attachShadow(ShadowRootInit init);

  /// The **`closest()`** method of the [Element] interface traverses the
  /// element and its parents (heading toward the document root) until it finds
  /// a node that matches the specified
  /// [CSS selector](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Selectors).
  external Element? closest(String selectors);

  /// The **`matches()`** method of the [Element] interface tests whether the
  /// element would be selected by the specified
  /// [CSS selector](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Selectors).
  external bool matches(String selectors);
  external bool webkitMatchesSelector(String selectors);

  /// The
  /// **`Element.getElementsByTagName()`** method returns a live
  /// [HTMLCollection] of elements with the given
  /// [tag name](https://developer.mozilla.org/en-US/docs/Web/API/Element/tagName).
  ///
  /// All descendants of the
  /// specified element are searched, but not the element itself. The returned
  /// list is
  /// _live_, which means it updates itself with the DOM tree automatically.
  /// Therefore, there is no need to call `Element.getElementsByTagName()` with
  /// the same element and arguments repeatedly if the DOM changes in between
  /// calls.
  ///
  /// When called on an HTML element in an HTML document, `getElementsByTagName`
  /// lower-cases the argument before searching for it. This is undesirable when
  /// trying to
  /// match  SVG elements (such as
  /// [`<linearGradient>`](/en-US/docs/Web/SVG/Element/linearGradient))
  /// in an HTML document. Instead, use [Element.getElementsByTagNameNS],
  /// which preserves the capitalization of the tag name.
  ///
  /// `Element.getElementsByTagName` is similar to
  /// [Document.getElementsByTagName], except that it only searches for
  /// elements that are descendants of the specified element.
  external HTMLCollection getElementsByTagName(String qualifiedName);

  /// The **`Element.getElementsByTagNameNS()`** method returns a
  /// live [HTMLCollection] of elements with the given tag name belonging to the
  /// given namespace. It is similar to [Document.getElementsByTagNameNS],
  /// except
  /// that its search is restricted to descendants of the specified element.
  external HTMLCollection getElementsByTagNameNS(
    String? namespace,
    String localName,
  );

  /// The [Element] method
  /// **`getElementsByClassName()`** returns a live
  /// [HTMLCollection] which contains every descendant element which has the
  /// specified class name or names.
  ///
  /// The method [Document.getElementsByClassName]
  /// on the [Document] interface works essentially the same way, except it acts
  /// on the entire document, starting at the document root.
  external HTMLCollection getElementsByClassName(String classNames);

  /// The **`insertAdjacentElement()`** method of the
  /// [Element] interface inserts a given element node at a given position
  /// relative to the element it is invoked upon.
  external Element? insertAdjacentElement(
    String where,
    Element element,
  );

  /// The **`insertAdjacentText()`** method of the [Element] interface, given a
  /// relative position and a string, inserts a new text node at the given
  /// position relative to the element it is called from.
  external void insertAdjacentText(
    String where,
    String data,
  );

  /// The **`Element.requestFullscreen()`**
  /// method issues an asynchronous request to make the element be displayed in
  /// fullscreen
  /// mode.
  ///
  /// It's not guaranteed that the element will be put into full screen mode. If
  /// permission
  /// to enter full screen mode is granted, the returned `Promise` will resolve
  /// and the element will receive a [Element/fullscreenchange_event] event to
  /// let it know that
  /// it's now in full screen mode. If permission is denied, the promise is
  /// rejected and the
  /// element receives a [Element/fullscreenerror_event] event instead. If the
  /// element has been
  /// detached from the original document, then the document receives these
  /// events instead.
  external JSPromise requestFullscreen([FullscreenOptions options]);

  /// The **`setPointerCapture()`** method of the
  /// [Element] interface is used to designate a specific element as the
  /// _capture target_ of future pointer events. Subsequent events for the
  /// pointer will
  /// be targeted at the capture element until capture is released (via
  /// [Element.releasePointerCapture] or the
  /// [Element/pointerup_event] event is fired).
  ///
  /// > **Note:** Pointer capture will cause the target to capture all
  /// > subsequent pointer events as if they were occurring over the capturing
  /// > target. Accordingly, `pointerover`, `pointerenter`, `pointerleave`, and
  /// > `pointerout` **will not fire** as long as this capture is set.
  /// > For touchscreen browsers that allow
  /// > [direct manipulation](https://w3c.github.io/pointerevents/#dfn-direct-manipulation),
  /// > an
  /// > [implicit pointer capture](https://w3c.github.io/pointerevents/#dfn-implicit-pointer-capture)
  /// > will be called on the element when a `pointerdown` event triggers. The
  /// > capture can be released manually by calling
  /// > [element.releasePointerCapture] on the target element, or it will be
  /// > implicitly released after a `pointerup` or `pointercancel` event.
  ///
  /// ### Overview of pointer capture
  ///
  /// _Pointer capture_ allows events for a particular _pointer event_
  /// ([PointerEvent]) to be re-targeted to a particular element instead of the
  /// normal (or _hit test_) target at a pointer's location. This can be used to
  /// ensure
  /// that an element continues to receive pointer events even if the pointer
  /// device's contact
  /// moves off the element (such as by scrolling or panning).
  external void setPointerCapture(int pointerId);

  /// The **`releasePointerCapture()`** method of the
  /// [Element] interface releases (stops) _pointer capture_ that was
  /// previously set for a specific ([PointerEvent]) _pointer_.
  ///
  /// See the [Element.setPointerCapture] method
  /// for a description of _pointer capture_ and how to set it for a particular
  /// element.
  external void releasePointerCapture(int pointerId);

  /// The **`hasPointerCapture()`** method of the
  /// [Element] interface checks whether the element on which it is invoked has
  /// pointer capture for the pointer identified by the given pointer ID.
  external bool hasPointerCapture(int pointerId);

  /// The **`requestPointerLock()`** method of the [Element] interface lets you
  /// asynchronously ask for the pointer to be locked on the given element.
  ///
  /// To track the success or failure of the request, it is necessary to listen
  /// for the [Document/pointerlockchange_event] and
  /// [Document/pointerlockerror_event] events at the [Document] level.
  ///
  /// > **Note:** In the current specification, `requestPointerLock()` only
  /// > communicates the success or failure of the request by firing
  /// > [Document/pointerlockchange_event] or [Document/pointerlockerror_event]
  /// > events.
  /// > [A proposed update to the specification](https://github.com/w3c/pointerlock/pull/49)
  /// > updates `requestPointerLock()` to return a `Promise` which communicates
  /// > success or failure. This page documents the version that returns a
  /// > `Promise`. However, note that this version is not yet a standard and is
  /// > not implemented by all browsers. See
  /// > [Browser compatibility](#browser_compatibility) for more information.
  external void requestPointerLock();

  /// The **`setHTML()`** method of the [Element] interface is used to parse and
  /// sanitize a string of HTML and then insert it into the DOM as a subtree of
  /// the element.
  /// It should be used instead of [Element.innerHTML] for inserting untrusted
  /// strings of HTML into an element.
  ///
  /// The parsing process drops any elements in the HTML string that are invalid
  /// in the context of the current element, while sanitizing removes any unsafe
  /// or otherwise unwanted elements, attributes or comments.
  /// The default `Sanitizer()` configuration strips out XSS-relevant input by
  /// default, including `script` tags, custom elements, and comments.
  /// The sanitizer configuration may be customized using [Sanitizer.Sanitizer]
  /// constructor options.
  external void setHTML(
    String input, [
    SetHTMLOptions options,
  ]);
  external JSArray? getRegionFlowRanges();
  external JSArray getBoxQuads([BoxQuadOptions options]);
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

  /// The **`Element.prepend()`** method inserts a set of
  /// [Node] objects or string objects before the first child
  /// of the [Element]. String objects are inserted as
  /// equivalent [Text] nodes.
  external void prepend(JSAny nodes);

  /// The **`Element.append()`** method
  /// inserts a set of [Node] objects or string objects after
  /// the last child of the `Element`. String objects
  /// are inserted as equivalent [Text] nodes.
  ///
  /// Differences from [Node.appendChild]:
  ///
  /// - `Element.append()` allows you to also append string
  /// objects, whereas `Node.appendChild()` only accepts [Node]
  /// objects.
  /// - `Element.append()` has no return value, whereas
  /// `Node.appendChild()` returns the appended [Node] object.
  /// - `Element.append()` can append several nodes and strings, whereas
  /// `Node.appendChild()` can only append one node.
  external void append(JSAny nodes);

  /// The **`Element.replaceChildren()`** method replaces the
  /// existing children of a [Node] with a specified new set of children. These
  /// can be string or [Node] objects.
  external void replaceChildren(JSAny nodes);

  /// The **`querySelector()`** method of the [Element]
  /// interface returns the first element that is a descendant of the element on
  /// which it is
  /// invoked that matches the specified group of selectors.
  external Element? querySelector(String selectors);

  /// The [Element] method **`querySelectorAll()`**
  /// returns a static (not live) [NodeList] representing a list of elements
  /// matching the specified group of selectors which are descendants of the
  /// element on which
  /// the method was called.
  external NodeList querySelectorAll(String selectors);

  /// The **`Element.before()`** method inserts a set of
  /// [Node] or string objects in the children list of this
  /// `Element`'s parent, just before this `Element`.
  /// String objects are inserted as equivalent [Text] nodes.
  external void before(JSAny nodes);

  /// The **`Element.after()`** method inserts a set of
  /// [Node] or string objects in the children list of the
  /// `Element`'s parent, just after the `Element`.
  /// String objects are inserted as equivalent [Text] nodes.
  external void after(JSAny nodes);

  /// The **`Element.replaceWith()`** method replaces this
  /// `Element` in the children list of its parent with a set of
  /// [Node] or string objects. String
  /// objects are inserted as equivalent [Text] nodes.
  external void replaceWith(JSAny nodes);

  /// The **`Element.remove()`** method removes the element from the DOM.
  external void remove();

  /// The [Element] interface's **`animate()`** method
  /// is a shortcut method which creates a new [Animation], applies it to the
  /// element, then plays the animation. It returns the created [Animation]
  /// object instance.
  ///
  /// > **Note:** Elements can have multiple animations applied to them. You can
  /// > get a list of the
  /// > animations that affect an element by calling [Element.getAnimations].
  external Animation animate(
    JSObject? keyframes, [
    JSAny options,
  ]);

  /// The `getAnimations()` method of the [Element] interface
  /// (specified on the `Animatable` mixin) returns an array of all
  /// [Animation] objects affecting this element or which are scheduled to do so
  /// in future. It can optionally return [Animation] objects for descendant
  /// elements too.
  ///
  /// > **Note:** This array includes
  /// > [CSS Animations](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_animations),
  /// > [CSS Transitions](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_transitions),
  /// > and
  /// > [Web Animations](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API).
  external JSArray getAnimations([GetAnimationsOptions options]);
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
  external set innerHTML(String value);
  external String get innerHTML;
  external String get regionOverset;
  external HTMLCollection get children;
  external Element? get firstElementChild;
  external Element? get lastElementChild;
  external int get childElementCount;
  external Element? get previousElementSibling;
  external Element? get nextElementSibling;
  external HTMLSlotElement? get assignedSlot;
  external set role(String? value);
  external String? get role;
  external set ariaActiveDescendantElement(Element? value);
  external Element? get ariaActiveDescendantElement;
  external set ariaAtomic(String? value);
  external String? get ariaAtomic;
  external set ariaAutoComplete(String? value);
  external String? get ariaAutoComplete;
  external set ariaBusy(String? value);
  external String? get ariaBusy;
  external set ariaChecked(String? value);
  external String? get ariaChecked;
  external set ariaColCount(String? value);
  external String? get ariaColCount;
  external set ariaColIndex(String? value);
  external String? get ariaColIndex;
  external set ariaColIndexText(String? value);
  external String? get ariaColIndexText;
  external set ariaColSpan(String? value);
  external String? get ariaColSpan;
  external set ariaControlsElements(JSArray? value);
  external JSArray? get ariaControlsElements;
  external set ariaCurrent(String? value);
  external String? get ariaCurrent;
  external set ariaDescribedByElements(JSArray? value);
  external JSArray? get ariaDescribedByElements;
  external set ariaDescription(String? value);
  external String? get ariaDescription;
  external set ariaDetailsElements(JSArray? value);
  external JSArray? get ariaDetailsElements;
  external set ariaDisabled(String? value);
  external String? get ariaDisabled;
  external set ariaErrorMessageElements(JSArray? value);
  external JSArray? get ariaErrorMessageElements;
  external set ariaExpanded(String? value);
  external String? get ariaExpanded;
  external set ariaFlowToElements(JSArray? value);
  external JSArray? get ariaFlowToElements;
  external set ariaHasPopup(String? value);
  external String? get ariaHasPopup;
  external set ariaHidden(String? value);
  external String? get ariaHidden;
  external set ariaInvalid(String? value);
  external String? get ariaInvalid;
  external set ariaKeyShortcuts(String? value);
  external String? get ariaKeyShortcuts;
  external set ariaLabel(String? value);
  external String? get ariaLabel;
  external set ariaLabelledByElements(JSArray? value);
  external JSArray? get ariaLabelledByElements;
  external set ariaLevel(String? value);
  external String? get ariaLevel;
  external set ariaLive(String? value);
  external String? get ariaLive;
  external set ariaModal(String? value);
  external String? get ariaModal;
  external set ariaMultiLine(String? value);
  external String? get ariaMultiLine;
  external set ariaMultiSelectable(String? value);
  external String? get ariaMultiSelectable;
  external set ariaOrientation(String? value);
  external String? get ariaOrientation;
  external set ariaOwnsElements(JSArray? value);
  external JSArray? get ariaOwnsElements;
  external set ariaPlaceholder(String? value);
  external String? get ariaPlaceholder;
  external set ariaPosInSet(String? value);
  external String? get ariaPosInSet;
  external set ariaPressed(String? value);
  external String? get ariaPressed;
  external set ariaReadOnly(String? value);
  external String? get ariaReadOnly;
  external set ariaRequired(String? value);
  external String? get ariaRequired;
  external set ariaRoleDescription(String? value);
  external String? get ariaRoleDescription;
  external set ariaRowCount(String? value);
  external String? get ariaRowCount;
  external set ariaRowIndex(String? value);
  external String? get ariaRowIndex;
  external set ariaRowIndexText(String? value);
  external String? get ariaRowIndexText;
  external set ariaRowSpan(String? value);
  external String? get ariaRowSpan;
  external set ariaSelected(String? value);
  external String? get ariaSelected;
  external set ariaSetSize(String? value);
  external String? get ariaSetSize;
  external set ariaSort(String? value);
  external String? get ariaSort;
  external set ariaValueMax(String? value);
  external String? get ariaValueMax;
  external set ariaValueMin(String? value);
  external String? get ariaValueMin;
  external set ariaValueNow(String? value);
  external String? get ariaValueNow;
  external set ariaValueText(String? value);
  external String? get ariaValueText;
}
extension type ShadowRootInit._(JSObject _) implements JSObject {
  external factory ShadowRootInit({
    required ShadowRootMode mode,
    bool delegatesFocus,
    SlotAssignmentMode slotAssignment,
  });

  external set mode(ShadowRootMode value);
  external ShadowRootMode get mode;
  external set delegatesFocus(bool value);
  external bool get delegatesFocus;
  external set slotAssignment(SlotAssignmentMode value);
  external SlotAssignmentMode get slotAssignment;
}
extension type NamedNodeMap._(JSObject _) implements JSObject {
  /// The **`item()`** method of the [NamedNodeMap] interface
  /// returns the item in the map matching the index.
  ///
  /// > **Note:** This method is also called when you use the operator `[]`
  /// > syntax.
  /// > So, `myMap[i]`is equivalent to `myMap.item(i)` where `i` is a number.
  external Attr? item(int index);

  /// The **`getNamedItem()`** method of the [NamedNodeMap] interface returns
  /// the [Attr] corresponding to the given name, or `null` if there is no
  /// corresponding attribute.
  ///
  /// > **Note:** This method is also called when you use the operator `[]`
  /// > syntax.
  /// > So, `myMap[str]`is equivalent to `myMap.getNamedItem(str)` where `str`
  /// > is a string.
  external Attr? getNamedItem(String qualifiedName);

  /// The **`getNamedItemNS()`** method of the [NamedNodeMap] interface returns
  /// the [Attr] corresponding to the given local name in the given namespace,
  /// or `null` if there is no corresponding attribute.
  external Attr? getNamedItemNS(
    String? namespace,
    String localName,
  );

  /// The **`setNamedItem()`** method of the [NamedNodeMap] interface
  /// puts the [Attr] identified by its name in the map.
  /// If there is already an [Attr] with the same name in the map,
  /// it is _replaced_.
  external Attr? setNamedItem(Attr attr);

  /// The **`setNamedItemNS()`** method of the [NamedNodeMap] interface
  /// puts the [Attr] identified by its name in the map.
  /// If there was already an [Attr] with the same name in the map,
  /// it is _replaced_.
  ///
  /// > **Note:** This method is an alias of `setNamedItem()` you can use them
  /// > interchangeably.
  external Attr? setNamedItemNS(Attr attr);

  /// The **`removeNamedItem()`** method of the [NamedNodeMap] interface
  /// removes the [Attr] corresponding to the given name from the map.
  external Attr removeNamedItem(String qualifiedName);

  /// The **`removedNamedItemNS()`** method of the [NamedNodeMap] interface
  /// removes the [Attr] corresponding to the given namespace and local name
  /// from the map.
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
  /// The **`substringData()`** method of the [CharacterData] interface
  /// returns a portion of the existing data,
  /// starting at the specified index
  /// and extending for a given number of characters afterwards.
  external String substringData(
    int offset,
    int count,
  );

  /// The **`appendData()`** method of the [CharacterData] interface
  /// adds the provided data to the end of the node's current data.
  external void appendData(String data);

  /// The **`insertData()`** method of the [CharacterData] interface
  /// inserts the provided data into this `CharacterData` node's current data,
  /// at the provided offset from the start of the existing data.
  /// The provided data is spliced into the existing data.
  external void insertData(
    int offset,
    String data,
  );

  /// The **`deleteData()`** method of the [CharacterData] interface
  /// removes all or part of the data from this `CharacterData` node.
  external void deleteData(
    int offset,
    int count,
  );

  /// The **`replaceData()`** method of the [CharacterData] interface removes a
  /// certain number of characters of the existing text in a given
  /// `CharacterData` node and replaces those characters with the text provided.
  external void replaceData(
    int offset,
    int count,
    String data,
  );

  /// The **`before()`** method of the [CharacterData] interface
  /// inserts a set of [Node] objects and strings
  /// in the children list of the `CharacterData`'s parent, just before the
  /// `CharacterData` node.
  ///
  /// Strings are inserted as [Text] nodes; the string is being passed as
  /// argument to the [Text/Text] constructor.
  external void before(JSAny nodes);

  /// The **`after()`** method of the [CharacterData] interface
  /// inserts a set of [Node] objects or strings in the children list of the
  /// object's parent, just after the object itself.
  ///
  /// Strings are inserted as [Text] nodes; the string is being passed as
  /// argument to the [Text/Text] constructor.
  external void after(JSAny nodes);

  /// The **`replaceWith()`** method of the [CharacterData] interface
  /// replaces this node in the children list of its parent
  /// with a set of [Node] objects or string.
  ///
  /// Strings are inserted as [Text] nodes; the string is being passed as
  /// argument to the [Text/Text] constructor.
  external void replaceWith(JSAny nodes);

  /// The **`remove()`** method of the [CharacterData] removes the text
  /// contained in the node.
  external void remove();
  external set data(String value);
  external String get data;
  external int get length;
  external Element? get previousElementSibling;
  external Element? get nextElementSibling;
}
extension type Text._(JSObject _) implements CharacterData, JSObject {
  external factory Text([String data]);

  /// The **`splitText()`** method of the [Text] interface
  /// breaks the [Text] node into two nodes at the specified offset,
  /// keeping both nodes in the tree as siblings.
  ///
  /// After the split, the current node contains all the content
  /// up to the specified offset point,
  /// and a newly created node of the same type contains the remaining text.
  /// The newly created node is returned to the caller.
  /// If the original node had a parent, the new node is inserted as the next
  /// sibling of the original node.
  /// If the offset is equal to the length of the original node,
  /// the newly created node has no data.
  ///
  /// Separated text nodes can be concatenated using the [Node.normalize]
  /// method.
  external Text splitText(int offset);
  external JSArray getBoxQuads([BoxQuadOptions options]);
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

  /// The **`Range.createContextualFragment()`** method returns a
  /// [DocumentFragment] by invoking the HTML fragment parsing algorithm or the
  /// XML fragment parsing algorithm with the start of the range (the _parent_
  /// of the
  /// selected node) as the context node. The HTML fragment parsing algorithm is
  /// used if the
  /// range belongs to a `Document` whose HTMLness bit is set. In the HTML case,
  /// if
  /// the context node would be `html`, for historical reasons the fragment
  /// parsing
  /// algorithm is invoked with `body` as the context instead.
  external DocumentFragment createContextualFragment(String fragment);

  /// The **`Range.getClientRects()`** method returns a list of [DOMRect]
  /// objects representing the area of the screen occupied by the
  /// [range](https://developer.mozilla.org/en-US/docs/Web/API/Range). This is
  /// created by aggregating the results of calls to
  /// [Element.getClientRects] for all the elements in the range.
  external DOMRectList getClientRects();

  /// The **`Range.getBoundingClientRect()`** method returns a [DOMRect] object
  /// that bounds the contents of the range; this is a rectangle
  /// enclosing the union of the bounding rectangles for all the elements in the
  /// range.
  ///
  /// This method is useful for determining the viewport coordinates of the
  /// cursor or
  /// selection inside a text box. See [Element.getBoundingClientRect] for
  /// details on the returned value.
  external DOMRect getBoundingClientRect();

  /// The **`Range.setStart()`** method sets the start position of a
  /// [Range].
  ///
  /// If the `startNode` is a [Node] of type [Text],
  /// [Comment], or [CDataSection], then `startOffset` is
  /// the number of characters from the start of `startNode`. For other
  /// `Node` types, `startOffset` is the number of child nodes between
  /// the start of the `startNode`.
  ///
  /// Setting the start point below (lower in the document) the end point will
  /// result in a
  /// collapsed range with the start and end points both set to the specified
  /// start position.
  external void setStart(
    Node node,
    int offset,
  );

  /// The **`Range.setEnd()`** method sets the end position of a [Range] to be
  /// located at the given offset into the specified node x.Setting
  /// the end point above (higher in the document) than the start point will
  /// result in a
  /// collapsed range with the start and end points both set to the specified
  /// end position.
  external void setEnd(
    Node node,
    int offset,
  );

  /// The **`Range.setStartBefore()`** method sets the start position
  /// of a [Range] relative to another [Node]. The parent
  /// [Node] of the start of the [Range] will be the same as that
  /// for the `referenceNode`.
  external void setStartBefore(Node node);

  /// The **`Range.setStartAfter()`** method sets the start position
  /// of a [Range] relative to a [Node]. The parent
  /// [Node] of the start of the [Range] will be the same as that
  /// for the `referenceNode`.
  external void setStartAfter(Node node);

  /// The **`Range.setEndBefore()`** method sets the end position of
  /// a `Range` relative to another [Node]. The parent
  /// `Node` of end of the `Range` will be the same as that for the
  /// `referenceNode`.
  external void setEndBefore(Node node);

  /// The **`Range.setEndAfter()`** method sets the end position of a
  /// [Range] relative to another [Node]. The parent
  /// `Node` of end of the `Range` will be the same as that for the
  /// `referenceNode`.
  external void setEndAfter(Node node);

  /// The **`Range.collapse()`** method collapses the
  /// [Range] to one of its boundary points.
  ///
  /// A collapsed [Range] is empty, containing no content, specifying a
  /// single-point in a DOM tree. To determine if a [Range] is already
  /// collapsed,
  /// see the [Range.collapsed] property.
  external void collapse([bool toStart]);

  /// The **`Range.selectNode()`** method sets the
  /// [Range] to contain the [Node] and its contents. The parent
  /// [Node] of the start and end of the [Range] will be the same as
  /// the parent of the _referenceNode_.
  external void selectNode(Node node);

  /// The **`Range.selectNodeContents()`** method sets the [Range] to contain
  /// the contents of a [Node].
  ///
  /// The parent `Node` of the start and end of the `Range` will be the
  /// reference node. The `startOffset` is 0, and the `endOffset` is the
  /// number of child `Node`s or number of characters contained in the reference
  /// node.
  external void selectNodeContents(Node node);

  /// The
  /// **`Range.compareBoundaryPoints()`** method compares the
  /// boundary points of the [Range] with those of another range.
  external int compareBoundaryPoints(
    int how,
    Range sourceRange,
  );

  /// The **`Range.deleteContents()`** method removes the contents of
  /// the [Range] from the [Document].
  ///
  /// Unlike [Range.extractContents], this method does not return a
  /// [DocumentFragment] containing the deleted content.
  external void deleteContents();

  /// The **`Range.extractContents()`** method moves contents of the
  /// [Range] from the document tree into a [DocumentFragment].
  ///
  /// Event listeners added using DOM Events are not retained during extraction.
  /// HTML
  /// attribute events are retained or duplicated as they are for the
  /// [Node.cloneNode] method. HTML `id` attributes are also cloned,
  /// which can lead to an invalid document if a partially-selected node is
  /// extracted and
  /// appended to the document.
  ///
  /// Partially selected nodes are cloned to include the parent tags necessary
  /// to make the
  /// document fragment valid.
  external DocumentFragment extractContents();

  /// The **`Range.cloneContents()`** returns a [DocumentFragment] copying the
  /// objects of type [Node]
  /// included in the [Range].
  ///
  /// Event listeners added using [EventTarget.addEventListener]
  /// are not copied during cloning. HTML attribute events are duplicated as
  /// they are
  /// for the [Node.cloneNode] method. HTML `id` attributes
  /// are also cloned, which can lead to an invalid document through cloning.
  ///
  /// Partially selected nodes include the parent tags necessary to make the
  /// document
  /// fragment valid.
  external DocumentFragment cloneContents();

  /// The **`Range.insertNode()`** method inserts a node at the start
  /// of the [Range].
  ///
  /// The new node is inserted at the start boundary point of the `Range`. If
  /// the
  /// new node is to be added to a text [Node], that `Node` is split
  /// at the insertion point, and the insertion occurs between the two text
  /// nodes.
  ///
  /// If the new node is a document fragment, the children of the document
  /// fragment are
  /// inserted instead.
  external void insertNode(Node node);

  /// The **`Range.surroundContents()`** method moves content of the
  /// [Range] into a new node, placing the new node at the start of the
  /// specified range.
  ///
  /// This method is nearly equivalent to
  /// `newNode.appendChild(range.extractContents()); range.insertNode(newNode)`.
  /// After surrounding, the boundary points of the `range` include
  /// `newNode`.
  ///
  /// An exception will be thrown, however, if the [Range] splits a non-[Text]
  /// node with only one of its boundary points. That is, unlike the
  /// alternative above, if there are partially selected nodes, they will not be
  /// cloned and
  /// instead the operation will fail.
  external void surroundContents(Node newParent);

  /// The **`Range.cloneRange()`** method returns a
  /// [Range] object with boundary points identical to the cloned
  /// [Range].
  ///
  /// The returned clone is copied by value, not reference, so a change in
  /// either
  /// [Range] does not affect the other.
  external Range cloneRange();

  /// The **`Range.detach()`** method does nothing. It used to
  /// disable the [Range] object and enable the browser to release associated
  /// resources. The method has been kept for compatibility.
  external void detach();

  /// The **`Range.isPointInRange()`** method returns a boolean
  /// indicating whether the given point is in the [Range]. It returns
  /// `true` if the point (cursor position) at `offset` within
  /// `ReferenceNode` is within this range.
  external bool isPointInRange(
    Node node,
    int offset,
  );

  /// The **`Range.comparePoint()`** method returns `-1`,
  /// `0`, or `1` depending on whether the `referenceNode` is
  /// before, the same as, or after the [Range].
  ///
  /// If the _reference node_ is a [Node] of type [Text],
  /// [Comment], or [CDATASection], then offset is the number of
  /// characters from the start of _reference node_. For other [Node]
  /// types, offset is the number of child nodes between the start of the
  /// _reference
  /// node_.
  external int comparePoint(
    Node node,
    int offset,
  );

  /// The **`Range.intersectsNode()`** method returns a boolean
  /// indicating whether the given [Node] intersects the [Range].
  external bool intersectsNode(Node node);
  external Node get commonAncestorContainer;
}
extension type NodeIterator._(JSObject _) implements JSObject {
  /// The **`NodeIterator.nextNode()`** method returns the next node
  /// in the set represented by the [NodeIterator] and advances the position of
  /// the iterator within the set. The first call to `nextNode()` returns the
  /// first node in the set.
  ///
  /// This method returns `null` when there are no nodes left in the set.
  ///
  /// In old browsers, as specified in old versions of the specifications, the
  /// method may
  /// throws the `INVALID_STATE_ERR` [DOMException] if this method
  /// is called after the [NodeIterator.detach]method. Recent browsers never
  /// throw.
  external Node? nextNode();

  /// The **`NodeIterator.previousNode()`** method returns the
  /// previous node in the set represented by the [NodeIterator] and moves the
  /// position of the iterator backwards within the set.
  ///
  /// This method returns `null` when the current node is the first node in the
  /// set.
  ///
  /// In old browsers, as specified in old versions of the specifications, the
  /// method may
  /// throws the `INVALID_STATE_ERR` [DOMException] if this method
  /// is called after the [NodeIterator.detach]method. Recent browsers never
  /// throw.
  external Node? previousNode();

  /// The **`NodeIterator.detach()`** method is a no-op, kept for
  /// backward compatibility only.
  ///
  /// Originally, it detached the [NodeIterator] from the set over which it
  /// iterates, releasing any resources used by the set and setting the
  /// iterator's state to
  /// `INVALID`. Once this method had been called, calls to other methods on
  /// `NodeIterator` would raise the `INVALID_STATE_ERR` exception.
  external void detach();
  external Node get root;
  external Node get referenceNode;
  external bool get pointerBeforeReferenceNode;
  external int get whatToShow;
  external NodeFilter? get filter;
}
extension type TreeWalker._(JSObject _) implements JSObject {
  /// The **`TreeWalker.parentNode()`** method moves the current
  /// [Node] to the first _visible_ ancestor node in the document order,
  /// and returns the found node. If no such node exists, or if it is above the
  /// `TreeWalker`'s _root node_, it returns `null` and the current
  /// node is not changed.
  external Node? parentNode();

  /// The **`TreeWalker.firstChild()`** method moves the current
  /// [Node] to the first _visible_ child of the current node, and returns
  /// the found child. If no such child exists, it returns `null` and the
  /// current node is not changed.
  external Node? firstChild();

  /// The **`TreeWalker.lastChild()`** method moves the current
  /// [Node] to the last _visible_ child of the current node, and returns
  /// the found child. If no such child exists, it returns `null` and the
  /// current node is not changed.
  external Node? lastChild();

  /// The **`TreeWalker.previousSibling()`** method moves the current
  /// [Node] to its previous sibling, if any, and returns the found sibling. If
  /// there is no such node, it returns `null` and the current node is not
  /// changed.
  external Node? previousSibling();

  /// The **`TreeWalker.nextSibling()`** method moves the current
  /// [Node] to its next sibling, if any, and returns the found sibling. If
  /// there
  /// is no such node, it returns `null` and the current node is not changed.
  external Node? nextSibling();

  /// The **`TreeWalker.previousNode()`** method moves the current
  /// [Node] to the previous _visible_ node in the document order, and
  /// returns the found node. If no such node
  /// exists, or if it is before that the _root node_ defined at the object
  /// construction, it returns `null` and the current node is not changed.
  external Node? previousNode();

  /// The **`TreeWalker.nextNode()`** method moves the current
  /// [Node] to the next _visible_ node in the document order, and returns
  /// the found node. If no such node exists, it returns `null` and the current
  /// node is not changed.
  external Node? nextNode();
  external Node get root;
  external int get whatToShow;
  external NodeFilter? get filter;
  external set currentNode(Node value);
  external Node get currentNode;
}
extension type DOMTokenList._(JSObject _) implements JSObject {
  /// The **`item()`** method of the [DOMTokenList] interface returns an item in
  /// the list,
  /// determined by its position in the list, its index.
  ///
  /// > **Note:** This method is equivalent as the
  /// > [bracket notation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Property_accessors#bracket_notation).
  /// > So `aList.item(i)` is the same as `aList[i]`.
  external String? item(int index);

  /// The **`contains()`** method of the [DOMTokenList] interface
  /// returns a boolean value — `true` if the underlying list contains the given
  /// token,
  /// otherwise `false`.
  external bool contains(String token);

  /// The **`add()`** method of the [DOMTokenList] interface adds the given
  /// tokens to the list, omitting any that are already present.
  external void add(String tokens);

  /// The **`remove()`** method of the [DOMTokenList] interface
  /// removes the specified _tokens_ from the list.
  external void remove(String tokens);

  /// The **`toggle()`** method of the [DOMTokenList] interface
  /// removes an existing token from the list and returns `false`.
  /// If the token doesn't exist it's added and the function returns `true`.
  external bool toggle(
    String token, [
    bool force,
  ]);

  /// The **`replace()`** method of the [DOMTokenList] interface
  /// replaces an existing token with a new token.
  /// If the first token doesn't exist, `replace()` returns `false` immediately,
  /// without adding the new token to the token list.
  external bool replace(
    String token,
    String newToken,
  );

  /// The **`supports()`** method of the [DOMTokenList] interface
  /// returns `true` if a given `token` is in the associated attribute's
  /// supported tokens.
  /// This method is intended to support feature detection.
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

  /// The **`iterateNext()`** method of the
  /// [XPathResult] interface iterates over a node set result and returns the
  /// next node from it or `null` if there are no more nodes.
  external Node? iterateNext();

  /// The **`snapshotItem()`** method of the
  /// [XPathResult] interface returns an item of the snapshot collection or
  /// `null` in case the index is not within the range of nodes. Unlike the
  /// iterator result, the snapshot does not become invalid, but may not
  /// correspond to the
  /// current document if it is mutated.
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
  /// The **`evaluate()`** method of the
  /// [XPathExpression] interface executes an
  /// [XPath](https://developer.mozilla.org/en-US/docs/Web/XPath) expression on
  /// the given node or document and
  /// returns an [XPathResult].
  external XPathResult evaluate(
    Node contextNode, [
    int type,
    XPathResult? result,
  ]);
}
extension type XPathEvaluator._(JSObject _) implements JSObject {
  external factory XPathEvaluator();

  /// This method compiles an [XPathExpression] which can then be used for
  /// (repeated) evaluations of the  expression.
  external XPathExpression createExpression(
    String expression, [
    XPathNSResolver? resolver,
  ]);

  /// This method adapts any DOM node to resolve namespaces so that an XPath
  /// expression can
  /// be easily evaluated relative to the context of the node where it appeared
  /// within the
  /// document.
  ///
  /// This adapter works like the DOM Level 3 method [Node.lookupNamespaceURI]
  /// in resolving the namespace URI from a given prefix using
  /// the current information available in the node's hierarchy at the time the
  /// method is
  /// called, also correctly resolving the implicit `xml` prefix.
  external Node createNSResolver(Node nodeResolver);

  /// The `evaluate()` method of the [XPathEvaluator] interface
  /// executes an XPath expression on the given node or document and returns an
  /// [XPathResult].
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

  /// The `importStylesheet()` method of the [XSLTProcessor] interface imports
  /// an XSLT stylesheet for the processor.
  external void importStylesheet(Node style);

  /// The `transformToFragment()` method of the [XSLTProcessor] interface
  /// transforms a provided [Node] source to a [DocumentFragment] using the XSLT
  /// stylesheet associated with the `XSLTProcessor`.
  external DocumentFragment transformToFragment(
    Node source,
    Document output,
  );

  /// The `transformToDocument()` method of the [XSLTProcessor] interface
  /// transforms the provided [Node] source to a [Document] using the XSLT
  /// stylesheet associated with `XSLTProcessor`.
  external Document transformToDocument(Node source);

  /// The `setParameter()` method of the [XSLTProcessor] interface sets the
  /// value of a parameter (`<xsl:param>`) in the stylesheet imported in the
  /// processor.
  external void setParameter(
    String namespaceURI,
    String localName,
    JSAny? value,
  );

  /// The `getParameter()` method of the [XSLTProcessor] interface returns the
  /// value of a parameter (`<xsl:param>`) from the stylesheet imported in the
  /// processor.
  external JSAny? getParameter(
    String namespaceURI,
    String localName,
  );

  /// The `removeParameter()` method of the [XSLTProcessor] interface removes
  /// the parameter (`<xsl:param>`) and its value from the stylesheet imported
  /// in the processor.
  external void removeParameter(
    String namespaceURI,
    String localName,
  );

  /// The `clearParameters()` method of the [XSLTProcessor] interface removes
  /// all parameters (`<xsl:param>`) and their values from the stylesheet
  /// imported in the processor. The `XSLTProcessor` will then use the default
  /// values specified in the XSLT stylesheet.
  external void clearParameters();

  /// The `reset()` method of the [XSLTProcessor] interface removes all
  /// parameters (`<xsl:param>`) and the XSLT stylesheet from the processor. The
  /// `XSLTProcessor` will then be in its original state when it was created.
  external void reset();
}
