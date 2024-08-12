// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'css_typed_om.dart';
import 'dom.dart';

typedef IterationCompositeOperation = String;
extension type TimelineRangeOffset._(JSObject _) implements JSObject {
  external factory TimelineRangeOffset({
    String? rangeName,
    CSSNumericValue offset,
  });

  external String? get rangeName;
  external set rangeName(String? value);
  external CSSNumericValue get offset;
  external set offset(CSSNumericValue value);
}

/// The AnimationPlaybackEvent interface of the
/// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
/// represents animation events.
///
/// As animations play, they report changes to their [Animation.playState]
/// through animation events.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/AnimationPlaybackEvent).
extension type AnimationPlaybackEvent._(JSObject _) implements Event, JSObject {
  external factory AnimationPlaybackEvent(
    String type, [
    AnimationPlaybackEventInit eventInitDict,
  ]);

  /// The **`currentTime`** read-only property of the [AnimationPlaybackEvent]
  /// interface represents the current time of the animation that generated the
  /// event at the moment the event is queued. This will be unresolved if the
  /// animation was `idle` at the time the event was generated.
  external CSSNumberish? get currentTime;

  /// The **`timelineTime`** read-only property of the [AnimationPlaybackEvent]
  /// interface represents the time value of the animation's [AnimationTimeline]
  /// at the moment the event is queued. This will be unresolved if the
  /// animation was not associated with a timeline at the time the event was
  /// generated or if the associated timeline was inactive.
  external CSSNumberish? get timelineTime;
}
extension type AnimationPlaybackEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory AnimationPlaybackEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    CSSNumberish? currentTime,
    CSSNumberish? timelineTime,
  });

  external CSSNumberish? get currentTime;
  external set currentTime(CSSNumberish? value);
  external CSSNumberish? get timelineTime;
  external set timelineTime(CSSNumberish? value);
}
