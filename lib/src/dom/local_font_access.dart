// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS()
@staticInterop
@anonymous
class QueryOptions {
  external factory QueryOptions({JSArray postscriptNames});
}

extension QueryOptionsExtension on QueryOptions {
  external set postscriptNames(JSArray value);
  external JSArray get postscriptNames;
}

@JS('FontData')
@staticInterop
class FontData {}

extension FontDataExtension on FontData {
  external JSPromise blob();
  external JSString get postscriptName;
  external JSString get fullName;
  external JSString get family;
  external JSString get style;
}
