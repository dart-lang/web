// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef ReportList = JSArray;
typedef ReportingObserverCallback = JSFunction;

@JS('ReportBody')
@staticInterop
class ReportBody {}

extension ReportBodyExtension on ReportBody {
  external JSObject toJSON();
}

@JS('Report')
@staticInterop
class Report {}

extension ReportExtension on Report {
  external JSObject toJSON();
  external JSString get type;
  external JSString get url;
  external ReportBody? get body;
}

@JS('ReportingObserver')
@staticInterop
class ReportingObserver {
  external factory ReportingObserver(
    ReportingObserverCallback callback, [
    ReportingObserverOptions options,
  ]);
}

extension ReportingObserverExtension on ReportingObserver {
  external JSVoid observe();
  external JSVoid disconnect();
  external ReportList takeRecords();
}

@JS()
@staticInterop
@anonymous
class ReportingObserverOptions {
  external factory ReportingObserverOptions({
    JSArray types,
    JSBoolean buffered,
  });
}

extension ReportingObserverOptionsExtension on ReportingObserverOptions {
  external set types(JSArray value);
  external JSArray get types;
  external set buffered(JSBoolean value);
  external JSBoolean get buffered;
}

@JS()
@staticInterop
@anonymous
class GenerateTestReportParameters {
  external factory GenerateTestReportParameters({
    required JSString message,
    JSString group,
  });
}

extension GenerateTestReportParametersExtension
    on GenerateTestReportParameters {
  external set message(JSString value);
  external JSString get message;
  external set group(JSString value);
  external JSString get group;
}
