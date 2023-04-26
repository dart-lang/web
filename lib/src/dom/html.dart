// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

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
import 'edit_context.dart';
import 'encrypted_media.dart';
import 'entries_api.dart';
import 'fenced_frame.dart';
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
import 'turtledove.dart';
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
class HTMLAllCollection {}

extension HTMLAllCollectionExtension on HTMLAllCollection {
  external JSAny? namedItem(JSString name);
  external JSAny? item([JSString nameOrIndex]);
  external JSNumber get length;
}

@JS('HTMLFormControlsCollection')
@staticInterop
class HTMLFormControlsCollection implements HTMLCollection {}

extension HTMLFormControlsCollectionExtension on HTMLFormControlsCollection {
  external JSAny? namedItem(JSString name);
}

@JS('RadioNodeList')
@staticInterop
class RadioNodeList implements NodeList {}

extension RadioNodeListExtension on RadioNodeList {
  external set value(JSString value);
  external JSString get value;
}

@JS('HTMLOptionsCollection')
@staticInterop
class HTMLOptionsCollection implements HTMLCollection {}

extension HTMLOptionsCollectionExtension on HTMLOptionsCollection {
  external JSVoid add(
    JSAny element, [
    JSAny? before,
  ]);
  external JSVoid remove(JSNumber index);
  external set length(JSNumber value);
  external JSNumber get length;
  external set selectedIndex(JSNumber value);
  external JSNumber get selectedIndex;
}

@JS('DOMStringList')
@staticInterop
class DOMStringList {}

extension DOMStringListExtension on DOMStringList {
  external JSString? item(JSNumber index);
  external JSBoolean contains(JSString string);
  external JSNumber get length;
}

@JS('HTMLElement')
@staticInterop
class HTMLElement
    implements
        Element,
        ElementCSSInlineStyle,
        GlobalEventHandlers,
        ElementContentEditable,
        HTMLOrSVGElement {
  external factory HTMLElement();
}

extension HTMLElementExtension on HTMLElement {
  external JSVoid click();
  external ElementInternals attachInternals();
  external JSVoid showPopover();
  external JSVoid hidePopover();
  external JSVoid togglePopover([JSBoolean force]);
  external Element? get offsetParent;
  external JSNumber get offsetTop;
  external JSNumber get offsetLeft;
  external JSNumber get offsetWidth;
  external JSNumber get offsetHeight;
  external set editContext(EditContext? value);
  external EditContext? get editContext;
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
  external set popover(JSString? value);
  external JSString? get popover;
}

@JS('HTMLUnknownElement')
@staticInterop
class HTMLUnknownElement implements HTMLElement {}

@JS('HTMLOrSVGElement')
@staticInterop
class HTMLOrSVGElement {}

extension HTMLOrSVGElementExtension on HTMLOrSVGElement {
  external JSVoid focus([FocusOptions options]);
  external JSVoid blur();
  external DOMStringMap get dataset;
  external set nonce(JSString value);
  external JSString get nonce;
  external set autofocus(JSBoolean value);
  external JSBoolean get autofocus;
  external set tabIndex(JSNumber value);
  external JSNumber get tabIndex;
}

@JS('DOMStringMap')
@staticInterop
class DOMStringMap {}

@JS('HTMLHtmlElement')
@staticInterop
class HTMLHtmlElement implements HTMLElement {
  external factory HTMLHtmlElement();
}

extension HTMLHtmlElementExtension on HTMLHtmlElement {
  external set version(JSString value);
  external JSString get version;
}

@JS('HTMLHeadElement')
@staticInterop
class HTMLHeadElement implements HTMLElement {
  external factory HTMLHeadElement();
}

@JS('HTMLTitleElement')
@staticInterop
class HTMLTitleElement implements HTMLElement {
  external factory HTMLTitleElement();
}

extension HTMLTitleElementExtension on HTMLTitleElement {
  external set text(JSString value);
  external JSString get text;
}

@JS('HTMLBaseElement')
@staticInterop
class HTMLBaseElement implements HTMLElement {
  external factory HTMLBaseElement();
}

extension HTMLBaseElementExtension on HTMLBaseElement {
  external set href(JSString value);
  external JSString get href;
  external set target(JSString value);
  external JSString get target;
}

@JS('HTMLLinkElement')
@staticInterop
class HTMLLinkElement implements HTMLElement, LinkStyle {
  external factory HTMLLinkElement();
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
  external set fetchPriority(JSString value);
  external JSString get fetchPriority;
  external set charset(JSString value);
  external JSString get charset;
  external set rev(JSString value);
  external JSString get rev;
  external set target(JSString value);
  external JSString get target;
}

