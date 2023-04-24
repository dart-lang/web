// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
@staticInterop
@anonymous
class NavigatorUABrandVersion {
  external factory NavigatorUABrandVersion({
    JSString brand,
    JSString version,
  });
}

extension NavigatorUABrandVersionExtension on NavigatorUABrandVersion {
  external set brand(JSString value);
  external JSString get brand;
  external set version(JSString value);
  external JSString get version;
}

@JS()
@staticInterop
@anonymous
class UADataValues {
  external factory UADataValues({
    JSString architecture,
    JSString bitness,
    JSArray brands,
    JSString formFactor,
    JSArray fullVersionList,
    JSString model,
    JSBoolean mobile,
    JSString platform,
    JSString platformVersion,
    JSString uaFullVersion,
    JSBoolean wow64,
  });
}

extension UADataValuesExtension on UADataValues {
  external set architecture(JSString value);
  external JSString get architecture;
  external set bitness(JSString value);
  external JSString get bitness;
  external set brands(JSArray value);
  external JSArray get brands;
  external set formFactor(JSString value);
  external JSString get formFactor;
  external set fullVersionList(JSArray value);
  external JSArray get fullVersionList;
  external set model(JSString value);
  external JSString get model;
  external set mobile(JSBoolean value);
  external JSBoolean get mobile;
  external set platform(JSString value);
  external JSString get platform;
  external set platformVersion(JSString value);
  external JSString get platformVersion;
  external set uaFullVersion(JSString value);
  external JSString get uaFullVersion;
  external set wow64(JSBoolean value);
  external JSBoolean get wow64;
}

@JS()
@staticInterop
@anonymous
class UALowEntropyJSON {
  external factory UALowEntropyJSON({
    JSArray brands,
    JSBoolean mobile,
    JSString platform,
  });
}

extension UALowEntropyJSONExtension on UALowEntropyJSON {
  external set brands(JSArray value);
  external JSArray get brands;
  external set mobile(JSBoolean value);
  external JSBoolean get mobile;
  external set platform(JSString value);
  external JSString get platform;
}

@JS('NavigatorUAData')
@staticInterop
class NavigatorUAData {}

extension NavigatorUADataExtension on NavigatorUAData {
  external JSPromise getHighEntropyValues(JSArray hints);
  external UALowEntropyJSON toJSON();
  external JSArray get brands;
  external JSBoolean get mobile;
  external JSString get platform;
}

@JS('NavigatorUA')
@staticInterop
class NavigatorUA {}

extension NavigatorUAExtension on NavigatorUA {
  external NavigatorUAData get userAgentData;
}
