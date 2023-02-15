// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS('NavigatorUABrandVersion')
@staticInterop
class NavigatorUABrandVersion {
  external factory NavigatorUABrandVersion();
}

extension NavigatorUABrandVersionExtension on NavigatorUABrandVersion {}

@JS('UADataValues')
@staticInterop
class UADataValues {
  external factory UADataValues();
}

extension UADataValuesExtension on UADataValues {}

@JS('UALowEntropyJSON')
@staticInterop
class UALowEntropyJSON {
  external factory UALowEntropyJSON();
}

extension UALowEntropyJSONExtension on UALowEntropyJSON {}

@JS('NavigatorUAData')
@staticInterop
class NavigatorUAData {
  external factory NavigatorUAData();
}

extension NavigatorUADataExtension on NavigatorUAData {
  external JSArray get brands;
  external JSBoolean get mobile;
  external JSString get platform;
  external JSPromise getHighEntropyValues(JSArray hints);
  external UALowEntropyJSON toJSON();
}

@JS('NavigatorUA')
@staticInterop
class NavigatorUA {
  external factory NavigatorUA();
}

extension NavigatorUAExtension on NavigatorUA {
  external NavigatorUAData get userAgentData;
}
