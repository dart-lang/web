// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';

/// The **`ContentVisibilityAutoStateChangeEvent`** interface is the event
/// object for the [element/contentvisibilityautostatechange_event] event, which
/// fires on any element with  set on it when it starts or stops being
/// [relevant to the user](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_containment#relevant_to_the_user)
/// and
/// [skipping its contents](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_containment#skips_its_contents).
///
/// While the element is not relevant (between the start and end events), the
/// user agent skips an element's rendering, including layout and painting.
/// This can significantly improve page rendering speed.
/// The [element/contentvisibilityautostatechange_event] event provides a way
/// for an app's code to also start or stop rendering processes (e.g. drawing on
/// a `canvas`) when they are not needed, thereby conserving processing power.
///
/// Note that even when hidden from view, element contents will remain
/// semantically relevant (e.g. to assistive technology users), so this signal
/// should not be used to skip significant semantic DOM updates.
@JS('ContentVisibilityAutoStateChangeEvent')
@staticInterop
class ContentVisibilityAutoStateChangeEvent implements Event {
  external factory ContentVisibilityAutoStateChangeEvent(
    String type, [
    ContentVisibilityAutoStateChangeEventInit eventInitDict,
  ]);
}

extension ContentVisibilityAutoStateChangeEventExtension
    on ContentVisibilityAutoStateChangeEvent {
  external bool get skipped;
}

@JS()
@staticInterop
@anonymous
class ContentVisibilityAutoStateChangeEventInit implements EventInit {
  external factory ContentVisibilityAutoStateChangeEventInit({bool skipped});
}

extension ContentVisibilityAutoStateChangeEventInitExtension
    on ContentVisibilityAutoStateChangeEventInit {
  external set skipped(bool value);
  external bool get skipped;
}
