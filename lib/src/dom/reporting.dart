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
extension type ReportBody._(JSObject _) implements JSObject {
  /// The **`toJSON()`** method of the [ReportBody] interface is a _serializer_,
  /// and returns a JSON representation of the `ReportBody` object.
  external JSObject toJSON();
}
extension type Report._(JSObject _) implements JSObject {
  external JSObject toJSON();
  external String get type;
  external String get url;
  external ReportBody? get body;
}
extension type ReportingObserver._(JSObject _) implements JSObject {
  external factory ReportingObserver(
    ReportingObserverCallback callback, [
    ReportingObserverOptions options,
  ]);

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
extension type ReportingObserverOptions._(JSObject _) implements JSObject {
  external factory ReportingObserverOptions({
    JSArray types,
    bool buffered,
  });

  external set types(JSArray value);
  external JSArray get types;
  external set buffered(bool value);
  external bool get buffered;
}
extension type GenerateTestReportParameters._(JSObject _) implements JSObject {
  external factory GenerateTestReportParameters({
    required String message,
    String group,
  });

  external set message(String value);
  external String get message;
  external set group(String value);
  external String get group;
}
