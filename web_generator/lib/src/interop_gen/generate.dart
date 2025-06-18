// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart';

Expression generateJSAnnotation([String? name]) {
  return refer('JS', 'dart:js_interop')
      .call([if (name != null) literalString(name)]);
}
