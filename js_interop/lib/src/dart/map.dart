// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.p

import 'dart:js_interop';

import '../record.dart';

/// Conversion from [Map] to [JSRecord].
extension MapToJSRecord<V extends JSAny?> on Map<String, V> {
  /// Converts [this] to a [JSRecord] by cloning it.
  JSRecord<V> get toJSRecord => JSRecord.ofMap<V>(this);
}
