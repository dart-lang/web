// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: provide_deprecation_message, unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef PermissionState = String;

/// The **`Permissions`** interface of the
/// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API)
/// provides the core Permission API functionality, such as methods for querying
/// and revoking permissions
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Permissions).
extension type Permissions._(JSObject _) implements JSObject {
  /// The **`query()`** method of the [Permissions] interface returns the state
  /// of a user permission on the global scope.
  ///
  /// The user permission names are defined in the respective specifications for
  /// each feature.
  /// The permissions supported by different browser versions are listed in the
  /// [compatibility data of the `Permissions` interface](https://developer.mozilla.org/en-US/docs/Web/API/Permissions#browser_compatibility)
  /// (see also the relevant source code for
  /// [Firefox values](https://searchfox.org/mozilla-central/source/dom/webidl/Permissions.webidl#10),
  /// [Chromium values](https://chromium.googlesource.com/chromium/src/+/refs/heads/main/third_party/blink/renderer/modules/permissions/permission_descriptor.idl),
  /// and
  /// [WebKit values](https://github.com/WebKit/WebKit/blob/main/Source/WebCore/Modules/permissions/PermissionName.idl)).
  ///
  /// The APIs that are gated by each permission are listed in
  /// [Permission-aware APIs](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API#permission-aware_apis)
  /// in the
  /// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API)
  /// overview topic.
  external JSPromise<PermissionStatus> query(JSObject permissionDesc);

  /// The **`revoke()`** method of the [Permissions] interface reverts a
  /// currently set permission back to its default state, which is usually
  /// `prompt`.
  /// This method is called on the global [Permissions] object
  /// [navigator.permissions].
  ///
  /// This method is removed from the main permissions API specification because
  /// its use case is unclear.
  /// Permissions are managed by the browser and the current permission model
  /// does not involve the site developer being able to imperatively request or
  /// revoke permissions. Browsers have shipped this API behind preferences but
  /// it's unlikely to reach the standards track.
  /// For more context, see the [original discussion to remove
  /// `permissions.revoke()`](https://github.com/w3c/permissions/issues/46).
  @deprecated
  external JSPromise<PermissionStatus> revoke(JSObject permissionDesc);
}

/// The **`PermissionStatus`** interface of the
/// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API)
/// provides the state of an object and an event handler for monitoring changes
/// to said state.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PermissionStatus).
extension type PermissionStatus._(JSObject _) implements EventTarget, JSObject {
  /// The **`state`** read-only property of the
  /// [PermissionStatus] interface returns the state of a requested permission.
  /// This property returns one of `'granted'`, `'denied'`, or
  /// `'prompt'`.
  external PermissionState get state;

  /// The **`name`** read-only property of the [PermissionStatus] interface
  /// returns the name of a requested permission.
  external String get name;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}
