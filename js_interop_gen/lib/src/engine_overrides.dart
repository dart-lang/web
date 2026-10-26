// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'js/filesystem_api.dart';
import 'js/webidl_api.dart' as idl;
import 'type_aliases.dart';

@JS('Object.defineProperty')
external void _defineProperty(
  JSObject target,
  JSString prop,
  JSObject descriptor,
);

@JS('Object.getPrototypeOf')
external JSObject? _getPrototypeOf(JSObject target);

@JS('Object.getOwnPropertyDescriptors')
external JSObject _getOwnPropertyDescriptors(JSObject target);

@JS('Object.create')
external JSObject _objectCreate(JSObject? proto, JSObject descriptors);

JSObject _cloneJsObject(JSObject obj) =>
    _objectCreate(_getPrototypeOf(obj), _getOwnPropertyDescriptors(obj));

idl.Node _cloneMemberForOverride(idl.Node member) {
  final cloned = _cloneJsObject(member as JSObject) as idl.Node;
  if (member.type == 'operation') {
    final args = (member as idl.Operation).arguments;
    final clonedArgs = <idl.Argument>[
      for (var i = 0; i < args.length; i++)
        _cloneJsObject(args[i] as JSObject) as idl.Argument,
    ].toJS;
    _setJsProperty(cloned as JSObject, 'arguments', clonedArgs);
  }
  return cloned;
}

void _setJsProperty(JSObject target, String prop, JSAny? value) {
  final desc = JSObject()
    ..setProperty('value'.toJS, value)
    ..setProperty('writable'.toJS, true.toJS)
    ..setProperty('configurable'.toJS, true.toJS)
    ..setProperty('enumerable'.toJS, true.toJS);
  _defineProperty(target, prop.toJS, desc);
}

bool _rawIdlMatchesOverride(
  idl.IDLType idlType,
  EngineTypeOverride override, {
  bool? rawRequired,
}) {
  if (override.required != null &&
      rawRequired != null &&
      override.required != rawRequired) {
    return false;
  }
  if (idlType.union || idlType.nullable != override.nullable) return false;
  if (idlType.generic.isNotEmpty) {
    if (idlType.generic != override.type || override.typeParameter == null) {
      return false;
    }
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
    return types.length == 1 &&
        _rawIdlMatchesOverride(types[0], override.typeParameter!);
  }
  if (override.typeParameter != null) return false;
  final rawName = (idlType.idlType as JSString).toDart;
  final rawAlias = idlOrBuiltinToJsTypeAliases[rawName] ?? rawName;
  final overrideAlias =
      idlOrBuiltinToJsTypeAliases[override.type] ?? override.type;
  return rawAlias == overrideAlias;
}

idl.IDLType _createIdlType(EngineTypeOverride override) {
  final obj = JSObject();
  obj.setProperty('type'.toJS, ''.toJS);
  obj.setProperty('extAttrs'.toJS, <JSObject>[].toJS);
  obj.setProperty('union'.toJS, false.toJS);
  obj.setProperty('nullable'.toJS, override.nullable.toJS);
  if (override.typeParameter != null) {
    obj.setProperty('generic'.toJS, override.type.toJS);
    obj.setProperty(
      'idlType'.toJS,
      <idl.IDLType>[_createIdlType(override.typeParameter!)].toJS,
    );
  } else {
    obj.setProperty('generic'.toJS, ''.toJS);
    obj.setProperty('idlType'.toJS, override.type.toJS);
  }
  return obj as idl.IDLType;
}

void _convertDictionaryToReadonlyInterface(idl.Interfacelike interfacelike) {
  _setJsProperty(interfacelike as JSObject, 'type', 'interface'.toJS);
  final members = interfacelike.members;
  for (var m = 0; m < members.length; m++) {
    final member = members[m];
    if (member.type == 'field') {
      final memberObj = member as JSObject;
      _setJsProperty(memberObj, 'type', 'attribute'.toJS);
      _setJsProperty(memberObj, 'readonly', true.toJS);
      _setJsProperty(memberObj, 'special', ''.toJS);
      _setJsProperty(memberObj, 'inherit', false.toJS);
    }
  }
}

