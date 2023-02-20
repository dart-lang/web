// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'attribution_reporting_api.dart';
import 'autoplay_detection.dart';
import 'badging.dart';
import 'clipboard_apis.dart';
import 'contact_picker.dart';
import 'cookie_store.dart';
import 'credential_management.dart';
import 'css_font_loading.dart';
import 'css_nav.dart';
import 'cssom.dart';
import 'cssom_view.dart';
import 'custom_state_pseudo_class.dart';
import 'device_memory.dart';
import 'device_posture.dart';
import 'dom.dart';
import 'encrypted_media.dart';
import 'entries_api.dart';
import 'fetch.dart';
import 'file_system_access.dart';
import 'fileapi.dart';
import 'geolocation.dart';
import 'geometry.dart';
import 'gpc_spec.dart';
import 'hr_time.dart';
import 'indexeddb.dart';
import 'ink_enhancement.dart';
import 'is_input_pending.dart';
import 'keyboard_lock.dart';
import 'local_font_access.dart';
import 'media_capabilities.dart';
import 'media_playback_quality.dart';
import 'media_source.dart';
import 'mediacapture_streams.dart';
import 'mediasession.dart';
import 'navigation_api.dart';
import 'netinfo.dart';
import 'permissions.dart';
import 'permissions_policy.dart';
import 'portals.dart';
import 'presentation_api.dart';
import 'remote_playback.dart';
import 'requestidlecallback.dart';
import 'scheduling_apis.dart';
import 'screen_wake_lock.dart';
import 'selection_api.dart';
import 'serial.dart';
import 'service_workers.dart';
import 'speech_api.dart';
import 'storage.dart';
import 'trusted_types.dart';
import 'ua_client_hints.dart';
import 'uievents.dart';
import 'vibration.dart';
import 'video_rvfc.dart';
import 'virtual_keyboard.dart';
import 'wai_aria.dart';
import 'web_app_launch.dart';
import 'web_bluetooth.dart';
import 'web_locks.dart';
import 'web_share.dart';
import 'webaudio.dart';
import 'webcryptoapi.dart';
import 'webdriver.dart';
import 'webgpu.dart';
import 'webhid.dart';
import 'webidl.dart';
import 'webmidi.dart';
import 'webnn.dart';
import 'webusb.dart';
import 'webxr.dart';
import 'window_controls_overlay.dart';
import 'xhr.dart';

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
  external JSAny? item1(JSString nameOrIndex);
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
  external set value(JSString value);
  external JSString get value;
}

@JS('HTMLOptionsCollection')
@staticInterop
class HTMLOptionsCollection extends HTMLCollection {
  external factory HTMLOptionsCollection();
}

extension HTMLOptionsCollectionExtension on HTMLOptionsCollection {
  external set length(JSNumber value);
  external JSNumber get length;
  external JSVoid add(JSAny element);
  external JSVoid add1(
    JSAny element,
    JSAny? before,
  );
  external JSVoid remove(JSNumber index);
  external set selectedIndex(JSNumber value);
  external JSNumber get selectedIndex;
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
  external factory HTMLElement.a0();
}

extension HTMLElementExtension on HTMLElement {
  external Element? get offsetParent;
  external JSNumber get offsetTop;
  external JSNumber get offsetLeft;
  external JSNumber get offsetWidth;
  external JSNumber get offsetHeight;
  external set title(JSString value);
  external JSString get title;
  external set lang(JSString value);
  external JSString get lang;
  external set translate(JSBoolean value);
  external JSBoolean get translate;
  external set dir(JSString value);
  external JSString get dir;
  external set hidden(JSAny? value);
  external JSAny? get hidden;
  external set inert(JSBoolean value);
  external JSBoolean get inert;
  external JSVoid click();
  external set accessKey(JSString value);
  external JSString get accessKey;
  external JSString get accessKeyLabel;
  external set draggable(JSBoolean value);
  external JSBoolean get draggable;
  external set spellcheck(JSBoolean value);
  external JSBoolean get spellcheck;
  external set autocapitalize(JSString value);
  external JSString get autocapitalize;
  external set innerText(JSString value);
  external JSString get innerText;
  external set outerText(JSString value);
  external JSString get outerText;
  external ElementInternals attachInternals();
  external JSVoid showPopover();
  external JSVoid hidePopover();
  external JSVoid togglePopover();
  external JSVoid togglePopover1(JSBoolean force);
  external set popover(JSString? value);
  external JSString? get popover;
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
  external set nonce(JSString value);
  external JSString get nonce;
  external set autofocus(JSBoolean value);
  external JSBoolean get autofocus;
  external set tabIndex(JSNumber value);
  external JSNumber get tabIndex;
  external JSVoid focus();
  external JSVoid focus1(FocusOptions options);
  external JSVoid blur();
}

@JS('DOMStringMap')
@staticInterop
class DOMStringMap {
  external factory DOMStringMap();
}

@JS('HTMLHtmlElement')
@staticInterop
class HTMLHtmlElement extends HTMLElement {
  external factory HTMLHtmlElement.a0();
}

extension HTMLHtmlElementExtension on HTMLHtmlElement {
  external set version(JSString value);
  external JSString get version;
}

@JS('HTMLHeadElement')
@staticInterop
class HTMLHeadElement extends HTMLElement {
  external factory HTMLHeadElement.a0();
}

@JS('HTMLTitleElement')
@staticInterop
class HTMLTitleElement extends HTMLElement {
  external factory HTMLTitleElement.a0();
}

extension HTMLTitleElementExtension on HTMLTitleElement {
  external set text(JSString value);
  external JSString get text;
}

@JS('HTMLBaseElement')
@staticInterop
class HTMLBaseElement extends HTMLElement {
  external factory HTMLBaseElement.a0();
}

extension HTMLBaseElementExtension on HTMLBaseElement {
  external set href(JSString value);
  external JSString get href;
  external set target(JSString value);
  external JSString get target;
}

@JS('HTMLLinkElement')
@staticInterop
class HTMLLinkElement extends HTMLElement implements LinkStyle {
  external factory HTMLLinkElement.a0();
}

extension HTMLLinkElementExtension on HTMLLinkElement {
  external set href(JSString value);
  external JSString get href;
  external set crossOrigin(JSString? value);
  external JSString? get crossOrigin;
  external set rel(JSString value);
  external JSString get rel;
  external set as(JSString value);
  external JSString get as;
  external DOMTokenList get relList;
  external set media(JSString value);
  external JSString get media;
  external set integrity(JSString value);
  external JSString get integrity;
  external set hreflang(JSString value);
  external JSString get hreflang;
  external set type(JSString value);
  external JSString get type;
  external DOMTokenList get sizes;
  external set imageSrcset(JSString value);
  external JSString get imageSrcset;
  external set imageSizes(JSString value);
  external JSString get imageSizes;
  external set referrerPolicy(JSString value);
  external JSString get referrerPolicy;
  external DOMTokenList get blocking;
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
  external set charset(JSString value);
  external JSString get charset;
  external set rev(JSString value);
  external JSString get rev;
  external set target(JSString value);
  external JSString get target;
  external set fetchPriority(JSString value);
  external JSString get fetchPriority;
}

@JS('HTMLMetaElement')
@staticInterop
class HTMLMetaElement extends HTMLElement {
  external factory HTMLMetaElement.a0();
}

extension HTMLMetaElementExtension on HTMLMetaElement {
  external set name(JSString value);
  external JSString get name;
  external set httpEquiv(JSString value);
  external JSString get httpEquiv;
  external set content(JSString value);
  external JSString get content;
  external set media(JSString value);
  external JSString get media;
  external set scheme(JSString value);
  external JSString get scheme;
}

@JS('HTMLStyleElement')
@staticInterop
class HTMLStyleElement extends HTMLElement implements LinkStyle {
  external factory HTMLStyleElement.a0();
}

extension HTMLStyleElementExtension on HTMLStyleElement {
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
  external set media(JSString value);
  external JSString get media;
  external DOMTokenList get blocking;
  external set type(JSString value);
  external JSString get type;
}

@JS('HTMLBodyElement')
@staticInterop
class HTMLBodyElement extends HTMLElement implements WindowEventHandlers {
  external factory HTMLBodyElement.a0();
}

extension HTMLBodyElementExtension on HTMLBodyElement {
  external set onorientationchange(EventHandler value);
  external EventHandler get onorientationchange;
  external set text(JSString value);
  external JSString get text;
  external set link(JSString value);
  external JSString get link;
  external set vLink(JSString value);
  external JSString get vLink;
  external set aLink(JSString value);
  external JSString get aLink;
  external set bgColor(JSString value);
  external JSString get bgColor;
  external set background(JSString value);
  external JSString get background;
}

@JS('HTMLHeadingElement')
@staticInterop
class HTMLHeadingElement extends HTMLElement {
  external factory HTMLHeadingElement.a0();
}

extension HTMLHeadingElementExtension on HTMLHeadingElement {
  external set align(JSString value);
  external JSString get align;
}

@JS('HTMLParagraphElement')
@staticInterop
class HTMLParagraphElement extends HTMLElement {
  external factory HTMLParagraphElement.a0();
}

extension HTMLParagraphElementExtension on HTMLParagraphElement {
  external set align(JSString value);
  external JSString get align;
}

@JS('HTMLHRElement')
@staticInterop
class HTMLHRElement extends HTMLElement {
  external factory HTMLHRElement.a0();
}

extension HTMLHRElementExtension on HTMLHRElement {
  external set align(JSString value);
  external JSString get align;
  external set color(JSString value);
  external JSString get color;
  external set noShade(JSBoolean value);
  external JSBoolean get noShade;
  external set size(JSString value);
  external JSString get size;
  external set width(JSString value);
  external JSString get width;
}

@JS('HTMLPreElement')
@staticInterop
class HTMLPreElement extends HTMLElement {
  external factory HTMLPreElement.a0();
}

extension HTMLPreElementExtension on HTMLPreElement {
  external set width(JSNumber value);
  external JSNumber get width;
}

@JS('HTMLQuoteElement')
@staticInterop
class HTMLQuoteElement extends HTMLElement {
  external factory HTMLQuoteElement.a0();
}

extension HTMLQuoteElementExtension on HTMLQuoteElement {
  external set cite(JSString value);
  external JSString get cite;
}

@JS('HTMLOListElement')
@staticInterop
class HTMLOListElement extends HTMLElement {
  external factory HTMLOListElement.a0();
}

extension HTMLOListElementExtension on HTMLOListElement {
  external set reversed(JSBoolean value);
  external JSBoolean get reversed;
  external set start(JSNumber value);
  external JSNumber get start;
  external set type(JSString value);
  external JSString get type;
  external set compact(JSBoolean value);
  external JSBoolean get compact;
}

@JS('HTMLUListElement')
@staticInterop
class HTMLUListElement extends HTMLElement {
  external factory HTMLUListElement.a0();
}

extension HTMLUListElementExtension on HTMLUListElement {
  external set compact(JSBoolean value);
  external JSBoolean get compact;
  external set type(JSString value);
  external JSString get type;
}

@JS('HTMLMenuElement')
@staticInterop
class HTMLMenuElement extends HTMLElement {
  external factory HTMLMenuElement.a0();
}

extension HTMLMenuElementExtension on HTMLMenuElement {
  external set compact(JSBoolean value);
  external JSBoolean get compact;
}

@JS('HTMLLIElement')
@staticInterop
class HTMLLIElement extends HTMLElement {
  external factory HTMLLIElement.a0();
}

extension HTMLLIElementExtension on HTMLLIElement {
  external set value(JSNumber value);
  external JSNumber get value;
  external set type(JSString value);
  external JSString get type;
}

@JS('HTMLDListElement')
@staticInterop
class HTMLDListElement extends HTMLElement {
  external factory HTMLDListElement.a0();
}

extension HTMLDListElementExtension on HTMLDListElement {
  external set compact(JSBoolean value);
  external JSBoolean get compact;
}

@JS('HTMLDivElement')
@staticInterop
class HTMLDivElement extends HTMLElement {
  external factory HTMLDivElement.a0();
}

extension HTMLDivElementExtension on HTMLDivElement {
  external set align(JSString value);
  external JSString get align;
}

@JS('HTMLAnchorElement')
@staticInterop
class HTMLAnchorElement extends HTMLElement
    implements HTMLAttributionSrcElementUtils, HTMLHyperlinkElementUtils {
  external factory HTMLAnchorElement.a0();
}

extension HTMLAnchorElementExtension on HTMLAnchorElement {
  external set target(JSString value);
  external JSString get target;
  external set download(JSString value);
  external JSString get download;
  external set ping(JSString value);
  external JSString get ping;
  external set rel(JSString value);
  external JSString get rel;
  external DOMTokenList get relList;
  external set hreflang(JSString value);
  external JSString get hreflang;
  external set type(JSString value);
  external JSString get type;
  external set text(JSString value);
  external JSString get text;
  external set referrerPolicy(JSString value);
  external JSString get referrerPolicy;
  external set coords(JSString value);
  external JSString get coords;
  external set charset(JSString value);
  external JSString get charset;
  external set name(JSString value);
  external JSString get name;
  external set rev(JSString value);
  external JSString get rev;
  external set shape(JSString value);
  external JSString get shape;
  external set attributionSourceId(JSNumber value);
  external JSNumber get attributionSourceId;
}

