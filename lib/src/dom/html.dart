// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef HTMLOrSVGScriptElement = JSAny;
typedef MediaProvider = JSAny;
typedef RenderingContext = JSAny;
typedef HTMLOrSVGImageElement = JSAny;
typedef CanvasImageSource = JSAny;
typedef OffscreenRenderingContext = JSAny;
typedef EventHandler = EventHandlerNonNull;
typedef OnErrorEventHandler = OnErrorEventHandlerNonNull;
typedef OnBeforeUnloadEventHandler = OnBeforeUnloadEventHandlerNonNull;
typedef TimerHandler = JSAny;
typedef ImageBitmapSource = JSAny;
typedef MessageEventSource = JSAny;
typedef BlobCallback = JSFunction;
typedef CustomElementConstructor = JSFunction;
typedef FunctionStringCallback = JSFunction;
typedef EventHandlerNonNull = JSFunction;
typedef OnErrorEventHandlerNonNull = JSFunction;
typedef OnBeforeUnloadEventHandlerNonNull = JSFunction;
typedef FrameRequestCallback = JSFunction;
typedef DocumentReadyState = JSString;
typedef DocumentVisibilityState = JSString;
typedef CanPlayTypeResult = JSString;
typedef TextTrackMode = JSString;
typedef TextTrackKind = JSString;
typedef SelectionMode = JSString;
typedef PredefinedColorSpace = JSString;
typedef CanvasFillRule = JSString;
typedef ImageSmoothingQuality = JSString;
typedef CanvasLineCap = JSString;
typedef CanvasLineJoin = JSString;
typedef CanvasTextAlign = JSString;
typedef CanvasTextBaseline = JSString;
typedef CanvasDirection = JSString;
typedef CanvasFontKerning = JSString;
typedef CanvasFontStretch = JSString;
typedef CanvasFontVariantCaps = JSString;
typedef CanvasTextRendering = JSString;
typedef OffscreenRenderingContextId = JSString;
typedef ScrollRestoration = JSString;
typedef DOMParserSupportedType = JSString;
typedef ImageOrientation = JSString;
typedef PremultiplyAlpha = JSString;
typedef ColorSpaceConversion = JSString;
typedef ResizeQuality = JSString;
typedef WorkerType = JSString;

@JS('HTMLAllCollection')
@staticInterop
class HTMLAllCollection {
  external factory HTMLAllCollection();
}

extension HTMLAllCollectionExtension on HTMLAllCollection {
  external JSNumber get length;
  external JSAny? namedItem(JSString name);
  external JSAny? item();
  external JSAny? item_1(JSString nameOrIndex);
}

@JS('HTMLFormControlsCollection')
@staticInterop
class HTMLFormControlsCollection extends HTMLCollection {
  external factory HTMLFormControlsCollection();
}

extension HTMLFormControlsCollectionExtension on HTMLFormControlsCollection {
  external JSAny? namedItem(JSString name);
}

@JS('RadioNodeList')
@staticInterop
class RadioNodeList extends NodeList {
  external factory RadioNodeList();
}

extension RadioNodeListExtension on RadioNodeList {
  external JSString get value;
  external set value(JSString value);
}

@JS('HTMLOptionsCollection')
@staticInterop
class HTMLOptionsCollection extends HTMLCollection {
  external factory HTMLOptionsCollection();
}

extension HTMLOptionsCollectionExtension on HTMLOptionsCollection {
  external JSNumber get length;
  external set length(JSNumber value);
  external JSUndefined add(JSAny element);
  external JSUndefined add_1(JSAny element, JSAny? before);
  external JSUndefined remove(JSNumber index);
  external JSNumber get selectedIndex;
  external set selectedIndex(JSNumber value);
}

@JS('DOMStringList')
@staticInterop
class DOMStringList {
  external factory DOMStringList();
}

extension DOMStringListExtension on DOMStringList {
  external JSNumber get length;
  external JSString? item(JSNumber index);
  external JSBoolean contains(JSString string);
}

@JS('HTMLElement')
@staticInterop
class HTMLElement extends Element
    implements
        ElementCSSInlineStyle,
        GlobalEventHandlers,
        ElementContentEditable,
        HTMLOrSVGElement {
  external factory HTMLElement();
}

extension HTMLElementExtension on HTMLElement {
  external Element? get offsetParent;
  external JSNumber get offsetTop;
  external JSNumber get offsetLeft;
  external JSNumber get offsetWidth;
  external JSNumber get offsetHeight;
  external JSString get title;
  external set title(JSString value);
  external JSString get lang;
  external set lang(JSString value);
  external JSBoolean get translate;
  external set translate(JSBoolean value);
  external JSString get dir;
  external set dir(JSString value);
  external JSAny? get hidden;
  external set hidden(JSAny? value);
  external JSBoolean get inert;
  external set inert(JSBoolean value);
  external JSUndefined click();
  external JSString get accessKey;
  external set accessKey(JSString value);
  external JSString get accessKeyLabel;
  external JSBoolean get draggable;
  external set draggable(JSBoolean value);
  external JSBoolean get spellcheck;
  external set spellcheck(JSBoolean value);
  external JSString get autocapitalize;
  external set autocapitalize(JSString value);
  external JSString get innerText;
  external set innerText(JSString value);
  external JSString get outerText;
  external set outerText(JSString value);
  external ElementInternals attachInternals();
  external JSUndefined showPopover();
  external JSUndefined hidePopover();
  external JSUndefined togglePopover();
  external JSUndefined togglePopover_1(JSBoolean force);
  external JSString? get popover;
  external set popover(JSString? value);
}

@JS('HTMLUnknownElement')
@staticInterop
class HTMLUnknownElement extends HTMLElement {
  external factory HTMLUnknownElement();
}

@JS('HTMLOrSVGElement')
@staticInterop
class HTMLOrSVGElement {
  external factory HTMLOrSVGElement();
}

extension HTMLOrSVGElementExtension on HTMLOrSVGElement {
  external DOMStringMap get dataset;
  external JSString get nonce;
  external set nonce(JSString value);
  external JSBoolean get autofocus;
  external set autofocus(JSBoolean value);
  external JSNumber get tabIndex;
  external set tabIndex(JSNumber value);
  external JSUndefined focus();
  external JSUndefined focus_1(FocusOptions options);
  external JSUndefined blur();
}

@JS('DOMStringMap')
@staticInterop
class DOMStringMap {
  external factory DOMStringMap();
}

@JS('HTMLHtmlElement')
@staticInterop
class HTMLHtmlElement extends HTMLElement {
  external factory HTMLHtmlElement();
}

extension HTMLHtmlElementExtension on HTMLHtmlElement {
  external JSString get version;
  external set version(JSString value);
}

@JS('HTMLHeadElement')
@staticInterop
class HTMLHeadElement extends HTMLElement {
  external factory HTMLHeadElement();
}

@JS('HTMLTitleElement')
@staticInterop
class HTMLTitleElement extends HTMLElement {
  external factory HTMLTitleElement();
}

extension HTMLTitleElementExtension on HTMLTitleElement {
  external JSString get text;
  external set text(JSString value);
}

@JS('HTMLBaseElement')
@staticInterop
class HTMLBaseElement extends HTMLElement {
  external factory HTMLBaseElement();
}

extension HTMLBaseElementExtension on HTMLBaseElement {
  external JSString get href;
  external set href(JSString value);
  external JSString get target;
  external set target(JSString value);
}

@JS('HTMLLinkElement')
@staticInterop
class HTMLLinkElement extends HTMLElement implements LinkStyle {
  external factory HTMLLinkElement();
}

extension HTMLLinkElementExtension on HTMLLinkElement {
  external JSString get href;
  external set href(JSString value);
  external JSString? get crossOrigin;
  external set crossOrigin(JSString? value);
  external JSString get rel;
  external set rel(JSString value);
  external JSString get as;
  external set as(JSString value);
  external DOMTokenList get relList;
  external JSString get media;
  external set media(JSString value);
  external JSString get integrity;
  external set integrity(JSString value);
  external JSString get hreflang;
  external set hreflang(JSString value);
  external JSString get type;
  external set type(JSString value);
  external DOMTokenList get sizes;
  external JSString get imageSrcset;
  external set imageSrcset(JSString value);
  external JSString get imageSizes;
  external set imageSizes(JSString value);
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external DOMTokenList get blocking;
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external JSString get charset;
  external set charset(JSString value);
  external JSString get rev;
  external set rev(JSString value);
  external JSString get target;
  external set target(JSString value);
  external JSString get fetchPriority;
  external set fetchPriority(JSString value);
}

@JS('HTMLMetaElement')
@staticInterop
class HTMLMetaElement extends HTMLElement {
  external factory HTMLMetaElement();
}

extension HTMLMetaElementExtension on HTMLMetaElement {
  external JSString get name;
  external set name(JSString value);
  external JSString get httpEquiv;
  external set httpEquiv(JSString value);
  external JSString get content;
  external set content(JSString value);
  external JSString get media;
  external set media(JSString value);
  external JSString get scheme;
  external set scheme(JSString value);
}

@JS('HTMLStyleElement')
@staticInterop
class HTMLStyleElement extends HTMLElement implements LinkStyle {
  external factory HTMLStyleElement();
}

extension HTMLStyleElementExtension on HTMLStyleElement {
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external JSString get media;
  external set media(JSString value);
  external DOMTokenList get blocking;
  external JSString get type;
  external set type(JSString value);
}

@JS('HTMLBodyElement')
@staticInterop
class HTMLBodyElement extends HTMLElement implements WindowEventHandlers {
  external factory HTMLBodyElement();
}

extension HTMLBodyElementExtension on HTMLBodyElement {
  external EventHandler get onorientationchange;
  external set onorientationchange(EventHandler value);
  external JSString get text;
  external set text(JSString value);
  external JSString get link;
  external set link(JSString value);
  external JSString get vLink;
  external set vLink(JSString value);
  external JSString get aLink;
  external set aLink(JSString value);
  external JSString get bgColor;
  external set bgColor(JSString value);
  external JSString get background;
  external set background(JSString value);
}

@JS('HTMLHeadingElement')
@staticInterop
class HTMLHeadingElement extends HTMLElement {
  external factory HTMLHeadingElement();
}

extension HTMLHeadingElementExtension on HTMLHeadingElement {
  external JSString get align;
  external set align(JSString value);
}

@JS('HTMLParagraphElement')
@staticInterop
class HTMLParagraphElement extends HTMLElement {
  external factory HTMLParagraphElement();
}

extension HTMLParagraphElementExtension on HTMLParagraphElement {
  external JSString get align;
  external set align(JSString value);
}

@JS('HTMLHRElement')
@staticInterop
class HTMLHRElement extends HTMLElement {
  external factory HTMLHRElement();
}

extension HTMLHRElementExtension on HTMLHRElement {
  external JSString get align;
  external set align(JSString value);
  external JSString get color;
  external set color(JSString value);
  external JSBoolean get noShade;
  external set noShade(JSBoolean value);
  external JSString get size;
  external set size(JSString value);
  external JSString get width;
  external set width(JSString value);
}

@JS('HTMLPreElement')
@staticInterop
class HTMLPreElement extends HTMLElement {
  external factory HTMLPreElement();
}

extension HTMLPreElementExtension on HTMLPreElement {
  external JSNumber get width;
  external set width(JSNumber value);
}

@JS('HTMLQuoteElement')
@staticInterop
class HTMLQuoteElement extends HTMLElement {
  external factory HTMLQuoteElement();
}

extension HTMLQuoteElementExtension on HTMLQuoteElement {
  external JSString get cite;
  external set cite(JSString value);
}

@JS('HTMLOListElement')
@staticInterop
class HTMLOListElement extends HTMLElement {
  external factory HTMLOListElement();
}

extension HTMLOListElementExtension on HTMLOListElement {
  external JSBoolean get reversed;
  external set reversed(JSBoolean value);
  external JSNumber get start;
  external set start(JSNumber value);
  external JSString get type;
  external set type(JSString value);
  external JSBoolean get compact;
  external set compact(JSBoolean value);
}

@JS('HTMLUListElement')
@staticInterop
class HTMLUListElement extends HTMLElement {
  external factory HTMLUListElement();
}

extension HTMLUListElementExtension on HTMLUListElement {
  external JSBoolean get compact;
  external set compact(JSBoolean value);
  external JSString get type;
  external set type(JSString value);
}

@JS('HTMLMenuElement')
@staticInterop
class HTMLMenuElement extends HTMLElement {
  external factory HTMLMenuElement();
}

extension HTMLMenuElementExtension on HTMLMenuElement {
  external JSBoolean get compact;
  external set compact(JSBoolean value);
}

@JS('HTMLLIElement')
@staticInterop
class HTMLLIElement extends HTMLElement {
  external factory HTMLLIElement();
}

extension HTMLLIElementExtension on HTMLLIElement {
  external JSNumber get value;
  external set value(JSNumber value);
  external JSString get type;
  external set type(JSString value);
}

@JS('HTMLDListElement')
@staticInterop
class HTMLDListElement extends HTMLElement {
  external factory HTMLDListElement();
}

extension HTMLDListElementExtension on HTMLDListElement {
  external JSBoolean get compact;
  external set compact(JSBoolean value);
}

@JS('HTMLDivElement')
@staticInterop
class HTMLDivElement extends HTMLElement {
  external factory HTMLDivElement();
}

extension HTMLDivElementExtension on HTMLDivElement {
  external JSString get align;
  external set align(JSString value);
}

@JS('HTMLAnchorElement')
@staticInterop
class HTMLAnchorElement extends HTMLElement
    implements HTMLAttributionSrcElementUtils, HTMLHyperlinkElementUtils {
  external factory HTMLAnchorElement();
}

