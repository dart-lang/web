// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'html.dart';

typedef FencedFrameConfigSize = JSAny;
typedef FencedFrameConfigURL = String;
typedef ReportEventType = JSAny;
typedef OpaqueProperty = String;
typedef FenceReportingDestination = String;

@JS('HTMLFencedFrameElement')
@staticInterop
class HTMLFencedFrameElement implements HTMLElement {
  external factory HTMLFencedFrameElement();
}

extension HTMLFencedFrameElementExtension on HTMLFencedFrameElement {
  external set config(FencedFrameConfig? value);
  external FencedFrameConfig? get config;
  external set width(String value);
  external String get width;
  external set height(String value);
  external String get height;
  external set allow(String value);
  external String get allow;
}

@JS('FencedFrameConfig')
@staticInterop
class FencedFrameConfig {}

extension FencedFrameConfigExtension on FencedFrameConfig {
  external void setSharedStorageContext(String contextString);
  external FencedFrameConfigSize? get containerWidth;
  external FencedFrameConfigSize? get containerHeight;
  external FencedFrameConfigSize? get contentWidth;
  external FencedFrameConfigSize? get contentHeight;
}

@JS()
@staticInterop
@anonymous
class FenceEvent {
  external factory FenceEvent({
    required String eventType,
    required String eventData,
    required JSArray destination,
    bool once,
  });
}

extension FenceEventExtension on FenceEvent {
  external set eventType(String value);
  external String get eventType;
  external set eventData(String value);
  external String get eventData;
  external set destination(JSArray value);
  external JSArray get destination;
  external set once(bool value);
  external bool get once;
}

@JS('Fence')
@staticInterop
class Fence {}

extension FenceExtension on Fence {
  external void reportEvent(ReportEventType event);
  external void setReportEventDataForAutomaticBeacons(FenceEvent event);
  external JSArray getNestedConfigs();
}