@JS('HTMLDataElement')
@staticInterop
class HTMLDataElement extends HTMLElement {
  external factory HTMLDataElement.a0();
}

extension HTMLDataElementExtension on HTMLDataElement {
  external set value(JSString value);
  external JSString get value;
}

@JS('HTMLTimeElement')
@staticInterop
class HTMLTimeElement extends HTMLElement {
  external factory HTMLTimeElement.a0();
}

extension HTMLTimeElementExtension on HTMLTimeElement {
  external set dateTime(JSString value);
  external JSString get dateTime;
}

@JS('HTMLSpanElement')
@staticInterop
class HTMLSpanElement extends HTMLElement {
  external factory HTMLSpanElement.a0();
}

@JS('HTMLBRElement')
@staticInterop
class HTMLBRElement extends HTMLElement {
  external factory HTMLBRElement.a0();
}

extension HTMLBRElementExtension on HTMLBRElement {
  external set clear(JSString value);
  external JSString get clear;
}

@JS('HTMLHyperlinkElementUtils')
@staticInterop
class HTMLHyperlinkElementUtils {
  external factory HTMLHyperlinkElementUtils();
}

extension HTMLHyperlinkElementUtilsExtension on HTMLHyperlinkElementUtils {
  external set href(JSString value);
  external JSString get href;
  external JSString get origin;
  external set protocol(JSString value);
  external JSString get protocol;
  external set username(JSString value);
  external JSString get username;
  external set password(JSString value);
  external JSString get password;
  external set host(JSString value);
  external JSString get host;
  external set hostname(JSString value);
  external JSString get hostname;
  external set port(JSString value);
  external JSString get port;
  external set pathname(JSString value);
  external JSString get pathname;
  external set search(JSString value);
  external JSString get search;
  external set hash(JSString value);
  external JSString get hash;
}

@JS('HTMLModElement')
@staticInterop
class HTMLModElement extends HTMLElement {
  external factory HTMLModElement.a0();
}

extension HTMLModElementExtension on HTMLModElement {
  external set cite(JSString value);
  external JSString get cite;
  external set dateTime(JSString value);
  external JSString get dateTime;
}

@JS('HTMLPictureElement')
@staticInterop
class HTMLPictureElement extends HTMLElement {
  external factory HTMLPictureElement.a0();
}

@JS('HTMLSourceElement')
@staticInterop
class HTMLSourceElement extends HTMLElement {
  external factory HTMLSourceElement.a0();
}

extension HTMLSourceElementExtension on HTMLSourceElement {
  external set src(JSString value);
  external JSString get src;
  external set type(JSString value);
  external JSString get type;
  external set srcset(JSString value);
  external JSString get srcset;
  external set sizes(JSString value);
  external JSString get sizes;
  external set media(JSString value);
  external JSString get media;
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
}

@JS('HTMLImageElement')
@staticInterop
class HTMLImageElement extends HTMLElement
    implements HTMLAttributionSrcElementUtils {
  external factory HTMLImageElement.a0();
}

extension HTMLImageElementExtension on HTMLImageElement {
  external JSNumber get x;
  external JSNumber get y;
  external set alt(JSString value);
  external JSString get alt;
  external set src(JSString value);
  external JSString get src;
  external set srcset(JSString value);
  external JSString get srcset;
  external set sizes(JSString value);
  external JSString get sizes;
  external set crossOrigin(JSString? value);
  external JSString? get crossOrigin;
  external set useMap(JSString value);
  external JSString get useMap;
  external set isMap(JSBoolean value);
  external JSBoolean get isMap;
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
  external JSNumber get naturalWidth;
  external JSNumber get naturalHeight;
  external JSBoolean get complete;
  external JSString get currentSrc;
  external set referrerPolicy(JSString value);
  external JSString get referrerPolicy;
  external set decoding(JSString value);
  external JSString get decoding;
  external set loading(JSString value);
  external JSString get loading;
  external JSPromise decode();
  external set name(JSString value);
  external JSString get name;
  external set lowsrc(JSString value);
  external JSString get lowsrc;
  external set align(JSString value);
  external JSString get align;
  external set hspace(JSNumber value);
  external JSNumber get hspace;
  external set vspace(JSNumber value);
  external JSNumber get vspace;
  external set longDesc(JSString value);
  external JSString get longDesc;
  external set border(JSString value);
  external JSString get border;
  external set fetchPriority(JSString value);
  external JSString get fetchPriority;
}

@JS('HTMLIFrameElement')
@staticInterop
class HTMLIFrameElement extends HTMLElement {
  external factory HTMLIFrameElement.a0();
}

extension HTMLIFrameElementExtension on HTMLIFrameElement {
  external set csp(JSString value);
  external JSString get csp;
  external set src(JSString value);
  external JSString get src;
  external set srcdoc(JSString value);
  external JSString get srcdoc;
  external set name(JSString value);
  external JSString get name;
  external DOMTokenList get sandbox;
  external set allow(JSString value);
  external JSString get allow;
  external set allowFullscreen(JSBoolean value);
  external JSBoolean get allowFullscreen;
  external set width(JSString value);
  external JSString get width;
  external set height(JSString value);
  external JSString get height;
  external set referrerPolicy(JSString value);
  external JSString get referrerPolicy;
  external set loading(JSString value);
  external JSString get loading;
  external Document? get contentDocument;
  external Window? get contentWindow;
  external Document? getSVGDocument();
  external set align(JSString value);
  external JSString get align;
  external set scrolling(JSString value);
  external JSString get scrolling;
  external set frameBorder(JSString value);
  external JSString get frameBorder;
  external set longDesc(JSString value);
  external JSString get longDesc;
  external set marginHeight(JSString value);
  external JSString get marginHeight;
  external set marginWidth(JSString value);
  external JSString get marginWidth;
  external PermissionsPolicy get permissionsPolicy;
  external set fetchPriority(JSString value);
  external JSString get fetchPriority;
}

@JS('HTMLEmbedElement')
@staticInterop
class HTMLEmbedElement extends HTMLElement {
  external factory HTMLEmbedElement.a0();
}

extension HTMLEmbedElementExtension on HTMLEmbedElement {
  external set src(JSString value);
  external JSString get src;
  external set type(JSString value);
  external JSString get type;
  external set width(JSString value);
  external JSString get width;
  external set height(JSString value);
  external JSString get height;
  external Document? getSVGDocument();
  external set align(JSString value);
  external JSString get align;
  external set name(JSString value);
  external JSString get name;
}

@JS('HTMLObjectElement')
@staticInterop
class HTMLObjectElement extends HTMLElement {
  external factory HTMLObjectElement.a0();
}

extension HTMLObjectElementExtension on HTMLObjectElement {
  external set data(JSString value);
  external JSString get data;
  external set type(JSString value);
  external JSString get type;
  external set name(JSString value);
  external JSString get name;
  external HTMLFormElement? get form;
  external set width(JSString value);
  external JSString get width;
  external set height(JSString value);
  external JSString get height;
  external Document? get contentDocument;
  external Window? get contentWindow;
  external Document? getSVGDocument();
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
  external set align(JSString value);
  external JSString get align;
  external set archive(JSString value);
  external JSString get archive;
  external set code(JSString value);
  external JSString get code;
  external set declare(JSBoolean value);
  external JSBoolean get declare;
  external set hspace(JSNumber value);
  external JSNumber get hspace;
  external set standby(JSString value);
  external JSString get standby;
  external set vspace(JSNumber value);
  external JSNumber get vspace;
  external set codeBase(JSString value);
  external JSString get codeBase;
  external set codeType(JSString value);
  external JSString get codeType;
  external set useMap(JSString value);
  external JSString get useMap;
  external set border(JSString value);
  external JSString get border;
}

@JS('HTMLVideoElement')
@staticInterop
class HTMLVideoElement extends HTMLMediaElement {
  external factory HTMLVideoElement.a0();
}

extension HTMLVideoElementExtension on HTMLVideoElement {
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
  external JSNumber get videoWidth;
  external JSNumber get videoHeight;
  external set poster(JSString value);
  external JSString get poster;
  external set playsInline(JSBoolean value);
  external JSBoolean get playsInline;
  external VideoPlaybackQuality getVideoPlaybackQuality();
  external JSPromise requestPictureInPicture();
  external set onenterpictureinpicture(EventHandler value);
  external EventHandler get onenterpictureinpicture;
  external set onleavepictureinpicture(EventHandler value);
  external EventHandler get onleavepictureinpicture;
  external set disablePictureInPicture(JSBoolean value);
  external JSBoolean get disablePictureInPicture;
  external JSNumber requestVideoFrameCallback(
      VideoFrameRequestCallback callback);
  external JSVoid cancelVideoFrameCallback(JSNumber handle);
}

@JS('HTMLAudioElement')
@staticInterop
class HTMLAudioElement extends HTMLMediaElement {
  external factory HTMLAudioElement.a0();
}

@JS('HTMLTrackElement')
@staticInterop
class HTMLTrackElement extends HTMLElement {
  external factory HTMLTrackElement.a0();

  external static JSNumber get NONE;
  external static JSNumber get LOADING;
  external static JSNumber get LOADED;
  external static JSNumber get ERROR;
}

extension HTMLTrackElementExtension on HTMLTrackElement {
  external set kind(JSString value);
  external JSString get kind;
  external set src(JSString value);
  external JSString get src;
  external set srclang(JSString value);
  external JSString get srclang;
  external set label(JSString value);
  external JSString get label;
  @JS('default')
  external set default_0_(JSBoolean value);
  @JS('default')
  external JSBoolean get default_0_;
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
  external set onencrypted(EventHandler value);
  external EventHandler get onencrypted;
  external set onwaitingforkey(EventHandler value);
  external EventHandler get onwaitingforkey;
  external JSPromise setMediaKeys(MediaKeys? mediaKeys);
  external MediaError? get error;
  external set src(JSString value);
  external JSString get src;
  external set srcObject(MediaProvider? value);
  external MediaProvider? get srcObject;
  external JSString get currentSrc;
  external set crossOrigin(JSString? value);
  external JSString? get crossOrigin;
  external JSNumber get networkState;
  external set preload(JSString value);
  external JSString get preload;
  external TimeRanges get buffered;
  external JSVoid load();
  external CanPlayTypeResult canPlayType(JSString type);
  external JSNumber get readyState;
  external JSBoolean get seeking;
  external set currentTime(JSNumber value);
  external JSNumber get currentTime;
  external JSVoid fastSeek(JSNumber time);
  external JSNumber get duration;
  external JSObject getStartDate();
  external JSBoolean get paused;
  external set defaultPlaybackRate(JSNumber value);
  external JSNumber get defaultPlaybackRate;
  external set playbackRate(JSNumber value);
  external JSNumber get playbackRate;
  external set preservesPitch(JSBoolean value);
  external JSBoolean get preservesPitch;
  external TimeRanges get played;
  external TimeRanges get seekable;
  external JSBoolean get ended;
  external set autoplay(JSBoolean value);
  external JSBoolean get autoplay;
  external set loop(JSBoolean value);
  external JSBoolean get loop;
  external JSPromise play();
  external JSVoid pause();
  external set controls(JSBoolean value);
  external JSBoolean get controls;
  external set volume(JSNumber value);
  external JSNumber get volume;
  external set muted(JSBoolean value);
  external JSBoolean get muted;
  external set defaultMuted(JSBoolean value);
  external JSBoolean get defaultMuted;
  external AudioTrackList get audioTracks;
  external VideoTrackList get videoTracks;
  external TextTrackList get textTracks;
  external TextTrack addTextTrack(TextTrackKind kind);
  external TextTrack addTextTrack1(
    TextTrackKind kind,
    JSString label,
  );
  external TextTrack addTextTrack2(
    TextTrackKind kind,
    JSString label,
    JSString language,
  );
  external MediaStream captureStream();
  external RemotePlayback get remote;
  external set disableRemotePlayback(JSBoolean value);
  external JSBoolean get disableRemotePlayback;
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
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
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
  external set enabled(JSBoolean value);
  external JSBoolean get enabled;
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
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
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
  external set selected(JSBoolean value);
  external JSBoolean get selected;
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
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
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
  external set mode(TextTrackMode value);
  external TextTrackMode get mode;
  external TextTrackCueList? get cues;
  external TextTrackCueList? get activeCues;
  external JSVoid addCue(TextTrackCue cue);
  external JSVoid removeCue(TextTrackCue cue);
  external set oncuechange(EventHandler value);
  external EventHandler get oncuechange;
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
  external set id(JSString value);
  external JSString get id;
  external set startTime(JSNumber value);
  external JSNumber get startTime;
  external set endTime(JSNumber value);
  external JSNumber get endTime;
  external set pauseOnExit(JSBoolean value);
  external JSBoolean get pauseOnExit;
  external set onenter(EventHandler value);
  external EventHandler get onenter;
  external set onexit(EventHandler value);
  external EventHandler get onexit;
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

  external factory TrackEvent.a2(
    JSString type,
    TrackEventInit eventInitDict,
  );
}

