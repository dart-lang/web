// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Like `dart:js_interop_unsafe`, this library contains utilities that treat JS
/// objects as arbitrary sets of properties as well as those that expose JS's
/// runtime reflection capabilities. It should be used with care as it can
/// invalidate assumptions made by the statically type-annotated JS APIs used
/// elsewhere.
library;

export 'src/unsafe/object.dart';
