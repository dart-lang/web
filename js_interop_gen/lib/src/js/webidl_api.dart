// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'generated/webidl_api.dart';

export 'generated/webidl_api.dart';

extension IDLTypeDescriptionExtension on IDLTypeDescription {
  bool get union {
    final jsObj = this as JSObject;
    if (jsObj.hasProperty('union'.toJS).toDart) {
      return (jsObj.getProperty('union'.toJS) as JSBoolean).toDart;
    }
    return false;
  }

  String get generic {
    final jsObj = this as JSObject;
    if (jsObj.hasProperty('generic'.toJS).toDart) {
      return (jsObj.getProperty('generic'.toJS) as JSString).toDart;
    }
    return '';
  }
}

extension NamedExtension on AbstractBase {
  String get name {
    final jsObj = this as JSObject;
    return (jsObj.getProperty('name'.toJS) as JSString).toDart;
  }
}

extension InterfacelikeExtension on AbstractContainer {
  String? get inheritanceString {
    final jsObj = this as JSObject;
    final val = jsObj.getProperty('inheritance'.toJS);
    return val.isA<JSString>() ? (val as JSString).toDart : null;
  }
}

extension ValueDescriptionExtension on ValueDescription {
  JSAny get value {
    final jsObj = this as JSObject;
    return jsObj.getProperty('value'.toJS);
  }
}

extension ExtendedAttributeRightHandSideExtension
    on ExtendedAttributeRightHandSide {
  String? get value {
    final jsObj = this as JSObject;
    final val = jsObj.getProperty('value'.toJS);
    return val.isA<JSString>() ? (val as JSString).toDart : null;
  }
}
