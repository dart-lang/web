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
class BackgroundFetchManager {
  external factory BackgroundFetchManager();
}

extension BackgroundFetchManagerExtension on BackgroundFetchManager {
  external JSPromise fetch(
    JSString id,
    JSAny requests,
  );
  external JSPromise fetch1(
    JSString id,
    JSAny requests,
    BackgroundFetchOptions options,
  );
  external JSPromise get(JSString id);
  external JSPromise getIds();
}

@JS('BackgroundFetchUIOptions')
@staticInterop
class BackgroundFetchUIOptions {
  external factory BackgroundFetchUIOptions();
}

extension BackgroundFetchUIOptionsExtension on BackgroundFetchUIOptions {}

@JS('BackgroundFetchOptions')
@staticInterop
class BackgroundFetchOptions extends BackgroundFetchUIOptions {
  external factory BackgroundFetchOptions();
}

extension BackgroundFetchOptionsExtension on BackgroundFetchOptions {}

@JS('BackgroundFetchRegistration')
@staticInterop
class BackgroundFetchRegistration extends EventTarget {
  external factory BackgroundFetchRegistration();
}

extension BackgroundFetchRegistrationExtension on BackgroundFetchRegistration {
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
  external JSPromise abort();
  external JSPromise match(RequestInfo request);
  external JSPromise match1(
    RequestInfo request,
    CacheQueryOptions options,
  );
  external JSPromise matchAll();
  external JSPromise matchAll1(RequestInfo request);
  external JSPromise matchAll2(
    RequestInfo request,
    CacheQueryOptions options,
  );
}

@JS('BackgroundFetchRecord')
@staticInterop
class BackgroundFetchRecord {
  external factory BackgroundFetchRecord();
}

extension BackgroundFetchRecordExtension on BackgroundFetchRecord {
  external Request get request;
  external JSPromise get responseReady;
}

@JS('BackgroundFetchEvent')
@staticInterop
class BackgroundFetchEvent extends ExtendableEvent {
  external factory BackgroundFetchEvent();

  external factory BackgroundFetchEvent.a1(
    JSString type,
    BackgroundFetchEventInit init,
  );
}

extension BackgroundFetchEventExtension on BackgroundFetchEvent {
  external BackgroundFetchRegistration get registration;
}

@JS('BackgroundFetchEventInit')
@staticInterop
class BackgroundFetchEventInit extends ExtendableEventInit {
  external factory BackgroundFetchEventInit();
}

extension BackgroundFetchEventInitExtension on BackgroundFetchEventInit {}

@JS('BackgroundFetchUpdateUIEvent')
@staticInterop
class BackgroundFetchUpdateUIEvent extends BackgroundFetchEvent {
  external factory BackgroundFetchUpdateUIEvent();

  external factory BackgroundFetchUpdateUIEvent.a1(
    JSString type,
    BackgroundFetchEventInit init,
  );
}

extension BackgroundFetchUpdateUIEventExtension
    on BackgroundFetchUpdateUIEvent {
  external JSPromise updateUI();
  external JSPromise updateUI1(BackgroundFetchUIOptions options);
}
