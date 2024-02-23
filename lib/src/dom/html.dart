// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
extension type HTMLAllCollection._(JSObject _) implements JSObject {
  external JSObject? namedItem(String name);
  external JSObject? item([String nameOrIndex]);
  external int get length;
}
extension type HTMLFormControlsCollection._(JSObject _)
    implements HTMLCollection, JSObject {
  external JSObject? namedItem(String name);
}
extension type RadioNodeList._(JSObject _) implements NodeList, JSObject {
  external set value(String value);
  external String get value;
}
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
extension type DOMStringList._(JSObject _) implements JSObject {
  external String? item(int index);
  external bool contains(String string);
  external int get length;
}
extension type HTMLElement._(JSObject _) implements Element, JSObject {
  /// Creates a(n) [HTMLElement] using the tag 'article'.
  HTMLElement.article() : _ = document.createElement('article');

  /// Creates a(n) [HTMLElement] using the tag 'section'.
  HTMLElement.section() : _ = document.createElement('section');

  /// Creates a(n) [HTMLElement] using the tag 'nav'.
  HTMLElement.nav() : _ = document.createElement('nav');

  /// Creates a(n) [HTMLElement] using the tag 'aside'.
  HTMLElement.aside() : _ = document.createElement('aside');

  /// Creates a(n) [HTMLElement] using the tag 'hgroup'.
  HTMLElement.hgroup() : _ = document.createElement('hgroup');

  /// Creates a(n) [HTMLElement] using the tag 'header'.
  HTMLElement.header() : _ = document.createElement('header');

  /// Creates a(n) [HTMLElement] using the tag 'footer'.
  HTMLElement.footer() : _ = document.createElement('footer');

  /// Creates a(n) [HTMLElement] using the tag 'address'.
  HTMLElement.address() : _ = document.createElement('address');

  /// Creates a(n) [HTMLElement] using the tag 'dt'.
  HTMLElement.dt() : _ = document.createElement('dt');

  /// Creates a(n) [HTMLElement] using the tag 'dd'.
  HTMLElement.dd() : _ = document.createElement('dd');

  /// Creates a(n) [HTMLElement] using the tag 'figure'.
  HTMLElement.figure() : _ = document.createElement('figure');

  /// Creates a(n) [HTMLElement] using the tag 'figcaption'.
  HTMLElement.figcaption() : _ = document.createElement('figcaption');

  /// Creates a(n) [HTMLElement] using the tag 'main'.
  HTMLElement.main() : _ = document.createElement('main');

  /// Creates a(n) [HTMLElement] using the tag 'search'.
  HTMLElement.search() : _ = document.createElement('search');

  /// Creates a(n) [HTMLElement] using the tag 'em'.
  HTMLElement.em() : _ = document.createElement('em');

  /// Creates a(n) [HTMLElement] using the tag 'strong'.
  HTMLElement.strong() : _ = document.createElement('strong');

  /// Creates a(n) [HTMLElement] using the tag 'small'.
  HTMLElement.small() : _ = document.createElement('small');

  /// Creates a(n) [HTMLElement] using the tag 's'.
  HTMLElement.s() : _ = document.createElement('s');

  /// Creates a(n) [HTMLElement] using the tag 'cite'.
  HTMLElement.cite() : _ = document.createElement('cite');

  /// Creates a(n) [HTMLElement] using the tag 'dfn'.
  HTMLElement.dfn() : _ = document.createElement('dfn');

  /// Creates a(n) [HTMLElement] using the tag 'abbr'.
  HTMLElement.abbr() : _ = document.createElement('abbr');

  /// Creates a(n) [HTMLElement] using the tag 'ruby'.
  HTMLElement.ruby() : _ = document.createElement('ruby');

  /// Creates a(n) [HTMLElement] using the tag 'rt'.
  HTMLElement.rt() : _ = document.createElement('rt');

  /// Creates a(n) [HTMLElement] using the tag 'rp'.
  HTMLElement.rp() : _ = document.createElement('rp');

  /// Creates a(n) [HTMLElement] using the tag 'code'.
  HTMLElement.code() : _ = document.createElement('code');

  /// Creates a(n) [HTMLElement] using the tag 'var'.
  HTMLElement.var_() : _ = document.createElement('var');

  /// Creates a(n) [HTMLElement] using the tag 'samp'.
  HTMLElement.samp() : _ = document.createElement('samp');

  /// Creates a(n) [HTMLElement] using the tag 'kbd'.
  HTMLElement.kbd() : _ = document.createElement('kbd');

