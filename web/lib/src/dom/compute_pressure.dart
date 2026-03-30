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

typedef PressureUpdateCallback = JSFunction;
typedef PressureSource = String;
typedef PressureState = String;

/// @AvailableInWorkers("window_and_worker_except_service")
///
/// The **`PressureObserver`** interface is part of the
/// [Compute Pressure API](https://developer.mozilla.org/en-US/docs/Web/API/Compute_Pressure_API)
/// and is used to observe the pressure changes of system resources such as the
/// CPU.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PressureObserver).
extension type PressureObserver._(JSObject _) implements JSObject {
  external factory PressureObserver(PressureUpdateCallback callback);

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The static **`knownSources`** read-only property of the [PressureObserver]
  /// interface returns an array of the [PressureRecord.source] values supported
  /// by the user agent in alphabetical order.
  ///
  /// > [!NOTE]
  /// > The list of supported sources varies per browser, operating system, and
  /// > hardware, and is evolving. This property is merely a hint about source
  /// > types the user agents supports. Call [PressureObserver.observe] and
  /// > check for a `NotSupportedError` to see if pressure observation is
  /// > possible.
  external static JSArray<JSString> get knownSources;

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The **`observe()`** method of the [PressureObserver] interface tells the
  /// pressure observer to start observing pressure changes. After this method
  /// is called, the observer will call its callback function when a pressure
  /// record for the specified `source` is observed.
  ///
  /// When a matching [PressureRecord] is obtained, the pressure observer's
  /// callback function is invoked.
  external JSPromise<JSAny?> observe(
    PressureSource source, [
    PressureObserverOptions options,
  ]);

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The **`unobserve()`** method of the [PressureObserver] interface stops the
  /// pressure observer callback from receiving pressure records from the
  /// specified source.
  external void unobserve(PressureSource source);

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The **`disconnect()`** method of the [PressureObserver] interface stops
  /// the pressure observer callback from receiving pressure records from all
  /// sources.
  external void disconnect();

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The **`takeRecords()`** method of the [PressureObserver] interface returns
  /// the current list of pressure records stored in the pressure observer,
  /// emptying it out.
  ///
  /// It is useful when you want to a stop observing a source but would like to
  /// be sure to get any records that have not yet been passed into the observer
  /// callback.
  external JSArray<PressureRecord> takeRecords();
}

/// @AvailableInWorkers("window_and_worker_except_service")
///
/// The **`PressureRecord`** interface is part of the
/// [Compute Pressure API](https://developer.mozilla.org/en-US/docs/Web/API/Compute_Pressure_API)
/// and describes the pressure trend of a source at a specific moment of
/// transition.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PressureRecord).
extension type PressureRecord._(JSObject _) implements JSObject {
  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The **`toJSON()`** method is a ; it returns a JSON representation of the
  /// [PressureRecord] object.
  external JSObject toJSON();

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The read-only **`source`** property is a string indicating the origin
  /// source from which the record is coming.
  external PressureSource get source;

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The read-only **`state`** property is a string indicating the pressure
  /// state recorded.
  external PressureState get state;

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The read-only **`time`** property returns the  recorded for a
  /// [PressureRecord]. It corresponds to the time the data was obtained from
  /// the system relative to the
  /// [time origin of the global object](https://developer.mozilla.org/en-US/docs/Web/API/Performance/timeOrigin)
  /// in which the [PressureObserver] generated the notification.
  external double get time;
}
extension type PressureObserverOptions._(JSObject _) implements JSObject {
  external factory PressureObserverOptions({int sampleInterval});

  external int get sampleInterval;
  external set sampleInterval(int value);
}
