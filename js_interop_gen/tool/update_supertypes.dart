// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';
import 'package:js_interop_gen/src/cli.dart';
import 'package:path/path.dart' as p;

Future<void> main() async {
  print('Updating js_type_supertypes.dart...');
  final content = await computeJsTypeSupertypes();
  final jsTypeSupertypesPath = p.join(
    bindingsGeneratorPath,
    'js_type_supertypes.dart',
  );
  await File(jsTypeSupertypesPath).writeAsString(content);
  print('Done!');
}
