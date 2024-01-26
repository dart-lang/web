// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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

/// The **`NavigatorUAData`** interface of the  returns information about the
/// browser and operating system of a user.
///
/// An instance of this object is returned by calling [Navigator.userAgentData].
/// Therefore, this interface has no constructor.
///
/// > **Note:** The terms _high entropy_ and _low entropy_ refer to the amount
/// > of information these values reveal about the browser. The values returned
/// > as properties are deemed low entropy, and unlikely to identify a user. The
/// > values returned by [NavigatorUAData.getHighEntropyValues] could
/// > potentially reveal more information. These values are therefore retrieved
/// > via a `Promise`, allowing time for the browser to request user permission,
/// > or make other checks.
extension type NavigatorUAData._(JSObject _) implements JSObject {
  /// The **`getHighEntropyValues()`** method of the [NavigatorUAData] interface
  /// is a `Promise` that resolves with a dictionary object containing the _high
  /// entropy_ values the user-agent returns.
  ///
  /// > **Note:** The terms _high entropy_ and _low entropy_ refer to the amount
  /// > of information these values reveal about the browser.
  /// > The values returned as properties are deemed low entropy, and unlikely
  /// > to identify a user.
  /// > The values returned by [NavigatorUAData.getHighEntropyValues] could
  /// > potentially reveal more information.
  /// > These values are therefore retrieved via a `Promise`, allowing time for
  /// > the browser to request user permission, or make other checks.
  external JSPromise getHighEntropyValues(JSArray hints);

  /// The **`toJSON()`** method of the [NavigatorUAData] interface is a
  /// _serializer_ that returns a JSON representation of the _low entropy_
  /// properties of the `NavigatorUAData` object.
  ///
  /// > **Note:** The terms _high entropy_ and _low entropy_ refer to the amount
  /// > of information these values reveal about the browser. The low entropy
  /// > values returned by this method are those which do not reveal information
  /// > able to identify a user. High entropy values can only be returned by the
  /// > [NavigatorUAData.getHighEntropyValues] method.
  external UALowEntropyJSON toJSON();
  external JSArray get brands;
  external bool get mobile;
  external String get platform;
}
