// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'attribution_reporting_api.dart';
import 'dom.dart';
import 'html.dart';
import 'trust_token_api.dart';

typedef FormDataEntryValue = JSAny;
typedef XMLHttpRequestResponseType = String;
extension type XMLHttpRequestEventTarget._(JSObject _)
    implements EventTarget, JSObject {
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
extension type XMLHttpRequestUpload._(JSObject _)
    implements XMLHttpRequestEventTarget, JSObject {}
extension type XMLHttpRequest._(JSObject _)
    implements XMLHttpRequestEventTarget, JSObject {
  external factory XMLHttpRequest();

  external static int get UNSENT;
  external static int get OPENED;
  external static int get HEADERS_RECEIVED;
  external static int get LOADING;
  external static int get DONE;
  external void setAttributionReporting(
      AttributionReportingRequestOptions options);
  external void setPrivateToken(PrivateToken privateToken);
  external void open(
    String method,
    String url, [
    bool async,
    String? username,
    String? password,
  ]);
  external void setRequestHeader(
    String name,
    String value,
  );
  external void send([JSAny? body]);
  external void abort();
  external String? getResponseHeader(String name);
  external String getAllResponseHeaders();
  external void overrideMimeType(String mime);
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
extension type FormData._(JSObject _) implements JSObject {
  external factory FormData([
    HTMLFormElement form,
    HTMLElement? submitter,
  ]);

  external void append(
    String name,
    JSAny blobValueOrValue, [
    String filename,
  ]);
  external void delete(String name);
  external FormDataEntryValue? get(String name);
  external JSArray<FormDataEntryValue> getAll(String name);
  external bool has(String name);
  external void set(
    String name,
    JSAny blobValueOrValue, [
    String filename,
  ]);
}
extension type ProgressEvent._(JSObject _) implements Event, JSObject {
  external factory ProgressEvent(
    String type, [
    ProgressEventInit eventInitDict,
  ]);

  external bool get lengthComputable;
  external int get loaded;
  external int get total;
}
extension type ProgressEventInit._(JSObject _) implements EventInit, JSObject {
  external factory ProgressEventInit({
    bool lengthComputable,
    int loaded,
    int total,
  });

  external set lengthComputable(bool value);
  external bool get lengthComputable;
  external set loaded(int value);
  external int get loaded;
  external set total(int value);
  external int get total;
}
