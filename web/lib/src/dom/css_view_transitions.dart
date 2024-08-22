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

typedef UpdateCallback = JSFunction;

/// The **`ViewTransition`** interface of the [View Transitions API] represents
/// an active view transition, and provides functionality to react to the
/// transition reaching different states (e.g. ready to run the animation, or
/// animation finished) or skip the transition altogether.
///
/// This object type is made available in the following ways:
///
/// - In the case of same-document (SPA) transitions, it is returned by the
///   [Document.startViewTransition] method.
/// - In the case of cross-document (MPA) transitions, it is made available:
///   - In the outgoing page via the [Window.pageswap_event] event object's [PageSwapEvent.viewTransition] property.
///   - In the inbound page via the [Window.pagereveal_event] event object's [PageRevealEvent.viewTransition] property.
///
/// When a view transition is triggered by a `startViewTransition()` call (or a
/// page navigation in the case of MPA transitions), a sequence of steps is
/// followed as explained in
/// [The view transition process](https://developer.mozilla.org/en-US/docs/Web/API/View_Transitions_API/Using#the_view_transition_process).
/// This also explains when the different promises fulfill.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ViewTransition).
extension type ViewTransition._(JSObject _) implements JSObject {
  /// The **`skipTransition()`** method of the
  /// [ViewTransition] interface skips the animation part of the view
  /// transition, but doesn't skip running the associated view update.
  external void skipTransition();

  /// The **`updateCallbackDone`** read-only property of the
  /// [ViewTransition] interface is a `Promise` that fulfills when the promise
  /// returned by the [Document.startViewTransition] method's callback fulfills,
  /// or rejects when it rejects.
  ///
  /// `updateCallbackDone` is useful when you don't care about the
  /// success/failure of a same-document (SPA) view transition animation, and
  /// just want to know if and when the DOM is updated.
  ///
  /// > **Note:** In the case of a cross-document (MPA) view transition, the
  /// > `updateCallbackDone` promise of the associated `ViewTransition` is
  /// > automatically fulfilled.
  external JSPromise<JSAny?> get updateCallbackDone;

  /// The **`ready`** read-only property of the
  /// [ViewTransition] interface is a `Promise` that fulfills once the
  /// pseudo-element tree is created and the transition animation is about to
  /// start.
  ///
  /// `ready` will reject if the transition cannot begin. This can be due to
  /// misconfiguration, for example, duplicate s, or if the callback passed to
  /// [Document.startViewTransition] throws or returns a promise that rejects.
  external JSPromise<JSAny?> get ready;

  /// The **`finished`** read-only property of the
  /// [ViewTransition] interface is a `Promise` that fulfills once the
  /// transition animation is finished, and the new page view is visible and
  /// interactive to the user.
  ///
  /// `finished` will only reject in the case of a same-document (SPA)
  /// transition, if the callback passed to [Document.startViewTransition]
  /// throws or returns a promise that rejects. This would indicate that the new
  /// state of the page wasn't created.
  ///
  /// If a transition animation fails to start or is skipped during the
  /// transition using [ViewTransition.skipTransition], the end state is still
  /// reached therefore `finished` will still fulfill.
  external JSPromise<JSAny?> get finished;
}
