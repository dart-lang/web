// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'fetch.dart';
import 'html.dart';
import 'service_workers.dart';

typedef BackgroundFetchResult = JSString;
typedef BackgroundFetchFailureReason = JSString;

@JS('BackgroundFetchManager')
@staticInterop
class BackgroundFetchManager {}

extension BackgroundFetchManagerExtension on BackgroundFetchManager {
  external JSPromise fetch(
    JSString id,
    JSAny requests, [
    BackgroundFetchOptions options,
  ]);
  external JSPromise get(JSString id);
  external JSPromise getIds();
}

@JS()
@staticInterop
@anonymous
class BackgroundFetchUIOptions {
  external factory BackgroundFetchUIOptions({
    JSArray icons,
    JSString title,
  });
}

extension BackgroundFetchUIOptionsExtension on BackgroundFetchUIOptions {
  external set icons(JSArray value);
  external JSArray get icons;
  external set title(JSString value);
  external JSString get title;
}

@JS()
@staticInterop
@anonymous
class BackgroundFetchOptions implements BackgroundFetchUIOptions {
  external factory BackgroundFetchOptions({JSNumber downloadTotal = 0});
}

extension BackgroundFetchOptionsExtension on BackgroundFetchOptions {
  external set downloadTotal(JSNumber value);
  external JSNumber get downloadTotal;
}

@JS('BackgroundFetchRegistration')
@staticInterop
class BackgroundFetchRegistration implements EventTarget {}

extension BackgroundFetchRegistrationExtension on BackgroundFetchRegistration {
  external JSPromise abort();
  external JSPromise match(
    RequestInfo request, [
    CacheQueryOptions options,
  ]);
  external JSPromise matchAll([
    RequestInfo request,
    CacheQueryOptions options,
  ]);
  external JSString get id;
  external JSNumber get uploadTotal;
  external JSNumber get uploaded;
  external JSNumber get downloadTotal;
  external JSNumber get downloaded;
  external BackgroundFetchResult get result;
  external BackgroundFetchFailureReason get failureReason;
  external JSBoolean get recordsAvailable;
  external set onprogress(EventHandler value);
  external EventHandler get onprogress;
}

@JS('BackgroundFetchRecord')
@staticInterop
class BackgroundFetchRecord {}

extension BackgroundFetchRecordExtension on BackgroundFetchRecord {
  external Request get request;
  external JSPromise get responseReady;
}

@JS('BackgroundFetchEvent')
@staticInterop
class BackgroundFetchEvent implements ExtendableEvent {
  external factory BackgroundFetchEvent(
    JSString type,
    BackgroundFetchEventInit init,
  );
}

extension BackgroundFetchEventExtension on BackgroundFetchEvent {
  external BackgroundFetchRegistration get registration;
}

@JS()
@staticInterop
@anonymous
class BackgroundFetchEventInit implements ExtendableEventInit {
  external factory BackgroundFetchEventInit(
      {required BackgroundFetchRegistration registration});
}

extension BackgroundFetchEventInitExtension on BackgroundFetchEventInit {
  external set registration(BackgroundFetchRegistration value);
  external BackgroundFetchRegistration get registration;
}

@JS('BackgroundFetchUpdateUIEvent')
@staticInterop
class BackgroundFetchUpdateUIEvent implements BackgroundFetchEvent {
  external factory BackgroundFetchUpdateUIEvent(
    JSString type,
    BackgroundFetchEventInit init,
  );
}

extension BackgroundFetchUpdateUIEventExtension
    on BackgroundFetchUpdateUIEvent {
  external JSPromise updateUI([BackgroundFetchUIOptions options]);
}
