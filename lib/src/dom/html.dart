// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'clipboard_apis.dart';
import 'credential_management.dart';
import 'css_font_loading.dart';
import 'css_typed_om.dart';
import 'css_view_transitions.dart';
import 'cssom.dart';
import 'cssom_view.dart';
import 'dom.dart';
import 'encrypted_media.dart';
import 'entries_api.dart';
import 'fetch.dart';
import 'fileapi.dart';
import 'gamepad.dart';
import 'geolocation.dart';
import 'geometry.dart';
import 'hr_time.dart';
import 'indexeddb.dart';
import 'media_capabilities.dart';
import 'media_playback_quality.dart';
import 'media_source.dart';
import 'mediacapture_streams.dart';
import 'mediasession.dart';
import 'performance_timeline.dart';
import 'permissions.dart';
import 'screen_wake_lock.dart';
import 'selection_api.dart';
import 'service_workers.dart';
import 'speech_api.dart';
import 'storage.dart';
import 'trusted_types.dart';
import 'uievents.dart';
import 'vibration.dart';
import 'web_locks.dart';
import 'webcryptoapi.dart';
import 'webidl.dart';
import 'xhr.dart';

typedef HTMLOrSVGScriptElement = JSObject;
typedef MediaProvider = JSObject;
typedef RenderingContext = JSObject;
typedef HTMLOrSVGImageElement = JSObject;
typedef CanvasImageSource = JSObject;
typedef OffscreenRenderingContext = JSObject;
typedef EventHandler = EventHandlerNonNull?;
typedef OnErrorEventHandler = OnErrorEventHandlerNonNull?;
typedef OnBeforeUnloadEventHandler = OnBeforeUnloadEventHandlerNonNull?;
typedef TimerHandler = JSAny;
typedef ImageBitmapSource = JSObject;
typedef MessageEventSource = JSObject;
typedef BlobCallback = JSFunction;
typedef CustomElementConstructor = JSFunction;
typedef FunctionStringCallback = JSFunction;
typedef NavigationInterceptHandler = JSFunction;
typedef EventHandlerNonNull = JSFunction;
typedef OnErrorEventHandlerNonNull = JSFunction;
typedef OnBeforeUnloadEventHandlerNonNull = JSFunction;
typedef FrameRequestCallback = JSFunction;
typedef DocumentReadyState = String;
typedef DocumentVisibilityState = String;
typedef CanPlayTypeResult = String;
typedef TextTrackMode = String;
typedef TextTrackKind = String;
typedef SelectionMode = String;
typedef PredefinedColorSpace = String;
typedef CanvasFillRule = String;
typedef ImageSmoothingQuality = String;
typedef CanvasLineCap = String;
typedef CanvasLineJoin = String;
typedef CanvasTextAlign = String;
typedef CanvasTextBaseline = String;
typedef CanvasDirection = String;
typedef CanvasFontKerning = String;
typedef CanvasFontStretch = String;
typedef CanvasFontVariantCaps = String;
typedef CanvasTextRendering = String;
typedef OffscreenRenderingContextId = String;
typedef ScrollRestoration = String;
typedef NavigationHistoryBehavior = String;
typedef NavigationType = String;
typedef NavigationFocusReset = String;
typedef NavigationScrollBehavior = String;
typedef DOMParserSupportedType = String;
typedef ImageOrientation = String;
typedef PremultiplyAlpha = String;
typedef ColorSpaceConversion = String;
typedef ResizeQuality = String;
typedef WorkerType = String;

/// The **`HTMLAllCollection`** interface represents a collection of _all_ of
/// the document's elements, accessible by index (like an array) and by the
/// element's
/// [`id`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id).
/// It is returned by the [document.all] property.
///
/// `HTMLAllCollection` has a very similar shape to [HTMLCollection], but there
/// are many subtle behavior differences — for example, `HTMLAllCollection` can
/// be called as a function, and its `item()` method can be called with a string
/// representing an element's `id` or `name` attribute.
extension type HTMLAllCollection._(JSObject _) implements JSObject {
  /// The **`namedItem()`** method of the [HTMLAllCollection] interface returns
  /// the first [Element] in the collection whose `id` or `name` attribute
  /// matches the specified name, or `null` if no element matches.
  external JSObject? namedItem(String name);

  /// The **`item()`** method of the [HTMLAllCollection] interface returns the
  /// element located at the specified offset into the collection, or the
  /// element with the specified value for its `id` or `name` attribute.
  external JSObject? item([String nameOrIndex]);
  external int get length;
}

/// The **`HTMLFormControlsCollection`** interface represents a _collection_ of
/// HTML _form control elements_, returned by the [HTMLFormElement] interface's
/// [HTMLFormElement.elements] property.
///
/// This interface replaces one method from [HTMLCollection], on which it is
/// based.
extension type HTMLFormControlsCollection._(JSObject _)
    implements HTMLCollection, JSObject {
  /// The **`HTMLFormControlsCollection.namedItem()`** method returns
  /// the [RadioNodeList] or the [Element] in the collection whose
  /// `name` or `id` match the specified name, or `null` if
  /// no node matches.
  ///
  /// Note that this version of `namedItem()` hides the one inherited from
  /// [HTMLCollection]. Like that one, in JavaScript, using the array bracket
  /// syntax with a `String`, like `collection["value"]` is
  /// equivalent to `collection.namedItem("value")`.
  external JSObject? namedItem(String name);
}

/// The **`RadioNodeList`** interface represents a collection of elements in a
/// `form` or a `fieldset` element, returned by a call to
/// [HTMLFormControlsCollection.namedItem].
extension type RadioNodeList._(JSObject _) implements NodeList, JSObject {
  external set value(String value);
  external String get value;
}

/// The **`HTMLOptionsCollection`** interface represents a collection of
/// [`<option>`](/en-US/docs/Web/HTML/Element/option) HTML elements (in document
/// order) and offers methods and properties for selecting from the list as well
/// as optionally altering its items. This object is returned only by the
/// `options` property of
/// [select](https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement).
extension type HTMLOptionsCollection._(JSObject _)
    implements HTMLCollection, JSObject {
  external void add(
    JSObject element, [
    JSAny? before,
  ]);
  external void remove(int index);
  external set length(int value);
  external int get length;
  external set selectedIndex(int value);
  external int get selectedIndex;
}

/// The **`DOMStringList`** interface is a legacy type returned by some APIs and
/// represents a non-modifiable list of strings (`DOMString`). Modern APIs use
/// `Array` objects (in WebIDL: `sequence<DOMString>`) instead.
///
/// This interface is used in
/// [IndexedDB](https://developer.mozilla.org/en-US/docs/Web/API/IndexedDB_API)
/// and in the [Location] API:
///
/// - [IDBDatabase.objectStoreNames]
/// - [IDBObjectStore.indexNames]
/// - [Location.ancestorOrigins]
extension type DOMStringList._(JSObject _) implements JSObject {
  /// The **`item()`** method returns a string from a
  /// [`DOMStringList`](https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList)
  /// by index.
  external String? item(int index);

  /// The **`contains()`** method returns a boolean indicating whether the given
  /// string is in the list.
  external bool contains(String string);
  external int get length;
}

/// The **`HTMLElement`** interface represents any
/// [HTML](https://developer.mozilla.org/en-US/docs/Web/HTML) element. Some
/// elements directly implement this interface, while others implement it via an
/// interface that inherits it.
extension type HTMLElement._(JSObject _) implements Element, JSObject {
  /// Creates an [HTMLElement] using the tag 'article'.
  HTMLElement.article() : _ = document.createElement('article');

  /// Creates an [HTMLElement] using the tag 'section'.
  HTMLElement.section() : _ = document.createElement('section');

  /// Creates an [HTMLElement] using the tag 'nav'.
  HTMLElement.nav() : _ = document.createElement('nav');

  /// Creates an [HTMLElement] using the tag 'aside'.
  HTMLElement.aside() : _ = document.createElement('aside');

  /// Creates an [HTMLElement] using the tag 'hgroup'.
  HTMLElement.hgroup() : _ = document.createElement('hgroup');

  /// Creates an [HTMLElement] using the tag 'header'.
  HTMLElement.header() : _ = document.createElement('header');

  /// Creates an [HTMLElement] using the tag 'footer'.
  HTMLElement.footer() : _ = document.createElement('footer');

  /// Creates an [HTMLElement] using the tag 'address'.
  HTMLElement.address() : _ = document.createElement('address');

  /// Creates an [HTMLElement] using the tag 'dt'.
  HTMLElement.dt() : _ = document.createElement('dt');

  /// Creates an [HTMLElement] using the tag 'dd'.
  HTMLElement.dd() : _ = document.createElement('dd');

  /// Creates an [HTMLElement] using the tag 'figure'.
  HTMLElement.figure() : _ = document.createElement('figure');

  /// Creates an [HTMLElement] using the tag 'figcaption'.
  HTMLElement.figcaption() : _ = document.createElement('figcaption');

  /// Creates an [HTMLElement] using the tag 'main'.
  HTMLElement.main() : _ = document.createElement('main');

  /// Creates an [HTMLElement] using the tag 'search'.
  HTMLElement.search() : _ = document.createElement('search');

  /// Creates an [HTMLElement] using the tag 'em'.
  HTMLElement.em() : _ = document.createElement('em');

  /// Creates an [HTMLElement] using the tag 'strong'.
  HTMLElement.strong() : _ = document.createElement('strong');

  /// Creates an [HTMLElement] using the tag 'small'.
  HTMLElement.small() : _ = document.createElement('small');

  /// Creates an [HTMLElement] using the tag 's'.
  HTMLElement.s() : _ = document.createElement('s');

  /// Creates an [HTMLElement] using the tag 'cite'.
  HTMLElement.cite() : _ = document.createElement('cite');

  /// Creates an [HTMLElement] using the tag 'dfn'.
  HTMLElement.dfn() : _ = document.createElement('dfn');

  /// Creates an [HTMLElement] using the tag 'abbr'.
  HTMLElement.abbr() : _ = document.createElement('abbr');

  /// Creates an [HTMLElement] using the tag 'ruby'.
  HTMLElement.ruby() : _ = document.createElement('ruby');

  /// Creates an [HTMLElement] using the tag 'rt'.
  HTMLElement.rt() : _ = document.createElement('rt');

  /// Creates an [HTMLElement] using the tag 'rp'.
  HTMLElement.rp() : _ = document.createElement('rp');

  /// Creates an [HTMLElement] using the tag 'code'.
  HTMLElement.code() : _ = document.createElement('code');

  /// Creates an [HTMLElement] using the tag 'var'.
  HTMLElement.var_() : _ = document.createElement('var');

  /// Creates an [HTMLElement] using the tag 'samp'.
  HTMLElement.samp() : _ = document.createElement('samp');

  /// Creates an [HTMLElement] using the tag 'kbd'.
  HTMLElement.kbd() : _ = document.createElement('kbd');

  /// Creates an [HTMLElement] using the tag 'sub'.
  HTMLElement.sub() : _ = document.createElement('sub');

  /// Creates an [HTMLElement] using the tag 'sup'.
  HTMLElement.sup() : _ = document.createElement('sup');

  /// Creates an [HTMLElement] using the tag 'i'.
  HTMLElement.i() : _ = document.createElement('i');

  /// Creates an [HTMLElement] using the tag 'b'.
  HTMLElement.b() : _ = document.createElement('b');

  /// Creates an [HTMLElement] using the tag 'u'.
  HTMLElement.u() : _ = document.createElement('u');

  /// Creates an [HTMLElement] using the tag 'mark'.
  HTMLElement.mark() : _ = document.createElement('mark');

  /// Creates an [HTMLElement] using the tag 'bdi'.
  HTMLElement.bdi() : _ = document.createElement('bdi');

  /// Creates an [HTMLElement] using the tag 'bdo'.
  HTMLElement.bdo() : _ = document.createElement('bdo');

  /// Creates an [HTMLElement] using the tag 'wbr'.
  HTMLElement.wbr() : _ = document.createElement('wbr');

  /// Creates an [HTMLElement] using the tag 'summary'.
  HTMLElement.summary() : _ = document.createElement('summary');

  /// Creates an [HTMLElement] using the tag 'noscript'.
  HTMLElement.noscript() : _ = document.createElement('noscript');

  /// Creates an [HTMLElement] using the tag 'acronym'.
  HTMLElement.acronym() : _ = document.createElement('acronym');

  /// Creates an [HTMLElement] using the tag 'noframes'.
  HTMLElement.noframes() : _ = document.createElement('noframes');

  /// Creates an [HTMLElement] using the tag 'menuitem'.
  HTMLElement.menuitem() : _ = document.createElement('menuitem');

  /// Creates an [HTMLElement] using the tag 'noembed'.
  HTMLElement.noembed() : _ = document.createElement('noembed');

  /// Creates an [HTMLElement] using the tag 'plaintext'.
  HTMLElement.plaintext() : _ = document.createElement('plaintext');

  /// Creates an [HTMLElement] using the tag 'rb'.
  HTMLElement.rb() : _ = document.createElement('rb');

  /// Creates an [HTMLElement] using the tag 'rtc'.
  HTMLElement.rtc() : _ = document.createElement('rtc');

  /// Creates an [HTMLElement] using the tag 'strike'.
  HTMLElement.strike() : _ = document.createElement('strike');

  /// Creates an [HTMLElement] using the tag 'basefont'.
  HTMLElement.basefont() : _ = document.createElement('basefont');

  /// Creates an [HTMLElement] using the tag 'big'.
  HTMLElement.big() : _ = document.createElement('big');

  /// Creates an [HTMLElement] using the tag 'center'.
  HTMLElement.center() : _ = document.createElement('center');

  /// Creates an [HTMLElement] using the tag 'nobr'.
  HTMLElement.nobr() : _ = document.createElement('nobr');

  /// Creates an [HTMLElement] using the tag 'tt'.
  HTMLElement.tt() : _ = document.createElement('tt');

  /// The **`HTMLElement.click()`** method simulates a mouse click on
  /// an element.
  ///
  /// When `click()` is used with supported elements (such as an
  /// `input`), it fires the element's click event. This event then bubbles
  /// up to elements higher in the document tree (or event chain) and fires
  /// their click
  /// events.
  external void click();

  /// The **`HTMLElement.attachInternals()`** method returns an
  /// [ElementInternals] object.
  /// This method allows a
  /// [custom element](https://developer.mozilla.org/en-US/docs/Web/API/Web_components/Using_custom_elements)
  /// to participate in HTML forms. The `ElementInternals` interface provides
  /// utilities for working with these elements in the same way you would work
  /// with any standard HTML form element, and also exposes the
  /// [Accessibility Object Model](https://wicg.github.io/aom/explainer.html) to
  /// the element.
  external ElementInternals attachInternals();

  /// The **`showPopover()`** method of the [HTMLElement] interface shows a
  /// [Popover_API] element (i.e. one that has a valid
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// attribute) by adding it to the .
  ///
  /// When `showPopover()` is called on an element with the
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// attribute that is currently hidden, a [HTMLElement/beforetoggle_event]
  /// event will be fired, followed by the popover showing, and then the
  /// [HTMLElement/toggle_event] event firing. If the element is already
  /// showing, an error will be thrown.
  external void showPopover();

  /// The **`hidePopover()`** method of the [HTMLElement] interface hides a
  /// [popover](https://developer.mozilla.org/en-US/docs/Web/API/Popover_API)
  /// element (i.e. one that has a valid
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// attribute) by removing it from the  and styling it with `display: none`.
  ///
  /// When `hidePopover()` is called on a showing element with the
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// attribute, a [HTMLElement/beforetoggle_event] event will be fired,
  /// followed by the popover being hidden, and then the
  /// [HTMLElement/toggle_event] event firing. If the element is already hidden,
  /// an error is thrown.
  external void hidePopover();

  /// The **`togglePopover()`** method of the [HTMLElement] interface toggles a
  /// [Popover_API] element (i.e. one that has a valid
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// attribute) between the hidden and showing states.
  ///
  /// When `togglePopover()` is called on an element with the
  /// [`popover`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/popover)
  /// attribute:
  ///
  /// 1. A [HTMLElement/beforetoggle_event] event is fired.
  /// 2. The popover toggles between hidden and showing:
  /// 1. If it was initially showing, it toggles to hidden.
  /// 2. If it was initially hidden, it toggles to showing.
  /// 3. A [HTMLElement/toggle_event] event is fired.
  external bool togglePopover([bool force]);

  /// The **`HTMLElement.focus()`** method sets focus on the specified element,
  /// if it can be focused.
  /// The focused element is the element that will receive keyboard and similar
  /// events by default.
  ///
  /// By default the browser will scroll the element into view after focusing
  /// it, and it may also provide visible indication of the focused element
  /// (typically by displaying a "focus ring" around the element).
  /// Parameter options are provided to disable the default scrolling and force
  /// visible indication on elements.
  external void focus([FocusOptions options]);

  /// The **`HTMLElement.blur()`** method removes keyboard focus from the
  /// current element.
  external void blur();
  external Element? get offsetParent;
  external int get offsetTop;
  external int get offsetLeft;
  external int get offsetWidth;
  external int get offsetHeight;
  external set title(String value);
  external String get title;
  external set lang(String value);
  external String get lang;
  external set translate(bool value);
  external bool get translate;
  external set dir(String value);
  external String get dir;
  external set hidden(JSAny? value);
  external JSAny? get hidden;
  external set inert(bool value);
  external bool get inert;
  external set accessKey(String value);
  external String get accessKey;
  external String get accessKeyLabel;
  external set draggable(bool value);
  external bool get draggable;
  external set spellcheck(bool value);
  external bool get spellcheck;
  external set autocapitalize(String value);
  external String get autocapitalize;
  external set innerText(String value);
  external String get innerText;
  external set outerText(String value);
  external String get outerText;
  external set popover(String? value);
  external String? get popover;
  external StylePropertyMap get attributeStyleMap;
  external CSSStyleDeclaration get style;
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
  external set contentEditable(String value);
  external String get contentEditable;
  external set enterKeyHint(String value);
  external String get enterKeyHint;
  external bool get isContentEditable;
  external set inputMode(String value);
  external String get inputMode;
  external DOMStringMap get dataset;
  external set nonce(String value);
  external String get nonce;
  external set autofocus(bool value);
  external bool get autofocus;
  external set tabIndex(int value);
  external int get tabIndex;
}

/// The **`HTMLUnknownElement`** interface represents an invalid HTML element
/// and derives from the [HTMLElement] interface, but without implementing any
/// additional properties or methods.
extension type HTMLUnknownElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLUnknownElement] using the tag 'applet'.
  HTMLUnknownElement.applet() : _ = document.createElement('applet');

  /// Creates an [HTMLUnknownElement] using the tag 'bgsound'.
  HTMLUnknownElement.bgsound() : _ = document.createElement('bgsound');

  /// Creates an [HTMLUnknownElement] using the tag 'isindex'.
  HTMLUnknownElement.isindex() : _ = document.createElement('isindex');

  /// Creates an [HTMLUnknownElement] using the tag 'keygen'.
  HTMLUnknownElement.keygen() : _ = document.createElement('keygen');

  /// Creates an [HTMLUnknownElement] using the tag 'nextid'.
  HTMLUnknownElement.nextid() : _ = document.createElement('nextid');

  /// Creates an [HTMLUnknownElement] using the tag 'blink'.
  HTMLUnknownElement.blink() : _ = document.createElement('blink');

  /// Creates an [HTMLUnknownElement] using the tag 'multicol'.
  HTMLUnknownElement.multicol() : _ = document.createElement('multicol');

  /// Creates an [HTMLUnknownElement] using the tag 'spacer'.
  HTMLUnknownElement.spacer() : _ = document.createElement('spacer');
}

/// The **`DOMStringMap`** interface is used for the [HTMLElement.dataset]
/// attribute, to represent data for custom attributes added to elements.
extension type DOMStringMap._(JSObject _) implements JSObject {}

/// The **`HTMLHtmlElement`** interface serves as the root node for a given HTML
/// document. This object inherits the properties and methods described in the
/// [HTMLElement] interface.
///
/// You can retrieve the `HTMLHtmlElement` object for a given document by
/// reading the value of the [document.documentElement] property.
extension type HTMLHtmlElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLHtmlElement] using the tag 'html'.
  HTMLHtmlElement() : _ = document.createElement('html');

  external set version(String value);
  external String get version;
}

/// The **`HTMLHeadElement`** interface contains the descriptive information, or
/// metadata, for a document. This object inherits all of the properties and
/// methods described in the [HTMLElement] interface.
extension type HTMLHeadElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLHeadElement] using the tag 'head'.
  HTMLHeadElement() : _ = document.createElement('head');
}

/// The **`HTMLTitleElement`** interface is implemented by a document's `title`.
/// This element inherits all of the properties and methods of the [HTMLElement]
/// interface.
extension type HTMLTitleElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLTitleElement] using the tag 'title'.
  HTMLTitleElement() : _ = document.createElement('title');

  external set text(String value);
  external String get text;
}

/// The **`HTMLBaseElement`** interface contains the base URI for a document.
/// This object inherits all of the properties and methods as described in the
/// [HTMLElement] interface.
extension type HTMLBaseElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLBaseElement] using the tag 'base'.
  HTMLBaseElement() : _ = document.createElement('base');

  external set href(String value);
  external String get href;
  external set target(String value);
  external String get target;
}

/// The **`HTMLLinkElement`** interface represents reference information for
/// external resources and the relationship of those resources to a document and
/// vice versa (corresponds to [`<link>`](/en-US/docs/Web/HTML/Element/link)
/// element; not to be confused with [`<a>`](/en-US/docs/Web/HTML/Element/a),
/// which is represented by
/// [`HTMLAnchorElement`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement)).
/// This object inherits all of the properties and methods of the [HTMLElement]
/// interface.
extension type HTMLLinkElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLLinkElement] using the tag 'link'.
  HTMLLinkElement() : _ = document.createElement('link');

  external set href(String value);
  external String get href;
  external set crossOrigin(String? value);
  external String? get crossOrigin;
  external set rel(String value);
  external String get rel;
  external set as(String value);
  external String get as;
  external DOMTokenList get relList;
  external set media(String value);
  external String get media;
  external set integrity(String value);
  external String get integrity;
  external set hreflang(String value);
  external String get hreflang;
  external set type(String value);
  external String get type;
  external DOMTokenList get sizes;
  external set imageSrcset(String value);
  external String get imageSrcset;
  external set imageSizes(String value);
  external String get imageSizes;
  external set referrerPolicy(String value);
  external String get referrerPolicy;
  external DOMTokenList get blocking;
  external set disabled(bool value);
  external bool get disabled;
  external set fetchPriority(String value);
  external String get fetchPriority;
  external set charset(String value);
  external String get charset;
  external set rev(String value);
  external String get rev;
  external set target(String value);
  external String get target;
  external CSSStyleSheet? get sheet;
}

/// The **`HTMLMetaElement`** interface contains descriptive metadata about a
/// document provided in HTML as [`<meta>`](/en-US/docs/Web/HTML/Element/meta)
/// elements.
/// This interface inherits all of the properties and methods described in the
/// [HTMLElement] interface.
extension type HTMLMetaElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLMetaElement] using the tag 'meta'.
  HTMLMetaElement() : _ = document.createElement('meta');

  external set name(String value);
  external String get name;
  external set httpEquiv(String value);
  external String get httpEquiv;
  external set content(String value);
  external String get content;
  external set media(String value);
  external String get media;
  external set scheme(String value);
  external String get scheme;
}

/// The **`HTMLStyleElement`** interface represents a `style` element. It
/// inherits properties and methods from its parent, [HTMLElement].
///
/// This interface doesn't allow to manipulate the CSS it contains (in most
/// case). To manipulate CSS, see
/// [Using dynamic styling information](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Object_Model/Using_dynamic_styling_information)
/// for an overview of the objects used to manipulate specified CSS properties
/// using the DOM.
extension type HTMLStyleElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLStyleElement] using the tag 'style'.
  HTMLStyleElement() : _ = document.createElement('style');

  external set disabled(bool value);
  external bool get disabled;
  external set media(String value);
  external String get media;
  external DOMTokenList get blocking;
  external set type(String value);
  external String get type;
  external CSSStyleSheet? get sheet;
}

/// The **`HTMLBodyElement`** interface provides special properties (beyond
/// those inherited from the regular [HTMLElement] interface) for manipulating
/// `body` elements.
extension type HTMLBodyElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLBodyElement] using the tag 'body'.
  HTMLBodyElement() : _ = document.createElement('body');

  external set text(String value);
  external String get text;
  external set link(String value);
  external String get link;
  external set vLink(String value);
  external String get vLink;
  external set aLink(String value);
  external String get aLink;
  external set bgColor(String value);
  external String get bgColor;
  external set background(String value);
  external String get background;
  external set ongamepadconnected(EventHandler value);
  external EventHandler get ongamepadconnected;
  external set ongamepaddisconnected(EventHandler value);
  external EventHandler get ongamepaddisconnected;
  external set onafterprint(EventHandler value);
  external EventHandler get onafterprint;
  external set onbeforeprint(EventHandler value);
  external EventHandler get onbeforeprint;
  external set onbeforeunload(OnBeforeUnloadEventHandler value);
  external OnBeforeUnloadEventHandler get onbeforeunload;
  external set onhashchange(EventHandler value);
  external EventHandler get onhashchange;
  external set onlanguagechange(EventHandler value);
  external EventHandler get onlanguagechange;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
  external set onoffline(EventHandler value);
  external EventHandler get onoffline;
  external set ononline(EventHandler value);
  external EventHandler get ononline;
  external set onpagehide(EventHandler value);
  external EventHandler get onpagehide;
  external set onpagereveal(EventHandler value);
  external EventHandler get onpagereveal;
  external set onpageshow(EventHandler value);
  external EventHandler get onpageshow;
  external set onpopstate(EventHandler value);
  external EventHandler get onpopstate;
  external set onrejectionhandled(EventHandler value);
  external EventHandler get onrejectionhandled;
  external set onstorage(EventHandler value);
  external EventHandler get onstorage;
  external set onunhandledrejection(EventHandler value);
  external EventHandler get onunhandledrejection;
  external set onunload(EventHandler value);
  external EventHandler get onunload;
}

/// The **`HTMLHeadingElement`** interface represents the different heading
/// elements, [`<h1>` through
/// `<h6>`](/en-US/docs/Web/HTML/Element/Heading_Elements). It inherits methods
/// and properties from the [HTMLElement] interface.
extension type HTMLHeadingElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLHeadingElement] using the tag 'h1'.
  HTMLHeadingElement.h1() : _ = document.createElement('h1');

  /// Creates an [HTMLHeadingElement] using the tag 'h2'.
  HTMLHeadingElement.h2() : _ = document.createElement('h2');

  /// Creates an [HTMLHeadingElement] using the tag 'h3'.
  HTMLHeadingElement.h3() : _ = document.createElement('h3');

  /// Creates an [HTMLHeadingElement] using the tag 'h4'.
  HTMLHeadingElement.h4() : _ = document.createElement('h4');

  /// Creates an [HTMLHeadingElement] using the tag 'h5'.
  HTMLHeadingElement.h5() : _ = document.createElement('h5');

  /// Creates an [HTMLHeadingElement] using the tag 'h6'.
  HTMLHeadingElement.h6() : _ = document.createElement('h6');

  external set align(String value);
  external String get align;
}

/// The **`HTMLParagraphElement`** interface provides special properties (beyond
/// those of the regular [HTMLElement] object interface it inherits) for
/// manipulating `p` elements.
extension type HTMLParagraphElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLParagraphElement] using the tag 'p'.
  HTMLParagraphElement() : _ = document.createElement('p');

  external set align(String value);
  external String get align;
}

/// The **`HTMLHRElement`** interface provides special properties (beyond those
/// of the [HTMLElement] interface it also has available to it by inheritance)
/// for manipulating `hr` elements.
extension type HTMLHRElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLHRElement] using the tag 'hr'.
  HTMLHRElement() : _ = document.createElement('hr');

  external set align(String value);
  external String get align;
  external set color(String value);
  external String get color;
  external set noShade(bool value);
  external bool get noShade;
  external set size(String value);
  external String get size;
  external set width(String value);
  external String get width;
}

/// The **`HTMLPreElement`** interface exposes specific properties and methods
/// (beyond those of the [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating a block of preformatted text (`pre`).
extension type HTMLPreElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLPreElement] using the tag 'pre'.
  HTMLPreElement.pre() : _ = document.createElement('pre');

  /// Creates an [HTMLPreElement] using the tag 'listing'.
  HTMLPreElement.listing() : _ = document.createElement('listing');

  /// Creates an [HTMLPreElement] using the tag 'xmp'.
  HTMLPreElement.xmp() : _ = document.createElement('xmp');

  external set width(int value);
  external int get width;
}

/// The **`HTMLQuoteElement`** interface provides special properties and methods
/// (beyond the regular [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating quoting elements, like `blockquote` and `q`,
/// but not the `cite` element.
extension type HTMLQuoteElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLQuoteElement] using the tag 'blockquote'.
  HTMLQuoteElement.blockquote() : _ = document.createElement('blockquote');

  /// Creates an [HTMLQuoteElement] using the tag 'q'.
  HTMLQuoteElement.q() : _ = document.createElement('q');

  external set cite(String value);
  external String get cite;
}

