// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'attribution_reporting_api.dart';
import 'audio_session.dart';
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
import 'document_picture_in_picture.dart';
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
import 'performance_timeline.dart';
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
import 'shared_storage.dart';
import 'speech_api.dart';
import 'storage.dart';
import 'storage_buckets.dart';
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

typedef HTMLOrSVGScriptElement = JSAny?;
typedef MediaProvider = JSAny?;
typedef RenderingContext = JSAny?;
typedef HTMLOrSVGImageElement = JSAny?;
typedef CanvasImageSource = JSAny?;
typedef OffscreenRenderingContext = JSAny?;
typedef EventHandler = EventHandlerNonNull?;
typedef OnErrorEventHandler = OnErrorEventHandlerNonNull?;
typedef OnBeforeUnloadEventHandler = OnBeforeUnloadEventHandlerNonNull?;
typedef TimerHandler = JSAny?;
typedef ImageBitmapSource = JSAny?;
typedef MessageEventSource = JSAny?;
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

@JS('HTMLAllCollection')
@staticInterop
class HTMLAllCollection implements JSObject {}

extension HTMLAllCollectionExtension on HTMLAllCollection {
  external JSAny? namedItem(String name);
  external JSAny? item([String nameOrIndex]);
  external int get length;
}

@JS('HTMLFormControlsCollection')
@staticInterop
class HTMLFormControlsCollection implements HTMLCollection {}

extension HTMLFormControlsCollectionExtension on HTMLFormControlsCollection {
  external JSAny? namedItem(String name);
}

@JS('RadioNodeList')
@staticInterop
class RadioNodeList implements NodeList {}

extension RadioNodeListExtension on RadioNodeList {
  external set value(String value);
  external String get value;
}

@JS('HTMLOptionsCollection')
@staticInterop
class HTMLOptionsCollection implements HTMLCollection {}

extension HTMLOptionsCollectionExtension on HTMLOptionsCollection {
  external JSVoid add(
    JSAny? element, [
    JSAny? before,
  ]);
  external JSVoid remove(int index);
  external set length(int value);
  external int get length;
  external set selectedIndex(int value);
  external int get selectedIndex;
}

@JS('DOMStringList')
@staticInterop
class DOMStringList implements JSObject {}

extension DOMStringListExtension on DOMStringList {
  external String? item(int index);
  external bool contains(String string);
  external int get length;
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
  external bool togglePopover([bool force]);
  external Element? get offsetParent;
  external int get offsetTop;
  external int get offsetLeft;
  external int get offsetWidth;
  external int get offsetHeight;
  external set editContext(EditContext? value);
  external EditContext? get editContext;
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
}

@JS('HTMLUnknownElement')
@staticInterop
class HTMLUnknownElement implements HTMLElement {}

@JS('HTMLOrSVGElement')
@staticInterop
class HTMLOrSVGElement implements JSObject {}

extension HTMLOrSVGElementExtension on HTMLOrSVGElement {
  external JSVoid focus([FocusOptions options]);
  external JSVoid blur();
  external DOMStringMap get dataset;
  external set nonce(String value);
  external String get nonce;
  external set autofocus(bool value);
  external bool get autofocus;
  external set tabIndex(int value);
  external int get tabIndex;
}

@JS('DOMStringMap')
@staticInterop
class DOMStringMap implements JSObject {}

@JS('HTMLHtmlElement')
@staticInterop
class HTMLHtmlElement implements HTMLElement {
  external factory HTMLHtmlElement();
}

extension HTMLHtmlElementExtension on HTMLHtmlElement {
  external set version(String value);
  external String get version;
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
  external set text(String value);
  external String get text;
}

@JS('HTMLBaseElement')
@staticInterop
class HTMLBaseElement implements HTMLElement {
  external factory HTMLBaseElement();
}

extension HTMLBaseElementExtension on HTMLBaseElement {
  external set href(String value);
  external String get href;
  external set target(String value);
  external String get target;
}

@JS('HTMLLinkElement')
@staticInterop
class HTMLLinkElement implements HTMLElement, LinkStyle {
  external factory HTMLLinkElement();
}

extension HTMLLinkElementExtension on HTMLLinkElement {
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
}

@JS('HTMLMetaElement')
@staticInterop
class HTMLMetaElement implements HTMLElement {
  external factory HTMLMetaElement();
}

extension HTMLMetaElementExtension on HTMLMetaElement {
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

@JS('HTMLStyleElement')
@staticInterop
class HTMLStyleElement implements HTMLElement, LinkStyle {
  external factory HTMLStyleElement();
}

extension HTMLStyleElementExtension on HTMLStyleElement {
  external set disabled(bool value);
  external bool get disabled;
  external set media(String value);
  external String get media;
  external DOMTokenList get blocking;
  external set type(String value);
  external String get type;
}

@JS('HTMLBodyElement')
@staticInterop
class HTMLBodyElement implements HTMLElement, WindowEventHandlers {
  external factory HTMLBodyElement();
}

extension HTMLBodyElementExtension on HTMLBodyElement {
  external set onorientationchange(EventHandler value);
  external EventHandler get onorientationchange;
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
}

@JS('HTMLHeadingElement')
@staticInterop
class HTMLHeadingElement implements HTMLElement {
  external factory HTMLHeadingElement();
}

extension HTMLHeadingElementExtension on HTMLHeadingElement {
  external set align(String value);
  external String get align;
}

@JS('HTMLParagraphElement')
@staticInterop
class HTMLParagraphElement implements HTMLElement {
  external factory HTMLParagraphElement();
}

extension HTMLParagraphElementExtension on HTMLParagraphElement {
  external set align(String value);
  external String get align;
}

@JS('HTMLHRElement')
@staticInterop
class HTMLHRElement implements HTMLElement {
  external factory HTMLHRElement();
}

extension HTMLHRElementExtension on HTMLHRElement {
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

@JS('HTMLPreElement')
@staticInterop
class HTMLPreElement implements HTMLElement {
  external factory HTMLPreElement();
}

extension HTMLPreElementExtension on HTMLPreElement {
  external set width(int value);
  external int get width;
}

@JS('HTMLQuoteElement')
@staticInterop
class HTMLQuoteElement implements HTMLElement {
  external factory HTMLQuoteElement();
}

extension HTMLQuoteElementExtension on HTMLQuoteElement {
  external set cite(String value);
  external String get cite;
}

@JS('HTMLOListElement')
@staticInterop
class HTMLOListElement implements HTMLElement {
  external factory HTMLOListElement();
}

extension HTMLOListElementExtension on HTMLOListElement {
  external set reversed(bool value);
  external bool get reversed;
  external set start(int value);
  external int get start;
  external set type(String value);
  external String get type;
  external set compact(bool value);
  external bool get compact;
}

@JS('HTMLUListElement')
@staticInterop
class HTMLUListElement implements HTMLElement {
  external factory HTMLUListElement();
}

extension HTMLUListElementExtension on HTMLUListElement {
  external set compact(bool value);
  external bool get compact;
  external set type(String value);
  external String get type;
}

@JS('HTMLMenuElement')
@staticInterop
class HTMLMenuElement implements HTMLElement {
  external factory HTMLMenuElement();
}

extension HTMLMenuElementExtension on HTMLMenuElement {
  external set compact(bool value);
  external bool get compact;
}

@JS('HTMLLIElement')
@staticInterop
class HTMLLIElement implements HTMLElement {
  external factory HTMLLIElement();
}

extension HTMLLIElementExtension on HTMLLIElement {
  external set value(int value);
  external int get value;
  external set type(String value);
  external String get type;
}

@JS('HTMLDListElement')
@staticInterop
class HTMLDListElement implements HTMLElement {
  external factory HTMLDListElement();
}

extension HTMLDListElementExtension on HTMLDListElement {
  external set compact(bool value);
  external bool get compact;
}

@JS('HTMLDivElement')
@staticInterop
class HTMLDivElement implements HTMLElement {
  external factory HTMLDivElement();
}

extension HTMLDivElementExtension on HTMLDivElement {
  external set align(String value);
  external String get align;
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
  external set attributionSourceId(int value);
  external int get attributionSourceId;
}

@JS('HTMLDataElement')
@staticInterop
class HTMLDataElement implements HTMLElement {
  external factory HTMLDataElement();
}

extension HTMLDataElementExtension on HTMLDataElement {
  external set value(String value);
  external String get value;
}

@JS('HTMLTimeElement')
@staticInterop
class HTMLTimeElement implements HTMLElement {
  external factory HTMLTimeElement();
}

extension HTMLTimeElementExtension on HTMLTimeElement {
  external set dateTime(String value);
  external String get dateTime;
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
  external set clear(String value);
  external String get clear;
}

@JS('HTMLHyperlinkElementUtils')
@staticInterop
class HTMLHyperlinkElementUtils implements JSObject {}

extension HTMLHyperlinkElementUtilsExtension on HTMLHyperlinkElementUtils {
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

@JS('HTMLModElement')
@staticInterop
class HTMLModElement implements HTMLElement {
  external factory HTMLModElement();
}

extension HTMLModElementExtension on HTMLModElement {
  external set cite(String value);
  external String get cite;
  external set dateTime(String value);
  external String get dateTime;
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

@JS('HTMLImageElement')
@staticInterop
class HTMLImageElement
    implements
        HTMLElement,
        HTMLAttributionSrcElementUtils,
        HTMLSharedStorageWritableElementUtils {
  external factory HTMLImageElement();
}

extension HTMLImageElementExtension on HTMLImageElement {
  external JSPromise decode();
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

@JS('HTMLIFrameElement')
@staticInterop
class HTMLIFrameElement
    implements HTMLElement, HTMLSharedStorageWritableElementUtils {
  external factory HTMLIFrameElement();
}

extension HTMLIFrameElementExtension on HTMLIFrameElement {
  external Document? getSVGDocument();
  external set csp(String value);
  external String get csp;
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
  external PermissionsPolicy get permissionsPolicy;
  external set privateToken(String value);
  external String get privateToken;
}

@JS('HTMLEmbedElement')
@staticInterop
class HTMLEmbedElement implements HTMLElement {
  external factory HTMLEmbedElement();
}

extension HTMLEmbedElementExtension on HTMLEmbedElement {
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

@JS('HTMLObjectElement')
@staticInterop
class HTMLObjectElement implements HTMLElement {
  external factory HTMLObjectElement();
}

extension HTMLObjectElementExtension on HTMLObjectElement {
  external Document? getSVGDocument();
  external bool checkValidity();
  external bool reportValidity();
  external JSVoid setCustomValidity(String error);
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

@JS('HTMLVideoElement')
@staticInterop
class HTMLVideoElement implements HTMLMediaElement {
  external factory HTMLVideoElement();
}

extension HTMLVideoElementExtension on HTMLVideoElement {
  external VideoPlaybackQuality getVideoPlaybackQuality();
  external JSPromise requestPictureInPicture();
  external int requestVideoFrameCallback(VideoFrameRequestCallback callback);
  external JSVoid cancelVideoFrameCallback(int handle);
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
  external set onenterpictureinpicture(EventHandler value);
  external EventHandler get onenterpictureinpicture;
  external set onleavepictureinpicture(EventHandler value);
  external EventHandler get onleavepictureinpicture;
  external set disablePictureInPicture(bool value);
  external bool get disablePictureInPicture;
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

