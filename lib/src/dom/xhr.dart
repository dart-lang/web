// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'attribution_reporting_api.dart';
import 'dom.dart';
import 'html.dart';

typedef FormDataEntryValue = JSAny;
typedef XMLHttpRequestResponseType = JSString;

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

  external static JSNumber get UNSENT;
  external static JSNumber get OPENED;
  external static JSNumber get HEADERS_RECEIVED;
  external static JSNumber get LOADING;
  external static JSNumber get DONE;
}

extension XMLHttpRequestExtension on XMLHttpRequest {
  external JSVoid setAttributionReporting(
      AttributionReportingRequestOptions options);
  external JSVoid open(
    JSString method,
    JSString url, [
    JSBoolean async,
    JSString? username,
    JSString? password,
  ]);
  external JSVoid setRequestHeader(
    JSString name,
    JSString value,
  );
  external JSVoid send([JSAny? body]);
  external JSVoid abort();
  external JSString? getResponseHeader(JSString name);
  external JSString getAllResponseHeaders();
  external JSVoid overrideMimeType(JSString mime);
  external set onreadystatechange(EventHandler value);
  external EventHandler get onreadystatechange;
  external JSNumber get readyState;
  external set timeout(JSNumber value);
  external JSNumber get timeout;
  external set withCredentials(JSBoolean value);
  external JSBoolean get withCredentials;
  external XMLHttpRequestUpload get upload;
  external JSString get responseURL;
  external JSNumber get status;
  external JSString get statusText;
  external set responseType(XMLHttpRequestResponseType value);
  external XMLHttpRequestResponseType get responseType;
  external JSAny get response;
  external JSString get responseText;
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
    JSString name,
    JSAny blobValueOrValue, [
    JSString filename,
  ]);
  external JSVoid delete(JSString name);
  external FormDataEntryValue? get(JSString name);
  external JSArray getAll(JSString name);
  external JSBoolean has(JSString name);
  external JSVoid set(
    JSString name,
    JSAny blobValueOrValue, [
    JSString filename,
  ]);
}

@JS('ProgressEvent')
@staticInterop
class ProgressEvent implements Event {
  external factory ProgressEvent(
    JSString type, [
    ProgressEventInit eventInitDict,
  ]);
}

extension ProgressEventExtension on ProgressEvent {
  external JSBoolean get lengthComputable;
  external JSNumber get loaded;
  external JSNumber get total;
}

@JS()
@staticInterop
@anonymous
class ProgressEventInit implements EventInit {
  external factory ProgressEventInit({
    JSBoolean lengthComputable,
    JSNumber loaded,
    JSNumber total,
  });
}

extension ProgressEventInitExtension on ProgressEventInit {
  external set lengthComputable(JSBoolean value);
  external JSBoolean get lengthComputable;
  external set loaded(JSNumber value);
  external JSNumber get loaded;
  external set total(JSNumber value);
  external JSNumber get total;
}
