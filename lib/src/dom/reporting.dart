// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef ReportList = JSArray;
typedef ReportingObserverCallback = JSFunction;

/// The **`ReportBody`** interface of the [Reporting API] represents the body of
/// a report. Individual report types inherit from this interface, adding
/// specific attributes relevant to the particular report.
///
/// ### Reports that inherit from `ReportBody`
///
/// - [CSPViolationReportBody]
/// - [DeprecationReportBody]
/// - [InterventionReportBody]
///
/// An instance of `ReportBody` is returned as the value of [Report.body]. The
/// interface has no constructor.
@JS('ReportBody')
@staticInterop
class ReportBody {}

extension ReportBodyExtension on ReportBody {
  /// The **`toJSON()`** method of the [ReportBody] interface is a _serializer_,
  /// and returns a JSON representation of the `ReportBody` object.
  external JSObject toJSON();
}

/// The `Report` interface of the
/// [Reporting API](https://developer.mozilla.org/en-US/docs/Web/API/Reporting_API)
/// represents a single report.
///
/// Reports can be accessed in a number of ways:
///
/// - Via the [ReportingObserver.takeRecords] method — this returns all reports
///   in an observer's report queue, and then empties the queue.
/// - Via the `reports` parameter of the callback function passed into the
///   [`ReportingObserver()`](/en-US/docs/Web/API/ReportingObserver/ReportingObserver)
///   constructor upon creation of a new observer instance. This contains the
///   list of reports currently contained in the observer's report queue.
/// - By sending requests to the endpoints defined via the  HTTP header.
@JS('Report')
@staticInterop
class Report {}

extension ReportExtension on Report {
  external JSObject toJSON();
  external String get type;
  external String get url;
  external ReportBody? get body;
}

/// The `ReportingObserver` interface of the
/// [Reporting API](https://developer.mozilla.org/en-US/docs/Web/API/Reporting_API)
/// allows you to collect and access reports.
@JS('ReportingObserver')
@staticInterop
class ReportingObserver {
  external factory ReportingObserver(
    ReportingObserverCallback callback, [
    ReportingObserverOptions options,
  ]);
}

extension ReportingObserverExtension on ReportingObserver {
  /// The **`observe()`** method of the
  /// [ReportingObserver] interface instructs a reporting observer to start
  /// collecting reports in its report queue.
  external void observe();

  /// The **`disconnect()`** method of the
  /// [ReportingObserver] interface stops a reporting observer that had
  /// previously started observing from collecting reports.
  ///
  /// After calling `disconnect()`, neither
  /// [ReportingObserver.takeRecords] nor the `records` parameter of
  /// the
  /// [`ReportingObserver()`](/en-US/docs/Web/API/ReportingObserver/ReportingObserver)
  /// callback will return any reports. The associated observer will no longer
  /// be active.
  external void disconnect();

  /// The **`takeRecords()`** method of the
  /// [ReportingObserver] interface returns the current list of reports
  /// contained
  /// in the observer's report queue, and empties the queue.
  external ReportList takeRecords();
}

@JS()
@staticInterop
@anonymous
class ReportingObserverOptions {
  external factory ReportingObserverOptions({
    JSArray types,
    bool buffered,
  });
}

extension ReportingObserverOptionsExtension on ReportingObserverOptions {
  external set types(JSArray value);
  external JSArray get types;
  external set buffered(bool value);
  external bool get buffered;
}

@JS()
@staticInterop
@anonymous
class GenerateTestReportParameters {
  external factory GenerateTestReportParameters({
    required String message,
    String group,
  });
}

extension GenerateTestReportParametersExtension
    on GenerateTestReportParameters {
  external set message(String value);
  external String get message;
  external set group(String value);
  external String get group;
}
