// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
@JS('webidl2')
library;

import 'dart:js_interop';

import 'webidl_api.dart' as idl;

@JS()
external JSArray<idl.Node> parse(String contents);