extension HTMLAnchorElementExtension on HTMLAnchorElement {
  external JSString get target;
  external set target(JSString value);
  external JSString get download;
  external set download(JSString value);
  external JSString get ping;
  external set ping(JSString value);
  external JSString get rel;
  external set rel(JSString value);
  external DOMTokenList get relList;
  external JSString get hreflang;
  external set hreflang(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get text;
  external set text(JSString value);
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external JSString get coords;
  external set coords(JSString value);
  external JSString get charset;
  external set charset(JSString value);
  external JSString get name;
  external set name(JSString value);
  external JSString get rev;
  external set rev(JSString value);
  external JSString get shape;
  external set shape(JSString value);
  external JSNumber get attributionSourceId;
  external set attributionSourceId(JSNumber value);
}

@JS('HTMLDataElement')
@staticInterop
class HTMLDataElement extends HTMLElement {
  external factory HTMLDataElement();
}

extension HTMLDataElementExtension on HTMLDataElement {
  external JSString get value;
  external set value(JSString value);
}

@JS('HTMLTimeElement')
@staticInterop
class HTMLTimeElement extends HTMLElement {
  external factory HTMLTimeElement();
}

extension HTMLTimeElementExtension on HTMLTimeElement {
  external JSString get dateTime;
  external set dateTime(JSString value);
}

@JS('HTMLSpanElement')
@staticInterop
class HTMLSpanElement extends HTMLElement {
  external factory HTMLSpanElement();
}

@JS('HTMLBRElement')
@staticInterop
class HTMLBRElement extends HTMLElement {
  external factory HTMLBRElement();
}

extension HTMLBRElementExtension on HTMLBRElement {
  external JSString get clear;
  external set clear(JSString value);
}

@JS('HTMLHyperlinkElementUtils')
@staticInterop
class HTMLHyperlinkElementUtils {
  external factory HTMLHyperlinkElementUtils();
}

extension HTMLHyperlinkElementUtilsExtension on HTMLHyperlinkElementUtils {
  external JSString get href;
  external set href(JSString value);
  external JSString get origin;
  external JSString get protocol;
  external set protocol(JSString value);
  external JSString get username;
  external set username(JSString value);
  external JSString get password;
  external set password(JSString value);
  external JSString get host;
  external set host(JSString value);
  external JSString get hostname;
  external set hostname(JSString value);
  external JSString get port;
  external set port(JSString value);
  external JSString get pathname;
  external set pathname(JSString value);
  external JSString get search;
  external set search(JSString value);
  external JSString get hash;
  external set hash(JSString value);
}

@JS('HTMLModElement')
@staticInterop
class HTMLModElement extends HTMLElement {
  external factory HTMLModElement();
}

extension HTMLModElementExtension on HTMLModElement {
  external JSString get cite;
  external set cite(JSString value);
  external JSString get dateTime;
  external set dateTime(JSString value);
}

@JS('HTMLPictureElement')
@staticInterop
class HTMLPictureElement extends HTMLElement {
  external factory HTMLPictureElement();
}

@JS('HTMLSourceElement')
@staticInterop
class HTMLSourceElement extends HTMLElement {
  external factory HTMLSourceElement();
}

extension HTMLSourceElementExtension on HTMLSourceElement {
  external JSString get src;
  external set src(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get srcset;
  external set srcset(JSString value);
  external JSString get sizes;
  external set sizes(JSString value);
  external JSString get media;
  external set media(JSString value);
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
}

@JS('HTMLImageElement')
@staticInterop
class HTMLImageElement extends HTMLElement
    implements HTMLAttributionSrcElementUtils {
  external factory HTMLImageElement();
}

extension HTMLImageElementExtension on HTMLImageElement {
  external JSNumber get x;
  external JSNumber get y;
  external JSString get alt;
  external set alt(JSString value);
  external JSString get src;
  external set src(JSString value);
  external JSString get srcset;
  external set srcset(JSString value);
  external JSString get sizes;
  external set sizes(JSString value);
  external JSString? get crossOrigin;
  external set crossOrigin(JSString? value);
  external JSString get useMap;
  external set useMap(JSString value);
  external JSBoolean get isMap;
  external set isMap(JSBoolean value);
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
  external JSNumber get naturalWidth;
  external JSNumber get naturalHeight;
  external JSBoolean get complete;
  external JSString get currentSrc;
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external JSString get decoding;
  external set decoding(JSString value);
  external JSString get loading;
  external set loading(JSString value);
  external JSPromise decode();
  external JSString get name;
  external set name(JSString value);
  external JSString get lowsrc;
  external set lowsrc(JSString value);
  external JSString get align;
  external set align(JSString value);
  external JSNumber get hspace;
  external set hspace(JSNumber value);
  external JSNumber get vspace;
  external set vspace(JSNumber value);
  external JSString get longDesc;
  external set longDesc(JSString value);
  external JSString get border;
  external set border(JSString value);
  external JSString get fetchPriority;
  external set fetchPriority(JSString value);
}

@JS('HTMLIFrameElement')
@staticInterop
class HTMLIFrameElement extends HTMLElement {
  external factory HTMLIFrameElement();
}

extension HTMLIFrameElementExtension on HTMLIFrameElement {
  external JSString get csp;
  external set csp(JSString value);
  external JSString get src;
  external set src(JSString value);
  external JSString get srcdoc;
  external set srcdoc(JSString value);
  external JSString get name;
  external set name(JSString value);
  external DOMTokenList get sandbox;
  external JSString get allow;
  external set allow(JSString value);
  external JSBoolean get allowFullscreen;
  external set allowFullscreen(JSBoolean value);
  external JSString get width;
  external set width(JSString value);
  external JSString get height;
  external set height(JSString value);
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external JSString get loading;
  external set loading(JSString value);
  external Document? get contentDocument;
  external Window? get contentWindow;
  external Document? getSVGDocument();
  external JSString get align;
  external set align(JSString value);
  external JSString get scrolling;
  external set scrolling(JSString value);
  external JSString get frameBorder;
  external set frameBorder(JSString value);
  external JSString get longDesc;
  external set longDesc(JSString value);
  external JSString get marginHeight;
  external set marginHeight(JSString value);
  external JSString get marginWidth;
  external set marginWidth(JSString value);
  external PermissionsPolicy get permissionsPolicy;
  external JSString get fetchPriority;
  external set fetchPriority(JSString value);
}

@JS('HTMLEmbedElement')
@staticInterop
class HTMLEmbedElement extends HTMLElement {
  external factory HTMLEmbedElement();
}

extension HTMLEmbedElementExtension on HTMLEmbedElement {
  external JSString get src;
  external set src(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get width;
  external set width(JSString value);
  external JSString get height;
  external set height(JSString value);
  external Document? getSVGDocument();
  external JSString get align;
  external set align(JSString value);
  external JSString get name;
  external set name(JSString value);
}

@JS('HTMLObjectElement')
@staticInterop
class HTMLObjectElement extends HTMLElement {
  external factory HTMLObjectElement();
}

extension HTMLObjectElementExtension on HTMLObjectElement {
  external JSString get data;
  external set data(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get name;
  external set name(JSString value);
  external HTMLFormElement? get form;
  external JSString get width;
  external set width(JSString value);
  external JSString get height;
  external set height(JSString value);
  external Document? get contentDocument;
  external Window? get contentWindow;
  external Document? getSVGDocument();
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
  external JSString get align;
  external set align(JSString value);
  external JSString get archive;
  external set archive(JSString value);
  external JSString get code;
  external set code(JSString value);
  external JSBoolean get declare;
  external set declare(JSBoolean value);
  external JSNumber get hspace;
  external set hspace(JSNumber value);
  external JSString get standby;
  external set standby(JSString value);
  external JSNumber get vspace;
  external set vspace(JSNumber value);
  external JSString get codeBase;
  external set codeBase(JSString value);
  external JSString get codeType;
  external set codeType(JSString value);
  external JSString get useMap;
  external set useMap(JSString value);
  external JSString get border;
  external set border(JSString value);
}

@JS('HTMLVideoElement')
@staticInterop
class HTMLVideoElement extends HTMLMediaElement {
  external factory HTMLVideoElement();
}

extension HTMLVideoElementExtension on HTMLVideoElement {
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
  external JSNumber get videoWidth;
  external JSNumber get videoHeight;
  external JSString get poster;
  external set poster(JSString value);
  external JSBoolean get playsInline;
  external set playsInline(JSBoolean value);
  external VideoPlaybackQuality getVideoPlaybackQuality();
  external JSPromise requestPictureInPicture();
  external EventHandler get onenterpictureinpicture;
  external set onenterpictureinpicture(EventHandler value);
  external EventHandler get onleavepictureinpicture;
  external set onleavepictureinpicture(EventHandler value);
  external JSBoolean get disablePictureInPicture;
  external set disablePictureInPicture(JSBoolean value);
  external JSNumber requestVideoFrameCallback(
      VideoFrameRequestCallback callback);
  external JSUndefined cancelVideoFrameCallback(JSNumber handle);
}

@JS('HTMLAudioElement')
@staticInterop
class HTMLAudioElement extends HTMLMediaElement {
  external factory HTMLAudioElement();
}

@JS('HTMLTrackElement')
@staticInterop
class HTMLTrackElement extends HTMLElement {
  external factory HTMLTrackElement();
  external static JSNumber get NONE;
  external static JSNumber get LOADING;
  external static JSNumber get LOADED;
  external static JSNumber get ERROR;
}

extension HTMLTrackElementExtension on HTMLTrackElement {
  external JSString get kind;
  external set kind(JSString value);
  external JSString get src;
  external set src(JSString value);
  external JSString get srclang;
  external set srclang(JSString value);
  external JSString get label;
  external set label(JSString value);
  @JS('default')
  external JSBoolean get default0;
  @JS('default')
  external set default0(JSBoolean value);
  external JSNumber get readyState;
  external TextTrack get track;
}

@JS('HTMLMediaElement')
@staticInterop
class HTMLMediaElement extends HTMLElement {
  external factory HTMLMediaElement();
  external static JSNumber get NETWORK_EMPTY;
  external static JSNumber get NETWORK_IDLE;
  external static JSNumber get NETWORK_LOADING;
  external static JSNumber get NETWORK_NO_SOURCE;
  external static JSNumber get HAVE_NOTHING;
  external static JSNumber get HAVE_METADATA;
  external static JSNumber get HAVE_CURRENT_DATA;
  external static JSNumber get HAVE_FUTURE_DATA;
  external static JSNumber get HAVE_ENOUGH_DATA;
}

extension HTMLMediaElementExtension on HTMLMediaElement {
  external JSString get sinkId;
  external JSPromise setSinkId(JSString sinkId);
  external MediaKeys? get mediaKeys;
  external EventHandler get onencrypted;
  external set onencrypted(EventHandler value);
  external EventHandler get onwaitingforkey;
  external set onwaitingforkey(EventHandler value);
  external JSPromise setMediaKeys(MediaKeys? mediaKeys);
  external MediaError? get error;
  external JSString get src;
  external set src(JSString value);
  external MediaProvider? get srcObject;
  external set srcObject(MediaProvider? value);
  external JSString get currentSrc;
  external JSString? get crossOrigin;
  external set crossOrigin(JSString? value);
  external JSNumber get networkState;
  external JSString get preload;
  external set preload(JSString value);
  external TimeRanges get buffered;
  external JSUndefined load();
  external CanPlayTypeResult canPlayType(JSString type);
  external JSNumber get readyState;
  external JSBoolean get seeking;
  external JSNumber get currentTime;
  external set currentTime(JSNumber value);
  external JSUndefined fastSeek(JSNumber time);
  external JSNumber get duration;
  external JSObject getStartDate();
  external JSBoolean get paused;
  external JSNumber get defaultPlaybackRate;
  external set defaultPlaybackRate(JSNumber value);
  external JSNumber get playbackRate;
  external set playbackRate(JSNumber value);
  external JSBoolean get preservesPitch;
  external set preservesPitch(JSBoolean value);
  external TimeRanges get played;
  external TimeRanges get seekable;
  external JSBoolean get ended;
  external JSBoolean get autoplay;
  external set autoplay(JSBoolean value);
  external JSBoolean get loop;
  external set loop(JSBoolean value);
  external JSPromise play();
  external JSUndefined pause();
  external JSBoolean get controls;
  external set controls(JSBoolean value);
  external JSNumber get volume;
  external set volume(JSNumber value);
  external JSBoolean get muted;
  external set muted(JSBoolean value);
  external JSBoolean get defaultMuted;
  external set defaultMuted(JSBoolean value);
  external AudioTrackList get audioTracks;
  external VideoTrackList get videoTracks;
  external TextTrackList get textTracks;
  external TextTrack addTextTrack(TextTrackKind kind);
  external TextTrack addTextTrack_1(TextTrackKind kind, JSString label);
  external TextTrack addTextTrack_2(
      TextTrackKind kind, JSString label, JSString language);
  external MediaStream captureStream();
  external RemotePlayback get remote;
  external JSBoolean get disableRemotePlayback;
  external set disableRemotePlayback(JSBoolean value);
}

@JS('MediaError')
@staticInterop
class MediaError {
  external factory MediaError();
  external static JSNumber get MEDIA_ERR_ABORTED;
  external static JSNumber get MEDIA_ERR_NETWORK;
  external static JSNumber get MEDIA_ERR_DECODE;
  external static JSNumber get MEDIA_ERR_SRC_NOT_SUPPORTED;
}

extension MediaErrorExtension on MediaError {
  external JSNumber get code;
  external JSString get message;
}

@JS('AudioTrackList')
@staticInterop
class AudioTrackList extends EventTarget {
  external factory AudioTrackList();
}

extension AudioTrackListExtension on AudioTrackList {
  external JSNumber get length;
  external AudioTrack? getTrackById(JSString id);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onaddtrack;
  external set onaddtrack(EventHandler value);
  external EventHandler get onremovetrack;
  external set onremovetrack(EventHandler value);
}

@JS('AudioTrack')
@staticInterop
class AudioTrack {
  external factory AudioTrack();
}

extension AudioTrackExtension on AudioTrack {
  external JSString get id;
  external JSString get kind;
  external JSString get label;
  external JSString get language;
  external JSBoolean get enabled;
  external set enabled(JSBoolean value);
  external SourceBuffer? get sourceBuffer;
}

@JS('VideoTrackList')
@staticInterop
class VideoTrackList extends EventTarget {
  external factory VideoTrackList();
}

extension VideoTrackListExtension on VideoTrackList {
  external JSNumber get length;
  external VideoTrack? getTrackById(JSString id);
  external JSNumber get selectedIndex;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onaddtrack;
  external set onaddtrack(EventHandler value);
  external EventHandler get onremovetrack;
  external set onremovetrack(EventHandler value);
}

@JS('VideoTrack')
@staticInterop
class VideoTrack {
  external factory VideoTrack();
}

extension VideoTrackExtension on VideoTrack {
  external JSString get id;
  external JSString get kind;
  external JSString get label;
  external JSString get language;
  external JSBoolean get selected;
  external set selected(JSBoolean value);
  external SourceBuffer? get sourceBuffer;
}

@JS('TextTrackList')
@staticInterop
class TextTrackList extends EventTarget {
  external factory TextTrackList();
}

extension TextTrackListExtension on TextTrackList {
  external JSNumber get length;
  external TextTrack? getTrackById(JSString id);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onaddtrack;
  external set onaddtrack(EventHandler value);
  external EventHandler get onremovetrack;
  external set onremovetrack(EventHandler value);
}

@JS('TextTrack')
@staticInterop
class TextTrack extends EventTarget {
  external factory TextTrack();
}

extension TextTrackExtension on TextTrack {
  external TextTrackKind get kind;
  external JSString get label;
  external JSString get language;
  external JSString get id;
  external JSString get inBandMetadataTrackDispatchType;
  external TextTrackMode get mode;
  external set mode(TextTrackMode value);
  external TextTrackCueList? get cues;
  external TextTrackCueList? get activeCues;
  external JSUndefined addCue(TextTrackCue cue);
  external JSUndefined removeCue(TextTrackCue cue);
  external EventHandler get oncuechange;
  external set oncuechange(EventHandler value);
  external SourceBuffer? get sourceBuffer;
}

@JS('TextTrackCueList')
@staticInterop
class TextTrackCueList {
  external factory TextTrackCueList();
}

extension TextTrackCueListExtension on TextTrackCueList {
  external JSNumber get length;
  external TextTrackCue? getCueById(JSString id);
}

@JS('TextTrackCue')
@staticInterop
class TextTrackCue extends EventTarget {
  external factory TextTrackCue();
}

extension TextTrackCueExtension on TextTrackCue {
  external TextTrack? get track;
  external JSString get id;
  external set id(JSString value);
  external JSNumber get startTime;
  external set startTime(JSNumber value);
  external JSNumber get endTime;
  external set endTime(JSNumber value);
  external JSBoolean get pauseOnExit;
  external set pauseOnExit(JSBoolean value);
  external EventHandler get onenter;
  external set onenter(EventHandler value);
  external EventHandler get onexit;
  external set onexit(EventHandler value);
}

@JS('TimeRanges')
@staticInterop
class TimeRanges {
  external factory TimeRanges();
}

extension TimeRangesExtension on TimeRanges {
  external JSNumber get length;
  external JSNumber start(JSNumber index);
  external JSNumber end(JSNumber index);
}

@JS('TrackEvent')
@staticInterop
class TrackEvent extends Event {
  external factory TrackEvent();
  external factory TrackEvent.a1(JSString type);
  external factory TrackEvent.a1_1(JSString type, TrackEventInit eventInitDict);
}

extension TrackEventExtension on TrackEvent {
  external JSAny? get track;
}

@JS('TrackEventInit')
@staticInterop
class TrackEventInit extends EventInit {
  external factory TrackEventInit();
}

extension TrackEventInitExtension on TrackEventInit {
  // TODO
}

@JS('HTMLMapElement')
@staticInterop
class HTMLMapElement extends HTMLElement {
  external factory HTMLMapElement();
}

extension HTMLMapElementExtension on HTMLMapElement {
  external JSString get name;
  external set name(JSString value);
  external HTMLCollection get areas;
}

@JS('HTMLAreaElement')
@staticInterop
class HTMLAreaElement extends HTMLElement implements HTMLHyperlinkElementUtils {
  external factory HTMLAreaElement();
}

extension HTMLAreaElementExtension on HTMLAreaElement {
  external JSString get alt;
  external set alt(JSString value);
  external JSString get coords;
  external set coords(JSString value);
  external JSString get shape;
  external set shape(JSString value);
  external JSString get target;
  external set target(JSString value);
  external JSString get download;
  external set download(JSString value);
  external JSString get ping;
  external set ping(JSString value);
  external JSString get rel;
  external set rel(JSString value);
  external DOMTokenList get relList;
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external JSBoolean get noHref;
  external set noHref(JSBoolean value);
}

@JS('HTMLTableElement')
@staticInterop
class HTMLTableElement extends HTMLElement {
  external factory HTMLTableElement();
}

extension HTMLTableElementExtension on HTMLTableElement {
  external HTMLTableCaptionElement? get caption;
  external set caption(HTMLTableCaptionElement? value);
  external HTMLTableCaptionElement createCaption();
  external JSUndefined deleteCaption();
  external HTMLTableSectionElement? get tHead;
  external set tHead(HTMLTableSectionElement? value);
  external HTMLTableSectionElement createTHead();
  external JSUndefined deleteTHead();
  external HTMLTableSectionElement? get tFoot;
  external set tFoot(HTMLTableSectionElement? value);
  external HTMLTableSectionElement createTFoot();
  external JSUndefined deleteTFoot();
  external HTMLCollection get tBodies;
  external HTMLTableSectionElement createTBody();
  external HTMLCollection get rows;
  external HTMLTableRowElement insertRow();
  external HTMLTableRowElement insertRow_1(JSNumber index);
  external JSUndefined deleteRow(JSNumber index);
  external JSString get align;
  external set align(JSString value);
  external JSString get border;
  external set border(JSString value);
  external JSString get frame;
  external set frame(JSString value);
  external JSString get rules;
  external set rules(JSString value);
  external JSString get summary;
  external set summary(JSString value);
  external JSString get width;
  external set width(JSString value);
  external JSString get bgColor;
  external set bgColor(JSString value);
  external JSString get cellPadding;
  external set cellPadding(JSString value);
  external JSString get cellSpacing;
  external set cellSpacing(JSString value);
}

@JS('HTMLTableCaptionElement')
@staticInterop
class HTMLTableCaptionElement extends HTMLElement {
  external factory HTMLTableCaptionElement();
}

extension HTMLTableCaptionElementExtension on HTMLTableCaptionElement {
  external JSString get align;
  external set align(JSString value);
}

@JS('HTMLTableColElement')
@staticInterop
class HTMLTableColElement extends HTMLElement {
  external factory HTMLTableColElement();
}

extension HTMLTableColElementExtension on HTMLTableColElement {
  external JSNumber get span;
  external set span(JSNumber value);
  external JSString get align;
  external set align(JSString value);
  external JSString get ch;
  external set ch(JSString value);
  external JSString get chOff;
  external set chOff(JSString value);
  external JSString get vAlign;
  external set vAlign(JSString value);
  external JSString get width;
  external set width(JSString value);
}

@JS('HTMLTableSectionElement')
@staticInterop
class HTMLTableSectionElement extends HTMLElement {
  external factory HTMLTableSectionElement();
}

extension HTMLTableSectionElementExtension on HTMLTableSectionElement {
  external HTMLCollection get rows;
  external HTMLTableRowElement insertRow();
  external HTMLTableRowElement insertRow_1(JSNumber index);
  external JSUndefined deleteRow(JSNumber index);
  external JSString get align;
  external set align(JSString value);
  external JSString get ch;
  external set ch(JSString value);
  external JSString get chOff;
  external set chOff(JSString value);
  external JSString get vAlign;
  external set vAlign(JSString value);
}

@JS('HTMLTableRowElement')
@staticInterop
class HTMLTableRowElement extends HTMLElement {
  external factory HTMLTableRowElement();
}

extension HTMLTableRowElementExtension on HTMLTableRowElement {
  external JSNumber get rowIndex;
  external JSNumber get sectionRowIndex;
  external HTMLCollection get cells;
  external HTMLTableCellElement insertCell();
  external HTMLTableCellElement insertCell_1(JSNumber index);
  external JSUndefined deleteCell(JSNumber index);
  external JSString get align;
  external set align(JSString value);
  external JSString get ch;
  external set ch(JSString value);
  external JSString get chOff;
  external set chOff(JSString value);
  external JSString get vAlign;
  external set vAlign(JSString value);
  external JSString get bgColor;
  external set bgColor(JSString value);
}

@JS('HTMLTableCellElement')
@staticInterop
class HTMLTableCellElement extends HTMLElement {
  external factory HTMLTableCellElement();
}

extension HTMLTableCellElementExtension on HTMLTableCellElement {
  external JSNumber get colSpan;
  external set colSpan(JSNumber value);
  external JSNumber get rowSpan;
  external set rowSpan(JSNumber value);
  external JSString get headers;
  external set headers(JSString value);
  external JSNumber get cellIndex;
  external JSString get scope;
  external set scope(JSString value);
  external JSString get abbr;
  external set abbr(JSString value);
  external JSString get align;
  external set align(JSString value);
  external JSString get axis;
  external set axis(JSString value);
  external JSString get height;
  external set height(JSString value);
  external JSString get width;
  external set width(JSString value);
  external JSString get ch;
  external set ch(JSString value);
  external JSString get chOff;
  external set chOff(JSString value);
  external JSBoolean get noWrap;
  external set noWrap(JSBoolean value);
  external JSString get vAlign;
  external set vAlign(JSString value);
  external JSString get bgColor;
  external set bgColor(JSString value);
}

@JS('HTMLFormElement')
@staticInterop
class HTMLFormElement extends HTMLElement {
  external factory HTMLFormElement();
}

extension HTMLFormElementExtension on HTMLFormElement {
  external JSString get acceptCharset;
  external set acceptCharset(JSString value);
  external JSString get action;
  external set action(JSString value);
  external JSString get autocomplete;
  external set autocomplete(JSString value);
  external JSString get enctype;
  external set enctype(JSString value);
  external JSString get encoding;
  external set encoding(JSString value);
  external JSString get method;
  external set method(JSString value);
  external JSString get name;
  external set name(JSString value);
  external JSBoolean get noValidate;
  external set noValidate(JSBoolean value);
  external JSString get target;
  external set target(JSString value);
  external JSString get rel;
  external set rel(JSString value);
  external DOMTokenList get relList;
  external HTMLFormControlsCollection get elements;
  external JSNumber get length;
  external JSUndefined submit();
  external JSUndefined requestSubmit();
  external JSUndefined requestSubmit_1(HTMLElement? submitter);
  external JSUndefined reset();
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
}

@JS('HTMLLabelElement')
@staticInterop
class HTMLLabelElement extends HTMLElement {
  external factory HTMLLabelElement();
}

extension HTMLLabelElementExtension on HTMLLabelElement {
  external HTMLFormElement? get form;
  external JSString get htmlFor;
  external set htmlFor(JSString value);
  external HTMLElement? get control;
}

@JS('HTMLInputElement')
@staticInterop
class HTMLInputElement extends HTMLElement implements PopoverTargetElement {
  external factory HTMLInputElement();
}

extension HTMLInputElementExtension on HTMLInputElement {
  external JSBoolean get webkitdirectory;
  external set webkitdirectory(JSBoolean value);
  external JSArray get webkitEntries;
  external JSString get capture;
  external set capture(JSString value);
  external JSString get accept;
  external set accept(JSString value);
  external JSString get alt;
  external set alt(JSString value);
  external JSString get autocomplete;
  external set autocomplete(JSString value);
  external JSBoolean get defaultChecked;
  external set defaultChecked(JSBoolean value);
  external JSBoolean get checked;
  external set checked(JSBoolean value);
  external JSString get dirName;
  external set dirName(JSString value);
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external HTMLFormElement? get form;
  external FileList? get files;
  external set files(FileList? value);
  external JSString get formAction;
  external set formAction(JSString value);
  external JSString get formEnctype;
  external set formEnctype(JSString value);
  external JSString get formMethod;
  external set formMethod(JSString value);
  external JSBoolean get formNoValidate;
  external set formNoValidate(JSBoolean value);
  external JSString get formTarget;
  external set formTarget(JSString value);
  external JSNumber get height;
  external set height(JSNumber value);
  external JSBoolean get indeterminate;
  external set indeterminate(JSBoolean value);
  external HTMLDataListElement? get list;
  external JSString get max;
  external set max(JSString value);
  external JSNumber get maxLength;
  external set maxLength(JSNumber value);
  external JSString get min;
  external set min(JSString value);
  external JSNumber get minLength;
  external set minLength(JSNumber value);
  external JSBoolean get multiple;
  external set multiple(JSBoolean value);
  external JSString get name;
  external set name(JSString value);
  external JSString get pattern;
  external set pattern(JSString value);
  external JSString get placeholder;
  external set placeholder(JSString value);
  external JSBoolean get readOnly;
  external set readOnly(JSBoolean value);
  external JSBoolean get required;
  external set required(JSBoolean value);
  external JSNumber get size;
  external set size(JSNumber value);
  external JSString get src;
  external set src(JSString value);
  external JSString get step;
  external set step(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get defaultValue;
  external set defaultValue(JSString value);
  external JSString get value;
  external set value(JSString value);
  external JSObject? get valueAsDate;
  external set valueAsDate(JSObject? value);
  external JSNumber get valueAsNumber;
  external set valueAsNumber(JSNumber value);
  external JSNumber get width;
  external set width(JSNumber value);
  external JSUndefined stepUp();
  external JSUndefined stepUp_1(JSNumber n);
  external JSUndefined stepDown();
  external JSUndefined stepDown_1(JSNumber n);
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
  external NodeList? get labels;
  external JSUndefined select();
  external JSNumber? get selectionStart;
  external set selectionStart(JSNumber? value);
  external JSNumber? get selectionEnd;
  external set selectionEnd(JSNumber? value);
  external JSString? get selectionDirection;
  external set selectionDirection(JSString? value);
  external JSUndefined setRangeText(JSString replacement);
  @JS('setRangeText')
  external JSUndefined setRangeText1(
      JSString replacement, JSNumber start, JSNumber end);
  @JS('setRangeText')
  external JSUndefined setRangeText1_1(JSString replacement, JSNumber start,
      JSNumber end, SelectionMode selectionMode);
  external JSUndefined setSelectionRange(JSNumber start, JSNumber end);
  external JSUndefined setSelectionRange_1(
      JSNumber start, JSNumber end, JSString direction);
  external JSUndefined showPicker();
  external JSString get align;
  external set align(JSString value);
  external JSString get useMap;
  external set useMap(JSString value);
}

@JS('HTMLButtonElement')
@staticInterop
class HTMLButtonElement extends HTMLElement implements PopoverTargetElement {
  external factory HTMLButtonElement();
}

extension HTMLButtonElementExtension on HTMLButtonElement {
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external HTMLFormElement? get form;
  external JSString get formAction;
  external set formAction(JSString value);
  external JSString get formEnctype;
  external set formEnctype(JSString value);
  external JSString get formMethod;
  external set formMethod(JSString value);
  external JSBoolean get formNoValidate;
  external set formNoValidate(JSBoolean value);
  external JSString get formTarget;
  external set formTarget(JSString value);
  external JSString get name;
  external set name(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get value;
  external set value(JSString value);
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
  external NodeList get labels;
}

@JS('HTMLSelectElement')
@staticInterop
class HTMLSelectElement extends HTMLElement {
  external factory HTMLSelectElement();
}

extension HTMLSelectElementExtension on HTMLSelectElement {
  external JSString get autocomplete;
  external set autocomplete(JSString value);
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external HTMLFormElement? get form;
  external JSBoolean get multiple;
  external set multiple(JSBoolean value);
  external JSString get name;
  external set name(JSString value);
  external JSBoolean get required;
  external set required(JSBoolean value);
  external JSNumber get size;
  external set size(JSNumber value);
  external JSString get type;
  external HTMLOptionsCollection get options;
  external JSNumber get length;
  external set length(JSNumber value);
  external HTMLOptionElement? item(JSNumber index);
  external HTMLOptionElement? namedItem(JSString name);
  external JSUndefined add(JSAny element);
  external JSUndefined add_1(JSAny element, JSAny? before);
  external JSUndefined remove();
  @JS('remove')
  external JSUndefined remove1(JSNumber index);
  external HTMLCollection get selectedOptions;
  external JSNumber get selectedIndex;
  external set selectedIndex(JSNumber value);
  external JSString get value;
  external set value(JSString value);
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
  external NodeList get labels;
}

@JS('HTMLDataListElement')
@staticInterop
class HTMLDataListElement extends HTMLElement {
  external factory HTMLDataListElement();
}

extension HTMLDataListElementExtension on HTMLDataListElement {
  external HTMLCollection get options;
}

@JS('HTMLOptGroupElement')
@staticInterop
class HTMLOptGroupElement extends HTMLElement {
  external factory HTMLOptGroupElement();
}

extension HTMLOptGroupElementExtension on HTMLOptGroupElement {
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external JSString get label;
  external set label(JSString value);
}

@JS('HTMLOptionElement')
@staticInterop
class HTMLOptionElement extends HTMLElement {
  external factory HTMLOptionElement();
}

extension HTMLOptionElementExtension on HTMLOptionElement {
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external HTMLFormElement? get form;
  external JSString get label;
  external set label(JSString value);
  external JSBoolean get defaultSelected;
  external set defaultSelected(JSBoolean value);
  external JSBoolean get selected;
  external set selected(JSBoolean value);
  external JSString get value;
  external set value(JSString value);
  external JSString get text;
  external set text(JSString value);
  external JSNumber get index;
}

@JS('HTMLTextAreaElement')
@staticInterop
class HTMLTextAreaElement extends HTMLElement {
  external factory HTMLTextAreaElement();
}

extension HTMLTextAreaElementExtension on HTMLTextAreaElement {
  external JSString get autocomplete;
  external set autocomplete(JSString value);
  external JSNumber get cols;
  external set cols(JSNumber value);
  external JSString get dirName;
  external set dirName(JSString value);
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external HTMLFormElement? get form;
  external JSNumber get maxLength;
  external set maxLength(JSNumber value);
  external JSNumber get minLength;
  external set minLength(JSNumber value);
  external JSString get name;
  external set name(JSString value);
  external JSString get placeholder;
  external set placeholder(JSString value);
  external JSBoolean get readOnly;
  external set readOnly(JSBoolean value);
  external JSBoolean get required;
  external set required(JSBoolean value);
  external JSNumber get rows;
  external set rows(JSNumber value);
  external JSString get wrap;
  external set wrap(JSString value);
  external JSString get type;
  external JSString get defaultValue;
  external set defaultValue(JSString value);
  external JSString get value;
  external set value(JSString value);
  external JSNumber get textLength;
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
  external NodeList get labels;
  external JSUndefined select();
  external JSNumber get selectionStart;
  external set selectionStart(JSNumber value);
  external JSNumber get selectionEnd;
  external set selectionEnd(JSNumber value);
  external JSString get selectionDirection;
  external set selectionDirection(JSString value);
  external JSUndefined setRangeText(JSString replacement);
  @JS('setRangeText')
  external JSUndefined setRangeText1(
      JSString replacement, JSNumber start, JSNumber end);
  @JS('setRangeText')
  external JSUndefined setRangeText1_1(JSString replacement, JSNumber start,
      JSNumber end, SelectionMode selectionMode);
  external JSUndefined setSelectionRange(JSNumber start, JSNumber end);
  external JSUndefined setSelectionRange_1(
      JSNumber start, JSNumber end, JSString direction);
}

@JS('HTMLOutputElement')
@staticInterop
class HTMLOutputElement extends HTMLElement {
  external factory HTMLOutputElement();
}

extension HTMLOutputElementExtension on HTMLOutputElement {
  external DOMTokenList get htmlFor;
  external HTMLFormElement? get form;
  external JSString get name;
  external set name(JSString value);
  external JSString get type;
  external JSString get defaultValue;
  external set defaultValue(JSString value);
  external JSString get value;
  external set value(JSString value);
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
  external NodeList get labels;
}

@JS('HTMLProgressElement')
@staticInterop
class HTMLProgressElement extends HTMLElement {
  external factory HTMLProgressElement();
}

extension HTMLProgressElementExtension on HTMLProgressElement {
  external JSNumber get value;
  external set value(JSNumber value);
  external JSNumber get max;
  external set max(JSNumber value);
  external JSNumber get position;
  external NodeList get labels;
}

@JS('HTMLMeterElement')
@staticInterop
class HTMLMeterElement extends HTMLElement {
  external factory HTMLMeterElement();
}

extension HTMLMeterElementExtension on HTMLMeterElement {
  external JSNumber get value;
  external set value(JSNumber value);
  external JSNumber get min;
  external set min(JSNumber value);
  external JSNumber get max;
  external set max(JSNumber value);
  external JSNumber get low;
  external set low(JSNumber value);
  external JSNumber get high;
  external set high(JSNumber value);
  external JSNumber get optimum;
  external set optimum(JSNumber value);
  external NodeList get labels;
}

@JS('HTMLFieldSetElement')
@staticInterop
class HTMLFieldSetElement extends HTMLElement {
  external factory HTMLFieldSetElement();
}

extension HTMLFieldSetElementExtension on HTMLFieldSetElement {
  external JSBoolean get disabled;
  external set disabled(JSBoolean value);
  external HTMLFormElement? get form;
  external JSString get name;
  external set name(JSString value);
  external JSString get type;
  external HTMLCollection get elements;
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSUndefined setCustomValidity(JSString error);
}

@JS('HTMLLegendElement')
@staticInterop
class HTMLLegendElement extends HTMLElement {
  external factory HTMLLegendElement();
}

extension HTMLLegendElementExtension on HTMLLegendElement {
  external HTMLFormElement? get form;
  external JSString get align;
  external set align(JSString value);
}

@JS('ValidityState')
@staticInterop
class ValidityState {
  external factory ValidityState();
}

extension ValidityStateExtension on ValidityState {
  external JSBoolean get valueMissing;
  external JSBoolean get typeMismatch;
  external JSBoolean get patternMismatch;
  external JSBoolean get tooLong;
  external JSBoolean get tooShort;
  external JSBoolean get rangeUnderflow;
  external JSBoolean get rangeOverflow;
  external JSBoolean get stepMismatch;
  external JSBoolean get badInput;
  external JSBoolean get customError;
  external JSBoolean get valid;
}

@JS('SubmitEvent')
@staticInterop
class SubmitEvent extends Event {
  external factory SubmitEvent();
  external factory SubmitEvent.a1(JSString type);
  external factory SubmitEvent.a1_1(
      JSString type, SubmitEventInit eventInitDict);
}

extension SubmitEventExtension on SubmitEvent {
  external HTMLElement? get submitter;
}

@JS('SubmitEventInit')
@staticInterop
class SubmitEventInit extends EventInit {
  external factory SubmitEventInit();
}

extension SubmitEventInitExtension on SubmitEventInit {
  // TODO
}

@JS('FormDataEvent')
@staticInterop
class FormDataEvent extends Event {
  external factory FormDataEvent();
  external factory FormDataEvent.a1(
      JSString type, FormDataEventInit eventInitDict);
}

extension FormDataEventExtension on FormDataEvent {
  external FormData get formData;
}

@JS('FormDataEventInit')
@staticInterop
class FormDataEventInit extends EventInit {
  external factory FormDataEventInit();
}

extension FormDataEventInitExtension on FormDataEventInit {
  // TODO
}

@JS('HTMLDetailsElement')
@staticInterop
class HTMLDetailsElement extends HTMLElement {
  external factory HTMLDetailsElement();
}

extension HTMLDetailsElementExtension on HTMLDetailsElement {
  external JSBoolean get open;
  external set open(JSBoolean value);
}

@JS('HTMLDialogElement')
@staticInterop
class HTMLDialogElement extends HTMLElement {
  external factory HTMLDialogElement();
}

extension HTMLDialogElementExtension on HTMLDialogElement {
  external JSBoolean get open;
  external set open(JSBoolean value);
  external JSString get returnValue;
  external set returnValue(JSString value);
  external JSUndefined show();
  external JSUndefined showModal();
  external JSUndefined close();
  external JSUndefined close_1(JSString returnValue);
}

@JS('HTMLScriptElement')
@staticInterop
class HTMLScriptElement extends HTMLElement
    implements HTMLAttributionSrcElementUtils {
  external factory HTMLScriptElement();
  external static JSBoolean supports(JSString type);
}

extension HTMLScriptElementExtension on HTMLScriptElement {
  external JSString get src;
  external set src(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSBoolean get noModule;
  external set noModule(JSBoolean value);
  external JSBoolean get async;
  external set async(JSBoolean value);
  external JSBoolean get defer;
  external set defer(JSBoolean value);
  external JSString? get crossOrigin;
  external set crossOrigin(JSString? value);
  external JSString get text;
  external set text(JSString value);
  external JSString get integrity;
  external set integrity(JSString value);
  external JSString get referrerPolicy;
  external set referrerPolicy(JSString value);
  external DOMTokenList get blocking;
  external JSString get charset;
  external set charset(JSString value);
  external JSString get event;
  external set event(JSString value);
  external JSString get htmlFor;
  external set htmlFor(JSString value);
  external JSString get fetchPriority;
  external set fetchPriority(JSString value);
}

@JS('HTMLTemplateElement')
@staticInterop
class HTMLTemplateElement extends HTMLElement {
  external factory HTMLTemplateElement();
}

extension HTMLTemplateElementExtension on HTMLTemplateElement {
  external DocumentFragment get content;
}

@JS('HTMLSlotElement')
@staticInterop
class HTMLSlotElement extends HTMLElement {
  external factory HTMLSlotElement();
}

extension HTMLSlotElementExtension on HTMLSlotElement {
  external JSString get name;
  external set name(JSString value);
  external JSArray assignedNodes();
  external JSArray assignedNodes_1(AssignedNodesOptions options);
  external JSArray assignedElements();
  external JSArray assignedElements_1(AssignedNodesOptions options);
  external JSUndefined assign(JSAny nodes);
}

@JS('AssignedNodesOptions')
@staticInterop
class AssignedNodesOptions {
  external factory AssignedNodesOptions();
}

extension AssignedNodesOptionsExtension on AssignedNodesOptions {
  // TODO
}

@JS('HTMLCanvasElement')
@staticInterop
class HTMLCanvasElement extends HTMLElement {
  external factory HTMLCanvasElement();
}

extension HTMLCanvasElementExtension on HTMLCanvasElement {
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
  external RenderingContext? getContext(JSString contextId);
  external RenderingContext? getContext_1(JSString contextId, JSAny options);
  external JSString toDataURL();
  external JSString toDataURL_1(JSString type);
  external JSString toDataURL_2(JSString type, JSAny quality);
  external JSUndefined toBlob(BlobCallback callback);
  external JSUndefined toBlob_1(BlobCallback callback, JSString type);
  external JSUndefined toBlob_2(
      BlobCallback callback, JSString type, JSAny quality);
  external OffscreenCanvas transferControlToOffscreen();
  external MediaStream captureStream();
  external MediaStream captureStream_1(JSNumber frameRequestRate);
}

@JS('CanvasRenderingContext2DSettings')
@staticInterop
class CanvasRenderingContext2DSettings {
  external factory CanvasRenderingContext2DSettings();
}

extension CanvasRenderingContext2DSettingsExtension
    on CanvasRenderingContext2DSettings {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('CanvasRenderingContext2D')
@staticInterop
class CanvasRenderingContext2D
    implements
        CanvasState,
        CanvasTransform,
        CanvasCompositing,
        CanvasImageSmoothing,
        CanvasFillStrokeStyles,
        CanvasShadowStyles,
        CanvasFilters,
        CanvasRect,
        CanvasDrawPath,
        CanvasUserInterface,
        CanvasText,
        CanvasDrawImage,
        CanvasImageData,
        CanvasPathDrawingStyles,
        CanvasTextDrawingStyles,
        CanvasPath {
  external factory CanvasRenderingContext2D();
}

extension CanvasRenderingContext2DExtension on CanvasRenderingContext2D {
  external HTMLCanvasElement get canvas;
  external CanvasRenderingContext2DSettings getContextAttributes();
}

@JS('CanvasState')
@staticInterop
class CanvasState {
  external factory CanvasState();
}

extension CanvasStateExtension on CanvasState {
  external JSUndefined save();
  external JSUndefined restore();
  external JSUndefined reset();
  external JSBoolean isContextLost();
}

@JS('CanvasTransform')
@staticInterop
class CanvasTransform {
  external factory CanvasTransform();
}

extension CanvasTransformExtension on CanvasTransform {
  external JSUndefined scale(JSNumber x, JSNumber y);
  external JSUndefined rotate(JSNumber angle);
  external JSUndefined translate(JSNumber x, JSNumber y);
  external JSUndefined transform(
      JSNumber a, JSNumber b, JSNumber c, JSNumber d, JSNumber e, JSNumber f);
  external DOMMatrix getTransform();
  external JSUndefined setTransform(
      JSNumber a, JSNumber b, JSNumber c, JSNumber d, JSNumber e, JSNumber f);
  @JS('setTransform')
  external JSUndefined setTransform1();
  @JS('setTransform')
  external JSUndefined setTransform1_1(DOMMatrix2DInit transform);
  external JSUndefined resetTransform();
}

@JS('CanvasCompositing')
@staticInterop
class CanvasCompositing {
  external factory CanvasCompositing();
}

extension CanvasCompositingExtension on CanvasCompositing {
  external JSNumber get globalAlpha;
  external set globalAlpha(JSNumber value);
  external JSString get globalCompositeOperation;
  external set globalCompositeOperation(JSString value);
}

@JS('CanvasImageSmoothing')
@staticInterop
class CanvasImageSmoothing {
  external factory CanvasImageSmoothing();
}

extension CanvasImageSmoothingExtension on CanvasImageSmoothing {
  external JSBoolean get imageSmoothingEnabled;
  external set imageSmoothingEnabled(JSBoolean value);
  external ImageSmoothingQuality get imageSmoothingQuality;
  external set imageSmoothingQuality(ImageSmoothingQuality value);
}

@JS('CanvasFillStrokeStyles')
@staticInterop
class CanvasFillStrokeStyles {
  external factory CanvasFillStrokeStyles();
}

extension CanvasFillStrokeStylesExtension on CanvasFillStrokeStyles {
  external JSAny get strokeStyle;
  external set strokeStyle(JSAny value);
  external JSAny get fillStyle;
  external set fillStyle(JSAny value);
  external CanvasGradient createLinearGradient(
      JSNumber x0, JSNumber y0, JSNumber x1, JSNumber y1);
  external CanvasGradient createRadialGradient(JSNumber x0, JSNumber y0,
      JSNumber r0, JSNumber x1, JSNumber y1, JSNumber r1);
  external CanvasGradient createConicGradient(
      JSNumber startAngle, JSNumber x, JSNumber y);
  external CanvasPattern? createPattern(
      CanvasImageSource image, JSString repetition);
}

@JS('CanvasShadowStyles')
@staticInterop
class CanvasShadowStyles {
  external factory CanvasShadowStyles();
}

extension CanvasShadowStylesExtension on CanvasShadowStyles {
  external JSNumber get shadowOffsetX;
  external set shadowOffsetX(JSNumber value);
  external JSNumber get shadowOffsetY;
  external set shadowOffsetY(JSNumber value);
  external JSNumber get shadowBlur;
  external set shadowBlur(JSNumber value);
  external JSString get shadowColor;
  external set shadowColor(JSString value);
}

@JS('CanvasFilters')
@staticInterop
class CanvasFilters {
  external factory CanvasFilters();
}

extension CanvasFiltersExtension on CanvasFilters {
  external JSString get filter;
  external set filter(JSString value);
}

@JS('CanvasRect')
@staticInterop
class CanvasRect {
  external factory CanvasRect();
}

extension CanvasRectExtension on CanvasRect {
  external JSUndefined clearRect(
      JSNumber x, JSNumber y, JSNumber w, JSNumber h);
  external JSUndefined fillRect(JSNumber x, JSNumber y, JSNumber w, JSNumber h);
  external JSUndefined strokeRect(
      JSNumber x, JSNumber y, JSNumber w, JSNumber h);
}

@JS('CanvasDrawPath')
@staticInterop
class CanvasDrawPath {
  external factory CanvasDrawPath();
}

extension CanvasDrawPathExtension on CanvasDrawPath {
  external JSUndefined beginPath();
  external JSUndefined fill();
  external JSUndefined fill_1(CanvasFillRule fillRule);
  @JS('fill')
  external JSUndefined fill1(Path2D path);
  @JS('fill')
  external JSUndefined fill1_1(Path2D path, CanvasFillRule fillRule);
  external JSUndefined stroke();
  @JS('stroke')
  external JSUndefined stroke1(Path2D path);
  external JSUndefined clip();
  external JSUndefined clip_1(CanvasFillRule fillRule);
  @JS('clip')
  external JSUndefined clip1(Path2D path);
  @JS('clip')
  external JSUndefined clip1_1(Path2D path, CanvasFillRule fillRule);
  external JSBoolean isPointInPath(JSNumber x, JSNumber y);
  external JSBoolean isPointInPath_1(
      JSNumber x, JSNumber y, CanvasFillRule fillRule);
  @JS('isPointInPath')
  external JSBoolean isPointInPath1(Path2D path, JSNumber x, JSNumber y);
  @JS('isPointInPath')
  external JSBoolean isPointInPath1_1(
      Path2D path, JSNumber x, JSNumber y, CanvasFillRule fillRule);
  external JSBoolean isPointInStroke(JSNumber x, JSNumber y);
  @JS('isPointInStroke')
  external JSBoolean isPointInStroke1(Path2D path, JSNumber x, JSNumber y);
}

@JS('CanvasUserInterface')
@staticInterop
class CanvasUserInterface {
  external factory CanvasUserInterface();
}

extension CanvasUserInterfaceExtension on CanvasUserInterface {
  external JSUndefined drawFocusIfNeeded(Element element);
  @JS('drawFocusIfNeeded')
  external JSUndefined drawFocusIfNeeded1(Path2D path, Element element);
  external JSUndefined scrollPathIntoView();
  @JS('scrollPathIntoView')
  external JSUndefined scrollPathIntoView1(Path2D path);
}

@JS('CanvasText')
@staticInterop
class CanvasText {
  external factory CanvasText();
}

extension CanvasTextExtension on CanvasText {
  external JSUndefined fillText(JSString text, JSNumber x, JSNumber y);
  external JSUndefined fillText_1(
      JSString text, JSNumber x, JSNumber y, JSNumber maxWidth);
  external JSUndefined strokeText(JSString text, JSNumber x, JSNumber y);
  external JSUndefined strokeText_1(
      JSString text, JSNumber x, JSNumber y, JSNumber maxWidth);
  external TextMetrics measureText(JSString text);
}

@JS('CanvasDrawImage')
@staticInterop
class CanvasDrawImage {
  external factory CanvasDrawImage();
}

extension CanvasDrawImageExtension on CanvasDrawImage {
  external JSUndefined drawImage(
      CanvasImageSource image, JSNumber dx, JSNumber dy);
  @JS('drawImage')
  external JSUndefined drawImage1(CanvasImageSource image, JSNumber dx,
      JSNumber dy, JSNumber dw, JSNumber dh);
  @JS('drawImage')
  external JSUndefined drawImage2(
      CanvasImageSource image,
      JSNumber sx,
      JSNumber sy,
      JSNumber sw,
      JSNumber sh,
      JSNumber dx,
      JSNumber dy,
      JSNumber dw,
      JSNumber dh);
}

@JS('CanvasImageData')
@staticInterop
class CanvasImageData {
  external factory CanvasImageData();
}

extension CanvasImageDataExtension on CanvasImageData {
  external ImageData createImageData(JSNumber sw, JSNumber sh);
  external ImageData createImageData_1(
      JSNumber sw, JSNumber sh, ImageDataSettings settings);
  @JS('createImageData')
  external ImageData createImageData1(ImageData imagedata);
  external ImageData getImageData(
      JSNumber sx, JSNumber sy, JSNumber sw, JSNumber sh);
  external ImageData getImageData_1(JSNumber sx, JSNumber sy, JSNumber sw,
      JSNumber sh, ImageDataSettings settings);
  external JSUndefined putImageData(
      ImageData imagedata, JSNumber dx, JSNumber dy);
  @JS('putImageData')
  external JSUndefined putImageData1(
      ImageData imagedata,
      JSNumber dx,
      JSNumber dy,
      JSNumber dirtyX,
      JSNumber dirtyY,
      JSNumber dirtyWidth,
      JSNumber dirtyHeight);
}

@JS('CanvasPathDrawingStyles')
@staticInterop
class CanvasPathDrawingStyles {
  external factory CanvasPathDrawingStyles();
}

extension CanvasPathDrawingStylesExtension on CanvasPathDrawingStyles {
  external JSNumber get lineWidth;
  external set lineWidth(JSNumber value);
  external CanvasLineCap get lineCap;
  external set lineCap(CanvasLineCap value);
  external CanvasLineJoin get lineJoin;
  external set lineJoin(CanvasLineJoin value);
  external JSNumber get miterLimit;
  external set miterLimit(JSNumber value);
  external JSUndefined setLineDash(JSArray segments);
  external JSArray getLineDash();
  external JSNumber get lineDashOffset;
  external set lineDashOffset(JSNumber value);
}

@JS('CanvasTextDrawingStyles')
@staticInterop
class CanvasTextDrawingStyles {
  external factory CanvasTextDrawingStyles();
}

extension CanvasTextDrawingStylesExtension on CanvasTextDrawingStyles {
  external JSString get font;
  external set font(JSString value);
  external CanvasTextAlign get textAlign;
  external set textAlign(CanvasTextAlign value);
  external CanvasTextBaseline get textBaseline;
  external set textBaseline(CanvasTextBaseline value);
  external CanvasDirection get direction;
  external set direction(CanvasDirection value);
  external JSString get letterSpacing;
  external set letterSpacing(JSString value);
  external CanvasFontKerning get fontKerning;
  external set fontKerning(CanvasFontKerning value);
  external CanvasFontStretch get fontStretch;
  external set fontStretch(CanvasFontStretch value);
  external CanvasFontVariantCaps get fontVariantCaps;
  external set fontVariantCaps(CanvasFontVariantCaps value);
  external CanvasTextRendering get textRendering;
  external set textRendering(CanvasTextRendering value);
  external JSString get wordSpacing;
  external set wordSpacing(JSString value);
}

@JS('CanvasPath')
@staticInterop
class CanvasPath {
  external factory CanvasPath();
}

extension CanvasPathExtension on CanvasPath {
  external JSUndefined closePath();
  external JSUndefined moveTo(JSNumber x, JSNumber y);
  external JSUndefined lineTo(JSNumber x, JSNumber y);
  external JSUndefined quadraticCurveTo(
      JSNumber cpx, JSNumber cpy, JSNumber x, JSNumber y);
  external JSUndefined bezierCurveTo(JSNumber cp1x, JSNumber cp1y,
      JSNumber cp2x, JSNumber cp2y, JSNumber x, JSNumber y);
  external JSUndefined arcTo(
      JSNumber x1, JSNumber y1, JSNumber x2, JSNumber y2, JSNumber radius);
  external JSUndefined rect(JSNumber x, JSNumber y, JSNumber w, JSNumber h);
  external JSUndefined roundRect(
      JSNumber x, JSNumber y, JSNumber w, JSNumber h);
  external JSUndefined roundRect_1(
      JSNumber x, JSNumber y, JSNumber w, JSNumber h, JSAny radii);
  external JSUndefined arc(JSNumber x, JSNumber y, JSNumber radius,
      JSNumber startAngle, JSNumber endAngle);
  external JSUndefined arc_1(JSNumber x, JSNumber y, JSNumber radius,
      JSNumber startAngle, JSNumber endAngle, JSBoolean counterclockwise);
  external JSUndefined ellipse(
      JSNumber x,
      JSNumber y,
      JSNumber radiusX,
      JSNumber radiusY,
      JSNumber rotation,
      JSNumber startAngle,
      JSNumber endAngle);
  external JSUndefined ellipse_1(
      JSNumber x,
      JSNumber y,
      JSNumber radiusX,
      JSNumber radiusY,
      JSNumber rotation,
      JSNumber startAngle,
      JSNumber endAngle,
      JSBoolean counterclockwise);
}

@JS('CanvasGradient')
@staticInterop
class CanvasGradient {
  external factory CanvasGradient();
}

extension CanvasGradientExtension on CanvasGradient {
  external JSUndefined addColorStop(JSNumber offset, JSString color);
}

@JS('CanvasPattern')
@staticInterop
class CanvasPattern {
  external factory CanvasPattern();
}

extension CanvasPatternExtension on CanvasPattern {
  external JSUndefined setTransform();
  external JSUndefined setTransform_1(DOMMatrix2DInit transform);
}

@JS('TextMetrics')
@staticInterop
class TextMetrics {
  external factory TextMetrics();
}

extension TextMetricsExtension on TextMetrics {
  external JSNumber get width;
  external JSNumber get actualBoundingBoxLeft;
  external JSNumber get actualBoundingBoxRight;
  external JSNumber get fontBoundingBoxAscent;
  external JSNumber get fontBoundingBoxDescent;
  external JSNumber get actualBoundingBoxAscent;
  external JSNumber get actualBoundingBoxDescent;
  external JSNumber get emHeightAscent;
  external JSNumber get emHeightDescent;
  external JSNumber get hangingBaseline;
  external JSNumber get alphabeticBaseline;
  external JSNumber get ideographicBaseline;
}

@JS('ImageDataSettings')
@staticInterop
class ImageDataSettings {
  external factory ImageDataSettings();
}

extension ImageDataSettingsExtension on ImageDataSettings {
  // TODO
}

@JS('ImageData')
@staticInterop
class ImageData {
  external factory ImageData();
  external factory ImageData.a1(JSNumber sw, JSNumber sh);
  external factory ImageData.a1_1(
      JSNumber sw, JSNumber sh, ImageDataSettings settings);
  external factory ImageData.a2(JSUint8ClampedArray data, JSNumber sw);
  external factory ImageData.a2_1(
      JSUint8ClampedArray data, JSNumber sw, JSNumber sh);
  external factory ImageData.a2_2(JSUint8ClampedArray data, JSNumber sw,
      JSNumber sh, ImageDataSettings settings);
}

extension ImageDataExtension on ImageData {
  external JSNumber get width;
  external JSNumber get height;
  external JSUint8ClampedArray get data;
  external PredefinedColorSpace get colorSpace;
}

@JS('Path2D')
@staticInterop
class Path2D implements CanvasPath {
  external factory Path2D();
  external factory Path2D.a1();
  external factory Path2D.a1_1(JSAny path);
}

extension Path2DExtension on Path2D {
  external JSUndefined addPath(Path2D path);
  external JSUndefined addPath_1(Path2D path, DOMMatrix2DInit transform);
}

@JS('ImageBitmapRenderingContext')
@staticInterop
class ImageBitmapRenderingContext {
  external factory ImageBitmapRenderingContext();
}

extension ImageBitmapRenderingContextExtension on ImageBitmapRenderingContext {
  external JSAny get canvas;
  external JSUndefined transferFromImageBitmap(ImageBitmap? bitmap);
}

@JS('ImageBitmapRenderingContextSettings')
@staticInterop
class ImageBitmapRenderingContextSettings {
  external factory ImageBitmapRenderingContextSettings();
}

extension ImageBitmapRenderingContextSettingsExtension
    on ImageBitmapRenderingContextSettings {
  // TODO
}

@JS('ImageEncodeOptions')
@staticInterop
class ImageEncodeOptions {
  external factory ImageEncodeOptions();
}

extension ImageEncodeOptionsExtension on ImageEncodeOptions {
  // TODO
  // TODO
}

@JS('OffscreenCanvas')
@staticInterop
class OffscreenCanvas extends EventTarget {
  external factory OffscreenCanvas();
  external factory OffscreenCanvas.a1(JSNumber width, JSNumber height);
}

extension OffscreenCanvasExtension on OffscreenCanvas {
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get height;
  external set height(JSNumber value);
  external OffscreenRenderingContext? getContext(
      OffscreenRenderingContextId contextId);
  external OffscreenRenderingContext? getContext_1(
      OffscreenRenderingContextId contextId, JSAny options);
  external ImageBitmap transferToImageBitmap();
  external JSPromise convertToBlob();
  external JSPromise convertToBlob_1(ImageEncodeOptions options);
  external EventHandler get oncontextlost;
  external set oncontextlost(EventHandler value);
  external EventHandler get oncontextrestored;
  external set oncontextrestored(EventHandler value);
}

@JS('OffscreenCanvasRenderingContext2D')
@staticInterop
class OffscreenCanvasRenderingContext2D
    implements
        CanvasState,
        CanvasTransform,
        CanvasCompositing,
        CanvasImageSmoothing,
        CanvasFillStrokeStyles,
        CanvasShadowStyles,
        CanvasFilters,
        CanvasRect,
        CanvasDrawPath,
        CanvasText,
        CanvasDrawImage,
        CanvasImageData,
        CanvasPathDrawingStyles,
        CanvasTextDrawingStyles,
        CanvasPath {
  external factory OffscreenCanvasRenderingContext2D();
}

extension OffscreenCanvasRenderingContext2DExtension
    on OffscreenCanvasRenderingContext2D {
  external JSUndefined commit();
  external OffscreenCanvas get canvas;
}

@JS('CustomElementRegistry')
@staticInterop
class CustomElementRegistry {
  external factory CustomElementRegistry();
}

extension CustomElementRegistryExtension on CustomElementRegistry {
  external JSUndefined define(
      JSString name, CustomElementConstructor constructor);
  external JSUndefined define_1(JSString name,
      CustomElementConstructor constructor, ElementDefinitionOptions options);
  external JSAny get(JSString name);
  external JSPromise whenDefined(JSString name);
  external JSUndefined upgrade(Node root);
}

@JS('ElementDefinitionOptions')
@staticInterop
class ElementDefinitionOptions {
  external factory ElementDefinitionOptions();
}

extension ElementDefinitionOptionsExtension on ElementDefinitionOptions {
  // TODO
}

@JS('ElementInternals')
@staticInterop
class ElementInternals implements ARIAMixin {
  external factory ElementInternals();
}

extension ElementInternalsExtension on ElementInternals {
  external CustomStateSet get states;
  external ShadowRoot? get shadowRoot;
  external JSUndefined setFormValue(JSAny? value);
  external JSUndefined setFormValue_1(JSAny? value, JSAny? state);
  external HTMLFormElement? get form;
  external JSUndefined setValidity();
  external JSUndefined setValidity_1(ValidityStateFlags flags);
  external JSUndefined setValidity_2(
      ValidityStateFlags flags, JSString message);
  external JSUndefined setValidity_3(
      ValidityStateFlags flags, JSString message, HTMLElement anchor);
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external NodeList get labels;
}

@JS('ValidityStateFlags')
@staticInterop
class ValidityStateFlags {
  external factory ValidityStateFlags();
}

extension ValidityStateFlagsExtension on ValidityStateFlags {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('UserActivation')
@staticInterop
class UserActivation {
  external factory UserActivation();
}

extension UserActivationExtension on UserActivation {
  external JSBoolean get hasBeenActive;
  external JSBoolean get isActive;
}

@JS('FocusOptions')
@staticInterop
class FocusOptions {
  external factory FocusOptions();
}

extension FocusOptionsExtension on FocusOptions {
  // TODO
  // TODO
}

@JS('ElementContentEditable')
@staticInterop
class ElementContentEditable {
  external factory ElementContentEditable();
}

extension ElementContentEditableExtension on ElementContentEditable {
  external JSString get contentEditable;
  external set contentEditable(JSString value);
  external JSString get enterKeyHint;
  external set enterKeyHint(JSString value);
  external JSBoolean get isContentEditable;
  external JSString get inputMode;
  external set inputMode(JSString value);
  external JSString get virtualKeyboardPolicy;
  external set virtualKeyboardPolicy(JSString value);
}

@JS('DataTransfer')
@staticInterop
class DataTransfer {
  external factory DataTransfer();
}

extension DataTransferExtension on DataTransfer {
  external JSString get dropEffect;
  external set dropEffect(JSString value);
  external JSString get effectAllowed;
  external set effectAllowed(JSString value);
  external DataTransferItemList get items;
  external JSUndefined setDragImage(Element image, JSNumber x, JSNumber y);
  external JSArray get types;
  external JSString getData(JSString format);
  external JSUndefined setData(JSString format, JSString data);
  external JSUndefined clearData();
  external JSUndefined clearData_1(JSString format);
  external FileList get files;
}

@JS('DataTransferItemList')
@staticInterop
class DataTransferItemList {
  external factory DataTransferItemList();
}

extension DataTransferItemListExtension on DataTransferItemList {
  external JSNumber get length;
  external DataTransferItem? add(JSString data, JSString type);
  @JS('add')
  external DataTransferItem? add1(File data);
  external JSUndefined remove(JSNumber index);
  external JSUndefined clear();
}

@JS('DataTransferItem')
@staticInterop
class DataTransferItem {
  external factory DataTransferItem();
}

extension DataTransferItemExtension on DataTransferItem {
  external FileSystemEntry? webkitGetAsEntry();
  external JSPromise getAsFileSystemHandle();
  external JSString get kind;
  external JSString get type;
  external JSUndefined getAsString(FunctionStringCallback? callback);
  external File? getAsFile();
}

@JS('DragEvent')
@staticInterop
class DragEvent extends MouseEvent {
  external factory DragEvent();
  external factory DragEvent.a1(JSString type);
  external factory DragEvent.a1_1(JSString type, DragEventInit eventInitDict);
}

extension DragEventExtension on DragEvent {
  external DataTransfer? get dataTransfer;
}

@JS('DragEventInit')
@staticInterop
class DragEventInit extends MouseEventInit {
  external factory DragEventInit();
}

extension DragEventInitExtension on DragEventInit {
  // TODO
}

@JS('PopoverTargetElement')
@staticInterop
class PopoverTargetElement {
  external factory PopoverTargetElement();
}

extension PopoverTargetElementExtension on PopoverTargetElement {
  external Element? get popoverToggleTargetElement;
  external set popoverToggleTargetElement(Element? value);
  external Element? get popoverHideTargetElement;
  external set popoverHideTargetElement(Element? value);
  external Element? get popoverShowTargetElement;
  external set popoverShowTargetElement(Element? value);
}

@JS('ToggleEvent')
@staticInterop
class ToggleEvent extends Event {
  external factory ToggleEvent();
  external factory ToggleEvent.a1(JSString type);
  external factory ToggleEvent.a1_1(
      JSString type, ToggleEventInit eventInitDict);
}

extension ToggleEventExtension on ToggleEvent {
  external JSString get oldState;
  external JSString get newState;
}

@JS('ToggleEventInit')
@staticInterop
class ToggleEventInit extends EventInit {
  external factory ToggleEventInit();
}

extension ToggleEventInitExtension on ToggleEventInit {
  // TODO
  // TODO
}

@JS()
external Window get window;

@JS('Window')
@staticInterop
class Window extends EventTarget
    implements
        GlobalEventHandlers,
        WindowEventHandlers,
        WindowOrWorkerGlobalScope,
        AnimationFrameProvider,
        WindowSessionStorage,
        WindowLocalStorage {
  external factory Window();
}

extension WindowExtension on Window {
  external JSNumber get orientation;
  external EventHandler get onorientationchange;
  external set onorientationchange(EventHandler value);
  external CookieStore get cookieStore;
  external JSUndefined navigate(SpatialNavigationDirection dir);
  external MediaQueryList matchMedia(JSString query);
  external Screen get screen;
  external VisualViewport? get visualViewport;
  external JSUndefined moveTo(JSNumber x, JSNumber y);
  external JSUndefined moveBy(JSNumber x, JSNumber y);
  external JSUndefined resizeTo(JSNumber width, JSNumber height);
  external JSUndefined resizeBy(JSNumber x, JSNumber y);
  external JSNumber get innerWidth;
  external JSNumber get innerHeight;
  external JSNumber get scrollX;
  external JSNumber get pageXOffset;
  external JSNumber get scrollY;
  external JSNumber get pageYOffset;
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
  external JSNumber get screenX;
  external JSNumber get screenLeft;
  external JSNumber get screenY;
  external JSNumber get screenTop;
  external JSNumber get outerWidth;
  external JSNumber get outerHeight;
  external JSNumber get devicePixelRatio;
  external CSSStyleDeclaration getComputedStyle(Element elt);
  external CSSStyleDeclaration getComputedStyle_1(
      Element elt, JSString? pseudoElt);
  external JSPromise getDigitalGoodsService(JSString serviceProvider);
  external JSAny get event;
  external JSPromise showOpenFilePicker();
  external JSPromise showOpenFilePicker_1(OpenFilePickerOptions options);
  external JSPromise showSaveFilePicker();
  external JSPromise showSaveFilePicker_1(SaveFilePickerOptions options);
  external JSPromise showDirectoryPicker();
  external JSPromise showDirectoryPicker_1(DirectoryPickerOptions options);
  external Window get window;
  external Window get self;
  external Document get document;
  external JSString get name;
  external set name(JSString value);
  external Location get location;
  external History get history;
  external CustomElementRegistry get customElements;
  external BarProp get locationbar;
  external BarProp get menubar;
  external BarProp get personalbar;
  external BarProp get scrollbars;
  external BarProp get statusbar;
  external BarProp get toolbar;
  external JSString get status;
  external set status(JSString value);
  external JSUndefined close();
  external JSBoolean get closed;
  external JSUndefined stop();
  external JSUndefined focus();
  external JSUndefined blur();
  external Window get frames;
  external JSNumber get length;
  external Window? get top;
  external JSAny get opener;
  external set opener(JSAny value);
  external Window? get parent;
  external Element? get frameElement;
  external Window? open();
  external Window? open_1(JSString url);
  external Window? open_2(JSString url, JSString target);
  external Window? open_3(JSString url, JSString target, JSString features);
  external Navigator get navigator;
  external Navigator get clientInformation;
  external JSBoolean get originAgentCluster;
  external JSUndefined alert();
  @JS('alert')
  external JSUndefined alert1(JSString message);
  external JSBoolean confirm();
  external JSBoolean confirm_1(JSString message);
  external JSString? prompt();
  external JSString? prompt_1(JSString message);
  external JSString? prompt_2(JSString message, JSString default_);
  external JSUndefined print();
  external JSUndefined postMessage(JSAny message, JSString targetOrigin);
  external JSUndefined postMessage_1(
      JSAny message, JSString targetOrigin, JSArray transfer);
  @JS('postMessage')
  external JSUndefined postMessage1(JSAny message);
  @JS('postMessage')
  external JSUndefined postMessage1_1(
      JSAny message, WindowPostMessageOptions options);
  external JSUndefined captureEvents();
  external JSUndefined releaseEvents();
  external External get external;
  external JSPromise queryLocalFonts();
  external JSPromise queryLocalFonts_1(QueryOptions options);
  external EventHandler get onappinstalled;
  external set onappinstalled(EventHandler value);
  external EventHandler get onbeforeinstallprompt;
  external set onbeforeinstallprompt(EventHandler value);
  external Navigation get navigation;
  external EventHandler get ondeviceorientation;
  external set ondeviceorientation(EventHandler value);
  external EventHandler get ondeviceorientationabsolute;
  external set ondeviceorientationabsolute(EventHandler value);
  external EventHandler get oncompassneedscalibration;
  external set oncompassneedscalibration(EventHandler value);
  external EventHandler get ondevicemotion;
  external set ondevicemotion(EventHandler value);
  external PortalHost? get portalHost;
  external JSNumber requestIdleCallback(IdleRequestCallback callback);
  external JSNumber requestIdleCallback_1(
      IdleRequestCallback callback, IdleRequestOptions options);
  external JSUndefined cancelIdleCallback(JSNumber handle);
  external Selection? getSelection();
  external SpeechSynthesis get speechSynthesis;
  external LaunchQueue get launchQueue;
  external JSPromise getScreenDetails();
}

@JS('WindowPostMessageOptions')
@staticInterop
class WindowPostMessageOptions extends StructuredSerializeOptions {
  external factory WindowPostMessageOptions();
}

extension WindowPostMessageOptionsExtension on WindowPostMessageOptions {
  // TODO
}

@JS('BarProp')
@staticInterop
class BarProp {
  external factory BarProp();
}

extension BarPropExtension on BarProp {
  external JSBoolean get visible;
}

@JS('Location')
@staticInterop
class Location {
  external factory Location();
}

extension LocationExtension on Location {
  external JSString get href;
  external set href(JSString value);
  external JSString get origin;
  external JSString get protocol;
  external set protocol(JSString value);
  external JSString get host;
  external set host(JSString value);
  external JSString get hostname;
  external set hostname(JSString value);
  external JSString get port;
  external set port(JSString value);
  external JSString get pathname;
  external set pathname(JSString value);
  external JSString get search;
  external set search(JSString value);
  external JSString get hash;
  external set hash(JSString value);
  external JSUndefined assign(JSString url);
  external JSUndefined replace(JSString url);
  external JSUndefined reload();
  external DOMStringList get ancestorOrigins;
}

@JS('History')
@staticInterop
class History {
  external factory History();
}

extension HistoryExtension on History {
  external JSNumber get length;
  external ScrollRestoration get scrollRestoration;
  external set scrollRestoration(ScrollRestoration value);
  external JSAny get state;
  external JSUndefined go();
  external JSUndefined go_1(JSNumber delta);
  external JSUndefined back();
  external JSUndefined forward();
  external JSUndefined pushState(JSAny data, JSString unused);
  external JSUndefined pushState_1(JSAny data, JSString unused, JSString? url);
  external JSUndefined replaceState(JSAny data, JSString unused);
  external JSUndefined replaceState_1(
      JSAny data, JSString unused, JSString? url);
}

@JS('PopStateEvent')
@staticInterop
class PopStateEvent extends Event {
  external factory PopStateEvent();
  external factory PopStateEvent.a1(JSString type);
  external factory PopStateEvent.a1_1(
      JSString type, PopStateEventInit eventInitDict);
}

extension PopStateEventExtension on PopStateEvent {
  external JSAny get state;
}

@JS('PopStateEventInit')
@staticInterop
class PopStateEventInit extends EventInit {
  external factory PopStateEventInit();
}

extension PopStateEventInitExtension on PopStateEventInit {
  // TODO
}

@JS('HashChangeEvent')
@staticInterop
class HashChangeEvent extends Event {
  external factory HashChangeEvent();
  external factory HashChangeEvent.a1(JSString type);
  external factory HashChangeEvent.a1_1(
      JSString type, HashChangeEventInit eventInitDict);
}

extension HashChangeEventExtension on HashChangeEvent {
  external JSString get oldURL;
  external JSString get newURL;
}

@JS('HashChangeEventInit')
@staticInterop
class HashChangeEventInit extends EventInit {
  external factory HashChangeEventInit();
}

extension HashChangeEventInitExtension on HashChangeEventInit {
  // TODO
  // TODO
}

@JS('PageTransitionEvent')
@staticInterop
class PageTransitionEvent extends Event {
  external factory PageTransitionEvent();
  external factory PageTransitionEvent.a1(JSString type);
  external factory PageTransitionEvent.a1_1(
      JSString type, PageTransitionEventInit eventInitDict);
}

extension PageTransitionEventExtension on PageTransitionEvent {
  external JSBoolean get persisted;
}

@JS('PageTransitionEventInit')
@staticInterop
class PageTransitionEventInit extends EventInit {
  external factory PageTransitionEventInit();
}

extension PageTransitionEventInitExtension on PageTransitionEventInit {
  // TODO
}

@JS('BeforeUnloadEvent')
@staticInterop
class BeforeUnloadEvent extends Event {
  external factory BeforeUnloadEvent();
}

extension BeforeUnloadEventExtension on BeforeUnloadEvent {
  external JSString get returnValue;
  external set returnValue(JSString value);
}

@JS('ErrorEvent')
@staticInterop
class ErrorEvent extends Event {
  external factory ErrorEvent();
  external factory ErrorEvent.a1(JSString type);
  external factory ErrorEvent.a1_1(JSString type, ErrorEventInit eventInitDict);
}

extension ErrorEventExtension on ErrorEvent {
  external JSString get message;
  external JSString get filename;
  external JSNumber get lineno;
  external JSNumber get colno;
  external JSAny get error;
}

@JS('ErrorEventInit')
@staticInterop
class ErrorEventInit extends EventInit {
  external factory ErrorEventInit();
}

extension ErrorEventInitExtension on ErrorEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('PromiseRejectionEvent')
@staticInterop
class PromiseRejectionEvent extends Event {
  external factory PromiseRejectionEvent();
  external factory PromiseRejectionEvent.a1(
      JSString type, PromiseRejectionEventInit eventInitDict);
}

extension PromiseRejectionEventExtension on PromiseRejectionEvent {
  external JSPromise get promise;
  external JSAny get reason;
}

@JS('PromiseRejectionEventInit')
@staticInterop
class PromiseRejectionEventInit extends EventInit {
  external factory PromiseRejectionEventInit();
}

extension PromiseRejectionEventInitExtension on PromiseRejectionEventInit {
  // TODO
  // TODO
}

@JS('GlobalEventHandlers')
@staticInterop
class GlobalEventHandlers {
  external factory GlobalEventHandlers();
}

extension GlobalEventHandlersExtension on GlobalEventHandlers {
  external EventHandler get onanimationstart;
  external set onanimationstart(EventHandler value);
  external EventHandler get onanimationiteration;
  external set onanimationiteration(EventHandler value);
  external EventHandler get onanimationend;
  external set onanimationend(EventHandler value);
  external EventHandler get onanimationcancel;
  external set onanimationcancel(EventHandler value);
  external EventHandler get ontransitionrun;
  external set ontransitionrun(EventHandler value);
  external EventHandler get ontransitionstart;
  external set ontransitionstart(EventHandler value);
  external EventHandler get ontransitionend;
  external set ontransitionend(EventHandler value);
  external EventHandler get ontransitioncancel;
  external set ontransitioncancel(EventHandler value);
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external EventHandler get onauxclick;
  external set onauxclick(EventHandler value);
  external EventHandler get onbeforeinput;
  external set onbeforeinput(EventHandler value);
  external EventHandler get onbeforematch;
  external set onbeforematch(EventHandler value);
  external EventHandler get onblur;
  external set onblur(EventHandler value);
  external EventHandler get oncancel;
  external set oncancel(EventHandler value);
  external EventHandler get oncanplay;
  external set oncanplay(EventHandler value);
  external EventHandler get oncanplaythrough;
  external set oncanplaythrough(EventHandler value);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
  external EventHandler get onclick;
  external set onclick(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external EventHandler get oncontextlost;
  external set oncontextlost(EventHandler value);
  external EventHandler get oncontextmenu;
  external set oncontextmenu(EventHandler value);
  external EventHandler get oncontextrestored;
  external set oncontextrestored(EventHandler value);
  external EventHandler get oncopy;
  external set oncopy(EventHandler value);
  external EventHandler get oncuechange;
  external set oncuechange(EventHandler value);
  external EventHandler get oncut;
  external set oncut(EventHandler value);
  external EventHandler get ondblclick;
  external set ondblclick(EventHandler value);
  external EventHandler get ondrag;
  external set ondrag(EventHandler value);
  external EventHandler get ondragend;
  external set ondragend(EventHandler value);
  external EventHandler get ondragenter;
  external set ondragenter(EventHandler value);
  external EventHandler get ondragleave;
  external set ondragleave(EventHandler value);
  external EventHandler get ondragover;
  external set ondragover(EventHandler value);
  external EventHandler get ondragstart;
  external set ondragstart(EventHandler value);
  external EventHandler get ondrop;
  external set ondrop(EventHandler value);
  external EventHandler get ondurationchange;
  external set ondurationchange(EventHandler value);
  external EventHandler get onemptied;
  external set onemptied(EventHandler value);
  external EventHandler get onended;
  external set onended(EventHandler value);
  external OnErrorEventHandler get onerror;
  external set onerror(OnErrorEventHandler value);
  external EventHandler get onfocus;
  external set onfocus(EventHandler value);
  external EventHandler get onformdata;
  external set onformdata(EventHandler value);
  external EventHandler get oninput;
  external set oninput(EventHandler value);
  external EventHandler get oninvalid;
  external set oninvalid(EventHandler value);
  external EventHandler get onkeydown;
  external set onkeydown(EventHandler value);
  external EventHandler get onkeypress;
  external set onkeypress(EventHandler value);
  external EventHandler get onkeyup;
  external set onkeyup(EventHandler value);
  external EventHandler get onload;
  external set onload(EventHandler value);
  external EventHandler get onloadeddata;
  external set onloadeddata(EventHandler value);
  external EventHandler get onloadedmetadata;
  external set onloadedmetadata(EventHandler value);
  external EventHandler get onloadstart;
  external set onloadstart(EventHandler value);
  external EventHandler get onmousedown;
  external set onmousedown(EventHandler value);
  external EventHandler get onmouseenter;
  external set onmouseenter(EventHandler value);
  external EventHandler get onmouseleave;
  external set onmouseleave(EventHandler value);
  external EventHandler get onmousemove;
  external set onmousemove(EventHandler value);
  external EventHandler get onmouseout;
  external set onmouseout(EventHandler value);
  external EventHandler get onmouseover;
  external set onmouseover(EventHandler value);
  external EventHandler get onmouseup;
  external set onmouseup(EventHandler value);
  external EventHandler get onpaste;
  external set onpaste(EventHandler value);
  external EventHandler get onpause;
  external set onpause(EventHandler value);
  external EventHandler get onplay;
  external set onplay(EventHandler value);
  external EventHandler get onplaying;
  external set onplaying(EventHandler value);
  external EventHandler get onprogress;
  external set onprogress(EventHandler value);
  external EventHandler get onratechange;
  external set onratechange(EventHandler value);
  external EventHandler get onreset;
  external set onreset(EventHandler value);
  external EventHandler get onresize;
  external set onresize(EventHandler value);
  external EventHandler get onscroll;
  external set onscroll(EventHandler value);
  external EventHandler get onscrollend;
  external set onscrollend(EventHandler value);
  external EventHandler get onsecuritypolicyviolation;
  external set onsecuritypolicyviolation(EventHandler value);
  external EventHandler get onseeked;
  external set onseeked(EventHandler value);
  external EventHandler get onseeking;
  external set onseeking(EventHandler value);
  external EventHandler get onselect;
  external set onselect(EventHandler value);
  external EventHandler get onslotchange;
  external set onslotchange(EventHandler value);
  external EventHandler get onstalled;
  external set onstalled(EventHandler value);
  external EventHandler get onsubmit;
  external set onsubmit(EventHandler value);
  external EventHandler get onsuspend;
  external set onsuspend(EventHandler value);
  external EventHandler get ontimeupdate;
  external set ontimeupdate(EventHandler value);
  external EventHandler get ontoggle;
  external set ontoggle(EventHandler value);
  external EventHandler get onvolumechange;
  external set onvolumechange(EventHandler value);
  external EventHandler get onwaiting;
  external set onwaiting(EventHandler value);
  external EventHandler get onwebkitanimationend;
  external set onwebkitanimationend(EventHandler value);
  external EventHandler get onwebkitanimationiteration;
  external set onwebkitanimationiteration(EventHandler value);
  external EventHandler get onwebkitanimationstart;
  external set onwebkitanimationstart(EventHandler value);
  external EventHandler get onwebkittransitionend;
  external set onwebkittransitionend(EventHandler value);
  external EventHandler get onwheel;
  external set onwheel(EventHandler value);
  external EventHandler get onpointerover;
  external set onpointerover(EventHandler value);
  external EventHandler get onpointerenter;
  external set onpointerenter(EventHandler value);
  external EventHandler get onpointerdown;
  external set onpointerdown(EventHandler value);
  external EventHandler get onpointermove;
  external set onpointermove(EventHandler value);
  external EventHandler get onpointerrawupdate;
  external set onpointerrawupdate(EventHandler value);
  external EventHandler get onpointerup;
  external set onpointerup(EventHandler value);
  external EventHandler get onpointercancel;
  external set onpointercancel(EventHandler value);
  external EventHandler get onpointerout;
  external set onpointerout(EventHandler value);
  external EventHandler get onpointerleave;
  external set onpointerleave(EventHandler value);
  external EventHandler get ongotpointercapture;
  external set ongotpointercapture(EventHandler value);
  external EventHandler get onlostpointercapture;
  external set onlostpointercapture(EventHandler value);
  external EventHandler get onselectstart;
  external set onselectstart(EventHandler value);
  external EventHandler get onselectionchange;
  external set onselectionchange(EventHandler value);
  external EventHandler get ontouchstart;
  external set ontouchstart(EventHandler value);
  external EventHandler get ontouchend;
  external set ontouchend(EventHandler value);
  external EventHandler get ontouchmove;
  external set ontouchmove(EventHandler value);
  external EventHandler get ontouchcancel;
  external set ontouchcancel(EventHandler value);
  external EventHandler get onbeforexrselect;
  external set onbeforexrselect(EventHandler value);
}

@JS('WindowEventHandlers')
@staticInterop
class WindowEventHandlers {
  external factory WindowEventHandlers();
}

extension WindowEventHandlersExtension on WindowEventHandlers {
  external EventHandler get ongamepadconnected;
  external set ongamepadconnected(EventHandler value);
  external EventHandler get ongamepaddisconnected;
  external set ongamepaddisconnected(EventHandler value);
  external EventHandler get onafterprint;
  external set onafterprint(EventHandler value);
  external EventHandler get onbeforeprint;
  external set onbeforeprint(EventHandler value);
  external OnBeforeUnloadEventHandler get onbeforeunload;
  external set onbeforeunload(OnBeforeUnloadEventHandler value);
  external EventHandler get onhashchange;
  external set onhashchange(EventHandler value);
  external EventHandler get onlanguagechange;
  external set onlanguagechange(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
  external EventHandler get onoffline;
  external set onoffline(EventHandler value);
  external EventHandler get ononline;
  external set ononline(EventHandler value);
  external EventHandler get onpagehide;
  external set onpagehide(EventHandler value);
  external EventHandler get onpageshow;
  external set onpageshow(EventHandler value);
  external EventHandler get onpopstate;
  external set onpopstate(EventHandler value);
  external EventHandler get onrejectionhandled;
  external set onrejectionhandled(EventHandler value);
  external EventHandler get onstorage;
  external set onstorage(EventHandler value);
  external EventHandler get onunhandledrejection;
  external set onunhandledrejection(EventHandler value);
  external EventHandler get onunload;
  external set onunload(EventHandler value);
  external EventHandler get onportalactivate;
  external set onportalactivate(EventHandler value);
}

@JS('WindowOrWorkerGlobalScope')
@staticInterop
class WindowOrWorkerGlobalScope {
  external factory WindowOrWorkerGlobalScope();
}

extension WindowOrWorkerGlobalScopeExtension on WindowOrWorkerGlobalScope {
  external IDBFactory get indexedDB;
  external Crypto get crypto;
  external JSPromise fetch(RequestInfo input);
  external JSPromise fetch_1(RequestInfo input, RequestInit init);
  external Performance get performance;
  external JSString get origin;
  external JSBoolean get isSecureContext;
  external JSBoolean get crossOriginIsolated;
  external JSUndefined reportError(JSAny e);
  external JSString btoa(JSString data);
  external JSString atob(JSString data);
  external JSNumber setTimeout(TimerHandler handler);
  external JSNumber setTimeout_1(
      TimerHandler handler, JSNumber timeout, JSAny arguments);
  external JSUndefined clearTimeout();
  external JSUndefined clearTimeout_1(JSNumber id);
  external JSNumber setInterval(TimerHandler handler);
  external JSNumber setInterval_1(
      TimerHandler handler, JSNumber timeout, JSAny arguments);
  external JSUndefined clearInterval();
  external JSUndefined clearInterval_1(JSNumber id);
  external JSUndefined queueMicrotask(VoidFunction callback);
  external JSPromise createImageBitmap(ImageBitmapSource image);
  external JSPromise createImageBitmap_1(
      ImageBitmapSource image, ImageBitmapOptions options);
  @JS('createImageBitmap')
  external JSPromise createImageBitmap1(ImageBitmapSource image, JSNumber sx,
      JSNumber sy, JSNumber sw, JSNumber sh);
  @JS('createImageBitmap')
  external JSPromise createImageBitmap1_1(ImageBitmapSource image, JSNumber sx,
      JSNumber sy, JSNumber sw, JSNumber sh, ImageBitmapOptions options);
  external JSAny structuredClone(JSAny value);
  external JSAny structuredClone_1(
      JSAny value, StructuredSerializeOptions options);
  external Scheduler get scheduler;
  external CacheStorage get caches;
  external TrustedTypePolicyFactory get trustedTypes;
}

@JS('DOMParser')
@staticInterop
class DOMParser {
  external factory DOMParser();
}

extension DOMParserExtension on DOMParser {
  external Document parseFromString(
      JSString string, DOMParserSupportedType type);
}

@JS('Navigator')
@staticInterop
class Navigator
    implements
        NavigatorBadge,
        NavigatorDeviceMemory,
        GlobalPrivacyControl,
        NavigatorID,
        NavigatorLanguage,
        NavigatorOnLine,
        NavigatorContentUtils,
        NavigatorCookies,
        NavigatorPlugins,
        NavigatorConcurrentHardware,
        NavigatorNetworkInformation,
        NavigatorStorage,
        NavigatorUA,
        NavigatorLocks,
        NavigatorAutomationInformation,
        NavigatorGPU,
        NavigatorML {
  external factory Navigator();
}

extension NavigatorExtension on Navigator {
  external AutoplayPolicy getAutoplayPolicy(AutoplayPolicyMediaType type);
  @JS('getAutoplayPolicy')
  external AutoplayPolicy getAutoplayPolicy1(HTMLMediaElement element);
  @JS('getAutoplayPolicy')
  external AutoplayPolicy getAutoplayPolicy2(AudioContext context);
  external JSPromise setClientBadge();
  external JSPromise setClientBadge_1(JSNumber contents);
  external JSPromise clearClientBadge();
  external JSPromise getBattery();
  external JSBoolean sendBeacon(JSString url);
  external JSBoolean sendBeacon_1(JSString url, BodyInit? data);
  external Clipboard get clipboard;
  external ContactsManager get contacts;
  external CredentialsContainer get credentials;
  external DevicePosture get devicePosture;
  external JSPromise requestMediaKeySystemAccess(
      JSString keySystem, JSArray supportedConfigurations);
  external JSArray getGamepads();
  external Geolocation get geolocation;
  external JSPromise getInstalledRelatedApps();
  external UserActivation get userActivation;
  external Ink get ink;
  external Scheduling get scheduling;
  external Keyboard get keyboard;
  external MediaCapabilities get mediaCapabilities;
  external MediaDevices get mediaDevices;
  external JSUndefined getUserMedia(
      MediaStreamConstraints constraints,
      NavigatorUserMediaSuccessCallback successCallback,
      NavigatorUserMediaErrorCallback errorCallback);
  external MediaSession get mediaSession;
  external Permissions get permissions;
  external JSNumber get maxTouchPoints;
  external Presentation get presentation;
  external WakeLock get wakeLock;
  external Serial get serial;
  external ServiceWorkerContainer get serviceWorker;
  external JSBoolean vibrate(VibratePattern pattern);
  external VirtualKeyboard get virtualKeyboard;
  external Bluetooth get bluetooth;
  external JSPromise share();
  external JSPromise share_1(ShareData data);
  external JSBoolean canShare();
  external JSBoolean canShare_1(ShareData data);
  external HID get hid;
  external JSPromise requestMIDIAccess();
  external JSPromise requestMIDIAccess_1(MIDIOptions options);
  external USB get usb;
  external XRSystem get xr;
  external WindowControlsOverlay get windowControlsOverlay;
}

@JS('NavigatorID')
@staticInterop
class NavigatorID {
  external factory NavigatorID();
}

extension NavigatorIDExtension on NavigatorID {
  external JSString get appCodeName;
  external JSString get appName;
  external JSString get appVersion;
  external JSString get platform;
  external JSString get product;
  external JSString get productSub;
  external JSString get userAgent;
  external JSString get vendor;
  external JSString get vendorSub;
  external JSBoolean taintEnabled();
  external JSString get oscpu;
}

@JS('NavigatorLanguage')
@staticInterop
class NavigatorLanguage {
  external factory NavigatorLanguage();
}

extension NavigatorLanguageExtension on NavigatorLanguage {
  external JSString get language;
  external JSArray get languages;
}

@JS('NavigatorOnLine')
@staticInterop
class NavigatorOnLine {
  external factory NavigatorOnLine();
}

extension NavigatorOnLineExtension on NavigatorOnLine {
  external JSBoolean get onLine;
}

@JS('NavigatorContentUtils')
@staticInterop
class NavigatorContentUtils {
  external factory NavigatorContentUtils();
}

extension NavigatorContentUtilsExtension on NavigatorContentUtils {
  external JSUndefined registerProtocolHandler(JSString scheme, JSString url);
  external JSUndefined unregisterProtocolHandler(JSString scheme, JSString url);
}

@JS('NavigatorCookies')
@staticInterop
class NavigatorCookies {
  external factory NavigatorCookies();
}

extension NavigatorCookiesExtension on NavigatorCookies {
  external JSBoolean get cookieEnabled;
}

@JS('NavigatorPlugins')
@staticInterop
class NavigatorPlugins {
  external factory NavigatorPlugins();
}

extension NavigatorPluginsExtension on NavigatorPlugins {
  external PluginArray get plugins;
  external MimeTypeArray get mimeTypes;
  external JSBoolean javaEnabled();
  external JSBoolean get pdfViewerEnabled;
}

@JS('PluginArray')
@staticInterop
class PluginArray {
  external factory PluginArray();
}

extension PluginArrayExtension on PluginArray {
  external JSUndefined refresh();
  external JSNumber get length;
  external Plugin? item(JSNumber index);
  external Plugin? namedItem(JSString name);
}

@JS('MimeTypeArray')
@staticInterop
class MimeTypeArray {
  external factory MimeTypeArray();
}

extension MimeTypeArrayExtension on MimeTypeArray {
  external JSNumber get length;
  external MimeType? item(JSNumber index);
  external MimeType? namedItem(JSString name);
}

@JS('Plugin')
@staticInterop
class Plugin {
  external factory Plugin();
}

extension PluginExtension on Plugin {
  external JSString get name;
  external JSString get description;
  external JSString get filename;
  external JSNumber get length;
  external MimeType? item(JSNumber index);
  external MimeType? namedItem(JSString name);
}

@JS('MimeType')
@staticInterop
class MimeType {
  external factory MimeType();
}

extension MimeTypeExtension on MimeType {
  external JSString get type;
  external JSString get description;
  external JSString get suffixes;
  external Plugin get enabledPlugin;
}

@JS('ImageBitmap')
@staticInterop
class ImageBitmap {
  external factory ImageBitmap();
}

extension ImageBitmapExtension on ImageBitmap {
  external JSNumber get width;
  external JSNumber get height;
  external JSUndefined close();
}

@JS('ImageBitmapOptions')
@staticInterop
class ImageBitmapOptions {
  external factory ImageBitmapOptions();
}

extension ImageBitmapOptionsExtension on ImageBitmapOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AnimationFrameProvider')
@staticInterop
class AnimationFrameProvider {
  external factory AnimationFrameProvider();
}

extension AnimationFrameProviderExtension on AnimationFrameProvider {
  external JSNumber requestAnimationFrame(FrameRequestCallback callback);
  external JSUndefined cancelAnimationFrame(JSNumber handle);
}

@JS('MessageEvent')
@staticInterop
class MessageEvent extends Event {
  external factory MessageEvent();
  external factory MessageEvent.a1(JSString type);
  external factory MessageEvent.a1_1(
      JSString type, MessageEventInit eventInitDict);
}

extension MessageEventExtension on MessageEvent {
  external JSAny get data;
  external JSString get origin;
  external JSString get lastEventId;
  external MessageEventSource? get source;
  external JSArray get ports;
  external JSUndefined initMessageEvent(JSString type);
  external JSUndefined initMessageEvent_1(JSString type, JSBoolean bubbles);
  external JSUndefined initMessageEvent_2(
      JSString type, JSBoolean bubbles, JSBoolean cancelable);
  external JSUndefined initMessageEvent_3(
      JSString type, JSBoolean bubbles, JSBoolean cancelable, JSAny data);
  external JSUndefined initMessageEvent_4(JSString type, JSBoolean bubbles,
      JSBoolean cancelable, JSAny data, JSString origin);
  external JSUndefined initMessageEvent_5(JSString type, JSBoolean bubbles,
      JSBoolean cancelable, JSAny data, JSString origin, JSString lastEventId);
  external JSUndefined initMessageEvent_6(
      JSString type,
      JSBoolean bubbles,
      JSBoolean cancelable,
      JSAny data,
      JSString origin,
      JSString lastEventId,
      MessageEventSource? source);
  external JSUndefined initMessageEvent_7(
      JSString type,
      JSBoolean bubbles,
      JSBoolean cancelable,
      JSAny data,
      JSString origin,
      JSString lastEventId,
      MessageEventSource? source,
      JSArray ports);
}

@JS('MessageEventInit')
@staticInterop
class MessageEventInit extends EventInit {
  external factory MessageEventInit();
}

extension MessageEventInitExtension on MessageEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('EventSource')
@staticInterop
class EventSource extends EventTarget {
  external factory EventSource();
  external factory EventSource.a1(JSString url);
  external factory EventSource.a1_1(
      JSString url, EventSourceInit eventSourceInitDict);
  external static JSNumber get CONNECTING;
  external static JSNumber get OPEN;
  external static JSNumber get CLOSED;
}

extension EventSourceExtension on EventSource {
  external JSString get url;
  external JSBoolean get withCredentials;
  external JSNumber get readyState;
  external EventHandler get onopen;
  external set onopen(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external JSUndefined close();
}

@JS('EventSourceInit')
@staticInterop
class EventSourceInit {
  external factory EventSourceInit();
}

extension EventSourceInitExtension on EventSourceInit {
  // TODO
}

@JS('MessageChannel')
@staticInterop
class MessageChannel {
  external factory MessageChannel();
}

extension MessageChannelExtension on MessageChannel {
  external MessagePort get port1;
  external MessagePort get port2;
}

@JS('MessagePort')
@staticInterop
class MessagePort extends EventTarget {
  external factory MessagePort();
}

extension MessagePortExtension on MessagePort {
  external JSUndefined postMessage(JSAny message, JSArray transfer);
  @JS('postMessage')
  external JSUndefined postMessage1(JSAny message);
  @JS('postMessage')
  external JSUndefined postMessage1_1(
      JSAny message, StructuredSerializeOptions options);
  external JSUndefined start();
  external JSUndefined close();
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}

@JS('StructuredSerializeOptions')
@staticInterop
class StructuredSerializeOptions {
  external factory StructuredSerializeOptions();
}

extension StructuredSerializeOptionsExtension on StructuredSerializeOptions {
  // TODO
}

@JS('BroadcastChannel')
@staticInterop
class BroadcastChannel extends EventTarget {
  external factory BroadcastChannel();
  external factory BroadcastChannel.a1(JSString name);
}

extension BroadcastChannelExtension on BroadcastChannel {
  external JSString get name;
  external JSUndefined postMessage(JSAny message);
  external JSUndefined close();
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}

@JS('WorkerGlobalScope')
@staticInterop
class WorkerGlobalScope extends EventTarget
    implements FontFaceSource, WindowOrWorkerGlobalScope {
  external factory WorkerGlobalScope();
}

extension WorkerGlobalScopeExtension on WorkerGlobalScope {
  external WorkerGlobalScope get self;
  external WorkerLocation get location;
  external WorkerNavigator get navigator;
  external JSUndefined importScripts(JSString urls);
  external OnErrorEventHandler get onerror;
  external set onerror(OnErrorEventHandler value);
  external EventHandler get onlanguagechange;
  external set onlanguagechange(EventHandler value);
  external EventHandler get onoffline;
  external set onoffline(EventHandler value);
  external EventHandler get ononline;
  external set ononline(EventHandler value);
  external EventHandler get onrejectionhandled;
  external set onrejectionhandled(EventHandler value);
  external EventHandler get onunhandledrejection;
  external set onunhandledrejection(EventHandler value);
}

@JS('DedicatedWorkerGlobalScope')
@staticInterop
class DedicatedWorkerGlobalScope extends WorkerGlobalScope
    implements AnimationFrameProvider {
  external factory DedicatedWorkerGlobalScope();
}

extension DedicatedWorkerGlobalScopeExtension on DedicatedWorkerGlobalScope {
  external JSString get name;
  external JSUndefined postMessage(JSAny message, JSArray transfer);
  @JS('postMessage')
  external JSUndefined postMessage1(JSAny message);
  @JS('postMessage')
  external JSUndefined postMessage1_1(
      JSAny message, StructuredSerializeOptions options);
  external JSUndefined close();
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
  external EventHandler get onrtctransform;
  external set onrtctransform(EventHandler value);
}

@JS('SharedWorkerGlobalScope')
@staticInterop
class SharedWorkerGlobalScope extends WorkerGlobalScope {
  external factory SharedWorkerGlobalScope();
}

extension SharedWorkerGlobalScopeExtension on SharedWorkerGlobalScope {
  external JSString get name;
  external JSUndefined close();
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
}

@JS('AbstractWorker')
@staticInterop
class AbstractWorker {
  external factory AbstractWorker();
}

extension AbstractWorkerExtension on AbstractWorker {
  external EventHandler get onerror;
  external set onerror(EventHandler value);
}

@JS('Worker')
@staticInterop
class Worker extends EventTarget implements AbstractWorker {
  external factory Worker();
  external factory Worker.a1(JSString scriptURL);
  external factory Worker.a1_1(JSString scriptURL, WorkerOptions options);
}

extension WorkerExtension on Worker {
  external JSUndefined terminate();
  external JSUndefined postMessage(JSAny message, JSArray transfer);
  @JS('postMessage')
  external JSUndefined postMessage1(JSAny message);
  @JS('postMessage')
  external JSUndefined postMessage1_1(
      JSAny message, StructuredSerializeOptions options);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}

@JS('WorkerOptions')
@staticInterop
class WorkerOptions {
  external factory WorkerOptions();
}

extension WorkerOptionsExtension on WorkerOptions {
  // TODO
  // TODO
  // TODO
}

@JS('SharedWorker')
@staticInterop
class SharedWorker extends EventTarget implements AbstractWorker {
  external factory SharedWorker();
  external factory SharedWorker.a1(JSString scriptURL);
  external factory SharedWorker.a1_1(JSString scriptURL, JSAny options);
}

extension SharedWorkerExtension on SharedWorker {
  external MessagePort get port;
}

@JS('NavigatorConcurrentHardware')
@staticInterop
class NavigatorConcurrentHardware {
  external factory NavigatorConcurrentHardware();
}

extension NavigatorConcurrentHardwareExtension on NavigatorConcurrentHardware {
  external JSNumber get hardwareConcurrency;
}

@JS('WorkerNavigator')
@staticInterop
class WorkerNavigator
    implements
        NavigatorBadge,
        NavigatorDeviceMemory,
        GlobalPrivacyControl,
        NavigatorID,
        NavigatorLanguage,
        NavigatorOnLine,
        NavigatorConcurrentHardware,
        NavigatorNetworkInformation,
        NavigatorStorage,
        NavigatorUA,
        NavigatorLocks,
        NavigatorGPU,
        NavigatorML {
  external factory WorkerNavigator();
}

extension WorkerNavigatorExtension on WorkerNavigator {
  external MediaCapabilities get mediaCapabilities;
  external Permissions get permissions;
  external Serial get serial;
  external ServiceWorkerContainer get serviceWorker;
  external HID get hid;
  external USB get usb;
}

@JS('WorkerLocation')
@staticInterop
class WorkerLocation {
  external factory WorkerLocation();
}

extension WorkerLocationExtension on WorkerLocation {
  external JSString get href;
  external JSString get origin;
  external JSString get protocol;
  external JSString get host;
  external JSString get hostname;
  external JSString get port;
  external JSString get pathname;
  external JSString get search;
  external JSString get hash;
}

@JS('WorkletGlobalScope')
@staticInterop
class WorkletGlobalScope {
  external factory WorkletGlobalScope();
}

@JS('Worklet')
@staticInterop
class Worklet {
  external factory Worklet();
}

extension WorkletExtension on Worklet {
  external JSPromise addModule(JSString moduleURL);
  external JSPromise addModule_1(JSString moduleURL, WorkletOptions options);
}

@JS('WorkletOptions')
@staticInterop
class WorkletOptions {
  external factory WorkletOptions();
}

extension WorkletOptionsExtension on WorkletOptions {
  // TODO
}

@JS('Storage')
@staticInterop
class Storage {
  external factory Storage();
}

extension StorageExtension on Storage {
  external JSNumber get length;
  external JSString? key(JSNumber index);
  external JSString? getItem(JSString key);
  external JSUndefined setItem(JSString key, JSString value);
  external JSUndefined removeItem(JSString key);
  external JSUndefined clear();
}

@JS('WindowSessionStorage')
@staticInterop
class WindowSessionStorage {
  external factory WindowSessionStorage();
}

extension WindowSessionStorageExtension on WindowSessionStorage {
  external Storage get sessionStorage;
}

@JS('WindowLocalStorage')
@staticInterop
class WindowLocalStorage {
  external factory WindowLocalStorage();
}

extension WindowLocalStorageExtension on WindowLocalStorage {
  external Storage get localStorage;
}

@JS('StorageEvent')
@staticInterop
class StorageEvent extends Event {
  external factory StorageEvent();
  external factory StorageEvent.a1(JSString type);
  external factory StorageEvent.a1_1(
      JSString type, StorageEventInit eventInitDict);
}

extension StorageEventExtension on StorageEvent {
  external JSString? get key;
  external JSString? get oldValue;
  external JSString? get newValue;
  external JSString get url;
  external Storage? get storageArea;
  external JSUndefined initStorageEvent(JSString type);
  external JSUndefined initStorageEvent_1(JSString type, JSBoolean bubbles);
  external JSUndefined initStorageEvent_2(
      JSString type, JSBoolean bubbles, JSBoolean cancelable);
  external JSUndefined initStorageEvent_3(
      JSString type, JSBoolean bubbles, JSBoolean cancelable, JSString? key);
  external JSUndefined initStorageEvent_4(JSString type, JSBoolean bubbles,
      JSBoolean cancelable, JSString? key, JSString? oldValue);
  external JSUndefined initStorageEvent_5(
      JSString type,
      JSBoolean bubbles,
      JSBoolean cancelable,
      JSString? key,
      JSString? oldValue,
      JSString? newValue);
  external JSUndefined initStorageEvent_6(
      JSString type,
      JSBoolean bubbles,
      JSBoolean cancelable,
      JSString? key,
      JSString? oldValue,
      JSString? newValue,
      JSString url);
  external JSUndefined initStorageEvent_7(
      JSString type,
      JSBoolean bubbles,
      JSBoolean cancelable,
      JSString? key,
      JSString? oldValue,
      JSString? newValue,
      JSString url,
      Storage? storageArea);
}

@JS('StorageEventInit')
@staticInterop
class StorageEventInit extends EventInit {
  external factory StorageEventInit();
}

extension StorageEventInitExtension on StorageEventInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('HTMLMarqueeElement')
@staticInterop
class HTMLMarqueeElement extends HTMLElement {
  external factory HTMLMarqueeElement();
}

extension HTMLMarqueeElementExtension on HTMLMarqueeElement {
  external JSString get behavior;
  external set behavior(JSString value);
  external JSString get bgColor;
  external set bgColor(JSString value);
  external JSString get direction;
  external set direction(JSString value);
  external JSString get height;
  external set height(JSString value);
  external JSNumber get hspace;
  external set hspace(JSNumber value);
  external JSNumber get loop;
  external set loop(JSNumber value);
  external JSNumber get scrollAmount;
  external set scrollAmount(JSNumber value);
  external JSNumber get scrollDelay;
  external set scrollDelay(JSNumber value);
  external JSBoolean get trueSpeed;
  external set trueSpeed(JSBoolean value);
  external JSNumber get vspace;
  external set vspace(JSNumber value);
  external JSString get width;
  external set width(JSString value);
  external JSUndefined start();
  external JSUndefined stop();
}

@JS('HTMLFrameSetElement')
@staticInterop
class HTMLFrameSetElement extends HTMLElement implements WindowEventHandlers {
  external factory HTMLFrameSetElement();
}

extension HTMLFrameSetElementExtension on HTMLFrameSetElement {
  external JSString get cols;
  external set cols(JSString value);
  external JSString get rows;
  external set rows(JSString value);
}

@JS('HTMLFrameElement')
@staticInterop
class HTMLFrameElement extends HTMLElement {
  external factory HTMLFrameElement();
}

extension HTMLFrameElementExtension on HTMLFrameElement {
  external JSString get name;
  external set name(JSString value);
  external JSString get scrolling;
  external set scrolling(JSString value);
  external JSString get src;
  external set src(JSString value);
  external JSString get frameBorder;
  external set frameBorder(JSString value);
  external JSString get longDesc;
  external set longDesc(JSString value);
  external JSBoolean get noResize;
  external set noResize(JSBoolean value);
  external Document? get contentDocument;
  external Window? get contentWindow;
  external JSString get marginHeight;
  external set marginHeight(JSString value);
  external JSString get marginWidth;
  external set marginWidth(JSString value);
}

@JS('HTMLDirectoryElement')
@staticInterop
class HTMLDirectoryElement extends HTMLElement {
  external factory HTMLDirectoryElement();
}

extension HTMLDirectoryElementExtension on HTMLDirectoryElement {
  external JSBoolean get compact;
  external set compact(JSBoolean value);
}

@JS('HTMLFontElement')
@staticInterop
class HTMLFontElement extends HTMLElement {
  external factory HTMLFontElement();
}

extension HTMLFontElementExtension on HTMLFontElement {
  external JSString get color;
  external set color(JSString value);
  external JSString get face;
  external set face(JSString value);
  external JSString get size;
  external set size(JSString value);
}

@JS('HTMLParamElement')
@staticInterop
class HTMLParamElement extends HTMLElement {
  external factory HTMLParamElement();
}

extension HTMLParamElementExtension on HTMLParamElement {
  external JSString get name;
  external set name(JSString value);
  external JSString get value;
  external set value(JSString value);
  external JSString get type;
  external set type(JSString value);
  external JSString get valueType;
  external set valueType(JSString value);
}

@JS('External')
@staticInterop
class External {
  external factory External();
}

extension ExternalExtension on External {
  external JSUndefined AddSearchProvider();
  external JSUndefined IsSearchProviderInstalled();
}
