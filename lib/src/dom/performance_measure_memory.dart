// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS('MemoryMeasurement')
@staticInterop
class MemoryMeasurement {
  external factory MemoryMeasurement();
}

extension MemoryMeasurementExtension on MemoryMeasurement {}

@JS('MemoryBreakdownEntry')
@staticInterop
class MemoryBreakdownEntry {
  external factory MemoryBreakdownEntry();
}

extension MemoryBreakdownEntryExtension on MemoryBreakdownEntry {}

@JS('MemoryAttribution')
@staticInterop
class MemoryAttribution {
  external factory MemoryAttribution();
}

extension MemoryAttributionExtension on MemoryAttribution {}

@JS('MemoryAttributionContainer')
@staticInterop
class MemoryAttributionContainer {
  external factory MemoryAttributionContainer();
}

extension MemoryAttributionContainerExtension on MemoryAttributionContainer {}
