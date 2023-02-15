// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/service_workers.dart';

typedef ContentCategory = JSString;

@JS('ContentDescription')
@staticInterop
class ContentDescription {
  external factory ContentDescription();
}

extension ContentDescriptionExtension on ContentDescription {}

@JS('ContentIndex')
@staticInterop
class ContentIndex {
  external factory ContentIndex();
}

extension ContentIndexExtension on ContentIndex {
  external JSPromise add(ContentDescription description);
  external JSPromise delete(JSString id);
  external JSPromise getAll();
}

@JS('ContentIndexEventInit')
@staticInterop
class ContentIndexEventInit extends ExtendableEventInit {
  external factory ContentIndexEventInit();
}

extension ContentIndexEventInitExtension on ContentIndexEventInit {}

@JS('ContentIndexEvent')
@staticInterop
class ContentIndexEvent extends ExtendableEvent {
  external factory ContentIndexEvent();

  external factory ContentIndexEvent.a1(
    JSString type,
    ContentIndexEventInit init,
  );
}

extension ContentIndexEventExtension on ContentIndexEvent {
  external JSString get id;
}