extension TrackEventExtension on TrackEvent {
  external JSAny? get track;
}

@JS()
@staticInterop
@anonymous
class TrackEventInit extends EventInit {
  external factory TrackEventInit({JSAny? track});
}

extension TrackEventInitExtension on TrackEventInit {
  external set track(JSAny? value);
  external JSAny? get track;
}

@JS('HTMLMapElement')
@staticInterop
class HTMLMapElement extends HTMLElement {
  external factory HTMLMapElement.a0();
}

extension HTMLMapElementExtension on HTMLMapElement {
  external set name(JSString value);
  external JSString get name;
  external HTMLCollection get areas;
}

@JS('HTMLAreaElement')
@staticInterop
class HTMLAreaElement extends HTMLElement implements HTMLHyperlinkElementUtils {
  external factory HTMLAreaElement.a0();
}

extension HTMLAreaElementExtension on HTMLAreaElement {
  external set alt(JSString value);
  external JSString get alt;
  external set coords(JSString value);
  external JSString get coords;
  external set shape(JSString value);
  external JSString get shape;
  external set target(JSString value);
  external JSString get target;
  external set download(JSString value);
  external JSString get download;
  external set ping(JSString value);
  external JSString get ping;
  external set rel(JSString value);
  external JSString get rel;
  external DOMTokenList get relList;
  external set referrerPolicy(JSString value);
  external JSString get referrerPolicy;
  external set noHref(JSBoolean value);
  external JSBoolean get noHref;
}

@JS('HTMLTableElement')
@staticInterop
class HTMLTableElement extends HTMLElement {
  external factory HTMLTableElement.a0();
}

extension HTMLTableElementExtension on HTMLTableElement {
  external set caption(HTMLTableCaptionElement? value);
  external HTMLTableCaptionElement? get caption;
  external HTMLTableCaptionElement createCaption();
  external JSVoid deleteCaption();
  external set tHead(HTMLTableSectionElement? value);
  external HTMLTableSectionElement? get tHead;
  external HTMLTableSectionElement createTHead();
  external JSVoid deleteTHead();
  external set tFoot(HTMLTableSectionElement? value);
  external HTMLTableSectionElement? get tFoot;
  external HTMLTableSectionElement createTFoot();
  external JSVoid deleteTFoot();
  external HTMLCollection get tBodies;
  external HTMLTableSectionElement createTBody();
  external HTMLCollection get rows;
  external HTMLTableRowElement insertRow();
  external HTMLTableRowElement insertRow1(JSNumber index);
  external JSVoid deleteRow(JSNumber index);
  external set align(JSString value);
  external JSString get align;
  external set border(JSString value);
  external JSString get border;
  external set frame(JSString value);
  external JSString get frame;
  external set rules(JSString value);
  external JSString get rules;
  external set summary(JSString value);
  external JSString get summary;
  external set width(JSString value);
  external JSString get width;
  external set bgColor(JSString value);
  external JSString get bgColor;
  external set cellPadding(JSString value);
  external JSString get cellPadding;
  external set cellSpacing(JSString value);
  external JSString get cellSpacing;
}

@JS('HTMLTableCaptionElement')
@staticInterop
class HTMLTableCaptionElement extends HTMLElement {
  external factory HTMLTableCaptionElement.a0();
}

extension HTMLTableCaptionElementExtension on HTMLTableCaptionElement {
  external set align(JSString value);
  external JSString get align;
}

@JS('HTMLTableColElement')
@staticInterop
class HTMLTableColElement extends HTMLElement {
  external factory HTMLTableColElement.a0();
}

extension HTMLTableColElementExtension on HTMLTableColElement {
  external set span(JSNumber value);
  external JSNumber get span;
  external set align(JSString value);
  external JSString get align;
  external set ch(JSString value);
  external JSString get ch;
  external set chOff(JSString value);
  external JSString get chOff;
  external set vAlign(JSString value);
  external JSString get vAlign;
  external set width(JSString value);
  external JSString get width;
}

@JS('HTMLTableSectionElement')
@staticInterop
class HTMLTableSectionElement extends HTMLElement {
  external factory HTMLTableSectionElement.a0();
}

extension HTMLTableSectionElementExtension on HTMLTableSectionElement {
  external HTMLCollection get rows;
  external HTMLTableRowElement insertRow();
  external HTMLTableRowElement insertRow1(JSNumber index);
  external JSVoid deleteRow(JSNumber index);
  external set align(JSString value);
  external JSString get align;
  external set ch(JSString value);
  external JSString get ch;
  external set chOff(JSString value);
  external JSString get chOff;
  external set vAlign(JSString value);
  external JSString get vAlign;
}

@JS('HTMLTableRowElement')
@staticInterop
class HTMLTableRowElement extends HTMLElement {
  external factory HTMLTableRowElement.a0();
}

extension HTMLTableRowElementExtension on HTMLTableRowElement {
  external JSNumber get rowIndex;
  external JSNumber get sectionRowIndex;
  external HTMLCollection get cells;
  external HTMLTableCellElement insertCell();
  external HTMLTableCellElement insertCell1(JSNumber index);
  external JSVoid deleteCell(JSNumber index);
  external set align(JSString value);
  external JSString get align;
  external set ch(JSString value);
  external JSString get ch;
  external set chOff(JSString value);
  external JSString get chOff;
  external set vAlign(JSString value);
  external JSString get vAlign;
  external set bgColor(JSString value);
  external JSString get bgColor;
}

@JS('HTMLTableCellElement')
@staticInterop
class HTMLTableCellElement extends HTMLElement {
  external factory HTMLTableCellElement.a0();
}

extension HTMLTableCellElementExtension on HTMLTableCellElement {
  external set colSpan(JSNumber value);
  external JSNumber get colSpan;
  external set rowSpan(JSNumber value);
  external JSNumber get rowSpan;
  external set headers(JSString value);
  external JSString get headers;
  external JSNumber get cellIndex;
  external set scope(JSString value);
  external JSString get scope;
  external set abbr(JSString value);
  external JSString get abbr;
  external set align(JSString value);
  external JSString get align;
  external set axis(JSString value);
  external JSString get axis;
  external set height(JSString value);
  external JSString get height;
  external set width(JSString value);
  external JSString get width;
  external set ch(JSString value);
  external JSString get ch;
  external set chOff(JSString value);
  external JSString get chOff;
  external set noWrap(JSBoolean value);
  external JSBoolean get noWrap;
  external set vAlign(JSString value);
  external JSString get vAlign;
  external set bgColor(JSString value);
  external JSString get bgColor;
}

@JS('HTMLFormElement')
@staticInterop
class HTMLFormElement extends HTMLElement {
  external factory HTMLFormElement.a0();
}

extension HTMLFormElementExtension on HTMLFormElement {
  external set acceptCharset(JSString value);
  external JSString get acceptCharset;
  external set action(JSString value);
  external JSString get action;
  external set autocomplete(JSString value);
  external JSString get autocomplete;
  external set enctype(JSString value);
  external JSString get enctype;
  external set encoding(JSString value);
  external JSString get encoding;
  external set method(JSString value);
  external JSString get method;
  external set name(JSString value);
  external JSString get name;
  external set noValidate(JSBoolean value);
  external JSBoolean get noValidate;
  external set target(JSString value);
  external JSString get target;
  external set rel(JSString value);
  external JSString get rel;
  external DOMTokenList get relList;
  external HTMLFormControlsCollection get elements;
  external JSNumber get length;
  external JSVoid submit();
  external JSVoid requestSubmit();
  external JSVoid requestSubmit1(HTMLElement? submitter);
  external JSVoid reset();
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
}

@JS('HTMLLabelElement')
@staticInterop
class HTMLLabelElement extends HTMLElement {
  external factory HTMLLabelElement.a0();
}

extension HTMLLabelElementExtension on HTMLLabelElement {
  external HTMLFormElement? get form;
  external set htmlFor(JSString value);
  external JSString get htmlFor;
  external HTMLElement? get control;
}

@JS('HTMLInputElement')
@staticInterop
class HTMLInputElement extends HTMLElement implements PopoverTargetElement {
  external factory HTMLInputElement.a0();
}

extension HTMLInputElementExtension on HTMLInputElement {
  external set webkitdirectory(JSBoolean value);
  external JSBoolean get webkitdirectory;
  external JSArray get webkitEntries;
  external set capture(JSString value);
  external JSString get capture;
  external set accept(JSString value);
  external JSString get accept;
  external set alt(JSString value);
  external JSString get alt;
  external set autocomplete(JSString value);
  external JSString get autocomplete;
  external set defaultChecked(JSBoolean value);
  external JSBoolean get defaultChecked;
  external set checked(JSBoolean value);
  external JSBoolean get checked;
  external set dirName(JSString value);
  external JSString get dirName;
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
  external HTMLFormElement? get form;
  external set files(FileList? value);
  external FileList? get files;
  external set formAction(JSString value);
  external JSString get formAction;
  external set formEnctype(JSString value);
  external JSString get formEnctype;
  external set formMethod(JSString value);
  external JSString get formMethod;
  external set formNoValidate(JSBoolean value);
  external JSBoolean get formNoValidate;
  external set formTarget(JSString value);
  external JSString get formTarget;
  external set height(JSNumber value);
  external JSNumber get height;
  external set indeterminate(JSBoolean value);
  external JSBoolean get indeterminate;
  external HTMLDataListElement? get list;
  external set max(JSString value);
  external JSString get max;
  external set maxLength(JSNumber value);
  external JSNumber get maxLength;
  external set min(JSString value);
  external JSString get min;
  external set minLength(JSNumber value);
  external JSNumber get minLength;
  external set multiple(JSBoolean value);
  external JSBoolean get multiple;
  external set name(JSString value);
  external JSString get name;
  external set pattern(JSString value);
  external JSString get pattern;
  external set placeholder(JSString value);
  external JSString get placeholder;
  external set readOnly(JSBoolean value);
  external JSBoolean get readOnly;
  external set required(JSBoolean value);
  external JSBoolean get required;
  external set size(JSNumber value);
  external JSNumber get size;
  external set src(JSString value);
  external JSString get src;
  external set step(JSString value);
  external JSString get step;
  external set type(JSString value);
  external JSString get type;
  external set defaultValue(JSString value);
  external JSString get defaultValue;
  external set value(JSString value);
  external JSString get value;
  external set valueAsDate(JSObject? value);
  external JSObject? get valueAsDate;
  external set valueAsNumber(JSNumber value);
  external JSNumber get valueAsNumber;
  external set width(JSNumber value);
  external JSNumber get width;
  external JSVoid stepUp();
  external JSVoid stepUp1(JSNumber n);
  external JSVoid stepDown();
  external JSVoid stepDown1(JSNumber n);
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
  external NodeList? get labels;
  external JSVoid select();
  external set selectionStart(JSNumber? value);
  external JSNumber? get selectionStart;
  external set selectionEnd(JSNumber? value);
  external JSNumber? get selectionEnd;
  external set selectionDirection(JSString? value);
  external JSString? get selectionDirection;
  external JSVoid setRangeText(JSString replacement);
  @JS('setRangeText')
  external JSVoid setRangeText_1_(
    JSString replacement,
    JSNumber start,
    JSNumber end,
  );
  @JS('setRangeText')
  external JSVoid setRangeText_1_1(
    JSString replacement,
    JSNumber start,
    JSNumber end,
    SelectionMode selectionMode,
  );
  external JSVoid setSelectionRange(
    JSNumber start,
    JSNumber end,
  );
  external JSVoid setSelectionRange1(
    JSNumber start,
    JSNumber end,
    JSString direction,
  );
  external JSVoid showPicker();
  external set align(JSString value);
  external JSString get align;
  external set useMap(JSString value);
  external JSString get useMap;
}

@JS('HTMLButtonElement')
@staticInterop
class HTMLButtonElement extends HTMLElement implements PopoverTargetElement {
  external factory HTMLButtonElement.a0();
}

extension HTMLButtonElementExtension on HTMLButtonElement {
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
  external HTMLFormElement? get form;
  external set formAction(JSString value);
  external JSString get formAction;
  external set formEnctype(JSString value);
  external JSString get formEnctype;
  external set formMethod(JSString value);
  external JSString get formMethod;
  external set formNoValidate(JSBoolean value);
  external JSBoolean get formNoValidate;
  external set formTarget(JSString value);
  external JSString get formTarget;
  external set name(JSString value);
  external JSString get name;
  external set type(JSString value);
  external JSString get type;
  external set value(JSString value);
  external JSString get value;
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
  external NodeList get labels;
}

@JS('HTMLSelectElement')
@staticInterop
class HTMLSelectElement extends HTMLElement {
  external factory HTMLSelectElement.a0();
}

