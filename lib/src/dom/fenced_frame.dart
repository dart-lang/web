// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'html.dart';

typedef FencedFrameConfigSize = JSAny;
typedef FencedFrameConfigURL = JSString;
typedef ReportEventType = JSAny;
typedef OpaqueProperty = JSString;
typedef FenceReportingDestination = JSString;

@JS('HTMLFencedFrameElement')
@staticInterop
class HTMLFencedFrameElement implements HTMLElement {
  external factory HTMLFencedFrameElement();
}

extension HTMLFencedFrameElementExtension on HTMLFencedFrameElement {
  external set config(FencedFrameConfig? value);
  external FencedFrameConfig? get config;
  external set width(JSString value);
  external JSString get width;
  external set height(JSString value);
  external JSString get height;
}

@JS('FencedFrameConfig')
@staticInterop
class FencedFrameConfig {}

extension FencedFrameConfigExtension on FencedFrameConfig {
  external JSVoid setSharedStorageContext(JSString contextString);
  external FencedFrameConfigURL? get url;
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
    required JSString eventType,
    required JSString eventData,
    required JSArray destination,
  });
}

extension FenceEventExtension on FenceEvent {
  external set eventType(JSString value);
  external JSString get eventType;
  external set eventData(JSString value);
  external JSString get eventData;
  external set destination(JSArray value);
  external JSArray get destination;
}

@JS('Fence')
@staticInterop
class Fence {}

extension FenceExtension on Fence {
  external JSVoid reportEvent(ReportEventType event);
  external JSVoid setReportEventDataForAutomaticBeacons(FenceEvent event);
  external JSArray getNestedConfigs();
}
