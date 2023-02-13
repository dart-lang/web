// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('QueryOptions')
@staticInterop
class QueryOptions {
  external factory QueryOptions();
}

extension QueryOptionsExtension on QueryOptions {
  // TODO
}

@JS('FontData')
@staticInterop
class FontData {
  external factory FontData();
}

extension FontDataExtension on FontData {
  external JSPromise blob();
  external JSString get postscriptName;
  external JSString get fullName;
  external JSString get family;
  external JSString get style;
}
