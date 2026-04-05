// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef UrnOrConfig = JSAny;
typedef ReportEventType = JSAny;
typedef FenceReportingDestination = String;

/// The **`HTMLFencedFrameElement`** interface represents a `fencedframe`
/// element in JavaScript and provides configuration properties.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/HTMLFencedFrameElement).
extension type HTMLFencedFrameElement._(JSObject _)
    implements HTMLElement, JSObject {
  /// Creates an [HTMLFencedFrameElement] using the tag 'fencedframe'.
  HTMLFencedFrameElement() : _ = document.createElement('fencedframe');

  /// The **`config`** property of the [HTMLFencedFrameElement] contains a
  /// [FencedFrameConfig] object, which represents the navigation of a
  /// `fencedframe`, i.e. what content will be displayed in it. A
  /// `FencedFrameConfig` is returned from a source such as the
  /// [Protected Audience API](https://developers.google.com/privacy-sandbox/private-advertising/protected-audience).
  external FencedFrameConfig? get config;
  external set config(FencedFrameConfig? value);

  /// The **`width`** property of the [HTMLFencedFrameElement] gets and sets the
  /// value of the corresponding `fencedframe` `width` attribute, which
  /// specifies the width of the element.
  ///
  /// The size of the embedded content may be set by internal `contentWidth` and
  /// `contentHeight` properties of the `<fencedframe>`'s
  /// [HTMLFencedFrameElement.config] object. In such cases, changing the
  /// `width` or [HTMLFencedFrameElement.height] of the `<fencedframe>` will
  /// change the size of the embedded container on the page, but the document
  /// inside the container will be visually scaled to fit. The reported width
  /// and height of the embedded document (i.e. [Window.innerWidth] and
  /// [Window.innerHeight]) will be unchanged.
  external String get width;
  external set width(String value);

  /// The **`height`** property of the [HTMLFencedFrameElement] gets and sets
  /// the value of the corresponding `fencedframe` `height` attribute, which
  /// specifies the height of the element.
  ///
  /// The size of the embedded content may be set by internal `contentWidth` and
  /// `contentHeight` properties of the `<fencedframe>`'s
  /// [HTMLFencedFrameElement.config] object. In such cases, changing the
  /// [HTMLFencedFrameElement.width] or `height` of the `<fencedframe>` will
  /// change the size of the embedded container on the page, but the document
  /// inside the container will be visually scaled to fit. The reported width
  /// and height of the embedded document (i.e. [Window.innerWidth] and
  /// [Window.innerHeight]) will be unchanged.
  external String get height;
  external set height(String value);
  external DOMTokenList get sandbox;

  /// The **`allow`** property of the [HTMLFencedFrameElement] gets and sets the
  /// value of the corresponding `fencedframe` `allow` attribute, which
  /// represents a
  /// [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy)
  /// applied to the content when it is first embedded.
  ///
  /// Not all permissions policies are allowed in fenced frames. The allowed
  /// permissions are listed at
  /// [Permissions policies available to fenced frames](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/fencedframe#permissions_policies_available_to_fenced_frames)
  /// — these are required for fenced frame content originating from the
  /// specified APIs to load. If you don't set the `allow` attribute, those
  /// permissions will be allowed by default. If you want to narrow down the
  /// permissions set, you need to make sure that all of the required
  /// permissions for the APIs you are using are set in the `allow` attribute.
  external String get allow;
  external set allow(String value);
}

/// The **`FencedFrameConfig`** interface represents the navigation of a
/// `fencedframe`, i.e. what content will be displayed in it.
///
/// `FencedFrameConfig` objects cannot be constructed manually via JavaScript.
/// They are returned from a source such as the
/// [Protected Audience API](https://developers.google.com/privacy-sandbox/private-advertising/protected-audience)
/// and set as the value of [HTMLFencedFrameElement.config].
///
/// A `FencedFrameConfig` object instance has an exposed method, but it also
/// maps to internal config information containing opaque properties not
/// accessible from JavaScript. This includes information such as the source of
/// the loaded content and interest groups for advertising purposes. It is key
/// to how fenced frames help to implement key use cases while respecting user
/// privacy.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FencedFrameConfig).
extension type FencedFrameConfig._(JSObject _) implements JSObject {
  external factory FencedFrameConfig(String url);

