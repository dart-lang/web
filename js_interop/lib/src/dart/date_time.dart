// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../date.dart';

extension DateTimeToJSDate on DateTime {
  /// Converts this to a [JSDate] that represents the same instant in time.
  JSDate get toJS => JSDate.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
}
