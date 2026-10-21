// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:web/web.dart';

// Removed renames.dart typedefs & HttpRequest
late ContextEvent $contextEvent;
late WebGL $webGL;
final HttpRequest $httpRequest = HttpRequest();
const int $httpDone = HttpRequest.DONE;
Future<XMLHttpRequest> testHttpRequest() =>
    HttpRequest.request('/api', method: 'GET');
final $httpRequestTearOff = HttpRequest.request;

// CustomEventProviders => EventStreamProviders
final EventStreamProvider<WheelEvent> $mouseWheelEvent =
    CustomEventProviders.mouseWheelEvent;

// Deleted top-level helper functions
final HTMLAudioElement $audio = createAudioElement();
final HTMLIFrameElement $iframe = createIFrameElement();
final HTMLCanvasElement $canvas = createCanvasElement();

// TouchListWrapper & TouchList.toList
late TouchList $touchList;
late TouchListWrapper $touchListWrapper;
final TouchListWrapper $touchListWrapperInit = TouchListWrapper($touchList);
final List<Touch> $touchAsList1 = $touchList.toList();

// Renamed *Glue and TouchListConvert extensions
void testGlueExtensions(
  HTMLCanvasElement canvas,
  CanvasRenderingContext2D ctx2d,
  Node node,
  MouseEvent mouseEvent,
  Touch touch,
  Storage storage,
  TouchList touchList,
  XMLHttpRequest xhr,
  HTMLImageElement img,
) {
  HTMLCanvasElementGlue(canvas).toDataUrl();
  CanvasRenderingContext2DGlue(ctx2d).drawImageScaled(img, 0, 0, 10, 10);
  NodeGlue(node).text = 'hello';
  EventGlue(mouseEvent).client;
  TouchGlue(touch).client;
  StorageGlue(storage)['key'] = 'value';
  TouchListConvert(touchList).asList();
  XMLHttpRequestGlue(xhr).responseHeaders;
}

// Renamed & consolidated event extensions
void testEventExtensions(
  Element element,
  Document doc,
  Window win,
  XMLHttpRequest xhr,
  EventSource eventSource,
  FileReader fileReader,
  AudioNode audioNode,
) {
  ElementEventGetters(element).onClick;
  ElementCustomEvents(element).onMouseWheel;
  DocumentCustomEvents(doc).onVisibilityChange;
  WindowEventGetters(win).onLoad;
  WindowCustomEvents(win).onTransitionEnd;
  XHRGetters(xhr).onLoad;
  EventSourceEventGetters(eventSource).onOpen;
  FileReaderEventGEtters(fileReader).onLoad;
  AutoElementEventGetters(audioNode).onEnded;
}

// Digital Credentials spec renames
late IdentityRequestProvider $identityReqProvider;

void testDigitalCredentials(JSObject payload) {
  final req = IdentityRequestProvider(protocol: 'openid4vp', request: payload);
  req.request = req.request;
  final opts = DigitalCredentialRequestOptions(
    providers: <DigitalCredentialGetRequest>[req].toJS,
  );
  opts.providers = opts.providers;
}

// DOM typedef 1:1 renames & Uvm* generic replacements
late UpdateCallback $updateCallback;
late RTCEncodedVideoFrameType $rtcVideoFrameType;
late BinaryData $binaryData;
late UvmEntry $uvmEntry;
late UvmEntries? $uvmEntries;

// CSSStyleDeclaration & CSSStyleProperties 1:1 property renames
void testCssStyleRenames(
  CSSStyleDeclaration style,
  HTMLElement element,
  Window win,
) {
  style.borderClipTop = style.borderClipTop;
  style.borderClipRight = style.borderClipRight;
  style.borderClipBottom = style.borderClipBottom;
  style.borderClipLeft = style.borderClipLeft;
  style.corners = style.corners;
  style.insetArea = style.insetArea;
  style.positionTryOptions = style.positionTryOptions;
  style.textDecorationTrim = style.textDecorationTrim;
  style.scrollStartTarget = style.scrollStartTarget;

  // Chained PropertyAccess & cascade on CSSStyleProperties (`element.style` /
  // `getComputedStyle`)
  element.style.borderClipTop = element.style.borderClipTop;
  element.style.borderClipRight = element.style.borderClipRight;
  element.style.borderClipBottom = element.style.borderClipBottom;
  element.style.borderClipLeft = element.style.borderClipLeft;
  element.style.corners = win.getComputedStyle(element).corners;
  element.style
    ..insetArea = element.style.insetArea
    ..positionTryOptions = element.style.positionTryOptions
    ..textDecorationTrim = element.style.textDecorationTrim
    ..scrollStartTarget = element.style.scrollStartTarget;
}
