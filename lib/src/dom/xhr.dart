// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'attribution_reporting_api.dart';
import 'dom.dart';
import 'html.dart';
import 'trust_token_api.dart';

typedef FormDataEntryValue = JSAny?;
typedef XMLHttpRequestResponseType = String;

@JS('XMLHttpRequestEventTarget')
@staticInterop
class XMLHttpRequestEventTarget implements EventTarget {}

extension XMLHttpRequestEventTargetExtension on XMLHttpRequestEventTarget {
  external set onloadstart(EventHandler value);
  external EventHandler get onloadstart;
  external set onprogress(EventHandler value);
  external EventHandler get onprogress;
  external set onabort(EventHandler value);
  external EventHandler get onabort;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onload(EventHandler value);
  external EventHandler get onload;
  external set ontimeout(EventHandler value);
  external EventHandler get ontimeout;
  external set onloadend(EventHandler value);
  external EventHandler get onloadend;
}

@JS('XMLHttpRequestUpload')
@staticInterop
class XMLHttpRequestUpload implements XMLHttpRequestEventTarget {}

@JS('XMLHttpRequest')
@staticInterop
class XMLHttpRequest implements XMLHttpRequestEventTarget {
  external factory XMLHttpRequest();

  external static int get UNSENT;
  external static int get OPENED;
  external static int get HEADERS_RECEIVED;
  external static int get LOADING;
  external static int get DONE;
}

extension XMLHttpRequestExtension on XMLHttpRequest {
  external JSVoid setAttributionReporting(
      AttributionReportingRequestOptions options);
  external JSVoid setPrivateToken(PrivateToken privateToken);
  external JSVoid open(
    String method,
    String url, [
    bool async,
    String? username,
    String? password,
  ]);
  external JSVoid setRequestHeader(
    String name,
    String value,
  );
  external JSVoid send([JSAny? body]);
  external JSVoid abort();
  external String? getResponseHeader(String name);
  external String getAllResponseHeaders();
  external JSVoid overrideMimeType(String mime);
  external set onreadystatechange(EventHandler value);
  external EventHandler get onreadystatechange;
  external int get readyState;
  external set timeout(int value);
  external int get timeout;
  external set withCredentials(bool value);
  external bool get withCredentials;
  external XMLHttpRequestUpload get upload;
  external String get responseURL;
  external int get status;
  external String get statusText;
  external set responseType(XMLHttpRequestResponseType value);
  external XMLHttpRequestResponseType get responseType;
  external JSAny? get response;
  external String get responseText;
  external Document? get responseXML;
}

@JS('FormData')
@staticInterop
class FormData implements JSObject {
  external factory FormData([
    HTMLFormElement form,
    HTMLElement? submitter,
  ]);
}

extension FormDataExtension on FormData {
  external JSVoid append(
    String name,
    JSAny? blobValueOrValue, [
    String filename,
  ]);
  external JSVoid delete(String name);
  external FormDataEntryValue? get(String name);
  external JSArray getAll(String name);
  external bool has(String name);
  external JSVoid set(
    String name,
    JSAny? blobValueOrValue, [
    String filename,
  ]);
}

@JS('ProgressEvent')
@staticInterop
class ProgressEvent implements Event {
  external factory ProgressEvent(
    String type, [
    ProgressEventInit eventInitDict,
  ]);
}

extension ProgressEventExtension on ProgressEvent {
  external bool get lengthComputable;
  external int get loaded;
  external int get total;
}

@JS()
@staticInterop
@anonymous
class ProgressEventInit implements EventInit {
  external factory ProgressEventInit({
    bool lengthComputable,
    int loaded,
    int total,
  });
}

extension ProgressEventInitExtension on ProgressEventInit {
  external set lengthComputable(bool value);
  external bool get lengthComputable;
  external set loaded(int value);
  external int get loaded;
  external set total(int value);
  external int get total;
}
