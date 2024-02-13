// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

typedef UpdateCallback = JSFunction;

/// The **`ViewTransition`** interface of the [View Transitions API] represents
/// a view transition, and provides functionality to react to the transition
/// reaching different states (e.g. ready to run the animation, or animation
/// finished) or skip the transition altogether.
///
/// This object type is returned by the [Document.startViewTransition] method.
/// When `startViewTransition()` is invoked, a sequence of steps is followed as
/// explained in
/// [The view transition process](https://developer.mozilla.org/en-US/docs/Web/API/View_Transitions_API#the_view_transition_process).
/// This also explains when the different promises fulfill.
extension type ViewTransition._(JSObject _) implements JSObject {
  /// The **`skipTransition()`** method of the
  /// [ViewTransition] interface skips the animation part of the view
  /// transition, but doesn't skip running the [Document.startViewTransition]
  /// callback that updates the DOM.
  external void skipTransition();
  external JSPromise<JSAny?> get updateCallbackDone;
  external JSPromise<JSAny?> get ready;
  external JSPromise<JSAny?> get finished;
}
