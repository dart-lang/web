// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
@staticInterop
@anonymous
class MemoryMeasurement implements JSObject {
  external factory MemoryMeasurement({
    JSNumber bytes,
    JSArray breakdown,
  });
}

extension MemoryMeasurementExtension on MemoryMeasurement {
  external set bytes(JSNumber value);
  external JSNumber get bytes;
  external set breakdown(JSArray value);
  external JSArray get breakdown;
}

@JS()
@staticInterop
@anonymous
class MemoryBreakdownEntry implements JSObject {
  external factory MemoryBreakdownEntry({
    JSNumber bytes,
    JSArray attribution,
    JSArray types,
  });
}

extension MemoryBreakdownEntryExtension on MemoryBreakdownEntry {
  external set bytes(JSNumber value);
  external JSNumber get bytes;
  external set attribution(JSArray value);
  external JSArray get attribution;
  external set types(JSArray value);
  external JSArray get types;
}

@JS()
@staticInterop
@anonymous
class MemoryAttribution implements JSObject {
  external factory MemoryAttribution({
    JSString url,
    MemoryAttributionContainer container,
    JSString scope,
  });
}

extension MemoryAttributionExtension on MemoryAttribution {
  external set url(JSString value);
  external JSString get url;
  external set container(MemoryAttributionContainer value);
  external MemoryAttributionContainer get container;
  external set scope(JSString value);
  external JSString get scope;
}

@JS()
@staticInterop
@anonymous
class MemoryAttributionContainer implements JSObject {
  external factory MemoryAttributionContainer({
    JSString id,
    JSString src,
  });
}

extension MemoryAttributionContainerExtension on MemoryAttributionContainer {
  external set id(JSString value);
  external JSString get id;
  external set src(JSString value);
  external JSString get src;
}
