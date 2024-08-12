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

import 'dom.dart';

/// The **`ContentVisibilityAutoStateChangeEvent`** interface is the event
/// object for the [element.contentvisibilityautostatechange_event] event, which
/// fires on any element with  set on it when it starts or stops being
/// [relevant to the user](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_containment#relevant_to_the_user)
/// and
/// [skipping its contents](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_containment#skips_its_contents).
///
/// While the element is not relevant (between the start and end events), the
/// user agent skips an element's rendering, including layout and painting.
/// This can significantly improve page rendering speed.
/// The [element.contentvisibilityautostatechange_event] event provides a way
/// for an app's code to also start or stop rendering processes (e.g. drawing on
/// a `canvas`) when they are not needed, thereby conserving processing power.
///
/// Note that even when hidden from view, element contents will remain
/// semantically relevant (e.g. to assistive technology users), so this signal
/// should not be used to skip significant semantic DOM updates.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ContentVisibilityAutoStateChangeEvent).
extension type ContentVisibilityAutoStateChangeEvent._(JSObject _)
    implements Event, JSObject {
  external factory ContentVisibilityAutoStateChangeEvent(
    String type, [
    ContentVisibilityAutoStateChangeEventInit eventInitDict,
  ]);

  /// The `skipped` read-only property of the
  /// [ContentVisibilityAutoStateChangeEvent] interface returns `true` if the
  /// user agent [skips the element's
  /// contents](/en-US/docs/Web/CSS/CSS_containment#skips_its_contents), or
  /// `false` otherwise.
  external bool get skipped;
}
extension type ContentVisibilityAutoStateChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory ContentVisibilityAutoStateChangeEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    bool skipped,
  });

  external bool get skipped;
  external set skipped(bool value);
}