/// The **`HTMLOListElement`** interface provides special properties (beyond
/// those defined on the regular [HTMLElement] interface it also has available
/// to it by inheritance) for manipulating ordered list elements.
extension type HTMLOListElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLOListElement] using the tag 'ol'.
  HTMLOListElement() : _ = document.createElement('ol');

  external set reversed(bool value);
  external bool get reversed;
  external set start(int value);
  external int get start;
  external set type(String value);
  external String get type;
  external set compact(bool value);
  external bool get compact;
}

/// The **`HTMLUListElement`** interface provides special properties (beyond
/// those defined on the regular [HTMLElement] interface it also has available
/// to it by inheritance) for manipulating unordered list (`ul`) elements.
extension type HTMLUListElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLUListElement] using the tag 'ul'.
  HTMLUListElement() : _ = document.createElement('ul');

  external set compact(bool value);
  external bool get compact;
  external set type(String value);
  external String get type;
}

/// The **`HTMLMenuElement`** interface provides additional properties (beyond
/// those inherited from the [HTMLElement] interface) for manipulating a `menu`
/// element.
/// `<menu>` is a semantic alternative to the `ul` element.
extension type HTMLMenuElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLMenuElement] using the tag 'menu'.
  HTMLMenuElement() : _ = document.createElement('menu');

  external set compact(bool value);
  external bool get compact;
}

/// The **`HTMLLIElement`** interface exposes specific properties and methods
/// (beyond those defined by regular [HTMLElement] interface it also has
/// available to it by inheritance) for manipulating list elements.
extension type HTMLLIElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLLIElement] using the tag 'li'.
  HTMLLIElement() : _ = document.createElement('li');

  external set value(int value);
  external int get value;
  external set type(String value);
  external String get type;
}

/// The **`HTMLDListElement`** interface provides special properties (beyond
/// those of the regular [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating definition list (`dl`) elements.
extension type HTMLDListElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLDListElement] using the tag 'dl'.
  HTMLDListElement() : _ = document.createElement('dl');

  external set compact(bool value);
  external bool get compact;
}

/// The **`HTMLDivElement`** interface provides special properties (beyond the
/// regular [HTMLElement] interface it also has available to it by inheritance)
/// for manipulating `div` elements.
extension type HTMLDivElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLDivElement] using the tag 'div'.
  HTMLDivElement() : _ = document.createElement('div');

  external set align(String value);
  external String get align;
}

/// The **`HTMLAnchorElement`** interface represents hyperlink elements and
/// provides special properties and methods (beyond those of the regular
/// [HTMLElement] object interface that they inherit from) for manipulating the
/// layout and presentation of such elements. This interface corresponds to
/// [`<a>`](/en-US/docs/Web/HTML/Element/a) element; not to be confused with
/// [`<link>`](/en-US/docs/Web/HTML/Element/link), which is represented by
/// [`HTMLLinkElement`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement).
extension type HTMLAnchorElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLAnchorElement] using the tag 'a'.
  HTMLAnchorElement() : _ = document.createElement('a');

  external set target(String value);
  external String get target;
  external set download(String value);
  external String get download;
  external set ping(String value);
  external String get ping;
  external set rel(String value);
  external String get rel;
  external DOMTokenList get relList;
  external set hreflang(String value);
  external String get hreflang;
  external set type(String value);
  external String get type;
  external set text(String value);
  external String get text;
  external set referrerPolicy(String value);
  external String get referrerPolicy;
  external set coords(String value);
  external String get coords;
  external set charset(String value);
  external String get charset;
  external set name(String value);
  external String get name;
  external set rev(String value);
  external String get rev;
  external set shape(String value);
  external String get shape;
  external set href(String value);
  external String get href;
  external String get origin;
  external set protocol(String value);
  external String get protocol;
  external set username(String value);
  external String get username;
  external set password(String value);
  external String get password;
  external set host(String value);
  external String get host;
  external set hostname(String value);
  external String get hostname;
  external set port(String value);
  external String get port;
  external set pathname(String value);
  external String get pathname;
  external set search(String value);
  external String get search;
  external set hash(String value);
  external String get hash;
}

/// The **`HTMLDataElement`** interface provides special properties (beyond the
/// regular [HTMLElement] interface it also has available to it by inheritance)
/// for manipulating `data` elements.
extension type HTMLDataElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLDataElement] using the tag 'data'.
  HTMLDataElement() : _ = document.createElement('data');

  external set value(String value);
  external String get value;
}

/// The **`HTMLTimeElement`** interface provides special properties (beyond the
/// regular [HTMLElement] interface it also has available to it by inheritance)
/// for manipulating `time` elements.
extension type HTMLTimeElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLTimeElement] using the tag 'time'.
  HTMLTimeElement() : _ = document.createElement('time');

  external set dateTime(String value);
  external String get dateTime;
}

/// The **`HTMLSpanElement`** interface represents a `span` element and derives
/// from the [HTMLElement] interface, but without implementing any additional
/// properties or methods.
extension type HTMLSpanElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLSpanElement] using the tag 'span'.
  HTMLSpanElement() : _ = document.createElement('span');
}

/// The **`HTMLBRElement`** interface represents an HTML line break element
/// (`br`). It inherits from [HTMLElement].
extension type HTMLBRElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLBRElement] using the tag 'br'.
  HTMLBRElement() : _ = document.createElement('br');

  external set clear(String value);
  external String get clear;
}

/// The **`HTMLModElement`** interface provides special properties (beyond the
/// regular methods and properties available through the [HTMLElement] interface
/// they also have available to them by inheritance) for manipulating
/// modification elements, that is `del` and `ins`.
extension type HTMLModElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLModElement] using the tag 'ins'.
  HTMLModElement.ins() : _ = document.createElement('ins');

  /// Creates an [HTMLModElement] using the tag 'del'.
  HTMLModElement.del() : _ = document.createElement('del');

  external set cite(String value);
  external String get cite;
  external set dateTime(String value);
  external String get dateTime;
}

/// The **`HTMLPictureElement`** interface represents a `picture` HTML element.
/// It doesn't implement specific properties or methods.
extension type HTMLPictureElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLPictureElement] using the tag 'picture'.
  HTMLPictureElement() : _ = document.createElement('picture');
}

/// The **`HTMLSourceElement`** interface provides special properties (beyond
/// the regular [HTMLElement] object interface it also has available to it by
/// inheritance) for manipulating `source` elements.
extension type HTMLSourceElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLSourceElement] using the tag 'source'.
  HTMLSourceElement() : _ = document.createElement('source');

  external set src(String value);
  external String get src;
  external set type(String value);
  external String get type;
  external set srcset(String value);
  external String get srcset;
  external set sizes(String value);
  external String get sizes;
  external set media(String value);
  external String get media;
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
}

/// The **`HTMLImageElement`** interface represents an HTML `img` element,
/// providing the properties and methods used to manipulate image elements.
extension type HTMLImageElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLImageElement] using the tag 'img'.
  HTMLImageElement() : _ = document.createElement('img');

  /// The **`decode()`**
  /// method of the [HTMLImageElement] interface returns a
  /// `Promise` that resolves once the image is decoded and it is safe to append
  /// it to the DOM.
  ///
  /// This can be used to initiate loading of the image prior
  /// to attaching it to an element in the DOM (or adding it to the DOM as a new
  /// element), so
  /// that the image can be rendered immediately upon being added to the DOM.
  /// This, in turn,
  /// prevents the rendering of the next frame after adding the image to the DOM
  /// from causing
  /// a delay while the image loads.
  external JSPromise<JSAny?> decode();
  external int get x;
  external int get y;
  external set alt(String value);
  external String get alt;
  external set src(String value);
  external String get src;
  external set srcset(String value);
  external String get srcset;
  external set sizes(String value);
  external String get sizes;
  external set crossOrigin(String? value);
  external String? get crossOrigin;
  external set useMap(String value);
  external String get useMap;
  external set isMap(bool value);
  external bool get isMap;
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
  external int get naturalWidth;
  external int get naturalHeight;
  external bool get complete;
  external String get currentSrc;
  external set referrerPolicy(String value);
  external String get referrerPolicy;
  external set decoding(String value);
  external String get decoding;
  external set loading(String value);
  external String get loading;
  external set fetchPriority(String value);
  external String get fetchPriority;
  external set name(String value);
  external String get name;
  external set lowsrc(String value);
  external String get lowsrc;
  external set align(String value);
  external String get align;
  external set hspace(int value);
  external int get hspace;
  external set vspace(int value);
  external int get vspace;
  external set longDesc(String value);
  external String get longDesc;
  external set border(String value);
  external String get border;
}

/// The **`HTMLIFrameElement`** interface provides special properties and
/// methods (beyond those of the [HTMLElement] interface it also has available
/// to it by inheritance) for manipulating the layout and presentation of inline
/// frame elements.
extension type HTMLIFrameElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLIFrameElement] using the tag 'iframe'.
  HTMLIFrameElement() : _ = document.createElement('iframe');

  external Document? getSVGDocument();
  external set src(String value);
  external String get src;
  external set srcdoc(String value);
  external String get srcdoc;
  external set name(String value);
  external String get name;
  external DOMTokenList get sandbox;
  external set allow(String value);
  external String get allow;
  external set allowFullscreen(bool value);
  external bool get allowFullscreen;
  external set width(String value);
  external String get width;
  external set height(String value);
  external String get height;
  external set referrerPolicy(String value);
  external String get referrerPolicy;
  external set loading(String value);
  external String get loading;
  external Document? get contentDocument;
  external Window? get contentWindow;
  external set align(String value);
  external String get align;
  external set scrolling(String value);
  external String get scrolling;
  external set frameBorder(String value);
  external String get frameBorder;
  external set longDesc(String value);
  external String get longDesc;
  external set marginHeight(String value);
  external String get marginHeight;
  external set marginWidth(String value);
  external String get marginWidth;
}

/// The **`HTMLEmbedElement`** interface provides special properties (beyond the
/// regular [HTMLElement] interface it also has available to it by inheritance)
/// for manipulating `embed` elements.
///
/// > **Note:** This topic describes the `HTMLEmbedElement` interface as defined
/// > in the standard. It does not address earlier, non-standardized version of
/// > the interface.
extension type HTMLEmbedElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLEmbedElement] using the tag 'embed'.
  HTMLEmbedElement() : _ = document.createElement('embed');

  external Document? getSVGDocument();
  external set src(String value);
  external String get src;
  external set type(String value);
  external String get type;
  external set width(String value);
  external String get width;
  external set height(String value);
  external String get height;
  external set align(String value);
  external String get align;
  external set name(String value);
  external String get name;
}

/// The **`HTMLObjectElement`** interface provides special properties and
/// methods (beyond those on the [HTMLElement] interface it also has available
/// to it by inheritance) for manipulating the layout and presentation of
/// `object` element, representing external resources.
extension type HTMLObjectElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLObjectElement] using the tag 'object'.
  HTMLObjectElement() : _ = document.createElement('object');

  external Document? getSVGDocument();

  /// The **`checkValidity()`** method of the
  /// [HTMLObjectElement] interface returns a boolean value that always
  /// is true, because object objects are never candidates for constraint
  /// validation.
  external bool checkValidity();
  external bool reportValidity();

  /// The **`setCustomValidity()`** method of the
  /// [HTMLObjectElement] interface sets a custom validity message for the
  /// element.
  external void setCustomValidity(String error);
  external set data(String value);
  external String get data;
  external set type(String value);
  external String get type;
  external set name(String value);
  external String get name;
  external HTMLFormElement? get form;
  external set width(String value);
  external String get width;
  external set height(String value);
  external String get height;
  external Document? get contentDocument;
  external Window? get contentWindow;
  external bool get willValidate;
  external ValidityState get validity;
  external String get validationMessage;
  external set align(String value);
  external String get align;
  external set archive(String value);
  external String get archive;
  external set code(String value);
  external String get code;
  external set declare(bool value);
  external bool get declare;
  external set hspace(int value);
  external int get hspace;
  external set standby(String value);
  external String get standby;
  external set vspace(int value);
  external int get vspace;
  external set codeBase(String value);
  external String get codeBase;
  external set codeType(String value);
  external String get codeType;
  external set useMap(String value);
  external String get useMap;
  external set border(String value);
  external String get border;
}

/// Implemented by the `video` element, the **`HTMLVideoElement`** interface
/// provides special properties and methods for manipulating video objects. It
/// also inherits properties and methods of [HTMLMediaElement] and
/// [HTMLElement].
///
/// The list of
/// [supported media formats](https://developer.mozilla.org/en-US/docs/Web/Media/Formats)
/// varies from one browser to the other. You should either provide your video
/// in a single format that all the relevant browsers supports, or provide
/// multiple video sources in enough different formats that all the browsers you
/// need to support are covered.
extension type HTMLVideoElement._(JSObject _)
    implements HTMLMediaElement, JSObject {
  /// Creates an [HTMLVideoElement] using the tag 'video'.
  HTMLVideoElement() : _ = document.createElement('video');

  /// The **[HTMLVideoElement]** method
  /// **`getVideoPlaybackQuality()`** creates and returns a
  /// [VideoPlaybackQuality] object containing metrics including how many
  /// frames have been lost.
  ///
  /// The data returned can be used to evaluate the quality of the video stream.
  external VideoPlaybackQuality getVideoPlaybackQuality();
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
  external int get videoWidth;
  external int get videoHeight;
  external set poster(String value);
  external String get poster;
  external set playsInline(bool value);
  external bool get playsInline;
}

/// The **`HTMLAudioElement`** interface provides access to the properties of
/// `audio` elements, as well as methods to manipulate them.
///
/// This element is based on, and inherits properties and methods from, the
/// [HTMLMediaElement] interface.
extension type HTMLAudioElement._(JSObject _)
    implements HTMLMediaElement, JSObject {
  /// Creates an [HTMLAudioElement] using the tag 'audio'.
  HTMLAudioElement() : _ = document.createElement('audio');
}

/// The **`HTMLTrackElement`** interface represents an  `track` element within
/// the . This element can be used as a child of either `audio` or `video` to
/// specify a text track containing information such as closed captions or
/// subtitles.
extension type HTMLTrackElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLTrackElement] using the tag 'track'.
  HTMLTrackElement() : _ = document.createElement('track');

  external static int get NONE;
  external static int get LOADING;
  external static int get LOADED;
  external static int get ERROR;
  external set kind(String value);
  external String get kind;
  external set src(String value);
  external String get src;
  external set srclang(String value);
  external String get srclang;
  external set label(String value);
  external String get label;
  @JS('default')
  external set default_(bool value);
  @JS('default')
  external bool get default_;
  external int get readyState;
  external TextTrack get track;
}

/// The **`HTMLMediaElement`** interface adds to [HTMLElement] the properties
/// and methods needed to support basic media-related capabilities that are
/// common to audio and video.
///
/// The [HTMLVideoElement] and [HTMLAudioElement] elements both inherit this
/// interface.
extension type HTMLMediaElement._(JSObject _) implements HTMLElement, JSObject {
  external static int get NETWORK_EMPTY;
  external static int get NETWORK_IDLE;
  external static int get NETWORK_LOADING;
  external static int get NETWORK_NO_SOURCE;
  external static int get HAVE_NOTHING;
  external static int get HAVE_METADATA;
  external static int get HAVE_CURRENT_DATA;
  external static int get HAVE_FUTURE_DATA;
  external static int get HAVE_ENOUGH_DATA;

  /// The **`setMediaKeys()`** method of the
  /// [HTMLMediaElement] interface returns a `Promise` that resolves
  /// to the passed [MediaKeys], which are those used to decrypt media during
  /// playback.
  external JSPromise<JSAny?> setMediaKeys(MediaKeys? mediaKeys);

  /// The [HTMLMediaElement] method
  /// **`load()`** resets the media element to its initial state and
  /// begins the process of selecting a media source and loading the media in
  /// preparation
  /// for playback to begin at the beginning.
  ///
  /// The amount of media data that is
  /// prefetched is determined by the value of the element's
  /// [`preload`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#preload)
  /// attribute.
  ///
  /// This method is generally only useful when you've made dynamic changes to
  /// the set of
  /// sources available for the media element, either by changing the element's
  /// [`src`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#src)
  /// attribute or by adding or removing
  /// `source` elements nested within the media element itself.
  /// `load()` will reset the element and rescan the available sources, thereby
  /// causing the changes to take effect.
  external void load();

  /// The [HTMLMediaElement] method **`canPlayType()`** reports how likely it is
  /// that the current browser will be able to play media of a given MIME type.
  external CanPlayTypeResult canPlayType(String type);

  /// The **`HTMLMediaElement.fastSeek()`** method quickly seeks the
  /// media to the new time with precision tradeoff.
  ///
  /// > **Note:** If you need to seek with precision, you should set
  /// > [`HTMLMediaElement.currentTime`](/en-US/docs/Web/API/HTMLMediaElement/currentTime)
  /// > instead.
  external void fastSeek(num time);
  external JSObject getStartDate();

  /// The [HTMLMediaElement]
  /// **`play()`** method attempts to begin playback of the media.
  /// It returns a `Promise` which is resolved when playback has been
  /// successfully started.
  ///
  /// Failure to begin playback for any reason, such as
  /// permission issues, result in the promise being rejected.
  external JSPromise<JSAny?> play();

  /// The **`HTMLMediaElement.pause()`** method will pause playback
  /// of the media, if the media is already in a paused state this method will
  /// have no effect.
  external void pause();
  external TextTrack addTextTrack(
    TextTrackKind kind, [
    String label,
    String language,
  ]);
  external MediaKeys? get mediaKeys;
  external set onencrypted(EventHandler value);
  external EventHandler get onencrypted;
  external set onwaitingforkey(EventHandler value);
  external EventHandler get onwaitingforkey;
  external MediaError? get error;
  external set src(String value);
  external String get src;
  external set srcObject(MediaProvider? value);
  external MediaProvider? get srcObject;
  external String get currentSrc;
  external set crossOrigin(String? value);
  external String? get crossOrigin;
  external int get networkState;
  external set preload(String value);
  external String get preload;
  external TimeRanges get buffered;
  external int get readyState;
  external bool get seeking;
  external set currentTime(num value);
  external num get currentTime;
  external num get duration;
  external bool get paused;
  external set defaultPlaybackRate(num value);
  external num get defaultPlaybackRate;
  external set playbackRate(num value);
  external num get playbackRate;
  external set preservesPitch(bool value);
  external bool get preservesPitch;
  external TimeRanges get played;
  external TimeRanges get seekable;
  external bool get ended;
  external set autoplay(bool value);
  external bool get autoplay;
  external set loop(bool value);
  external bool get loop;
  external set controls(bool value);
  external bool get controls;
  external set volume(num value);
  external num get volume;
  external set muted(bool value);
  external bool get muted;
  external set defaultMuted(bool value);
  external bool get defaultMuted;
  external AudioTrackList get audioTracks;
  external VideoTrackList get videoTracks;
  external TextTrackList get textTracks;
}

/// The **`MediaError`** interface represents an error which occurred while
/// handling media in an HTML media element based on [HTMLMediaElement], such as
/// `audio` or `video`.
///
/// A `MediaError` object describes the error in general terms using a numeric
/// `code` categorizing the kind of error, and a `message`, which provides
/// specific diagnostics about what went wrong.
extension type MediaError._(JSObject _) implements JSObject {
  external static int get MEDIA_ERR_ABORTED;
  external static int get MEDIA_ERR_NETWORK;
  external static int get MEDIA_ERR_DECODE;
  external static int get MEDIA_ERR_SRC_NOT_SUPPORTED;
  external int get code;
  external String get message;
}

/// The **`AudioTrackList`** interface is used to represent a list of the audio
/// tracks contained within a given HTML media element, with each track
/// represented by a separate [AudioTrack] object in the list.
///
/// Retrieve an instance of this object with [HTMLMediaElement.audioTracks]. The
/// individual tracks can be accessed using array syntax.
extension type AudioTrackList._(JSObject _) implements EventTarget, JSObject {
  /// The **[AudioTrackList]** method
  /// **`getTrackById()`** returns the first
  /// [AudioTrack] object from the track list whose [AudioTrack.id] matches the
  /// specified string. This lets you find a specified track if
  /// you know its ID string.
  external AudioTrack? getTrackById(String id);
  external int get length;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
}

/// The **`AudioTrack`** interface represents a single audio track from one of
/// the HTML media elements, `audio` or `video`.
///
/// The most common use for accessing an `AudioTrack` object is to toggle its
/// [AudioTrack.enabled] property in order to mute and unmute the track.
extension type AudioTrack._(JSObject _) implements JSObject {
  external String get id;
  external String get kind;
  external String get label;
  external String get language;
  external set enabled(bool value);
  external bool get enabled;
  external SourceBuffer? get sourceBuffer;
}

/// The **`VideoTrackList`** interface is used to represent a list of the video
/// tracks contained within a `video` element, with each track represented by a
/// separate [VideoTrack] object in the list.
///
/// Retrieve an instance of this object with [HTMLMediaElement.videoTracks]. The
/// individual tracks can be accessed using array syntax or functions such as
/// `forEach()` for example.
extension type VideoTrackList._(JSObject _) implements EventTarget, JSObject {
  /// The **[VideoTrackList]** method
  /// **`getTrackById()`** returns the first
  /// [VideoTrack] object from the track list whose [VideoTrack.id] matches the
  /// specified string.
  ///
  /// This lets you find a specified track if
  /// you know its ID string.
  external VideoTrack? getTrackById(String id);
  external int get length;
  external int get selectedIndex;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
}

/// The [VideoTrack] interface represents a single video track from a `video`
/// element.
///
/// The most common use for accessing a `VideoTrack` object is to toggle its
/// [VideoTrack.selected] property in order to make it the active video track
/// for its `video` element.
extension type VideoTrack._(JSObject _) implements JSObject {
  external String get id;
  external String get kind;
  external String get label;
  external String get language;
  external set selected(bool value);
  external bool get selected;
  external SourceBuffer? get sourceBuffer;
}

/// The **`TextTrackList`** interface is used to represent a list of the text
/// tracks defined by the `track` element, with each track represented by a
/// separate [textTrack] object in the list.
///
/// Retrieve an instance of this object with the [HTMLMediaElement.textTracks]
/// property of an [HTMLMediaElement] object.
///
/// For a given [HTMLMediaElement] object _media_, the individual tracks can be
/// accessed using:
///
/// - `media.TextTracks[n]`, to get the n-th text track from the object's list
///   of text tracks
///
/// - the
///   `media.textTracks`.[`getTrackById()`](/en-US/docs/Web/API/TextTrackList/getTrackById)
///   method
extension type TextTrackList._(JSObject _) implements EventTarget, JSObject {
  /// The **[TextTrackList]** method
  /// **`getTrackById()`** returns the first
  /// [TextTrack] object from the track list whose
  /// [`id`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id)
  /// matches the
  /// specified string. This lets you find a specified track if you know its ID
  /// string.
  external TextTrack? getTrackById(String id);
  external int get length;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
}

/// The `TextTrack` interface—part of the API for handling WebVTT (text tracks
/// on media presentations)—describes and controls the text track associated
/// with a particular `track` element.
extension type TextTrack._(JSObject _) implements EventTarget, JSObject {
  /// The **`addCue()`** method of the [TextTrack] interface adds a new cue to
  /// the list of cues.
  external void addCue(TextTrackCue cue);

  /// The **`removeCue()`** method of the [TextTrack] interface removes a cue
  /// from the list of cues.
  external void removeCue(TextTrackCue cue);
  external TextTrackKind get kind;
  external String get label;
  external String get language;
  external String get id;
  external String get inBandMetadataTrackDispatchType;
  external set mode(TextTrackMode value);
  external TextTrackMode get mode;
  external TextTrackCueList? get cues;
  external TextTrackCueList? get activeCues;
  external set oncuechange(EventHandler value);
  external EventHandler get oncuechange;
  external SourceBuffer? get sourceBuffer;
}

/// The **`TextTrackCueList`** array-like object represents a dynamically
/// updating list of [TextTrackCue] objects.
///
/// This interface has no constructor. Retrieve an instance of this object with
/// [TextTrack.cues] which returns all of the cues in a [TextTrack] object.
extension type TextTrackCueList._(JSObject _) implements JSObject {
  /// The **`getCueById()`** method of the [TextTrackCueList] interface returns
  /// the first [VTTCue] in the list represented by the `TextTrackCueList`
  /// object whose identifier matches the value of `id`.
  external TextTrackCue? getCueById(String id);
  external int get length;
}

/// **`TextTrackCue`** is an abstract class which is used as the basis for the
/// various derived cue types, such as [VTTCue]; you will instead work with
/// those derived types. These cues represent strings of text presented for some
/// duration of time during the performance of a [TextTrack]. The cue includes
/// the start time (the time at which the text will be displayed) and the end
/// time (the time at which it will be removed from the display), as well as
/// other information.
extension type TextTrackCue._(JSObject _) implements EventTarget, JSObject {
  external TextTrack? get track;
  external set id(String value);
  external String get id;
  external set startTime(num value);
  external num get startTime;
  external set endTime(num value);
  external num get endTime;
  external set pauseOnExit(bool value);
  external bool get pauseOnExit;
  external set onenter(EventHandler value);
  external EventHandler get onenter;
  external set onexit(EventHandler value);
  external EventHandler get onexit;
}

/// When loading a media resource for use by an `audio` or `video` element, the
/// **`TimeRanges`** interface is used for representing the time ranges of the
/// media resource that have been buffered, the time ranges that have been
/// played, and the time ranges that are seekable.
///
/// A `TimeRanges` object includes one or more ranges of time, each specified by
/// a starting time offset and an ending time offset. You reference each time
/// range by using the `start()` and `end()` methods, passing the index number
/// of the time range you want to retrieve.
extension type TimeRanges._(JSObject _) implements JSObject {
  /// The **`start()`** method of the [TimeRanges] interface returns the time
  /// offset at which a specified time range begins.
  external num start(int index);

  /// The **`end()`** method of the [TimeRanges] interface returns the time
  /// offset at which a specified time range ends.
  external num end(int index);
  external int get length;
}

/// The **`TrackEvent`** interface, which is part of the HTML DOM specification,
/// is used for events which represent changes to a set of available tracks on
/// an HTML media element; these events are `addtrack` and `removetrack`.
///
/// It's important not to confuse `TrackEvent` with the [RTCTrackEvent]
/// interface, which is used for tracks which are part of an
/// [RTCPeerConnection].
///
/// Events based on `TrackEvent` are always sent to one of the media track list
/// types:
///
/// - Events involving video tracks are always sent to the [VideoTrackList]
///   found in [HTMLMediaElement.videoTracks]
/// - Events involving audio tracks are always sent to the [AudioTrackList]
///   specified in [HTMLMediaElement.audioTracks]
/// - Events affecting text tracks are sent to the [TextTrackList] object
///   indicated by [HTMLMediaElement.textTracks].
extension type TrackEvent._(JSObject _) implements Event, JSObject {
  external factory TrackEvent(
    String type, [
    TrackEventInit eventInitDict,
  ]);

  external JSObject? get track;
}
extension type TrackEventInit._(JSObject _) implements EventInit, JSObject {
  external factory TrackEventInit({JSObject? track});

  external set track(JSObject? value);
  external JSObject? get track;
}

/// The **`HTMLMapElement`** interface provides special properties and methods
/// (beyond those of the regular object [HTMLElement] interface it also has
/// available to it by inheritance) for manipulating the layout and presentation
/// of map elements.
extension type HTMLMapElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLMapElement] using the tag 'map'.
  HTMLMapElement() : _ = document.createElement('map');

  external set name(String value);
  external String get name;
  external HTMLCollection get areas;
}

/// The **`HTMLAreaElement`** interface provides special properties and methods
/// (beyond those of the regular object [HTMLElement] interface it also has
/// available to it by inheritance) for manipulating the layout and presentation
/// of `area` elements.
extension type HTMLAreaElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLAreaElement] using the tag 'area'.
  HTMLAreaElement() : _ = document.createElement('area');

  external set alt(String value);
  external String get alt;
  external set coords(String value);
  external String get coords;
  external set shape(String value);
  external String get shape;
  external set target(String value);
  external String get target;
  external set download(String value);
  external String get download;
  external set ping(String value);
  external String get ping;
  external set rel(String value);
  external String get rel;
  external DOMTokenList get relList;
  external set referrerPolicy(String value);
  external String get referrerPolicy;
  external set noHref(bool value);
  external bool get noHref;
  external set href(String value);
  external String get href;
  external String get origin;
  external set protocol(String value);
  external String get protocol;
  external set username(String value);
  external String get username;
  external set password(String value);
  external String get password;
  external set host(String value);
  external String get host;
  external set hostname(String value);
  external String get hostname;
  external set port(String value);
  external String get port;
  external set pathname(String value);
  external String get pathname;
  external set search(String value);
  external String get search;
  external set hash(String value);
  external String get hash;
}

