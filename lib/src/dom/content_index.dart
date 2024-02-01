// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'image_resource.dart';
import 'service_workers.dart';

typedef ContentCategory = String;
extension type ContentDescription._(JSObject _) implements JSObject {
  external factory ContentDescription({
    required String id,
    required String title,
    required String description,
    ContentCategory category,
    JSArray<ImageResource> icons,
    required String url,
  });

  external set id(String value);
  external String get id;
  external set title(String value);
  external String get title;
  external set description(String value);
  external String get description;
  external set category(ContentCategory value);
  external ContentCategory get category;
  external set icons(JSArray<ImageResource> value);
  external JSArray<ImageResource> get icons;
  external set url(String value);
  external String get url;
}
extension type ContentIndex._(JSObject _) implements JSObject {
  external JSPromise<JSAny?> add(ContentDescription description);
  external JSPromise<JSAny?> delete(String id);
  external JSPromise<JSArray<ContentDescription>> getAll();
}
extension type ContentIndexEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory ContentIndexEventInit({required String id});

  external set id(String value);
  external String get id;
}
extension type ContentIndexEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory ContentIndexEvent(
    String type,
    ContentIndexEventInit init,
  );

  external String get id;
}