  /// The **`setSharedStorageContext()`** method of the
  /// [FencedFrameConfig] interface passes in contextual data from the embedding
  /// document to the `<fencedframe>`'s
  /// [shared storage](https://developers.google.com/privacy-sandbox/private-advertising/shared-storage).
  external void setSharedStorageContext(String contextString);
}
extension type FenceEvent._(JSObject _) implements JSObject {
  external factory FenceEvent({
    String eventType,
    String eventData,
    JSArray<JSString> destination,
    bool crossOriginExposed,
    bool once,
    String destinationURL,
  });

  external String get eventType;
  external set eventType(String value);
  external String get eventData;
  external set eventData(String value);
  external JSArray<JSString> get destination;
  external set destination(JSArray<JSString> value);
  external bool get crossOriginExposed;
  external set crossOriginExposed(bool value);
  external bool get once;
  external set once(bool value);
  external String get destinationURL;
  external set destinationURL(String value);
}

/// The **`Fence`** interface of the [Fenced Frame API] contains several
/// functions relevant to `fencedframe` functionality.
///
/// `Fence` objects are accessed through the [Window.fence] property, but they
/// are only available to documents embedded inside `fencedframe`s (loaded via
/// [FencedFrameConfig]s) or `iframe`s (loaded via opaque URNs).
///
/// > [!NOTE]
/// > See [How do `<fencedframe>`s
/// > work?](/en-US/docs/Web/API/Fenced_frame_API#how_do_fencedframes_work) for
/// > some description around `FencedFrameConfig`s and opaque URNs.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Fence).
extension type Fence._(JSObject _) implements JSObject {
  /// The **`reportEvent()`** method of the
  /// [Fence] interface triggers the submission of report data via a
  /// [beacon](https://developer.mozilla.org/en-US/docs/Web/API/Beacon_API) to
  /// one or more specific URLs registered via the
  /// [InterestGroupReportingScriptRunnerGlobalScope.registerAdBeacon] method of
  /// the
  /// [Protected Audience API](https://developers.google.com/privacy-sandbox/private-advertising/protected-audience),
  /// for the purpose of collecting ad auction results.
  ///
  /// > **Note:** [Fence.setReportEventDataForAutomaticBeacons] provides similar
  /// > report data submission, except in that case the submission is triggered
  /// > via a navigation rather than by an explicit method call.
  external void reportEvent([ReportEventType event]);

  /// The **`setReportEventDataForAutomaticBeacons()`** method of the
  /// [Fence] interface specifies event data that will be sent when a navigation
  /// occurs inside a `fencedframe`. This data will be sent via an automatic
  /// [beacon](https://developer.mozilla.org/en-US/docs/Web/API/Beacon_API) to
  /// one or more specific URLs registered via the
  /// [InterestGroupReportingScriptRunnerGlobalScope.registerAdBeacon] method of
  /// the
  /// [Protected Audience API](https://developers.google.com/privacy-sandbox/private-advertising/protected-audience),
  /// for the purpose of collecting reporting data for ad auction results.
  ///
  /// > **Note:** [Fence.reportEvent] provides similar report data submission,
  /// > except in that case the submission is triggered via an explicit method
  /// > call rather than a navigation.
  external void setReportEventDataForAutomaticBeacons([FenceEvent event]);

  /// The **`getNestedConfigs()`** method of the
  /// [Fence] interface returns the [FencedFrameConfig]s loaded into
  /// `<fencedframe>`s embedded inside the current `<fencedframe>`.
  external JSArray<FencedFrameConfig> getNestedConfigs();
  external JSPromise<JSAny?> disableUntrustedNetwork();
  external void notifyEvent(Event event);
}