/// The **`HTMLTableElement`** interface provides special properties and methods
/// (beyond the regular [HTMLElement] object interface it also has available to
/// it by inheritance) for manipulating the layout and presentation of tables in
/// an HTML document.
extension type HTMLTableElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLTableElement] using the tag 'table'.
  HTMLTableElement() : _ = document.createElement('table');

  /// The **`HTMLTableElement.createCaption()`** method returns the
  /// `caption` element associated with a given `table`.
  /// If no `<caption>` element exists on the table, this method creates
  /// it, and then returns it.
  ///
  /// > **Note:** If no caption exists, `createCaption()` inserts a
  /// > new caption directly into the table. The caption does not need to be
  /// > added
  /// > separately as would be the case if [Document.createElement] had
  /// > been used to create the new `<caption>` element.
  external HTMLTableCaptionElement createCaption();

  /// The **`HTMLTableElement.deleteCaption()`** method removes the
  /// `caption` element from a given `table`. If there is no
  /// `<caption>` element associated with the table, this method does
  /// nothing.
  external void deleteCaption();

  /// The **`createTHead()`** method of
  /// [HTMLTableElement] objects returns the `thead` element
  /// associated with a given `table`. If no header exists in the table, this
  /// method creates it, and then returns it.
  ///
  /// > **Note:** If no header exists, `createTHead()` inserts a new
  /// > header directly into the table. The header does not need to be added
  /// > separately as
  /// > would be the case if [Document.createElement] had been used to create
  /// > the new `<thead>` element.
  external HTMLTableSectionElement createTHead();

  /// The **`HTMLTableElement.deleteTHead()`** removes the
  /// `thead` element from a given `table`.
  external void deleteTHead();

  /// The **`createTFoot()`** method of
  /// [HTMLTableElement] objects returns the `tfoot` element
  /// associated with a given `table`. If no footer exists in the table, this
  /// method creates it, and then returns it.
  ///
  /// > **Note:** If no footer exists, `createTFoot()` inserts a new
  /// > footer directly into the table. The footer does not need to be added
  /// > separately as
  /// > would be the case if [Document.createElement] had been used to create
  /// > the new `<tfoot>` element.
  external HTMLTableSectionElement createTFoot();

  /// The **`HTMLTableElement.deleteTFoot()`** method removes the
  /// `tfoot` element from a given `table`.
  external void deleteTFoot();

  /// The **`createTBody()`** method of
  /// [HTMLTableElement] objects creates and returns a new
  /// `tbody` element associated with a given `table`.
  ///
  /// > **Note:** Unlike [HTMLTableElement.createTHead] and
  /// > [HTMLTableElement.createTFoot], `createTBody()`
  /// > systematically creates a new `<tbody>` element, even if the table
  /// > already contains one or more bodies. If so, the new one is inserted
  /// > after the existing
  /// > ones.
  external HTMLTableSectionElement createTBody();

  /// The **`HTMLTableElement.insertRow()`** method inserts a new row
  /// (`tr`) in a given `table`, and returns a reference to
  /// the new row.
  ///
  /// If a table has multiple `tbody` elements, by default, the new row is
  /// inserted into the last `<tbody>`. To insert the row into a specific
  /// `<tbody>`:
  ///
  /// ```js
  /// let specific_tbody = document.getElementById(tbody_id);
  /// let row = specific_tbody.insertRow(index);
  /// ```
  ///
  /// > **Note:** `insertRow()` inserts the row directly into the
  /// > table. The row does not need to be appended separately as would be the
  /// > case if
  /// > [Document.createElement] had been used to create the new
  /// > `<tr>` element.
  external HTMLTableRowElement insertRow([int index]);

  /// The **`HTMLTableElement.deleteRow()`** method removes a
  /// specific row (`tr`) from a given `table`.
  external void deleteRow(int index);
  external set caption(HTMLTableCaptionElement? value);
  external HTMLTableCaptionElement? get caption;
  external set tHead(HTMLTableSectionElement? value);
  external HTMLTableSectionElement? get tHead;
  external set tFoot(HTMLTableSectionElement? value);
  external HTMLTableSectionElement? get tFoot;
  external HTMLCollection get tBodies;
  external HTMLCollection get rows;
  external set align(String value);
  external String get align;
  external set border(String value);
  external String get border;
  external set frame(String value);
  external String get frame;
  external set rules(String value);
  external String get rules;
  external set summary(String value);
  external String get summary;
  external set width(String value);
  external String get width;
  external set bgColor(String value);
  external String get bgColor;
  external set cellPadding(String value);
  external String get cellPadding;
  external set cellSpacing(String value);
  external String get cellSpacing;
}

/// The **`HTMLTableCaptionElement`** interface provides special properties
/// (beyond the regular [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating table `caption` elements.
extension type HTMLTableCaptionElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLTableCaptionElement] using the tag 'caption'.
  HTMLTableCaptionElement() : _ = document.createElement('caption');

  external set align(String value);
  external String get align;
}

/// The **`HTMLTableColElement`** interface provides properties for manipulating
/// single or grouped table column elements.
extension type HTMLTableColElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLTableColElement] using the tag 'colgroup'.
  HTMLTableColElement.colgroup() : _ = document.createElement('colgroup');

  /// Creates an [HTMLTableColElement] using the tag 'col'.
  HTMLTableColElement.col() : _ = document.createElement('col');

  external set span(int value);
  external int get span;
  external set align(String value);
  external String get align;
  external set ch(String value);
  external String get ch;
  external set chOff(String value);
  external String get chOff;
  external set vAlign(String value);
  external String get vAlign;
  external set width(String value);
  external String get width;
}

/// The **`HTMLTableSectionElement`** interface provides special properties and
/// methods (beyond the [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating the layout and presentation of sections, that
/// is headers, footers and bodies (`thead`, `tfoot`, and `tbody`, respectively)
/// in an HTML table.
extension type HTMLTableSectionElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLTableSectionElement] using the tag 'tbody'.
  HTMLTableSectionElement.tbody() : _ = document.createElement('tbody');

  /// Creates an [HTMLTableSectionElement] using the tag 'thead'.
  HTMLTableSectionElement.thead() : _ = document.createElement('thead');

  /// Creates an [HTMLTableSectionElement] using the tag 'tfoot'.
  HTMLTableSectionElement.tfoot() : _ = document.createElement('tfoot');

  external HTMLTableRowElement insertRow([int index]);
  external void deleteRow(int index);
  external HTMLCollection get rows;
  external set align(String value);
  external String get align;
  external set ch(String value);
  external String get ch;
  external set chOff(String value);
  external String get chOff;
  external set vAlign(String value);
  external String get vAlign;
}

/// The **`HTMLTableRowElement`** interface provides special properties and
/// methods (beyond the [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating the layout and presentation of rows in an HTML
/// table.
extension type HTMLTableRowElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLTableRowElement] using the tag 'tr'.
  HTMLTableRowElement() : _ = document.createElement('tr');

  /// The **`HTMLTableRowElement.insertCell()`** method inserts a new
  /// cell (`td`) into a table row (`tr`) and returns a
  /// reference to the cell.
  ///
  /// > **Note:** `insertCell()` inserts the cell directly into the
  /// > row. The cell does not need to be appended separately
  /// > with [Node.appendChild] as would be the case if
  /// > [Document.createElement] had been used to create the new
  /// > `<td>` element.
  /// >
  /// > You can not use `insertCell()` to create a new `<th>`
  /// > element though.
  external HTMLTableCellElement insertCell([int index]);
  external void deleteCell(int index);
  external int get rowIndex;
  external int get sectionRowIndex;
  external HTMLCollection get cells;
  external set align(String value);
  external String get align;
  external set ch(String value);
  external String get ch;
  external set chOff(String value);
  external String get chOff;
  external set vAlign(String value);
  external String get vAlign;
  external set bgColor(String value);
  external String get bgColor;
}

/// The **`HTMLTableCellElement`** interface provides special properties and
/// methods (beyond the regular [HTMLElement] interface it also has available to
/// it by inheritance) for manipulating the layout and presentation of table
/// cells, either header cells (`th`)) or data cells (`td`), in an HTML
/// document.
extension type HTMLTableCellElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLTableCellElement] using the tag 'td'.
  HTMLTableCellElement.td() : _ = document.createElement('td');

  /// Creates an [HTMLTableCellElement] using the tag 'th'.
  HTMLTableCellElement.th() : _ = document.createElement('th');

  external set colSpan(int value);
  external int get colSpan;
  external set rowSpan(int value);
  external int get rowSpan;
  external set headers(String value);
  external String get headers;
  external int get cellIndex;
  external set scope(String value);
  external String get scope;
  external set abbr(String value);
  external String get abbr;
  external set align(String value);
  external String get align;
  external set axis(String value);
  external String get axis;
  external set height(String value);
  external String get height;
  external set width(String value);
  external String get width;
  external set ch(String value);
  external String get ch;
  external set chOff(String value);
  external String get chOff;
  external set noWrap(bool value);
  external bool get noWrap;
  external set vAlign(String value);
  external String get vAlign;
  external set bgColor(String value);
  external String get bgColor;
}

/// The **`HTMLFormElement`** interface represents a `form` element in the DOM.
/// It allows access to—and, in some cases, modification of—aspects of the form,
/// as well as access to its component elements.
extension type HTMLFormElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLFormElement] using the tag 'form'.
  HTMLFormElement() : _ = document.createElement('form');

  /// The **`HTMLFormElement.submit()`** method submits a given
  /// `form`.
  ///
  /// This method is similar, but not identical to, activating a form's submit
  /// `button`. When invoking this method directly, however:
  ///
  /// - No [HTMLFormElement/submit_event] event is raised. In particular, the
  ///   form's `onsubmit` event handler is not run.
  /// - [Constraint validation](https://developer.mozilla.org/en-US/docs/Web/HTML/Constraint_validation)
  ///   is not triggered.
  ///
  /// The [HTMLFormElement.requestSubmit] method is identical to activating a
  /// form's submit `button` and does not have these differences.
  ///
  /// A form control (such as a submit button) with a `name` or `id` of `submit`
  /// will mask the form's `submit` method. Trying to call `myForm.submit();`
  /// throws an error "submit is not a function" because in this case `submit`
  /// refers to the form control which has a `name` or `id` of `submit`.
  ///
  /// `input` with attribute type="submit" will not be submitted with the
  /// form when using **`HTMLFormElement.submit()`**, but it would be
  /// submitted when you do it with original HTML form submit.
  external void submit();

  /// The [HTMLFormElement] method **`requestSubmit()`** requests
  /// that the form be submitted using a specific submit button.
  external void requestSubmit([HTMLElement? submitter]);

  /// The **`HTMLFormElement.reset()`** method restores a form
  /// element's default values. This method does the same thing as clicking the
  /// form's
  /// [`<input type="reset">`](/en-US/docs/Web/HTML/Element/input/reset)
  /// control.
  ///
  /// If a form control (such as a reset button) has a name or id of _reset_ it
  /// will
  /// mask the form's reset method. It does not reset other attributes in the
  /// input, such as
  /// `disabled`.
  ///
  /// Note that if [Element.setAttribute] is called to set
  /// the value of a particular attribute, a subsequent call to `reset()` won't
  /// reset the attribute to its default value, but instead will keep the
  /// attribute at
  /// whatever value the [Element.setAttribute] call set it to.
  external void reset();
  external bool checkValidity();

  /// The **`HTMLFormElement.reportValidity()`** method returns
  /// `true` if the element's child controls satisfy their validation
  /// constraints.
  /// When `false` is returned, cancelable
  /// [`invalid`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/invalid_event)
  /// events are fired for
  /// each invalid child and validation problems are reported to the user.
  external bool reportValidity();
  external set acceptCharset(String value);
  external String get acceptCharset;
  external set action(String value);
  external String get action;
  external set autocomplete(String value);
  external String get autocomplete;
  external set enctype(String value);
  external String get enctype;
  external set encoding(String value);
  external String get encoding;
  external set method(String value);
  external String get method;
  external set name(String value);
  external String get name;
  external set noValidate(bool value);
  external bool get noValidate;
  external set target(String value);
  external String get target;
  external set rel(String value);
  external String get rel;
  external DOMTokenList get relList;
  external HTMLFormControlsCollection get elements;
  external int get length;
}

/// The **`HTMLLabelElement`** interface gives access to properties specific to
/// `label` elements. It inherits methods and properties from the base
/// [HTMLElement] interface.
extension type HTMLLabelElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLLabelElement] using the tag 'label'.
  HTMLLabelElement() : _ = document.createElement('label');

  external HTMLFormElement? get form;
  external set htmlFor(String value);
  external String get htmlFor;
  external HTMLElement? get control;
}

/// The **`HTMLInputElement`** interface provides special properties and methods
/// for manipulating the options, layout, and presentation of `input` elements.
extension type HTMLInputElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLInputElement] using the tag 'input'.
  HTMLInputElement() : _ = document.createElement('input');

  /// The **`HTMLInputElement.stepUp()`** method increments the value
  /// of a numeric type of `input` element by the value of the
  /// [`step`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/step)
  /// attribute, or the
  /// default `step` value if the step attribute is not explicitly set. The
  /// method,
  /// when invoked, increments the
  /// [`value`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#value)
  /// by
  /// ([`step`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#step)
  /// \* n), where `n` defaults to
  /// `1` if not specified, and
  /// [`step`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/step)
  /// defaults to the
  /// default value for `step` if not specified.
  ///
  /// <table class="no-markdown">
  ///   <thead>
  ///     <tr>
  ///       <th>Input type</th>
  ///       <th>Default step value</th>
  ///       <th>Example step declaration</th>
  ///     </tr>
  ///     <tr>
  ///       <td>`date`</td>
  ///       <td><code>1</code> (day)</td>
  ///       <td>
  /// 7 day (one week) increments:<br />
  ///         <code>&#x3C;input type="date" min="2019-12-25" step="7"></code>
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>`month`</td>
  ///       <td><code>1</code> (month)</td>
  ///       <td>
  /// 12 month (one year) increments:<br />
  ///         <code>&#x3C;input type="month" min="2019-12" step="12"></code>
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>`week`</td>
  ///       <td><code>1</code> (week)</td>
  ///       <td>
  /// Two week increments:<br />
  ///         <code>&#x3C;input type="week" min="2019-W23" step="2"></code>
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>`time`</td>
  ///       <td><code>60</code> (seconds)</td>
  ///       <td>
  /// 900 second (15 minute) increments:<br />
  ///         <code>&#x3C;input type="time" min="09:00" step="900"></code>
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>
  ///       </td>
  ///       <td><code>1</code> (day)</td>
  ///       <td>
  /// Same day of the week:<br />
  ///         <code>&#x3C;input type="datetime-local" min="019-12-25T19:30"
  /// step="7"></code>
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>`number`</td>
  ///       <td><code>1</code></td>
  ///       <td>
  /// 0.1 increments<br />
  ///         <code>&#x3C;input type="number" min="0" step="0.1" max="10"></code>
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>`range`</td>
  ///       <td><code>1</code></td>
  ///       <td>
  /// Increments by 2:<br />
  ///         <code>&#x3C;input type="range" min="0" step="2" max="10"></code>
  ///       </td>
  ///     </tr>
  ///   </thead>
  /// </table>
  ///
  /// The method, when invoked, changes the form control's value by the value
  /// given in the
  /// `step` attribute, multiplied by the parameter, within the constraints set
  /// on
  /// the form control. The default value for the parameter, if no value is
  /// passed, is
  /// `1`. The method will not cause the value to exceed the
  /// set
  /// [`max`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/max)
  /// value, or defy
  /// the constraints set by the
  /// [`step`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/step)
  /// attribute.
  ///
  /// If the value before invoking the `stepUp()` method is invalid—for example,
  /// if it doesn't match the constraints set by the step attribute—invoking the
  /// `stepUp()` method will return a value that does match the form controls
  /// constraints.
  ///
  /// If the form control is non time, date, or numeric in nature, and therefore
  /// does not
  /// support the `step` attribute (see the list of supported input types in the
  /// table above), or if the step value is set to `any`, an
  /// `InvalidStateError` exception is thrown.
  external void stepUp([int n]);

  /// The
  /// **`HTMLInputElement.stepDown([n])`** method decrements the
  /// value of a numeric type of `input` element by the value of the
  /// [`step`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/step)
  /// attribute or up
  /// to `n` multiples of the step attribute if a number is passed as the
  /// parameter.
  ///
  /// The method, when invoked, decrements the
  /// [`value`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#value)
  /// by
  /// ([`step`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#step)
  /// \* n), where n
  /// defaults to 1 if not specified, and
  /// [`step`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/step)
  /// defaults to the
  /// default value for `step` if not specified.
  ///
  /// Valid on all numeric, date, and time input types that support the step
  /// attribute,
  /// including `date`, `month`,
  /// `week`, `time`,
  /// , `number`, and `range`.
  ///
  /// Given `<input id="myTime" type="time" max="17:00" step="900"
  /// value="17:00">`,
  /// invoking `myTime.stepDown(3)` will change the value to 16:15, decrementing
  /// the
  /// time by `3 * 900`, or 45 minutes. `myTime.stepDown()`, with no
  /// parameter, would have resulted in `16:45`, as `n` defaults to
  /// `1`.
  ///
  /// ```html
  /// <!-- decrements by intervals of 900 seconds (15 minute) -->
  /// <input type="time" max="17:00" step="900" />
  ///
  /// <!-- decrements by intervals of 7 days (one week) -->
  /// <input type="date" max="2019-12-25" step="7" />
  ///
  /// <!-- decrements by intervals of 12 months (one year) -->
  /// <input type="month" max="2019-12" step="12" />
  /// ```
  ///
  /// However, calling `stepDown` on `<input type="time" max="17:00"
  /// step="900">` would not set the value to `17:00`, as one would expect — and
  /// as it does for `stepUp` when the input is `<input type="time" min="17:00"
  /// step="900">`. Instead, the first call to `stepDown` will set the initial
  /// value to `23:45` even though the `max` attribute is set. The second call
  /// will set the value to `17:00`. And the third call to will set the value to
  /// `16:45`.
  ///
  /// ```js
  /// let input1 = document.createElement("input");
  /// input1.setAttribute("type", "time");
  /// input1.setAttribute("min", "17:00");
  /// input1.setAttribute("step", 900);
  /// console.log(input1.value); // ""
  /// input1.stepUp();
  /// console.log(input1.value); // "17:00"
  /// // However
  /// let input2 = document.createElement("input");
  /// input2.setAttribute("type", "time");
  /// input2.setAttribute("max", "17:00");
  /// input2.setAttribute("step", 900);
  /// console.log(input2.value); // ""
  /// input2.stepDown();
  /// console.log(input2.value); // "23:45"
  /// input2.stepDown();
  /// console.log(input2.value); // "17:00"
  /// input2.stepDown();
  /// console.log(input2.value); // "16:45"
  /// ```
  ///
  /// The method, when invoked, changes the form control's value by the value
  /// given in the
  /// `step` attribute, multiplied by the parameter, within the constraints set
  /// within the form control. The default value for the parameter, if not is
  /// passed, is 1.
  /// The method will not cause the value to go below the
  /// [`min`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/min)
  /// value set or defy the
  /// constraints set by the
  /// [`step`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/step)
  /// attribute. A
  /// negative value for `n` will increment the value, but will not increment
  /// beyond the
  /// [`max`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/max)
  /// value.
  ///
  /// If the value before invoking the `stepDown()` method is invalid, for
  /// example, if it doesn't match the constraints set by the `step` attribute,
  /// invoking the `stepDown()` method will return a value that does match the
  /// form
  /// controls constraints.
  ///
  /// If the form control is non time, date, or numeric in nature, and therefore
  /// does not
  /// support the `step` attribute (see the list of supported input types
  /// above), or if the `step` value is set to `any`, an
  /// `InvalidStateError` exception is thrown.
  ///
  /// - [HTMLInputElement.stepDown]
  ///
  ///   - : Decrements the [`value`](/en-US/docs/Web/HTML/Element/input#value) by
  /// ([`step`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#step)
  /// \* n), where n defaults to 1 if not specified. Throws
  /// an `InvalidStateError` exception:
  ///
  ///     - if the method is not applicable to for the current
  /// [`type`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#type)
  /// value,
  ///     - if the element has no [`step`](/en-US/docs/Web/HTML/Element/input#step) value,
  ///     - if the [`value`](/en-US/docs/Web/HTML/Element/input#value) cannot be converted to a number,
  ///     - if the resulting value is above the [`max`](/en-US/docs/Web/HTML/Element/input#max) or below the
  /// [`min`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#min).
  external void stepDown([int n]);

  /// The **`HTMLInputElement.checkValidity()`** method returns a boolean value
  /// which indicates validity of the value of the element. If the value is
  /// invalid, this method also fires the [HTMLInputElement/invalid_event] event
  /// on the element.
  external bool checkValidity();

  /// The **`reportValidity()`** method of the [HTMLInputElement] interface
  /// performs the same validity checking steps as the
  /// [HTMLInputElement.checkValidity] method. If the value is invalid, this
  /// method also fires the [HTMLInputElement.invalid_event] event on the
  /// element, and (if the event isn't canceled) reports the problem to the
  /// user.
  external bool reportValidity();

  /// The **`HTMLInputElement.setCustomValidity()`** method sets a custom
  /// validity message for the element.
  external void setCustomValidity(String error);

  /// The **`HTMLInputElement.select()`** method selects all the text
  /// in a `textarea` element or in an `input` element
  /// that includes a text field.
  external void select();

  /// The **`HTMLInputElement.setRangeText()`** method replaces a
  /// range of text in an `input` or `textarea` element with
  /// a new string.
  external void setRangeText(
    String replacement, [
    int start,
    int end,
    SelectionMode selectionMode,
  ]);

  /// The **`HTMLInputElement.setSelectionRange()`** method sets the
  /// start and end positions of the current text selection in an `input`
  /// or `textarea` element.
  ///
  /// Optionally, in newer browser versions, you can specify the direction in
  /// which selection
  /// should be considered to have occurred. This lets you indicate, for
  /// example, that the
  /// selection was set by the user clicking and dragging from the end of the
  /// selected text
  /// toward the beginning.
  ///
  /// This method updates the `HTMLInputElement.selectionStart`,
  /// `selectionEnd`, and `selectionDirection` properties in one call.
  ///
  /// Note that according to the
  /// [WHATWG forms spec](https://html.spec.whatwg.org/multipage/forms.html#concept-input-apply)
  /// `selectionStart`, `selectionEnd` properties and
  /// `setSelectionRange` method apply only to inputs of types text, search,
  /// URL,
  /// tel and password. Chrome, starting from version 33, throws an exception
  /// while accessing
  /// those properties and method on the rest of input types. For example, on
  /// input of type
  /// number: "Failed to read the 'selectionStart' property from
  /// 'HTMLInputElement': The input
  /// element's type ('number') does not support selection".
  ///
  /// If you wish to select **all** text of an input element, you can use the
  /// [HTMLInputElement.select()](/en-US/docs/Web/API/HTMLInputElement/select)
  /// method instead.
  external void setSelectionRange(
    int start,
    int end, [
    String direction,
  ]);

  /// The **`HTMLInputElement.showPicker()`** method displays the browser picker
  /// for an `input` element.
  ///
  /// This is the same picker that would normally be displayed when the element
  /// is selected, but can be triggered from a button press or other user
  /// interaction.
  ///
  /// Commonly browsers implement it for inputs of these types: `"date"`,
  /// `"month"`, `"week"`, `"time"`, `"datetime-local"`, `"color"`, or `"file"`.
  /// It can also be prepopulated with items from a `datalist` element or
  /// [`autocomplete`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/autocomplete)
  /// attribute.
  ///
  /// More generally, this method should ideally display the picker for any
  /// input element on the platform that has a picker.
  external void showPicker();
  external set webkitdirectory(bool value);
  external bool get webkitdirectory;
  external JSArray<FileSystemEntry> get webkitEntries;
  external set accept(String value);
  external String get accept;
  external set alt(String value);
  external String get alt;
  external set autocomplete(String value);
  external String get autocomplete;
  external set defaultChecked(bool value);
  external bool get defaultChecked;
  external set checked(bool value);
  external bool get checked;
  external set dirName(String value);
  external String get dirName;
  external set disabled(bool value);
  external bool get disabled;
  external HTMLFormElement? get form;
  external set files(FileList? value);
  external FileList? get files;
  external set formAction(String value);
  external String get formAction;
  external set formEnctype(String value);
  external String get formEnctype;
  external set formMethod(String value);
  external String get formMethod;
  external set formNoValidate(bool value);
  external bool get formNoValidate;
  external set formTarget(String value);
  external String get formTarget;
  external set height(int value);
  external int get height;
  external set indeterminate(bool value);
  external bool get indeterminate;
  external HTMLDataListElement? get list;
  external set max(String value);
  external String get max;
  external set maxLength(int value);
  external int get maxLength;
  external set min(String value);
  external String get min;
  external set minLength(int value);
  external int get minLength;
  external set multiple(bool value);
  external bool get multiple;
  external set name(String value);
  external String get name;
  external set pattern(String value);
  external String get pattern;
  external set placeholder(String value);
  external String get placeholder;
  external set readOnly(bool value);
  external bool get readOnly;
  external set required(bool value);
  external bool get required;
  external set size(int value);
  external int get size;
  external set src(String value);
  external String get src;
  external set step(String value);
  external String get step;
  external set type(String value);
  external String get type;
  external set defaultValue(String value);
  external String get defaultValue;
  external set value(String value);
  external String get value;
  external set valueAsDate(JSObject? value);
  external JSObject? get valueAsDate;
  external set valueAsNumber(num value);
  external num get valueAsNumber;
  external set width(int value);
  external int get width;
  external bool get willValidate;
  external ValidityState get validity;
  external String get validationMessage;
  external NodeList? get labels;
  external set selectionStart(int? value);
  external int? get selectionStart;
  external set selectionEnd(int? value);
  external int? get selectionEnd;
  external set selectionDirection(String? value);
  external String? get selectionDirection;
  external set align(String value);
  external String get align;
  external set useMap(String value);
  external String get useMap;
  external set popoverTargetElement(Element? value);
  external Element? get popoverTargetElement;
  external set popoverTargetAction(String value);
  external String get popoverTargetAction;
}

/// The **`HTMLButtonElement`** interface provides properties and methods
/// (beyond the regular [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating `button` elements.
extension type HTMLButtonElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLButtonElement] using the tag 'button'.
  HTMLButtonElement() : _ = document.createElement('button');

  external bool checkValidity();
  external bool reportValidity();
  external void setCustomValidity(String error);
  external set disabled(bool value);
  external bool get disabled;
  external HTMLFormElement? get form;
  external set formAction(String value);
  external String get formAction;
  external set formEnctype(String value);
  external String get formEnctype;
  external set formMethod(String value);
  external String get formMethod;
  external set formNoValidate(bool value);
  external bool get formNoValidate;
  external set formTarget(String value);
  external String get formTarget;
  external set name(String value);
  external String get name;
  external set type(String value);
  external String get type;
  external set value(String value);
  external String get value;
  external bool get willValidate;
  external ValidityState get validity;
  external String get validationMessage;
  external NodeList get labels;
  external set popoverTargetElement(Element? value);
  external Element? get popoverTargetElement;
  external set popoverTargetAction(String value);
  external String get popoverTargetAction;
}

/// The **`HTMLSelectElement`** interface represents a `select` HTML Element.
/// These elements also share all of the properties and methods of other HTML
/// elements via the [HTMLElement] interface.
extension type HTMLSelectElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLSelectElement] using the tag 'select'.
  HTMLSelectElement() : _ = document.createElement('select');

  /// The **`HTMLSelectElement.item()`** method returns the
  /// [Element] corresponding to the [HTMLOptionElement] whose
  /// position in the options list corresponds to the index given in the
  /// parameter, or
  /// `null` if there are none.
  ///
  /// In JavaScript, using the array bracket syntax with an `unsigned long`,
  /// like
  /// `selectElt[index]` is equivalent to
  /// `selectElt.namedItem(index)`.
  external HTMLOptionElement? item(int index);

  /// The **`HTMLSelectElement.namedItem()`** method returns the
  /// [HTMLOptionElement] corresponding to the [HTMLOptionElement]
  /// whose `name` or `id` match the specified name, or
  /// `null` if no option matches.
  ///
  /// In JavaScript, using `selectElt.namedItem('value')` is equivalent to
  /// `selectElt.options.namedItem('value')`.
  external HTMLOptionElement? namedItem(String name);

  /// The **`HTMLSelectElement.add()`** method adds an element to the
  /// collection of `option` elements for this `select` element.
  external void add(
    JSObject element, [
    JSAny? before,
  ]);

  /// The **`HTMLSelectElement.remove()`** method removes the element
  /// at the specified index from the options collection for this select
  /// element.
  external void remove([int index]);

  /// The **`HTMLSelectElement.checkValidity()`** method checks
  /// whether the element has any constraints and whether it satisfies them. If
  /// the element
  /// fails its constraints, the browser fires a cancelable
  /// [HTMLSelectElement/invalid_event] event at the
  /// element, and then returns `false`.
  external bool checkValidity();
  external bool reportValidity();

  /// The **`HTMLSelectElement.setCustomValidity()`** method sets the
  /// custom validity message for the selection element to the specified
  /// message. Use the
  /// empty string to indicate that the element does _not_ have a custom
  /// validity
  /// error.
  external void setCustomValidity(String error);

  /// The **`HTMLSelectElement.showPicker()`** method displays the browser
  /// picker for a `select` element.
  ///
  /// This is the same picker that would normally be displayed when the element
  /// is selected, but can be triggered from a button press or other user
  /// interaction.
  external void showPicker();
  external set autocomplete(String value);
  external String get autocomplete;
  external set disabled(bool value);
  external bool get disabled;
  external HTMLFormElement? get form;
  external set multiple(bool value);
  external bool get multiple;
  external set name(String value);
  external String get name;
  external set required(bool value);
  external bool get required;
  external set size(int value);
  external int get size;
  external String get type;
  external HTMLOptionsCollection get options;
  external set length(int value);
  external int get length;
  external HTMLCollection get selectedOptions;
  external set selectedIndex(int value);
  external int get selectedIndex;
  external set value(String value);
  external String get value;
  external bool get willValidate;
  external ValidityState get validity;
  external String get validationMessage;
  external NodeList get labels;
}

