// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'js/webidl_api.dart' as idl;
import 'type_aliases.dart';

String getTypeNameRaw(idl.IDLType idlType) {
  if (idlType.union) {
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
    return types.map(getTypeNameRaw).join(' | ');
  }
  if (idlType.generic.isNotEmpty) {
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
    final genericName =
        idlOrBuiltinToJsTypeAliases[idlType.generic] ?? idlType.generic;
    if (types.length == 1) {
      return '$genericName<${getTypeNameRaw(types[0])}>';
    }
    if (types.length > 1) {
      return '$genericName<${types.map(getTypeNameRaw).join(', ')}>';
    }
    return genericName;
  }
  final name = (idlType.idlType as JSString).toDart;
  final alias = idlOrBuiltinToJsTypeAliases[name];

  final mapped = mapIdlPrimitiveToDart(name, alias);
  if (mapped != null) {
    return mapped;
  }

  // If it wasn't mapped but maps to JSObject, it must be 'record' etc.
  if (alias == 'JSObject') {
    return name;
  }

  // 3. Fallback to alias or the name itself.
  return alias ?? name;
}
