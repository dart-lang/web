// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'service_workers.dart';

typedef ContentCategory = String;
extension type ContentDescription._(JSObject _) implements JSObject {
  external factory ContentDescription({
    required String id,
    required String title,
    required String description,
    ContentCategory category,
    JSArray icons,
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
  external set icons(JSArray value);
  external JSArray get icons;
  external set url(String value);
  external String get url;
}

/// The **`ContentIndex`** interface of the
/// [Content Index API](https://developer.mozilla.org/en-US/docs/Web/API/Content_Index_API)
/// allows developers to register their offline enabled content with the
/// browser.
extension type ContentIndex._(JSObject _) implements JSObject {
  /// The **`add()`** method of the
  /// [ContentIndex] interface registers an item with the
  /// [content index](https://developer.mozilla.org/en-US/docs/Web/API/Content_Index_API).
  external JSPromise add(ContentDescription description);

  /// The **`delete()`** method of the
  /// [ContentIndex] interface unregisters an item from the currently indexed
  /// content.
  ///
  /// > **Note:** Calling `delete()` only affects the index. It does not delete
  /// > anything
  /// > from the [Cache].
  external JSPromise delete(String id);

  /// The **`getAll()`** method of the
  /// [ContentIndex] interface returns a `Promise` that resolves with
  /// an iterable list of content index entries.
  external JSPromise getAll();
}
extension type ContentIndexEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory ContentIndexEventInit({required String id});

  external set id(String value);
  external String get id;
}

/// The **`ContentIndexEvent`** interface of the
/// [content index](https://developer.mozilla.org/en-US/docs/Web/API/Content_Index_API)
/// defines the object used to represent the
/// [ServiceWorkerGlobalScope.contentdelete_event] event.
///
/// This event is sent to the
/// [global scope](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope)
/// of a [ServiceWorker]. It contains the id of the indexed content to be
/// removed.
///
/// The [ServiceWorkerGlobalScope.contentdelete_event] event is only fired when
/// the deletion happens due to interaction with the browser's built-in user
/// interface. It is not fired when the [ContentIndex.delete] method is called.
extension type ContentIndexEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory ContentIndexEvent(
    String type,
    ContentIndexEventInit init,
  );

  external String get id;
}
