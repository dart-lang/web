// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'banned_names.dart';
import 'doc_provider.dart';
import 'js/webidl_api.dart' as idl;
import 'util.dart';

final class Attribute extends Property {
  final bool isStatic;
  final bool isReadOnly;

  Attribute({
    required super.name,
    required super.type,
    super.mdnProperty,
    required this.isStatic,
    required this.isReadOnly,
  });
}

final class Constant extends Property {
  final String valueType;
  final JSAny value;

  Constant({
    required super.name,
    required super.type,
    required this.valueType,
    required this.value,
  });
}

final class Field extends Property {
  final bool isRequired;

  Field({
    required super.name,
    required super.type,
    super.mdnProperty,
    required this.isRequired,
  });
}

final class LibraryInfo {
  final String name;
  final String url;
  final List<idl.Interfacelike> interfacelikes = [];
  final List<idl.Interfacelike> interfaceMixins = [];
  final List<idl.Typedef> typedefs = [];
  final List<idl.Enum> enums = [];
  final List<idl.Callback> callbacks = [];
  final List<idl.Interfacelike> callbackInterfaces = [];

  LibraryInfo(this.name, this.url);
}

final class MemberName {
  final String name;
  final String jsOverride;

  factory MemberName(String name, [String jsOverride = '']) {
    final rename = dartRename(name);
    if (rename != name && jsOverride.isEmpty) jsOverride = name;
    return MemberName._(rename, jsOverride);
  }

  MemberName._(this.name, this.jsOverride);
}

final class OverridableConstructor extends OverridableMember {
  OverridableConstructor({required super.parameters});
}

abstract class OverridableMember {
  final List<Parameter> parameters;

  OverridableMember({required this.parameters});
}

final class OverridableOperation extends OverridableMember {
  MemberName name;
  final String special;
  final RawType returnType;
  final MdnProperty? mdnProperty;
  bool finalized = false;

  OverridableOperation({
    required super.parameters,
    required this.name,
    required this.special,
    required this.returnType,
    this.mdnProperty,
  });

  bool get isStatic => special == 'static';
}

final class Parameter {
  final Set<String> names;
  final RawType type;

  bool isOptional;
  bool isVariadic;

  Parameter({
    required this.names,
    required this.type,
    required this.isOptional,
    required this.isVariadic,
  });

  // TODO(kevmoo): Consider caching this?
  String get name => _generateName();

  String _generateName() {
    final namesList = names.toList()..sort();
    return namesList
        .sublist(0, 1)
        .followedBy(namesList.sublist(1).map(capitalize))
        .join('Or');
  }
}

final class PartialInterfacelike {
  final String name;
  final String type;
  String? inheritance;
  final Map<String, OverridableOperation> operations = {};
  final Map<String, OverridableOperation> staticOperations = {};
  final List<Property> properties = [];
  final List<Property> extensionProperties = [];
  final MdnInterface? mdnInterface;
  OverridableConstructor? constructor;

  PartialInterfacelike({
    required this.name,
    required this.type,
    this.inheritance,
    this.mdnInterface,
  });
}

sealed class Property {
  final MemberName name;
  final RawType type;
  final MdnProperty? mdnProperty;

  Property({required this.name, required this.type, this.mdnProperty});
}

final class RawType {
  String type;
  bool nullable;
  RawType? typeParameter;

  RawType(this.type, this.nullable, [this.typeParameter]) {
    if (type == 'JSUndefined') nullable = true;
  }

  @override
  String toString() =>
      'RawType(type: $type, nullable: $nullable, '
      'typeParameter: $typeParameter)';
}
