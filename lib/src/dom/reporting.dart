// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef ReportList = JSArray;
typedef ReportingObserverCallback = JSFunction;
extension type ReportBody._(JSObject _) implements JSObject {}

extension ReportBodyExtension on ReportBody {
  external JSObject toJSON();
}

extension type Report._(JSObject _) implements JSObject {}

extension ReportExtension on Report {
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
}

extension ReportingObserverExtension on ReportingObserver {
  external void observe();
  external void disconnect();
  external ReportList takeRecords();
}

extension type ReportingObserverOptions._(JSObject _) implements JSObject {
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

extension type GenerateTestReportParameters._(JSObject _) implements JSObject {
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
