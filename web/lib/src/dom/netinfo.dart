// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef Megabit = num;
typedef Millisecond = int;
typedef EffectiveConnectionType = String;

/// The **`NetworkInformation`** interface of the
/// [Network Information API](https://developer.mozilla.org/en-US/docs/Web/API/Network_Information_API)
/// provides information about the connection a device is using to communicate
/// with the network and provides a means for scripts to be notified if the
/// connection type changes.
/// The `NetworkInformation` interface cannot be instantiated. It is instead
/// accessed through the `connection` property of the [Navigator] interface or
/// the [WorkerNavigator] interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/NetworkInformation).
extension type NetworkInformation._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`effectiveType`** read-only property of the
  /// [NetworkInformation] interface returns the effective type of the
  /// connection
  /// meaning one of `slow-2g`, `2g`, `3g`, or `4g`. This value is determined
  /// using a
  /// combination of recently observed, round-trip time and downlink values.
  external EffectiveConnectionType get effectiveType;

  /// The **`downlink`** read-only property of the
  /// [NetworkInformation] interface returns the effective bandwidth estimate in
  /// megabits per second, rounded to the nearest multiple of 25 kilobits per
  /// seconds. This
  /// value is based on recently observed application layer throughput across
  /// recently active
  /// connections, excluding connections made to a private address space. In the
  /// absence of
  /// recent bandwidth measurement data, the attribute value is determined by
  /// the properties
  /// of the underlying connection technology.
  external double get downlink;

  /// The **`rtt`** read-only property of the [NetworkInformation] interface
  /// returns the estimated effective round-trip time of the current connection,
  /// rounded to the nearest multiple of 25 milliseconds.
  /// This value is based on recently observed application-layer RTT
  /// measurements across recently active connections.
  /// It excludes connections made to a private address space.
  /// If no recent measurement data is available, the value is based on the
  /// properties of the underlying connection technology.
  external Millisecond get rtt;
  external EventHandler get onchange;
  external set onchange(EventHandler value);

  /// The **`saveData`** read-only
  /// property of the [NetworkInformation] interface returns `true` if the user
  /// has set a reduced data usage option on the user agent.
  external bool get saveData;
}