  /// Creates a(n) [HTMLElement] using the tag 'sub'.
  HTMLElement.sub() : _ = document.createElement('sub');

  /// Creates a(n) [HTMLElement] using the tag 'sup'.
  HTMLElement.sup() : _ = document.createElement('sup');

  /// Creates a(n) [HTMLElement] using the tag 'i'.
  HTMLElement.i() : _ = document.createElement('i');

  /// Creates a(n) [HTMLElement] using the tag 'b'.
  HTMLElement.b() : _ = document.createElement('b');

  /// Creates a(n) [HTMLElement] using the tag 'u'.
  HTMLElement.u() : _ = document.createElement('u');

  /// Creates a(n) [HTMLElement] using the tag 'mark'.
  HTMLElement.mark() : _ = document.createElement('mark');

  /// Creates a(n) [HTMLElement] using the tag 'bdi'.
  HTMLElement.bdi() : _ = document.createElement('bdi');

  /// Creates a(n) [HTMLElement] using the tag 'bdo'.
  HTMLElement.bdo() : _ = document.createElement('bdo');

  /// Creates a(n) [HTMLElement] using the tag 'wbr'.
  HTMLElement.wbr() : _ = document.createElement('wbr');

  /// Creates a(n) [HTMLElement] using the tag 'summary'.
  HTMLElement.summary() : _ = document.createElement('summary');

  /// Creates a(n) [HTMLElement] using the tag 'noscript'.
  HTMLElement.noscript() : _ = document.createElement('noscript');

  /// Creates a(n) [HTMLElement] using the tag 'acronym'.
  HTMLElement.acronym() : _ = document.createElement('acronym');

  /// Creates a(n) [HTMLElement] using the tag 'noframes'.
  HTMLElement.noframes() : _ = document.createElement('noframes');

  /// Creates a(n) [HTMLElement] using the tag 'menuitem'.
  HTMLElement.menuitem() : _ = document.createElement('menuitem');

  /// Creates a(n) [HTMLElement] using the tag 'noembed'.
  HTMLElement.noembed() : _ = document.createElement('noembed');

  /// Creates a(n) [HTMLElement] using the tag 'plaintext'.
  HTMLElement.plaintext() : _ = document.createElement('plaintext');

  /// Creates a(n) [HTMLElement] using the tag 'rb'.
  HTMLElement.rb() : _ = document.createElement('rb');

  /// Creates a(n) [HTMLElement] using the tag 'rtc'.
  HTMLElement.rtc() : _ = document.createElement('rtc');

  /// Creates a(n) [HTMLElement] using the tag 'strike'.
  HTMLElement.strike() : _ = document.createElement('strike');

  /// Creates a(n) [HTMLElement] using the tag 'basefont'.
  HTMLElement.basefont() : _ = document.createElement('basefont');

  /// Creates a(n) [HTMLElement] using the tag 'big'.
  HTMLElement.big() : _ = document.createElement('big');

  /// Creates a(n) [HTMLElement] using the tag 'center'.
  HTMLElement.center() : _ = document.createElement('center');

  /// Creates a(n) [HTMLElement] using the tag 'nobr'.
  HTMLElement.nobr() : _ = document.createElement('nobr');

  /// Creates a(n) [HTMLElement] using the tag 'tt'.
  HTMLElement.tt() : _ = document.createElement('tt');

