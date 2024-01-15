// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'service_workers.dart';
import 'status.dart';

typedef ContentCategory = String;

@JS()
@staticInterop
@anonymous
class ContentDescription {
  external factory ContentDescription({
    required String id,
    required String title,
    required String description,
    ContentCategory category,
    JSArray icons,
    required String url,
  });
}

extension ContentDescriptionExtension on ContentDescription {
  external set id(String value);
  external String get id;
  external set title(String value);
  external String get title;
  external set description(String value);
  external String get description;
  external set category(ContentCategory value);
  external ContentCategory get category;
  external set icons(JSArray value);
  external JSArray get icons;
  external set url(String value);
  external String get url;
}

@JS('ContentIndex')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: '')
class ContentIndex {}

extension ContentIndexExtension on ContentIndex {
  external JSPromise add(ContentDescription description);
  external JSPromise delete(String id);
  external JSPromise getAll();
}

@JS()
@staticInterop
@anonymous
class ContentIndexEventInit implements ExtendableEventInit {
  external factory ContentIndexEventInit({required String id});
}

extension ContentIndexEventInitExtension on ContentIndexEventInit {
  external set id(String value);
  external String get id;
}

@JS('ContentIndexEvent')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: '')
class ContentIndexEvent implements ExtendableEvent {
  external factory ContentIndexEvent(
    String type,
    ContentIndexEventInit init,
  );
}

extension ContentIndexEventExtension on ContentIndexEvent {
  external String get id;
}
