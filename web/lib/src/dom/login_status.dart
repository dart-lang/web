// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

typedef LoginStatus = String;

/// The **`NavigatorLogin`** interface of the [Federated Credential Management
/// (FedCM) API](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API)
/// defines login functionality for federated identity providers (IdPs).
/// Specifically, it enables a federated identity provider (IdP) to set its
/// login status when a user signs into or out of the IdP.
///
/// See
/// [Update login status using the Login Status API](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API/IDP_integration#update_login_status_using_the_login_status_api)
/// for more details of how this is used.
///
/// `NavigatorLogin` is accessed via the [Navigator.login] property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/NavigatorLogin).
extension type NavigatorLogin._(JSObject _) implements JSObject {
  /// The **`setStatus()`** method of the [NavigatorLogin] interface sets the
  /// login status of a federated identity provider (IdP), when called from the
  /// IdP's origin. By this, we mean "whether any users are logged into the IdP
  /// on the current browser or not". This should be called by the IdP site
  /// following a user login or logout.
  ///
  /// The browser stores this state for each IdP; the
  /// [FedCM API](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API)
  /// API then uses it to reduce the number of requests it makes to the IdP
  /// (because it does not need to waste time requesting accounts when there are
  /// no users logged in to the IdP). It also mitigates
  /// [potential timing attacks](https://github.com/w3c-fedid/FedCM/issues/447).
  ///
  /// See
  /// [Update login status using the Login Status API](https://developer.mozilla.org/en-US/docs/Web/API/FedCM_API/IDP_integration#update_login_status_using_the_login_status_api)
  /// for more information about FedCM login status.
  external JSPromise<JSAny?> setStatus(LoginStatus status);
}
