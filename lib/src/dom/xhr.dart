// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef FormDataEntryValue = JSAny;
typedef XMLHttpRequestResponseType = JSString;

@JS('XMLHttpRequestEventTarget')
@staticInterop
class XMLHttpRequestEventTarget extends EventTarget {
  external factory XMLHttpRequestEventTarget();
}

extension XMLHttpRequestEventTargetExtension on XMLHttpRequestEventTarget {
  external EventHandler get onloadstart;
  external set onloadstart(EventHandler value);
  external EventHandler get onprogress;
  external set onprogress(EventHandler value);
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onload;
  external set onload(EventHandler value);
  external EventHandler get ontimeout;
  external set ontimeout(EventHandler value);
  external EventHandler get onloadend;
  external set onloadend(EventHandler value);
}

@JS('XMLHttpRequestUpload')
@staticInterop
class XMLHttpRequestUpload extends XMLHttpRequestEventTarget {
  external factory XMLHttpRequestUpload();
}

@JS('XMLHttpRequest')
@staticInterop
class XMLHttpRequest extends XMLHttpRequestEventTarget {
  external factory XMLHttpRequest();
  external static JSNumber get UNSENT;
  external static JSNumber get OPENED;
  external static JSNumber get HEADERS_RECEIVED;
  external static JSNumber get LOADING;
  external static JSNumber get DONE;
}

extension XMLHttpRequestExtension on XMLHttpRequest {
  external EventHandler get onreadystatechange;
  external set onreadystatechange(EventHandler value);
  external JSNumber get readyState;
  external JSUndefined open(JSString method, JSString url);
  @JS('open')
  external JSUndefined open1(JSString method, JSString url, JSBoolean async);
  @JS('open')
  external JSUndefined open1_1(
      JSString method, JSString url, JSBoolean async, JSString? username);
  @JS('open')
  external JSUndefined open1_2(JSString method, JSString url, JSBoolean async,
      JSString? username, JSString? password);
  external JSUndefined setRequestHeader(JSString name, JSString value);
  external JSNumber get timeout;
  external set timeout(JSNumber value);
  external JSBoolean get withCredentials;
  external set withCredentials(JSBoolean value);
  external XMLHttpRequestUpload get upload;
  external JSUndefined send();
  external JSUndefined send_1(JSAny? body);
  external JSUndefined abort();
  external JSString get responseURL;
  external JSNumber get status;
  external JSString get statusText;
  external JSString? getResponseHeader(JSString name);
  external JSString getAllResponseHeaders();
  external JSUndefined overrideMimeType(JSString mime);
  external XMLHttpRequestResponseType get responseType;
  external set responseType(XMLHttpRequestResponseType value);
  external JSAny get response;
  external JSString get responseText;
  external Document? get responseXML;
}

@JS('FormData')
@staticInterop
class FormData {
  external factory FormData();
  external factory FormData.a1();
  external factory FormData.a1_1(HTMLFormElement form);
  external factory FormData.a1_2(HTMLFormElement form, HTMLElement? submitter);
}

extension FormDataExtension on FormData {
  external JSUndefined append(JSString name, JSString value);
  @JS('append')
  external JSUndefined append1(JSString name, Blob blobValue);
  @JS('append')
  external JSUndefined append1_1(
      JSString name, Blob blobValue, JSString filename);
  external JSUndefined delete(JSString name);
  external FormDataEntryValue? get(JSString name);
  external JSArray getAll(JSString name);
  external JSBoolean has(JSString name);
  external JSUndefined set(JSString name, JSString value);
  @JS('set')
  external JSUndefined set1(JSString name, Blob blobValue);
  @JS('set')
  external JSUndefined set1_1(JSString name, Blob blobValue, JSString filename);
  // TODO
}

@JS('ProgressEvent')
@staticInterop
class ProgressEvent extends Event {
  external factory ProgressEvent();
  external factory ProgressEvent.a1(JSString type);
  external factory ProgressEvent.a1_1(
      JSString type, ProgressEventInit eventInitDict);
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

extension ProgressEventInitExtension on ProgressEventInit {
  // TODO
  // TODO
  // TODO
}
