// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS('NavigatorBadge')
@staticInterop
class NavigatorBadge implements JSObject {}

extension NavigatorBadgeExtension on NavigatorBadge {
  external JSPromise setAppBadge([int contents]);
  external JSPromise clearAppBadge();
}
