// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'generated/webidl_api.dart';

export 'generated/webidl_api.dart';

extension IDLTypeDescriptionExtension on IDLType {
  bool get union {
    final jsObj = this as JSObject;
    final prop = jsObj.getProperty('union'.toJS);
    return prop.isA<JSBoolean>() && (prop as JSBoolean).toDart;
  }

  String get generic {
    final jsObj = this as JSObject;
    final prop = jsObj.getProperty('generic'.toJS);
    return prop.isA<JSString>() ? (prop as JSString).toDart : '';
  }

  JSAny get idlType {
    final jsObj = this as JSObject;
    return jsObj.getProperty('idlType'.toJS);
  }
}

extension NamedExtension on Node {
  String get name {
    final jsObj = this as JSObject;
    return (jsObj.getProperty('name'.toJS) as JSString).toDart;
  }
}

extension ValueDescriptionExtension on ValueDescription {
  JSAny get value {
    final jsObj = this as JSObject;
    return jsObj.getProperty('value'.toJS);
  }

  String get type {
    final jsObj = this as JSObject;
    return (jsObj.getProperty('type'.toJS) as JSString).toDart;
  }
}

extension ExtendedAttributeRightHandSideExtension
    on ExtendedAttributeRightHandSide? {
  String? get value {
    final jsObj = this as JSObject?;
    if (jsObj == null) return null;
    final val = jsObj.getProperty('value'.toJS);
    return val.isA<JSString>() ? (val as JSString).toDart : null;
  }

  /// The identifier(s) on the right-hand side, whether a single identifier or
  /// an identifier list such as `(A, B)`.
  List<String> get identifiers {
    final jsObj = this as JSObject?;
    if (jsObj == null) return const [];
    final val = jsObj.getProperty('value'.toJS);
    if (val.isA<JSString>()) return [(val as JSString).toDart];
    if (val.isA<JSArray>()) {
      return [
        for (final item in (val as JSArray<JSObject>).toDart)
          item.getProperty<JSString>('value'.toJS).toDart,
      ];
    }
    return const [];
  }
}