  external static int get NONE;
  external static int get LOADING;
  external static int get LOADED;
  external static int get ERROR;
}

extension HTMLTrackElementExtension on HTMLTrackElement {
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

@JS('HTMLMediaElement')
@staticInterop
class HTMLMediaElement implements HTMLElement {
  external static int get NETWORK_EMPTY;
  external static int get NETWORK_IDLE;
  external static int get NETWORK_LOADING;
  external static int get NETWORK_NO_SOURCE;
  external static int get HAVE_NOTHING;
  external static int get HAVE_METADATA;
  external static int get HAVE_CURRENT_DATA;
  external static int get HAVE_FUTURE_DATA;
  external static int get HAVE_ENOUGH_DATA;
}

extension HTMLMediaElementExtension on HTMLMediaElement {
  external JSPromise setSinkId(String sinkId);
  external JSPromise setMediaKeys(MediaKeys? mediaKeys);
  external JSVoid load();
  external CanPlayTypeResult canPlayType(String type);
  external JSVoid fastSeek(num time);
  external JSObject getStartDate();
  external JSPromise play();
  external JSVoid pause();
  external TextTrack addTextTrack(
    TextTrackKind kind, [
    String label,
    String language,
  ]);
  external MediaStream captureStream();
  external String get sinkId;
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
  external RemotePlayback get remote;
  external set disableRemotePlayback(bool value);
  external bool get disableRemotePlayback;
}

@JS('MediaError')
@staticInterop
class MediaError implements JSObject {
  external static int get MEDIA_ERR_ABORTED;
  external static int get MEDIA_ERR_NETWORK;
  external static int get MEDIA_ERR_DECODE;
  external static int get MEDIA_ERR_SRC_NOT_SUPPORTED;
}

extension MediaErrorExtension on MediaError {
  external int get code;
  external String get message;
}

@JS('AudioTrackList')
@staticInterop
class AudioTrackList implements EventTarget {}

extension AudioTrackListExtension on AudioTrackList {
  external AudioTrack? getTrackById(String id);
  external int get length;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
  external set onaddtrack(EventHandler value);
  external EventHandler get onaddtrack;
  external set onremovetrack(EventHandler value);
  external EventHandler get onremovetrack;
}

@JS('AudioTrack')
@staticInterop
class AudioTrack implements JSObject {}

extension AudioTrackExtension on AudioTrack {
  external String get id;
  external String get kind;
  external String get label;
  external String get language;
  external set enabled(bool value);
  external bool get enabled;
  external SourceBuffer? get sourceBuffer;
}

@JS('VideoTrackList')
@staticInterop
class VideoTrackList implements EventTarget {}

extension VideoTrackListExtension on VideoTrackList {
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

@JS('VideoTrack')
@staticInterop
class VideoTrack implements JSObject {}

extension VideoTrackExtension on VideoTrack {
  external String get id;
  external String get kind;
  external String get label;
  external String get language;
  external set selected(bool value);
  external bool get selected;
  external SourceBuffer? get sourceBuffer;
}

@JS('TextTrackList')
@staticInterop
class TextTrackList implements EventTarget {}

extension TextTrackListExtension on TextTrackList {
  external TextTrack? getTrackById(String id);
  external int get length;
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

@JS('TextTrackCueList')
@staticInterop
class TextTrackCueList implements JSObject {}

extension TextTrackCueListExtension on TextTrackCueList {
  external TextTrackCue? getCueById(String id);
  external int get length;
}

@JS('TextTrackCue')
@staticInterop
class TextTrackCue implements EventTarget {}

extension TextTrackCueExtension on TextTrackCue {
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

@JS('TimeRanges')
@staticInterop
class TimeRanges implements JSObject {}

extension TimeRangesExtension on TimeRanges {
  external num start(int index);
  external num end(int index);
  external int get length;
}

@JS('TrackEvent')
@staticInterop
class TrackEvent implements Event {
  external factory TrackEvent(
    String type, [
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
  external set name(String value);
  external String get name;
  external HTMLCollection get areas;
}

@JS('HTMLAreaElement')
@staticInterop
class HTMLAreaElement implements HTMLElement, HTMLHyperlinkElementUtils {
  external factory HTMLAreaElement();
}

extension HTMLAreaElementExtension on HTMLAreaElement {
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
  external HTMLTableRowElement insertRow([int index]);
  external JSVoid deleteRow(int index);
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

@JS('HTMLTableCaptionElement')
@staticInterop
class HTMLTableCaptionElement implements HTMLElement {
  external factory HTMLTableCaptionElement();
}

extension HTMLTableCaptionElementExtension on HTMLTableCaptionElement {
  external set align(String value);
  external String get align;
}

@JS('HTMLTableColElement')
@staticInterop
class HTMLTableColElement implements HTMLElement {
  external factory HTMLTableColElement();
}

extension HTMLTableColElementExtension on HTMLTableColElement {
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

@JS('HTMLTableSectionElement')
@staticInterop
class HTMLTableSectionElement implements HTMLElement {
  external factory HTMLTableSectionElement();
}

extension HTMLTableSectionElementExtension on HTMLTableSectionElement {
  external HTMLTableRowElement insertRow([int index]);
  external JSVoid deleteRow(int index);
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

@JS('HTMLTableRowElement')
@staticInterop
class HTMLTableRowElement implements HTMLElement {
  external factory HTMLTableRowElement();
}

extension HTMLTableRowElementExtension on HTMLTableRowElement {
  external HTMLTableCellElement insertCell([int index]);
  external JSVoid deleteCell(int index);
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

@JS('HTMLTableCellElement')
@staticInterop
class HTMLTableCellElement implements HTMLElement {
  external factory HTMLTableCellElement();
}

extension HTMLTableCellElementExtension on HTMLTableCellElement {
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

@JS('HTMLFormElement')
@staticInterop
class HTMLFormElement implements HTMLElement {
  external factory HTMLFormElement();
}

extension HTMLFormElementExtension on HTMLFormElement {
  external JSVoid submit();
  external JSVoid requestSubmit([HTMLElement? submitter]);
  external JSVoid reset();
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

@JS('HTMLLabelElement')
@staticInterop
class HTMLLabelElement implements HTMLElement {
  external factory HTMLLabelElement();
}

extension HTMLLabelElementExtension on HTMLLabelElement {
  external HTMLFormElement? get form;
  external set htmlFor(String value);
  external String get htmlFor;
  external HTMLElement? get control;
}

@JS('HTMLInputElement')
@staticInterop
class HTMLInputElement implements HTMLElement, PopoverInvokerElement {
  external factory HTMLInputElement();
}

extension HTMLInputElementExtension on HTMLInputElement {
  external JSVoid stepUp([int n]);
  external JSVoid stepDown([int n]);
  external bool checkValidity();
  external bool reportValidity();
  external JSVoid setCustomValidity(String error);
  external JSVoid select();
  external JSVoid setRangeText(
    String replacement, [
    int start,
    int end,
    SelectionMode selectionMode,
  ]);
  external JSVoid setSelectionRange(
    int start,
    int end, [
    String direction,
  ]);
  external JSVoid showPicker();
  external set webkitdirectory(bool value);
  external bool get webkitdirectory;
  external JSArray get webkitEntries;
  external set capture(String value);
  external String get capture;
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
}

@JS('HTMLButtonElement')
@staticInterop
class HTMLButtonElement implements HTMLElement, PopoverInvokerElement {
  external factory HTMLButtonElement();
}

extension HTMLButtonElementExtension on HTMLButtonElement {
  external bool checkValidity();
  external bool reportValidity();
  external JSVoid setCustomValidity(String error);
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
}

@JS('HTMLSelectElement')
@staticInterop
class HTMLSelectElement implements HTMLElement {
  external factory HTMLSelectElement();
}

extension HTMLSelectElementExtension on HTMLSelectElement {
  external HTMLOptionElement? item(int index);
  external HTMLOptionElement? namedItem(String name);
  external JSVoid add(
    JSAny? element, [
    JSAny? before,
  ]);
  external JSVoid remove([int index]);
  external bool checkValidity();
  external bool reportValidity();
  external JSVoid setCustomValidity(String error);
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
  external set disabled(bool value);
  external bool get disabled;
  external set label(String value);
  external String get label;
}

@JS('HTMLOptionElement')
@staticInterop
class HTMLOptionElement implements HTMLElement {
  external factory HTMLOptionElement();
}

extension HTMLOptionElementExtension on HTMLOptionElement {
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

@JS('HTMLTextAreaElement')
@staticInterop
class HTMLTextAreaElement implements HTMLElement {
  external factory HTMLTextAreaElement();
}

extension HTMLTextAreaElementExtension on HTMLTextAreaElement {
  external bool checkValidity();
  external bool reportValidity();
  external JSVoid setCustomValidity(String error);
  external JSVoid select();
  external JSVoid setRangeText(
    String replacement, [
    int start,
    int end,
    SelectionMode selectionMode,
  ]);
  external JSVoid setSelectionRange(
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

@JS('HTMLOutputElement')
@staticInterop
class HTMLOutputElement implements HTMLElement {
  external factory HTMLOutputElement();
}

extension HTMLOutputElementExtension on HTMLOutputElement {
  external bool checkValidity();
  external bool reportValidity();
  external JSVoid setCustomValidity(String error);
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

@JS('HTMLProgressElement')
@staticInterop
class HTMLProgressElement implements HTMLElement {
  external factory HTMLProgressElement();
}

extension HTMLProgressElementExtension on HTMLProgressElement {
  external set value(num value);
  external num get value;
  external set max(num value);
  external num get max;
  external num get position;
  external NodeList get labels;
}

@JS('HTMLMeterElement')
@staticInterop
class HTMLMeterElement implements HTMLElement {
  external factory HTMLMeterElement();
}

extension HTMLMeterElementExtension on HTMLMeterElement {
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

@JS('HTMLFieldSetElement')
@staticInterop
class HTMLFieldSetElement implements HTMLElement {
  external factory HTMLFieldSetElement();
}

extension HTMLFieldSetElementExtension on HTMLFieldSetElement {
  external bool checkValidity();
  external bool reportValidity();
  external JSVoid setCustomValidity(String error);
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

@JS('HTMLLegendElement')
@staticInterop
class HTMLLegendElement implements HTMLElement {
  external factory HTMLLegendElement();
}

extension HTMLLegendElementExtension on HTMLLegendElement {
  external HTMLFormElement? get form;
  external set align(String value);
  external String get align;
}

@JS('ValidityState')
@staticInterop
class ValidityState implements JSObject {}

extension ValidityStateExtension on ValidityState {
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

@JS('SubmitEvent')
@staticInterop
class SubmitEvent implements Event {
  external factory SubmitEvent(
    String type, [
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
    String type,
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
  external set name(String value);
  external String get name;
  external set open(bool value);
  external bool get open;
}

@JS('HTMLDialogElement')
@staticInterop
class HTMLDialogElement implements HTMLElement {
  external factory HTMLDialogElement();
}

extension HTMLDialogElementExtension on HTMLDialogElement {
  external JSVoid show();
  external JSVoid showModal();
  external JSVoid close([String returnValue]);
  external set open(bool value);
  external bool get open;
  external set returnValue(String value);
  external String get returnValue;
}

@JS('HTMLScriptElement')
@staticInterop
class HTMLScriptElement implements HTMLElement, HTMLAttributionSrcElementUtils {
  external factory HTMLScriptElement();

  external static bool supports(String type);
}

extension HTMLScriptElementExtension on HTMLScriptElement {
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
  external JSVoid assign(JSAny? nodes);
  external set name(String value);
  external String get name;
}

@JS()
@staticInterop
@anonymous
class AssignedNodesOptions implements JSObject {
  external factory AssignedNodesOptions({bool flatten});
}

extension AssignedNodesOptionsExtension on AssignedNodesOptions {
  external set flatten(bool value);
  external bool get flatten;
}

@JS('HTMLCanvasElement')
@staticInterop
class HTMLCanvasElement implements HTMLElement {
  external factory HTMLCanvasElement();
}

extension HTMLCanvasElementExtension on HTMLCanvasElement {
  external RenderingContext? getContext(
    String contextId, [
    JSAny? options,
  ]);
  external String toDataURL([
    String type,
    JSAny? quality,
  ]);
  external JSVoid toBlob(
    BlobCallback callback, [
    String type,
    JSAny? quality,
  ]);
  external OffscreenCanvas transferControlToOffscreen();
  external MediaStream captureStream([num frameRequestRate]);
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
}

@JS()
@staticInterop
@anonymous
class CanvasRenderingContext2DSettings implements JSObject {
  external factory CanvasRenderingContext2DSettings({
    bool alpha,
    bool desynchronized,
    PredefinedColorSpace colorSpace,
    bool willReadFrequently,
  });
}

extension CanvasRenderingContext2DSettingsExtension
    on CanvasRenderingContext2DSettings {
  external set alpha(bool value);
  external bool get alpha;
  external set desynchronized(bool value);
  external bool get desynchronized;
  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
  external set willReadFrequently(bool value);
  external bool get willReadFrequently;
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
class CanvasState implements JSObject {}

extension CanvasStateExtension on CanvasState {
  external JSVoid save();
  external JSVoid restore();
  external JSVoid reset();
  external bool isContextLost();
}

@JS('CanvasTransform')
@staticInterop
class CanvasTransform implements JSObject {}

extension CanvasTransformExtension on CanvasTransform {
  external JSVoid scale(
    num x,
    num y,
  );
  external JSVoid rotate(num angle);
  external JSVoid translate(
    num x,
    num y,
  );
  external JSVoid transform(
    num a,
    num b,
    num c,
    num d,
    num e,
    num f,
  );
  external DOMMatrix getTransform();
  external JSVoid setTransform([
    JSAny? aOrTransform,
    num b,
    num c,
    num d,
    num e,
    num f,
  ]);
  external JSVoid resetTransform();
}

@JS('CanvasCompositing')
@staticInterop
class CanvasCompositing implements JSObject {}

extension CanvasCompositingExtension on CanvasCompositing {
  external set globalAlpha(num value);
  external num get globalAlpha;
  external set globalCompositeOperation(String value);
  external String get globalCompositeOperation;
}

@JS('CanvasImageSmoothing')
@staticInterop
class CanvasImageSmoothing implements JSObject {}

extension CanvasImageSmoothingExtension on CanvasImageSmoothing {
  external set imageSmoothingEnabled(bool value);
  external bool get imageSmoothingEnabled;
  external set imageSmoothingQuality(ImageSmoothingQuality value);
  external ImageSmoothingQuality get imageSmoothingQuality;
}

@JS('CanvasFillStrokeStyles')
@staticInterop
class CanvasFillStrokeStyles implements JSObject {}

extension CanvasFillStrokeStylesExtension on CanvasFillStrokeStyles {
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
  external set strokeStyle(JSAny? value);
  external JSAny? get strokeStyle;
  external set fillStyle(JSAny? value);
  external JSAny? get fillStyle;
}

@JS('CanvasShadowStyles')
@staticInterop
class CanvasShadowStyles implements JSObject {}

extension CanvasShadowStylesExtension on CanvasShadowStyles {
  external set shadowOffsetX(num value);
  external num get shadowOffsetX;
  external set shadowOffsetY(num value);
  external num get shadowOffsetY;
  external set shadowBlur(num value);
  external num get shadowBlur;
  external set shadowColor(String value);
  external String get shadowColor;
}

@JS('CanvasFilters')
@staticInterop
class CanvasFilters implements JSObject {}

extension CanvasFiltersExtension on CanvasFilters {
  external set filter(String value);
  external String get filter;
}

@JS('CanvasRect')
@staticInterop
class CanvasRect implements JSObject {}

extension CanvasRectExtension on CanvasRect {
  external JSVoid clearRect(
    num x,
    num y,
    num w,
    num h,
  );
  external JSVoid fillRect(
    num x,
    num y,
    num w,
    num h,
  );
  external JSVoid strokeRect(
    num x,
    num y,
    num w,
    num h,
  );
}

@JS('CanvasDrawPath')
@staticInterop
class CanvasDrawPath implements JSObject {}

extension CanvasDrawPathExtension on CanvasDrawPath {
  external JSVoid beginPath();
  external JSVoid fill([
    JSAny? fillRuleOrPath,
    CanvasFillRule fillRule,
  ]);
  external JSVoid stroke([Path2D path]);
  external JSVoid clip([
    JSAny? fillRuleOrPath,
    CanvasFillRule fillRule,
  ]);
  external bool isPointInPath(
    JSAny? pathOrX,
    num xOrY, [
    JSAny? fillRuleOrY,
    CanvasFillRule fillRule,
  ]);
  external bool isPointInStroke(
    JSAny? pathOrX,
    num xOrY, [
    num y,
  ]);
}

@JS('CanvasUserInterface')
@staticInterop
class CanvasUserInterface implements JSObject {}

extension CanvasUserInterfaceExtension on CanvasUserInterface {
  external JSVoid drawFocusIfNeeded(
    JSAny? elementOrPath, [
    Element element,
  ]);
  external JSVoid scrollPathIntoView([Path2D path]);
}

@JS('CanvasText')
@staticInterop
class CanvasText implements JSObject {}

extension CanvasTextExtension on CanvasText {
  external JSVoid fillText(
    String text,
    num x,
    num y, [
    num maxWidth,
  ]);
  external JSVoid strokeText(
    String text,
    num x,
    num y, [
    num maxWidth,
  ]);
  external TextMetrics measureText(String text);
}

@JS('CanvasDrawImage')
@staticInterop
class CanvasDrawImage implements JSObject {}

extension CanvasDrawImageExtension on CanvasDrawImage {
  external JSVoid drawImage(
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
}

@JS('CanvasImageData')
@staticInterop
class CanvasImageData implements JSObject {}

extension CanvasImageDataExtension on CanvasImageData {
  external ImageData createImageData(
    JSAny? imagedataOrSw, [
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
  external JSVoid putImageData(
    ImageData imagedata,
    int dx,
    int dy, [
    int dirtyX,
    int dirtyY,
    int dirtyWidth,
    int dirtyHeight,
  ]);
}

@JS('CanvasPathDrawingStyles')
@staticInterop
class CanvasPathDrawingStyles implements JSObject {}

extension CanvasPathDrawingStylesExtension on CanvasPathDrawingStyles {
  external JSVoid setLineDash(JSArray segments);
  external JSArray getLineDash();
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
}

@JS('CanvasTextDrawingStyles')
@staticInterop
class CanvasTextDrawingStyles implements JSObject {}

extension CanvasTextDrawingStylesExtension on CanvasTextDrawingStyles {
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

@JS('CanvasPath')
@staticInterop
class CanvasPath implements JSObject {}

extension CanvasPathExtension on CanvasPath {
  external JSVoid closePath();
  external JSVoid moveTo(
    num x,
    num y,
  );
  external JSVoid lineTo(
    num x,
    num y,
  );
  external JSVoid quadraticCurveTo(
    num cpx,
    num cpy,
    num x,
    num y,
  );
  external JSVoid bezierCurveTo(
    num cp1x,
    num cp1y,
    num cp2x,
    num cp2y,
    num x,
    num y,
  );
  external JSVoid arcTo(
    num x1,
    num y1,
    num x2,
    num y2,
    num radius,
  );
  external JSVoid rect(
    num x,
    num y,
    num w,
    num h,
  );
  external JSVoid roundRect(
    num x,
    num y,
    num w,
    num h, [
    JSAny? radii,
  ]);
  external JSVoid arc(
    num x,
    num y,
    num radius,
    num startAngle,
    num endAngle, [
    bool counterclockwise,
  ]);
  external JSVoid ellipse(
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

@JS('CanvasGradient')
@staticInterop
class CanvasGradient implements JSObject {}

extension CanvasGradientExtension on CanvasGradient {
  external JSVoid addColorStop(
    num offset,
    String color,
  );
}

@JS('CanvasPattern')
@staticInterop
class CanvasPattern implements JSObject {}

extension CanvasPatternExtension on CanvasPattern {
  external JSVoid setTransform([DOMMatrix2DInit transform]);
}

@JS('TextMetrics')
@staticInterop
class TextMetrics implements JSObject {}

extension TextMetricsExtension on TextMetrics {
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

@JS()
@staticInterop
@anonymous
class ImageDataSettings implements JSObject {
  external factory ImageDataSettings({PredefinedColorSpace colorSpace});
}

extension ImageDataSettingsExtension on ImageDataSettings {
  external set colorSpace(PredefinedColorSpace value);
  external PredefinedColorSpace get colorSpace;
}

@JS('ImageData')
@staticInterop
class ImageData implements JSObject {
  external factory ImageData(
    JSAny? dataOrSw,
    int shOrSw, [
    JSAny? settingsOrSh,
    ImageDataSettings settings,
  ]);
}

extension ImageDataExtension on ImageData {
  external int get width;
  external int get height;
  external JSUint8ClampedArray get data;
  external PredefinedColorSpace get colorSpace;
}

@JS('Path2D')
@staticInterop
class Path2D implements CanvasPath {
  external factory Path2D([JSAny? path]);
}

extension Path2DExtension on Path2D {
  external JSVoid addPath(
    Path2D path, [
    DOMMatrix2DInit transform,
  ]);
}

@JS('ImageBitmapRenderingContext')
@staticInterop
class ImageBitmapRenderingContext implements JSObject {}

extension ImageBitmapRenderingContextExtension on ImageBitmapRenderingContext {
  external JSVoid transferFromImageBitmap(ImageBitmap? bitmap);
  external JSAny? get canvas;
}

@JS()
@staticInterop
@anonymous
class ImageBitmapRenderingContextSettings implements JSObject {
  external factory ImageBitmapRenderingContextSettings({bool alpha});
}

extension ImageBitmapRenderingContextSettingsExtension
    on ImageBitmapRenderingContextSettings {
  external set alpha(bool value);
  external bool get alpha;
}

@JS()
@staticInterop
@anonymous
class ImageEncodeOptions implements JSObject {
  external factory ImageEncodeOptions({
    String type,
    num quality,
  });
}

extension ImageEncodeOptionsExtension on ImageEncodeOptions {
  external set type(String value);
  external String get type;
  external set quality(num value);
  external num get quality;
}

@JS('OffscreenCanvas')
@staticInterop
class OffscreenCanvas implements EventTarget {
  external factory OffscreenCanvas(
    int width,
    int height,
  );
}

extension OffscreenCanvasExtension on OffscreenCanvas {
  external OffscreenRenderingContext? getContext(
    OffscreenRenderingContextId contextId, [
    JSAny? options,
  ]);
  external ImageBitmap transferToImageBitmap();
  external JSPromise convertToBlob([ImageEncodeOptions options]);
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
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
class CustomElementRegistry implements JSObject {}

extension CustomElementRegistryExtension on CustomElementRegistry {
  external JSVoid define(
    String name,
    CustomElementConstructor constructor, [
    ElementDefinitionOptions options,
  ]);
  external JSAny? get(String name);
  external String? getName(CustomElementConstructor constructor);
  external JSPromise whenDefined(String name);
  external JSVoid upgrade(Node root);
}

@JS()
@staticInterop
@anonymous
class ElementDefinitionOptions implements JSObject {
  external factory ElementDefinitionOptions({String extends_});
}

extension ElementDefinitionOptionsExtension on ElementDefinitionOptions {
  @JS('extends')
  external set extends_(String value);
  @JS('extends')
  external String get extends_;
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
    String message,
    HTMLElement anchor,
  ]);
  external bool checkValidity();
  external bool reportValidity();
  external CustomStateSet get states;
  external ShadowRoot? get shadowRoot;
  external HTMLFormElement? get form;
  external bool get willValidate;
  external ValidityState get validity;
  external String get validationMessage;
  external NodeList get labels;
}

@JS()
@staticInterop
@anonymous
class ValidityStateFlags implements JSObject {
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
}

extension ValidityStateFlagsExtension on ValidityStateFlags {
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

@JS('VisibilityStateEntry')
@staticInterop
class VisibilityStateEntry implements PerformanceEntry {}

extension VisibilityStateEntryExtension on VisibilityStateEntry {
  external String get name;
  external String get entryType;
  external DOMHighResTimeStamp get startTime;
  external int get duration;
}

@JS('UserActivation')
@staticInterop
class UserActivation implements JSObject {}

extension UserActivationExtension on UserActivation {
  external bool get hasBeenActive;
  external bool get isActive;
}

@JS('ToggleEvent')
@staticInterop
class ToggleEvent implements Event {
  external factory ToggleEvent(
    String type, [
    ToggleEventInit eventInitDict,
  ]);
}

extension ToggleEventExtension on ToggleEvent {
  external String get oldState;
  external String get newState;
}

@JS()
@staticInterop
@anonymous
class ToggleEventInit implements EventInit {
  external factory ToggleEventInit({
    String oldState,
    String newState,
  });
}

extension ToggleEventInitExtension on ToggleEventInit {
  external set oldState(String value);
  external String get oldState;
  external set newState(String value);
  external String get newState;
}

@JS()
@staticInterop
@anonymous
class FocusOptions implements JSObject {
  external factory FocusOptions({
    bool preventScroll,
    bool focusVisible,
  });
}

extension FocusOptionsExtension on FocusOptions {
  external set preventScroll(bool value);
  external bool get preventScroll;
  external set focusVisible(bool value);
  external bool get focusVisible;
}

@JS('ElementContentEditable')
@staticInterop
class ElementContentEditable implements JSObject {}

extension ElementContentEditableExtension on ElementContentEditable {
  external set contentEditable(String value);
  external String get contentEditable;
  external set enterKeyHint(String value);
  external String get enterKeyHint;
  external bool get isContentEditable;
  external set inputMode(String value);
  external String get inputMode;
  external set virtualKeyboardPolicy(String value);
  external String get virtualKeyboardPolicy;
}

@JS('DataTransfer')
@staticInterop
class DataTransfer implements JSObject {
  external factory DataTransfer();
}

extension DataTransferExtension on DataTransfer {
  external JSVoid setDragImage(
    Element image,
    int x,
    int y,
  );
  external String getData(String format);
  external JSVoid setData(
    String format,
    String data,
  );
  external JSVoid clearData([String format]);
  external set dropEffect(String value);
  external String get dropEffect;
  external set effectAllowed(String value);
  external String get effectAllowed;
  external DataTransferItemList get items;
  external JSArray get types;
  external FileList get files;
}

@JS('DataTransferItemList')
@staticInterop
class DataTransferItemList implements JSObject {}

extension DataTransferItemListExtension on DataTransferItemList {
  external DataTransferItem? add(
    JSAny? data, [
    String type,
  ]);
  external JSVoid remove(int index);
  external JSVoid clear();
  external int get length;
}

@JS('DataTransferItem')
@staticInterop
class DataTransferItem implements JSObject {}

extension DataTransferItemExtension on DataTransferItem {
  external FileSystemEntry? webkitGetAsEntry();
  external JSPromise getAsFileSystemHandle();
  external JSVoid getAsString(FunctionStringCallback? callback);
  external File? getAsFile();
  external String get kind;
  external String get type;
}

@JS('DragEvent')
@staticInterop
class DragEvent implements MouseEvent {
  external factory DragEvent(
    String type, [
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
class PopoverInvokerElement implements JSObject {}

extension PopoverInvokerElementExtension on PopoverInvokerElement {
  external set popoverTargetElement(Element? value);
  external Element? get popoverTargetElement;
  external set popoverTargetAction(String value);
  external String get popoverTargetAction;
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
  external MediaQueryList matchMedia(String query);
  external JSVoid moveTo(
    int x,
    int y,
  );
  external JSVoid moveBy(
    int x,
    int y,
  );
  external JSVoid resizeTo(
    int width,
    int height,
  );
  external JSVoid resizeBy(
    int x,
    int y,
  );
  external JSVoid scroll([
    JSAny? optionsOrX,
    num y,
  ]);
  external JSVoid scrollTo([
    JSAny? optionsOrX,
    num y,
  ]);
  external JSVoid scrollBy([
    JSAny? optionsOrX,
    num y,
  ]);
  external CSSStyleDeclaration getComputedStyle(
    Element elt, [
    String? pseudoElt,
  ]);
  external JSPromise getDigitalGoodsService(String serviceProvider);
  external JSPromise showOpenFilePicker([OpenFilePickerOptions options]);
  external JSPromise showSaveFilePicker([SaveFilePickerOptions options]);
  external JSPromise showDirectoryPicker([DirectoryPickerOptions options]);
  external JSVoid close();
  external JSVoid stop();
  external JSVoid focus();
  external JSVoid blur();
  external Window? open([
    String url,
    String target,
    String features,
  ]);
  external JSVoid alert([String message]);
  external bool confirm([String message]);
  external String? prompt([
    String message,
    String default_,
  ]);
  external JSVoid print();
  external JSVoid postMessage(
    JSAny? message, [
    JSAny? optionsOrTargetOrigin,
    JSArray transfer,
  ]);
  external JSVoid captureEvents();
  external JSVoid releaseEvents();
  external JSPromise queryLocalFonts([QueryOptions options]);
  external int requestIdleCallback(
    IdleRequestCallback callback, [
    IdleRequestOptions options,
  ]);
  external JSVoid cancelIdleCallback(int handle);
  external Selection? getSelection();
  external JSPromise getScreenDetails();
  external int get orientation;
  external set onorientationchange(EventHandler value);
  external EventHandler get onorientationchange;
  external CookieStore get cookieStore;
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
  external DocumentPictureInPicture get documentPictureInPicture;
  external JSAny? get event;
  external Fence? get fence;
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
  external WindowSharedStorage? get sharedStorage;
  external SpeechSynthesis get speechSynthesis;
  external LaunchQueue get launchQueue;
}

@JS()
@staticInterop
@anonymous
class WindowPostMessageOptions implements StructuredSerializeOptions {
  external factory WindowPostMessageOptions({String targetOrigin});
}

extension WindowPostMessageOptionsExtension on WindowPostMessageOptions {
  external set targetOrigin(String value);
  external String get targetOrigin;
}

@JS('BarProp')
@staticInterop
class BarProp implements JSObject {}

extension BarPropExtension on BarProp {
  external bool get visible;
}

@JS('Location')
@staticInterop
class Location implements JSObject {}

extension LocationExtension on Location {
  external JSVoid assign(String url);
  external JSVoid replace(String url);
  external JSVoid reload();
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

@JS('History')
@staticInterop
class History implements JSObject {}

extension HistoryExtension on History {
  external JSVoid go([int delta]);
  external JSVoid back();
  external JSVoid forward();
  external JSVoid pushState(
    JSAny? data,
    String unused, [
    String? url,
  ]);
  external JSVoid replaceState(
    JSAny? data,
    String unused, [
    String? url,
  ]);
  external int get length;
  external set scrollRestoration(ScrollRestoration value);
  external ScrollRestoration get scrollRestoration;
  external JSAny? get state;
}

@JS('Navigation')
@staticInterop
class Navigation implements EventTarget {}

extension NavigationExtension on Navigation {
  external JSArray entries();
  external JSVoid updateCurrentEntry(
      NavigationUpdateCurrentEntryOptions options);
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

@JS()
@staticInterop
@anonymous
class NavigationUpdateCurrentEntryOptions implements JSObject {
  external factory NavigationUpdateCurrentEntryOptions({required JSAny? state});
}

extension NavigationUpdateCurrentEntryOptionsExtension
    on NavigationUpdateCurrentEntryOptions {
  external set state(JSAny? value);
  external JSAny? get state;
}

@JS()
@staticInterop
@anonymous
class NavigationOptions implements JSObject {
  external factory NavigationOptions({JSAny? info});
}

extension NavigationOptionsExtension on NavigationOptions {
  external set info(JSAny? value);
  external JSAny? get info;
}

@JS()
@staticInterop
@anonymous
class NavigationNavigateOptions implements NavigationOptions {
  external factory NavigationNavigateOptions({
    JSAny? state,
    NavigationHistoryBehavior history,
  });
}

extension NavigationNavigateOptionsExtension on NavigationNavigateOptions {
  external set state(JSAny? value);
  external JSAny? get state;
  external set history(NavigationHistoryBehavior value);
  external NavigationHistoryBehavior get history;
}

@JS()
@staticInterop
@anonymous
class NavigationReloadOptions implements NavigationOptions {
  external factory NavigationReloadOptions({JSAny? state});
}

extension NavigationReloadOptionsExtension on NavigationReloadOptions {
  external set state(JSAny? value);
  external JSAny? get state;
}

@JS()
@staticInterop
@anonymous
class NavigationResult implements JSObject {
  external factory NavigationResult({
    JSPromise committed,
    JSPromise finished,
  });
}

extension NavigationResultExtension on NavigationResult {
  external set committed(JSPromise value);
  external JSPromise get committed;
  external set finished(JSPromise value);
  external JSPromise get finished;
}

@JS('NavigationHistoryEntry')
@staticInterop
class NavigationHistoryEntry implements EventTarget {}

extension NavigationHistoryEntryExtension on NavigationHistoryEntry {
  external JSAny? getState();
  external String? get url;
  external String get key;
  external String get id;
  external int get index;
  external bool get sameDocument;
  external set ondispose(EventHandler value);
  external EventHandler get ondispose;
}

@JS('NavigationTransition')
@staticInterop
class NavigationTransition implements JSObject {}

extension NavigationTransitionExtension on NavigationTransition {
  external NavigationType get navigationType;
  external NavigationHistoryEntry get from;
  external JSPromise get finished;
}

@JS('NavigateEvent')
@staticInterop
class NavigateEvent implements Event {
  external factory NavigateEvent(
    String type,
    NavigateEventInit eventInitDict,
  );
}

extension NavigateEventExtension on NavigateEvent {
  external JSVoid intercept([NavigationInterceptOptions options]);
  external JSVoid scroll();
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

@JS()
@staticInterop
@anonymous
class NavigateEventInit implements EventInit {
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
}

extension NavigateEventInitExtension on NavigateEventInit {
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

@JS()
@staticInterop
@anonymous
class NavigationInterceptOptions implements JSObject {
  external factory NavigationInterceptOptions({
    NavigationInterceptHandler handler,
    NavigationFocusReset focusReset,
    NavigationScrollBehavior scroll,
  });
}

extension NavigationInterceptOptionsExtension on NavigationInterceptOptions {
  external set handler(NavigationInterceptHandler value);
  external NavigationInterceptHandler get handler;
  external set focusReset(NavigationFocusReset value);
  external NavigationFocusReset get focusReset;
  external set scroll(NavigationScrollBehavior value);
  external NavigationScrollBehavior get scroll;
}

@JS('NavigationDestination')
@staticInterop
class NavigationDestination implements JSObject {}

extension NavigationDestinationExtension on NavigationDestination {
  external JSAny? getState();
  external String get url;
  external String get key;
  external String get id;
  external int get index;
  external bool get sameDocument;
}

@JS('NavigationCurrentEntryChangeEvent')
@staticInterop
class NavigationCurrentEntryChangeEvent implements Event {
  external factory NavigationCurrentEntryChangeEvent(
    String type,
    NavigationCurrentEntryChangeEventInit eventInitDict,
  );
}

extension NavigationCurrentEntryChangeEventExtension
    on NavigationCurrentEntryChangeEvent {
  external NavigationType? get navigationType;
  external NavigationHistoryEntry get from;
}

@JS()
@staticInterop
@anonymous
class NavigationCurrentEntryChangeEventInit implements EventInit {
  external factory NavigationCurrentEntryChangeEventInit({
    NavigationType? navigationType,
    required NavigationHistoryEntry from,
  });
}

extension NavigationCurrentEntryChangeEventInitExtension
    on NavigationCurrentEntryChangeEventInit {
  external set navigationType(NavigationType? value);
  external NavigationType? get navigationType;
  external set from(NavigationHistoryEntry value);
  external NavigationHistoryEntry get from;
}

@JS('PopStateEvent')
@staticInterop
class PopStateEvent implements Event {
  external factory PopStateEvent(
    String type, [
    PopStateEventInit eventInitDict,
  ]);
}

extension PopStateEventExtension on PopStateEvent {
  external JSAny? get state;
  external bool get hasUAVisualTransition;
}

@JS()
@staticInterop
@anonymous
class PopStateEventInit implements EventInit {
  external factory PopStateEventInit({
    JSAny? state,
    bool hasUAVisualTransition,
  });
}

extension PopStateEventInitExtension on PopStateEventInit {
  external set state(JSAny? value);
  external JSAny? get state;
  external set hasUAVisualTransition(bool value);
  external bool get hasUAVisualTransition;
}

@JS('HashChangeEvent')
@staticInterop
class HashChangeEvent implements Event {
  external factory HashChangeEvent(
    String type, [
    HashChangeEventInit eventInitDict,
  ]);
}

extension HashChangeEventExtension on HashChangeEvent {
  external String get oldURL;
  external String get newURL;
}

@JS()
@staticInterop
@anonymous
class HashChangeEventInit implements EventInit {
  external factory HashChangeEventInit({
    String oldURL,
    String newURL,
  });
}

extension HashChangeEventInitExtension on HashChangeEventInit {
  external set oldURL(String value);
  external String get oldURL;
  external set newURL(String value);
  external String get newURL;
}

@JS('PageTransitionEvent')
@staticInterop
class PageTransitionEvent implements Event {
  external factory PageTransitionEvent(
    String type, [
    PageTransitionEventInit eventInitDict,
  ]);
}

extension PageTransitionEventExtension on PageTransitionEvent {
  external bool get persisted;
}

@JS()
@staticInterop
@anonymous
class PageTransitionEventInit implements EventInit {
  external factory PageTransitionEventInit({bool persisted});
}

extension PageTransitionEventInitExtension on PageTransitionEventInit {
  external set persisted(bool value);
  external bool get persisted;
}

@JS('BeforeUnloadEvent')
@staticInterop
class BeforeUnloadEvent implements Event {}

extension BeforeUnloadEventExtension on BeforeUnloadEvent {
  external set returnValue(String value);
  external String get returnValue;
}

@JS('ErrorEvent')
@staticInterop
class ErrorEvent implements Event {
  external factory ErrorEvent(
    String type, [
    ErrorEventInit eventInitDict,
  ]);
}

extension ErrorEventExtension on ErrorEvent {
  external String get message;
  external String get filename;
  external int get lineno;
  external int get colno;
  external JSAny? get error;
}

@JS()
@staticInterop
@anonymous
class ErrorEventInit implements EventInit {
  external factory ErrorEventInit({
    String message,
    String filename,
    int lineno,
    int colno,
    JSAny? error,
  });
}

extension ErrorEventInitExtension on ErrorEventInit {
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

@JS('PromiseRejectionEvent')
@staticInterop
class PromiseRejectionEvent implements Event {
  external factory PromiseRejectionEvent(
    String type,
    PromiseRejectionEventInit eventInitDict,
  );
}

extension PromiseRejectionEventExtension on PromiseRejectionEvent {
  external JSPromise get promise;
  external JSAny? get reason;
}

@JS()
@staticInterop
@anonymous
class PromiseRejectionEventInit implements EventInit {
  external factory PromiseRejectionEventInit({
    required JSPromise promise,
    JSAny? reason,
  });
}

extension PromiseRejectionEventInitExtension on PromiseRejectionEventInit {
  external set promise(JSPromise value);
  external JSPromise get promise;
  external set reason(JSAny? value);
  external JSAny? get reason;
}

@JS('GlobalEventHandlers')
@staticInterop
class GlobalEventHandlers implements JSObject {}

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
class WindowEventHandlers implements JSObject {}

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
class WindowOrWorkerGlobalScope implements JSObject {}

extension WindowOrWorkerGlobalScopeExtension on WindowOrWorkerGlobalScope {
  external JSPromise fetch(
    RequestInfo input, [
    RequestInit init,
  ]);
  external JSVoid reportError(JSAny? e);
  external String btoa(String data);
  external String atob(String data);
  external int setTimeout(
    TimerHandler handler,
    JSAny? arguments, [
    int timeout,
  ]);
  external JSVoid clearTimeout([int id]);
  external int setInterval(
    TimerHandler handler,
    JSAny? arguments, [
    int timeout,
  ]);
  external JSVoid clearInterval([int id]);
  external JSVoid queueMicrotask(VoidFunction callback);
  external JSPromise createImageBitmap(
    ImageBitmapSource image, [
    JSAny? optionsOrSx,
    int sy,
    int sw,
    int sh,
    ImageBitmapOptions options,
  ]);
  external JSAny? structuredClone(
    JSAny? value, [
    StructuredSerializeOptions options,
  ]);
  external IDBFactory get indexedDB;
  external Crypto get crypto;
  external Performance get performance;
  external String get origin;
  external bool get isSecureContext;
  external bool get crossOriginIsolated;
  external Scheduler get scheduler;
  external CacheStorage get caches;
  external TrustedTypePolicyFactory get trustedTypes;
}

@JS('DOMParser')
@staticInterop
class DOMParser implements JSObject {
  external factory DOMParser();
}

extension DOMParserExtension on DOMParser {
  external Document parseFromString(
    String string,
    DOMParserSupportedType type,
  );
}

@JS('Navigator')
@staticInterop
class Navigator
    implements
        NavigatorBadge,
        NavigatorDeviceMemory,
        NavigatorID,
        NavigatorLanguage,
        NavigatorOnLine,
        NavigatorContentUtils,
        NavigatorCookies,
        NavigatorPlugins,
        NavigatorConcurrentHardware,
        NavigatorNetworkInformation,
        NavigatorStorageBuckets,
        NavigatorStorage,
        NavigatorUA,
        NavigatorLocks,
        NavigatorAutomationInformation,
        NavigatorGPU,
        NavigatorML {}

extension NavigatorExtension on Navigator {
  external AutoplayPolicy getAutoplayPolicy(JSAny? contextOrElementOrType);
  external JSPromise getBattery();
  external bool sendBeacon(
    String url, [
    BodyInit? data,
  ]);
  external JSPromise requestMediaKeySystemAccess(
    String keySystem,
    JSArray supportedConfigurations,
  );
  external JSPromise deprecatedReplaceInURN(
    UrnOrConfig urnOrConfig,
    JSAny? replacements,
  );
  external JSArray getGamepads();
  external JSPromise getInstalledRelatedApps();
  external JSVoid getUserMedia(
    MediaStreamConstraints constraints,
    NavigatorUserMediaSuccessCallback successCallback,
    NavigatorUserMediaErrorCallback errorCallback,
  );
  external JSPromise joinAdInterestGroup(AuctionAdInterestGroup group);
  external JSPromise leaveAdInterestGroup([AuctionAdInterestGroupKey group]);
  external JSPromise runAdAuction(AuctionAdConfig config);
  external JSVoid updateAdInterestGroups();
  external bool vibrate(VibratePattern pattern);
  external JSPromise share([ShareData data]);
  external bool canShare([ShareData data]);
  external JSPromise requestMIDIAccess([MIDIOptions options]);
  external AudioSession get audioSession;
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
  external int get maxTouchPoints;
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
class NavigatorID implements JSObject {}

extension NavigatorIDExtension on NavigatorID {
  external bool taintEnabled();
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
}

@JS('NavigatorLanguage')
@staticInterop
class NavigatorLanguage implements JSObject {}

extension NavigatorLanguageExtension on NavigatorLanguage {
  external String get language;
  external JSArray get languages;
}

@JS('NavigatorOnLine')
@staticInterop
class NavigatorOnLine implements JSObject {}

extension NavigatorOnLineExtension on NavigatorOnLine {
  external bool get onLine;
}

@JS('NavigatorContentUtils')
@staticInterop
class NavigatorContentUtils implements JSObject {}

extension NavigatorContentUtilsExtension on NavigatorContentUtils {
  external JSVoid registerProtocolHandler(
    String scheme,
    String url,
  );
  external JSVoid unregisterProtocolHandler(
    String scheme,
    String url,
  );
}

@JS('NavigatorCookies')
@staticInterop
class NavigatorCookies implements JSObject {}

extension NavigatorCookiesExtension on NavigatorCookies {
  external bool get cookieEnabled;
}

@JS('NavigatorPlugins')
@staticInterop
class NavigatorPlugins implements JSObject {}

extension NavigatorPluginsExtension on NavigatorPlugins {
  external bool javaEnabled();
  external PluginArray get plugins;
  external MimeTypeArray get mimeTypes;
  external bool get pdfViewerEnabled;
}

@JS('PluginArray')
@staticInterop
class PluginArray implements JSObject {}

extension PluginArrayExtension on PluginArray {
  external JSVoid refresh();
  external Plugin? item(int index);
  external Plugin? namedItem(String name);
  external int get length;
}

@JS('MimeTypeArray')
@staticInterop
class MimeTypeArray implements JSObject {}

extension MimeTypeArrayExtension on MimeTypeArray {
  external MimeType? item(int index);
  external MimeType? namedItem(String name);
  external int get length;
}

@JS('Plugin')
@staticInterop
class Plugin implements JSObject {}

extension PluginExtension on Plugin {
  external MimeType? item(int index);
  external MimeType? namedItem(String name);
  external String get name;
  external String get description;
  external String get filename;
  external int get length;
}

@JS('MimeType')
@staticInterop
class MimeType implements JSObject {}

extension MimeTypeExtension on MimeType {
  external String get type;
  external String get description;
  external String get suffixes;
  external Plugin get enabledPlugin;
}

@JS('ImageBitmap')
@staticInterop
class ImageBitmap implements JSObject {}

extension ImageBitmapExtension on ImageBitmap {
  external JSVoid close();
  external int get width;
  external int get height;
}

@JS()
@staticInterop
@anonymous
class ImageBitmapOptions implements JSObject {
  external factory ImageBitmapOptions({
    ImageOrientation imageOrientation,
    PremultiplyAlpha premultiplyAlpha,
    ColorSpaceConversion colorSpaceConversion,
    int resizeWidth,
    int resizeHeight,
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
  external set resizeWidth(int value);
  external int get resizeWidth;
  external set resizeHeight(int value);
  external int get resizeHeight;
  external set resizeQuality(ResizeQuality value);
  external ResizeQuality get resizeQuality;
}

@JS('AnimationFrameProvider')
@staticInterop
class AnimationFrameProvider implements JSObject {}

extension AnimationFrameProviderExtension on AnimationFrameProvider {
  external int requestAnimationFrame(FrameRequestCallback callback);
  external JSVoid cancelAnimationFrame(int handle);
}

@JS('MessageEvent')
@staticInterop
class MessageEvent implements Event {
  external factory MessageEvent(
    String type, [
    MessageEventInit eventInitDict,
  ]);
}

extension MessageEventExtension on MessageEvent {
  external JSVoid initMessageEvent(
    String type, [
    bool bubbles,
    bool cancelable,
    JSAny? data,
    String origin,
    String lastEventId,
    MessageEventSource? source,
    JSArray ports,
  ]);
  external JSAny? get data;
  external String get origin;
  external String get lastEventId;
  external MessageEventSource? get source;
  external JSArray get ports;
}

@JS()
@staticInterop
@anonymous
class MessageEventInit implements EventInit {
  external factory MessageEventInit({
    JSAny? data,
    String origin,
    String lastEventId,
    MessageEventSource? source,
    JSArray ports,
  });
}

extension MessageEventInitExtension on MessageEventInit {
  external set data(JSAny? value);
  external JSAny? get data;
  external set origin(String value);
  external String get origin;
  external set lastEventId(String value);
  external String get lastEventId;
  external set source(MessageEventSource? value);
  external MessageEventSource? get source;
  external set ports(JSArray value);
  external JSArray get ports;
}

@JS('EventSource')
@staticInterop
class EventSource implements EventTarget {
  external factory EventSource(
    String url, [
    EventSourceInit eventSourceInitDict,
  ]);

  external static int get CONNECTING;
  external static int get OPEN;
  external static int get CLOSED;
}

extension EventSourceExtension on EventSource {
  external JSVoid close();
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

@JS()
@staticInterop
@anonymous
class EventSourceInit implements JSObject {
  external factory EventSourceInit({bool withCredentials});
}

extension EventSourceInitExtension on EventSourceInit {
  external set withCredentials(bool value);
  external bool get withCredentials;
}

@JS('MessageChannel')
@staticInterop
class MessageChannel implements JSObject {
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
    JSAny? message, [
    JSAny? optionsOrTransfer,
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
class StructuredSerializeOptions implements JSObject {
  external factory StructuredSerializeOptions({JSArray transfer});
}

extension StructuredSerializeOptionsExtension on StructuredSerializeOptions {
  external set transfer(JSArray value);
  external JSArray get transfer;
}

@JS('BroadcastChannel')
@staticInterop
class BroadcastChannel implements EventTarget {
  external factory BroadcastChannel(String name);
}

extension BroadcastChannelExtension on BroadcastChannel {
  external JSVoid postMessage(JSAny? message);
  external JSVoid close();
  external String get name;
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
  external JSVoid importScripts(String urls);
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
    JSAny? message, [
    JSAny? optionsOrTransfer,
  ]);
  external JSVoid close();
  external String get name;
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
  external String get name;
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
}

@JS('AbstractWorker')
@staticInterop
class AbstractWorker implements JSObject {}

extension AbstractWorkerExtension on AbstractWorker {
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}

@JS('Worker')
@staticInterop
class Worker implements EventTarget, AbstractWorker {
  external factory Worker(
    String scriptURL, [
    WorkerOptions options,
  ]);
}

extension WorkerExtension on Worker {
  external JSVoid terminate();
  external JSVoid postMessage(
    JSAny? message, [
    JSAny? optionsOrTransfer,
  ]);
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
}

@JS()
@staticInterop
@anonymous
class WorkerOptions implements JSObject {
  external factory WorkerOptions({
    WorkerType type,
    RequestCredentials credentials,
    String name,
  });
}

extension WorkerOptionsExtension on WorkerOptions {
  external set type(WorkerType value);
  external WorkerType get type;
  external set credentials(RequestCredentials value);
  external RequestCredentials get credentials;
  external set name(String value);
  external String get name;
}

@JS('SharedWorker')
@staticInterop
class SharedWorker implements EventTarget, AbstractWorker {
  external factory SharedWorker(
    String scriptURL, [
    JSAny? options,
  ]);
}

extension SharedWorkerExtension on SharedWorker {
  external MessagePort get port;
}

@JS('NavigatorConcurrentHardware')
@staticInterop
class NavigatorConcurrentHardware implements JSObject {}

extension NavigatorConcurrentHardwareExtension on NavigatorConcurrentHardware {
  external int get hardwareConcurrency;
}

@JS('WorkerNavigator')
@staticInterop
class WorkerNavigator
    implements
        NavigatorBadge,
        NavigatorDeviceMemory,
        NavigatorID,
        NavigatorLanguage,
        NavigatorOnLine,
        NavigatorConcurrentHardware,
        NavigatorNetworkInformation,
        NavigatorStorageBuckets,
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
class WorkerLocation implements JSObject {}

extension WorkerLocationExtension on WorkerLocation {
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

@JS('WorkletGlobalScope')
@staticInterop
class WorkletGlobalScope implements JSObject {}

@JS('Worklet')
@staticInterop
class Worklet implements JSObject {}

extension WorkletExtension on Worklet {
  external JSPromise addModule(
    String moduleURL, [
    WorkletOptions options,
  ]);
}

@JS()
@staticInterop
@anonymous
class WorkletOptions implements JSObject {
  external factory WorkletOptions({RequestCredentials credentials});
}

extension WorkletOptionsExtension on WorkletOptions {
  external set credentials(RequestCredentials value);
  external RequestCredentials get credentials;
}

@JS('Storage')
@staticInterop
class Storage implements JSObject {}

extension StorageExtension on Storage {
  external String? key(int index);
  external String? getItem(String key);
  external JSVoid setItem(
    String key,
    String value,
  );
  external JSVoid removeItem(String key);
  external JSVoid clear();
  external int get length;
}

@JS('WindowSessionStorage')
@staticInterop
class WindowSessionStorage implements JSObject {}

extension WindowSessionStorageExtension on WindowSessionStorage {
  external Storage get sessionStorage;
}

@JS('WindowLocalStorage')
@staticInterop
class WindowLocalStorage implements JSObject {}

extension WindowLocalStorageExtension on WindowLocalStorage {
  external Storage get localStorage;
}

@JS('StorageEvent')
@staticInterop
class StorageEvent implements Event {
  external factory StorageEvent(
    String type, [
    StorageEventInit eventInitDict,
  ]);
}

extension StorageEventExtension on StorageEvent {
  external JSVoid initStorageEvent(
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

@JS()
@staticInterop
@anonymous
class StorageEventInit implements EventInit {
  external factory StorageEventInit({
    String? key,
    String? oldValue,
    String? newValue,
    String url,
    Storage? storageArea,
  });
}

extension StorageEventInitExtension on StorageEventInit {
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

@JS('HTMLMarqueeElement')
@staticInterop
class HTMLMarqueeElement implements HTMLElement {
  external factory HTMLMarqueeElement();
}

extension HTMLMarqueeElementExtension on HTMLMarqueeElement {
  external JSVoid start();
  external JSVoid stop();
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

@JS('HTMLFrameSetElement')
@staticInterop
class HTMLFrameSetElement implements HTMLElement, WindowEventHandlers {
  external factory HTMLFrameSetElement();
}

extension HTMLFrameSetElementExtension on HTMLFrameSetElement {
  external set cols(String value);
  external String get cols;
  external set rows(String value);
  external String get rows;
}

@JS('HTMLFrameElement')
@staticInterop
class HTMLFrameElement implements HTMLElement {
  external factory HTMLFrameElement();
}

extension HTMLFrameElementExtension on HTMLFrameElement {
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

@JS('HTMLDirectoryElement')
@staticInterop
class HTMLDirectoryElement implements HTMLElement {
  external factory HTMLDirectoryElement();
}

extension HTMLDirectoryElementExtension on HTMLDirectoryElement {
  external set compact(bool value);
  external bool get compact;
}

@JS('HTMLFontElement')
@staticInterop
class HTMLFontElement implements HTMLElement {
  external factory HTMLFontElement();
}

extension HTMLFontElementExtension on HTMLFontElement {
  external set color(String value);
  external String get color;
  external set face(String value);
  external String get face;
  external set size(String value);
  external String get size;
}

@JS('HTMLParamElement')
@staticInterop
class HTMLParamElement implements HTMLElement {
  external factory HTMLParamElement();
}

extension HTMLParamElementExtension on HTMLParamElement {
  external set name(String value);
  external String get name;
  external set value(String value);
  external String get value;
  external set type(String value);
  external String get type;
  external set valueType(String value);
  external String get valueType;
}

@JS('External')
@staticInterop
class External implements JSObject {}

extension ExternalExtension on External {
  external JSVoid AddSearchProvider();
  external JSVoid IsSearchProviderInstalled();
}
