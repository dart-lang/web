// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS('HTMLAttributionSrcElementUtils')
@staticInterop
class HTMLAttributionSrcElementUtils {}

extension HTMLAttributionSrcElementUtilsExtension
    on HTMLAttributionSrcElementUtils {
  external set attributionSrc(JSString value);
  external JSString get attributionSrc;
}