void _validateTargetNotMixin(
  Map<String, idl.Node> typeToDeclaration,
  String key,
  String targetName,
) {
  if (typeToDeclaration[targetName]?.type == 'interface mixin') {
    throw StateError(
      'Engine override "$key" cannot target interface mixin "$targetName"; '
      'target the concrete interface that includes it instead.',
    );
  }
}

void _validateTypeOverride(
  Map<String, idl.Node> typeToDeclaration,
  String Function(String) resolveIdlTypeName,
  EngineTypeOverride override,
) {
  if (override.typeParameter != null) {
    _validateTypeOverride(
      typeToDeclaration,
      resolveIdlTypeName,
      override.typeParameter!,
    );
  }
  final type = resolveIdlTypeName(override.type);
  final decl = typeToDeclaration[type];
  final alias = idlOrBuiltinToJsTypeAliases[type];
  if (decl == null && alias == null) {
    throw StateError('Unknown IDL override type: $type');
  }
}

/// Declarative overrides reconciled from the Blink (Chrome), Gecko (Firefox),
/// and WebKit (Safari) browser engine WebIDL trees where `>= 2` shipping
/// engines disagree with `@webref/idl`.
class EngineOverrides {
  static String? activePath;

  final Map<String, EngineInterfaceOverride> interfaces;
  final Map<String, EngineTypeOverride> typedefs;
  final Map<String, EngineTypeOverride> properties;
  final Map<String, EngineOperationOverride> operations;

  // Override maps remain intact across translation because entries can match
  // multiple times (repeated type references, partial interfaces, overloads)
  // and are validated after `applyToAst` in `validateTypes`.
  final Set<String> _seenInterfacesInAst = {};
  final Set<String> _usedInterfaces = {};
  final Set<String> _usedTypedefs = {};
  final Set<String> _usedProperties = {};
  final Set<String> _usedOperations = {};
  final Set<String> _matchedSubKeys = {};
  final Set<String> _changedSubKeys = {};

  EngineOverrides({
    required this.interfaces,
    required this.typedefs,
    required this.properties,
    required this.operations,
  });

  static EngineOverrides? read(String? path) {
    if (path == null || !fs.existsSync(path.toJS).toDart) return null;
    final content = (fs.readFileSync(
      path.toJS,
      JSReadFileOptions(encoding: 'utf8'.toJS),
    ) as JSString).toDart;
    final json = jsonDecode(content) as Map<String, dynamic>;
    return EngineOverrides.fromJson(json);
  }

  factory EngineOverrides.fromJson(Map<String, dynamic> json) {
    final interfacesJson =
        (json['interfaces'] as Map?)?.cast<String, dynamic>() ?? const {};
    final typedefsJson =
        (json['typedefs'] as Map?)?.cast<String, dynamic>() ?? const {};
    final propertiesJson =
        (json['properties'] as Map?)?.cast<String, dynamic>() ?? const {};
    final operationsJson =
        (json['operations'] as Map?)?.cast<String, dynamic>() ?? const {};

    return EngineOverrides(
      interfaces: {
        for (final entry in interfacesJson.entries)
          entry.key: EngineInterfaceOverride.fromJson(
            entry.value as Map<String, dynamic>,
          ),
      },
      typedefs: {
        for (final entry in typedefsJson.entries)
          entry.key: EngineTypeOverride.fromJson(
            entry.value as Map<String, dynamic>,
          ),
      },
      properties: {
        for (final entry in propertiesJson.entries)
          entry.key: EngineTypeOverride.fromJson(
            entry.value as Map<String, dynamic>,
          ),
      },
      operations: {
        for (final entry in operationsJson.entries)
          entry.key: EngineOperationOverride.fromJson(
            entry.value as Map<String, dynamic>,
          ),
      },
    );
  }