extension HTMLSelectElementExtension on HTMLSelectElement {
  external set autocomplete(JSString value);
  external JSString get autocomplete;
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
  external HTMLFormElement? get form;
  external set multiple(JSBoolean value);
  external JSBoolean get multiple;
  external set name(JSString value);
  external JSString get name;
  external set required(JSBoolean value);
  external JSBoolean get required;
  external set size(JSNumber value);
  external JSNumber get size;
  external JSString get type;
  external HTMLOptionsCollection get options;
  external set length(JSNumber value);
  external JSNumber get length;
  external HTMLOptionElement? item(JSNumber index);
  external HTMLOptionElement? namedItem(JSString name);
  external JSVoid add(JSAny element);
  external JSVoid add1(
    JSAny element,
    JSAny? before,
  );
  external JSVoid remove();
  @JS('remove')
  external JSVoid remove_1_(JSNumber index);
  external HTMLCollection get selectedOptions;
  external set selectedIndex(JSNumber value);
  external JSNumber get selectedIndex;
  external set value(JSString value);
  external JSString get value;
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
  external NodeList get labels;
}

@JS('HTMLDataListElement')
@staticInterop
class HTMLDataListElement extends HTMLElement {
  external factory HTMLDataListElement.a0();
}

extension HTMLDataListElementExtension on HTMLDataListElement {
  external HTMLCollection get options;
}

@JS('HTMLOptGroupElement')
@staticInterop
class HTMLOptGroupElement extends HTMLElement {
  external factory HTMLOptGroupElement.a0();
}

extension HTMLOptGroupElementExtension on HTMLOptGroupElement {
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
  external set label(JSString value);
  external JSString get label;
}

@JS('HTMLOptionElement')
@staticInterop
class HTMLOptionElement extends HTMLElement {
  external factory HTMLOptionElement.a0();
}

extension HTMLOptionElementExtension on HTMLOptionElement {
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
  external HTMLFormElement? get form;
  external set label(JSString value);
  external JSString get label;
  external set defaultSelected(JSBoolean value);
  external JSBoolean get defaultSelected;
  external set selected(JSBoolean value);
  external JSBoolean get selected;
  external set value(JSString value);
  external JSString get value;
  external set text(JSString value);
  external JSString get text;
  external JSNumber get index;
}

@JS('HTMLTextAreaElement')
@staticInterop
class HTMLTextAreaElement extends HTMLElement {
  external factory HTMLTextAreaElement.a0();
}

extension HTMLTextAreaElementExtension on HTMLTextAreaElement {
  external set autocomplete(JSString value);
  external JSString get autocomplete;
  external set cols(JSNumber value);
  external JSNumber get cols;
  external set dirName(JSString value);
  external JSString get dirName;
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
  external HTMLFormElement? get form;
  external set maxLength(JSNumber value);
  external JSNumber get maxLength;
  external set minLength(JSNumber value);
  external JSNumber get minLength;
  external set name(JSString value);
  external JSString get name;
  external set placeholder(JSString value);
  external JSString get placeholder;
  external set readOnly(JSBoolean value);
  external JSBoolean get readOnly;
  external set required(JSBoolean value);
  external JSBoolean get required;
  external set rows(JSNumber value);
  external JSNumber get rows;
  external set wrap(JSString value);
  external JSString get wrap;
  external JSString get type;
  external set defaultValue(JSString value);
  external JSString get defaultValue;
  external set value(JSString value);
  external JSString get value;
  external JSNumber get textLength;
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
  external NodeList get labels;
  external JSVoid select();
  external set selectionStart(JSNumber value);
  external JSNumber get selectionStart;
  external set selectionEnd(JSNumber value);
  external JSNumber get selectionEnd;
  external set selectionDirection(JSString value);
  external JSString get selectionDirection;
  external JSVoid setRangeText(JSString replacement);
  @JS('setRangeText')
  external JSVoid setRangeText_1_(
    JSString replacement,
    JSNumber start,
    JSNumber end,
  );
  @JS('setRangeText')
  external JSVoid setRangeText_1_1(
    JSString replacement,
    JSNumber start,
    JSNumber end,
    SelectionMode selectionMode,
  );
  external JSVoid setSelectionRange(
    JSNumber start,
    JSNumber end,
  );
  external JSVoid setSelectionRange1(
    JSNumber start,
    JSNumber end,
    JSString direction,
  );
}

@JS('HTMLOutputElement')
@staticInterop
class HTMLOutputElement extends HTMLElement {
  external factory HTMLOutputElement.a0();
}

extension HTMLOutputElementExtension on HTMLOutputElement {
  external DOMTokenList get htmlFor;
  external HTMLFormElement? get form;
  external set name(JSString value);
  external JSString get name;
  external JSString get type;
  external set defaultValue(JSString value);
  external JSString get defaultValue;
  external set value(JSString value);
  external JSString get value;
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
  external NodeList get labels;
}

@JS('HTMLProgressElement')
@staticInterop
class HTMLProgressElement extends HTMLElement {
  external factory HTMLProgressElement.a0();
}

extension HTMLProgressElementExtension on HTMLProgressElement {
  external set value(JSNumber value);
  external JSNumber get value;
  external set max(JSNumber value);
  external JSNumber get max;
  external JSNumber get position;
  external NodeList get labels;
}

@JS('HTMLMeterElement')
@staticInterop
class HTMLMeterElement extends HTMLElement {
  external factory HTMLMeterElement.a0();
}

extension HTMLMeterElementExtension on HTMLMeterElement {
  external set value(JSNumber value);
  external JSNumber get value;
  external set min(JSNumber value);
  external JSNumber get min;
  external set max(JSNumber value);
  external JSNumber get max;
  external set low(JSNumber value);
  external JSNumber get low;
  external set high(JSNumber value);
  external JSNumber get high;
  external set optimum(JSNumber value);
  external JSNumber get optimum;
  external NodeList get labels;
}

@JS('HTMLFieldSetElement')
@staticInterop
class HTMLFieldSetElement extends HTMLElement {
  external factory HTMLFieldSetElement.a0();
}

extension HTMLFieldSetElementExtension on HTMLFieldSetElement {
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
  external HTMLFormElement? get form;
  external set name(JSString value);
  external JSString get name;
  external JSString get type;
  external HTMLCollection get elements;
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
}

@JS('HTMLLegendElement')
@staticInterop
class HTMLLegendElement extends HTMLElement {
  external factory HTMLLegendElement.a0();
}

extension HTMLLegendElementExtension on HTMLLegendElement {
  external HTMLFormElement? get form;
  external set align(JSString value);
  external JSString get align;
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

  external factory SubmitEvent.a2(
    JSString type,
    SubmitEventInit eventInitDict,
  );
}

extension SubmitEventExtension on SubmitEvent {
  external HTMLElement? get submitter;
}

@JS()
@staticInterop
@anonymous
class SubmitEventInit extends EventInit {
  external factory SubmitEventInit({HTMLElement? submitter});
}

extension SubmitEventInitExtension on SubmitEventInit {
  external set submitter(HTMLElement? value);
  external HTMLElement? get submitter;
}

@JS('FormDataEvent')
@staticInterop
class FormDataEvent extends Event {
  external factory FormDataEvent();

  external factory FormDataEvent.a1(
    JSString type,
    FormDataEventInit eventInitDict,
  );
}

extension FormDataEventExtension on FormDataEvent {
  external FormData get formData;
}

@JS()
@staticInterop
@anonymous
class FormDataEventInit extends EventInit {
  external factory FormDataEventInit({required FormData formData});
}

extension FormDataEventInitExtension on FormDataEventInit {
  external set formData(FormData value);
  external FormData get formData;
}

@JS('HTMLDetailsElement')
@staticInterop
class HTMLDetailsElement extends HTMLElement {
  external factory HTMLDetailsElement.a0();
}

extension HTMLDetailsElementExtension on HTMLDetailsElement {
  external set open(JSBoolean value);
  external JSBoolean get open;
}

@JS('HTMLDialogElement')
@staticInterop
class HTMLDialogElement extends HTMLElement {
  external factory HTMLDialogElement.a0();
}

extension HTMLDialogElementExtension on HTMLDialogElement {
  external set open(JSBoolean value);
  external JSBoolean get open;
  external set returnValue(JSString value);
  external JSString get returnValue;
  external JSVoid show();
  external JSVoid showModal();
  external JSVoid close();
  external JSVoid close1(JSString returnValue);
}

@JS('HTMLScriptElement')
@staticInterop
class HTMLScriptElement extends HTMLElement
    implements HTMLAttributionSrcElementUtils {
  external factory HTMLScriptElement.a0();

  external static JSBoolean supports(JSString type);
}

extension HTMLScriptElementExtension on HTMLScriptElement {
  external set src(JSString value);
  external JSString get src;
  external set type(JSString value);
  external JSString get type;
  external set noModule(JSBoolean value);
  external JSBoolean get noModule;
  external set async(JSBoolean value);
  external JSBoolean get async;
  external set defer(JSBoolean value);
  external JSBoolean get defer;
  external set crossOrigin(JSString? value);
  external JSString? get crossOrigin;
  external set text(JSString value);
  external JSString get text;
  external set integrity(JSString value);
  external JSString get integrity;
  external set referrerPolicy(JSString value);
  external JSString get referrerPolicy;
  external DOMTokenList get blocking;
  external set charset(JSString value);
  external JSString get charset;
  external set event(JSString value);
  external JSString get event;
  external set htmlFor(JSString value);
  external JSString get htmlFor;
  external set fetchPriority(JSString value);
  external JSString get fetchPriority;
}

@JS('HTMLTemplateElement')
@staticInterop
class HTMLTemplateElement extends HTMLElement {
  external factory HTMLTemplateElement.a0();
}

extension HTMLTemplateElementExtension on HTMLTemplateElement {
  external DocumentFragment get content;
}

@JS('HTMLSlotElement')
@staticInterop
class HTMLSlotElement extends HTMLElement {
  external factory HTMLSlotElement.a0();
}

extension HTMLSlotElementExtension on HTMLSlotElement {
  external set name(JSString value);
  external JSString get name;
  external JSArray assignedNodes();
  external JSArray assignedNodes1(AssignedNodesOptions options);
  external JSArray assignedElements();
  external JSArray assignedElements1(AssignedNodesOptions options);
  external JSVoid assign(JSAny nodes);
}

@JS()
@staticInterop
@anonymous
class AssignedNodesOptions {
  external factory AssignedNodesOptions({JSBoolean flatten = false});
}

extension AssignedNodesOptionsExtension on AssignedNodesOptions {
  external set flatten(JSBoolean value);
  external JSBoolean get flatten;
}

@JS('HTMLCanvasElement')
@staticInterop
class HTMLCanvasElement extends HTMLElement {
  external factory HTMLCanvasElement.a0();
}

extension HTMLCanvasElementExtension on HTMLCanvasElement {
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
  external RenderingContext? getContext(JSString contextId);
  external RenderingContext? getContext1(
    JSString contextId,
    JSAny options,
  );
  external JSString toDataURL();
  external JSString toDataURL1(JSString type);
  external JSString toDataURL2(
    JSString type,
    JSAny quality,
  );
  external JSVoid toBlob(BlobCallback callback);
  external JSVoid toBlob1(
    BlobCallback callback,
    JSString type,
  );
  external JSVoid toBlob2(
    BlobCallback callback,
    JSString type,
    JSAny quality,
  );
  external OffscreenCanvas transferControlToOffscreen();
  external MediaStream captureStream();
  external MediaStream captureStream1(JSNumber frameRequestRate);
}

@JS()
@staticInterop
@anonymous
class CanvasRenderingContext2DSettings {
  external factory CanvasRenderingContext2DSettings({
    JSBoolean alpha = true,
    JSBoolean desynchronized = false,
    PredefinedColorSpace colorSpace = 'srgb',
    JSBoolean willReadFrequently = false,
  });
}

extension CanvasRenderingContext2DSettingsExtension
    on CanvasRenderingContext2DSettings {
  external set alpha(JSBoolean value);
  external JSBoolean get alpha;
  external set desynchronized(JSBoolean value);
  external JSBoolean get desynchronized;
  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
  external set willReadFrequently(JSBoolean value);
  external JSBoolean get willReadFrequently;
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
  external JSVoid save();
  external JSVoid restore();
  external JSVoid reset();
  external JSBoolean isContextLost();
}

@JS('CanvasTransform')
@staticInterop
class CanvasTransform {
  external factory CanvasTransform();
}

extension CanvasTransformExtension on CanvasTransform {
  external JSVoid scale(
    JSNumber x,
    JSNumber y,
  );
  external JSVoid rotate(JSNumber angle);
  external JSVoid translate(
    JSNumber x,
    JSNumber y,
  );
  external JSVoid transform(
    JSNumber a,
    JSNumber b,
    JSNumber c,
    JSNumber d,
    JSNumber e,
    JSNumber f,
  );
  external DOMMatrix getTransform();
  external JSVoid setTransform(
    JSNumber a,
    JSNumber b,
    JSNumber c,
    JSNumber d,
    JSNumber e,
    JSNumber f,
  );
  @JS('setTransform')
  external JSVoid setTransform_1_();
  @JS('setTransform')
  external JSVoid setTransform_1_1(DOMMatrix2DInit transform);
  external JSVoid resetTransform();
}

@JS('CanvasCompositing')
@staticInterop
class CanvasCompositing {
  external factory CanvasCompositing();
}

extension CanvasCompositingExtension on CanvasCompositing {
  external set globalAlpha(JSNumber value);
  external JSNumber get globalAlpha;
  external set globalCompositeOperation(JSString value);
  external JSString get globalCompositeOperation;
}

