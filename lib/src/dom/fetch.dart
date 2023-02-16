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
  external factory Headers();

  external factory Headers.a1();

  external factory Headers.a2(HeadersInit init);
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
class Body {
  external factory Body();
}

extension BodyExtension on Body {
  external ReadableStream? get body;
  external JSBoolean get bodyUsed;
  external JSPromise arrayBuffer();
  external JSPromise blob();
  external JSPromise formData();
  external JSPromise json();
  external JSPromise text();
}

@JS('Request')
@staticInterop
class Request implements Body {
  external factory Request();

  external factory Request.a1(RequestInfo input);

  external factory Request.a2(
    RequestInfo input,
    RequestInit init,
  );
}

extension RequestExtension on Request {
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
  external Request clone();
}

@JS('RequestInit')
@staticInterop
class RequestInit {
  external factory RequestInit();
}

extension RequestInitExtension on RequestInit {}

@JS('Response')
@staticInterop
class Response implements Body {
  external factory Response();

  external factory Response.a1();

  external factory Response.a2(BodyInit? body);

  external factory Response.a3(
    BodyInit? body,
    ResponseInit init,
  );

  external static Response error();
  external static Response redirect(JSString url);
  external static Response redirect1(
    JSString url,
    JSNumber status,
  );
  external static Response json(JSAny data);
  external static Response json1(
    JSAny data,
    ResponseInit init,
  );
}

extension ResponseExtension on Response {
  external ResponseType get type;
  external JSString get url;
  external JSBoolean get redirected;
  external JSNumber get status;
  external JSBoolean get ok;
  external JSString get statusText;
  external Headers get headers;
  external Response clone();
}

@JS('ResponseInit')
@staticInterop
class ResponseInit {
  external factory ResponseInit();
}

extension ResponseInitExtension on ResponseInit {}
