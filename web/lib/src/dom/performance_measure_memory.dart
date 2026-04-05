// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

extension type MemoryMeasurement._(JSObject _) implements JSObject {
  external factory MemoryMeasurement({
    int bytes,
    JSArray<MemoryBreakdownEntry> breakdown,
  });

  external int get bytes;
  external set bytes(int value);
  external JSArray<MemoryBreakdownEntry> get breakdown;
  external set breakdown(JSArray<MemoryBreakdownEntry> value);
}
extension type MemoryBreakdownEntry._(JSObject _) implements JSObject {
  external factory MemoryBreakdownEntry({
    int bytes,
    JSArray<MemoryAttribution> attribution,
    JSArray<JSString> types,
  });

  external int get bytes;
  external set bytes(int value);
  external JSArray<MemoryAttribution> get attribution;
  external set attribution(JSArray<MemoryAttribution> value);
  external JSArray<JSString> get types;
  external set types(JSArray<JSString> value);
}
extension type MemoryAttribution._(JSObject _) implements JSObject {
  external factory MemoryAttribution({
    String url,
    MemoryAttributionContainer container,
    String scope,
  });

  external String get url;
  external set url(String value);
  external MemoryAttributionContainer get container;
  external set container(MemoryAttributionContainer value);
  external String get scope;
  external set scope(String value);
}
extension type MemoryAttributionContainer._(JSObject _) implements JSObject {
  external factory MemoryAttributionContainer({
    String id,
    String src,
  });

  external String get id;
  external set id(String value);
  external String get src;
  external set src(String value);
}