/// The **`HTMLDataListElement`** interface provides special properties (beyond
/// the [HTMLElement] object interface it also has available to it by
/// inheritance) to manipulate `datalist` elements and their content.
extension type HTMLDataListElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLDataListElement] using the tag 'datalist'.
  HTMLDataListElement() : _ = document.createElement('datalist');

  external HTMLCollection get options;
}

/// The **`HTMLOptGroupElement`** interface provides special properties and
/// methods (beyond the regular [HTMLElement] object interface they also have
/// available to them by inheritance) for manipulating the layout and
/// presentation of `optgroup` elements.
extension type HTMLOptGroupElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLOptGroupElement] using the tag 'optgroup'.
  HTMLOptGroupElement() : _ = document.createElement('optgroup');

  external set disabled(bool value);
  external bool get disabled;
  external set label(String value);
  external String get label;
}

/// The **`HTMLOptionElement`** interface represents `option` elements and
/// inherits all properties and methods of the [HTMLElement] interface.
extension type HTMLOptionElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLOptionElement] using the tag 'option'.
  HTMLOptionElement() : _ = document.createElement('option');

  external set disabled(bool value);
  external bool get disabled;
  external HTMLFormElement? get form;
  external set label(String value);
  external String get label;
  external set defaultSelected(bool value);
  external bool get defaultSelected;
  external set selected(bool value);
  external bool get selected;
  external set value(String value);
  external String get value;
  external set text(String value);
  external String get text;
  external int get index;
}

/// The **`HTMLTextAreaElement`** interface provides special properties and
/// methods for manipulating the layout and presentation of `textarea` elements.
extension type HTMLTextAreaElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLTextAreaElement] using the tag 'textarea'.
  HTMLTextAreaElement() : _ = document.createElement('textarea');

  external bool checkValidity();
  external bool reportValidity();
  external void setCustomValidity(String error);
  external void select();
  external void setRangeText(
    String replacement, [
    int start,
    int end,
    SelectionMode selectionMode,
  ]);
  external void setSelectionRange(
    int start,
    int end, [
    String direction,
  ]);
  external set autocomplete(String value);
  external String get autocomplete;
  external set cols(int value);
  external int get cols;
  external set dirName(String value);
  external String get dirName;
  external set disabled(bool value);
  external bool get disabled;
  external HTMLFormElement? get form;
  external set maxLength(int value);
  external int get maxLength;
  external set minLength(int value);
  external int get minLength;
  external set name(String value);
  external String get name;
  external set placeholder(String value);
  external String get placeholder;
  external set readOnly(bool value);
  external bool get readOnly;
  external set required(bool value);
  external bool get required;
  external set rows(int value);
  external int get rows;
  external set wrap(String value);
  external String get wrap;
  external String get type;
  external set defaultValue(String value);
  external String get defaultValue;
  external set value(String value);
  external String get value;
  external int get textLength;
  external bool get willValidate;
  external ValidityState get validity;
  external String get validationMessage;
  external NodeList get labels;
  external set selectionStart(int value);
  external int get selectionStart;
  external set selectionEnd(int value);
  external int get selectionEnd;
  external set selectionDirection(String value);
  external String get selectionDirection;
}

/// The **`HTMLOutputElement`** interface provides properties and methods
/// (beyond those inherited from [HTMLElement]) for manipulating the layout and
/// presentation of `output` elements.
extension type HTMLOutputElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLOutputElement] using the tag 'output'.
  HTMLOutputElement() : _ = document.createElement('output');

  external bool checkValidity();
  external bool reportValidity();
  external void setCustomValidity(String error);
  external DOMTokenList get htmlFor;
  external HTMLFormElement? get form;
  external set name(String value);
  external String get name;
  external String get type;
  external set defaultValue(String value);
  external String get defaultValue;
  external set value(String value);
  external String get value;
  external bool get willValidate;
  external ValidityState get validity;
  external String get validationMessage;
  external NodeList get labels;
}

/// The **`HTMLProgressElement`** interface provides special properties and
/// methods (beyond the regular [HTMLElement] interface it also has available to
/// it by inheritance) for manipulating the layout and presentation of
/// `progress` elements.
extension type HTMLProgressElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLProgressElement] using the tag 'progress'.
  HTMLProgressElement() : _ = document.createElement('progress');

  external set value(num value);
  external num get value;
  external set max(num value);
  external num get max;
  external num get position;
  external NodeList get labels;
}

/// The HTML `meter` elements expose the **`HTMLMeterElement`** interface, which
/// provides special properties and methods (beyond the [HTMLElement] object
/// interface they also have available to them by inheritance) for manipulating
/// the layout and presentation of `meter` elements.
extension type HTMLMeterElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLMeterElement] using the tag 'meter'.
  HTMLMeterElement() : _ = document.createElement('meter');

  external set value(num value);
  external num get value;
  external set min(num value);
  external num get min;
  external set max(num value);
  external num get max;
  external set low(num value);
  external num get low;
  external set high(num value);
  external num get high;
  external set optimum(num value);
  external num get optimum;
  external NodeList get labels;
}

/// The **`HTMLFieldSetElement`** interface provides special properties and
/// methods (beyond the regular [HTMLElement] interface it also has available to
/// it by inheritance) for manipulating the layout and presentation of
/// `fieldset` elements.
extension type HTMLFieldSetElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLFieldSetElement] using the tag 'fieldset'.
  HTMLFieldSetElement() : _ = document.createElement('fieldset');

  external bool checkValidity();
  external bool reportValidity();
  external void setCustomValidity(String error);
  external set disabled(bool value);
  external bool get disabled;
  external HTMLFormElement? get form;
  external set name(String value);
  external String get name;
  external String get type;
  external HTMLCollection get elements;
  external bool get willValidate;
  external ValidityState get validity;
  external String get validationMessage;
}

/// The **`HTMLLegendElement`** is an interface allowing to access properties of
/// the `legend` elements. It inherits properties and methods from the
/// [HTMLElement] interface.
extension type HTMLLegendElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLLegendElement] using the tag 'legend'.
  HTMLLegendElement() : _ = document.createElement('legend');

  external HTMLFormElement? get form;
  external set align(String value);
  external String get align;
}

/// The **`ValidityState`** interface represents the _validity states_ that an
/// element can be in, with respect to constraint validation. Together, they
/// help explain why an element's value fails to validate, if it's not valid.
extension type ValidityState._(JSObject _) implements JSObject {
  external bool get valueMissing;
  external bool get typeMismatch;
  external bool get patternMismatch;
  external bool get tooLong;
  external bool get tooShort;
  external bool get rangeUnderflow;
  external bool get rangeOverflow;
  external bool get stepMismatch;
  external bool get badInput;
  external bool get customError;
  external bool get valid;
}

/// The **`SubmitEvent`** interface defines the object used to represent an
/// form's [HTMLFormElement.submit_event] event. This event is fired at the
/// `form` when the form's submit action is invoked.
extension type SubmitEvent._(JSObject _) implements Event, JSObject {
  external factory SubmitEvent(
    String type, [
    SubmitEventInit eventInitDict,
  ]);

  external HTMLElement? get submitter;
}
extension type SubmitEventInit._(JSObject _) implements EventInit, JSObject {
  external factory SubmitEventInit({HTMLElement? submitter});

  external set submitter(HTMLElement? value);
  external HTMLElement? get submitter;
}

/// The **`FormDataEvent`** interface represents a
/// [`formdata` event](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/formdata_event)
/// — such an event is fired on an [HTMLFormElement] object after the entry list
/// representing the form's data is constructed. This happens when the form is
/// submitted, but can also be triggered by the invocation of a
/// [FormData.FormData] constructor.
///
/// This allows a [FormData] object to be quickly obtained in response to a
/// `formdata` event firing, rather than needing to put it together yourself
/// when you wish to submit form data via a method like [fetch] (see
/// [Using FormData objects](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest_API/Using_FormData_Objects)).
extension type FormDataEvent._(JSObject _) implements Event, JSObject {
  external factory FormDataEvent(
    String type,
    FormDataEventInit eventInitDict,
  );

  external FormData get formData;
}
extension type FormDataEventInit._(JSObject _) implements EventInit, JSObject {
  external factory FormDataEventInit({required FormData formData});

  external set formData(FormData value);
  external FormData get formData;
}

/// The **`HTMLDetailsElement`** interface provides special properties (beyond
/// the regular [HTMLElement] interface it also has available to it by
/// inheritance) for manipulating `details` elements.
extension type HTMLDetailsElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLDetailsElement] using the tag 'details'.
  HTMLDetailsElement() : _ = document.createElement('details');

  external set name(String value);
  external String get name;
  external set open(bool value);
  external bool get open;
}

/// The **`HTMLDialogElement`** interface provides methods to manipulate
/// `dialog` elements. It inherits properties and methods from the [HTMLElement]
/// interface.
extension type HTMLDialogElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLDialogElement] using the tag 'dialog'.
  HTMLDialogElement() : _ = document.createElement('dialog');

  /// The **`show()`** method of the [HTMLDialogElement]
  /// interface displays the dialog modelessly, i.e. still allowing interaction
  /// with content
  /// outside of the dialog.
  external void show();

  /// The **`showModal()`** method of the
  /// [HTMLDialogElement] interface displays the dialog as a modal, over the top
  /// of any other dialogs that might be present. It displays in the , along
  /// with a
  /// pseudo-element. Interaction outside the dialog is blocked and
  /// the content outside it is rendered inert.
  external void showModal();

  /// The **`close()`** method of the [HTMLDialogElement] interface closes the
  /// `dialog`.
  /// An optional string may be passed as an argument, updating the
  /// `returnValue` of the dialog.
  external void close([String returnValue]);
  external set open(bool value);
  external bool get open;
  external set returnValue(String value);
  external String get returnValue;
}

/// HTML `script` elements expose the **`HTMLScriptElement`** interface, which
/// provides special properties and methods for manipulating the behavior and
/// execution of `<script>` elements (beyond the inherited [HTMLElement]
/// interface).
///
/// JavaScript files should be served with the `text/javascript`
/// [MIME type](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types),
/// but browsers are lenient and block them only if the script is served with an
/// image type (`image/*`), video type (`video/*`), audio type (`audio/*`), or
/// `text/csv`. If the script is blocked, its element receives an
/// [HTMLElement/error_event] event; otherwise, it receives a
/// [Window/load_event] event.
extension type HTMLScriptElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLScriptElement] using the tag 'script'.
  HTMLScriptElement() : _ = document.createElement('script');

  external static bool supports(String type);
  external set src(String value);
  external String get src;
  external set type(String value);
  external String get type;
  external set noModule(bool value);
  external bool get noModule;
  external set async(bool value);
  external bool get async;
  external set defer(bool value);
  external bool get defer;
  external set crossOrigin(String? value);
  external String? get crossOrigin;
  external set text(String value);
  external String get text;
  external set integrity(String value);
  external String get integrity;
  external set referrerPolicy(String value);
  external String get referrerPolicy;
  external DOMTokenList get blocking;
  external set fetchPriority(String value);
  external String get fetchPriority;
  external set charset(String value);
  external String get charset;
  external set event(String value);
  external String get event;
  external set htmlFor(String value);
  external String get htmlFor;
}

/// The **`HTMLTemplateElement`** interface enables access to the contents of an
/// HTML `template` element.
extension type HTMLTemplateElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLTemplateElement] using the tag 'template'.
  HTMLTemplateElement() : _ = document.createElement('template');

  external DocumentFragment get content;
  external set shadowRootMode(String value);
  external String get shadowRootMode;
  external set shadowRootDelegatesFocus(bool value);
  external bool get shadowRootDelegatesFocus;
}

/// The **`HTMLSlotElement`** interface of the
/// [Shadow DOM API](https://developer.mozilla.org/en-US/docs/Web/API/Web_components/Using_shadow_DOM)
/// enables access to the name and assigned nodes of an HTML `slot` element.
extension type HTMLSlotElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLSlotElement] using the tag 'slot'.
  HTMLSlotElement() : _ = document.createElement('slot');

  /// The **`assignedNodes()`** method of the [HTMLSlotElement] interface
  /// returns a sequence of the nodes assigned to this slot.
  ///
  /// If the `flatten` option is set to `true`, it returns a sequence of both
  /// the nodes assigned to this slot, as well as the nodes assigned to any
  /// other slots that are descendants of this slot. If no assigned nodes are
  /// found, it returns the slot's fallback content.
  external JSArray<Node> assignedNodes([AssignedNodesOptions options]);

  /// The **`assignedElements()`** method of the [HTMLSlotElement]
  /// interface returns a sequence of the elements assigned to this slot (and no
  /// other nodes).
  ///
  /// If the `flatten` option is set to `true`, it returns a sequence of both
  /// the elements assigned to this slot, as well as the elements assigned to
  /// any other slots that are descendants of this slot. If no assigned elements
  /// are found, it returns the slot's fallback content.
  external JSArray<Element> assignedElements([AssignedNodesOptions options]);

  /// The **`assign()`** method of the [HTMLSlotElement] interface sets the
  /// slot's _manually assigned nodes_ to an ordered set of slottables. The
  /// manually assigned nodes set is initially empty until nodes are assigned
  /// using `assign()`.
  ///
  /// > **Note:** you cannot mix manually (imperative) and named (declarative,
  /// > automatic) slot assignments. Therefore, for this method to work, the
  /// > shadow tree needs to have been
  /// > [created](https://developer.mozilla.org/en-US/docs/Web/API/Element/attachShadow)
  /// > with the `slotAssignment: "manual"` option.
  external void assign(JSObject nodes);
  external set name(String value);
  external String get name;
}
extension type AssignedNodesOptions._(JSObject _) implements JSObject {
  external factory AssignedNodesOptions({bool flatten});

  external set flatten(bool value);
  external bool get flatten;
}

/// The **`HTMLCanvasElement`** interface provides properties and methods for
/// manipulating the layout and presentation of `canvas` elements. The
/// `HTMLCanvasElement` interface also inherits the properties and methods of
/// the [HTMLElement] interface.
extension type HTMLCanvasElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLCanvasElement] using the tag 'canvas'.
  HTMLCanvasElement() : _ = document.createElement('canvas');

  /// The
  /// **`HTMLCanvasElement.getContext()`** method returns a drawing
  /// context on the canvas, or
  /// [`null`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/null)
  /// if the context identifier is not
  /// supported, or the canvas has already been set to a different context mode.
  ///
  /// Later calls to this method on the same canvas element, with the same
  /// `contextType` argument, will always return the same drawing context
  /// instance
  /// as was returned the first time the method was invoked. It is not possible
  /// to get a
  /// different drawing context object on a given canvas element.
  external RenderingContext? getContext(
    String contextId, [
    JSAny? options,
  ]);

  /// The **`HTMLCanvasElement.toDataURL()`** method returns a
  /// [data URL](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/Data_URLs)
  /// containing a representation of the image in the format specified by the
  /// `type` parameter.
  ///
  /// The desired file format and image quality may be specified.
  /// If the file format is not specified, or if the given format is not
  /// supported, then the data will be exported as `image/png`.
  /// In other words, if the returned value starts with `data:image/png` for any
  /// other requested `type`, then that format is not supported.
  ///
  /// Browsers are required to support `image/png`; many will support additional
  /// formats including `image/jpeg` and `image/webp`.
  ///
  /// The created image data will have a resolution of 96dpi for file formats
  /// that support encoding resolution metadata.
  external String toDataURL([
    String type,
    JSAny? quality,
  ]);

  /// The **`HTMLCanvasElement.toBlob()`** method creates a [Blob] object
  /// representing the image contained in the canvas.
  /// This file may be cached on the disk or stored in memory at the discretion
  /// of the user agent.
  ///
  /// The desired file format and image quality may be specified.
  /// If the file format is not specified, or if the given format is not
  /// supported, then the data will be exported as `image/png`.
  /// Browsers are required to support `image/png`; many will support additional
  /// formats including `image/jpeg` and `image/webp`.
  ///
  /// The created image will have a resolution of 96dpi for file formats that
  /// support encoding resolution metadata.
  external void toBlob(
    BlobCallback callback, [
    String type,
    JSAny? quality,
  ]);

  /// The **`HTMLCanvasElement.transferControlToOffscreen()`** method transfers
  /// control to an [OffscreenCanvas] object, either on the main thread or on a
  /// worker.
  external OffscreenCanvas transferControlToOffscreen();
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
}
extension type CanvasRenderingContext2DSettings._(JSObject _)
    implements JSObject {
  external factory CanvasRenderingContext2DSettings({
    bool alpha,
    bool desynchronized,
    PredefinedColorSpace colorSpace,
    bool willReadFrequently,
  });

  external set alpha(bool value);
  external bool get alpha;
  external set desynchronized(bool value);
  external bool get desynchronized;
  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
  external set willReadFrequently(bool value);
  external bool get willReadFrequently;
}

/// The **`CanvasRenderingContext2D`** interface, part of the
/// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API),
/// provides the 2D rendering context for the drawing surface of a `canvas`
/// element.
/// It is used for drawing shapes, text, images, and other objects.
///
/// The interface's properties and methods are described in the reference
/// section of this page.
/// The
/// [Canvas tutorial](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial)
/// has more explanation, examples, and resources, as well.
///
/// For
/// [`OffscreenCanvas`](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvas),
/// there is an equivalent interface that provides the rendering context.
/// The offscreen rendering context inherits most of the same properties and
/// methods as the `CanvasRenderingContext2D` and is described in more detail in
/// the [OffscreenCanvasRenderingContext2D] reference page.
extension type CanvasRenderingContext2D._(JSObject _) implements JSObject {
  /// The **`CanvasRenderingContext2D.getContextAttributes()`** method returns
  /// an object that contains attributes used by the context.
  ///
  /// Note that context attributes may be requested when creating the context
  /// with
  /// [`HTMLCanvasElement.getContext()`](/en-US/docs/Web/API/HTMLCanvasElement/getContext),
  /// but the attributes that are actually supported and used may differ.
  external CanvasRenderingContext2DSettings getContextAttributes();

  /// The
  /// **`CanvasRenderingContext2D.save()`**
  /// method of the Canvas 2D API saves the entire state of the canvas by
  /// pushing the current
  /// state onto a stack.
  ///
  /// ### The drawing state
  ///
  /// The drawing state that gets saved onto a stack consists of:
  ///
  /// - The current transformation matrix.
  /// - The current clipping region.
  /// - The current dash list.
  /// - The current values of the following attributes:
  /// [CanvasRenderingContext2D.strokeStyle],
  /// [CanvasRenderingContext2D.fillStyle],
  /// [CanvasRenderingContext2D.globalAlpha],
  /// [CanvasRenderingContext2D.lineWidth],
  /// [CanvasRenderingContext2D.lineCap],
  /// [CanvasRenderingContext2D.lineJoin],
  /// [CanvasRenderingContext2D.miterLimit],
  /// [CanvasRenderingContext2D.lineDashOffset],
  /// [CanvasRenderingContext2D.shadowOffsetX],
  /// [CanvasRenderingContext2D.shadowOffsetY],
  /// [CanvasRenderingContext2D.shadowBlur],
  /// [CanvasRenderingContext2D.shadowColor],
  /// [CanvasRenderingContext2D.globalCompositeOperation],
  /// [CanvasRenderingContext2D.font],
  /// [CanvasRenderingContext2D.textAlign],
  /// [CanvasRenderingContext2D.textBaseline],
  /// [CanvasRenderingContext2D.direction],
  /// [CanvasRenderingContext2D.imageSmoothingEnabled].
  external void save();

  /// The
  /// **`CanvasRenderingContext2D.restore()`**
  /// method of the Canvas 2D API restores the most recently saved canvas state
  /// by popping the
  /// top entry in the drawing state stack. If there is no saved state, this
  /// method does
  /// nothing.
  ///
  /// For more information about the
  /// [drawing state](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/save#drawing_state),
  /// see [CanvasRenderingContext2D.save].
  external void restore();

  /// The **`CanvasRenderingContext2D.reset()`** method of the Canvas 2D API
  /// resets the rendering context to its default state, allowing it to be
  /// reused for drawing something else without having to explicitly reset all
  /// the properties.
  ///
  /// Resetting clears the backing buffer, drawing state stack, any defined
  /// paths, and styles.
  /// This includes the current
  /// [transformation](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#transformations)
  /// matrix,
  /// [compositing](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#compositing)
  /// properties, clipping region, dash list,
  /// [line styles](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#line_styles),
  /// [text styles](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#text_styles),
  /// [shadows](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#shadows),
  /// [image smoothing](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#image_smoothing),
  /// [filters](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#filters),
  /// and so on.
  external void reset();

  /// The **`CanvasRenderingContext2D.isContextLost()`** method of the Canvas 2D
  /// API returns `true` if the rendering context is lost (and has not yet been
  /// reset).
  /// This might occur due to driver crashes, running out of memory, and so on.
  ///
  /// If the user agent detects that the canvas backing storage is lost it will
  /// fire the
  /// [`contextlost` event](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/contextlost_event)
  /// at the associated
  /// [`HTMLCanvasElement`](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement).
  /// If this event is not cancelled it will attempt to reset the backing
  /// storage to the default state (this is equivalent to calling
  /// [CanvasRenderingContext2D.reset]).
  /// On success it will fire the
  /// [`contextrestored` event](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/contextrestored_event),
  /// indicating that the context is ready to reinitialize and redraw.
  external bool isContextLost();

  /// The
  /// **`CanvasRenderingContext2D.scale()`**
  /// method of the Canvas 2D API adds a scaling transformation to the canvas
  /// units
  /// horizontally and/or vertically.
  ///
  /// By default, one unit on the canvas is exactly one pixel. A scaling
  /// transformation
  /// modifies this behavior. For instance, a scaling factor of 0.5 results in a
  /// unit size of
  /// 0.5 pixels; shapes are thus drawn at half the normal size. Similarly, a
  /// scaling factor
  /// of 2.0 increases the unit size so that one unit becomes two pixels; shapes
  /// are thus
  /// drawn at twice the normal size.
  external void scale(
    num x,
    num y,
  );

  /// The
  /// **`CanvasRenderingContext2D.rotate()`**
  /// method of the Canvas 2D API adds a rotation to the transformation matrix.
  external void rotate(num angle);

  /// The
  /// **`CanvasRenderingContext2D.translate()`**
  /// method of the Canvas 2D API adds a translation transformation to the
  /// current matrix.
  external void translate(
    num x,
    num y,
  );

  /// The
  /// **`CanvasRenderingContext2D.transform()`**
  /// method of the Canvas 2D API multiplies the current transformation with the
  /// matrix
  /// described by the arguments of this method. This lets you scale, rotate,
  /// translate
  /// (move), and skew the context.
  ///
  /// > **Note:** See also the
  /// > [CanvasRenderingContext2D.setTransform] method, which
  /// > resets the current transform to the identity matrix and then invokes
  /// > `transform()`.
  external void transform(
    num a,
    num b,
    num c,
    num d,
    num e,
    num f,
  );

  /// The **`CanvasRenderingContext2D.getTransform()`** method of the Canvas 2D
  /// API retrieves the current transformation matrix being applied to the
  /// context.
  external DOMMatrix getTransform();