@JS('CanvasImageSmoothing')
@staticInterop
class CanvasImageSmoothing {
  external factory CanvasImageSmoothing();
}

extension CanvasImageSmoothingExtension on CanvasImageSmoothing {
  external set imageSmoothingEnabled(JSBoolean value);
  external JSBoolean get imageSmoothingEnabled;
  external set imageSmoothingQuality(ImageSmoothingQuality value);
  external ImageSmoothingQuality get imageSmoothingQuality;
}

@JS('CanvasFillStrokeStyles')
@staticInterop
class CanvasFillStrokeStyles {
  external factory CanvasFillStrokeStyles();
}

extension CanvasFillStrokeStylesExtension on CanvasFillStrokeStyles {
  external set strokeStyle(JSAny value);
  external JSAny get strokeStyle;
  external set fillStyle(JSAny value);
  external JSAny get fillStyle;
  external CanvasGradient createLinearGradient(
    JSNumber x0,
    JSNumber y0,
    JSNumber x1,
    JSNumber y1,
  );
  external CanvasGradient createRadialGradient(
    JSNumber x0,
    JSNumber y0,
    JSNumber r0,
    JSNumber x1,
    JSNumber y1,
    JSNumber r1,
  );
  external CanvasGradient createConicGradient(
    JSNumber startAngle,
    JSNumber x,
    JSNumber y,
  );
  external CanvasPattern? createPattern(
    CanvasImageSource image,
    JSString repetition,
  );
}

@JS('CanvasShadowStyles')
@staticInterop
class CanvasShadowStyles {
  external factory CanvasShadowStyles();
}

extension CanvasShadowStylesExtension on CanvasShadowStyles {
  external set shadowOffsetX(JSNumber value);
  external JSNumber get shadowOffsetX;
  external set shadowOffsetY(JSNumber value);
  external JSNumber get shadowOffsetY;
  external set shadowBlur(JSNumber value);
  external JSNumber get shadowBlur;
  external set shadowColor(JSString value);
  external JSString get shadowColor;
}

@JS('CanvasFilters')
@staticInterop
class CanvasFilters {
  external factory CanvasFilters();
}

extension CanvasFiltersExtension on CanvasFilters {
  external set filter(JSString value);
  external JSString get filter;
}

@JS('CanvasRect')
@staticInterop
class CanvasRect {
  external factory CanvasRect();
}

extension CanvasRectExtension on CanvasRect {
  external JSVoid clearRect(
    JSNumber x,
    JSNumber y,
    JSNumber w,
    JSNumber h,
  );
  external JSVoid fillRect(
    JSNumber x,
    JSNumber y,
    JSNumber w,
    JSNumber h,
  );
  external JSVoid strokeRect(
    JSNumber x,
    JSNumber y,
    JSNumber w,
    JSNumber h,
  );
}

@JS('CanvasDrawPath')
@staticInterop
class CanvasDrawPath {
  external factory CanvasDrawPath();
}

extension CanvasDrawPathExtension on CanvasDrawPath {
  external JSVoid beginPath();
  external JSVoid fill();
  external JSVoid fill1(CanvasFillRule fillRule);
  @JS('fill')
  external JSVoid fill_1_(Path2D path);
  @JS('fill')
  external JSVoid fill_1_1(
    Path2D path,
    CanvasFillRule fillRule,
  );
  external JSVoid stroke();
  @JS('stroke')
  external JSVoid stroke_1_(Path2D path);
  external JSVoid clip();
  external JSVoid clip1(CanvasFillRule fillRule);
  @JS('clip')
  external JSVoid clip_1_(Path2D path);
  @JS('clip')
  external JSVoid clip_1_1(
    Path2D path,
    CanvasFillRule fillRule,
  );
  external JSBoolean isPointInPath(
    JSNumber x,
    JSNumber y,
  );
  external JSBoolean isPointInPath1(
    JSNumber x,
    JSNumber y,
    CanvasFillRule fillRule,
  );
  @JS('isPointInPath')
  external JSBoolean isPointInPath_1_(
    Path2D path,
    JSNumber x,
    JSNumber y,
  );
  @JS('isPointInPath')
  external JSBoolean isPointInPath_1_1(
    Path2D path,
    JSNumber x,
    JSNumber y,
    CanvasFillRule fillRule,
  );
  external JSBoolean isPointInStroke(
    JSNumber x,
    JSNumber y,
  );
  @JS('isPointInStroke')
  external JSBoolean isPointInStroke_1_(
    Path2D path,
    JSNumber x,
    JSNumber y,
  );
}

@JS('CanvasUserInterface')
@staticInterop
class CanvasUserInterface {
  external factory CanvasUserInterface();
}

extension CanvasUserInterfaceExtension on CanvasUserInterface {
  external JSVoid drawFocusIfNeeded(Element element);
  @JS('drawFocusIfNeeded')
  external JSVoid drawFocusIfNeeded_1_(
    Path2D path,
    Element element,
  );
  external JSVoid scrollPathIntoView();
  @JS('scrollPathIntoView')
  external JSVoid scrollPathIntoView_1_(Path2D path);
}

@JS('CanvasText')
@staticInterop
class CanvasText {
  external factory CanvasText();
}

extension CanvasTextExtension on CanvasText {
  external JSVoid fillText(
    JSString text,
    JSNumber x,
    JSNumber y,
  );
  external JSVoid fillText1(
    JSString text,
    JSNumber x,
    JSNumber y,
    JSNumber maxWidth,
  );
  external JSVoid strokeText(
    JSString text,
    JSNumber x,
    JSNumber y,
  );
  external JSVoid strokeText1(
    JSString text,
    JSNumber x,
    JSNumber y,
    JSNumber maxWidth,
  );
  external TextMetrics measureText(JSString text);
}

@JS('CanvasDrawImage')
@staticInterop
class CanvasDrawImage {
  external factory CanvasDrawImage();
}

extension CanvasDrawImageExtension on CanvasDrawImage {
  external JSVoid drawImage(
    CanvasImageSource image,
    JSNumber dx,
    JSNumber dy,
  );
  @JS('drawImage')
  external JSVoid drawImage_1_(
    CanvasImageSource image,
    JSNumber dx,
    JSNumber dy,
    JSNumber dw,
    JSNumber dh,
  );
  @JS('drawImage')
  external JSVoid drawImage_2_(
    CanvasImageSource image,
    JSNumber sx,
    JSNumber sy,
    JSNumber sw,
    JSNumber sh,
    JSNumber dx,
    JSNumber dy,
    JSNumber dw,
    JSNumber dh,
  );
}

@JS('CanvasImageData')
@staticInterop
class CanvasImageData {
  external factory CanvasImageData();
}

extension CanvasImageDataExtension on CanvasImageData {
  external ImageData createImageData(
    JSNumber sw,
    JSNumber sh,
  );
  external ImageData createImageData1(
    JSNumber sw,
    JSNumber sh,
    ImageDataSettings settings,
  );
  @JS('createImageData')
  external ImageData createImageData_1_(ImageData imagedata);
  external ImageData getImageData(
    JSNumber sx,
    JSNumber sy,
    JSNumber sw,
    JSNumber sh,
  );
  external ImageData getImageData1(
    JSNumber sx,
    JSNumber sy,
    JSNumber sw,
    JSNumber sh,
    ImageDataSettings settings,
  );
  external JSVoid putImageData(
    ImageData imagedata,
    JSNumber dx,
    JSNumber dy,
  );
  @JS('putImageData')
  external JSVoid putImageData_1_(
    ImageData imagedata,
    JSNumber dx,
    JSNumber dy,
    JSNumber dirtyX,
    JSNumber dirtyY,
    JSNumber dirtyWidth,
    JSNumber dirtyHeight,
  );
}

@JS('CanvasPathDrawingStyles')
@staticInterop
class CanvasPathDrawingStyles {
  external factory CanvasPathDrawingStyles();
}

extension CanvasPathDrawingStylesExtension on CanvasPathDrawingStyles {
  external set lineWidth(JSNumber value);
  external JSNumber get lineWidth;
  external set lineCap(CanvasLineCap value);
  external CanvasLineCap get lineCap;
  external set lineJoin(CanvasLineJoin value);
  external CanvasLineJoin get lineJoin;
  external set miterLimit(JSNumber value);
  external JSNumber get miterLimit;
  external JSVoid setLineDash(JSArray segments);
  external JSArray getLineDash();
  external set lineDashOffset(JSNumber value);
  external JSNumber get lineDashOffset;
}

@JS('CanvasTextDrawingStyles')
@staticInterop
class CanvasTextDrawingStyles {
  external factory CanvasTextDrawingStyles();
}

extension CanvasTextDrawingStylesExtension on CanvasTextDrawingStyles {
  external set font(JSString value);
  external JSString get font;
  external set textAlign(CanvasTextAlign value);
  external CanvasTextAlign get textAlign;
  external set textBaseline(CanvasTextBaseline value);
  external CanvasTextBaseline get textBaseline;
  external set direction(CanvasDirection value);
  external CanvasDirection get direction;
  external set letterSpacing(JSString value);
  external JSString get letterSpacing;
  external set fontKerning(CanvasFontKerning value);
  external CanvasFontKerning get fontKerning;
  external set fontStretch(CanvasFontStretch value);
  external CanvasFontStretch get fontStretch;
  external set fontVariantCaps(CanvasFontVariantCaps value);
  external CanvasFontVariantCaps get fontVariantCaps;
  external set textRendering(CanvasTextRendering value);
  external CanvasTextRendering get textRendering;
  external set wordSpacing(JSString value);
  external JSString get wordSpacing;
}

@JS('CanvasPath')
@staticInterop
class CanvasPath {
  external factory CanvasPath();
}

extension CanvasPathExtension on CanvasPath {
  external JSVoid closePath();
  external JSVoid moveTo(
    JSNumber x,
    JSNumber y,
  );
  external JSVoid lineTo(
    JSNumber x,
    JSNumber y,
  );
  external JSVoid quadraticCurveTo(
    JSNumber cpx,
    JSNumber cpy,
    JSNumber x,
    JSNumber y,
  );
  external JSVoid bezierCurveTo(
    JSNumber cp1x,
    JSNumber cp1y,
    JSNumber cp2x,
    JSNumber cp2y,
    JSNumber x,
    JSNumber y,
  );
  external JSVoid arcTo(
    JSNumber x1,
    JSNumber y1,
    JSNumber x2,
    JSNumber y2,
    JSNumber radius,
  );
  external JSVoid rect(
    JSNumber x,
    JSNumber y,
    JSNumber w,
    JSNumber h,
  );
  external JSVoid roundRect(
    JSNumber x,
    JSNumber y,
    JSNumber w,
    JSNumber h,
  );
  external JSVoid roundRect1(
    JSNumber x,
    JSNumber y,
    JSNumber w,
    JSNumber h,
    JSAny radii,
  );
  external JSVoid arc(
    JSNumber x,
    JSNumber y,
    JSNumber radius,
    JSNumber startAngle,
    JSNumber endAngle,
  );
  external JSVoid arc1(
    JSNumber x,
    JSNumber y,
    JSNumber radius,
    JSNumber startAngle,
    JSNumber endAngle,
    JSBoolean counterclockwise,
  );
  external JSVoid ellipse(
    JSNumber x,
    JSNumber y,
    JSNumber radiusX,
    JSNumber radiusY,
    JSNumber rotation,
    JSNumber startAngle,
    JSNumber endAngle,
  );
  external JSVoid ellipse1(
    JSNumber x,
    JSNumber y,
    JSNumber radiusX,
    JSNumber radiusY,
    JSNumber rotation,
    JSNumber startAngle,
    JSNumber endAngle,
    JSBoolean counterclockwise,
  );
}

@JS('CanvasGradient')
@staticInterop
class CanvasGradient {
  external factory CanvasGradient();
}

extension CanvasGradientExtension on CanvasGradient {
  external JSVoid addColorStop(
    JSNumber offset,
    JSString color,
  );
}

@JS('CanvasPattern')
@staticInterop
class CanvasPattern {
  external factory CanvasPattern();
}

extension CanvasPatternExtension on CanvasPattern {
  external JSVoid setTransform();
  external JSVoid setTransform1(DOMMatrix2DInit transform);
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

@JS()
@staticInterop
@anonymous
class ImageDataSettings {
  external factory ImageDataSettings({PredefinedColorSpace colorSpace});
}

extension ImageDataSettingsExtension on ImageDataSettings {
  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
}

@JS('ImageData')
@staticInterop
class ImageData {
  external factory ImageData();

  external factory ImageData.a1(
    JSNumber sw,
    JSNumber sh,
  );

  external factory ImageData.a2(
    JSNumber sw,
    JSNumber sh,
    ImageDataSettings settings,
  );

  external factory ImageData.a3(
    JSUint8ClampedArray data,
    JSNumber sw,
  );

  external factory ImageData.a4(
    JSUint8ClampedArray data,
    JSNumber sw,
    JSNumber sh,
  );

  external factory ImageData.a5(
    JSUint8ClampedArray data,
    JSNumber sw,
    JSNumber sh,
    ImageDataSettings settings,
  );
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