  /// Mutates the parsed `webidl2` [ast] nodes in place before translation.
  void applyToAst(JSArray<idl.Node> ast) {
    for (var i = 0; i < ast.length; i++) {
      final node = ast[i];
      switch (node.type) {
        case 'typedef':
          _applyTypedefOverride(node as idl.Typedef);
        case 'interface':
        case 'dictionary':
        case 'namespace':
          _applyInterfacelikeOverride(node as idl.Interfacelike);
      }
    }
  }

  void _applyTypedefOverride(idl.Typedef typedefNode) {
    final name = typedefNode.name;
    final override = typedefs[name];
    if (override == null) return;
    _usedTypedefs.add(name);
    final subKey = 'typedefs.$name';
    _matchedSubKeys.add(subKey);
    if (!_rawIdlMatchesOverride(typedefNode.idlType, override)) {
      _changedSubKeys.add(subKey);
      _setJsProperty(
        typedefNode as JSObject,
        'idlType',
        _createIdlType(override),
      );
    }
  }

  void _applyInterfacelikeOverride(idl.Interfacelike interfacelike) {
    final interfaceName = interfacelike.name;
    final ifaceOverride = interfaces[interfaceName];
    if (!interfacelike.partial) {
      _seenInterfacesInAst.add(interfaceName);
      if (ifaceOverride != null && ifaceOverride.kind != null) {
        _usedInterfaces.add(interfaceName);
        final subKey = 'interfaces.$interfaceName';
        _matchedSubKeys.add(subKey);
        if (interfacelike.type != ifaceOverride.kind) {
          _changedSubKeys.add(subKey);
        }
      }
    }
    if (ifaceOverride?.kind == 'interface' &&
        interfacelike.type == 'dictionary') {
      _convertDictionaryToReadonlyInterface(interfacelike);
    }
    _applyMemberOverrides(interfaceName, interfacelike.members);
  }

  /// Applies any member overrides targeting [targetInterfaceName] to a shallow
  /// clone of [mixin] so other interfaces including [mixin] stay untouched.
  idl.Interfacelike applyToMixin(
    String targetInterfaceName,
    idl.Interfacelike mixin,
  ) {
    final members = mixin.members;
    if (!_hasMemberOverridesFor(targetInterfaceName, members)) return mixin;
    final clonedMixin = _cloneJsObject(mixin as JSObject) as idl.Interfacelike;
    final clonedMembers = <idl.Node>[
      for (var m = 0; m < members.length; m++)
        _cloneMemberForOverride(members[m]),
    ].toJS;
    _setJsProperty(clonedMixin as JSObject, 'members', clonedMembers);
    _applyMemberOverrides(targetInterfaceName, clonedMembers);
    return clonedMixin;
  }

  bool _hasMemberOverridesFor(String interfaceName, JSArray<idl.Node> members) {
    for (var m = 0; m < members.length; m++) {
      final member = members[m];
      switch (member.type) {
        case 'attribute':
        case 'field':
          if (properties.containsKey('$interfaceName.${member.name}')) {
            return true;
          }
        case 'operation':
          final memberName = (member as idl.Operation).name;
          if (memberName.isNotEmpty &&
              operations.containsKey('$interfaceName.$memberName')) {
            return true;
          }
      }
    }
    return false;
  }

  void _applyMemberOverrides(String interfaceName, JSArray<idl.Node> members) {
    for (var m = 0; m < members.length; m++) {
      final member = members[m];
      switch (member.type) {
        case 'attribute':
        case 'field':
          _applyPropertyOverride(interfaceName, member);
        case 'operation':
        case 'constructor':
          _applyOperationOverride(interfaceName, member);
      }
    }
  }

