// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'fileapi.dart';
import 'html.dart';

typedef FormDataEntryValue = JSAny;
typedef XMLHttpRequestResponseType = JSString;

@JS('XMLHttpRequestEventTarget')
@staticInterop
class XMLHttpRequestEventTarget extends EventTarget {
  external factory XMLHttpRequestEventTarget();
}

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
class XMLHttpRequestUpload extends XMLHttpRequestEventTarget {
  external factory XMLHttpRequestUpload();
}

@JS('XMLHttpRequest')
@staticInterop
class XMLHttpRequest extends XMLHttpRequestEventTarget {
  external factory XMLHttpRequest.a0();

  external static JSNumber get UNSENT;
  external static JSNumber get OPENED;
  external static JSNumber get HEADERS_RECEIVED;
  external static JSNumber get LOADING;
  external static JSNumber get DONE;
}

extension XMLHttpRequestExtension on XMLHttpRequest {
  external set onreadystatechange(EventHandler value);
  external EventHandler get onreadystatechange;
  external JSNumber get readyState;
  external JSVoid open(
    JSString method,
    JSString url,
  );
  @JS('open')
  external JSVoid open_1_(
    JSString method,
    JSString url,
    JSBoolean async,
  );
  @JS('open')
  external JSVoid open_1_1(
    JSString method,
    JSString url,
    JSBoolean async,
    JSString? username,
  );
  @JS('open')
  external JSVoid open_1_2(
    JSString method,
    JSString url,
    JSBoolean async,
    JSString? username,
    JSString? password,
  );
  external JSVoid setRequestHeader(
    JSString name,
    JSString value,
  );
  external set timeout(JSNumber value);
  external JSNumber get timeout;
  external set withCredentials(JSBoolean value);
  external JSBoolean get withCredentials;
  external XMLHttpRequestUpload get upload;
  external JSVoid send();
  external JSVoid send1(JSAny? body);
  external JSVoid abort();
  external JSString get responseURL;
  external JSNumber get status;
  external JSString get statusText;
  external JSString? getResponseHeader(JSString name);
  external JSString getAllResponseHeaders();
  external JSVoid overrideMimeType(JSString mime);
  external set responseType(XMLHttpRequestResponseType value);
  external XMLHttpRequestResponseType get responseType;
  external JSAny get response;
  external JSString get responseText;
  external Document? get responseXML;
}

@JS('FormData')
@staticInterop
class FormData {
  external factory FormData();

  external factory FormData.a1();

  external factory FormData.a2(HTMLFormElement form);

  external factory FormData.a3(
    HTMLFormElement form,
    HTMLElement? submitter,
  );
}

extension FormDataExtension on FormData {
  external JSVoid append(
    JSString name,
    JSString value,
  );
  @JS('append')
  external JSVoid append_1_(
    JSString name,
    Blob blobValue,
  );
  @JS('append')
  external JSVoid append_1_1(
    JSString name,
    Blob blobValue,
    JSString filename,
  );
  external JSVoid delete(JSString name);
  external FormDataEntryValue? get(JSString name);
  external JSArray getAll(JSString name);
  external JSBoolean has(JSString name);
  external JSVoid set(
    JSString name,
    JSString value,
  );
  @JS('set')
  external JSVoid set_1_(
    JSString name,
    Blob blobValue,
  );
  @JS('set')
  external JSVoid set_1_1(
    JSString name,
    Blob blobValue,
    JSString filename,
  );
}

@JS('ProgressEvent')
@staticInterop
class ProgressEvent extends Event {
  external factory ProgressEvent();

  external factory ProgressEvent.a1(JSString type);

  external factory ProgressEvent.a2(
    JSString type,
    ProgressEventInit eventInitDict,
  );
}

extension ProgressEventExtension on ProgressEvent {
  external JSBoolean get lengthComputable;
  external JSNumber get loaded;
  external JSNumber get total;
}

@JS('ProgressEventInit')
@staticInterop
class ProgressEventInit extends EventInit {
  external factory ProgressEventInit();
}

extension ProgressEventInitExtension on ProgressEventInit {}
