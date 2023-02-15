// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/geometry.dart';
import 'package:web/src/dom/hr_time.dart';

typedef IntersectionObserverCallback = JSFunction;

@JS('IntersectionObserver')
@staticInterop
class IntersectionObserver {
  external factory IntersectionObserver();

  external factory IntersectionObserver.a1(
      IntersectionObserverCallback callback);

  external factory IntersectionObserver.a2(
    IntersectionObserverCallback callback,
    IntersectionObserverInit options,
  );
}

extension IntersectionObserverExtension on IntersectionObserver {
  external JSAny? get root;
  external JSString get rootMargin;
  external JSArray get thresholds;
  external JSVoid observe(Element target);
  external JSVoid unobserve(Element target);
  external JSVoid disconnect();
  external JSArray takeRecords();
}

@JS('IntersectionObserverEntry')
@staticInterop
class IntersectionObserverEntry {
  external factory IntersectionObserverEntry();

  external factory IntersectionObserverEntry.a1(
      IntersectionObserverEntryInit intersectionObserverEntryInit);
}

extension IntersectionObserverEntryExtension on IntersectionObserverEntry {
  external DOMHighResTimeStamp get time;
  external DOMRectReadOnly? get rootBounds;
  external DOMRectReadOnly get boundingClientRect;
  external DOMRectReadOnly get intersectionRect;
  external JSBoolean get isIntersecting;
  external JSNumber get intersectionRatio;
  external Element get target;
}

@JS('IntersectionObserverEntryInit')
@staticInterop
class IntersectionObserverEntryInit {
  external factory IntersectionObserverEntryInit();
}

extension IntersectionObserverEntryInitExtension
    on IntersectionObserverEntryInit {}

@JS('IntersectionObserverInit')
@staticInterop
class IntersectionObserverInit {
  external factory IntersectionObserverInit();
}

extension IntersectionObserverInitExtension on IntersectionObserverInit {}