  void _applyPropertyOverride(String interfaceName, idl.Node member) {
    final isField = member.type == 'field';
    final key = '$interfaceName.${member.name}';
    final propOverride = properties[key];
    if (propOverride == null) return;
    _usedProperties.add(key);
    final subKey = 'properties.$key';
    _matchedSubKeys.add(subKey);
    final rawIdlType = isField
        ? (member as idl.Field).idlType
        : (member as idl.Attribute).idlType;
    final rawRequired = isField ? (member as idl.Field).required : null;
    if (!_rawIdlMatchesOverride(
      rawIdlType,
      propOverride,
      rawRequired: rawRequired,
    )) {
      _changedSubKeys.add(subKey);
    }
    final memberObj = member as JSObject;
    _setJsProperty(memberObj, 'idlType', _createIdlType(propOverride));
    if (isField && propOverride.required != null) {
      _setJsProperty(memberObj, 'required', propOverride.required!.toJS);
    }
  }

  void _applyOperationOverride(String interfaceName, idl.Node member) {
    final isConstructor = member.type == 'constructor';
    final memberName = isConstructor
        ? 'constructor'
        : (member as idl.Operation).name;
    if (memberName.isEmpty) return;
    final key = '$interfaceName.$memberName';
    final opOverride = operations[key];
    if (opOverride == null) return;
    _usedOperations.add(key);
    if (!isConstructor && opOverride.returnType != null) {
      final operation = member as idl.Operation;
      final subKey = 'operations.$key.returnType';
      _matchedSubKeys.add(subKey);
      if (!_rawIdlMatchesOverride(operation.idlType, opOverride.returnType!)) {
        _changedSubKeys.add(subKey);
      }
      _setJsProperty(
        member as JSObject,
        'idlType',
        _createIdlType(opOverride.returnType!),
      );
    }
    final arguments = isConstructor
        ? (member as idl.Constructor).arguments
        : (member as idl.Operation).arguments;
    final maxParams = opOverride.maxParameters;
    if (maxParams != null) {
      final subKey = 'operations.$key';
      _matchedSubKeys.add(subKey);
      if (arguments.length > maxParams) {
        _changedSubKeys.add(subKey);
        arguments.length = maxParams;
      }
    }
    _applyParameterOverrides(key, arguments, opOverride.parameters);
  }

  void _applyParameterOverrides(
    String key,
    JSArray<idl.Argument> arguments,
    Map<int, EngineTypeOverride> parameters,
  ) {
    for (final paramEntry in parameters.entries) {
      final paramIndex = paramEntry.key;
      final paramOverride = paramEntry.value;
      if (paramIndex >= arguments.length) continue;
      final subKey = 'operations.$key.parameters.$paramIndex';
      _matchedSubKeys.add(subKey);
      final arg = arguments[paramIndex];
      if (!_rawIdlMatchesOverride(arg.idlType, paramOverride)) {
        _changedSubKeys.add(subKey);
      }
      final argObj = arg as JSObject;
      _setJsProperty(argObj, 'idlType', _createIdlType(paramOverride));
      if (paramOverride.name != null) {
        _setJsProperty(argObj, 'name', paramOverride.name!.toJS);
      }
    }
  }

  bool? shouldGenerateInterface(String name) {
    final override = interfaces[name];
    if (override == null) return null;
    if (_seenInterfacesInAst.contains(name)) {
      _usedInterfaces.add(name);
    }
    return override.generate;
  }

  /// Validates that overrides never target an `interface mixin` directly and
  /// that all IDL types referenced by overrides resolve via
  /// [resolveIdlTypeName] to an entry in [typeToDeclaration] or
  /// [idlOrBuiltinToJsTypeAliases].
  void validateTypes(
    Map<String, idl.Node> typeToDeclaration,
    String Function(String) resolveIdlTypeName,
  ) {
    for (final name in interfaces.keys) {
      _validateTargetNotMixin(typeToDeclaration, 'interfaces.$name', name);
    }
    for (final override in typedefs.values) {
      _validateTypeOverride(typeToDeclaration, resolveIdlTypeName, override);
    }
    for (final entry in properties.entries) {
      _validateTargetNotMixin(
        typeToDeclaration,
        'properties.${entry.key}',
        entry.key.split('.').first,
      );
      _validateTypeOverride(typeToDeclaration, resolveIdlTypeName, entry.value);
    }
    for (final entry in operations.entries) {
      _validateTargetNotMixin(
        typeToDeclaration,
        'operations.${entry.key}',
        entry.key.split('.').first,
      );
      final override = entry.value;
      if (override.returnType != null) {
        _validateTypeOverride(
          typeToDeclaration,
          resolveIdlTypeName,
          override.returnType!,
        );
      }
      for (final param in override.parameters.values) {
        _validateTypeOverride(typeToDeclaration, resolveIdlTypeName, param);
      }
    }
  }