  external factory Path2D.a2(JSAny path);
}

extension Path2DExtension on Path2D {
  external JSVoid addPath(Path2D path);
  external JSVoid addPath1(
    Path2D path,
    DOMMatrix2DInit transform,
  );
}

@JS('ImageBitmapRenderingContext')
@staticInterop
class ImageBitmapRenderingContext {
  external factory ImageBitmapRenderingContext();
}

extension ImageBitmapRenderingContextExtension on ImageBitmapRenderingContext {
  external JSAny get canvas;
  external JSVoid transferFromImageBitmap(ImageBitmap? bitmap);
}

@JS()
@staticInterop
@anonymous
class ImageBitmapRenderingContextSettings {
  external factory ImageBitmapRenderingContextSettings(
      {JSBoolean alpha = true});
}

extension ImageBitmapRenderingContextSettingsExtension
    on ImageBitmapRenderingContextSettings {
  external set alpha(JSBoolean value);
  external JSBoolean get alpha;
}

@JS()
@staticInterop
@anonymous
class ImageEncodeOptions {
  external factory ImageEncodeOptions({
    JSString type = 'image/png',
    JSNumber quality,
  });
}

extension ImageEncodeOptionsExtension on ImageEncodeOptions {
  external set type(JSString value);
  external JSString get type;
  external set quality(JSNumber value);
  external JSNumber get quality;
}

@JS('OffscreenCanvas')
@staticInterop
class OffscreenCanvas extends EventTarget {
  external factory OffscreenCanvas();

  external factory OffscreenCanvas.a1(
    JSNumber width,
    JSNumber height,
  );
}

extension OffscreenCanvasExtension on OffscreenCanvas {
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
  external OffscreenRenderingContext? getContext(
      OffscreenRenderingContextId contextId);
  external OffscreenRenderingContext? getContext1(
    OffscreenRenderingContextId contextId,
    JSAny options,
  );
  external ImageBitmap transferToImageBitmap();
  external JSPromise convertToBlob();
  external JSPromise convertToBlob1(ImageEncodeOptions options);
  external set oncontextlost(EventHandler value);
  external EventHandler get oncontextlost;
  external set oncontextrestored(EventHandler value);
  external EventHandler get oncontextrestored;
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
  external JSVoid commit();
  external OffscreenCanvas get canvas;
}

@JS('CustomElementRegistry')
@staticInterop
class CustomElementRegistry {
  external factory CustomElementRegistry();
}

extension CustomElementRegistryExtension on CustomElementRegistry {
  external JSVoid define(
    JSString name,
    CustomElementConstructor constructor,
  );
  external JSVoid define1(
    JSString name,
    CustomElementConstructor constructor,
    ElementDefinitionOptions options,
  );
  external JSAny get(JSString name);
  external JSPromise whenDefined(JSString name);
  external JSVoid upgrade(Node root);
}

@JS()
@staticInterop
@anonymous
class ElementDefinitionOptions {
  external factory ElementDefinitionOptions({JSString extends_});
}

extension ElementDefinitionOptionsExtension on ElementDefinitionOptions {
  @JS('extends')
  external set extends_0_(JSString value);
  @JS('extends')
  external JSString get extends_0_;
}

@JS('ElementInternals')
@staticInterop
class ElementInternals implements ARIAMixin {
  external factory ElementInternals();
}

extension ElementInternalsExtension on ElementInternals {
  external CustomStateSet get states;
  external ShadowRoot? get shadowRoot;
  external JSVoid setFormValue(JSAny? value);
  external JSVoid setFormValue1(
    JSAny? value,
    JSAny? state,
  );
  external HTMLFormElement? get form;
  external JSVoid setValidity();
  external JSVoid setValidity1(ValidityStateFlags flags);
  external JSVoid setValidity2(
    ValidityStateFlags flags,
    JSString message,
  );
  external JSVoid setValidity3(
    ValidityStateFlags flags,
    JSString message,
    HTMLElement anchor,
  );
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external NodeList get labels;
}

@JS()
@staticInterop
@anonymous
class ValidityStateFlags {
  external factory ValidityStateFlags({
    JSBoolean valueMissing = false,
    JSBoolean typeMismatch = false,
    JSBoolean patternMismatch = false,
    JSBoolean tooLong = false,
    JSBoolean tooShort = false,
    JSBoolean rangeUnderflow = false,
    JSBoolean rangeOverflow = false,
    JSBoolean stepMismatch = false,
    JSBoolean badInput = false,
    JSBoolean customError = false,
  });
}

extension ValidityStateFlagsExtension on ValidityStateFlags {
  external set valueMissing(JSBoolean value);
  external JSBoolean get valueMissing;
  external set typeMismatch(JSBoolean value);
  external JSBoolean get typeMismatch;
  external set patternMismatch(JSBoolean value);
  external JSBoolean get patternMismatch;
  external set tooLong(JSBoolean value);
  external JSBoolean get tooLong;
  external set tooShort(JSBoolean value);
  external JSBoolean get tooShort;
  external set rangeUnderflow(JSBoolean value);
  external JSBoolean get rangeUnderflow;
  external set rangeOverflow(JSBoolean value);
  external JSBoolean get rangeOverflow;
  external set stepMismatch(JSBoolean value);
  external JSBoolean get stepMismatch;
  external set badInput(JSBoolean value);
  external JSBoolean get badInput;
  external set customError(JSBoolean value);
  external JSBoolean get customError;
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

@JS()
@staticInterop
@anonymous
class FocusOptions {
  external factory FocusOptions({
    JSBoolean preventScroll = false,
    JSBoolean focusVisible,
  });
}

extension FocusOptionsExtension on FocusOptions {
  external set preventScroll(JSBoolean value);
  external JSBoolean get preventScroll;
  external set focusVisible(JSBoolean value);
  external JSBoolean get focusVisible;
}

@JS('ElementContentEditable')
@staticInterop
class ElementContentEditable {
  external factory ElementContentEditable();
}

extension ElementContentEditableExtension on ElementContentEditable {
  external set contentEditable(JSString value);
  external JSString get contentEditable;
  external set enterKeyHint(JSString value);
  external JSString get enterKeyHint;
  external JSBoolean get isContentEditable;
  external set inputMode(JSString value);
  external JSString get inputMode;
  external set virtualKeyboardPolicy(JSString value);
  external JSString get virtualKeyboardPolicy;
}

@JS('DataTransfer')
@staticInterop
class DataTransfer {
  external factory DataTransfer.a0();
}

extension DataTransferExtension on DataTransfer {
  external set dropEffect(JSString value);
  external JSString get dropEffect;
  external set effectAllowed(JSString value);
  external JSString get effectAllowed;
  external DataTransferItemList get items;
  external JSVoid setDragImage(
    Element image,
    JSNumber x,
    JSNumber y,
  );
  external JSArray get types;
  external JSString getData(JSString format);
  external JSVoid setData(
    JSString format,
    JSString data,
  );
  external JSVoid clearData();
  external JSVoid clearData1(JSString format);
  external FileList get files;
}

@JS('DataTransferItemList')
@staticInterop
class DataTransferItemList {
  external factory DataTransferItemList();
}

extension DataTransferItemListExtension on DataTransferItemList {
  external JSNumber get length;
  external DataTransferItem? add(
    JSString data,
    JSString type,
  );
  @JS('add')
  external DataTransferItem? add_1_(File data);
  external JSVoid remove(JSNumber index);
  external JSVoid clear();
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
  external JSVoid getAsString(FunctionStringCallback? callback);
  external File? getAsFile();
}

@JS('DragEvent')
@staticInterop
class DragEvent extends MouseEvent {
  external factory DragEvent();

  external factory DragEvent.a1(JSString type);

  external factory DragEvent.a2(
    JSString type,
    DragEventInit eventInitDict,
  );
}

extension DragEventExtension on DragEvent {
  external DataTransfer? get dataTransfer;
}

@JS()
@staticInterop
@anonymous
class DragEventInit extends MouseEventInit {
  external factory DragEventInit({DataTransfer? dataTransfer});
}

extension DragEventInitExtension on DragEventInit {
  external set dataTransfer(DataTransfer? value);
  external DataTransfer? get dataTransfer;
}

@JS('PopoverTargetElement')
@staticInterop
class PopoverTargetElement {
  external factory PopoverTargetElement();
}

extension PopoverTargetElementExtension on PopoverTargetElement {
  external set popoverToggleTargetElement(Element? value);
  external Element? get popoverToggleTargetElement;
  external set popoverHideTargetElement(Element? value);
  external Element? get popoverHideTargetElement;
  external set popoverShowTargetElement(Element? value);
  external Element? get popoverShowTargetElement;
}

@JS('ToggleEvent')
@staticInterop
class ToggleEvent extends Event {
  external factory ToggleEvent();

  external factory ToggleEvent.a1(JSString type);

  external factory ToggleEvent.a2(
    JSString type,
    ToggleEventInit eventInitDict,
  );
}

extension ToggleEventExtension on ToggleEvent {
  external JSString get oldState;
  external JSString get newState;
}

@JS()
@staticInterop
@anonymous
class ToggleEventInit extends EventInit {
  external factory ToggleEventInit({
    JSString oldState = '',
    JSString newState = '',
  });
}

extension ToggleEventInitExtension on ToggleEventInit {
  external set oldState(JSString value);
  external JSString get oldState;
  external set newState(JSString value);
  external JSString get newState;
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
  external set onorientationchange(EventHandler value);
  external EventHandler get onorientationchange;
  external CookieStore get cookieStore;
  external JSVoid navigate(SpatialNavigationDirection dir);
  external MediaQueryList matchMedia(JSString query);
  external Screen get screen;
  external VisualViewport? get visualViewport;
  external JSVoid moveTo(
    JSNumber x,
    JSNumber y,
  );
  external JSVoid moveBy(
    JSNumber x,
    JSNumber y,
  );
  external JSVoid resizeTo(
    JSNumber width,
    JSNumber height,
  );
  external JSVoid resizeBy(
    JSNumber x,
    JSNumber y,
  );
  external JSNumber get innerWidth;
  external JSNumber get innerHeight;
  external JSNumber get scrollX;
  external JSNumber get pageXOffset;
  external JSNumber get scrollY;
  external JSNumber get pageYOffset;
  external JSVoid scroll();
  external JSVoid scroll1(ScrollToOptions options);
  @JS('scroll')
  external JSVoid scroll_1_(
    JSNumber x,
    JSNumber y,
  );
  external JSVoid scrollTo();
  external JSVoid scrollTo1(ScrollToOptions options);
  @JS('scrollTo')
  external JSVoid scrollTo_1_(
    JSNumber x,
    JSNumber y,
  );
  external JSVoid scrollBy();
  external JSVoid scrollBy1(ScrollToOptions options);
  @JS('scrollBy')
  external JSVoid scrollBy_1_(
    JSNumber x,
    JSNumber y,
  );
  external JSNumber get screenX;
  external JSNumber get screenLeft;
  external JSNumber get screenY;
  external JSNumber get screenTop;
  external JSNumber get outerWidth;
  external JSNumber get outerHeight;
  external JSNumber get devicePixelRatio;
  external CSSStyleDeclaration getComputedStyle(Element elt);
  external CSSStyleDeclaration getComputedStyle1(
    Element elt,
    JSString? pseudoElt,
  );
  external JSPromise getDigitalGoodsService(JSString serviceProvider);
  external JSAny get event;
  external JSPromise showOpenFilePicker();
  external JSPromise showOpenFilePicker1(OpenFilePickerOptions options);
  external JSPromise showSaveFilePicker();
  external JSPromise showSaveFilePicker1(SaveFilePickerOptions options);
  external JSPromise showDirectoryPicker();
  external JSPromise showDirectoryPicker1(DirectoryPickerOptions options);
  external Window get window;
  external Window get self;
  external Document get document;
  external set name(JSString value);
  external JSString get name;
  external Location get location;
  external History get history;
  external CustomElementRegistry get customElements;
  external BarProp get locationbar;
  external BarProp get menubar;
  external BarProp get personalbar;
  external BarProp get scrollbars;
  external BarProp get statusbar;
  external BarProp get toolbar;
  external set status(JSString value);
  external JSString get status;
  external JSVoid close();
  external JSBoolean get closed;
  external JSVoid stop();
  external JSVoid focus();
  external JSVoid blur();
  external Window get frames;
  external JSNumber get length;
  external Window? get top;
  external set opener(JSAny value);
  external JSAny get opener;
  external Window? get parent;
  external Element? get frameElement;
  external Window? open();
  external Window? open1(JSString url);
  external Window? open2(
    JSString url,
    JSString target,
  );
  external Window? open3(
    JSString url,
    JSString target,
    JSString features,
  );
  external Navigator get navigator;
  external Navigator get clientInformation;
  external JSBoolean get originAgentCluster;
  external JSVoid alert();
  @JS('alert')
  external JSVoid alert_1_(JSString message);
  external JSBoolean confirm();
  external JSBoolean confirm1(JSString message);
  external JSString? prompt();
  external JSString? prompt1(JSString message);
  external JSString? prompt2(
    JSString message,
    JSString default_,
  );
  external JSVoid print();
  external JSVoid postMessage(
    JSAny message,
    JSString targetOrigin,
  );
  external JSVoid postMessage1(
    JSAny message,
    JSString targetOrigin,
    JSArray transfer,
  );
  @JS('postMessage')
  external JSVoid postMessage_1_(JSAny message);
  @JS('postMessage')
  external JSVoid postMessage_1_1(
    JSAny message,
    WindowPostMessageOptions options,
  );
  external JSVoid captureEvents();
  external JSVoid releaseEvents();
  external External get external;
  external JSPromise queryLocalFonts();
  external JSPromise queryLocalFonts1(QueryOptions options);
  external set onappinstalled(EventHandler value);
  external EventHandler get onappinstalled;
  external set onbeforeinstallprompt(EventHandler value);
  external EventHandler get onbeforeinstallprompt;
  external Navigation get navigation;
  external set ondeviceorientation(EventHandler value);
  external EventHandler get ondeviceorientation;
  external set ondeviceorientationabsolute(EventHandler value);
  external EventHandler get ondeviceorientationabsolute;
  external set oncompassneedscalibration(EventHandler value);
  external EventHandler get oncompassneedscalibration;
  external set ondevicemotion(EventHandler value);
  external EventHandler get ondevicemotion;
  external PortalHost? get portalHost;
  external JSNumber requestIdleCallback(IdleRequestCallback callback);
  external JSNumber requestIdleCallback1(
    IdleRequestCallback callback,
    IdleRequestOptions options,
  );
  external JSVoid cancelIdleCallback(JSNumber handle);
  external Selection? getSelection();
  external SpeechSynthesis get speechSynthesis;
  external LaunchQueue get launchQueue;
  external JSPromise getScreenDetails();
}

@JS()
@staticInterop
@anonymous
class WindowPostMessageOptions extends StructuredSerializeOptions {
  external factory WindowPostMessageOptions({JSString targetOrigin = '/'});
}

extension WindowPostMessageOptionsExtension on WindowPostMessageOptions {
  external set targetOrigin(JSString value);
  external JSString get targetOrigin;
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
  external set href(JSString value);
  external JSString get href;
  external JSString get origin;
  external set protocol(JSString value);
  external JSString get protocol;
  external set host(JSString value);
  external JSString get host;
  external set hostname(JSString value);
  external JSString get hostname;
  external set port(JSString value);
  external JSString get port;
  external set pathname(JSString value);
  external JSString get pathname;
  external set search(JSString value);
  external JSString get search;
  external set hash(JSString value);
  external JSString get hash;
  external JSVoid assign(JSString url);
  external JSVoid replace(JSString url);
  external JSVoid reload();
  external DOMStringList get ancestorOrigins;
}

@JS('History')
@staticInterop
class History {
  external factory History();
}

extension HistoryExtension on History {
  external JSNumber get length;
  external set scrollRestoration(ScrollRestoration value);
  external ScrollRestoration get scrollRestoration;
  external JSAny get state;
  external JSVoid go();
  external JSVoid go1(JSNumber delta);
  external JSVoid back();
  external JSVoid forward();
  external JSVoid pushState(
    JSAny data,
    JSString unused,
  );
  external JSVoid pushState1(
    JSAny data,
    JSString unused,
    JSString? url,
  );
  external JSVoid replaceState(
    JSAny data,
    JSString unused,
  );
  external JSVoid replaceState1(
    JSAny data,
    JSString unused,
    JSString? url,
  );
}

@JS('PopStateEvent')
@staticInterop
class PopStateEvent extends Event {
  external factory PopStateEvent();

