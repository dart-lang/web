// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'webxr.dart';

/// The **`XRAnchor`** interface creates anchors which keep track of the pose
/// that is fixed relative to the real world. With anchors, you can specify
/// poses in the world that need to be updated to correctly reflect the evolving
/// understanding of the world, such that the poses remain aligned with the same
/// place in the physical world. That helps to build an illusion that the placed
/// objects are really present in the user's environment.
@JS('XRAnchor')
@staticInterop
class XRAnchor {}

extension XRAnchorExtension on XRAnchor {
  external JSPromise requestPersistentHandle();

  /// The **`delete()`** method of the [XRAnchor] interface removes an anchor.
  /// This can be useful when an application is no longer interested in
  /// receiving updates to an anchor.
  external void delete();
  external XRSpace get anchorSpace;
}

/// The **`XRAnchorSet`** interface exposes a collection of anchors. Its
/// instances are returned by [XRFrame.trackedAnchors] and are
/// [`Set`-like objects](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set#set-like_browser_apis).
@JS('XRAnchorSet')
@staticInterop
class XRAnchorSet {}

extension XRAnchorSetExtension on XRAnchorSet {}
