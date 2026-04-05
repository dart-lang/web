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

extension type NavigatorUABrandVersion._(JSObject _) implements JSObject {
  external factory NavigatorUABrandVersion({
    String brand,
    String version,
  });

  external String get brand;
  external set brand(String value);
  external String get version;
  external set version(String value);
}
extension type UADataValues._(JSObject _) implements JSObject {
  external factory UADataValues({
    String architecture,
    String bitness,
    JSArray<NavigatorUABrandVersion> brands,
    JSArray<JSString> formFactors,
    JSArray<NavigatorUABrandVersion> fullVersionList,
    String model,
    bool mobile,
    String platform,
    String platformVersion,
    String uaFullVersion,
    bool wow64,
  });

  external String get architecture;
  external set architecture(String value);
  external String get bitness;
  external set bitness(String value);
  external JSArray<NavigatorUABrandVersion> get brands;
  external set brands(JSArray<NavigatorUABrandVersion> value);
  external JSArray<JSString> get formFactors;
  external set formFactors(JSArray<JSString> value);
  external JSArray<NavigatorUABrandVersion> get fullVersionList;
  external set fullVersionList(JSArray<NavigatorUABrandVersion> value);
  external String get model;
  external set model(String value);
  external bool get mobile;
  external set mobile(bool value);
  external String get platform;
  external set platform(String value);
  external String get platformVersion;
  external set platformVersion(String value);
  external String get uaFullVersion;
  external set uaFullVersion(String value);
  external bool get wow64;
  external set wow64(bool value);
}
extension type UALowEntropyJSON._(JSObject _) implements JSObject {
  external factory UALowEntropyJSON({
    JSArray<NavigatorUABrandVersion> brands,
    bool mobile,
    String platform,
  });

  external JSArray<NavigatorUABrandVersion> get brands;
  external set brands(JSArray<NavigatorUABrandVersion> value);
  external bool get mobile;
  external set mobile(bool value);
  external String get platform;
  external set platform(String value);
}

/// The **`NavigatorUAData`** interface of the  returns information about the
/// browser and operating system of a user.
///
/// An instance of this object is returned by calling [Navigator.userAgentData]
/// or [WorkerNavigator.userAgentData]. Therefore, this interface has no
/// constructor.
///
/// > [!NOTE]
/// > The terms _high entropy_ and _low entropy_ refer to the amount of
/// > information these values reveal about the browser. The values returned as
/// > properties are deemed low entropy, and unlikely to identify a user. The
/// > values returned by [NavigatorUAData.getHighEntropyValues] could
/// > potentially reveal more information. These values are therefore retrieved
/// > via a `Promise`, allowing time for the browser to request user permission,
/// > or make other checks.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUAData).
extension type NavigatorUAData._(JSObject _) implements JSObject {
  /// The **`getHighEntropyValues()`** method of the [NavigatorUAData] interface
  /// is a `Promise` that resolves with a dictionary object containing the _high
  /// entropy_ values the user-agent returns.
  ///
  /// > [!NOTE]
  /// > The terms _high entropy_ and _low entropy_ refer to the amount of
  /// > information these values reveal about the browser.
  /// > The values returned as properties are deemed low entropy, and unlikely
  /// > to identify a user.
  /// > The values returned by `getHighEntropyValues()` could potentially reveal
  /// > more information.
  /// > These values are therefore retrieved via a `Promise`, allowing time for
  /// > the browser to request user permission, or make other checks.
  external JSPromise<UADataValues> getHighEntropyValues(
      JSArray<JSString> hints);

  /// The **`toJSON()`** method of the [NavigatorUAData] interface is a
  /// _serializer_ that returns a JSON representation of the _low entropy_
  /// properties of the `NavigatorUAData` object.
  ///
  /// > [!NOTE]
  /// > The terms _high entropy_ and _low entropy_ refer to the amount of
  /// > information these values reveal about the browser. The low entropy
  /// > values returned by this method are those which do not reveal information
  /// > able to identify a user. High entropy values can only be returned by the
  /// > [NavigatorUAData.getHighEntropyValues] method.
  external UALowEntropyJSON toJSON();

  /// The **`brands`** read-only property of the [NavigatorUAData] interface
  /// returns an array of brand information.
  external JSArray<NavigatorUABrandVersion> get brands;

  /// The **`mobile`** read-only property of the [NavigatorUAData] interface
  /// returns a value indicating whether the device is a mobile device.
  external bool get mobile;

  /// The **`platform`** read-only property of the [NavigatorUAData] interface
  /// returns the platform brand information.
  external String get platform;
}
