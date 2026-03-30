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
import 'element_capture.dart';
import 'mediacapture_streams.dart';

/// The **`CropTarget`** interface of the [Screen Capture API] provides a static
/// method, [CropTarget.fromElement_static], which returns a `CropTarget`
/// instance that can be used to crop a captured video track to the area in
/// which a specified element is rendered.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CropTarget).
extension type CropTarget._(JSObject _) implements JSObject {
  /// The **`fromElement()`** static method of the [CropTarget] interface
  /// returns a `CropTarget` instance that can be used to crop a captured video
  /// track to the area in which a specified element is rendered.
  ///
  /// Because the Region Capture API crops to an area of the current browser tab
  /// rather than capturing a specific element, any content drawn on top of the
  /// cropped area will be shown in the capture.
  external static JSPromise<CropTarget> fromElement(Element element);
}

/// The **`BrowserCaptureMediaStreamTrack`** interface of the
/// [Screen Capture API] represents a single video track. It extends the
/// [MediaStreamTrack] class with methods to limit the part of a self-capture
/// stream (for example, a user's screen or window) that is captured.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/BrowserCaptureMediaStreamTrack).
extension type BrowserCaptureMediaStreamTrack._(JSObject _)
    implements MediaStreamTrack, JSObject {
  /// The **`cropTo()`** method of the [BrowserCaptureMediaStreamTrack]
  /// interface crops a self-capture stream to the area in which a specified DOM
  /// element is rendered.
  external JSPromise<JSAny?> cropTo(CropTarget? cropTarget);

  /// The **`clone()`** method of the [BrowserCaptureMediaStreamTrack] interface
  /// returns a clone of the original `BrowserCaptureMediaStreamTrack`.
  ///
  /// This method is functionally identical to [MediaStreamTrack.clone], except
  /// that it handles cases where cropping or restriction have been applied to
  /// the track. The returned clone is identical to the original
  /// `BrowserCaptureMediaStreamTrack`, but with any cropping or restriction
  /// removed.
  ///
  /// > [!NOTE]
  /// > In Chromium, if a track has clones, its
  /// > [BrowserCaptureMediaStreamTrack.cropTo] and
  /// > [BrowserCaptureMediaStreamTrack.restrictTo] methods will reject (see
  /// > [Chrome issue 41482026](https://issues.chromium.org/issues/41482026)).
  external BrowserCaptureMediaStreamTrack clone();

  /// The **`restrictTo()`** method of the [BrowserCaptureMediaStreamTrack]
  /// interface restricts a self-capture stream to a specific DOM element (and
  /// its descendants).
  external JSPromise<JSAny?> restrictTo(RestrictionTarget? RestrictionTarget);
}