  external factory PopStateEvent.a1(JSString type);

  external factory PopStateEvent.a2(
    JSString type,
    PopStateEventInit eventInitDict,
  );
}

extension PopStateEventExtension on PopStateEvent {
  external JSAny get state;
}

@JS()
@staticInterop
@anonymous
class PopStateEventInit extends EventInit {
  external factory PopStateEventInit({JSAny state});
}

extension PopStateEventInitExtension on PopStateEventInit {
  external set state(JSAny value);
  external JSAny get state;
}

@JS('HashChangeEvent')
@staticInterop
class HashChangeEvent extends Event {
  external factory HashChangeEvent();

  external factory HashChangeEvent.a1(JSString type);

  external factory HashChangeEvent.a2(
    JSString type,
    HashChangeEventInit eventInitDict,
  );
}

extension HashChangeEventExtension on HashChangeEvent {
  external JSString get oldURL;
  external JSString get newURL;
}

@JS()
@staticInterop
@anonymous
class HashChangeEventInit extends EventInit {
  external factory HashChangeEventInit({
    JSString oldURL = '',
    JSString newURL = '',
  });
}

extension HashChangeEventInitExtension on HashChangeEventInit {
  external set oldURL(JSString value);
  external JSString get oldURL;
  external set newURL(JSString value);
  external JSString get newURL;
}

@JS('PageTransitionEvent')
@staticInterop
class PageTransitionEvent extends Event {
  external factory PageTransitionEvent();

  external factory PageTransitionEvent.a1(JSString type);

  external factory PageTransitionEvent.a2(
    JSString type,
    PageTransitionEventInit eventInitDict,
  );
}

extension PageTransitionEventExtension on PageTransitionEvent {
  external JSBoolean get persisted;
}

@JS()
@staticInterop
@anonymous
class PageTransitionEventInit extends EventInit {
  external factory PageTransitionEventInit({JSBoolean persisted = false});
}

extension PageTransitionEventInitExtension on PageTransitionEventInit {
  external set persisted(JSBoolean value);
  external JSBoolean get persisted;
}

@JS('BeforeUnloadEvent')
@staticInterop
class BeforeUnloadEvent extends Event {
  external factory BeforeUnloadEvent();
}

extension BeforeUnloadEventExtension on BeforeUnloadEvent {
  external set returnValue(JSString value);
  external JSString get returnValue;
}

@JS('ErrorEvent')
@staticInterop
class ErrorEvent extends Event {
  external factory ErrorEvent();

  external factory ErrorEvent.a1(JSString type);

  external factory ErrorEvent.a2(
    JSString type,
    ErrorEventInit eventInitDict,
  );
}

extension ErrorEventExtension on ErrorEvent {
  external JSString get message;
  external JSString get filename;
  external JSNumber get lineno;
  external JSNumber get colno;
  external JSAny get error;
}

@JS()
@staticInterop
@anonymous
class ErrorEventInit extends EventInit {
  external factory ErrorEventInit({
    JSString message = '',
    JSString filename = '',
    JSNumber lineno = 0,
    JSNumber colno = 0,
    JSAny error,
  });
}

extension ErrorEventInitExtension on ErrorEventInit {
  external set message(JSString value);
  external JSString get message;
  external set filename(JSString value);
  external JSString get filename;
  external set lineno(JSNumber value);
  external JSNumber get lineno;
  external set colno(JSNumber value);
  external JSNumber get colno;
  external set error(JSAny value);
  external JSAny get error;
}

@JS('PromiseRejectionEvent')
@staticInterop
class PromiseRejectionEvent extends Event {
  external factory PromiseRejectionEvent();

  external factory PromiseRejectionEvent.a1(
    JSString type,
    PromiseRejectionEventInit eventInitDict,
  );
}

extension PromiseRejectionEventExtension on PromiseRejectionEvent {
  external JSPromise get promise;
  external JSAny get reason;
}

@JS()
@staticInterop
@anonymous
class PromiseRejectionEventInit extends EventInit {
  external factory PromiseRejectionEventInit({
    required JSPromise promise,
    JSAny reason,
  });
}

extension PromiseRejectionEventInitExtension on PromiseRejectionEventInit {
  external set promise(JSPromise value);
  external JSPromise get promise;
  external set reason(JSAny value);
  external JSAny get reason;
}

@JS('GlobalEventHandlers')
@staticInterop
class GlobalEventHandlers {
  external factory GlobalEventHandlers();
}

extension GlobalEventHandlersExtension on GlobalEventHandlers {
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

@JS('WindowEventHandlers')
@staticInterop
class WindowEventHandlers {
  external factory WindowEventHandlers();
}

extension WindowEventHandlersExtension on WindowEventHandlers {
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
  external set onportalactivate(EventHandler value);
  external EventHandler get onportalactivate;
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
  external JSPromise fetch1(
    RequestInfo input,
    RequestInit init,
  );
  external Performance get performance;
  external JSString get origin;
  external JSBoolean get isSecureContext;
  external JSBoolean get crossOriginIsolated;
  external JSVoid reportError(JSAny e);
  external JSString btoa(JSString data);
  external JSString atob(JSString data);
  external JSNumber setTimeout(TimerHandler handler);
  external JSNumber setTimeout1(
    TimerHandler handler,
    JSNumber timeout,
    JSAny arguments,
  );
  external JSVoid clearTimeout();
  external JSVoid clearTimeout1(JSNumber id);
  external JSNumber setInterval(TimerHandler handler);
  external JSNumber setInterval1(
    TimerHandler handler,
    JSNumber timeout,
    JSAny arguments,
  );
  external JSVoid clearInterval();
  external JSVoid clearInterval1(JSNumber id);
  external JSVoid queueMicrotask(VoidFunction callback);
  external JSPromise createImageBitmap(ImageBitmapSource image);
  external JSPromise createImageBitmap1(
    ImageBitmapSource image,
    ImageBitmapOptions options,
  );
  @JS('createImageBitmap')
  external JSPromise createImageBitmap_1_(
    ImageBitmapSource image,
    JSNumber sx,
    JSNumber sy,
    JSNumber sw,
    JSNumber sh,
  );
  @JS('createImageBitmap')
  external JSPromise createImageBitmap_1_1(
    ImageBitmapSource image,
    JSNumber sx,
    JSNumber sy,
    JSNumber sw,
    JSNumber sh,
    ImageBitmapOptions options,
  );
  external JSAny structuredClone(JSAny value);
  external JSAny structuredClone1(
    JSAny value,
    StructuredSerializeOptions options,
  );
  external Scheduler get scheduler;
  external CacheStorage get caches;
  external TrustedTypePolicyFactory get trustedTypes;
}

@JS('DOMParser')
@staticInterop
class DOMParser {
  external factory DOMParser.a0();
}

extension DOMParserExtension on DOMParser {
  external Document parseFromString(
    JSString string,
    DOMParserSupportedType type,
  );
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
  external AutoplayPolicy getAutoplayPolicy_1_(HTMLMediaElement element);
  @JS('getAutoplayPolicy')
  external AutoplayPolicy getAutoplayPolicy_2_(AudioContext context);
  external JSPromise setClientBadge();
  external JSPromise setClientBadge1(JSNumber contents);
  external JSPromise clearClientBadge();
  external JSPromise getBattery();
  external JSBoolean sendBeacon(JSString url);
  external JSBoolean sendBeacon1(
    JSString url,
    BodyInit? data,
  );
  external Clipboard get clipboard;
  external ContactsManager get contacts;
  external CredentialsContainer get credentials;
  external DevicePosture get devicePosture;
  external JSPromise requestMediaKeySystemAccess(
    JSString keySystem,
    JSArray supportedConfigurations,
  );
  external JSArray getGamepads();
  external Geolocation get geolocation;
  external JSPromise getInstalledRelatedApps();
  external UserActivation get userActivation;
  external Ink get ink;
  external Scheduling get scheduling;
  external Keyboard get keyboard;
  external MediaCapabilities get mediaCapabilities;
  external MediaDevices get mediaDevices;
  external JSVoid getUserMedia(
    MediaStreamConstraints constraints,
    NavigatorUserMediaSuccessCallback successCallback,
    NavigatorUserMediaErrorCallback errorCallback,
  );
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
  external JSPromise share1(ShareData data);
  external JSBoolean canShare();
  external JSBoolean canShare1(ShareData data);
  external HID get hid;
  external JSPromise requestMIDIAccess();
  external JSPromise requestMIDIAccess1(MIDIOptions options);
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
  external JSVoid registerProtocolHandler(
    JSString scheme,
    JSString url,
  );
  external JSVoid unregisterProtocolHandler(
    JSString scheme,
    JSString url,
  );
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
  external JSVoid refresh();
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
  external JSVoid close();
}

@JS()
@staticInterop
@anonymous
class ImageBitmapOptions {
  external factory ImageBitmapOptions({
    ImageOrientation imageOrientation = 'from-image',
    PremultiplyAlpha premultiplyAlpha = 'default',
    ColorSpaceConversion colorSpaceConversion = 'default',
    JSNumber resizeWidth,
    JSNumber resizeHeight,
    ResizeQuality resizeQuality = 'low',
  });
}

extension ImageBitmapOptionsExtension on ImageBitmapOptions {
  external set imageOrientation(ImageOrientation value);
  external ImageOrientation get imageOrientation;
  external set premultiplyAlpha(PremultiplyAlpha value);
  external PremultiplyAlpha get premultiplyAlpha;
  external set colorSpaceConversion(ColorSpaceConversion value);
  external ColorSpaceConversion get colorSpaceConversion;
  external set resizeWidth(JSNumber value);
  external JSNumber get resizeWidth;
  external set resizeHeight(JSNumber value);
  external JSNumber get resizeHeight;
  external set resizeQuality(ResizeQuality value);
  external ResizeQuality get resizeQuality;
}

@JS('AnimationFrameProvider')
@staticInterop
class AnimationFrameProvider {
  external factory AnimationFrameProvider();
}

extension AnimationFrameProviderExtension on AnimationFrameProvider {
  external JSNumber requestAnimationFrame(FrameRequestCallback callback);
  external JSVoid cancelAnimationFrame(JSNumber handle);
}

@JS('MessageEvent')
@staticInterop
class MessageEvent extends Event {
  external factory MessageEvent();