  external void click();
  external ElementInternals attachInternals();
  external void showPopover();
  external void hidePopover();
  external bool togglePopover([bool force]);
  external void focus([FocusOptions options]);
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
extension type HTMLUnknownElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLUnknownElement] using the tag 'applet'.
  HTMLUnknownElement.applet() : _ = document.createElement('applet');

  /// Creates a(n) [HTMLUnknownElement] using the tag 'bgsound'.
  HTMLUnknownElement.bgsound() : _ = document.createElement('bgsound');

  /// Creates a(n) [HTMLUnknownElement] using the tag 'isindex'.
  HTMLUnknownElement.isindex() : _ = document.createElement('isindex');

  /// Creates a(n) [HTMLUnknownElement] using the tag 'keygen'.
  HTMLUnknownElement.keygen() : _ = document.createElement('keygen');

  /// Creates a(n) [HTMLUnknownElement] using the tag 'nextid'.
  HTMLUnknownElement.nextid() : _ = document.createElement('nextid');

  /// Creates a(n) [HTMLUnknownElement] using the tag 'blink'.
  HTMLUnknownElement.blink() : _ = document.createElement('blink');

  /// Creates a(n) [HTMLUnknownElement] using the tag 'multicol'.
  HTMLUnknownElement.multicol() : _ = document.createElement('multicol');

  /// Creates a(n) [HTMLUnknownElement] using the tag 'spacer'.
  HTMLUnknownElement.spacer() : _ = document.createElement('spacer');
}
extension type DOMStringMap._(JSObject _) implements JSObject {}
extension type HTMLHtmlElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLHtmlElement] using the tag 'html'.
  HTMLHtmlElement() : _ = document.createElement('html');

  external set version(String value);
  external String get version;
}
extension type HTMLHeadElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLHeadElement] using the tag 'head'.
  HTMLHeadElement() : _ = document.createElement('head');
}
extension type HTMLTitleElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLTitleElement] using the tag 'title'.
  HTMLTitleElement() : _ = document.createElement('title');

  external set text(String value);
  external String get text;
}
extension type HTMLBaseElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLBaseElement] using the tag 'base'.
  HTMLBaseElement() : _ = document.createElement('base');

  external set href(String value);
  external String get href;
  external set target(String value);
  external String get target;
}
extension type HTMLLinkElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLLinkElement] using the tag 'link'.
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
extension type HTMLMetaElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLMetaElement] using the tag 'meta'.
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
extension type HTMLStyleElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLStyleElement] using the tag 'style'.
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
extension type HTMLBodyElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLBodyElement] using the tag 'body'.
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
extension type HTMLHeadingElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLHeadingElement] using the tag 'h1'.
  HTMLHeadingElement.h1() : _ = document.createElement('h1');

  /// Creates a(n) [HTMLHeadingElement] using the tag 'h2'.
  HTMLHeadingElement.h2() : _ = document.createElement('h2');

  /// Creates a(n) [HTMLHeadingElement] using the tag 'h3'.
  HTMLHeadingElement.h3() : _ = document.createElement('h3');

  /// Creates a(n) [HTMLHeadingElement] using the tag 'h4'.
  HTMLHeadingElement.h4() : _ = document.createElement('h4');

  /// Creates a(n) [HTMLHeadingElement] using the tag 'h5'.
  HTMLHeadingElement.h5() : _ = document.createElement('h5');

  /// Creates a(n) [HTMLHeadingElement] using the tag 'h6'.
  HTMLHeadingElement.h6() : _ = document.createElement('h6');

  external set align(String value);
  external String get align;
}
extension type HTMLParagraphElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLParagraphElement] using the tag 'p'.
  HTMLParagraphElement() : _ = document.createElement('p');

  external set align(String value);
  external String get align;
}
extension type HTMLHRElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLHRElement] using the tag 'hr'.
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
extension type HTMLPreElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLPreElement] using the tag 'pre'.
  HTMLPreElement.pre() : _ = document.createElement('pre');

  /// Creates a(n) [HTMLPreElement] using the tag 'listing'.
  HTMLPreElement.listing() : _ = document.createElement('listing');

  /// Creates a(n) [HTMLPreElement] using the tag 'xmp'.
  HTMLPreElement.xmp() : _ = document.createElement('xmp');

  external set width(int value);
  external int get width;
}
extension type HTMLQuoteElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLQuoteElement] using the tag 'blockquote'.
  HTMLQuoteElement.blockquote() : _ = document.createElement('blockquote');

  /// Creates a(n) [HTMLQuoteElement] using the tag 'q'.
  HTMLQuoteElement.q() : _ = document.createElement('q');

  external set cite(String value);
  external String get cite;
}
extension type HTMLOListElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLOListElement] using the tag 'ol'.
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
extension type HTMLUListElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLUListElement] using the tag 'ul'.
  HTMLUListElement() : _ = document.createElement('ul');

  external set compact(bool value);
  external bool get compact;
  external set type(String value);
  external String get type;
}
extension type HTMLMenuElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLMenuElement] using the tag 'menu'.
  HTMLMenuElement() : _ = document.createElement('menu');

  external set compact(bool value);
  external bool get compact;
}
extension type HTMLLIElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLLIElement] using the tag 'li'.
  HTMLLIElement() : _ = document.createElement('li');

  external set value(int value);
  external int get value;
  external set type(String value);
  external String get type;
}
extension type HTMLDListElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLDListElement] using the tag 'dl'.
  HTMLDListElement() : _ = document.createElement('dl');

  external set compact(bool value);
  external bool get compact;
}
extension type HTMLDivElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLDivElement] using the tag 'div'.
  HTMLDivElement() : _ = document.createElement('div');

  external set align(String value);
  external String get align;
}
extension type HTMLAnchorElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLAnchorElement] using the tag 'a'.
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
extension type HTMLDataElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLDataElement] using the tag 'data'.
  HTMLDataElement() : _ = document.createElement('data');

  external set value(String value);
  external String get value;
}
extension type HTMLTimeElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLTimeElement] using the tag 'time'.
  HTMLTimeElement() : _ = document.createElement('time');

  external set dateTime(String value);
  external String get dateTime;
}
extension type HTMLSpanElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLSpanElement] using the tag 'span'.
  HTMLSpanElement() : _ = document.createElement('span');
}
extension type HTMLBRElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLBRElement] using the tag 'br'.
  HTMLBRElement() : _ = document.createElement('br');

  external set clear(String value);
  external String get clear;
}
extension type HTMLModElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLModElement] using the tag 'ins'.
  HTMLModElement.ins() : _ = document.createElement('ins');

  /// Creates a(n) [HTMLModElement] using the tag 'del'.
  HTMLModElement.del() : _ = document.createElement('del');

  external set cite(String value);
  external String get cite;
  external set dateTime(String value);
  external String get dateTime;
}
extension type HTMLPictureElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLPictureElement] using the tag 'picture'.
  HTMLPictureElement() : _ = document.createElement('picture');
}
extension type HTMLSourceElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLSourceElement] using the tag 'source'.
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
extension type HTMLImageElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLImageElement] using the tag 'img'.
  HTMLImageElement() : _ = document.createElement('img');

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
extension type HTMLIFrameElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLIFrameElement] using the tag 'iframe'.
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
extension type HTMLEmbedElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLEmbedElement] using the tag 'embed'.
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
extension type HTMLObjectElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLObjectElement] using the tag 'object'.
  HTMLObjectElement() : _ = document.createElement('object');

  external Document? getSVGDocument();
  external bool checkValidity();
  external bool reportValidity();
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
extension type HTMLVideoElement._(JSObject _)
    implements HTMLMediaElement, JSObject {
  /// Creates a(n) [HTMLVideoElement] using the tag 'video'.
  HTMLVideoElement() : _ = document.createElement('video');

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
extension type HTMLAudioElement._(JSObject _)
    implements HTMLMediaElement, JSObject {
  /// Creates a(n) [HTMLAudioElement] using the tag 'audio'.
  HTMLAudioElement() : _ = document.createElement('audio');
}
extension type HTMLTrackElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLTrackElement] using the tag 'track'.
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
  external JSPromise<JSAny?> setMediaKeys(MediaKeys? mediaKeys);
  external void load();
  external CanPlayTypeResult canPlayType(String type);
  external void fastSeek(num time);
  external JSObject getStartDate();
  external JSPromise<JSAny?> play();
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
extension type MediaError._(JSObject _) implements JSObject {
  external static int get MEDIA_ERR_ABORTED;
  external static int get MEDIA_ERR_NETWORK;
  external static int get MEDIA_ERR_DECODE;
  external static int get MEDIA_ERR_SRC_NOT_SUPPORTED;
  external int get code;
  external String get message;
}
extension type AudioTrackList._(JSObject _) implements EventTarget, JSObject {
  external AudioTrack? getTrackById(String id);
  external int get length;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
}
extension type AudioTrack._(JSObject _) implements JSObject {
  external String get id;
  external String get kind;
  external String get label;
  external String get language;
  external set enabled(bool value);
  external bool get enabled;
  external SourceBuffer? get sourceBuffer;
}
extension type VideoTrackList._(JSObject _) implements EventTarget, JSObject {
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
extension type VideoTrack._(JSObject _) implements JSObject {
  external String get id;
  external String get kind;
  external String get label;
  external String get language;
  external set selected(bool value);
  external bool get selected;
  external SourceBuffer? get sourceBuffer;
}
extension type TextTrackList._(JSObject _) implements EventTarget, JSObject {
  external TextTrack? getTrackById(String id);
  external int get length;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
}
extension type TextTrack._(JSObject _) implements EventTarget, JSObject {
  external void addCue(TextTrackCue cue);
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
extension type TextTrackCueList._(JSObject _) implements JSObject {
  external TextTrackCue? getCueById(String id);
  external int get length;
}
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
extension type TimeRanges._(JSObject _) implements JSObject {
  external num start(int index);
  external num end(int index);
  external int get length;
}
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
extension type HTMLMapElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLMapElement] using the tag 'map'.
  HTMLMapElement() : _ = document.createElement('map');

