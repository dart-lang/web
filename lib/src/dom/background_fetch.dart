// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'fetch.dart';
import 'html.dart';
import 'image_resource.dart';
import 'service_workers.dart';

typedef BackgroundFetchResult = String;
typedef BackgroundFetchFailureReason = String;
extension type BackgroundFetchManager._(JSObject _) implements JSObject {
  external JSPromise<BackgroundFetchRegistration> fetch(
    String id,
    JSAny requests, [
    BackgroundFetchOptions options,
  ]);
  external JSPromise<BackgroundFetchRegistration?> get(String id);
  external JSPromise<JSArray<JSString>> getIds();
}
extension type BackgroundFetchUIOptions._(JSObject _) implements JSObject {
  external factory BackgroundFetchUIOptions({
    JSArray<ImageResource> icons,
    String title,
  });

  external set icons(JSArray<ImageResource> value);
  external JSArray<ImageResource> get icons;
  external set title(String value);
  external String get title;
}
extension type BackgroundFetchOptions._(JSObject _)
    implements BackgroundFetchUIOptions, JSObject {
  external factory BackgroundFetchOptions({int downloadTotal});

  external set downloadTotal(int value);
  external int get downloadTotal;
}
extension type BackgroundFetchRegistration._(JSObject _)
    implements EventTarget, JSObject {
  external JSPromise<JSBoolean> abort();
  external JSPromise<BackgroundFetchRecord> match(
    RequestInfo request, [
    CacheQueryOptions options,
  ]);
  external JSPromise<JSArray<BackgroundFetchRecord>> matchAll([
    RequestInfo request,
    CacheQueryOptions options,
  ]);
  external String get id;
  external int get uploadTotal;
  external int get uploaded;
  external int get downloadTotal;
  external int get downloaded;
  external BackgroundFetchResult get result;
  external BackgroundFetchFailureReason get failureReason;
  external bool get recordsAvailable;
  external set onprogress(EventHandler value);
  external EventHandler get onprogress;
}
extension type BackgroundFetchRecord._(JSObject _) implements JSObject {
  external Request get request;
  external JSPromise<Response> get responseReady;
}
extension type BackgroundFetchEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory BackgroundFetchEvent(
    String type,
    BackgroundFetchEventInit init,
  );

  external BackgroundFetchRegistration get registration;
}
extension type BackgroundFetchEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory BackgroundFetchEventInit(
      {required BackgroundFetchRegistration registration});

  external set registration(BackgroundFetchRegistration value);
  external BackgroundFetchRegistration get registration;
}
extension type BackgroundFetchUpdateUIEvent._(JSObject _)
    implements BackgroundFetchEvent, JSObject {
  external factory BackgroundFetchUpdateUIEvent(
    String type,
    BackgroundFetchEventInit init,
  );

  external JSPromise<JSAny?> updateUI([BackgroundFetchUIOptions options]);
}