  /// The
  /// **`CanvasRenderingContext2D.setTransform()`**
  /// method of the Canvas 2D API resets (overrides) the current transformation
  /// to the
  /// identity matrix, and then invokes a transformation described by the
  /// arguments of this
  /// method. This lets you scale, rotate, translate (move), and skew the
  /// context.
  ///
  /// > **Note:** See also the [CanvasRenderingContext2D.transform] method;
  /// > instead of overriding the current transform matrix, it
  /// > multiplies it with a given one.
  external void setTransform([
    JSAny aOrTransform,
    num b,
    num c,
    num d,
    num e,
    num f,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.resetTransform()`**
  /// method of the Canvas 2D API resets the current transform to the identity
  /// matrix.
  external void resetTransform();

  /// The
  /// **`CanvasRenderingContext2D.createLinearGradient()`**
  /// method of the Canvas 2D API creates a gradient along the line connecting
  /// two given
  /// coordinates.
  ///
  /// ![The gradient transitions colors along the gradient line, starting at
  /// point x0, y0 and going to x1, y1, even if those points extend the gradient
  /// line beyond the edges of the element on which the gradient is
  /// drawn.](mdn-canvas-lineargradient.png)
  ///
  /// This method returns a linear [CanvasGradient]. To be applied to a shape,
  /// the gradient must first be assigned to the
  /// [CanvasRenderingContext2D.fillStyle] or
  /// [CanvasRenderingContext2D.strokeStyle] properties.
  ///
  /// > **Note:** Gradient coordinates are global, i.e., relative to the current
  /// > coordinate space. When applied to a shape, the coordinates are NOT
  /// > relative to the
  /// > shape's coordinates.
  external CanvasGradient createLinearGradient(
    num x0,
    num y0,
    num x1,
    num y1,
  );

  /// The
  /// **`CanvasRenderingContext2D.createRadialGradient()`**
  /// method of the Canvas 2D API creates a radial gradient using the size and
  /// coordinates of
  /// two circles.
  ///
  /// This method returns a [CanvasGradient]. To be applied to a shape, the
  /// gradient must first be assigned to the
  /// [CanvasRenderingContext2D.fillStyle] or
  /// [CanvasRenderingContext2D.strokeStyle]
  /// properties.
  ///
  /// > **Note:** Gradient coordinates are global, i.e., relative to the current
  /// > coordinate space. When applied to a shape, the coordinates are NOT
  /// > relative to the
  /// > shape's coordinates.
  external CanvasGradient createRadialGradient(
    num x0,
    num y0,
    num r0,
    num x1,
    num y1,
    num r1,
  );

  /// The **`CanvasRenderingContext2D.createConicGradient()`** method of the
  /// Canvas 2D API creates a gradient around a point with given coordinates.
  ///
  /// This method returns a conic [CanvasGradient]. To be applied to a shape,
  /// the gradient must first be assigned to the
  /// [CanvasRenderingContext2D.fillStyle] or
  /// [CanvasRenderingContext2D.strokeStyle] properties.
  ///
  /// > **Note:** Gradient coordinates are global, i.e., relative to the current
  /// > coordinate space. When applied to a shape, the coordinates are NOT
  /// > relative to the shape's coordinates.
  external CanvasGradient createConicGradient(
    num startAngle,
    num x,
    num y,
  );

  /// The **`CanvasRenderingContext2D.createPattern()`** method of the Canvas 2D
  /// API creates a pattern using the specified image and repetition.
  /// This method returns a [CanvasPattern].
  ///
  /// This method doesn't draw anything to the canvas directly.
  /// The pattern it creates must be assigned to the
  /// [CanvasRenderingContext2D.fillStyle] or
  /// [CanvasRenderingContext2D.strokeStyle] properties, after which it is
  /// applied to any subsequent drawing.
  external CanvasPattern? createPattern(
    CanvasImageSource image,
    String repetition,
  );

  /// The
  /// **`CanvasRenderingContext2D.clearRect()`**
  /// method of the Canvas 2D API erases the pixels in a rectangular area by
  /// setting them to
  /// transparent black.
  ///
  /// > **Note:** Be aware that `clearRect()` may cause unintended
  /// > side effects if you're not
  /// > [using paths properly](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Drawing_shapes#drawing_paths).
  /// > Make sure to call
  /// > [CanvasRenderingContext2D.beginPath] before starting to
  /// > draw new items after calling `clearRect()`.
  external void clearRect(
    num x,
    num y,
    num w,
    num h,
  );

  /// The
  /// **`CanvasRenderingContext2D.fillRect()`**
  /// method of the Canvas 2D API draws a rectangle that is filled according to
  /// the current
  /// [CanvasRenderingContext2D.fillStyle].
  ///
  /// This method draws directly to the canvas without modifying the current
  /// path, so any
  /// subsequent [CanvasRenderingContext2D.fill] or
  /// [CanvasRenderingContext2D.stroke] calls will have no effect
  /// on it.
  external void fillRect(
    num x,
    num y,
    num w,
    num h,
  );

  /// The
  /// **`CanvasRenderingContext2D.strokeRect()`**
  /// method of the Canvas 2D API draws a rectangle that is stroked (outlined)
  /// according to
  /// the current [CanvasRenderingContext2D.strokeStyle] and other
  /// context settings.
  ///
  /// This method draws directly to the canvas without modifying the current
  /// path, so any
  /// subsequent [CanvasRenderingContext2D.fill] or
  /// [CanvasRenderingContext2D.stroke] calls will have no effect
  /// on it.
  external void strokeRect(
    num x,
    num y,
    num w,
    num h,
  );

  /// The
  /// **`CanvasRenderingContext2D.beginPath()`**
  /// method of the Canvas 2D API starts a new path by emptying the list of
  /// sub-paths. Call
  /// this method when you want to create a new path.
  ///
  /// > **Note:** To create a new sub-path, i.e., one matching the current
  /// > canvas state, you can use [CanvasRenderingContext2D.moveTo].
  external void beginPath();

  /// The
  /// **`CanvasRenderingContext2D.fill()`**
  /// method of the Canvas 2D API fills the current or given path with the
  /// current
  /// [CanvasRenderingContext2D.fillStyle].
  external void fill([
    JSAny fillRuleOrPath,
    CanvasFillRule fillRule,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.stroke()`**
  /// method of the Canvas 2D API strokes (outlines) the current or given path
  /// with the
  /// current stroke style.
  ///
  /// Strokes are aligned to the center of a path; in other words, half of the
  /// stroke is
  /// drawn on the inner side, and half on the outer side.
  ///
  /// The stroke is drawn using the
  /// [non-zero winding rule](https://en.wikipedia.org/wiki/Nonzero-rule), which
  /// means that path intersections will still get filled.
  external void stroke([Path2D path]);

  /// The
  /// **`CanvasRenderingContext2D.clip()`**
  /// method of the Canvas 2D API turns the current or given path into the
  /// current clipping
  /// region. The previous clipping region, if any, is intersected with the
  /// current or given
  /// path to create the new clipping region.
  ///
  /// In the image below, the red outline represents a clipping region shaped
  /// like a star.
  /// Only those parts of the checkerboard pattern that are within the clipping
  /// region get
  /// drawn.
  ///
  /// ![Star-shaped clipping region](canvas_clipping_path.png)
  ///
  /// > **Note:** Be aware that the clipping region is only constructed from
  /// > shapes added to the path. It doesn't work with shape primitives drawn
  /// > directly to the
  /// > canvas, such as [CanvasRenderingContext2D.fillRect].
  /// > Instead, you'd have to use [CanvasRenderingContext2D.rect] to
  /// > add a rectangular shape to the path before calling `clip()`.
  ///
  /// > **Note:** Clip paths cannot be reverted directly. You must save your
  /// > canvas state using [CanvasRenderingContext2D/save] before calling
  /// > `clip()`, and restore it once you have finished drawing in the clipped
  /// > area using [CanvasRenderingContext2D/restore].
  external void clip([
    JSAny fillRuleOrPath,
    CanvasFillRule fillRule,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.isPointInPath()`**
  /// method of the Canvas 2D API reports whether or not the specified point is
  /// contained in
  /// the current path.
  external bool isPointInPath(
    JSAny pathOrX,
    num xOrY, [
    JSAny fillRuleOrY,
    CanvasFillRule fillRule,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.isPointInStroke()`**
  /// method of the Canvas 2D API reports whether or not the specified point is
  /// inside the
  /// area contained by the stroking of a path.
  external bool isPointInStroke(
    JSAny pathOrX,
    num xOrY, [
    num y,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.drawFocusIfNeeded()`**
  /// method of the Canvas 2D API draws a focus ring around the current or given
  /// path, if the
  /// specified element is focused.
  external void drawFocusIfNeeded(
    JSObject elementOrPath, [
    Element element,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.scrollPathIntoView()`**
  /// method of the Canvas 2D API scrolls the current or given path into view.
  /// It is similar
  /// to [Element.scrollIntoView].
  external void scrollPathIntoView([Path2D path]);

  /// The [CanvasRenderingContext2D] method
  /// **`fillText()`**, part of the Canvas 2D API, draws a text string
  /// at the specified coordinates, filling the string's characters with the
  /// current
  /// [CanvasRenderingContext2D.fillStyle]. An optional parameter
  /// allows specifying a maximum width for the rendered text, which the  will
  /// achieve by condensing the text or by using a lower font size.
  ///
  /// This method draws directly to the canvas without modifying the current
  /// path, so any
  /// subsequent [CanvasRenderingContext2D.fill] or
  /// [CanvasRenderingContext2D.stroke] calls will have no effect
  /// on it.
  ///
  /// The text is rendered using the font and text layout configuration as
  /// defined by the
  /// [CanvasRenderingContext2D.font],
  /// [CanvasRenderingContext2D.textAlign],
  /// [CanvasRenderingContext2D.textBaseline], and
  /// [CanvasRenderingContext2D.direction] properties.
  ///
  /// > **Note:** To draw the outlines of the characters in a string, call the
  /// > context's
  /// > [CanvasRenderingContext2D.strokeText] method.
  external void fillText(
    String text,
    num x,
    num y, [
    num maxWidth,
  ]);

  /// The [CanvasRenderingContext2D] method
  /// **`strokeText()`**, part of the Canvas 2D API, strokes — that
  /// is, draws the outlines of — the characters of a text string at the
  /// specified
  /// coordinates. An optional parameter allows specifying a maximum width for
  /// the rendered
  /// text, which the  will achieve by condensing the text or by
  /// using a lower font size.
  ///
  /// This method draws directly to the canvas without modifying the current
  /// path, so any
  /// subsequent [CanvasRenderingContext2D.fill] or
  /// [CanvasRenderingContext2D.stroke] calls will have no effect
  /// on it.
  ///
  /// > **Note:** Use the [CanvasRenderingContext2D.fillText] method to
  /// > fill the text characters rather than having just their outlines drawn.
  external void strokeText(
    String text,
    num x,
    num y, [
    num maxWidth,
  ]);

  /// The
  /// `CanvasRenderingContext2D.measureText()`
  /// method returns a [TextMetrics] object that contains information about the
  /// measured text (such as its width, for example).
  external TextMetrics measureText(String text);

  /// The **`CanvasRenderingContext2D.drawImage()`** method of the
  /// Canvas 2D API provides different ways to draw an image onto the canvas.
  external void drawImage(
    CanvasImageSource image,
    num dxOrSx,
    num dyOrSy, [
    num dwOrSw,
    num dhOrSh,
    num dx,
    num dy,
    num dw,
    num dh,
  ]);

  /// The **`CanvasRenderingContext2D.createImageData()`** method of
  /// the Canvas 2D API creates a new, blank [ImageData] object with the
  /// specified dimensions. All of the pixels in the new object are transparent
  /// black.
  external ImageData createImageData(
    JSAny imagedataOrSw, [
    int sh,
    ImageDataSettings settings,
  ]);

  /// The [CanvasRenderingContext2D] method
  /// **`getImageData()`** of the Canvas 2D API returns an
  /// [ImageData] object representing the underlying pixel data for a specified
  /// portion of the canvas.
  ///
  /// This method is not affected by the canvas's transformation matrix. If the
  /// specified
  /// rectangle extends outside the bounds of the canvas, the pixels outside the
  /// canvas are
  /// transparent black in the returned `ImageData` object.
  ///
  /// > **Note:** Image data can be painted onto a canvas using the
  /// > [CanvasRenderingContext2D.putImageData] method.
  ///
  /// You can find more information about `getImageData()` and general
  /// manipulation of canvas contents in
  /// [Pixel manipulation with canvas](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Pixel_manipulation_with_canvas).
  external ImageData getImageData(
    int sx,
    int sy,
    int sw,
    int sh, [
    ImageDataSettings settings,
  ]);

  /// The **`CanvasRenderingContext2D.putImageData()`**
  /// method of the Canvas 2D API paints data from the given [ImageData] object
  /// onto the canvas. If a dirty rectangle is provided, only the pixels from
  /// that rectangle
  /// are painted. This method is not affected by the canvas transformation
  /// matrix.
  ///
  /// > **Note:** Image data can be retrieved from a canvas using the
  /// > [CanvasRenderingContext2D.getImageData] method.
  ///
  /// You can find more information about `putImageData()` and general
  /// manipulation of canvas contents in the article
  /// [Pixel manipulation with canvas](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Pixel_manipulation_with_canvas).
  external void putImageData(
    ImageData imagedata,
    int dx,
    int dy, [
    int dirtyX,
    int dirtyY,
    int dirtyWidth,
    int dirtyHeight,
  ]);

  /// The **`setLineDash()`** method of the Canvas 2D API's
  /// [CanvasRenderingContext2D] interface sets the line dash pattern used when
  /// stroking lines. It uses an array of values that specify alternating
  /// lengths of lines
  /// and gaps which describe the pattern.
  ///
  /// > **Note:** To return to using solid lines, set the line dash list to an
  /// > empty array.
  external void setLineDash(JSArray<JSNumber> segments);

  /// The **`getLineDash()`** method of the Canvas 2D API's
  /// [CanvasRenderingContext2D] interface gets the current line dash pattern.
  external JSArray<JSNumber> getLineDash();

  /// The
  /// **`CanvasRenderingContext2D.closePath()`**
  /// method of the Canvas 2D API attempts to add a straight line from the
  /// current point to
  /// the start of the current sub-path. If the shape has already been closed or
  /// has only one
  /// point, this function does nothing.
  ///
  /// This method doesn't draw anything to the canvas directly. You can render
  /// the path using
  /// the [CanvasRenderingContext2D.stroke] or
  /// [CanvasRenderingContext2D.fill] methods.
  external void closePath();

  /// The
  /// **`CanvasRenderingContext2D.moveTo()`**
  /// method of the Canvas 2D API begins a new sub-path at the point specified
  /// by the given
  /// `(x, y)` coordinates.
  external void moveTo(
    num x,
    num y,
  );

  /// The [CanvasRenderingContext2D] method
  /// **`lineTo()`**, part of the Canvas 2D API, adds a straight line
  /// to the current sub-path by connecting the sub-path's last point to the
  /// specified
  /// `(x, y)` coordinates.
  ///
  /// Like other methods that modify the current path, this method does not
  /// directly render
  /// anything. To draw the path onto a canvas, you can use the
  /// [CanvasRenderingContext2D.fill] or
  /// [CanvasRenderingContext2D.stroke] methods.
  external void lineTo(
    num x,
    num y,
  );

  /// The
  /// **`CanvasRenderingContext2D.quadraticCurveTo()`**
  /// method of the Canvas 2D API adds a quadratic [Bézier
  /// curve](/en-US/docs/Glossary/Bezier_curve) to the current
  /// sub-path. It requires two points: the first one is a control point and the
  /// second one is
  /// the end point. The starting point is the latest point in the current path,
  /// which can be
  /// changed using [CanvasRenderingContext2D.moveTo] before creating
  /// the quadratic Bézier curve.
  external void quadraticCurveTo(
    num cpx,
    num cpy,
    num x,
    num y,
  );

  /// The
  /// **`CanvasRenderingContext2D.bezierCurveTo()`**
  /// method of the Canvas 2D API adds a cubic [Bézier
  /// curve](/en-US/docs/Glossary/Bezier_curve) to the current
  /// sub-path. It requires three points: the first two are control points and
  /// the third one
  /// is the end point. The starting point is the latest point in the current
  /// path, which can
  /// be changed using [CanvasRenderingContext2D.moveTo] before
  /// creating the Bézier curve.
  external void bezierCurveTo(
    num cp1x,
    num cp1y,
    num cp2x,
    num cp2y,
    num x,
    num y,
  );

  /// The **`CanvasRenderingContext2D.arcTo()`** method of the Canvas 2D API
  /// adds a circular arc to the current sub-path, using the given control
  /// points and radius.
  /// The arc is automatically connected to the path's latest point with a
  /// straight line if necessary, for example if the starting point and control
  /// points are in a line.
  ///
  /// This method is commonly used for making rounded corners.
  ///
  /// > **Note:** You may get unexpected results when using a
  /// > relatively large radius: the arc's connecting line will go in whatever
  /// > direction it
  /// > must to meet the specified radius.
  external void arcTo(
    num x1,
    num y1,
    num x2,
    num y2,
    num radius,
  );

  /// The
  /// **`CanvasRenderingContext2D.rect()`**
  /// method of the Canvas 2D API adds a rectangle to the current path.
  ///
  /// Like other methods that modify the current path, this method does not
  /// directly render
  /// anything. To draw the rectangle onto a canvas, you can use the
  /// [CanvasRenderingContext2D.fill] or
  /// [CanvasRenderingContext2D.stroke] methods.
  ///
  /// > **Note:** To both create and render a rectangle in one step, use the
  /// > [CanvasRenderingContext2D.fillRect] or
  /// > [CanvasRenderingContext2D.strokeRect] methods.
  external void rect(
    num x,
    num y,
    num w,
    num h,
  );

  /// The **`CanvasRenderingContext2D.roundRect()`** method of the Canvas 2D API
  /// adds a rounded rectangle to the current path.
  ///
  /// The radii of the corners can be specified in much the same way as the CSS
  /// [`border-radius`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius)
  /// property.
  ///
  /// Like other methods that modify the current path, this method does not
  /// directly render anything.
  /// To draw the rounded rectangle onto a canvas, you can use the
  /// [CanvasRenderingContext2D.fill] or [CanvasRenderingContext2D.stroke]
  /// methods.
  external void roundRect(
    num x,
    num y,
    num w,
    num h, [
    JSAny radii,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.arc()`**
  /// method of the
  /// [Canvas 2D API](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D)
  /// adds a circular arc to the current sub-path.
  external void arc(
    num x,
    num y,
    num radius,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);

  /// The
  /// **`CanvasRenderingContext2D.ellipse()`**
  /// method of the Canvas 2D API adds an elliptical arc to the current
  /// sub-path.
  external void ellipse(
    num x,
    num y,
    num radiusX,
    num radiusY,
    num rotation,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);
  external HTMLCanvasElement get canvas;
  external set globalAlpha(num value);
  external num get globalAlpha;
  external set globalCompositeOperation(String value);
  external String get globalCompositeOperation;
  external set imageSmoothingEnabled(bool value);
  external bool get imageSmoothingEnabled;
  external set imageSmoothingQuality(ImageSmoothingQuality value);
  external ImageSmoothingQuality get imageSmoothingQuality;
  external set strokeStyle(JSAny value);
  external JSAny get strokeStyle;
  external set fillStyle(JSAny value);
  external JSAny get fillStyle;
  external set shadowOffsetX(num value);
  external num get shadowOffsetX;
  external set shadowOffsetY(num value);
  external num get shadowOffsetY;
  external set shadowBlur(num value);
  external num get shadowBlur;
  external set shadowColor(String value);
  external String get shadowColor;
  external set filter(String value);
  external String get filter;
  external set lineWidth(num value);
  external num get lineWidth;
  external set lineCap(CanvasLineCap value);
  external CanvasLineCap get lineCap;
  external set lineJoin(CanvasLineJoin value);
  external CanvasLineJoin get lineJoin;
  external set miterLimit(num value);
  external num get miterLimit;
  external set lineDashOffset(num value);
  external num get lineDashOffset;
  external set font(String value);
  external String get font;
  external set textAlign(CanvasTextAlign value);
  external CanvasTextAlign get textAlign;
  external set textBaseline(CanvasTextBaseline value);
  external CanvasTextBaseline get textBaseline;
  external set direction(CanvasDirection value);
  external CanvasDirection get direction;
  external set letterSpacing(String value);
  external String get letterSpacing;
  external set fontKerning(CanvasFontKerning value);
  external CanvasFontKerning get fontKerning;
  external set fontStretch(CanvasFontStretch value);
  external CanvasFontStretch get fontStretch;
  external set fontVariantCaps(CanvasFontVariantCaps value);
  external CanvasFontVariantCaps get fontVariantCaps;
  external set textRendering(CanvasTextRendering value);
  external CanvasTextRendering get textRendering;
  external set wordSpacing(String value);
  external String get wordSpacing;
}

/// The **`CanvasGradient`** interface represents an
/// [opaque object](https://en.wikipedia.org/wiki/Opaque_data_type) describing a
/// gradient. It is returned by the methods
/// [CanvasRenderingContext2D.createLinearGradient],
/// [CanvasRenderingContext2D.createConicGradient] or
/// [CanvasRenderingContext2D.createRadialGradient].
///
/// It can be used as a [CanvasRenderingContext2D.fillStyle] or
/// [CanvasRenderingContext2D.strokeStyle].
extension type CanvasGradient._(JSObject _) implements JSObject {
  /// The **`CanvasGradient.addColorStop()`** method adds a new color stop,
  /// defined by an `offset` and a `color`, to a given canvas gradient.
  external void addColorStop(
    num offset,
    String color,
  );
}

/// The **`CanvasPattern`** interface represents an
/// [opaque object](https://en.wikipedia.org/wiki/Opaque_data_type) describing a
/// pattern, based on an image, a canvas, or a video, created by the
/// [CanvasRenderingContext2D.createPattern] method.
///
/// It can be used as a [CanvasRenderingContext2D.fillStyle] or
/// [CanvasRenderingContext2D.strokeStyle].
extension type CanvasPattern._(JSObject _) implements JSObject {
  /// The **`CanvasPattern.setTransform()`** method uses a [DOMMatrix] object as
  /// the pattern's transformation matrix and invokes it on the pattern.
  external void setTransform([DOMMatrix2DInit transform]);
}

/// The **`TextMetrics`** interface represents the dimensions of a piece of text
/// in the canvas; a `TextMetrics` instance can be retrieved using the
/// [CanvasRenderingContext2D.measureText] method.
extension type TextMetrics._(JSObject _) implements JSObject {
  external num get width;
  external num get actualBoundingBoxLeft;
  external num get actualBoundingBoxRight;
  external num get fontBoundingBoxAscent;
  external num get fontBoundingBoxDescent;
  external num get actualBoundingBoxAscent;
  external num get actualBoundingBoxDescent;
  external num get emHeightAscent;
  external num get emHeightDescent;
  external num get hangingBaseline;
  external num get alphabeticBaseline;
  external num get ideographicBaseline;
}
extension type ImageDataSettings._(JSObject _) implements JSObject {
  external factory ImageDataSettings({PredefinedColorSpace colorSpace});

  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
}

/// The **`ImageData`** interface represents the underlying pixel data of an
/// area of a `canvas` element.
///
/// It is created using the [ImageData.ImageData] constructor or creator methods
/// on the [CanvasRenderingContext2D] object associated with a canvas:
/// [CanvasRenderingContext2D.createImageData] and
/// [CanvasRenderingContext2D.getImageData]. It can also be used to set a part
/// of the canvas by using [CanvasRenderingContext2D.putImageData].
extension type ImageData._(JSObject _) implements JSObject {
  external factory ImageData(
    JSAny dataOrSw,
    int shOrSw, [
    JSAny settingsOrSh,
    ImageDataSettings settings,
  ]);

  external int get width;
  external int get height;
  external JSUint8ClampedArray get data;
  external PredefinedColorSpace get colorSpace;
}

/// The **`Path2D`** interface of the Canvas 2D API is used to declare a path
/// that can then be used on a [CanvasRenderingContext2D] object. The
/// [path methods](https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D#paths)
/// of the `CanvasRenderingContext2D` interface are also present on this
/// interface, which gives you the convenience of being able to retain and
/// replay your path whenever desired.
extension type Path2D._(JSObject _) implements JSObject {
  external factory Path2D([JSAny path]);

  /// The **`Path2D.addPath()`** method
  /// of the Canvas 2D API adds one [Path2D] object to another
  /// `Path2D` object.
  external void addPath(
    Path2D path, [
    DOMMatrix2DInit transform,
  ]);
  external void closePath();
  external void moveTo(
    num x,
    num y,
  );
  external void lineTo(
    num x,
    num y,
  );
  external void quadraticCurveTo(
    num cpx,
    num cpy,
    num x,
    num y,
  );
  external void bezierCurveTo(
    num cp1x,
    num cp1y,
    num cp2x,
    num cp2y,
    num x,
    num y,
  );
  external void arcTo(
    num x1,
    num y1,
    num x2,
    num y2,
    num radius,
  );
  external void rect(
    num x,
    num y,
    num w,
    num h,
  );
  external void roundRect(
    num x,
    num y,
    num w,
    num h, [
    JSAny radii,
  ]);
  external void arc(
    num x,
    num y,
    num radius,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);
  external void ellipse(
    num x,
    num y,
    num radiusX,
    num radiusY,
    num rotation,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);
}

/// The **`ImageBitmapRenderingContext`** interface is a canvas rendering
/// context that provides the functionality to replace the canvas's contents
/// with the given [ImageBitmap]. Its context id (the first argument to
/// [HTMLCanvasElement.getContext] or [OffscreenCanvas.getContext]) is
/// `"bitmaprenderer"`.
///
/// This interface is available in both the window and the
/// [worker](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API)
/// context.
extension type ImageBitmapRenderingContext._(JSObject _) implements JSObject {
  /// The **`ImageBitmapRenderingContext.transferFromImageBitmap()`**
  /// method displays the given [ImageBitmap] in the canvas associated with this
  /// rendering context. The ownership of the `ImageBitmap` is transferred to
  /// the
  /// canvas as well.
  ///
  /// This method was previously named `transferImageBitmap()`, but was renamed
  /// in
  /// a spec change. The old name is being kept as an alias to avoid code
  /// breakage.
  external void transferFromImageBitmap(ImageBitmap? bitmap);
  external JSObject get canvas;
}
extension type ImageBitmapRenderingContextSettings._(JSObject _)
    implements JSObject {
  external factory ImageBitmapRenderingContextSettings({bool alpha});

  external set alpha(bool value);
  external bool get alpha;
}
extension type ImageEncodeOptions._(JSObject _) implements JSObject {
  external factory ImageEncodeOptions({
    String type,
    num quality,
  });

  external set type(String value);
  external String get type;
  external set quality(num value);
  external num get quality;
}

/// When using the `canvas` element or the
/// [Canvas API](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API),
/// rendering, animation, and user interaction usually happen on the main
/// execution thread of a web application.
/// The computation relating to canvas animations and rendering can have a
/// significant impact on application performance.
///
/// The **`OffscreenCanvas`** interface provides a canvas that can be rendered
/// off screen, decoupling the DOM and the Canvas API so that the `canvas`
/// element is no longer entirely dependent on the DOM.
/// Rendering operations can also be run inside a
/// [worker](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API)
/// context, allowing you to run some tasks in a separate thread and avoid heavy
/// work on the main thread.
///
/// `OffscreenCanvas` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
extension type OffscreenCanvas._(JSObject _) implements EventTarget, JSObject {
  external factory OffscreenCanvas(
    int width,
    int height,
  );

  /// The **`OffscreenCanvas.getContext()`** method returns a drawing context
  /// for an offscreen canvas, or
  /// [`null`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/null)
  /// if the context identifier is not supported.
  external OffscreenRenderingContext? getContext(
    OffscreenRenderingContextId contextId, [
    JSAny? options,
  ]);

  /// The **`OffscreenCanvas.transferToImageBitmap()`** method creates an
  /// [ImageBitmap] object from the most recently rendered image of the
  /// `OffscreenCanvas`. The `OffscreenCanvas` allocates a new image for its
  /// subsequent rendering.
  external ImageBitmap transferToImageBitmap();

  /// The **`OffscreenCanvas.convertToBlob()`** method creates a [Blob] object
  /// representing the image contained in the canvas.
  ///
  /// The desired file format and image quality may be specified.
  /// If the file format is not specified, or if the given format is not
  /// supported, then the data will be exported as `image/png`.
  /// Browsers are required to support `image/png`; many will support additional
  /// formats including `image/jpeg` and `image/webp`.
  ///
  /// The created image will have a resolution of 96dpi for file formats that
  /// support encoding resolution metadata.
  external JSPromise<Blob> convertToBlob([ImageEncodeOptions options]);
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
  external set oncontextlost(EventHandler value);
  external EventHandler get oncontextlost;
  external set oncontextrestored(EventHandler value);
  external EventHandler get oncontextrestored;
}

/// The **`OffscreenCanvasRenderingContext2D`** interface is a
/// [CanvasRenderingContext2D] rendering context for drawing to the bitmap of an
/// `OffscreenCanvas` object.
/// It is similar to the `CanvasRenderingContext2D` object, with the following
/// differences:
///
/// - there is no support for user-interface features (`drawFocusIfNeeded`, and
///   `scrollPathIntoView`)
/// - its `canvas` attribute refers to an `OffscreenCanvas` object rather than a
///   `canvas` element
/// - it has a `commit()` method for pushing rendered images to the context's
///   `OffscreenCanvas` object's placeholder `canvas` element
extension type OffscreenCanvasRenderingContext2D._(JSObject _)
    implements JSObject {
  /// The
  /// **`OffscreenCanvasRenderingContext2D.commit()`**
  /// method of the
  /// [Canvas 2D API](https://developer.mozilla.org/en-US/docs/Web/API/OffscreenCanvasRenderingContext2D)
  /// copies the rendering context's bitmap to the bitmap of the placeholder
  /// `canvas` element of the associated `OffscreenCanvas` object.
  /// The copy operation is synchronous. Calling this method is not needed for
  /// the transfer, since it happens automatically during the event-loop
  /// execution.
  external void commit();
  external void save();
  external void restore();
  external void reset();
  external bool isContextLost();
  external void scale(
    num x,
    num y,
  );
  external void rotate(num angle);
  external void translate(
    num x,
    num y,
  );
  external void transform(
    num a,
    num b,
    num c,
    num d,
    num e,
    num f,
  );
  external DOMMatrix getTransform();
  external void setTransform([
    JSAny aOrTransform,
    num b,
    num c,
    num d,
    num e,
    num f,
  ]);
  external void resetTransform();
  external CanvasGradient createLinearGradient(
    num x0,
    num y0,
    num x1,
    num y1,
  );
  external CanvasGradient createRadialGradient(
    num x0,
    num y0,
    num r0,
    num x1,
    num y1,
    num r1,
  );
  external CanvasGradient createConicGradient(
    num startAngle,
    num x,
    num y,
  );
  external CanvasPattern? createPattern(
    CanvasImageSource image,
    String repetition,
  );
  external void clearRect(
    num x,
    num y,
    num w,
    num h,
  );
  external void fillRect(
    num x,
    num y,
    num w,
    num h,
  );
  external void strokeRect(
    num x,
    num y,
    num w,
    num h,
  );
  external void beginPath();
  external void fill([
    JSAny fillRuleOrPath,
    CanvasFillRule fillRule,
  ]);
  external void stroke([Path2D path]);
  external void clip([
    JSAny fillRuleOrPath,
    CanvasFillRule fillRule,
  ]);
  external bool isPointInPath(
    JSAny pathOrX,
    num xOrY, [
    JSAny fillRuleOrY,
    CanvasFillRule fillRule,
  ]);
  external bool isPointInStroke(
    JSAny pathOrX,
    num xOrY, [
    num y,
  ]);
  external void fillText(
    String text,
    num x,
    num y, [
    num maxWidth,
  ]);
  external void strokeText(
    String text,
    num x,
    num y, [
    num maxWidth,
  ]);
  external TextMetrics measureText(String text);
  external void drawImage(
    CanvasImageSource image,
    num dxOrSx,
    num dyOrSy, [
    num dwOrSw,
    num dhOrSh,
    num dx,
    num dy,
    num dw,
    num dh,
  ]);
  external ImageData createImageData(
    JSAny imagedataOrSw, [
    int sh,
    ImageDataSettings settings,
  ]);
  external ImageData getImageData(
    int sx,
    int sy,
    int sw,
    int sh, [
    ImageDataSettings settings,
  ]);
  external void putImageData(
    ImageData imagedata,
    int dx,
    int dy, [
    int dirtyX,
    int dirtyY,
    int dirtyWidth,
    int dirtyHeight,
  ]);
  external void setLineDash(JSArray<JSNumber> segments);
  external JSArray<JSNumber> getLineDash();
  external void closePath();
  external void moveTo(
    num x,
    num y,
  );
  external void lineTo(
    num x,
    num y,
  );
  external void quadraticCurveTo(
    num cpx,
    num cpy,
    num x,
    num y,
  );
  external void bezierCurveTo(
    num cp1x,
    num cp1y,
    num cp2x,
    num cp2y,
    num x,
    num y,
  );
  external void arcTo(
    num x1,
    num y1,
    num x2,
    num y2,
    num radius,
  );
  external void rect(
    num x,
    num y,
    num w,
    num h,
  );
  external void roundRect(
    num x,
    num y,
    num w,
    num h, [
    JSAny radii,
  ]);
  external void arc(
    num x,
    num y,
    num radius,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);
  external void ellipse(
    num x,
    num y,
    num radiusX,
    num radiusY,
    num rotation,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);
  external OffscreenCanvas get canvas;
  external set globalAlpha(num value);
  external num get globalAlpha;
  external set globalCompositeOperation(String value);
  external String get globalCompositeOperation;
  external set imageSmoothingEnabled(bool value);
  external bool get imageSmoothingEnabled;
  external set imageSmoothingQuality(ImageSmoothingQuality value);
  external ImageSmoothingQuality get imageSmoothingQuality;
  external set strokeStyle(JSAny value);
  external JSAny get strokeStyle;
  external set fillStyle(JSAny value);
  external JSAny get fillStyle;
  external set shadowOffsetX(num value);
  external num get shadowOffsetX;
  external set shadowOffsetY(num value);
  external num get shadowOffsetY;
  external set shadowBlur(num value);
  external num get shadowBlur;
  external set shadowColor(String value);
  external String get shadowColor;
  external set filter(String value);
  external String get filter;
  external set lineWidth(num value);
  external num get lineWidth;
  external set lineCap(CanvasLineCap value);
  external CanvasLineCap get lineCap;
  external set lineJoin(CanvasLineJoin value);
  external CanvasLineJoin get lineJoin;
  external set miterLimit(num value);
  external num get miterLimit;
  external set lineDashOffset(num value);
  external num get lineDashOffset;
  external set font(String value);
  external String get font;
  external set textAlign(CanvasTextAlign value);
  external CanvasTextAlign get textAlign;
  external set textBaseline(CanvasTextBaseline value);
  external CanvasTextBaseline get textBaseline;
  external set direction(CanvasDirection value);
  external CanvasDirection get direction;
  external set letterSpacing(String value);
  external String get letterSpacing;
  external set fontKerning(CanvasFontKerning value);
  external CanvasFontKerning get fontKerning;
  external set fontStretch(CanvasFontStretch value);
  external CanvasFontStretch get fontStretch;
  external set fontVariantCaps(CanvasFontVariantCaps value);
  external CanvasFontVariantCaps get fontVariantCaps;
  external set textRendering(CanvasTextRendering value);
  external CanvasTextRendering get textRendering;
  external set wordSpacing(String value);
  external String get wordSpacing;
}

/// The **`CustomElementRegistry`** interface provides methods for registering
/// custom elements and querying registered elements. To get an instance of it,
/// use the [window.customElements] property.
extension type CustomElementRegistry._(JSObject _) implements JSObject {
  /// The **`define()`** method of the [CustomElementRegistry] interface adds a
  /// definition for a custom element to the custom element registry, mapping
  /// its name to the constructor which will be used to create it.
  external void define(
    String name,
    CustomElementConstructor constructor, [
    ElementDefinitionOptions options,
  ]);

  /// The **`get()`** method of the
  /// [CustomElementRegistry] interface returns the constructor for a
  /// previously-defined custom element.
  external CustomElementConstructor? get(String name);

  /// The **`getName()`** method of the
  /// [CustomElementRegistry] interface returns the name for a
  /// previously-defined custom element.
  external String? getName(CustomElementConstructor constructor);

  /// The **`whenDefined()`** method of the
  /// [CustomElementRegistry] interface returns a `Promise` that
  /// resolves when the named element is defined.
  external JSPromise<CustomElementConstructor> whenDefined(String name);

  /// The **`upgrade()`** method of the
  /// [CustomElementRegistry] interface upgrades all shadow-containing custom
  /// elements in a [Node] subtree, even before they are connected to the main
  /// document.
  external void upgrade(Node root);
}
extension type ElementDefinitionOptions._(JSObject _) implements JSObject {
  external factory ElementDefinitionOptions({String extends_});

  @JS('extends')
  external set extends_(String value);
  @JS('extends')
  external String get extends_;
}

/// The **`ElementInternals`** interface of the
/// [Document Object Model](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model)
/// gives web developers a way to allow custom elements to fully participate in
/// HTML forms. It provides utilities for working with these elements in the
/// same way you would work with any standard HTML form element, and also
/// exposes the
/// [Accessibility Object Model](https://wicg.github.io/aom/explainer.html) to
/// the element.
extension type ElementInternals._(JSObject _) implements JSObject {
  /// The **`setFormValue()`** method of the [ElementInternals] interface sets
  /// the element's submission value and state, communicating these to the user
  /// agent.
  external void setFormValue(
    JSAny? value, [
    JSAny? state,
  ]);

  /// The **`setValidity()`** method of the [ElementInternals] interface sets
  /// the validity of the element.
  external void setValidity([
    ValidityStateFlags flags,
    String message,
    HTMLElement anchor,
  ]);

  /// The **`checkValidity()`** method of the [ElementInternals] interface
  /// checks if the element meets any
  /// [constraint validation](https://developer.mozilla.org/en-US/docs/Web/HTML/Constraint_validation)
  /// rules applied to it.
  ///
  /// If `checkValidity` returns `false` then a cancelable
  /// [invalid event](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/invalid_event)
  /// is fired on the element.
  external bool checkValidity();

  /// The **`reportValidity()`** method of the [ElementInternals] interface
  /// checks if the element meets any
  /// [constraint validation](https://developer.mozilla.org/en-US/docs/Web/HTML/Constraint_validation)
  /// rules applied to it.
  ///
  /// If `reportValidity` returns `false` then a cancelable
  /// [invalid event](https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement/invalid_event)
  /// is fired on the element.
  ///
  /// This method behaves in a similar way to [ElementInternals.checkValidity],
  /// however it additionally sends the value of
  /// [ElementInternals.validationMessage] to the user agent for display.
  external bool reportValidity();
  external ShadowRoot? get shadowRoot;
  external HTMLFormElement? get form;
  external bool get willValidate;
  external ValidityState get validity;
  external String get validationMessage;
  external NodeList get labels;
  external CustomStateSet get states;
}
extension type ValidityStateFlags._(JSObject _) implements JSObject {
  external factory ValidityStateFlags({
    bool valueMissing,
    bool typeMismatch,
    bool patternMismatch,
    bool tooLong,
    bool tooShort,
    bool rangeUnderflow,
    bool rangeOverflow,
    bool stepMismatch,
    bool badInput,
    bool customError,
  });

  external set valueMissing(bool value);
  external bool get valueMissing;
  external set typeMismatch(bool value);
  external bool get typeMismatch;
  external set patternMismatch(bool value);
  external bool get patternMismatch;
  external set tooLong(bool value);
  external bool get tooLong;
  external set tooShort(bool value);
  external bool get tooShort;
  external set rangeUnderflow(bool value);
  external bool get rangeUnderflow;
  external set rangeOverflow(bool value);
  external bool get rangeOverflow;
  external set stepMismatch(bool value);
  external bool get stepMismatch;
  external set badInput(bool value);
  external bool get badInput;
  external set customError(bool value);
  external bool get customError;
}

/// The **`CustomStateSet`** interface of the
/// [Document Object Model](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model)
/// stores a list of states for an
/// [autonomous custom element](https://developer.mozilla.org/en-US/docs/Web/API/Web_components/Using_custom_elements#types_of_custom_element),
/// and allows states to be added and removed from the set.
///
/// The interface can be used to expose the internal states of a custom element,
/// allowing them to be used in CSS selectors by code that uses the element.
extension type CustomStateSet._(JSObject _) implements JSObject {}

/// The **`VisibilityStateEntry`** interface provides timings of page visibility
/// state changes, i.e., when a tab changes from the foreground to the
/// background or vice versa.
///
/// This can be used to pinpoint visibility changes on the performance timeline,
/// and cross-reference them against other performance entries such as
/// "first-contentful-paint" (see [PerformancePaintTiming]).
///
/// There are two key visibility state change times that this API reports on:
///
/// - `visible`: The time when the page becomes visible (i.e. when its tab moves
///   into the foreground).
/// - `hidden`: The time when the pages become hidden (i.e. when its tab moves
///   into the background).
///
/// The performance timeline will always have a "`visibility-state`" entry with
/// a `startTime` of `0` and a `name` representing the initial page visibility
/// state.
///
/// > **Note:** Like other Performance APIs, this API extends
/// > [PerformanceEntry].
extension type VisibilityStateEntry._(JSObject _)
    implements PerformanceEntry, JSObject {
  external String get name;
  external String get entryType;
  external DOMHighResTimeStamp get startTime;
  external int get duration;
}

/// The **`UserActivation`** interface provides information about whether a user
/// is currently interacting with the page, or has completed an interaction
/// since page load.
///
/// This API is only available in the window context and not exposed to workers.
extension type UserActivation._(JSObject _) implements JSObject {
  external bool get hasBeenActive;
  external bool get isActive;
}

/// The **`ToggleEvent`** interface represents an event notifying the user when
/// a
/// [popover element](https://developer.mozilla.org/en-US/docs/Web/API/Popover_API)'s
/// state toggles between showing and hidden.
///
/// It is the event object for the `HTMLElement`
/// [HTMLElement.beforetoggle_event] and [HTMLElement.toggle_event] events,
/// which fire on popovers when they transition between showing and hidden
/// (before and after, respectively).
///
/// > **Note:** `ToggleEvent` is unrelated to the `HTMLDetailsElement`
/// > [HTMLDetailsElement.toggle_event] event, which fires on a `details`
/// > element when its `open`/`closed` state is toggled. Its event object is a
/// > generic [Event].
extension type ToggleEvent._(JSObject _) implements Event, JSObject {
  external factory ToggleEvent(
    String type, [
    ToggleEventInit eventInitDict,
  ]);

  external String get oldState;
  external String get newState;
}
extension type ToggleEventInit._(JSObject _) implements EventInit, JSObject {
  external factory ToggleEventInit({
    String oldState,
    String newState,
  });

  external set oldState(String value);
  external String get oldState;
  external set newState(String value);
  external String get newState;
}
extension type FocusOptions._(JSObject _) implements JSObject {
  external factory FocusOptions({
    bool preventScroll,
    bool focusVisible,
  });

  external set preventScroll(bool value);
  external bool get preventScroll;
  external set focusVisible(bool value);
  external bool get focusVisible;
}
extension type CloseWatcher._(JSObject _) implements EventTarget, JSObject {
  external factory CloseWatcher([CloseWatcherOptions options]);

  external void requestClose();
  external void close();
  external void destroy();
  external set oncancel(EventHandler value);
  external EventHandler get oncancel;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
}
extension type CloseWatcherOptions._(JSObject _) implements JSObject {
  external factory CloseWatcherOptions({AbortSignal signal});

  external set signal(AbortSignal value);
  external AbortSignal get signal;
}

/// The **`DataTransfer`** object is used to hold the data that is being dragged
/// during a drag and drop operation. It may hold one or more data items, each
/// of one or more data types. For more information about drag and drop, see
/// [HTML Drag and Drop API](https://developer.mozilla.org/en-US/docs/Web/API/HTML_Drag_and_Drop_API).
///
/// This object is available from the [DragEvent.dataTransfer] property of all
/// [DragEvent].
extension type DataTransfer._(JSObject _) implements JSObject {
  external factory DataTransfer();

  /// When a drag occurs, a translucent image is generated from the drag target
  /// (the element
  /// the [HTMLElement/dragstart_event] event is fired at), and follows the
  /// mouse pointer during the
  /// drag. This image is created automatically, so you do not need to create it
  /// yourself.
  /// However, if a custom image is desired, the
  /// **`DataTransfer.setDragImage()`** method can be used to set the
  /// custom image to be used. The image will typically be an `img` element
  /// but it can also be a `canvas` or any other visible element.
  ///
  /// The method's `x` and `y` coordinates define how the image should
  /// appear relative to the mouse pointer. These coordinates define the offset
  /// into the image
  /// where the mouse cursor should be. For instance, to display the image so
  /// that the pointer
  /// is at its center, use values that are half the width and height of the
  /// image.
  ///
  /// This method must be called in the [HTMLElement/dragstart_event] event
  /// handler.
  external void setDragImage(
    Element image,
    int x,
    int y,
  );

  /// The **`DataTransfer.getData()`**
  /// method retrieves drag data (as a string) for the specified type.
  /// If the drag operation does not include data, this method returns an empty
  /// string.
  ///
  /// Example data types are `text/plain` and `text/uri-list`.
  external String getData(String format);

  /// The **`DataTransfer.setData()`** method sets the drag
  /// operation's [DataTransfer] to the specified data and type. If
  /// data for the given type does not exist, it is added at the end of the drag
  /// data store,
  /// such that the last item in the [DataTransfer.types] list will be
  /// the new type. If data for the given type already exists, the existing data
  /// is replaced
  /// in the same position. That is, the order of the
  /// [DataTransfer.types] list is not changed when replacing data of the
  /// same type.
  ///
  /// Example data types are `text/plain` and `text/uri-list`.
  external void setData(
    String format,
    String data,
  );

  /// The **`DataTransfer.clearData()`** method removes the drag
  /// operation's [DataTransfer] for the given type. If data for the
  /// given type does not exist, this method does nothing.
  ///
  /// If this method is called with no arguments or the format is an empty
  /// string, the data of all types will be removed.
  ///
  /// This method does _not_ remove files from the drag operation, so it's
  /// possible
  /// for there still to be an entry with the type `"Files"` left in the
  /// object's
  /// [DataTransfer.types] list if there are any files included in the drag.
  ///
  /// > **Note:** This method can only be used in the handler for the
  /// > [HTMLElement/dragstart_event] event,
  /// > because that's the only time the drag operation's data store is
  /// > writable.
  external void clearData([String format]);
  external set dropEffect(String value);
  external String get dropEffect;
  external set effectAllowed(String value);
  external String get effectAllowed;
  external DataTransferItemList get items;
  external JSArray<JSString> get types;
  external FileList get files;
}

/// The **`DataTransferItemList`** object is a list of [DataTransferItem]
/// objects representing items being dragged. During a _drag operation_, each
/// [DragEvent] has a [DragEvent.dataTransfer] property and that property is a
/// `DataTransferItemList`.
///
/// The individual items can be accessed using the
/// [bracket notation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Property_accessors#bracket_notation)
/// `[]`.
///
/// This interface has no constructor.
extension type DataTransferItemList._(JSObject _) implements JSObject {
  /// The **`DataTransferItemList.add()`** method creates a new
  /// [DataTransferItem] using the specified data and adds it to the drag data
  /// list. The item may be a [File] or a string of a
  /// given type. If the item is successfully added to the list, the
  /// newly-created
  /// [DataTransferItem] object is returned.
  external DataTransferItem? add(
    JSAny data, [
    String type,
  ]);

  /// The **`DataTransferItemList.remove()`** method removes the
  /// [DataTransferItem] at the specified index from the list. If the index is
  /// less than zero or greater than one less than the length of the list, the
  /// list will not
  /// be changed.
  external void remove(int index);

  /// The [DataTransferItemList] method
  /// **`clear()`** removes all [DataTransferItem]
  /// objects from the drag data items list, leaving the list empty.
  ///
  /// The drag data store in which this list is kept is only writable while
  /// handling the
  /// [HTMLElement/dragstart_event] event. While handling
  /// [HTMLElement/drop_event], the drag data store is
  /// in read-only mode, and this method silently does nothing. No exception is
  /// thrown.
  external void clear();
  external int get length;
}

/// The **`DataTransferItem`** object represents one drag data item. During a
/// _drag operation_, each [DragEvent] has a [DragEvent.dataTransfer] property
/// which contains a [DataTransferItemList] of drag data items. Each item in the
/// list is a `DataTransferItem` object.
///
/// This interface has no constructor.
extension type DataTransferItem._(JSObject _) implements JSObject {
  /// If the item described by the [DataTransferItem] is a file,
  /// `webkitGetAsEntry()` returns a [FileSystemFileEntry] or
  /// [FileSystemDirectoryEntry] representing it. If the item isn't a file,
  /// `null` is returned.
  ///
  /// > **Note:** This function is implemented as `webkitGetAsEntry()` in
  /// > non-WebKit browsers including Firefox at this time; it may be renamed to
  /// > `getAsEntry()` in the future, so you should code defensively, looking
  /// > for both.
  external FileSystemEntry? webkitGetAsEntry();

  /// The **`DataTransferItem.getAsString()`** method invokes the given callback
  /// with the drag data item's string data as the argument if the item's
  /// [DataTransferItem.kind] is a _Plain unicode string_ (i.e. `kind` is
  /// `string`).
  external void getAsString(FunctionStringCallback? callback);

  /// If the item is a file, the **`DataTransferItem.getAsFile()`** method
  /// returns the drag data item's [File] object.
  /// If the item is not a file, this method returns `null`.
  external File? getAsFile();
  external String get kind;
  external String get type;
}

/// The **`DragEvent`** interface is a [Event] that represents a drag and drop
/// interaction. The user initiates a drag by placing a pointer device (such as
/// a mouse) on the touch surface and then dragging the pointer to a new
/// location (such as another DOM element). Applications are free to interpret a
/// drag and drop interaction in an application-specific way.
///
/// This interface inherits properties from [MouseEvent] and [Event].
extension type DragEvent._(JSObject _) implements MouseEvent, JSObject {
  external factory DragEvent(
    String type, [
    DragEventInit eventInitDict,
  ]);

  external DataTransfer? get dataTransfer;
}
extension type DragEventInit._(JSObject _) implements MouseEventInit, JSObject {
  external factory DragEventInit({DataTransfer? dataTransfer});

  external set dataTransfer(DataTransfer? value);
  external DataTransfer? get dataTransfer;
}
@JS()
external Window get window;

/// The **`Window`** interface represents a window containing a  document; the
/// `document` property points to the
/// [DOM document](https://developer.mozilla.org/en-US/docs/Web/API/Document)
/// loaded in that window.
///
/// A window for a given document can be obtained using the
/// [document.defaultView] property.
///
/// A global variable, `window`, representing the window in which the script is
/// running, is exposed to JavaScript code.
///
/// The `Window` interface is home to a variety of functions, namespaces,
/// objects, and constructors which are not necessarily directly associated with
/// the concept of a user interface window. However, the `Window` interface is a
/// suitable place to include these items that need to be globally available.
/// Many of these are documented in the
/// [JavaScript Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference)
/// and the
/// [DOM Reference](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model).
///
/// In a tabbed browser, each tab is represented by its own `Window` object; the
/// global `window` seen by JavaScript code running within a given tab always
/// represents the tab in which the code is running. That said, even in a tabbed
/// browser, some properties and methods still apply to the overall window that
/// contains the tab, such as [Window.resizeTo] and [Window.innerHeight].
/// Generally, anything that can't reasonably pertain to a tab pertains to the
/// window instead.
extension type Window._(JSObject _) implements EventTarget, JSObject {
  /// The [Window] interface's **`matchMedia()`** method
  /// returns a new [MediaQueryList] object that can then be used to determine
  /// if
  /// the [document] matches the
  /// [media query](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_media_queries/Using_media_queries)
  /// string,
  /// as well as to monitor the document to detect when it matches (or stops
  /// matching) that
  /// media query.
  external MediaQueryList matchMedia(String query);

  /// The **`moveTo()`** method of the [Window]
  /// interface moves the current window to the specified coordinates.
  ///
  /// > **Note:** This function moves the window to an absolute location. In
  /// > contrast, [window.moveBy] moves the window relative to its current
  /// > location.
  external void moveTo(
    int x,
    int y,
  );

  /// The **`moveBy()`** method of the [Window]
  /// interface moves the current window by a specified amount.
  ///
  /// > **Note:** This function moves the window relative to its current
  /// > location. In contrast, [window.moveTo] moves the window to an absolute
  /// > location.
  external void moveBy(
    int x,
    int y,
  );

  /// The **`Window.resizeTo()`** method dynamically resizes the
  /// window.
  external void resizeTo(
    int width,
    int height,
  );

  /// The **`Window.resizeBy()`** method resizes the current window
  /// by a specified amount.
  external void resizeBy(
    int x,
    int y,
  );

  /// The **`Window.scroll()`** method scrolls the window to a
  /// particular place in the document.
  external void scroll([
    JSAny optionsOrX,
    num y,
  ]);

  /// **`Window.scrollTo()`** scrolls to a particular set of
  /// coordinates in the document.
  external void scrollTo([
    JSAny optionsOrX,
    num y,
  ]);

  /// The **`Window.scrollBy()`** method scrolls the document in the
  /// window by the given amount.
  external void scrollBy([
    JSAny optionsOrX,
    num y,
  ]);

  /// The
  /// **`Window.getComputedStyle()`** method returns an object
  /// containing the values of all CSS properties of an element, after applying
  /// active
  /// stylesheets and resolving any basic computation those values may contain.
  ///
  /// Individual CSS property values are accessed through APIs provided by the
  /// object, or by
  /// indexing with CSS property names.
  external CSSStyleDeclaration getComputedStyle(
    Element elt, [
    String? pseudoElt,
  ]);

  /// The **`Window.close()`** method closes the current window, or
  /// the window on which it was called.
  ///
  /// This method can only be called on windows that were opened by a script
  /// using the
  /// [Window.open] method, or on top-level windows that have a single history
  /// entry. If the window doesn't match these requirements, an error
  /// similar to this one appears in the console:
  /// `Scripts may not close windows that were not opened by script.`
  ///
  /// Note also that `close()` has no effect when called on [Window]
  /// objects returned by
  /// [`HTMLIFrameElement.contentWindow`](/en-US/docs/Web/API/HTMLIFrameElement/contentWindow).
  external void close();

  /// The **`window.stop()`** stops further resource loading in the current
  /// browsing context, equivalent to the stop button in the browser.
  ///
  /// Because of how scripts are executed, this method cannot interrupt its
  /// parent
  /// document's loading, but it will stop its images, new windows, and other
  /// still-loading
  /// objects.
  external void stop();

  /// Makes a request to bring the window to the front. It may fail due to user
  /// settings and the window isn't guaranteed to be frontmost before this
  /// method returns.
  external void focus();

  /// The **`Window.blur()`** method does nothing.
  ///
  /// > **Note:** Historically, this method was the programmatic equivalent of
  /// > the user shifting focus away
  /// > from the current window. This behavior was removed due to hostile sites
  /// > abusing this functionality.
  /// > In Firefox, you can enable the old behavior with the
  /// > `dom.disable_window_flip` preference.
  external void blur();

  /// The **`open()`** method of the
  /// [`Window`](https://developer.mozilla.org/en-US/docs/Web/API/Window)
  /// interface loads a specified resource into a new or existing browsing
  /// context (that is, a tab, a window, or an
  /// [iframe](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe))
  /// under a specified name.
  external Window? open([
    String url,
    String target,
    String features,
  ]);

  /// `window.alert()` instructs the browser to display a dialog with an
  /// optional message, and to wait until the user dismisses the dialog.
  ///
  /// Under some conditions — for example, when the user switches tabs — the
  /// browser may not actually display a dialog, or may not wait for the user to
  /// dismiss the dialog.
  external void alert([String message]);

  /// `window.confirm()` instructs the browser to display a dialog with an
  /// optional message, and to wait until the user either confirms or cancels
  /// the dialog.
  ///
  /// Under some conditions — for example, when the user switches tabs — the
  /// browser may not actually display a dialog, or may not wait for the user to
  /// confirm or cancel the dialog.
  external bool confirm([String message]);

  /// `window.prompt()` instructs the browser to display a dialog with an
  /// optional message prompting the user to input some text, and to wait until
  /// the user either submits the text or cancels the dialog.
  ///
  /// Under some conditions — for example, when the user switches tabs — the
  /// browser may not actually display a dialog, or may not wait for the user to
  /// submit text or to cancel the dialog.
  external String? prompt([
    String message,
    String default_,
  ]);

  /// Opens the print dialog to print the current document.
  ///
  /// If the document is still loading when this function is called, then the
  /// document will finish loading before opening the print dialog.
  ///
  /// This method will block while the print dialog is open.
  external void print();

  /// The **`window.postMessage()`** method safely enables
  /// cross-origin communication between [Window] objects; _e.g.,_ between
  /// a page and a pop-up that it spawned, or between a page and an iframe
  /// embedded within it.
  ///
  /// Normally, scripts on different pages are allowed to access each other if
  /// and only if
  /// the pages they originate from share the same protocol, port number, and
  /// host (also known
  /// as the
  /// "[same-origin policy](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy)").
  /// `window.postMessage()` provides a controlled mechanism to securely
  /// circumvent this restriction (if used properly).
  ///
  /// Broadly, one window may obtain a reference to another (_e.g.,_ via
  /// `targetWindow = window.opener`), and then dispatch a
  /// [MessageEvent] on it with `targetWindow.postMessage()`. The
  /// receiving window is then free to
  /// [handle this event](https://developer.mozilla.org/en-US/docs/Web/Events/Event_handlers)
  /// as needed. The arguments passed to `window.postMessage()`
  /// (_i.e.,_ the "message") are
  /// [exposed to the receiving window through the event object](#the_dispatched_event).
  external void postMessage(
    JSAny? message, [
    JSAny optionsOrTargetOrigin,
    JSArray<JSObject> transfer,
  ]);

  /// The **`Window.captureEvents()`** method does nothing.
  ///
  /// > **Note:** This is an method long removed from the specification. It is
  /// > kept in browsers to prevent code breakage but does nothing.
  external void captureEvents();

  /// Releases the window from trapping events of a specific type.
  external void releaseEvents();

  /// The **`Window.getSelection()`** method returns a
  /// [Selection] object representing the range of text selected by the user or
  /// the current position of the caret.
  external Selection? getSelection();
  external JSPromise<Response> fetch(
    RequestInfo input, [
    RequestInit init,
  ]);
  external void reportError(JSAny? e);
  external String btoa(String data);
  external String atob(String data);
  external int setTimeout(
    TimerHandler handler,
    JSAny? arguments, [
    int timeout,
  ]);
  external void clearTimeout([int id]);
  external int setInterval(
    TimerHandler handler,
    JSAny? arguments, [
    int timeout,
  ]);
  external void clearInterval([int id]);
  external void queueMicrotask(VoidFunction callback);
  external JSPromise<ImageBitmap> createImageBitmap(
    ImageBitmapSource image, [
    JSAny optionsOrSx,
    int sy,
    int sw,
    int sh,
    ImageBitmapOptions options,
  ]);
  external JSAny? structuredClone(
    JSAny? value, [
    StructuredSerializeOptions options,
  ]);

  /// The **`window.requestAnimationFrame()`** method tells the
  /// browser you wish to perform an animation. It requests the browser to call
  /// a
  /// user-supplied callback function before the next repaint.
  ///
  /// The frequency of calls to the callback function will generally match the
  /// display
  /// refresh rate. The most common refresh rate is 60hz,
  /// (60 cycles/frames per second), though 75hz, 120hz, and 144hz are also
  /// widely used.
  /// `requestAnimationFrame()` calls are paused in most browsers when running
  /// in
  /// background tabs or hidden `iframe`s, in order to improve
  /// performance and battery life.
  ///
  /// > **Note:** Your callback function must call `requestAnimationFrame()`
  /// > again if
  /// > you want to animate another frame. `requestAnimationFrame()` is
  /// > one-shot.
  ///
  /// > **Warning:** Be sure always to use the first argument (or some other
  /// > method for
  /// > getting the current time) to calculate how much the animation will
  /// > progress in
  /// > a frame — **otherwise, the animation will run faster on high
  /// > refresh-rate screens**.
  /// > For ways to do that, see the examples below.
  external int requestAnimationFrame(FrameRequestCallback callback);

  /// The **`window.cancelAnimationFrame()`** method cancels an
  /// animation frame request previously scheduled through a call to
  /// [window.requestAnimationFrame].
  external void cancelAnimationFrame(int handle);
  external Screen get screen;
  external VisualViewport? get visualViewport;
  external int get innerWidth;
  external int get innerHeight;
  external num get scrollX;
  external num get pageXOffset;
  external num get scrollY;
  external num get pageYOffset;
  external int get screenX;
  external int get screenLeft;
  external int get screenY;
  external int get screenTop;
  external int get outerWidth;
  external int get outerHeight;
  external num get devicePixelRatio;
  external Event? get event;
  external Window get window;
  external Window get self;
  external Document get document;
  external set name(String value);
  external String get name;
  external Location get location;
  external History get history;
  external Navigation get navigation;
  external CustomElementRegistry get customElements;
  external BarProp get locationbar;
  external BarProp get menubar;
  external BarProp get personalbar;
  external BarProp get scrollbars;
  external BarProp get statusbar;
  external BarProp get toolbar;
  external set status(String value);
  external String get status;
  external bool get closed;
  external Window get frames;
  external int get length;
  external Window? get top;
  external set opener(JSAny? value);
  external JSAny? get opener;
  external Window? get parent;
  external Element? get frameElement;
  external Navigator get navigator;
  external Navigator get clientInformation;
  external bool get originAgentCluster;
  external External get external;
  external set ondeviceorientation(EventHandler value);
  external EventHandler get ondeviceorientation;
  external set ondeviceorientationabsolute(EventHandler value);
  external EventHandler get ondeviceorientationabsolute;
  external set ondevicemotion(EventHandler value);
  external EventHandler get ondevicemotion;
  external SpeechSynthesis get speechSynthesis;
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
  external set ongamepadconnected(EventHandler value);
  external EventHandler get ongamepadconnected;
  external set ongamepaddisconnected(EventHandler value);
  external EventHandler get ongamepaddisconnected;
  external set onafterprint(EventHandler value);
  external EventHandler get onafterprint;
  external set onbeforeprint(EventHandler value);
  external EventHandler get onbeforeprint;
  external set onbeforeunload(OnBeforeUnloadEventHandler value);
  external OnBeforeUnloadEventHandler get onbeforeunload;
  external set onhashchange(EventHandler value);
  external EventHandler get onhashchange;
  external set onlanguagechange(EventHandler value);
  external EventHandler get onlanguagechange;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
  external set onoffline(EventHandler value);
  external EventHandler get onoffline;
  external set ononline(EventHandler value);
  external EventHandler get ononline;
  external set onpagehide(EventHandler value);
  external EventHandler get onpagehide;
  external set onpagereveal(EventHandler value);
  external EventHandler get onpagereveal;
  external set onpageshow(EventHandler value);
  external EventHandler get onpageshow;
  external set onpopstate(EventHandler value);
  external EventHandler get onpopstate;
  external set onrejectionhandled(EventHandler value);
  external EventHandler get onrejectionhandled;
  external set onstorage(EventHandler value);
  external EventHandler get onstorage;
  external set onunhandledrejection(EventHandler value);
  external EventHandler get onunhandledrejection;
  external set onunload(EventHandler value);
  external EventHandler get onunload;
  external IDBFactory get indexedDB;
  external Crypto get crypto;
  external Performance get performance;
  external String get origin;
  external bool get isSecureContext;
  external bool get crossOriginIsolated;
  external CacheStorage get caches;
  external TrustedTypePolicyFactory get trustedTypes;
  external Storage get sessionStorage;
  external Storage get localStorage;
}
extension type WindowPostMessageOptions._(JSObject _)
    implements StructuredSerializeOptions, JSObject {
  external factory WindowPostMessageOptions({String targetOrigin});

  external set targetOrigin(String value);
  external String get targetOrigin;
}

/// The **`BarProp`** interface of the [Document Object Model] represents the
/// web browser user interface elements that are exposed to scripts in web
/// pages. Each of the following interface elements are represented by a
/// `BarProp` object.
///
/// - [Window.locationbar]
///   - : The browser location bar.
/// - [Window.menubar]
///   - : The browser menu bar.
/// - [Window.personalbar]
///   - : The browser personal bar.
/// - [Window.scrollbars]
///   - : The browser scrollbars.
/// - [Window.statusbar]
///   - : The browser status bar.
/// - [Window.toolbar]
///   - : The browser toolbar.
///
/// The `BarProp` interface is not accessed directly, but via one of these
/// elements.
extension type BarProp._(JSObject _) implements JSObject {
  external bool get visible;
}

/// The **`Location`** interface represents the location (URL) of the object it
/// is linked to. Changes done on it are reflected on the object it relates to.
/// Both the [Document] and [Window] interface have such a linked `Location`,
/// accessible via [Document.location] and [Window.location] respectively.
extension type Location._(JSObject _) implements JSObject {
  /// The **`assign()`** method of the [Location]
  /// interface causes the window to load
  /// and display the document at the URL specified. After the navigation
  /// occurs, the user can
  /// navigate back to the page that called `Location.assign()` by pressing the
  /// "back" button.
  external void assign(String url);

  /// The **`replace()`** method of the [Location]
  /// interface replaces the current resource with the one at the provided URL.
  /// The difference
  /// from the [Location.assign] method is that after using
  /// `replace()` the current page will not be saved in session [History],
  /// meaning the user won't be able to use the _back_ button to navigate to it.
  external void replace(String url);

  /// The **`reload()`** method of the [Location] interface reloads the current
  /// URL, like the Refresh button.
  external void reload();
  external set href(String value);
  external String get href;
  external String get origin;
  external set protocol(String value);
  external String get protocol;
  external set host(String value);
  external String get host;
  external set hostname(String value);
  external String get hostname;
  external set port(String value);
  external String get port;
  external set pathname(String value);
  external String get pathname;
  external set search(String value);
  external String get search;
  external set hash(String value);
  external String get hash;
  external DOMStringList get ancestorOrigins;
}

/// The **`History`** interface of the [History API] allows manipulation of the
/// browser _session history_, that is the pages visited in the tab or frame
/// that the current page is loaded in.
///
/// There is only one instance of `history` (It is a _singleton_.) accessible
/// via the global object [Window.history].
///
/// > **Note:** This interface is only available on the main thread ([Window]).
/// > It cannot be accessed in [Worker] or [Worklet] contexts.
extension type History._(JSObject _) implements JSObject {
  /// The **`go()`** method of the [History] interface loads a specific page
  /// from the
  /// session history. You can use it to move forwards and backwards through the
  /// history
  /// depending on the value of a parameter.
  ///
  /// This method is . Add a listener for the
  /// [Window/popstate_event] event in order to determine when the navigation
  /// has completed.
  external void go([int delta]);

  /// The **`back()`** method of the [History] interface causes
  /// the browser to move back one page in the session history.
  ///
  /// It has the same
  /// effect as calling . If there is no previous
  /// page, this method call does nothing.
  ///
  /// This method is . Add a listener for the
  /// [Window/popstate_event] event in order to determine when the navigation
  /// has completed.
  external void back();

  /// The **`forward()`** method of the [History] interface causes the browser
  /// to move
  /// forward one page in the session history. It has the same effect as calling
  /// [History.go].
  ///
  /// This method is . Add a listener for the [Window/popstate_event] event in
  /// order to determine when the navigation has completed.
  external void forward();

  /// The **`pushState()`** method of the [History] interface adds an entry to
  /// the browser's
  /// session history stack.
  external void pushState(
    JSAny? data,
    String unused, [
    String? url,
  ]);

  /// The **`replaceState()`** method of the [History] interface modifies the
  /// current
  /// history entry, replacing it with the state object and
  /// URL passed in the method parameters. This method is particularly useful
  /// when you want to update the state object or URL of the current history
  /// entry in response
  /// to some user action.
  external void replaceState(
    JSAny? data,
    String unused, [
    String? url,
  ]);
  external int get length;
  external set scrollRestoration(ScrollRestoration value);
  external ScrollRestoration get scrollRestoration;
  external JSAny? get state;
}

/// The **`Navigation`** interface of the [Navigation API] allows control over
/// all navigation actions for the current `window` in one central place,
/// including initiating navigations programmatically, examining navigation
/// history entries, and managing navigations as they happen.
///
/// It is accessed via the [Window.navigation] property.
///
/// The Navigation API only exposes history entries created in the current
/// browsing context that have the same origin as the current page (e.g. not
/// navigations inside embedded `iframe`s, or cross-origin navigations),
/// providing an accurate list of all previous history entries just for your
/// app. This makes traversing the history a much less fragile proposition than
/// with the older [History API].
extension type Navigation._(JSObject _) implements EventTarget, JSObject {
  /// The **`entries()`** method of the
  /// [Navigation] interface returns an array of [NavigationHistoryEntry]
  /// objects representing all existing history entries.
  external JSArray<NavigationHistoryEntry> entries();

  /// The **`updateCurrentEntry()`** method of the [Navigation] interface
  /// updates the `state` of the [Navigation.currentEntry]; used in cases where
  /// the state change will be independent of a navigation or reload.
  external void updateCurrentEntry(NavigationUpdateCurrentEntryOptions options);

  /// The **`navigate()`** method of the
  /// [Navigation] interface navigates to a specific URL, updating any provided
  /// state in the history entries list.
  external NavigationResult navigate(
    String url, [
    NavigationNavigateOptions options,
  ]);

  /// The **`reload()`** method of the
  /// [Navigation] interface reloads the current URL, updating any provided
  /// state in the history entries list.
  external NavigationResult reload([NavigationReloadOptions options]);

  /// The **`traverseTo()`** method of the [Navigation] interface navigates to
  /// the [NavigationHistoryEntry] identified by the given
  /// [NavigationHistoryEntry.key].
  external NavigationResult traverseTo(
    String key, [
    NavigationOptions options,
  ]);

  /// The **`back()`** method of the
  /// [Navigation] interface navigates backwards by one entry in the navigation
  /// history.
  external NavigationResult back([NavigationOptions options]);

  /// The **`forward()`** method of the
  /// [Navigation] interface navigates forwards by one entry in the navigation
  /// history.
  external NavigationResult forward([NavigationOptions options]);
  external NavigationHistoryEntry? get currentEntry;
  external NavigationTransition? get transition;
  external NavigationActivation? get activation;
  external bool get canGoBack;
  external bool get canGoForward;
  external set onnavigate(EventHandler value);
  external EventHandler get onnavigate;
  external set onnavigatesuccess(EventHandler value);
  external EventHandler get onnavigatesuccess;
  external set onnavigateerror(EventHandler value);
  external EventHandler get onnavigateerror;
  external set oncurrententrychange(EventHandler value);
  external EventHandler get oncurrententrychange;
}
extension type NavigationUpdateCurrentEntryOptions._(JSObject _)
    implements JSObject {
  external factory NavigationUpdateCurrentEntryOptions({required JSAny? state});

  external set state(JSAny? value);
  external JSAny? get state;
}
extension type NavigationOptions._(JSObject _) implements JSObject {
  external factory NavigationOptions({JSAny? info});

  external set info(JSAny? value);
  external JSAny? get info;
}
extension type NavigationNavigateOptions._(JSObject _)
    implements NavigationOptions, JSObject {
  external factory NavigationNavigateOptions({
    JSAny? state,
    NavigationHistoryBehavior history,
  });

  external set state(JSAny? value);
  external JSAny? get state;
  external set history(NavigationHistoryBehavior value);
  external NavigationHistoryBehavior get history;
}
extension type NavigationReloadOptions._(JSObject _)
    implements NavigationOptions, JSObject {
  external factory NavigationReloadOptions({JSAny? state});

  external set state(JSAny? value);
  external JSAny? get state;
}
extension type NavigationResult._(JSObject _) implements JSObject {
  external factory NavigationResult({
    JSPromise<NavigationHistoryEntry> committed,
    JSPromise<NavigationHistoryEntry> finished,
  });

  external set committed(JSPromise<NavigationHistoryEntry> value);
  external JSPromise<NavigationHistoryEntry> get committed;
  external set finished(JSPromise<NavigationHistoryEntry> value);
  external JSPromise<NavigationHistoryEntry> get finished;
}

/// The **`NavigationHistoryEntry`** interface of the [Navigation API]
/// represents a single navigation history entry.
///
/// These objects are commonly accessed via the [Navigation.currentEntry]
/// property and [Navigation.entries] method.
///
/// The Navigation API only exposes history entries created in the current
/// browsing context that have the same origin as the current page (e.g. not
/// navigations inside embedded `iframe`s, or cross-origin navigations),
/// providing an accurate list of all previous history entries just for your
/// app. This makes traversing the history a much less fragile proposition than
/// with the older [History API].
extension type NavigationHistoryEntry._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`getState()`** method of the [NavigationHistoryEntry] interface
  /// returns a clone of the developer-supplied state associated with this
  /// history entry.
  external JSAny? getState();
  external String? get url;
  external String get key;
  external String get id;
  external int get index;
  external bool get sameDocument;
  external set ondispose(EventHandler value);
  external EventHandler get ondispose;
}

/// The **`NavigationTransition`** interface of the [Navigation API] represents
/// an ongoing navigation, that is, a navigation that hasn't yet reached the
/// [Navigation/navigatesuccess_event] or [Navigation/navigateerror_event]
/// stage.
///
/// It is accessed via the [Navigation.transition] property.
extension type NavigationTransition._(JSObject _) implements JSObject {
  external NavigationType get navigationType;
  external NavigationHistoryEntry get from;
  external JSPromise<JSAny?> get finished;
}
extension type NavigationActivation._(JSObject _) implements JSObject {
  external NavigationHistoryEntry? get from;
  external NavigationHistoryEntry get entry;
  external NavigationType get navigationType;
}

/// The **`NavigateEvent`** interface of the [Navigation API] is the event
/// object for the [Navigation/navigate_event] event, which fires when
/// [any type of navigation](https://github.com/WICG/navigation-api#appendix-types-of-navigations)
/// is initiated (this includes usage of [History API] features like
/// [History.go]). `NavigateEvent` provides access to information about that
/// navigation, and allows developers to intercept and control the navigation
/// handling.
extension type NavigateEvent._(JSObject _) implements Event, JSObject {
  external factory NavigateEvent(
    String type,
    NavigateEventInit eventInitDict,
  );

  /// The **`intercept()`** method of the
  /// [NavigateEvent] interface intercepts this navigation, turning it into a
  /// same-document navigation to the [NavigationDestination.url] URL.
  external void intercept([NavigationInterceptOptions options]);

  /// The **`scroll()`** method of the
  /// [NavigateEvent] interface can be called to manually trigger the
  /// browser-driven scrolling behavior that occurs in response to the
  /// navigation, if you want it to happen before the navigation handling has
  /// completed.
  external void scroll();
  external NavigationType get navigationType;
  external NavigationDestination get destination;
  external bool get canIntercept;
  external bool get userInitiated;
  external bool get hashChange;
  external AbortSignal get signal;
  external FormData? get formData;
  external String? get downloadRequest;
  external JSAny? get info;
  external bool get hasUAVisualTransition;
}
extension type NavigateEventInit._(JSObject _) implements EventInit, JSObject {
  external factory NavigateEventInit({
    NavigationType navigationType,
    required NavigationDestination destination,
    bool canIntercept,
    bool userInitiated,
    bool hashChange,
    required AbortSignal signal,
    FormData? formData,
    String? downloadRequest,
    JSAny? info,
    bool hasUAVisualTransition,
  });

  external set navigationType(NavigationType value);
  external NavigationType get navigationType;
  external set destination(NavigationDestination value);
  external NavigationDestination get destination;
  external set canIntercept(bool value);
  external bool get canIntercept;
  external set userInitiated(bool value);
  external bool get userInitiated;
  external set hashChange(bool value);
  external bool get hashChange;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
  external set formData(FormData? value);
  external FormData? get formData;
  external set downloadRequest(String? value);
  external String? get downloadRequest;
  external set info(JSAny? value);
  external JSAny? get info;
  external set hasUAVisualTransition(bool value);
  external bool get hasUAVisualTransition;
}
extension type NavigationInterceptOptions._(JSObject _) implements JSObject {
  external factory NavigationInterceptOptions({
    NavigationInterceptHandler handler,
    NavigationFocusReset focusReset,
    NavigationScrollBehavior scroll,
  });

  external set handler(NavigationInterceptHandler value);
  external NavigationInterceptHandler get handler;
  external set focusReset(NavigationFocusReset value);
  external NavigationFocusReset get focusReset;
  external set scroll(NavigationScrollBehavior value);
  external NavigationScrollBehavior get scroll;
}

/// The **`NavigationDestination`** interface of the [Navigation API] represents
/// the destination being navigated to in the current navigation.
///
/// It is accessed via the [NavigateEvent.destination] property.
extension type NavigationDestination._(JSObject _) implements JSObject {
  /// The **`getState()`** method of the
  /// [NavigationDestination] interface returns a clone of the
  /// developer-supplied state associated with the destination
  /// [NavigationHistoryEntry], or navigation operation (e.g.
  /// [Navigation.navigate]) as appropriate.
  external JSAny? getState();
  external String get url;
  external String get key;
  external String get id;
  external int get index;
  external bool get sameDocument;
}

/// The **`NavigationCurrentEntryChangeEvent`** interface of the
/// [Navigation API] is the event object for the
/// [Navigation/currententrychange_event] event, which fires when the
/// [Navigation.currentEntry] has changed.
///
/// This event will fire for same-document navigations (e.g. [Navigation.back]
/// or [Navigation.traverseTo]), replacements (i.e. a [Navigation.navigate] call
/// with `history` set to `replace`), or other calls that change the entry's
/// state (e.g. [Navigation.updateCurrentEntry], or the [History API]'s
/// [History.replaceState]).
///
/// This event fires after the navigation is committed, meaning that the visible
/// URL has changed and the [NavigationHistoryEntry] update has occurred. It is
/// useful for migrating from usage of older API features like the
/// [Window/hashchange_event] or [Window/popstate_event] events.
extension type NavigationCurrentEntryChangeEvent._(JSObject _)
    implements Event, JSObject {
  external factory NavigationCurrentEntryChangeEvent(
    String type,
    NavigationCurrentEntryChangeEventInit eventInitDict,
  );

  external NavigationType? get navigationType;
  external NavigationHistoryEntry get from;
}
extension type NavigationCurrentEntryChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory NavigationCurrentEntryChangeEventInit({
    NavigationType? navigationType,
    required NavigationHistoryEntry from,
  });

  external set navigationType(NavigationType? value);
  external NavigationType? get navigationType;
  external set from(NavigationHistoryEntry value);
  external NavigationHistoryEntry get from;
}

/// **`PopStateEvent`** is an interface for the
/// [`popstate`](https://developer.mozilla.org/en-US/docs/Web/API/Window/popstate_event)
/// event.
///
/// A `popstate` event is dispatched to the window every time the active history
/// entry changes between two history entries for the same document. If the
/// history entry
/// being activated was created by a call to `history.pushState()` or was
/// affected by a call to `history.replaceState()`, the `popstate`
/// event's `state` property contains a copy of the history entry's state
/// object.
extension type PopStateEvent._(JSObject _) implements Event, JSObject {
  external factory PopStateEvent(
    String type, [
    PopStateEventInit eventInitDict,
  ]);

  external JSAny? get state;
  external bool get hasUAVisualTransition;
}
extension type PopStateEventInit._(JSObject _) implements EventInit, JSObject {
  external factory PopStateEventInit({
    JSAny? state,
    bool hasUAVisualTransition,
  });

  external set state(JSAny? value);
  external JSAny? get state;
  external set hasUAVisualTransition(bool value);
  external bool get hasUAVisualTransition;
}

/// The **`HashChangeEvent`** interface represents events that fire when the
/// fragment identifier of the URL has changed.
///
/// The fragment identifier is the part of the URL that follows (and includes)
/// the `#` symbol.
extension type HashChangeEvent._(JSObject _) implements Event, JSObject {
  external factory HashChangeEvent(
    String type, [
    HashChangeEventInit eventInitDict,
  ]);

  external String get oldURL;
  external String get newURL;
}
extension type HashChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory HashChangeEventInit({
    String oldURL,
    String newURL,
  });

  external set oldURL(String value);
  external String get oldURL;
  external set newURL(String value);
  external String get newURL;
}
extension type PageRevealEvent._(JSObject _) implements Event, JSObject {
  external factory PageRevealEvent(
    String type, [
    PageRevealEventInit eventInitDict,
  ]);

  external ViewTransition? get viewTransition;
}
extension type PageRevealEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PageRevealEventInit({ViewTransition? viewTransition});

  external set viewTransition(ViewTransition? value);
  external ViewTransition? get viewTransition;
}

/// The **`PageTransitionEvent`** event object is available inside handler
/// functions for the
/// [`pageshow`](https://developer.mozilla.org/en-US/docs/Web/API/Window/pageshow_event)
/// and
/// [`pagehide`](https://developer.mozilla.org/en-US/docs/Web/API/Window/pagehide_event)
/// events, fired when a document is being loaded or unloaded.
extension type PageTransitionEvent._(JSObject _) implements Event, JSObject {
  external factory PageTransitionEvent(
    String type, [
    PageTransitionEventInit eventInitDict,
  ]);

  external bool get persisted;
}
extension type PageTransitionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PageTransitionEventInit({bool persisted});

  external set persisted(bool value);
  external bool get persisted;
}

/// The **`BeforeUnloadEvent`** interface represents the event object for the
/// [Window/beforeunload_event] event, which is fired when the current window,
/// contained document, and associated resources are about to be unloaded.
///
/// See the [Window/beforeunload_event] event reference for detailed guidance on
/// using this event.
extension type BeforeUnloadEvent._(JSObject _) implements Event, JSObject {
  external set returnValue(String value);
  external String get returnValue;
}

/// The **`ErrorEvent`** interface represents events providing information
/// related to errors in scripts or in files.
extension type ErrorEvent._(JSObject _) implements Event, JSObject {
  external factory ErrorEvent(
    String type, [
    ErrorEventInit eventInitDict,
  ]);

  external String get message;
  external String get filename;
  external int get lineno;
  external int get colno;
  external JSAny? get error;
}
extension type ErrorEventInit._(JSObject _) implements EventInit, JSObject {
  external factory ErrorEventInit({
    String message,
    String filename,
    int lineno,
    int colno,
    JSAny? error,
  });

  external set message(String value);
  external String get message;
  external set filename(String value);
  external String get filename;
  external set lineno(int value);
  external int get lineno;
  external set colno(int value);
  external int get colno;
  external set error(JSAny? value);
  external JSAny? get error;
}

/// The **`PromiseRejectionEvent`** interface represents events which are sent
/// to the global script context when JavaScript `Promise`s are rejected. These
/// events are particularly useful for telemetry and debugging purposes.
///
/// For details, see
/// [Promise rejection events](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises#promise_rejection_events).
extension type PromiseRejectionEvent._(JSObject _) implements Event, JSObject {
  external factory PromiseRejectionEvent(
    String type,
    PromiseRejectionEventInit eventInitDict,
  );

  external JSObject get promise;
  external JSAny? get reason;
}
extension type PromiseRejectionEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PromiseRejectionEventInit({
    required JSObject promise,
    JSAny? reason,
  });

  external set promise(JSObject value);
  external JSObject get promise;
  external set reason(JSAny? value);
  external JSAny? get reason;
}

/// The **`DOMParser`** interface provides
/// the ability to parse  or  source code from a
/// string into a DOM [Document].
///
/// You can perform the opposite operation—converting a DOM tree into XML or
/// HTML
/// source—using the [XMLSerializer] interface.
///
/// In the case of an HTML document, you can also replace portions of the DOM
/// with new DOM
/// trees built from HTML by setting the value of the [Element.innerHTML] and
/// [Element.outerHTML] properties. These properties can also be
/// read to fetch HTML fragments corresponding to the corresponding DOM subtree.
///
/// Note that [XMLHttpRequest] can parse XML and HTML directly
/// from a URL-addressable resource, returning a `Document` in its
/// [XMLHttpRequest.response] property.
///
/// > **Note:** Be aware that
/// > [block-level elements](https://developer.mozilla.org/en-US/docs/Glossary/Block-level_content)
/// > like `<p>` will be automatically closed if another
/// > block-level element is nested inside and therefore parsed before the
/// > closing `</p>` tag.
extension type DOMParser._(JSObject _) implements JSObject {
  external factory DOMParser();

  /// The **`parseFromString()`** method of the [DOMParser] interface parses a
  /// string containing either HTML or XML, returning an [HTMLDocument] or an
  /// [XMLDocument].
  external Document parseFromString(
    String string,
    DOMParserSupportedType type,
  );
}

/// The **`Navigator`** interface represents the state and the identity of the
/// user agent. It allows scripts to query it and to register themselves to
/// carry on some activities.
///
/// A `Navigator` object can be retrieved using the read-only [window.navigator]
/// property.
extension type Navigator._(JSObject _) implements JSObject {
  /// The **`Navigator.requestMediaKeySystemAccess()`** method
  /// returns a `Promise` which delivers a [MediaKeySystemAccess]
  /// object that can be used to access a particular media key system, which can
  /// in turn be
  /// used to create keys for decrypting a media stream. This method is part of
  /// the
  /// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API),
  /// which brings support for encrypted media and DRM-protected video to the
  /// web.
  ///
  /// This method may have user-visible effects such as asking for permission to
  /// access one
  /// or more system resources. Consider that when deciding when to call
  /// `requestMediaKeySystemAccess()`; you don't want those requests
  /// to happen at inconvenient times. As a general rule, this function should
  /// be called only
  /// when it's about time to create and use a [MediaKeys] object by calling the
  /// returned [MediaKeySystemAccess] object's
  /// [MediaKeySystemAccess.createMediaKeys] method.
  external JSPromise<MediaKeySystemAccess> requestMediaKeySystemAccess(
    String keySystem,
    JSArray<MediaKeySystemConfiguration> supportedConfigurations,
  );

  /// The **`Navigator.getGamepads()`** method returns an array of
  /// [Gamepad] objects, one for each gamepad connected to the device.
  ///
  /// Elements in the array may be `null` if a gamepad disconnects during a
  /// session, so that the remaining gamepads retain the same index.
  external JSArray<Gamepad?> getGamepads();

  /// The deprecated **`Navigator.getUserMedia()`** method prompts the user for
  /// permission to use up to one video input device (such as a camera or shared
  /// screen) and up to one audio input device (such as a microphone) as the
  /// source for a [MediaStream].
  ///
  /// If permission is granted, a `MediaStream` whose video and/or audio tracks
  /// come from those devices is delivered to the specified success callback.
  /// If permission is denied, no compatible input devices exist, or any other
  /// error condition occurs, the error callback is executed with an object
  /// describing what went wrong.
  /// If the user instead doesn't make a choice at all, neither callback is
  /// executed.
  ///
  /// > **Note:** This is a legacy method.
  /// > Please use the newer [MediaDevices.getUserMedia] instead.
  /// > While technically not deprecated, this old callback version is marked as
  /// > such, since the specification strongly encourages using the newer
  /// > promise returning version.
  external void getUserMedia(
    MediaStreamConstraints constraints,
    NavigatorUserMediaSuccessCallback successCallback,
    NavigatorUserMediaErrorCallback errorCallback,
  );

  /// The **`Navigator.vibrate()`** method pulses the vibration
  /// hardware on the device, if such hardware exists. If the device doesn't
  /// support
  /// vibration, this method has no effect. If a vibration pattern is already in
  /// progress when
  /// this method is called, the previous pattern is halted and the new one
  /// begins instead.
  ///
  /// If the method was unable to vibrate because of invalid parameters, it will
  /// return
  /// `false`, else it returns `true`. If the pattern leads to a too
  /// long vibration, it is truncated: the max length depends on the
  /// implementation.
  external bool vibrate(VibratePattern pattern);

  /// The **`Navigator.taintEnabled()`** method always returns
  /// `false`.
  ///
  /// Tainting was a security method used by JavaScript 1.2. It has long been
  /// removed; this
  /// method only stays for maintaining compatibility with very old scripts.
  external bool taintEnabled();

  /// The **[Navigator]** method **`registerProtocolHandler()`** lets websites
  /// register their ability to open or handle particular URL schemes (aka
  /// protocols).
  ///
  /// For example, this API lets webmail sites open `mailto:` URLs, or VoIP
  /// sites open `tel:` URLs.
  external void registerProtocolHandler(
    String scheme,
    String url,
  );

  /// The **[Navigator]** method **`unregisterProtocolHandler()`** removes a
  /// protocol handler for a given URL [scheme](#permitted_schemes).
  ///
  /// This method is the inverse of **`registerProtocolHandler()`**.
  external void unregisterProtocolHandler(
    String scheme,
    String url,
  );

  /// This method always returns false.
  external bool javaEnabled();
  external Clipboard get clipboard;
  external CredentialsContainer get credentials;
  external Geolocation get geolocation;
  external UserActivation get userActivation;
  external MediaCapabilities get mediaCapabilities;
  external MediaDevices get mediaDevices;
  external MediaSession get mediaSession;
  external Permissions get permissions;
  external int get maxTouchPoints;
  external WakeLock get wakeLock;
  external ServiceWorkerContainer get serviceWorker;
  external String get appCodeName;
  external String get appName;
  external String get appVersion;
  external String get platform;
  external String get product;
  external String get productSub;
  external String get userAgent;
  external String get vendor;
  external String get vendorSub;
  external String get oscpu;
  external String get language;
  external JSArray<JSString> get languages;
  external bool get onLine;
  external bool get cookieEnabled;
  external PluginArray get plugins;
  external MimeTypeArray get mimeTypes;
  external bool get pdfViewerEnabled;
  external int get hardwareConcurrency;
  external StorageManager get storage;
  external LockManager get locks;
}

/// The `PluginArray` interface is used to store a list of [Plugin] objects
/// describing the available
/// [plugins](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/Plugins);
/// it's returned by the [Navigator.plugins] property. The `PluginArray` is not
/// a JavaScript array, but has the `length` property and supports accessing
/// individual items using bracket notation (`plugins[2]`), as well as via
/// `item(index)` and `namedItem("name")` methods.
///
/// > **Note:** Own properties of `PluginArray` objects are no longer enumerable
/// > in the latest browser versions.
extension type PluginArray._(JSObject _) implements JSObject {
  external void refresh();
  external Plugin? item(int index);
  external Plugin? namedItem(String name);
  external int get length;
}

/// The **`MimeTypeArray`** interface returns an array of [MimeType] instances,
/// each of which contains information about a supported browser plugins. This
/// object is returned by [Navigator.mimeTypes].
///
/// > **Note:** This interface was an
/// > [attempt to create an unmodifiable list](https://stackoverflow.com/questions/74630989/why-use-domstringlist-rather-than-an-array/74641156#74641156)
/// > and only continues to be supported to not break code that's already using
/// > it. Modern APIs use types that wrap around ECMAScript array types instead,
/// > so you can treat them like ECMAScript arrays, and at the same time impose
/// > additional semantics on their usage (such as making their items
/// > read-only).
extension type MimeTypeArray._(JSObject _) implements JSObject {
  external MimeType? item(int index);
  external MimeType? namedItem(String name);
  external int get length;
}

/// The `Plugin` interface provides information about a browser plugin.
///
/// > **Note:** Own properties of `Plugin` objects are no longer enumerable in
/// > the latest browser versions.
extension type Plugin._(JSObject _) implements JSObject {
  external MimeType? item(int index);
  external MimeType? namedItem(String name);
  external String get name;
  external String get description;
  external String get filename;
  external int get length;
}

/// The **`MimeType`** interface provides contains information about a MIME type
/// associated with a particular plugin. [Navigator.mimeTypes] returns an array
/// of this object.
extension type MimeType._(JSObject _) implements JSObject {
  external String get type;
  external String get description;
  external String get suffixes;
  external Plugin get enabledPlugin;
}

/// The **`ImageBitmap`** interface represents a bitmap image which can be drawn
/// to a `canvas` without undue latency. It can be created from a variety of
/// source objects using the [createImageBitmap] factory method. `ImageBitmap`
/// provides an asynchronous and resource efficient pathway to prepare textures
/// for rendering in WebGL.
///
/// `ImageBitmap` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
extension type ImageBitmap._(JSObject _) implements JSObject {
  /// The **`ImageBitmap.close()`**
  /// method disposes of all graphical resources associated with an
  /// `ImageBitmap`.
  external void close();
  external int get width;
  external int get height;
}
extension type ImageBitmapOptions._(JSObject _) implements JSObject {
  external factory ImageBitmapOptions({
    ImageOrientation imageOrientation,
    PremultiplyAlpha premultiplyAlpha,
    ColorSpaceConversion colorSpaceConversion,
    int resizeWidth,
    int resizeHeight,
    ResizeQuality resizeQuality,
  });

  external set imageOrientation(ImageOrientation value);
  external ImageOrientation get imageOrientation;
  external set premultiplyAlpha(PremultiplyAlpha value);
  external PremultiplyAlpha get premultiplyAlpha;
  external set colorSpaceConversion(ColorSpaceConversion value);
  external ColorSpaceConversion get colorSpaceConversion;
  external set resizeWidth(int value);
  external int get resizeWidth;
  external set resizeHeight(int value);
  external int get resizeHeight;
  external set resizeQuality(ResizeQuality value);
  external ResizeQuality get resizeQuality;
}

/// The **`MessageEvent`** interface represents a message received by a target
/// object.
///
/// This is used to represent messages in:
///
/// - [Server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events)
///   (see [EventSource.message_event]).
/// - [Web sockets](https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_API)
///   (see the `onmessage` property of the
///   [WebSocket](https://developer.mozilla.org/en-US/docs/Web/API/WebSocket)
///   interface).
/// - Cross-document messaging (see [Window.postMessage] and
///   [Window.message_event]).
/// - [Channel messaging](https://developer.mozilla.org/en-US/docs/Web/API/Channel_Messaging_API)
///   (see [MessagePort.postMessage] and [MessagePort.message_event]).
/// - Cross-worker/document messaging (see the above two entries, but also
///   [Worker.postMessage], [Worker.message_event],
///   [ServiceWorkerGlobalScope.message_event], etc.)
/// - [Broadcast channels](https://developer.mozilla.org/en-US/docs/Web/API/Broadcast_Channel_API)
///   (see [BroadcastChannel.postMessage]) and
///   [BroadcastChannel.message_event]).
/// - WebRTC data channels (see [RTCDataChannel.message_event]).
///
/// The action triggered by this event is defined in a function set as the event
/// handler for the relevant `message` event (e.g. using an `onmessage` handler
/// as listed above).
extension type MessageEvent._(JSObject _) implements Event, JSObject {
  external factory MessageEvent(
    String type, [
    MessageEventInit eventInitDict,
  ]);

  external void initMessageEvent(
    String type, [
    bool bubbles,
    bool cancelable,
    JSAny? data,
    String origin,
    String lastEventId,
    MessageEventSource? source,
    JSArray<MessagePort> ports,
  ]);
  external JSAny? get data;
  external String get origin;
  external String get lastEventId;
  external MessageEventSource? get source;
  external JSArray<MessagePort> get ports;
}
extension type MessageEventInit._(JSObject _) implements EventInit, JSObject {
  external factory MessageEventInit({
    JSAny? data,
    String origin,
    String lastEventId,
    MessageEventSource? source,
    JSArray<MessagePort> ports,
  });

  external set data(JSAny? value);
  external JSAny? get data;
  external set origin(String value);
  external String get origin;
  external set lastEventId(String value);
  external String get lastEventId;
  external set source(MessageEventSource? value);
  external MessageEventSource? get source;
  external set ports(JSArray<MessagePort> value);
  external JSArray<MessagePort> get ports;
}

/// The **`EventSource`** interface is web content's interface to
/// [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events).
///
/// An `EventSource` instance opens a persistent connection to an
/// [HTTP](https://developer.mozilla.org/en-US/docs/Web/HTTP) server, which
/// sends
/// [events](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/Events)
/// in `text/event-stream` format. The connection remains open until closed by
/// calling [EventSource.close].
///
/// Once the connection is opened, incoming messages from the server are
/// delivered to your code in the form of events. If there is an event field in
/// the incoming message, the triggered event is the same as the event field
/// value. If no event field is present, then a generic
/// [EventSource/message_event] event is fired.
///
/// Unlike
/// [WebSockets](https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_API),
/// server-sent events are unidirectional; that is, data messages are delivered
/// in one direction, from the server to the client (such as a user's web
/// browser). That makes them an excellent choice when there's no need to send
/// data from the client to the server in message form. For example,
/// `EventSource` is a useful approach for handling things like social media
/// status updates, news feeds, or delivering data into a
/// [client-side storage](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Client-side_web_APIs/Client-side_storage)
/// mechanism like
/// [IndexedDB](https://developer.mozilla.org/en-US/docs/Web/API/IndexedDB_API)
/// or
/// [web storage](https://developer.mozilla.org/en-US/docs/Web/API/Web_Storage_API).
///
/// > **Warning:** When **not used over HTTP/2**, SSE suffers from a limitation
/// > to the maximum number of open connections, which can be specially painful
/// > when opening various tabs as the limit is _per browser_ and set to a very
/// > low number (6). The issue has been marked as "Won't fix" in
/// > [Chrome](https://crbug.com/275955) and
/// > [Firefox](https://bugzil.la/906896). This limit is per browser + domain,
/// > so that means that you can open 6 SSE connections across all of the tabs
/// > to `www.example1.com` and another 6 SSE connections to `www.example2.com`.
/// > (from
/// > [Stackoverflow](https://stackoverflow.com/questions/5195452/websockets-vs-server-sent-events-eventsource/5326159)).
/// > When using HTTP/2, the maximum number of simultaneous _HTTP streams_ is
/// > negotiated between the server and the client (defaults to 100).
extension type EventSource._(JSObject _) implements EventTarget, JSObject {
  external factory EventSource(
    String url, [
    EventSourceInit eventSourceInitDict,
  ]);

  external static int get CONNECTING;
  external static int get OPEN;
  external static int get CLOSED;

  /// The **`close()`** method of the [EventSource]
  /// interface closes the connection, if one is made, and sets the
  /// [EventSource.readyState] attribute to `2` (closed).
  ///
  /// > **Note:** If the connection is already closed, the method does nothing.
  external void close();
  external String get url;
  external bool get withCredentials;
  external int get readyState;
  external set onopen(EventHandler value);
  external EventHandler get onopen;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}
extension type EventSourceInit._(JSObject _) implements JSObject {
  external factory EventSourceInit({bool withCredentials});

  external set withCredentials(bool value);
  external bool get withCredentials;
}

/// The **`MessageChannel`** interface of the
/// [Channel Messaging API](https://developer.mozilla.org/en-US/docs/Web/API/Channel_Messaging_API)
/// allows us to create a new message channel and send data through it via its
/// two [MessagePort] properties.
extension type MessageChannel._(JSObject _) implements JSObject {
  external factory MessageChannel();

  external MessagePort get port1;
  external MessagePort get port2;
}

/// The **`MessagePort`** interface of the
/// [Channel Messaging API](https://developer.mozilla.org/en-US/docs/Web/API/Channel_Messaging_API)
/// represents one of the two ports of a [MessageChannel], allowing messages to
/// be sent from one port and listening out for them arriving at the other.
///
/// `MessagePort` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
extension type MessagePort._(JSObject _) implements EventTarget, JSObject {
  /// The **`postMessage()`** method of the
  /// [MessagePort] interface sends a message from the port, and optionally,
  /// transfers ownership of objects to other browsing contexts.
  external void postMessage(
    JSAny? message, [
    JSObject optionsOrTransfer,
  ]);

  /// The **`start()`** method of the [MessagePort]
  /// interface starts the sending of messages queued on the port. This method
  /// is only needed
  /// when using [EventTarget.addEventListener]; it is implied when using
  /// [MessagePort.message_event].
  external void start();

  /// The **`close()`** method of the [MessagePort]
  /// interface disconnects the port, so it is no longer active. This stops the
  /// flow of
  /// messages to that port.
  external void close();
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
}
extension type StructuredSerializeOptions._(JSObject _) implements JSObject {
  external factory StructuredSerializeOptions({JSArray<JSObject> transfer});

  external set transfer(JSArray<JSObject> value);
  external JSArray<JSObject> get transfer;
}

/// The **`BroadcastChannel`** interface represents a named channel that any  of
/// a given  can subscribe to. It allows communication between different
/// documents (in different windows, tabs, frames or iframes) of the same
/// origin. Messages are broadcasted via a [BroadcastChannel/message_event]
/// event fired at all `BroadcastChannel` objects listening to the channel,
/// except the object that sent the message.
extension type BroadcastChannel._(JSObject _) implements EventTarget, JSObject {
  external factory BroadcastChannel(String name);

  /// The **`BroadcastChannel.postMessage()`** sends a message,
  /// which can be of any kind of `Object`,
  /// to each listener in any  with the same .
  /// The message is transmitted as a
  /// ['message'](/en-US/docs/Web/API/BroadcastChannel/message_event) event
  /// targeted at each [BroadcastChannel] bound to the channel.
  external void postMessage(JSAny? message);

  /// The **`BroadcastChannel.close()`** terminates the connection to
  /// the underlying channel, allowing the object to be garbage collected.
  /// This is a necessary step to perform
  /// as there is no other way for a browser to know
  /// that this channel is not needed anymore.
  external void close();
  external String get name;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
}

/// The **`WorkerGlobalScope`** interface of the
/// [Web Workers API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API)
/// is an interface representing the scope of any worker. Workers have no
/// browsing context; this scope contains the information usually conveyed by
/// [Window] objects — in this case event handlers, the console or the
/// associated [WorkerNavigator] object. Each `WorkerGlobalScope` has its own
/// event loop.
///
/// This interface is usually specialized by each worker type:
/// [DedicatedWorkerGlobalScope] for dedicated workers,
/// [SharedWorkerGlobalScope] for shared workers, and [ServiceWorkerGlobalScope]
/// for
/// [ServiceWorker](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API).
/// The `self` property returns the specialized scope for each context.
extension type WorkerGlobalScope._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`importScripts()`** method of the [WorkerGlobalScope] interface
  /// synchronously imports one or more scripts into the worker's scope.
  external void importScripts(String urls);
  external JSPromise<Response> fetch(
    RequestInfo input, [
    RequestInit init,
  ]);
  external void reportError(JSAny? e);
  external String btoa(String data);
  external String atob(String data);
  external int setTimeout(
    TimerHandler handler,
    JSAny? arguments, [
    int timeout,
  ]);
  external void clearTimeout([int id]);
  external int setInterval(
    TimerHandler handler,
    JSAny? arguments, [
    int timeout,
  ]);
  external void clearInterval([int id]);
  external void queueMicrotask(VoidFunction callback);
  external JSPromise<ImageBitmap> createImageBitmap(
    ImageBitmapSource image, [
    JSAny optionsOrSx,
    int sy,
    int sw,
    int sh,
    ImageBitmapOptions options,
  ]);
  external JSAny? structuredClone(
    JSAny? value, [
    StructuredSerializeOptions options,
  ]);
  external WorkerGlobalScope get self;
  external WorkerLocation get location;
  external WorkerNavigator get navigator;
  external set onerror(OnErrorEventHandler value);
  external OnErrorEventHandler get onerror;
  external set onlanguagechange(EventHandler value);
  external EventHandler get onlanguagechange;
  external set onoffline(EventHandler value);
  external EventHandler get onoffline;
  external set ononline(EventHandler value);
  external EventHandler get ononline;
  external set onrejectionhandled(EventHandler value);
  external EventHandler get onrejectionhandled;
  external set onunhandledrejection(EventHandler value);
  external EventHandler get onunhandledrejection;
  external FontFaceSet get fonts;
  external IDBFactory get indexedDB;
  external Crypto get crypto;
  external Performance get performance;
  external String get origin;
  external bool get isSecureContext;
  external bool get crossOriginIsolated;
  external CacheStorage get caches;
  external TrustedTypePolicyFactory get trustedTypes;
}

/// The **`DedicatedWorkerGlobalScope`** object (the [Worker] global scope) is
/// accessible through the [WorkerGlobalScope.self] keyword. Some additional
/// global functions, namespaces objects, and constructors, not typically
/// associated with the worker global scope, but available on it, are listed in
/// the
/// [JavaScript Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference).
/// See also:
/// [Functions available to workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Functions_and_classes_available_to_workers).
extension type DedicatedWorkerGlobalScope._(JSObject _)
    implements WorkerGlobalScope, JSObject {
  /// The **`postMessage()`** method of the [DedicatedWorkerGlobalScope]
  /// interface sends a message to the main thread that spawned it.
  ///
  /// This accepts a data parameter, which contains data to copy from the worker
  /// to the main thread.
  /// The data may be any value or JavaScript object handled by the
  /// [structured clone](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Structured_clone_algorithm)
  /// algorithm, which includes cyclical references.
  ///
  /// The method also accepts an optional array of
  /// [transferable objects](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects)
  /// to _transfer_ to the main thread;
  /// Unlike the data parameter transferred objects are no longer usable in the
  /// worker thread.
  /// (Where possible, objects are transferred using a high performance
  /// zero-copy operation).
  ///
  /// The main scope that spawned the worker can send back information to the
  /// thread that spawned it using the [Worker.postMessage] method.
  external void postMessage(
    JSAny? message, [
    JSObject optionsOrTransfer,
  ]);

  /// The **`close()`** method of the [DedicatedWorkerGlobalScope] interface
  /// discards any tasks queued in the `DedicatedWorkerGlobalScope`'s event
  /// loop, effectively closing this particular scope.
  external void close();

  /// The **`requestAnimationFrame()`** method of the
  /// [DedicatedWorkerGlobalScope] interface tells the browser you wish to
  /// perform an animation frame request and call a user-supplied callback
  /// function before the next repaint.
  ///
  /// The frequency of calls to the callback function will generally match the
  /// display refresh rate. The most common refresh rate is 60 Hz, (60
  /// cycles/frames per second), though 75 Hz, 120 Hz, and 144 Hz are also
  /// widely used. `requestAnimationFrame()` calls are paused in most browsers
  /// when running in background tabs or hidden `iframe`s, to improve
  /// performance and battery life.
  ///
  /// A call to the `requestAnimationFrame()` method schedules only one single
  /// call to the callback function. If you want to animate another frame, your
  /// callback function must call `requestAnimationFrame()` again.
  ///
  /// > **Warning:** Be sure always to use the first argument (or some other
  /// > method for getting the current time) to calculate how much the animation
  /// > will progress in a frame — **otherwise, the animation will run faster on
  /// > high refresh-rate screens**. For ways to do that, see the examples
  /// > below.
  ///
  /// Calling the `requestAnimationFrame()` method requires the current worker
  /// to have an associated owner [Window]. That means that the current worker
  /// must be created by [Window] or by a dedicated worker that also has an
  /// associated owner [Window].
  external int requestAnimationFrame(FrameRequestCallback callback);

  /// The **`cancelAnimationFrame()`** method of the
  /// [DedicatedWorkerGlobalScope] interface cancels an animation frame request
  /// previously scheduled through a call to
  /// [DedicatedWorkerGlobalScope.requestAnimationFrame].
  ///
  /// Calling the `cancelAnimationFrame()` method requires the current worker to
  /// have an associated owner [Window]. That means that the current worker must
  /// be created by [Window] or by a dedicated worker that also has an
  /// associated owner [Window].
  external void cancelAnimationFrame(int handle);
  external String get name;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
  external set onrtctransform(EventHandler value);
  external EventHandler get onrtctransform;
}

/// The **`SharedWorkerGlobalScope`** object (the [SharedWorker] global scope)
/// is accessible through the [window.self] keyword. Some additional global
/// functions, namespaces objects, and constructors, not typically associated
/// with the worker global scope, but available on it, are listed in the
/// [JavaScript Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference).
/// See the complete list of
/// [functions available to workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Functions_and_classes_available_to_workers).
extension type SharedWorkerGlobalScope._(JSObject _)
    implements WorkerGlobalScope, JSObject {
  /// The **`close()`** method of the [SharedWorkerGlobalScope] interface
  /// discards any tasks queued in the `SharedWorkerGlobalScope`'s event loop,
  /// effectively closing this particular scope.
  external void close();
  external String get name;
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
}

/// The **`Worker`** interface of the
/// [Web Workers API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API)
/// represents a background task that can be created via script, which can send
/// messages back to its creator.
///
/// Creating a worker is done by calling the `Worker("path/to/worker/script")`
/// constructor.
///
/// Workers may themselves spawn new workers, as long as those workers are
/// hosted at the same
/// [origin](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy)
/// as the parent page.
///
/// Note that not all interfaces and functions are available to web workers. See
/// [Functions and classes available to Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Functions_and_classes_available_to_workers)
/// for details.
extension type Worker._(JSObject _) implements EventTarget, JSObject {
  external factory Worker(
    String scriptURL, [
    WorkerOptions options,
  ]);

  /// The **`terminate()`** method of the [Worker] interface immediately
  /// terminates the [Worker]. This does not offer the worker an opportunity to
  /// finish its operations; it is stopped at once.
  external void terminate();

  /// The **`postMessage()`** method of the [Worker] interface sends a message
  /// to the worker. The first parameter is the data to send to the worker. The
  /// data may be any JavaScript object that can be handled by the
  /// [structured clone algorithm](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Structured_clone_algorithm).
  ///
  /// The [Worker] `postMessage()` method delegates to the [MessagePort]
  /// [MessagePort.postMessage] method, which adds a task on the event loop
  /// corresponding to the receiving [MessagePort].
  ///
  /// The `Worker` can send back information to the thread that spawned it using
  /// the [DedicatedWorkerGlobalScope.postMessage] method.
  external void postMessage(
    JSAny? message, [
    JSObject optionsOrTransfer,
  ]);
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}
extension type WorkerOptions._(JSObject _) implements JSObject {
  external factory WorkerOptions({
    WorkerType type,
    RequestCredentials credentials,
    String name,
  });

  external set type(WorkerType value);
  external WorkerType get type;
  external set credentials(RequestCredentials value);
  external RequestCredentials get credentials;
  external set name(String value);
  external String get name;
}

/// The **`SharedWorker`** interface represents a specific kind of worker that
/// can be _accessed_ from several browsing contexts, such as several windows,
/// iframes or even workers. They implement an interface different than
/// dedicated workers and have a different global scope,
/// [SharedWorkerGlobalScope].
///
/// > **Note:** If SharedWorker can be accessed from several browsing contexts,
/// > all those browsing contexts must share the exact same origin (same
/// > protocol, host and port).
extension type SharedWorker._(JSObject _) implements EventTarget, JSObject {
  external factory SharedWorker(
    String scriptURL, [
    JSAny options,
  ]);

  external MessagePort get port;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}

/// The **`WorkerNavigator`** interface represents a subset of the [Navigator]
/// interface allowed to be accessed from a [Worker]. Such an object is
/// initialized for each worker and is available via the
/// [WorkerGlobalScope.navigator] property.
extension type WorkerNavigator._(JSObject _) implements JSObject {
  external bool taintEnabled();
  external MediaCapabilities get mediaCapabilities;
  external Permissions get permissions;
  external ServiceWorkerContainer get serviceWorker;
  external String get appCodeName;
  external String get appName;
  external String get appVersion;
  external String get platform;
  external String get product;
  external String get productSub;
  external String get userAgent;
  external String get vendor;
  external String get vendorSub;
  external String get oscpu;
  external String get language;
  external JSArray<JSString> get languages;
  external bool get onLine;
  external int get hardwareConcurrency;
  external StorageManager get storage;
  external LockManager get locks;
}

/// The **`WorkerLocation`** interface defines the absolute location of the
/// script executed by the [Worker]. Such an object is initialized for each
/// worker and is available via the [WorkerGlobalScope.location] property
/// obtained by calling `self.location`.
///
/// This interface is only visible from inside a JavaScript script executed in
/// the context of a Web worker.
extension type WorkerLocation._(JSObject _) implements JSObject {
  external String get href;
  external String get origin;
  external String get protocol;
  external String get host;
  external String get hostname;
  external String get port;
  external String get pathname;
  external String get search;
  external String get hash;
}

/// The **`WorkletGlobalScope`** interface is an abstract class that specific
/// worklet scope classes inherit from. Each `WorkletGlobalScope` defines a new
/// global environment.
///
/// > **Note:** You don't normally need to interact with this interface. It is a
/// > base interface intended to be subclassed. You will encounter the
/// > subclasses [AudioWorkletGlobalScope] inside [AudioWorklet] objects, or
/// > [PaintWorkletGlobalScope] inside CSS paint [Worklet] objects.
extension type WorkletGlobalScope._(JSObject _) implements JSObject {}

/// The **`Worklet`** interface is a lightweight version of [Worker] and gives
/// developers access to low-level parts of the rendering pipeline.
///
/// With Worklets, you can run JavaScript and
/// [WebAssembly](https://developer.mozilla.org/en-US/docs/WebAssembly) code to
/// do graphics rendering or audio processing where high performance is
/// required.
///
/// Worklets allow static import of
/// [ECMAScript modules](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules),
/// if supported, using
/// [`import`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import).
/// Dynamic import is disallowed by the specification — calling
/// [`import()`](/en-US/docs/Web/JavaScript/Reference/Operators/import) will
/// throw.
extension type Worklet._(JSObject _) implements JSObject {
  /// The **`addModule()`** method of the
  /// [Worklet] interface loads the module in the given JavaScript file and
  /// adds it to the current `Worklet`.
  external JSPromise<JSAny?> addModule(
    String moduleURL, [
    WorkletOptions options,
  ]);
}
extension type WorkletOptions._(JSObject _) implements JSObject {
  external factory WorkletOptions({RequestCredentials credentials});

  external set credentials(RequestCredentials value);
  external RequestCredentials get credentials;
}

/// The **`Storage`** interface of the
/// [Web Storage API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Storage_API)
/// provides access to a particular domain's session or local storage. It
/// allows, for example, the addition, modification, or deletion of stored data
/// items.
///
/// To manipulate, for instance, the session storage for a domain, a call to
/// [Window.sessionStorage] is made; whereas for local storage the call is made
/// to [Window.localStorage].
extension type Storage._(JSObject _) implements JSObject {
  /// The **`key()`** method of the [Storage] interface,
  /// when passed a number n, returns the name of the nth key in a given
  /// `Storage`
  /// object. The order of keys is user-agent defined, so you should not rely on
  /// it.
  external String? key(int index);

  /// The **`getItem()`** method of the [Storage]
  /// interface, when passed a key name, will return that key's value, or `null`
  /// if
  /// the key does not exist, in the given `Storage` object.
  external String? getItem(String key);

  /// The **`setItem()`** method of the [Storage]
  /// interface, when passed a key name and value, will add that key to the
  /// given
  /// `Storage` object, or update that key's value if it already exists.
  external void setItem(
    String key,
    String value,
  );

  /// The **`removeItem()`** method of the [Storage]
  /// interface, when passed a key name, will remove that key from the given
  /// `Storage` object if it exists.
  /// The **`Storage`** interface of the
  /// [Web Storage API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Storage_API)
  /// provides access to a
  /// particular domain's session or local storage.
  ///
  /// If there is no item associated with the given key, this method will do
  /// nothing.
  external void removeItem(String key);

  /// The **`clear()`** method of the [Storage]
  /// interface clears all keys stored in a given `Storage` object.
  external void clear();
  external int get length;
}

/// The **`StorageEvent`** interface is implemented by the
/// [Window/storage_event] event, which is
/// sent to a window
/// when a storage area the window has access to is changed within the context
/// of another document.
extension type StorageEvent._(JSObject _) implements Event, JSObject {
  external factory StorageEvent(
    String type, [
    StorageEventInit eventInitDict,
  ]);

  /// The **`StorageEvent.initStorageEvent()`** method is used to initialize the
  /// value of a [StorageEvent].
  external void initStorageEvent(
    String type, [
    bool bubbles,
    bool cancelable,
    String? key,
    String? oldValue,
    String? newValue,
    String url,
    Storage? storageArea,
  ]);
  external String? get key;
  external String? get oldValue;
  external String? get newValue;
  external String get url;
  external Storage? get storageArea;
}
extension type StorageEventInit._(JSObject _) implements EventInit, JSObject {
  external factory StorageEventInit({
    String? key,
    String? oldValue,
    String? newValue,
    String url,
    Storage? storageArea,
  });

  external set key(String? value);
  external String? get key;
  external set oldValue(String? value);
  external String? get oldValue;
  external set newValue(String? value);
  external String? get newValue;
  external set url(String value);
  external String get url;
  external set storageArea(Storage? value);
  external Storage? get storageArea;
}

/// The **`HTMLMarqueeElement`** interface provides methods to manipulate
/// `marquee` elements.
///
/// It inherits properties and methods from the [HTMLElement] interface.
extension type HTMLMarqueeElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLMarqueeElement] using the tag 'marquee'.
  HTMLMarqueeElement() : _ = document.createElement('marquee');

  external void start();
  external void stop();
  external set behavior(String value);
  external String get behavior;
  external set bgColor(String value);
  external String get bgColor;
  external set direction(String value);
  external String get direction;
  external set height(String value);
  external String get height;
  external set hspace(int value);
  external int get hspace;
  external set loop(int value);
  external int get loop;
  external set scrollAmount(int value);
  external int get scrollAmount;
  external set scrollDelay(int value);
  external int get scrollDelay;
  external set trueSpeed(bool value);
  external bool get trueSpeed;
  external set vspace(int value);
  external int get vspace;
  external set width(String value);
  external String get width;
}

/// The **`HTMLFrameSetElement`** interface provides special properties (beyond
/// those of the regular [HTMLElement] interface they also inherit) for
/// manipulating `frameset` elements.
extension type HTMLFrameSetElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLFrameSetElement] using the tag 'frameset'.
  HTMLFrameSetElement() : _ = document.createElement('frameset');

