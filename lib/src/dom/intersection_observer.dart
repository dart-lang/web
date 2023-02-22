// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'geometry.dart';
import 'hr_time.dart';

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

@JS()
@staticInterop
@anonymous
class IntersectionObserverEntryInit {
  external factory IntersectionObserverEntryInit({
    required DOMHighResTimeStamp time,
    required DOMRectInit? rootBounds,
    required DOMRectInit boundingClientRect,
    required DOMRectInit intersectionRect,
    required JSBoolean isIntersecting,
    required JSNumber intersectionRatio,
    required Element target,
  });
}

extension IntersectionObserverEntryInitExtension
    on IntersectionObserverEntryInit {
  external set time(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get time;
  external set rootBounds(DOMRectInit? value);
  external DOMRectInit? get rootBounds;
  external set boundingClientRect(DOMRectInit value);
  external DOMRectInit get boundingClientRect;
  external set intersectionRect(DOMRectInit value);
  external DOMRectInit get intersectionRect;
  external set isIntersecting(JSBoolean value);
  external JSBoolean get isIntersecting;
  external set intersectionRatio(JSNumber value);
  external JSNumber get intersectionRatio;
  external set target(Element value);
  external Element get target;
}

@JS()
@staticInterop
@anonymous
class IntersectionObserverInit {
  external factory IntersectionObserverInit({
    JSAny? root,
    JSString rootMargin = '0px',
    JSAny threshold = 0,
  });
}

extension IntersectionObserverInitExtension on IntersectionObserverInit {
  external set root(JSAny? value);
  external JSAny? get root;
  external set rootMargin(JSString value);
  external JSString get rootMargin;
  external set threshold(JSAny value);
  external JSAny get threshold;
}
