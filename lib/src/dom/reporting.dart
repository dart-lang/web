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
class ReportBody {
  external factory ReportBody();
}

extension ReportBodyExtension on ReportBody {
  external JSObject toJSON();
}

@JS('Report')
@staticInterop
class Report {
  external factory Report();
}

extension ReportExtension on Report {
  external JSObject toJSON();
  external JSString get type;
  external JSString get url;
  external ReportBody? get body;
}

@JS('ReportingObserver')
@staticInterop
class ReportingObserver {
  external factory ReportingObserver();

  external factory ReportingObserver.a1(ReportingObserverCallback callback);

  external factory ReportingObserver.a2(
    ReportingObserverCallback callback,
    ReportingObserverOptions options,
  );
}

extension ReportingObserverExtension on ReportingObserver {
  external JSVoid observe();
  external JSVoid disconnect();
  external ReportList takeRecords();
}

@JS('ReportingObserverOptions')
@staticInterop
class ReportingObserverOptions {
  external factory ReportingObserverOptions();
}

extension ReportingObserverOptionsExtension on ReportingObserverOptions {}

@JS('GenerateTestReportParameters')
@staticInterop
class GenerateTestReportParameters {
  external factory GenerateTestReportParameters();
}

extension GenerateTestReportParametersExtension
    on GenerateTestReportParameters {}