  external set cols(String value);
  external String get cols;
  external set rows(String value);
  external String get rows;
  external set ongamepadconnected(EventHandler value);
  external EventHandler get ongamepadconnected;
  external set ongamepaddisconnected(EventHandler value);
  external EventHandler get ongamepaddisconnected;
  external set onafterprint(EventHandler value);
  external EventHandler get onafterprint;
  external set onbeforeprint(EventHandler value);
  external EventHandler get onbeforeprint;
  external set onbeforeunload(OnBeforeUnloadEventHandler value);
  external OnBeforeUnloadEventHandler get onbeforeunload;
  external set onhashchange(EventHandler value);
  external EventHandler get onhashchange;
  external set onlanguagechange(EventHandler value);
  external EventHandler get onlanguagechange;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
  external set onoffline(EventHandler value);
  external EventHandler get onoffline;
  external set ononline(EventHandler value);
  external EventHandler get ononline;
  external set onpagehide(EventHandler value);
  external EventHandler get onpagehide;
  external set onpagereveal(EventHandler value);
  external EventHandler get onpagereveal;
  external set onpageshow(EventHandler value);
  external EventHandler get onpageshow;
  external set onpopstate(EventHandler value);
  external EventHandler get onpopstate;
  external set onrejectionhandled(EventHandler value);
  external EventHandler get onrejectionhandled;
  external set onstorage(EventHandler value);
  external EventHandler get onstorage;
  external set onunhandledrejection(EventHandler value);
  external EventHandler get onunhandledrejection;
  external set onunload(EventHandler value);
  external EventHandler get onunload;
}
extension type HTMLFrameElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLFrameElement] using the tag 'frame'.
  HTMLFrameElement() : _ = document.createElement('frame');

  external set name(String value);
  external String get name;
  external set scrolling(String value);
  external String get scrolling;
  external set src(String value);
  external String get src;
  external set frameBorder(String value);
  external String get frameBorder;
  external set longDesc(String value);
  external String get longDesc;
  external set noResize(bool value);
  external bool get noResize;
  external Document? get contentDocument;
  external Window? get contentWindow;
  external set marginHeight(String value);
  external String get marginHeight;
  external set marginWidth(String value);
  external String get marginWidth;
}
extension type HTMLDirectoryElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLDirectoryElement] using the tag 'dir'.
  HTMLDirectoryElement() : _ = document.createElement('dir');

  external set compact(bool value);
  external bool get compact;
}

/// Implements the document object model (DOM) representation of the font
/// element. The HTML Font Element `font` defines the font size, font face and
/// color of text.
extension type HTMLFontElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLFontElement] using the tag 'font'.
  HTMLFontElement() : _ = document.createElement('font');

  external set color(String value);
  external String get color;
  external set face(String value);
  external String get face;
  external set size(String value);
  external String get size;
}

/// The **`HTMLParamElement`** interface provides special properties (beyond
/// those of the regular [HTMLElement] object interface it inherits) for
/// manipulating `param` elements, representing a pair of a key and a value that
/// acts as a parameter for an `object` element.
extension type HTMLParamElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates an [HTMLParamElement] using the tag 'param'.
  HTMLParamElement() : _ = document.createElement('param');

  external set name(String value);
  external String get name;
  external set value(String value);
  external String get value;
  external set type(String value);
  external String get type;
  external set valueType(String value);
  external String get valueType;
}
extension type External._(JSObject _) implements JSObject {
  external void AddSearchProvider();
  external void IsSearchProviderInstalled();
}
