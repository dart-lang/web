// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library attribution_reporting_api;

import 'dart:js_interop';

extension type AttributionReportingRequestOptions._(JSObject _)
    implements JSObject {
  external factory AttributionReportingRequestOptions({
    required bool eventSourceEligible,
    required bool triggerEligible,
  });

  external set eventSourceEligible(bool value);
  external bool get eventSourceEligible;
  external set triggerEligible(bool value);
  external bool get triggerEligible;
}
