// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'service_workers.dart';

typedef ContentCategory = JSString;

@JS()
@staticInterop
@anonymous
class ContentDescription {
  external factory ContentDescription({
    required JSString id,
    required JSString title,
    required JSString description,
    ContentCategory category,
    JSArray icons,
    required JSString url,
  });
}

extension ContentDescriptionExtension on ContentDescription {
  external set id(JSString value);
  external JSString get id;
  external set title(JSString value);
  external JSString get title;
  external set description(JSString value);
  external JSString get description;
  external set category(ContentCategory value);
  external ContentCategory get category;
  external set icons(JSArray value);
  external JSArray get icons;
  external set url(JSString value);
  external JSString get url;
}

@JS('ContentIndex')
@staticInterop
class ContentIndex {}

extension ContentIndexExtension on ContentIndex {
  external JSPromise add(ContentDescription description);
  external JSPromise delete(JSString id);
  external JSPromise getAll();
}

@JS()
@staticInterop
@anonymous
class ContentIndexEventInit implements ExtendableEventInit {
  external factory ContentIndexEventInit({required JSString id});
}

extension ContentIndexEventInitExtension on ContentIndexEventInit {
  external set id(JSString value);
  external JSString get id;
}

@JS('ContentIndexEvent')
@staticInterop
class ContentIndexEvent implements ExtendableEvent {
  external factory ContentIndexEvent(
    JSString type,
    ContentIndexEventInit init,
  );
}

extension ContentIndexEventExtension on ContentIndexEvent {
  external JSString get id;
}