  external set name(String value);
  external String get name;
  external HTMLCollection get areas;
}
extension type HTMLAreaElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLAreaElement] using the tag 'area'.
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
extension type HTMLTableElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLTableElement] using the tag 'table'.
  HTMLTableElement() : _ = document.createElement('table');

  external HTMLTableCaptionElement createCaption();
  external void deleteCaption();
  external HTMLTableSectionElement createTHead();
  external void deleteTHead();
  external HTMLTableSectionElement createTFoot();
  external void deleteTFoot();
  external HTMLTableSectionElement createTBody();
  external HTMLTableRowElement insertRow([int index]);
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
extension type HTMLTableCaptionElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLTableCaptionElement] using the tag 'caption'.
  HTMLTableCaptionElement() : _ = document.createElement('caption');

  external set align(String value);
  external String get align;
}
extension type HTMLTableColElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLTableColElement] using the tag 'colgroup'.
  HTMLTableColElement.colgroup() : _ = document.createElement('colgroup');

  /// Creates a(n) [HTMLTableColElement] using the tag 'col'.
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
extension type HTMLTableSectionElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLTableSectionElement] using the tag 'tbody'.
  HTMLTableSectionElement.tbody() : _ = document.createElement('tbody');

  /// Creates a(n) [HTMLTableSectionElement] using the tag 'thead'.
  HTMLTableSectionElement.thead() : _ = document.createElement('thead');

  /// Creates a(n) [HTMLTableSectionElement] using the tag 'tfoot'.
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
extension type HTMLTableRowElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLTableRowElement] using the tag 'tr'.
  HTMLTableRowElement() : _ = document.createElement('tr');

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
extension type HTMLTableCellElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLTableCellElement] using the tag 'td'.
  HTMLTableCellElement.td() : _ = document.createElement('td');

  /// Creates a(n) [HTMLTableCellElement] using the tag 'th'.
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
extension type HTMLFormElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLFormElement] using the tag 'form'.
  HTMLFormElement() : _ = document.createElement('form');

  external void submit();
  external void requestSubmit([HTMLElement? submitter]);
  external void reset();
  external bool checkValidity();
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
extension type HTMLLabelElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLLabelElement] using the tag 'label'.
  HTMLLabelElement() : _ = document.createElement('label');

  external HTMLFormElement? get form;
  external set htmlFor(String value);
  external String get htmlFor;
  external HTMLElement? get control;
}
extension type HTMLInputElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLInputElement] using the tag 'input'.
  HTMLInputElement() : _ = document.createElement('input');

  external void stepUp([int n]);
  external void stepDown([int n]);
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
extension type HTMLButtonElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLButtonElement] using the tag 'button'.
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
extension type HTMLSelectElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLSelectElement] using the tag 'select'.
  HTMLSelectElement() : _ = document.createElement('select');

  external HTMLOptionElement? item(int index);
  external HTMLOptionElement? namedItem(String name);
  external void add(
    JSObject element, [
    JSAny? before,
  ]);
  external void remove([int index]);
  external bool checkValidity();
  external bool reportValidity();
  external void setCustomValidity(String error);
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
extension type HTMLDataListElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLDataListElement] using the tag 'datalist'.
  HTMLDataListElement() : _ = document.createElement('datalist');

  external HTMLCollection get options;
}
extension type HTMLOptGroupElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLOptGroupElement] using the tag 'optgroup'.
  HTMLOptGroupElement() : _ = document.createElement('optgroup');

  external set disabled(bool value);
  external bool get disabled;
  external set label(String value);
  external String get label;
}
extension type HTMLOptionElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLOptionElement] using the tag 'option'.
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
extension type HTMLTextAreaElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLTextAreaElement] using the tag 'textarea'.
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
extension type HTMLOutputElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLOutputElement] using the tag 'output'.
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
extension type HTMLProgressElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLProgressElement] using the tag 'progress'.
  HTMLProgressElement() : _ = document.createElement('progress');

  external set value(num value);
  external num get value;
  external set max(num value);
  external num get max;
  external num get position;
  external NodeList get labels;
}
extension type HTMLMeterElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLMeterElement] using the tag 'meter'.
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
extension type HTMLFieldSetElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLFieldSetElement] using the tag 'fieldset'.
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
extension type HTMLLegendElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLLegendElement] using the tag 'legend'.
  HTMLLegendElement() : _ = document.createElement('legend');

  external HTMLFormElement? get form;
  external set align(String value);
  external String get align;
}
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
extension type HTMLDetailsElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLDetailsElement] using the tag 'details'.
  HTMLDetailsElement() : _ = document.createElement('details');

  external set name(String value);
  external String get name;
  external set open(bool value);
  external bool get open;
}
extension type HTMLDialogElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLDialogElement] using the tag 'dialog'.
  HTMLDialogElement() : _ = document.createElement('dialog');

  external void show();
  external void showModal();
  external void close([String returnValue]);
  external set open(bool value);
  external bool get open;
  external set returnValue(String value);
  external String get returnValue;
}
extension type HTMLScriptElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLScriptElement] using the tag 'script'.
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
extension type HTMLTemplateElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLTemplateElement] using the tag 'template'.
  HTMLTemplateElement() : _ = document.createElement('template');

  external DocumentFragment get content;
  external set shadowRootMode(String value);
  external String get shadowRootMode;
  external set shadowRootDelegatesFocus(bool value);
  external bool get shadowRootDelegatesFocus;
}
extension type HTMLSlotElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLSlotElement] using the tag 'slot'.
  HTMLSlotElement() : _ = document.createElement('slot');

  external JSArray<Node> assignedNodes([AssignedNodesOptions options]);
  external JSArray<Element> assignedElements([AssignedNodesOptions options]);
  external void assign(JSObject nodes);
  external set name(String value);
  external String get name;
}
extension type AssignedNodesOptions._(JSObject _) implements JSObject {
  external factory AssignedNodesOptions({bool flatten});