@JS('HTMLMetaElement')
@staticInterop
class HTMLMetaElement implements HTMLElement {
  external factory HTMLMetaElement();
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
class HTMLStyleElement implements HTMLElement, LinkStyle {
  external factory HTMLStyleElement();
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
class HTMLBodyElement implements HTMLElement, WindowEventHandlers {
  external factory HTMLBodyElement();
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
class HTMLHeadingElement implements HTMLElement {
  external factory HTMLHeadingElement();
}

extension HTMLHeadingElementExtension on HTMLHeadingElement {
  external set align(JSString value);
  external JSString get align;
}

@JS('HTMLParagraphElement')
@staticInterop
class HTMLParagraphElement implements HTMLElement {
  external factory HTMLParagraphElement();
}

extension HTMLParagraphElementExtension on HTMLParagraphElement {
  external set align(JSString value);
  external JSString get align;
}

@JS('HTMLHRElement')
@staticInterop
class HTMLHRElement implements HTMLElement {
  external factory HTMLHRElement();
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
class HTMLPreElement implements HTMLElement {
  external factory HTMLPreElement();
}

extension HTMLPreElementExtension on HTMLPreElement {
  external set width(JSNumber value);
  external JSNumber get width;
}

@JS('HTMLQuoteElement')
@staticInterop
class HTMLQuoteElement implements HTMLElement {
  external factory HTMLQuoteElement();
}

extension HTMLQuoteElementExtension on HTMLQuoteElement {
  external set cite(JSString value);
  external JSString get cite;
}

@JS('HTMLOListElement')
@staticInterop
class HTMLOListElement implements HTMLElement {
  external factory HTMLOListElement();
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
class HTMLUListElement implements HTMLElement {
  external factory HTMLUListElement();
}

extension HTMLUListElementExtension on HTMLUListElement {
  external set compact(JSBoolean value);
  external JSBoolean get compact;
  external set type(JSString value);
  external JSString get type;
}

@JS('HTMLMenuElement')
@staticInterop
class HTMLMenuElement implements HTMLElement {
  external factory HTMLMenuElement();
}

extension HTMLMenuElementExtension on HTMLMenuElement {
  external set compact(JSBoolean value);
  external JSBoolean get compact;
}

@JS('HTMLLIElement')
@staticInterop
class HTMLLIElement implements HTMLElement {
  external factory HTMLLIElement();
}

extension HTMLLIElementExtension on HTMLLIElement {
  external set value(JSNumber value);
  external JSNumber get value;
  external set type(JSString value);
  external JSString get type;
}

@JS('HTMLDListElement')
@staticInterop
class HTMLDListElement implements HTMLElement {
  external factory HTMLDListElement();
}

extension HTMLDListElementExtension on HTMLDListElement {
  external set compact(JSBoolean value);
  external JSBoolean get compact;
}

@JS('HTMLDivElement')
@staticInterop
class HTMLDivElement implements HTMLElement {
  external factory HTMLDivElement();
}

extension HTMLDivElementExtension on HTMLDivElement {
  external set align(JSString value);
  external JSString get align;
}

@JS('HTMLAnchorElement')
@staticInterop
class HTMLAnchorElement
    implements
        HTMLElement,
        HTMLAttributionSrcElementUtils,
        HTMLHyperlinkElementUtils {
  external factory HTMLAnchorElement();
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
class HTMLDataElement implements HTMLElement {
  external factory HTMLDataElement();
}

extension HTMLDataElementExtension on HTMLDataElement {
  external set value(JSString value);
  external JSString get value;
}

@JS('HTMLTimeElement')
@staticInterop
class HTMLTimeElement implements HTMLElement {
  external factory HTMLTimeElement();
}

extension HTMLTimeElementExtension on HTMLTimeElement {
  external set dateTime(JSString value);
  external JSString get dateTime;
}

@JS('HTMLSpanElement')
@staticInterop
class HTMLSpanElement implements HTMLElement {
  external factory HTMLSpanElement();
}

@JS('HTMLBRElement')
@staticInterop
class HTMLBRElement implements HTMLElement {
  external factory HTMLBRElement();
}

extension HTMLBRElementExtension on HTMLBRElement {
  external set clear(JSString value);
  external JSString get clear;
}

@JS('HTMLHyperlinkElementUtils')
@staticInterop
class HTMLHyperlinkElementUtils {}

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
class HTMLModElement implements HTMLElement {
  external factory HTMLModElement();
}

extension HTMLModElementExtension on HTMLModElement {
  external set cite(JSString value);
  external JSString get cite;
  external set dateTime(JSString value);
  external JSString get dateTime;
}

@JS('HTMLPictureElement')
@staticInterop
class HTMLPictureElement implements HTMLElement {
  external factory HTMLPictureElement();
}

@JS('HTMLSourceElement')
@staticInterop
class HTMLSourceElement implements HTMLElement {
  external factory HTMLSourceElement();
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
class HTMLImageElement implements HTMLElement, HTMLAttributionSrcElementUtils {
  external factory HTMLImageElement();
}

extension HTMLImageElementExtension on HTMLImageElement {
  external JSPromise decode();
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
  external set fetchPriority(JSString value);
  external JSString get fetchPriority;
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
}

@JS('HTMLIFrameElement')
@staticInterop
class HTMLIFrameElement implements HTMLElement {
  external factory HTMLIFrameElement();
}

extension HTMLIFrameElementExtension on HTMLIFrameElement {
  external Document? getSVGDocument();
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
}

@JS('HTMLEmbedElement')
@staticInterop
class HTMLEmbedElement implements HTMLElement {
  external factory HTMLEmbedElement();
}

extension HTMLEmbedElementExtension on HTMLEmbedElement {
  external Document? getSVGDocument();
  external set src(JSString value);
  external JSString get src;
  external set type(JSString value);
  external JSString get type;
  external set width(JSString value);
  external JSString get width;
  external set height(JSString value);
  external JSString get height;
  external set align(JSString value);
  external JSString get align;
  external set name(JSString value);
  external JSString get name;
}

@JS('HTMLObjectElement')
@staticInterop
class HTMLObjectElement implements HTMLElement {
  external factory HTMLObjectElement();
}

extension HTMLObjectElementExtension on HTMLObjectElement {
  external Document? getSVGDocument();
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
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
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
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
class HTMLVideoElement implements HTMLMediaElement {
  external factory HTMLVideoElement();
}

extension HTMLVideoElementExtension on HTMLVideoElement {
  external VideoPlaybackQuality getVideoPlaybackQuality();
  external JSPromise requestPictureInPicture();
  external JSNumber requestVideoFrameCallback(
      VideoFrameRequestCallback callback);
  external JSVoid cancelVideoFrameCallback(JSNumber handle);
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
  external set onenterpictureinpicture(EventHandler value);
  external EventHandler get onenterpictureinpicture;
  external set onleavepictureinpicture(EventHandler value);
  external EventHandler get onleavepictureinpicture;
  external set disablePictureInPicture(JSBoolean value);
  external JSBoolean get disablePictureInPicture;
}

@JS('HTMLAudioElement')
@staticInterop
class HTMLAudioElement implements HTMLMediaElement {
  external factory HTMLAudioElement();
}

@JS('HTMLTrackElement')
@staticInterop
class HTMLTrackElement implements HTMLElement {
  external factory HTMLTrackElement();

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
  external set default_(JSBoolean value);
  @JS('default')
  external JSBoolean get default_;
  external JSNumber get readyState;
  external TextTrack get track;
}

@JS('HTMLMediaElement')
@staticInterop
class HTMLMediaElement implements HTMLElement {
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
  external JSPromise setSinkId(JSString sinkId);
  external JSPromise setMediaKeys(MediaKeys? mediaKeys);
  external JSVoid load();
  external CanPlayTypeResult canPlayType(JSString type);
  external JSVoid fastSeek(JSNumber time);
  external JSObject getStartDate();
  external JSPromise play();
  external JSVoid pause();
  external TextTrack addTextTrack(
    TextTrackKind kind, [
    JSString label,
    JSString language,
  ]);
  external MediaStream captureStream();
  external JSString get sinkId;
  external MediaKeys? get mediaKeys;
  external set onencrypted(EventHandler value);
  external EventHandler get onencrypted;
  external set onwaitingforkey(EventHandler value);
  external EventHandler get onwaitingforkey;
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
  external JSNumber get readyState;
  external JSBoolean get seeking;
  external set currentTime(JSNumber value);
  external JSNumber get currentTime;
  external JSNumber get duration;
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
  external RemotePlayback get remote;
  external set disableRemotePlayback(JSBoolean value);
  external JSBoolean get disableRemotePlayback;
}

@JS('MediaError')
@staticInterop
class MediaError {
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
class AudioTrackList implements EventTarget {}

extension AudioTrackListExtension on AudioTrackList {
  external AudioTrack? getTrackById(JSString id);
  external JSNumber get length;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
}

@JS('AudioTrack')
@staticInterop
class AudioTrack {}

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
class VideoTrackList implements EventTarget {}

extension VideoTrackListExtension on VideoTrackList {
  external VideoTrack? getTrackById(JSString id);
  external JSNumber get length;
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
class VideoTrack {}

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
class TextTrackList implements EventTarget {}

extension TextTrackListExtension on TextTrackList {
  external TextTrack? getTrackById(JSString id);
  external JSNumber get length;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
}

@JS('TextTrack')
@staticInterop
class TextTrack implements EventTarget {}

extension TextTrackExtension on TextTrack {
  external JSVoid addCue(TextTrackCue cue);
  external JSVoid removeCue(TextTrackCue cue);
  external TextTrackKind get kind;
  external JSString get label;
  external JSString get language;
  external JSString get id;
  external JSString get inBandMetadataTrackDispatchType;
  external set mode(TextTrackMode value);
  external TextTrackMode get mode;
  external TextTrackCueList? get cues;
  external TextTrackCueList? get activeCues;
  external set oncuechange(EventHandler value);
  external EventHandler get oncuechange;
  external SourceBuffer? get sourceBuffer;
}

@JS('TextTrackCueList')
@staticInterop
class TextTrackCueList {}

extension TextTrackCueListExtension on TextTrackCueList {
  external TextTrackCue? getCueById(JSString id);
  external JSNumber get length;
}

@JS('TextTrackCue')
@staticInterop
class TextTrackCue implements EventTarget {}

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
class TimeRanges {}

extension TimeRangesExtension on TimeRanges {
  external JSNumber start(JSNumber index);
  external JSNumber end(JSNumber index);
  external JSNumber get length;
}

@JS('TrackEvent')
@staticInterop
class TrackEvent implements Event {
  external factory TrackEvent(
    JSString type, [
    TrackEventInit eventInitDict,
  ]);
}

extension TrackEventExtension on TrackEvent {
  external JSAny? get track;
}

@JS()
@staticInterop
@anonymous
class TrackEventInit implements EventInit {
  external factory TrackEventInit({JSAny? track});
}

extension TrackEventInitExtension on TrackEventInit {
  external set track(JSAny? value);
  external JSAny? get track;
}

@JS('HTMLMapElement')
@staticInterop
class HTMLMapElement implements HTMLElement {
  external factory HTMLMapElement();
}

extension HTMLMapElementExtension on HTMLMapElement {
  external set name(JSString value);
  external JSString get name;
  external HTMLCollection get areas;
}

@JS('HTMLAreaElement')
@staticInterop
class HTMLAreaElement implements HTMLElement, HTMLHyperlinkElementUtils {
  external factory HTMLAreaElement();
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
class HTMLTableElement implements HTMLElement {
  external factory HTMLTableElement();
}

extension HTMLTableElementExtension on HTMLTableElement {
  external HTMLTableCaptionElement createCaption();
  external JSVoid deleteCaption();
  external HTMLTableSectionElement createTHead();
  external JSVoid deleteTHead();
  external HTMLTableSectionElement createTFoot();
  external JSVoid deleteTFoot();
  external HTMLTableSectionElement createTBody();
  external HTMLTableRowElement insertRow([JSNumber index]);
  external JSVoid deleteRow(JSNumber index);
  external set caption(HTMLTableCaptionElement? value);
  external HTMLTableCaptionElement? get caption;
  external set tHead(HTMLTableSectionElement? value);
  external HTMLTableSectionElement? get tHead;
  external set tFoot(HTMLTableSectionElement? value);
  external HTMLTableSectionElement? get tFoot;
  external HTMLCollection get tBodies;
  external HTMLCollection get rows;
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
class HTMLTableCaptionElement implements HTMLElement {
  external factory HTMLTableCaptionElement();
}

extension HTMLTableCaptionElementExtension on HTMLTableCaptionElement {
  external set align(JSString value);
  external JSString get align;
}

@JS('HTMLTableColElement')
@staticInterop
class HTMLTableColElement implements HTMLElement {
  external factory HTMLTableColElement();
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
class HTMLTableSectionElement implements HTMLElement {
  external factory HTMLTableSectionElement();
}

extension HTMLTableSectionElementExtension on HTMLTableSectionElement {
  external HTMLTableRowElement insertRow([JSNumber index]);
  external JSVoid deleteRow(JSNumber index);
  external HTMLCollection get rows;
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
class HTMLTableRowElement implements HTMLElement {
  external factory HTMLTableRowElement();
}

extension HTMLTableRowElementExtension on HTMLTableRowElement {
  external HTMLTableCellElement insertCell([JSNumber index]);
  external JSVoid deleteCell(JSNumber index);
  external JSNumber get rowIndex;
  external JSNumber get sectionRowIndex;
  external HTMLCollection get cells;
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
class HTMLTableCellElement implements HTMLElement {
  external factory HTMLTableCellElement();
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
class HTMLFormElement implements HTMLElement {
  external factory HTMLFormElement();
}

extension HTMLFormElementExtension on HTMLFormElement {
  external JSVoid submit();
  external JSVoid requestSubmit([HTMLElement? submitter]);
  external JSVoid reset();
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
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
}

@JS('HTMLLabelElement')
@staticInterop
class HTMLLabelElement implements HTMLElement {
  external factory HTMLLabelElement();
}

extension HTMLLabelElementExtension on HTMLLabelElement {
  external HTMLFormElement? get form;
  external set htmlFor(JSString value);
  external JSString get htmlFor;
  external HTMLElement? get control;
}

@JS('HTMLInputElement')
@staticInterop
class HTMLInputElement implements HTMLElement, PopoverInvokerElement {
  external factory HTMLInputElement();
}

extension HTMLInputElementExtension on HTMLInputElement {
  external JSVoid stepUp([JSNumber n]);
  external JSVoid stepDown([JSNumber n]);
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
  external JSVoid select();
  external JSVoid setRangeText(
    JSString replacement, [
    JSNumber start,
    JSNumber end,
    SelectionMode selectionMode,
  ]);
  external JSVoid setSelectionRange(
    JSNumber start,
    JSNumber end, [
    JSString direction,
  ]);
  external JSVoid showPicker();
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
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external NodeList? get labels;
  external set selectionStart(JSNumber? value);
  external JSNumber? get selectionStart;
  external set selectionEnd(JSNumber? value);
  external JSNumber? get selectionEnd;
  external set selectionDirection(JSString? value);
  external JSString? get selectionDirection;
  external set align(JSString value);
  external JSString get align;
  external set useMap(JSString value);
  external JSString get useMap;
}

@JS('HTMLButtonElement')
@staticInterop
class HTMLButtonElement implements HTMLElement, PopoverInvokerElement {
  external factory HTMLButtonElement();
}

extension HTMLButtonElementExtension on HTMLButtonElement {
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
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
  external NodeList get labels;
}

@JS('HTMLSelectElement')
@staticInterop
class HTMLSelectElement implements HTMLElement {
  external factory HTMLSelectElement();
}

extension HTMLSelectElementExtension on HTMLSelectElement {
  external HTMLOptionElement? item(JSNumber index);
  external HTMLOptionElement? namedItem(JSString name);
  external JSVoid add(
    JSAny element, [
    JSAny? before,
  ]);
  external JSVoid remove([JSNumber index]);
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
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
  external HTMLCollection get selectedOptions;
  external set selectedIndex(JSNumber value);
  external JSNumber get selectedIndex;
  external set value(JSString value);
  external JSString get value;
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external NodeList get labels;
}

@JS('HTMLDataListElement')
@staticInterop
class HTMLDataListElement implements HTMLElement {
  external factory HTMLDataListElement();
}

extension HTMLDataListElementExtension on HTMLDataListElement {
  external HTMLCollection get options;
}

@JS('HTMLOptGroupElement')
@staticInterop
class HTMLOptGroupElement implements HTMLElement {
  external factory HTMLOptGroupElement();
}

extension HTMLOptGroupElementExtension on HTMLOptGroupElement {
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
  external set label(JSString value);
  external JSString get label;
}

@JS('HTMLOptionElement')
@staticInterop
class HTMLOptionElement implements HTMLElement {
  external factory HTMLOptionElement();
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
class HTMLTextAreaElement implements HTMLElement {
  external factory HTMLTextAreaElement();
}

extension HTMLTextAreaElementExtension on HTMLTextAreaElement {
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
  external JSVoid select();
  external JSVoid setRangeText(
    JSString replacement, [
    JSNumber start,
    JSNumber end,
    SelectionMode selectionMode,
  ]);
  external JSVoid setSelectionRange(
    JSNumber start,
    JSNumber end, [
    JSString direction,
  ]);
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
  external NodeList get labels;
  external set selectionStart(JSNumber value);
  external JSNumber get selectionStart;
  external set selectionEnd(JSNumber value);
  external JSNumber get selectionEnd;
  external set selectionDirection(JSString value);
  external JSString get selectionDirection;
}

@JS('HTMLOutputElement')
@staticInterop
class HTMLOutputElement implements HTMLElement {
  external factory HTMLOutputElement();
}

extension HTMLOutputElementExtension on HTMLOutputElement {
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
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
  external NodeList get labels;
}

@JS('HTMLProgressElement')
@staticInterop
class HTMLProgressElement implements HTMLElement {
  external factory HTMLProgressElement();
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
class HTMLMeterElement implements HTMLElement {
  external factory HTMLMeterElement();
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
class HTMLFieldSetElement implements HTMLElement {
  external factory HTMLFieldSetElement();
}

extension HTMLFieldSetElementExtension on HTMLFieldSetElement {
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external JSVoid setCustomValidity(JSString error);
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
}

@JS('HTMLLegendElement')
@staticInterop
class HTMLLegendElement implements HTMLElement {
  external factory HTMLLegendElement();
}

extension HTMLLegendElementExtension on HTMLLegendElement {
  external HTMLFormElement? get form;
  external set align(JSString value);
  external JSString get align;
}

@JS('ValidityState')
@staticInterop
class ValidityState {}

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
class SubmitEvent implements Event {
  external factory SubmitEvent(
    JSString type, [
    SubmitEventInit eventInitDict,
  ]);
}

extension SubmitEventExtension on SubmitEvent {
  external HTMLElement? get submitter;
}

@JS()
@staticInterop
@anonymous
class SubmitEventInit implements EventInit {
  external factory SubmitEventInit({HTMLElement? submitter});
}

extension SubmitEventInitExtension on SubmitEventInit {
  external set submitter(HTMLElement? value);
  external HTMLElement? get submitter;
}

@JS('FormDataEvent')
@staticInterop
class FormDataEvent implements Event {
  external factory FormDataEvent(
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
class FormDataEventInit implements EventInit {
  external factory FormDataEventInit({required FormData formData});
}

extension FormDataEventInitExtension on FormDataEventInit {
  external set formData(FormData value);
  external FormData get formData;
}

@JS('HTMLDetailsElement')
@staticInterop
class HTMLDetailsElement implements HTMLElement {
  external factory HTMLDetailsElement();
}

extension HTMLDetailsElementExtension on HTMLDetailsElement {
  external set open(JSBoolean value);
  external JSBoolean get open;
}

@JS('HTMLDialogElement')
@staticInterop
class HTMLDialogElement implements HTMLElement {
  external factory HTMLDialogElement();
}

extension HTMLDialogElementExtension on HTMLDialogElement {
  external JSVoid show();
  external JSVoid showModal();
  external JSVoid close([JSString returnValue]);
  external set open(JSBoolean value);
  external JSBoolean get open;
  external set returnValue(JSString value);
  external JSString get returnValue;
}

@JS('HTMLScriptElement')
@staticInterop
class HTMLScriptElement implements HTMLElement, HTMLAttributionSrcElementUtils {
  external factory HTMLScriptElement();

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
  external set fetchPriority(JSString value);
  external JSString get fetchPriority;
  external set charset(JSString value);
  external JSString get charset;
  external set event(JSString value);
  external JSString get event;
  external set htmlFor(JSString value);
  external JSString get htmlFor;
}

@JS('HTMLTemplateElement')
@staticInterop
class HTMLTemplateElement implements HTMLElement {
  external factory HTMLTemplateElement();
}

extension HTMLTemplateElementExtension on HTMLTemplateElement {
  external DocumentFragment get content;
}

@JS('HTMLSlotElement')
@staticInterop
class HTMLSlotElement implements HTMLElement {
  external factory HTMLSlotElement();
}

extension HTMLSlotElementExtension on HTMLSlotElement {
  external JSArray assignedNodes([AssignedNodesOptions options]);
  external JSArray assignedElements([AssignedNodesOptions options]);
  external JSVoid assign(JSAny nodes);
  external set name(JSString value);
  external JSString get name;
}

@JS()
@staticInterop
@anonymous
class AssignedNodesOptions {
  external factory AssignedNodesOptions({JSBoolean flatten});
}

extension AssignedNodesOptionsExtension on AssignedNodesOptions {
  external set flatten(JSBoolean value);
  external JSBoolean get flatten;
}

@JS('HTMLCanvasElement')
@staticInterop
class HTMLCanvasElement implements HTMLElement {
  external factory HTMLCanvasElement();
}

extension HTMLCanvasElementExtension on HTMLCanvasElement {
  external RenderingContext? getContext(
    JSString contextId, [
    JSAny options,
  ]);
  external JSString toDataURL([
    JSString type,
    JSAny quality,
  ]);
  external JSVoid toBlob(
    BlobCallback callback, [
    JSString type,
    JSAny quality,
  ]);
  external OffscreenCanvas transferControlToOffscreen();
  external MediaStream captureStream([JSNumber frameRequestRate]);
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
}

@JS()
@staticInterop
@anonymous
class CanvasRenderingContext2DSettings {
  external factory CanvasRenderingContext2DSettings({
    JSBoolean alpha,
    JSBoolean desynchronized,
    PredefinedColorSpace colorSpace,
    JSBoolean willReadFrequently,
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
        CanvasPath {}

extension CanvasRenderingContext2DExtension on CanvasRenderingContext2D {
  external CanvasRenderingContext2DSettings getContextAttributes();
  external HTMLCanvasElement get canvas;
}

@JS('CanvasState')
@staticInterop
class CanvasState {}

extension CanvasStateExtension on CanvasState {
  external JSVoid save();
  external JSVoid restore();
  external JSVoid reset();
  external JSBoolean isContextLost();
}

@JS('CanvasTransform')
@staticInterop
class CanvasTransform {}

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
  external JSVoid setTransform([
    JSAny aOrTransform,
    JSNumber b,
    JSNumber c,
    JSNumber d,
    JSNumber e,
    JSNumber f,
  ]);
  external JSVoid resetTransform();
}

@JS('CanvasCompositing')
@staticInterop
class CanvasCompositing {}

extension CanvasCompositingExtension on CanvasCompositing {
  external set globalAlpha(JSNumber value);
  external JSNumber get globalAlpha;
  external set globalCompositeOperation(JSString value);
  external JSString get globalCompositeOperation;
}

@JS('CanvasImageSmoothing')
@staticInterop
class CanvasImageSmoothing {}

extension CanvasImageSmoothingExtension on CanvasImageSmoothing {
  external set imageSmoothingEnabled(JSBoolean value);
  external JSBoolean get imageSmoothingEnabled;
  external set imageSmoothingQuality(ImageSmoothingQuality value);
  external ImageSmoothingQuality get imageSmoothingQuality;
}

@JS('CanvasFillStrokeStyles')
@staticInterop
class CanvasFillStrokeStyles {}

extension CanvasFillStrokeStylesExtension on CanvasFillStrokeStyles {
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
  external set strokeStyle(JSAny value);
  external JSAny get strokeStyle;
  external set fillStyle(JSAny value);
  external JSAny get fillStyle;
}

@JS('CanvasShadowStyles')
@staticInterop
class CanvasShadowStyles {}

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
class CanvasFilters {}

extension CanvasFiltersExtension on CanvasFilters {
  external set filter(JSString value);
  external JSString get filter;
}

@JS('CanvasRect')
@staticInterop
class CanvasRect {}

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
class CanvasDrawPath {}

extension CanvasDrawPathExtension on CanvasDrawPath {
  external JSVoid beginPath();
  external JSVoid fill([
    JSAny fillRuleOrPath,
    CanvasFillRule fillRule,
  ]);
  external JSVoid stroke([Path2D path]);
  external JSVoid clip([
    JSAny fillRuleOrPath,
    CanvasFillRule fillRule,
  ]);
  external JSBoolean isPointInPath(
    JSAny pathOrX,
    JSNumber xOrY, [
    JSAny fillRuleOrY,
    CanvasFillRule fillRule,
  ]);
  external JSBoolean isPointInStroke(
    JSAny pathOrX,
    JSNumber xOrY, [
    JSNumber y,
  ]);
}

@JS('CanvasUserInterface')
@staticInterop
class CanvasUserInterface {}

extension CanvasUserInterfaceExtension on CanvasUserInterface {
  external JSVoid drawFocusIfNeeded(
    JSAny elementOrPath, [
    Element element,
  ]);
  external JSVoid scrollPathIntoView([Path2D path]);
}

@JS('CanvasText')
@staticInterop
class CanvasText {}

extension CanvasTextExtension on CanvasText {
  external JSVoid fillText(
    JSString text,
    JSNumber x,
    JSNumber y, [
    JSNumber maxWidth,
  ]);
  external JSVoid strokeText(
    JSString text,
    JSNumber x,
    JSNumber y, [
    JSNumber maxWidth,
  ]);
  external TextMetrics measureText(JSString text);
}

@JS('CanvasDrawImage')
@staticInterop
class CanvasDrawImage {}

extension CanvasDrawImageExtension on CanvasDrawImage {
  external JSVoid drawImage(
    CanvasImageSource image,
    JSNumber dxOrSx,
    JSNumber dyOrSy, [
    JSNumber dwOrSw,
    JSNumber dhOrSh,
    JSNumber dx,
    JSNumber dy,
    JSNumber dw,
    JSNumber dh,
  ]);
}

@JS('CanvasImageData')
@staticInterop
class CanvasImageData {}

extension CanvasImageDataExtension on CanvasImageData {
  external ImageData createImageData(
    JSAny imagedataOrSw, [
    JSNumber sh,
    ImageDataSettings settings,
  ]);
  external ImageData getImageData(
    JSNumber sx,
    JSNumber sy,
    JSNumber sw,
    JSNumber sh, [
    ImageDataSettings settings,
  ]);
  external JSVoid putImageData(
    ImageData imagedata,
    JSNumber dx,
    JSNumber dy, [
    JSNumber dirtyX,
    JSNumber dirtyY,
    JSNumber dirtyWidth,
    JSNumber dirtyHeight,
  ]);
}

@JS('CanvasPathDrawingStyles')
@staticInterop
class CanvasPathDrawingStyles {}

extension CanvasPathDrawingStylesExtension on CanvasPathDrawingStyles {
  external JSVoid setLineDash(JSArray segments);
  external JSArray getLineDash();
  external set lineWidth(JSNumber value);
  external JSNumber get lineWidth;
  external set lineCap(CanvasLineCap value);
  external CanvasLineCap get lineCap;
  external set lineJoin(CanvasLineJoin value);
  external CanvasLineJoin get lineJoin;
  external set miterLimit(JSNumber value);
  external JSNumber get miterLimit;
  external set lineDashOffset(JSNumber value);
  external JSNumber get lineDashOffset;
}

@JS('CanvasTextDrawingStyles')
@staticInterop
class CanvasTextDrawingStyles {}

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
class CanvasPath {}

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
    JSNumber h, [
    JSAny radii,
  ]);
  external JSVoid arc(
    JSNumber x,
    JSNumber y,
    JSNumber radius,
    JSNumber startAngle,
    JSNumber endAngle, [
    JSBoolean counterclockwise,
  ]);
  external JSVoid ellipse(
    JSNumber x,
    JSNumber y,
    JSNumber radiusX,
    JSNumber radiusY,
    JSNumber rotation,
    JSNumber startAngle,
    JSNumber endAngle, [
    JSBoolean counterclockwise,
  ]);
}

@JS('CanvasGradient')
@staticInterop
class CanvasGradient {}

extension CanvasGradientExtension on CanvasGradient {
  external JSVoid addColorStop(
    JSNumber offset,
    JSString color,
  );
}

@JS('CanvasPattern')
@staticInterop
class CanvasPattern {}

extension CanvasPatternExtension on CanvasPattern {
  external JSVoid setTransform([DOMMatrix2DInit transform]);
}

@JS('TextMetrics')
@staticInterop
class TextMetrics {}

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
  external factory ImageData(
    JSAny dataOrSw,
    JSNumber shOrSw, [
    JSAny settingsOrSh,
    ImageDataSettings settings,
  ]);
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
  external factory Path2D([JSAny path]);
}

extension Path2DExtension on Path2D {
  external JSVoid addPath(
    Path2D path, [
    DOMMatrix2DInit transform,
  ]);
}

@JS('ImageBitmapRenderingContext')
@staticInterop
class ImageBitmapRenderingContext {}

extension ImageBitmapRenderingContextExtension on ImageBitmapRenderingContext {
  external JSVoid transferFromImageBitmap(ImageBitmap? bitmap);
  external JSAny get canvas;
}

@JS()
@staticInterop
@anonymous
class ImageBitmapRenderingContextSettings {
  external factory ImageBitmapRenderingContextSettings({JSBoolean alpha});
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
    JSString type,
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
class OffscreenCanvas implements EventTarget {
  external factory OffscreenCanvas(
    JSNumber width,
    JSNumber height,
  );
}

extension OffscreenCanvasExtension on OffscreenCanvas {
  external OffscreenRenderingContext? getContext(
    OffscreenRenderingContextId contextId, [
    JSAny options,
  ]);
  external ImageBitmap transferToImageBitmap();
  external JSPromise convertToBlob([ImageEncodeOptions options]);
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
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
        CanvasPath {}

extension OffscreenCanvasRenderingContext2DExtension
    on OffscreenCanvasRenderingContext2D {
  external JSVoid commit();
  external OffscreenCanvas get canvas;
}

@JS('CustomElementRegistry')
@staticInterop
class CustomElementRegistry {}

extension CustomElementRegistryExtension on CustomElementRegistry {
  external JSVoid define(
    JSString name,
    CustomElementConstructor constructor, [
    ElementDefinitionOptions options,
  ]);
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
  external set extends_(JSString value);
  @JS('extends')
  external JSString get extends_;
}

@JS('ElementInternals')
@staticInterop
class ElementInternals implements ARIAMixin {}

extension ElementInternalsExtension on ElementInternals {
  external JSVoid setFormValue(
    JSAny? value, [
    JSAny? state,
  ]);
  external JSVoid setValidity([
    ValidityStateFlags flags,
    JSString message,
    HTMLElement anchor,
  ]);
  external JSBoolean checkValidity();
  external JSBoolean reportValidity();
  external CustomStateSet get states;
  external ShadowRoot? get shadowRoot;
  external HTMLFormElement? get form;
  external JSBoolean get willValidate;
  external ValidityState get validity;
  external JSString get validationMessage;
  external NodeList get labels;
}

@JS()
@staticInterop
@anonymous
class ValidityStateFlags {
  external factory ValidityStateFlags({
    JSBoolean valueMissing,
    JSBoolean typeMismatch,
    JSBoolean patternMismatch,
    JSBoolean tooLong,
    JSBoolean tooShort,
    JSBoolean rangeUnderflow,
    JSBoolean rangeOverflow,
    JSBoolean stepMismatch,
    JSBoolean badInput,
    JSBoolean customError,
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
class UserActivation {}

extension UserActivationExtension on UserActivation {
  external JSBoolean get hasBeenActive;
  external JSBoolean get isActive;
}

@JS()
@staticInterop
@anonymous
class FocusOptions {
  external factory FocusOptions({
    JSBoolean preventScroll,
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
class ElementContentEditable {}

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
  external factory DataTransfer();
}

extension DataTransferExtension on DataTransfer {
  external JSVoid setDragImage(
    Element image,
    JSNumber x,
    JSNumber y,
  );
  external JSString getData(JSString format);
  external JSVoid setData(
    JSString format,
    JSString data,
  );
  external JSVoid clearData([JSString format]);
  external set dropEffect(JSString value);
  external JSString get dropEffect;
  external set effectAllowed(JSString value);
  external JSString get effectAllowed;
  external DataTransferItemList get items;
  external JSArray get types;
  external FileList get files;
}

@JS('DataTransferItemList')
@staticInterop
class DataTransferItemList {}

extension DataTransferItemListExtension on DataTransferItemList {
  external DataTransferItem? add(
    JSAny data, [
    JSString type,
  ]);
  external JSVoid remove(JSNumber index);
  external JSVoid clear();
  external JSNumber get length;
}

@JS('DataTransferItem')
@staticInterop
class DataTransferItem {}

extension DataTransferItemExtension on DataTransferItem {
  external FileSystemEntry? webkitGetAsEntry();
  external JSPromise getAsFileSystemHandle();
  external JSVoid getAsString(FunctionStringCallback? callback);
  external File? getAsFile();
  external JSString get kind;
  external JSString get type;
}

@JS('DragEvent')
@staticInterop
class DragEvent implements MouseEvent {
  external factory DragEvent(
    JSString type, [
    DragEventInit eventInitDict,
  ]);
}

extension DragEventExtension on DragEvent {
  external DataTransfer? get dataTransfer;
}

@JS()
@staticInterop
@anonymous
class DragEventInit implements MouseEventInit {
  external factory DragEventInit({DataTransfer? dataTransfer});
}

extension DragEventInitExtension on DragEventInit {
  external set dataTransfer(DataTransfer? value);
  external DataTransfer? get dataTransfer;
}

@JS('PopoverInvokerElement')
@staticInterop
class PopoverInvokerElement {}

extension PopoverInvokerElementExtension on PopoverInvokerElement {
  external set popoverTargetElement(Element? value);
  external Element? get popoverTargetElement;
  external set popoverTargetAction(JSString value);
  external JSString get popoverTargetAction;
}

@JS('ToggleEvent')
@staticInterop
class ToggleEvent implements Event {
  external factory ToggleEvent(
    JSString type, [
    ToggleEventInit eventInitDict,
  ]);
}

extension ToggleEventExtension on ToggleEvent {
  external JSString get oldState;
  external JSString get newState;
}

@JS()
@staticInterop
@anonymous
class ToggleEventInit implements EventInit {
  external factory ToggleEventInit({
    JSString oldState,
    JSString newState,
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
class Window
    implements
        EventTarget,
        GlobalEventHandlers,
        WindowEventHandlers,
        WindowOrWorkerGlobalScope,
        AnimationFrameProvider,
        WindowSessionStorage,
        WindowLocalStorage {}

extension WindowExtension on Window {
  external JSVoid navigate(SpatialNavigationDirection dir);
  external MediaQueryList matchMedia(JSString query);
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
  external CSSStyleDeclaration getComputedStyle(
    Element elt, [
    JSString? pseudoElt,
  ]);
  external JSPromise getDigitalGoodsService(JSString serviceProvider);
  external JSPromise showOpenFilePicker([OpenFilePickerOptions options]);
  external JSPromise showSaveFilePicker([SaveFilePickerOptions options]);
  external JSPromise showDirectoryPicker([DirectoryPickerOptions options]);
  external JSVoid close();
  external JSVoid stop();
  external JSVoid focus();
  external JSVoid blur();
  external Window? open([
    JSString url,
    JSString target,
    JSString features,
  ]);
  external JSVoid alert([JSString message]);
  external JSBoolean confirm([JSString message]);
  external JSString? prompt([
    JSString message,
    JSString default_,
  ]);
  external JSVoid print();
  external JSVoid postMessage(
    JSAny message, [
    JSAny optionsOrTargetOrigin,
    JSArray transfer,
  ]);
  external JSVoid captureEvents();
  external JSVoid releaseEvents();
  external JSPromise queryLocalFonts([QueryOptions options]);
  external JSNumber requestIdleCallback(
    IdleRequestCallback callback, [
    IdleRequestOptions options,
  ]);
  external JSVoid cancelIdleCallback(JSNumber handle);
  external Selection? getSelection();
  external JSPromise getScreenDetails();
  external JSNumber get orientation;
  external set onorientationchange(EventHandler value);
  external EventHandler get onorientationchange;
  external CookieStore get cookieStore;
  external Screen get screen;
  external VisualViewport? get visualViewport;
  external JSNumber get innerWidth;
  external JSNumber get innerHeight;
  external JSNumber get scrollX;
  external JSNumber get pageXOffset;
  external JSNumber get scrollY;
  external JSNumber get pageYOffset;
  external JSNumber get screenX;
  external JSNumber get screenLeft;
  external JSNumber get screenY;
  external JSNumber get screenTop;
  external JSNumber get outerWidth;
  external JSNumber get outerHeight;
  external JSNumber get devicePixelRatio;
  external JSAny get event;
  external Fence? get fence;
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
  external JSBoolean get closed;
  external Window get frames;
  external JSNumber get length;
  external Window? get top;
  external set opener(JSAny value);
  external JSAny get opener;
  external Window? get parent;
  external Element? get frameElement;
  external Navigator get navigator;
  external Navigator get clientInformation;
  external JSBoolean get originAgentCluster;
  external External get external;
  external set onappinstalled(EventHandler value);
  external EventHandler get onappinstalled;
  external set onbeforeinstallprompt(EventHandler value);
  external EventHandler get onbeforeinstallprompt;
  external set ondeviceorientation(EventHandler value);
  external EventHandler get ondeviceorientation;
  external set ondeviceorientationabsolute(EventHandler value);
  external EventHandler get ondeviceorientationabsolute;
  external set ondevicemotion(EventHandler value);
  external EventHandler get ondevicemotion;
  external PortalHost? get portalHost;
  external SpeechSynthesis get speechSynthesis;
  external LaunchQueue get launchQueue;
}

@JS()
@staticInterop
@anonymous
class WindowPostMessageOptions implements StructuredSerializeOptions {
  external factory WindowPostMessageOptions({JSString targetOrigin});
}

extension WindowPostMessageOptionsExtension on WindowPostMessageOptions {
  external set targetOrigin(JSString value);
  external JSString get targetOrigin;
}

@JS('BarProp')
@staticInterop
class BarProp {}

extension BarPropExtension on BarProp {
  external JSBoolean get visible;
}

@JS('Location')
@staticInterop
class Location {}

extension LocationExtension on Location {
  external JSVoid assign(JSString url);
  external JSVoid replace(JSString url);
  external JSVoid reload();
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
  external DOMStringList get ancestorOrigins;
}

@JS('History')
@staticInterop
class History {}

extension HistoryExtension on History {
  external JSVoid go([JSNumber delta]);
  external JSVoid back();
  external JSVoid forward();
  external JSVoid pushState(
    JSAny data,
    JSString unused, [
    JSString? url,
  ]);
  external JSVoid replaceState(
    JSAny data,
    JSString unused, [
    JSString? url,
  ]);
  external JSNumber get length;
  external set scrollRestoration(ScrollRestoration value);
  external ScrollRestoration get scrollRestoration;
  external JSAny get state;
}

@JS('PopStateEvent')
@staticInterop
class PopStateEvent implements Event {
  external factory PopStateEvent(
    JSString type, [
    PopStateEventInit eventInitDict,
  ]);
}

extension PopStateEventExtension on PopStateEvent {
  external JSAny get state;
}

@JS()
@staticInterop
@anonymous
class PopStateEventInit implements EventInit {
  external factory PopStateEventInit({JSAny state});
}

extension PopStateEventInitExtension on PopStateEventInit {
  external set state(JSAny value);
  external JSAny get state;
}

@JS('HashChangeEvent')
@staticInterop
class HashChangeEvent implements Event {
  external factory HashChangeEvent(
    JSString type, [
    HashChangeEventInit eventInitDict,
  ]);
}

extension HashChangeEventExtension on HashChangeEvent {
  external JSString get oldURL;
  external JSString get newURL;
}

@JS()
@staticInterop
@anonymous
class HashChangeEventInit implements EventInit {
  external factory HashChangeEventInit({
    JSString oldURL,
    JSString newURL,
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
class PageTransitionEvent implements Event {
  external factory PageTransitionEvent(
    JSString type, [
    PageTransitionEventInit eventInitDict,
  ]);
}

extension PageTransitionEventExtension on PageTransitionEvent {
  external JSBoolean get persisted;
}

@JS()
@staticInterop
@anonymous
class PageTransitionEventInit implements EventInit {
  external factory PageTransitionEventInit({JSBoolean persisted});
}

extension PageTransitionEventInitExtension on PageTransitionEventInit {
  external set persisted(JSBoolean value);
  external JSBoolean get persisted;
}

@JS('BeforeUnloadEvent')
@staticInterop
class BeforeUnloadEvent implements Event {}

extension BeforeUnloadEventExtension on BeforeUnloadEvent {
  external set returnValue(JSString value);
  external JSString get returnValue;
}

@JS('ErrorEvent')
@staticInterop
class ErrorEvent implements Event {
  external factory ErrorEvent(
    JSString type, [
    ErrorEventInit eventInitDict,
  ]);
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
class ErrorEventInit implements EventInit {
  external factory ErrorEventInit({
    JSString message,
    JSString filename,
    JSNumber lineno,
    JSNumber colno,
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
class PromiseRejectionEvent implements Event {
  external factory PromiseRejectionEvent(
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
class PromiseRejectionEventInit implements EventInit {
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
class GlobalEventHandlers {}

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

@JS('WindowEventHandlers')
@staticInterop
class WindowEventHandlers {}

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
class WindowOrWorkerGlobalScope {}

extension WindowOrWorkerGlobalScopeExtension on WindowOrWorkerGlobalScope {
  external JSPromise fetch(
    RequestInfo input, [
    RequestInit init,
  ]);
  external JSVoid reportError(JSAny e);
  external JSString btoa(JSString data);
  external JSString atob(JSString data);
  external JSNumber setTimeout(
    TimerHandler handler,
    JSAny arguments, [
    JSNumber timeout,
  ]);
  external JSVoid clearTimeout([JSNumber id]);
  external JSNumber setInterval(
    TimerHandler handler,
    JSAny arguments, [
    JSNumber timeout,
  ]);
  external JSVoid clearInterval([JSNumber id]);
  external JSVoid queueMicrotask(VoidFunction callback);
  external JSPromise createImageBitmap(
    ImageBitmapSource image, [
    JSAny optionsOrSx,
    JSNumber sy,
    JSNumber sw,
    JSNumber sh,
    ImageBitmapOptions options,
  ]);
  external JSAny structuredClone(
    JSAny value, [
    StructuredSerializeOptions options,
  ]);
  external IDBFactory get indexedDB;
  external Crypto get crypto;
  external Performance get performance;
  external JSString get origin;
  external JSBoolean get isSecureContext;
  external JSBoolean get crossOriginIsolated;
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
        NavigatorML {}

extension NavigatorExtension on Navigator {
  external AutoplayPolicy getAutoplayPolicy(JSAny contextOrElementOrType);
  external JSPromise getBattery();
  external JSBoolean sendBeacon(
    JSString url, [
    BodyInit? data,
  ]);
  external JSPromise requestMediaKeySystemAccess(
    JSString keySystem,
    JSArray supportedConfigurations,
  );
  external JSArray getGamepads();
  external JSPromise getInstalledRelatedApps();
  external JSVoid getUserMedia(
    MediaStreamConstraints constraints,
    NavigatorUserMediaSuccessCallback successCallback,
    NavigatorUserMediaErrorCallback errorCallback,
  );
  external JSPromise joinAdInterestGroup(
    AuctionAdInterestGroup group,
    JSNumber durationSeconds,
  );
  external JSPromise leaveAdInterestGroup(AuctionAdInterestGroupKey group);
  external JSPromise runAdAuction(AuctionAdConfig config);
  external JSVoid updateAdInterestGroups();
  external JSBoolean vibrate(VibratePattern pattern);
  external JSPromise share([ShareData data]);
  external JSBoolean canShare([ShareData data]);
  external JSPromise requestMIDIAccess([MIDIOptions options]);
  external Clipboard get clipboard;
  external ContactsManager get contacts;
  external CredentialsContainer get credentials;
  external DevicePosture get devicePosture;
  external Geolocation get geolocation;
  external UserActivation get userActivation;
  external Ink get ink;
  external Scheduling get scheduling;
  external Keyboard get keyboard;
  external MediaCapabilities get mediaCapabilities;
  external MediaDevices get mediaDevices;
  external MediaSession get mediaSession;
  external Permissions get permissions;
  external JSNumber get maxTouchPoints;
  external Presentation get presentation;
  external WakeLock get wakeLock;
  external Serial get serial;
  external ServiceWorkerContainer get serviceWorker;
  external VirtualKeyboard get virtualKeyboard;
  external Bluetooth get bluetooth;
  external HID get hid;
  external USB get usb;
  external XRSystem get xr;
  external WindowControlsOverlay get windowControlsOverlay;
}

@JS('NavigatorID')
@staticInterop
class NavigatorID {}

extension NavigatorIDExtension on NavigatorID {
  external JSBoolean taintEnabled();
  external JSString get appCodeName;
  external JSString get appName;
  external JSString get appVersion;
  external JSString get platform;
  external JSString get product;
  external JSString get productSub;
  external JSString get userAgent;
  external JSString get vendor;
  external JSString get vendorSub;
  external JSString get oscpu;
}

@JS('NavigatorLanguage')
@staticInterop
class NavigatorLanguage {}

extension NavigatorLanguageExtension on NavigatorLanguage {
  external JSString get language;
  external JSArray get languages;
}

@JS('NavigatorOnLine')
@staticInterop
class NavigatorOnLine {}

extension NavigatorOnLineExtension on NavigatorOnLine {
  external JSBoolean get onLine;
}

@JS('NavigatorContentUtils')
@staticInterop
class NavigatorContentUtils {}

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
class NavigatorCookies {}

extension NavigatorCookiesExtension on NavigatorCookies {
  external JSBoolean get cookieEnabled;
}

@JS('NavigatorPlugins')
@staticInterop
class NavigatorPlugins {}

extension NavigatorPluginsExtension on NavigatorPlugins {
  external JSBoolean javaEnabled();
  external PluginArray get plugins;
  external MimeTypeArray get mimeTypes;
  external JSBoolean get pdfViewerEnabled;
}

@JS('PluginArray')
@staticInterop
class PluginArray {}

extension PluginArrayExtension on PluginArray {
  external JSVoid refresh();
  external Plugin? item(JSNumber index);
  external Plugin? namedItem(JSString name);
  external JSNumber get length;
}

@JS('MimeTypeArray')
@staticInterop
class MimeTypeArray {}

extension MimeTypeArrayExtension on MimeTypeArray {
  external MimeType? item(JSNumber index);
  external MimeType? namedItem(JSString name);
  external JSNumber get length;
}

@JS('Plugin')
@staticInterop
class Plugin {}

extension PluginExtension on Plugin {
  external MimeType? item(JSNumber index);
  external MimeType? namedItem(JSString name);
  external JSString get name;
  external JSString get description;
  external JSString get filename;
  external JSNumber get length;
}

@JS('MimeType')
@staticInterop
class MimeType {}

extension MimeTypeExtension on MimeType {
  external JSString get type;
  external JSString get description;
  external JSString get suffixes;
  external Plugin get enabledPlugin;
}

@JS('ImageBitmap')
@staticInterop
class ImageBitmap {}

extension ImageBitmapExtension on ImageBitmap {
  external JSVoid close();
  external JSNumber get width;
  external JSNumber get height;
}

@JS()
@staticInterop
@anonymous
class ImageBitmapOptions {
  external factory ImageBitmapOptions({
    ImageOrientation imageOrientation,
    PremultiplyAlpha premultiplyAlpha,
    ColorSpaceConversion colorSpaceConversion,
    JSNumber resizeWidth,
    JSNumber resizeHeight,
    ResizeQuality resizeQuality,
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
class AnimationFrameProvider {}

extension AnimationFrameProviderExtension on AnimationFrameProvider {
  external JSNumber requestAnimationFrame(FrameRequestCallback callback);
  external JSVoid cancelAnimationFrame(JSNumber handle);
}

@JS('MessageEvent')
@staticInterop
class MessageEvent implements Event {
  external factory MessageEvent(
    JSString type, [
    MessageEventInit eventInitDict,
  ]);
}

extension MessageEventExtension on MessageEvent {
  external JSVoid initMessageEvent(
    JSString type, [
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSAny data,
    JSString origin,
    JSString lastEventId,
    MessageEventSource? source,
    JSArray ports,
  ]);
  external JSAny get data;
  external JSString get origin;
  external JSString get lastEventId;
  external MessageEventSource? get source;
  external JSArray get ports;
}

@JS()
@staticInterop
@anonymous
class MessageEventInit implements EventInit {
  external factory MessageEventInit({
    JSAny data,
    JSString origin,
    JSString lastEventId,
    MessageEventSource? source,
    JSArray ports,
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
class EventSource implements EventTarget {
  external factory EventSource(
    JSString url, [
    EventSourceInit eventSourceInitDict,
  ]);

  external static JSNumber get CONNECTING;
  external static JSNumber get OPEN;
  external static JSNumber get CLOSED;
}

extension EventSourceExtension on EventSource {
  external JSVoid close();
  external JSString get url;
  external JSBoolean get withCredentials;
  external JSNumber get readyState;
  external set onopen(EventHandler value);
  external EventHandler get onopen;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}

@JS()
@staticInterop
@anonymous
class EventSourceInit {
  external factory EventSourceInit({JSBoolean withCredentials});
}

extension EventSourceInitExtension on EventSourceInit {
  external set withCredentials(JSBoolean value);
  external JSBoolean get withCredentials;
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
class MessagePort implements EventTarget {}

extension MessagePortExtension on MessagePort {
  external JSVoid postMessage(
    JSAny message, [
    JSAny optionsOrTransfer,
  ]);
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
  external factory StructuredSerializeOptions({JSArray transfer});
}

extension StructuredSerializeOptionsExtension on StructuredSerializeOptions {
  external set transfer(JSArray value);
  external JSArray get transfer;
}

@JS('BroadcastChannel')
@staticInterop
class BroadcastChannel implements EventTarget {
  external factory BroadcastChannel(JSString name);
}

extension BroadcastChannelExtension on BroadcastChannel {
  external JSVoid postMessage(JSAny message);
  external JSVoid close();
  external JSString get name;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
}

@JS('WorkerGlobalScope')
@staticInterop
class WorkerGlobalScope
    implements EventTarget, FontFaceSource, WindowOrWorkerGlobalScope {}

extension WorkerGlobalScopeExtension on WorkerGlobalScope {
  external JSVoid importScripts(JSString urls);
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
}

@JS('DedicatedWorkerGlobalScope')
@staticInterop
class DedicatedWorkerGlobalScope
    implements WorkerGlobalScope, AnimationFrameProvider {}

extension DedicatedWorkerGlobalScopeExtension on DedicatedWorkerGlobalScope {
  external JSVoid postMessage(
    JSAny message, [
    JSAny optionsOrTransfer,
  ]);
  external JSVoid close();
  external JSString get name;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
  external set onrtctransform(EventHandler value);
  external EventHandler get onrtctransform;
}

@JS('SharedWorkerGlobalScope')
@staticInterop
class SharedWorkerGlobalScope implements WorkerGlobalScope {}

extension SharedWorkerGlobalScopeExtension on SharedWorkerGlobalScope {
  external JSVoid close();
  external JSString get name;
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
}

@JS('AbstractWorker')
@staticInterop
class AbstractWorker {}

extension AbstractWorkerExtension on AbstractWorker {
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}

@JS('Worker')
@staticInterop
class Worker implements EventTarget, AbstractWorker {
  external factory Worker(
    JSString scriptURL, [
    WorkerOptions options,
  ]);
}

extension WorkerExtension on Worker {
  external JSVoid terminate();
  external JSVoid postMessage(
    JSAny message, [
    JSAny optionsOrTransfer,
  ]);
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
    WorkerType type,
    RequestCredentials credentials,
    JSString name,
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
class SharedWorker implements EventTarget, AbstractWorker {
  external factory SharedWorker(
    JSString scriptURL, [
    JSAny options,
  ]);
}

extension SharedWorkerExtension on SharedWorker {
  external MessagePort get port;
}

@JS('NavigatorConcurrentHardware')
@staticInterop
class NavigatorConcurrentHardware {}

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
        NavigatorML {}

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
class WorkerLocation {}

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
class WorkletGlobalScope {}

@JS('Worklet')
@staticInterop
class Worklet {}

extension WorkletExtension on Worklet {
  external JSPromise addModule(
    JSString moduleURL, [
    WorkletOptions options,
  ]);
}

@JS()
@staticInterop
@anonymous
class WorkletOptions {
  external factory WorkletOptions({RequestCredentials credentials});
}

extension WorkletOptionsExtension on WorkletOptions {
  external set credentials(RequestCredentials value);
  external RequestCredentials get credentials;
}

@JS('Storage')
@staticInterop
class Storage {}

extension StorageExtension on Storage {
  external JSString? key(JSNumber index);
  external JSString? getItem(JSString key);
  external JSVoid setItem(
    JSString key,
    JSString value,
  );
  external JSVoid removeItem(JSString key);
  external JSVoid clear();
  external JSNumber get length;
}

@JS('WindowSessionStorage')
@staticInterop
class WindowSessionStorage {}

extension WindowSessionStorageExtension on WindowSessionStorage {
  external Storage get sessionStorage;
}

@JS('WindowLocalStorage')
@staticInterop
class WindowLocalStorage {}

extension WindowLocalStorageExtension on WindowLocalStorage {
  external Storage get localStorage;
}

@JS('StorageEvent')
@staticInterop
class StorageEvent implements Event {
  external factory StorageEvent(
    JSString type, [
    StorageEventInit eventInitDict,
  ]);
}

extension StorageEventExtension on StorageEvent {
  external JSVoid initStorageEvent(
    JSString type, [
    JSBoolean bubbles,
    JSBoolean cancelable,
    JSString? key,
    JSString? oldValue,
    JSString? newValue,
    JSString url,
    Storage? storageArea,
  ]);
  external JSString? get key;
  external JSString? get oldValue;
  external JSString? get newValue;
  external JSString get url;
  external Storage? get storageArea;
}

@JS()
@staticInterop
@anonymous
class StorageEventInit implements EventInit {
  external factory StorageEventInit({
    JSString? key,
    JSString? oldValue,
    JSString? newValue,
    JSString url,
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
class HTMLMarqueeElement implements HTMLElement {
  external factory HTMLMarqueeElement();
}

extension HTMLMarqueeElementExtension on HTMLMarqueeElement {
  external JSVoid start();
  external JSVoid stop();
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
}

@JS('HTMLFrameSetElement')
@staticInterop
class HTMLFrameSetElement implements HTMLElement, WindowEventHandlers {
  external factory HTMLFrameSetElement();
}

extension HTMLFrameSetElementExtension on HTMLFrameSetElement {
  external set cols(JSString value);
  external JSString get cols;
  external set rows(JSString value);
  external JSString get rows;
}

@JS('HTMLFrameElement')
@staticInterop
class HTMLFrameElement implements HTMLElement {
  external factory HTMLFrameElement();
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
class HTMLDirectoryElement implements HTMLElement {
  external factory HTMLDirectoryElement();
}

extension HTMLDirectoryElementExtension on HTMLDirectoryElement {
  external set compact(JSBoolean value);
  external JSBoolean get compact;
}

@JS('HTMLFontElement')
@staticInterop
class HTMLFontElement implements HTMLElement {
  external factory HTMLFontElement();
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
class HTMLParamElement implements HTMLElement {
  external factory HTMLParamElement();
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
class External {}

extension ExternalExtension on External {
  external JSVoid AddSearchProvider();
  external JSVoid IsSearchProviderInstalled();
}