  external factory MessageEvent.a1(JSString type);

  external factory MessageEvent.a2(
    JSString type,
    MessageEventInit eventInitDict,
  );
}

extension MessageEventExtension on MessageEvent {
  external JSAny get data;
  external JSString get origin;
  external JSString get lastEventId;
  external MessageEventSource? get source;
  external JSArray get ports;
  external JSVoid initMessageEvent(JSString type);
  external JSVoid initMessageEvent1(
    JSString type,
    JSBoolean bubbles,
  );
  external JSVoid initMessageEvent2(
    JSString type,
    JSBoolean bubbles,
    JSBoolean cancelable,
  );
  external JSVoid initMessageEvent3(
    JSString type,
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSAny data,
  );
  external JSVoid initMessageEvent4(
    JSString type,
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSAny data,
    JSString origin,
  );
  external JSVoid initMessageEvent5(
    JSString type,
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSAny data,
    JSString origin,
    JSString lastEventId,
  );
  external JSVoid initMessageEvent6(
    JSString type,
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSAny data,
    JSString origin,
    JSString lastEventId,
    MessageEventSource? source,
  );
  external JSVoid initMessageEvent7(
    JSString type,
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSAny data,
    JSString origin,
    JSString lastEventId,
    MessageEventSource? source,
    JSArray ports,
  );
}

@JS()
@staticInterop
@anonymous
class MessageEventInit extends EventInit {
  external factory MessageEventInit({
    JSAny data,
    JSString origin = '',
    JSString lastEventId = '',
    MessageEventSource? source,
    JSArray ports = const [],
  });
}

extension MessageEventInitExtension on MessageEventInit {
  external set data(JSAny value);
  external JSAny get data;
  external set origin(JSString value);
  external JSString get origin;
  external set lastEventId(JSString value);
  external JSString get lastEventId;
  external set source(MessageEventSource? value);
  external MessageEventSource? get source;
  external set ports(JSArray value);
  external JSArray get ports;
}

@JS('EventSource')
@staticInterop
class EventSource extends EventTarget {
  external factory EventSource();

  external factory EventSource.a1(JSString url);

  external factory EventSource.a2(
    JSString url,
    EventSourceInit eventSourceInitDict,
  );

  external static JSNumber get CONNECTING;
  external static JSNumber get OPEN;
  external static JSNumber get CLOSED;
}

extension EventSourceExtension on EventSource {
  external JSString get url;
  external JSBoolean get withCredentials;
  external JSNumber get readyState;
  external set onopen(EventHandler value);
  external EventHandler get onopen;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external JSVoid close();
}

@JS()
@staticInterop
@anonymous
class EventSourceInit {
  external factory EventSourceInit({JSBoolean withCredentials = false});
}

extension EventSourceInitExtension on EventSourceInit {
  external set withCredentials(JSBoolean value);
  external JSBoolean get withCredentials;
}

@JS('MessageChannel')
@staticInterop
class MessageChannel {
  external factory MessageChannel.a0();
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
  external JSVoid postMessage(
    JSAny message,
    JSArray transfer,
  );
  @JS('postMessage')
  external JSVoid postMessage_1_(JSAny message);
  @JS('postMessage')
  external JSVoid postMessage_1_1(
    JSAny message,
    StructuredSerializeOptions options,
  );
  external JSVoid start();
  external JSVoid close();
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
}

@JS()
@staticInterop
@anonymous
class StructuredSerializeOptions {
  external factory StructuredSerializeOptions({JSArray transfer = const []});
}

extension StructuredSerializeOptionsExtension on StructuredSerializeOptions {
  external set transfer(JSArray value);
  external JSArray get transfer;
}

@JS('BroadcastChannel')
@staticInterop
class BroadcastChannel extends EventTarget {
  external factory BroadcastChannel();

  external factory BroadcastChannel.a1(JSString name);
}

extension BroadcastChannelExtension on BroadcastChannel {
  external JSString get name;
  external JSVoid postMessage(JSAny message);
  external JSVoid close();
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
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
  external JSVoid importScripts(JSString urls);
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
}

@JS('DedicatedWorkerGlobalScope')
@staticInterop
class DedicatedWorkerGlobalScope extends WorkerGlobalScope
    implements AnimationFrameProvider {
  external factory DedicatedWorkerGlobalScope();
}

extension DedicatedWorkerGlobalScopeExtension on DedicatedWorkerGlobalScope {
  external JSString get name;
  external JSVoid postMessage(
    JSAny message,
    JSArray transfer,
  );
  @JS('postMessage')
  external JSVoid postMessage_1_(JSAny message);
  @JS('postMessage')
  external JSVoid postMessage_1_1(
    JSAny message,
    StructuredSerializeOptions options,
  );
  external JSVoid close();
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
  external set onrtctransform(EventHandler value);
  external EventHandler get onrtctransform;
}

@JS('SharedWorkerGlobalScope')
@staticInterop
class SharedWorkerGlobalScope extends WorkerGlobalScope {
  external factory SharedWorkerGlobalScope();
}

extension SharedWorkerGlobalScopeExtension on SharedWorkerGlobalScope {
  external JSString get name;
  external JSVoid close();
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
}

@JS('AbstractWorker')
@staticInterop
class AbstractWorker {
  external factory AbstractWorker();
}

extension AbstractWorkerExtension on AbstractWorker {
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}

@JS('Worker')
@staticInterop
class Worker extends EventTarget implements AbstractWorker {
  external factory Worker();

  external factory Worker.a1(JSString scriptURL);

  external factory Worker.a2(
    JSString scriptURL,
    WorkerOptions options,
  );
}

extension WorkerExtension on Worker {
  external JSVoid terminate();
  external JSVoid postMessage(
    JSAny message,
    JSArray transfer,
  );
  @JS('postMessage')
  external JSVoid postMessage_1_(JSAny message);
  @JS('postMessage')
  external JSVoid postMessage_1_1(
    JSAny message,
    StructuredSerializeOptions options,
  );
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
}

@JS()
@staticInterop
@anonymous
class WorkerOptions {
  external factory WorkerOptions({
    WorkerType type = 'classic',
    RequestCredentials credentials = 'same-origin',
    JSString name = '',
  });
}

extension WorkerOptionsExtension on WorkerOptions {
  external set type(WorkerType value);
  external WorkerType get type;
  external set credentials(RequestCredentials value);
  external RequestCredentials get credentials;
  external set name(JSString value);
  external JSString get name;
}

@JS('SharedWorker')
@staticInterop
class SharedWorker extends EventTarget implements AbstractWorker {
  external factory SharedWorker();

  external factory SharedWorker.a1(JSString scriptURL);

  external factory SharedWorker.a2(
    JSString scriptURL,
    JSAny options,
  );
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
  external JSPromise addModule1(
    JSString moduleURL,
    WorkletOptions options,
  );
}

@JS()
@staticInterop
@anonymous
class WorkletOptions {
  external factory WorkletOptions(
      {RequestCredentials credentials = 'same-origin'});
}

extension WorkletOptionsExtension on WorkletOptions {
  external set credentials(RequestCredentials value);
  external RequestCredentials get credentials;
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
  external JSVoid setItem(
    JSString key,
    JSString value,
  );
  external JSVoid removeItem(JSString key);
  external JSVoid clear();
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

  external factory StorageEvent.a2(
    JSString type,
    StorageEventInit eventInitDict,
  );
}

extension StorageEventExtension on StorageEvent {
  external JSString? get key;
  external JSString? get oldValue;
  external JSString? get newValue;
  external JSString get url;
  external Storage? get storageArea;
  external JSVoid initStorageEvent(JSString type);
  external JSVoid initStorageEvent1(
    JSString type,
    JSBoolean bubbles,
  );
  external JSVoid initStorageEvent2(
    JSString type,
    JSBoolean bubbles,
    JSBoolean cancelable,
  );
  external JSVoid initStorageEvent3(
    JSString type,
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSString? key,
  );
  external JSVoid initStorageEvent4(
    JSString type,
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSString? key,
    JSString? oldValue,
  );
  external JSVoid initStorageEvent5(
    JSString type,
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSString? key,
    JSString? oldValue,
    JSString? newValue,
  );
  external JSVoid initStorageEvent6(
    JSString type,
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSString? key,
    JSString? oldValue,
    JSString? newValue,
    JSString url,
  );
  external JSVoid initStorageEvent7(
    JSString type,
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSString? key,
    JSString? oldValue,
    JSString? newValue,
    JSString url,
    Storage? storageArea,
  );
}

@JS()
@staticInterop
@anonymous
class StorageEventInit extends EventInit {
  external factory StorageEventInit({
    JSString? key,
    JSString? oldValue,
    JSString? newValue,
    JSString url = '',
    Storage? storageArea,
  });
}

extension StorageEventInitExtension on StorageEventInit {
  external set key(JSString? value);
  external JSString? get key;
  external set oldValue(JSString? value);
  external JSString? get oldValue;
  external set newValue(JSString? value);
  external JSString? get newValue;
  external set url(JSString value);
  external JSString get url;
  external set storageArea(Storage? value);
  external Storage? get storageArea;
}

@JS('HTMLMarqueeElement')
@staticInterop
class HTMLMarqueeElement extends HTMLElement {
  external factory HTMLMarqueeElement.a0();
}

extension HTMLMarqueeElementExtension on HTMLMarqueeElement {
  external set behavior(JSString value);
  external JSString get behavior;
  external set bgColor(JSString value);
  external JSString get bgColor;
  external set direction(JSString value);
  external JSString get direction;
  external set height(JSString value);
  external JSString get height;
  external set hspace(JSNumber value);
  external JSNumber get hspace;
  external set loop(JSNumber value);
  external JSNumber get loop;
  external set scrollAmount(JSNumber value);
  external JSNumber get scrollAmount;
  external set scrollDelay(JSNumber value);
  external JSNumber get scrollDelay;
  external set trueSpeed(JSBoolean value);
  external JSBoolean get trueSpeed;
  external set vspace(JSNumber value);
  external JSNumber get vspace;
  external set width(JSString value);
  external JSString get width;
  external JSVoid start();
  external JSVoid stop();
}

@JS('HTMLFrameSetElement')
@staticInterop
class HTMLFrameSetElement extends HTMLElement implements WindowEventHandlers {
  external factory HTMLFrameSetElement.a0();
}

extension HTMLFrameSetElementExtension on HTMLFrameSetElement {
  external set cols(JSString value);
  external JSString get cols;
  external set rows(JSString value);
  external JSString get rows;
}

@JS('HTMLFrameElement')
@staticInterop
class HTMLFrameElement extends HTMLElement {
  external factory HTMLFrameElement.a0();
}

extension HTMLFrameElementExtension on HTMLFrameElement {
  external set name(JSString value);
  external JSString get name;
  external set scrolling(JSString value);
  external JSString get scrolling;
  external set src(JSString value);
  external JSString get src;
  external set frameBorder(JSString value);
  external JSString get frameBorder;
  external set longDesc(JSString value);
  external JSString get longDesc;
  external set noResize(JSBoolean value);
  external JSBoolean get noResize;
  external Document? get contentDocument;
  external Window? get contentWindow;
  external set marginHeight(JSString value);
  external JSString get marginHeight;
  external set marginWidth(JSString value);
  external JSString get marginWidth;
}

@JS('HTMLDirectoryElement')
@staticInterop
class HTMLDirectoryElement extends HTMLElement {
  external factory HTMLDirectoryElement.a0();
}

extension HTMLDirectoryElementExtension on HTMLDirectoryElement {
  external set compact(JSBoolean value);
  external JSBoolean get compact;
}

@JS('HTMLFontElement')
@staticInterop
class HTMLFontElement extends HTMLElement {
  external factory HTMLFontElement.a0();
}

extension HTMLFontElementExtension on HTMLFontElement {
  external set color(JSString value);
  external JSString get color;
  external set face(JSString value);
  external JSString get face;
  external set size(JSString value);
  external JSString get size;
}

@JS('HTMLParamElement')
@staticInterop
class HTMLParamElement extends HTMLElement {
  external factory HTMLParamElement.a0();
}

extension HTMLParamElementExtension on HTMLParamElement {
  external set name(JSString value);
  external JSString get name;
  external set value(JSString value);
  external JSString get value;
  external set type(JSString value);
  external JSString get type;
  external set valueType(JSString value);
  external JSString get valueType;
}

@JS('External')
@staticInterop
class External {
  external factory External();
}

extension ExternalExtension on External {
  external JSVoid AddSearchProvider();
  external JSVoid IsSearchProviderInstalled();
}
