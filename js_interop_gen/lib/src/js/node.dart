// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'generated/node_api.dart' as gen;

export 'generated/node_api.dart' show url;

void exit(int code) => gen.process.exit(code);

void printErr(String message) => gen.console.error(message);
