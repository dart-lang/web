// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library ua_client_hints;

import 'dart:js_interop';

extension type NavigatorUABrandVersion._(JSObject _) implements JSObject {
  external factory NavigatorUABrandVersion({
    String brand,
    String version,
  });

  external set brand(String value);
  external String get brand;
  external set version(String value);
  external String get version;
}
extension type UADataValues._(JSObject _) implements JSObject {
  external factory UADataValues({
    String architecture,
    String bitness,
    JSArray brands,
    JSArray formFactor,
    JSArray fullVersionList,
    String model,
    bool mobile,
    String platform,
    String platformVersion,
    String uaFullVersion,
    bool wow64,
  });

  external set architecture(String value);
  external String get architecture;
  external set bitness(String value);
  external String get bitness;
  external set brands(JSArray value);
  external JSArray get brands;
  external set formFactor(JSArray value);
  external JSArray get formFactor;
  external set fullVersionList(JSArray value);
  external JSArray get fullVersionList;
  external set model(String value);
  external String get model;
  external set mobile(bool value);
  external bool get mobile;
  external set platform(String value);
  external String get platform;
  external set platformVersion(String value);
  external String get platformVersion;
  external set uaFullVersion(String value);
  external String get uaFullVersion;
  external set wow64(bool value);
  external bool get wow64;
}
extension type UALowEntropyJSON._(JSObject _) implements JSObject {
  external factory UALowEntropyJSON({
    JSArray brands,
    bool mobile,
    String platform,
  });

  external set brands(JSArray value);
  external JSArray get brands;
  external set mobile(bool value);
  external bool get mobile;
  external set platform(String value);
  external String get platform;
}
extension type NavigatorUAData._(JSObject _) implements JSObject {
  external JSPromise getHighEntropyValues(JSArray hints);
  external UALowEntropyJSON toJSON();
  external JSArray get brands;
  external bool get mobile;
  external String get platform;
}