  external set flatten(bool value);
  external bool get flatten;
}
extension type HTMLCanvasElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLCanvasElement] using the tag 'canvas'.
  HTMLCanvasElement() : _ = document.createElement('canvas');

  external RenderingContext? getContext(
    String contextId, [
    JSAny? options,
  ]);
  external String toDataURL([
    String type,
    JSAny? quality,
  ]);
  external void toBlob(
    BlobCallback callback, [
    String type,
    JSAny? quality,
  ]);
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
extension type CanvasRenderingContext2D._(JSObject _) implements JSObject {
  external CanvasRenderingContext2DSettings getContextAttributes();
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
  external void drawFocusIfNeeded(
    JSObject elementOrPath, [
    Element element,
  ]);
  external void scrollPathIntoView([Path2D path]);
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
extension type CanvasGradient._(JSObject _) implements JSObject {
  external void addColorStop(
    num offset,
    String color,
  );
}
extension type CanvasPattern._(JSObject _) implements JSObject {
  external void setTransform([DOMMatrix2DInit transform]);
}
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
extension type Path2D._(JSObject _) implements JSObject {
  external factory Path2D([JSAny path]);

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
extension type ImageBitmapRenderingContext._(JSObject _) implements JSObject {
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
extension type OffscreenCanvas._(JSObject _) implements EventTarget, JSObject {
  external factory OffscreenCanvas(
    int width,
    int height,
  );

