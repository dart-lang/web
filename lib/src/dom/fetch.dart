// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'referrer_policy.dart';
import 'streams.dart';

typedef HeadersInit = JSAny;
typedef XMLHttpRequestBodyInit = JSAny;
typedef BodyInit = JSAny;
typedef RequestInfo = JSAny;
typedef RequestDestination = JSString;
typedef RequestMode = JSString;
typedef RequestCredentials = JSString;
typedef RequestCache = JSString;
typedef RequestRedirect = JSString;
typedef RequestDuplex = JSString;
typedef RequestPriority = JSString;
typedef ResponseType = JSString;

@JS('Headers')
@staticInterop
class Headers {
  external factory Headers([HeadersInit init]);
}

extension HeadersExtension on Headers {
  external JSVoid append(
    JSString name,
    JSString value,
  );
  external JSVoid delete(JSString name);
  external JSString? get(JSString name);
  external JSBoolean has(JSString name);
  external JSVoid set(
    JSString name,
    JSString value,
  );
}

@JS('Body')
@staticInterop
class Body {}

extension BodyExtension on Body {
  external JSPromise arrayBuffer();
  external JSPromise blob();
  external JSPromise formData();
  external JSPromise json();
  external JSPromise text();
  external ReadableStream? get body;
  external JSBoolean get bodyUsed;
}

@JS('Request')
@staticInterop
class Request implements Body {
  external factory Request(
    RequestInfo input, [
    RequestInit init,
  ]);
}

extension RequestExtension on Request {
  external Request clone();
  external JSString get method;
  external JSString get url;
  external Headers get headers;
  external RequestDestination get destination;
  external JSString get referrer;
  external ReferrerPolicy get referrerPolicy;
  external RequestMode get mode;
  external RequestCredentials get credentials;
  external RequestCache get cache;
  external RequestRedirect get redirect;
  external JSString get integrity;
  external JSBoolean get keepalive;
  external JSBoolean get isReloadNavigation;
  external JSBoolean get isHistoryNavigation;
  external AbortSignal get signal;
  external RequestDuplex get duplex;
}

@JS()
@staticInterop
@anonymous
class RequestInit {
  external factory RequestInit({
    JSString method,
    HeadersInit headers,
    BodyInit? body,
    JSString referrer,
    ReferrerPolicy referrerPolicy,
    RequestMode mode,
    RequestCredentials credentials,
    RequestCache cache,
    RequestRedirect redirect,
    JSString integrity,
    JSBoolean keepalive,
    AbortSignal? signal,
    RequestDuplex duplex,
    RequestPriority priority,
    JSAny window,
  });
}

extension RequestInitExtension on RequestInit {
  external set method(JSString value);
  external JSString get method;
  external set headers(HeadersInit value);
  external HeadersInit get headers;
  external set body(BodyInit? value);
  external BodyInit? get body;
  external set referrer(JSString value);
  external JSString get referrer;
  external set referrerPolicy(ReferrerPolicy value);
  external ReferrerPolicy get referrerPolicy;
  external set mode(RequestMode value);
  external RequestMode get mode;
  external set credentials(RequestCredentials value);
  external RequestCredentials get credentials;
  external set cache(RequestCache value);
  external RequestCache get cache;
  external set redirect(RequestRedirect value);
  external RequestRedirect get redirect;
  external set integrity(JSString value);
  external JSString get integrity;
  external set keepalive(JSBoolean value);
  external JSBoolean get keepalive;
  external set signal(AbortSignal? value);
  external AbortSignal? get signal;
  external set duplex(RequestDuplex value);
  external RequestDuplex get duplex;
  external set priority(RequestPriority value);
  external RequestPriority get priority;
  external set window(JSAny value);
  external JSAny get window;
}

@JS('Response')
@staticInterop
class Response implements Body {
  external factory Response([
    BodyInit? body,
    ResponseInit init,
  ]);

  external static Response error();
  external static Response redirect(
    JSString url, [
    JSNumber status,
  ]);
  external static Response json(
    JSAny data, [
    ResponseInit init,
  ]);
}

extension ResponseExtension on Response {
  external Response clone();
  external ResponseType get type;
  external JSString get url;
  external JSBoolean get redirected;
  external JSNumber get status;
  external JSBoolean get ok;
  external JSString get statusText;
  external Headers get headers;
}

@JS()
@staticInterop
@anonymous
class ResponseInit {
  external factory ResponseInit({
    JSNumber status,
    JSString statusText,
    HeadersInit headers,
  });
}

extension ResponseInitExtension on ResponseInit {
  external set status(JSNumber value);
  external JSNumber get status;
  external set statusText(JSString value);
  external JSString get statusText;
  external set headers(HeadersInit value);
  external HeadersInit get headers;
}