  /// Verifies that every override in `engine_overrides.json` matched an active
  /// IDL declaration during `package:web` generation and is not redundant.
  void verifyAllUsed() {
    final unused = <String>[
      ...interfaces.keys
          .toSet()
          .difference(_usedInterfaces)
          .map((k) => 'interfaces.$k'),
      ...typedefs.keys
          .toSet()
          .difference(_usedTypedefs)
          .map((k) => 'typedefs.$k'),
      ...properties.keys
          .toSet()
          .difference(_usedProperties)
          .map((k) => 'properties.$k'),
      ...operations.keys
          .toSet()
          .difference(_usedOperations)
          .map((k) => 'operations.$k'),
      for (final key in _usedOperations)
        ...operations[key]!.parameters.keys
            .map((i) => 'operations.$key.parameters.$i')
            .toSet()
            .difference(_matchedSubKeys),
    ];
    if (unused.isNotEmpty) {
      throw StateError(
        'Stale engine overrides in engine_overrides.json (not matched during '
        'IDL translation):\n  - ${unused.join('\n  - ')}',
      );
    }
    final redundant = _matchedSubKeys.difference(_changedSubKeys).toList()
      ..sort();
    if (redundant.isNotEmpty) {
      throw StateError(
        'Redundant engine overrides in engine_overrides.json (@webref/idl now '
        'natively matches the override; remove from engine_overrides.json):\n'
        '  - ${redundant.join('\n  - ')}',
      );
    }
  }
}

class EngineInterfaceOverride {
  final bool generate;
  final String? kind;

  EngineInterfaceOverride({required this.generate, this.kind});

  factory EngineInterfaceOverride.fromJson(Map<String, dynamic> json) =>
      EngineInterfaceOverride(
        generate: json['generate'] as bool? ?? true,
        kind: json['kind'] as String?,
      );
}

class EngineTypeOverride {
  final String type;
  final bool nullable;
  final EngineTypeOverride? typeParameter;
  final String? name;
  final bool? required;

  EngineTypeOverride({
    required this.type,
    required this.nullable,
    this.typeParameter,
    this.name,
    this.required,
  });

  factory EngineTypeOverride.fromJson(Map<String, dynamic> json) =>
      EngineTypeOverride(
        type: json['type'] as String,
        nullable: json['nullable'] as bool? ?? false,
        typeParameter: json['typeParameter'] != null
            ? EngineTypeOverride.fromJson(
                json['typeParameter'] as Map<String, dynamic>,
              )
            : null,
        name: json['name'] as String?,
        required: json['required'] as bool?,
      );
}

class EngineOperationOverride {
  final EngineTypeOverride? returnType;
  final Map<int, EngineTypeOverride> parameters;
  final int? maxParameters;

  EngineOperationOverride({
    this.returnType,
    this.parameters = const {},
    this.maxParameters,
  });

  factory EngineOperationOverride.fromJson(Map<String, dynamic> json) {
    final paramsJson =
        (json['parameters'] as Map?)?.cast<String, dynamic>() ?? const {};
    return EngineOperationOverride(
      returnType: json['returnType'] != null
          ? EngineTypeOverride.fromJson(
              json['returnType'] as Map<String, dynamic>,
            )
          : null,
      parameters: {
        for (final entry in paramsJson.entries)
          int.parse(entry.key): EngineTypeOverride.fromJson(
            entry.value as Map<String, dynamic>,
          ),
      },
      maxParameters: json['maxParameters'] as int?,
    );
  }
}