  external OffscreenRenderingContext? getContext(
    OffscreenRenderingContextId contextId, [
    JSAny? options,
  ]);
  external ImageBitmap transferToImageBitmap();
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
extension type OffscreenCanvasRenderingContext2D._(JSObject _)
    implements JSObject {
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
extension type CustomElementRegistry._(JSObject _) implements JSObject {
  external void define(
    String name,
    CustomElementConstructor constructor, [
    ElementDefinitionOptions options,
  ]);
  external CustomElementConstructor? get(String name);
  external String? getName(CustomElementConstructor constructor);
  external JSPromise<CustomElementConstructor> whenDefined(String name);
  external void upgrade(Node root);
}
extension type ElementDefinitionOptions._(JSObject _) implements JSObject {
  external factory ElementDefinitionOptions({String extends_});

  @JS('extends')
  external set extends_(String value);
  @JS('extends')
  external String get extends_;
}
extension type ElementInternals._(JSObject _) implements JSObject {
  external void setFormValue(
    JSAny? value, [
    JSAny? state,
  ]);
  external void setValidity([
    ValidityStateFlags flags,
    String message,
    HTMLElement anchor,
  ]);
  external bool checkValidity();
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
extension type CustomStateSet._(JSObject _) implements JSObject {}
extension type VisibilityStateEntry._(JSObject _)
    implements PerformanceEntry, JSObject {
  external String get name;
  external String get entryType;
  external DOMHighResTimeStamp get startTime;
  external int get duration;
}
extension type UserActivation._(JSObject _) implements JSObject {
  external bool get hasBeenActive;
  external bool get isActive;
}
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
extension type DataTransfer._(JSObject _) implements JSObject {
  external factory DataTransfer();

  external void setDragImage(
    Element image,
    int x,
    int y,
  );
  external String getData(String format);
  external void setData(
    String format,
    String data,
  );
  external void clearData([String format]);
  external set dropEffect(String value);
  external String get dropEffect;
  external set effectAllowed(String value);
  external String get effectAllowed;
  external DataTransferItemList get items;
  external JSArray<JSString> get types;
  external FileList get files;
}
extension type DataTransferItemList._(JSObject _) implements JSObject {
  external DataTransferItem? add(
    JSAny data, [
    String type,
  ]);
  external void remove(int index);
  external void clear();
  external int get length;
}
extension type DataTransferItem._(JSObject _) implements JSObject {
  external FileSystemEntry? webkitGetAsEntry();
  external void getAsString(FunctionStringCallback? callback);
  external File? getAsFile();
  external String get kind;
  external String get type;
}
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
extension type Window._(JSObject _) implements EventTarget, JSObject {
  external MediaQueryList matchMedia(String query);
  external void moveTo(
    int x,
    int y,
  );
  external void moveBy(
    int x,
    int y,
  );
  external void resizeTo(
    int width,
    int height,
  );
  external void resizeBy(
    int x,
    int y,
  );
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
  external CSSStyleDeclaration getComputedStyle(
    Element elt, [
    String? pseudoElt,
  ]);
  external void close();
  external void stop();
  external void focus();
  external void blur();
  external Window? open([
    String url,
    String target,
    String features,
  ]);
  external void alert([String message]);
  external bool confirm([String message]);
  external String? prompt([
    String message,
    String default_,
  ]);
  external void print();
  external void postMessage(
    JSAny? message, [
    JSAny optionsOrTargetOrigin,
    JSArray<JSObject> transfer,
  ]);
  external void captureEvents();
  external void releaseEvents();
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
  external int requestAnimationFrame(FrameRequestCallback callback);
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
extension type BarProp._(JSObject _) implements JSObject {
  external bool get visible;
}
extension type Location._(JSObject _) implements JSObject {
  external void assign(String url);
  external void replace(String url);
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
extension type History._(JSObject _) implements JSObject {
  external void go([int delta]);
  external void back();
  external void forward();
  external void pushState(
    JSAny? data,
    String unused, [
    String? url,
  ]);
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
extension type Navigation._(JSObject _) implements EventTarget, JSObject {
  external JSArray<NavigationHistoryEntry> entries();
  external void updateCurrentEntry(NavigationUpdateCurrentEntryOptions options);
  external NavigationResult navigate(
    String url, [
    NavigationNavigateOptions options,
  ]);
  external NavigationResult reload([NavigationReloadOptions options]);
  external NavigationResult traverseTo(
    String key, [
    NavigationOptions options,
  ]);
  external NavigationResult back([NavigationOptions options]);
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
extension type NavigationHistoryEntry._(JSObject _)
    implements EventTarget, JSObject {
  external JSAny? getState();
  external String? get url;
  external String get key;
  external String get id;
  external int get index;
  external bool get sameDocument;
  external set ondispose(EventHandler value);
  external EventHandler get ondispose;
}
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
extension type NavigateEvent._(JSObject _) implements Event, JSObject {
  external factory NavigateEvent(
    String type,
    NavigateEventInit eventInitDict,
  );

  external void intercept([NavigationInterceptOptions options]);
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
extension type NavigationDestination._(JSObject _) implements JSObject {
  external JSAny? getState();
  external String get url;
  external String get key;
  external String get id;
  external int get index;
  external bool get sameDocument;
}
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
extension type BeforeUnloadEvent._(JSObject _) implements Event, JSObject {
  external set returnValue(String value);
  external String get returnValue;
}
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
extension type DOMParser._(JSObject _) implements JSObject {
  external factory DOMParser();

  external Document parseFromString(
    String string,
    DOMParserSupportedType type,
  );
}
extension type Navigator._(JSObject _) implements JSObject {
  external JSPromise<MediaKeySystemAccess> requestMediaKeySystemAccess(
    String keySystem,
    JSArray<MediaKeySystemConfiguration> supportedConfigurations,
  );
  external JSArray<Gamepad?> getGamepads();
  external void getUserMedia(
    MediaStreamConstraints constraints,
    NavigatorUserMediaSuccessCallback successCallback,
    NavigatorUserMediaErrorCallback errorCallback,
  );
  external bool vibrate(VibratePattern pattern);
  external bool taintEnabled();
  external void registerProtocolHandler(
    String scheme,
    String url,
  );
  external void unregisterProtocolHandler(
    String scheme,
    String url,
  );
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
extension type PluginArray._(JSObject _) implements JSObject {
  external void refresh();
  external Plugin? item(int index);
  external Plugin? namedItem(String name);
  external int get length;
}
extension type MimeTypeArray._(JSObject _) implements JSObject {
  external MimeType? item(int index);
  external MimeType? namedItem(String name);
  external int get length;
}
extension type Plugin._(JSObject _) implements JSObject {
  external MimeType? item(int index);
  external MimeType? namedItem(String name);
  external String get name;
  external String get description;
  external String get filename;
  external int get length;
}
extension type MimeType._(JSObject _) implements JSObject {
  external String get type;
  external String get description;
  external String get suffixes;
  external Plugin get enabledPlugin;
}
extension type ImageBitmap._(JSObject _) implements JSObject {
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
extension type EventSource._(JSObject _) implements EventTarget, JSObject {
  external factory EventSource(
    String url, [
    EventSourceInit eventSourceInitDict,
  ]);

  external static int get CONNECTING;
  external static int get OPEN;
  external static int get CLOSED;
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
extension type MessageChannel._(JSObject _) implements JSObject {
  external factory MessageChannel();

  external MessagePort get port1;
  external MessagePort get port2;
}
extension type MessagePort._(JSObject _) implements EventTarget, JSObject {
  external void postMessage(
    JSAny? message, [
    JSObject optionsOrTransfer,
  ]);
  external void start();
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
extension type BroadcastChannel._(JSObject _) implements EventTarget, JSObject {
  external factory BroadcastChannel(String name);

  external void postMessage(JSAny? message);
  external void close();
  external String get name;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
}
extension type WorkerGlobalScope._(JSObject _)
    implements EventTarget, JSObject {
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
extension type DedicatedWorkerGlobalScope._(JSObject _)
    implements WorkerGlobalScope, JSObject {
  external void postMessage(
    JSAny? message, [
    JSObject optionsOrTransfer,
  ]);
  external void close();
  external int requestAnimationFrame(FrameRequestCallback callback);
  external void cancelAnimationFrame(int handle);
  external String get name;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
  external set onrtctransform(EventHandler value);
  external EventHandler get onrtctransform;
}
extension type SharedWorkerGlobalScope._(JSObject _)
    implements WorkerGlobalScope, JSObject {
  external void close();
  external String get name;
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
}
extension type Worker._(JSObject _) implements EventTarget, JSObject {
  external factory Worker(
    String scriptURL, [
    WorkerOptions options,
  ]);

  external void terminate();
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
extension type SharedWorker._(JSObject _) implements EventTarget, JSObject {
  external factory SharedWorker(
    String scriptURL, [
    JSAny options,
  ]);

  external MessagePort get port;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}
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
extension type WorkletGlobalScope._(JSObject _) implements JSObject {}
extension type Worklet._(JSObject _) implements JSObject {
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
extension type Storage._(JSObject _) implements JSObject {
  external String? key(int index);
  external String? getItem(String key);
  external void setItem(
    String key,
    String value,
  );
  external void removeItem(String key);
  external void clear();
  external int get length;
}
extension type StorageEvent._(JSObject _) implements Event, JSObject {
  external factory StorageEvent(
    String type, [
    StorageEventInit eventInitDict,
  ]);

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
extension type HTMLMarqueeElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLMarqueeElement] using the tag 'marquee'.
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
extension type HTMLFrameSetElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLFrameSetElement] using the tag 'frameset'.
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
  /// Creates a(n) [HTMLFrameElement] using the tag 'frame'.
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
  /// Creates a(n) [HTMLDirectoryElement] using the tag 'dir'.
  HTMLDirectoryElement() : _ = document.createElement('dir');

  external set compact(bool value);
  external bool get compact;
}
extension type HTMLFontElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLFontElement] using the tag 'font'.
  HTMLFontElement() : _ = document.createElement('font');

  external set color(String value);
  external String get color;
  external set face(String value);
  external String get face;
  external set size(String value);
  external String get size;
}
extension type HTMLParamElement._(JSObject _) implements HTMLElement, JSObject {
  /// Creates a(n) [HTMLParamElement] using the tag 'param'.
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
