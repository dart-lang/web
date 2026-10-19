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

/// Declarative overrides reconciled from the Blink (Chrome), Gecko (Firefox),
/// and WebKit (Safari) browser engine WebIDL trees where `>= 2` shipping
/// engines disagree with `@webref/idl`.
class EngineOverrides {
  static String? activePath;

  final Map<String, EngineInterfaceOverride> interfaces;
  final Map<String, EngineTypeOverride> typedefs;
  final Map<String, EngineTypeOverride> properties;
  final Map<String, EngineOperationOverride> operations;

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
    final content =
        (fs.readFileSync(path.toJS, JSReadFileOptions(encoding: 'utf8'.toJS))
                as JSString)
            .toDart;
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
          final typedefNode = node as idl.Typedef;
          final name = typedefNode.name;
          final override = typedefs[name];
          if (override == null) break;
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
          break;
        case 'interface':
        case 'dictionary':
        case 'namespace':
        case 'interface mixin':
          final interfacelike = node as idl.Interfacelike;
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
          if (ifaceOverride != null &&
              ifaceOverride.kind == 'interface' &&
              interfacelike.type == 'dictionary') {
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

          final members = interfacelike.members;
          for (var m = 0; m < members.length; m++) {
            final member = members[m];
            switch (member.type) {
              case 'attribute':
              case 'field':
                final isField = member.type == 'field';
                final memberName = member.name;
                final key = '$interfaceName.$memberName';
                final propOverride = properties[key];
                if (propOverride == null) break;
                _usedProperties.add(key);
                final subKey = 'properties.$key';
                _matchedSubKeys.add(subKey);
                final rawIdlType = isField
                    ? (member as idl.Field).idlType
                    : (member as idl.Attribute).idlType;
                final rawRequired = isField
                    ? (member as idl.Field).required
                    : null;
                if (!_rawIdlMatchesOverride(
                  rawIdlType,
                  propOverride,
                  rawRequired: rawRequired,
                )) {
                  _changedSubKeys.add(subKey);
                }
                final memberObj = member as JSObject;
                _setJsProperty(
                  memberObj,
                  'idlType',
                  _createIdlType(propOverride),
                );
                if (isField && propOverride.required != null) {
                  _setJsProperty(
                    memberObj,
                    'required',
                    propOverride.required!.toJS,
                  );
                }
                break;
              case 'operation':
              case 'constructor':
                final isConstructor = member.type == 'constructor';
                final memberName = isConstructor
                    ? 'constructor'
                    : (member as idl.Operation).name;
                if (memberName.isEmpty) break;
                final key = '$interfaceName.$memberName';
                final opOverride = operations[key];
                if (opOverride == null) break;
                _usedOperations.add(key);
                final memberObj = member as JSObject;
                if (!isConstructor && opOverride.returnType != null) {
                  final operation = member as idl.Operation;
                  final subKey = 'operations.$key.returnType';
                  _matchedSubKeys.add(subKey);
                  if (!_rawIdlMatchesOverride(
                    operation.idlType,
                    opOverride.returnType!,
                  )) {
                    _changedSubKeys.add(subKey);
                  }
                  _setJsProperty(
                    memberObj,
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
                    (arguments as JSObject).setProperty(
                      'length'.toJS,
                      maxParams.toJS,
                    );
                  }
                }
                for (final paramEntry in opOverride.parameters.entries) {
                  final paramIndex = paramEntry.key;
                  final paramOverride = paramEntry.value;
                  if (paramIndex < arguments.length) {
                    final subKey = 'operations.$key.parameters.$paramIndex';
                    _matchedSubKeys.add(subKey);
                    final arg = arguments[paramIndex];
                    if (!_rawIdlMatchesOverride(arg.idlType, paramOverride)) {
                      _changedSubKeys.add(subKey);
                    }
                    final argObj = arg as JSObject;
                    _setJsProperty(
                      argObj,
                      'idlType',
                      _createIdlType(paramOverride),
                    );
                    if (paramOverride.name != null) {
                      _setJsProperty(argObj, 'name', paramOverride.name!.toJS);
                    }
                  }
                }
                break;
            }
          }
          break;
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

  /// Validates that all IDL types referenced by overrides exist in
  /// [typeToDeclaration], [idlOrBuiltinToJsTypeAliases], or
  /// [legacyWindowAliases].
  void validateTypes(
    Map<String, idl.Node> typeToDeclaration,
    Map<String, String> legacyWindowAliases,
  ) {
    void checkType(EngineTypeOverride override) {
      if (override.typeParameter != null) {
        checkType(override.typeParameter!);
      }
      var type = override.type;
      if (type == 'WindowProxy') type = 'Window';
      type = legacyWindowAliases[type] ?? type;
      final decl = typeToDeclaration[type];
      final alias = idlOrBuiltinToJsTypeAliases[type];
      if (decl == null && alias == null) {
        throw StateError('Unknown IDL override type: $type');
      }
    }

    for (final override in typedefs.values) {
      checkType(override);
    }
    for (final override in properties.values) {
      checkType(override);
    }
    for (final override in operations.values) {
      if (override.returnType != null) {
        checkType(override.returnType!);
      }
      for (final param in override.parameters.values) {
        checkType(param);
      }
    }
  }

  /// Verifies that every override in `engine_overrides.json` matched an active
  /// IDL declaration during `package:web` generation and is not redundant.
  void verifyAllUsed() {
    final unused = <String>[
      for (final k in interfaces.keys)
        if (!_usedInterfaces.contains(k)) 'interfaces.$k',
      for (final k in typedefs.keys)
        if (!_usedTypedefs.contains(k)) 'typedefs.$k',
      for (final k in properties.keys)
        if (!_usedProperties.contains(k)) 'properties.$k',
      for (final entry in operations.entries)
        if (!_usedOperations.contains(entry.key))
          'operations.${entry.key}'
        else
          for (final paramIndex in entry.value.parameters.keys)
            if (!_matchedSubKeys.contains(
              'operations.${entry.key}.parameters.$paramIndex',
            ))
              'operations.${entry.key}.parameters.$paramIndex',
    ];
    if (unused.isNotEmpty) {
      throw StateError(
        'Stale engine overrides in engine_overrides.json (not matched during '
        'IDL translation):\n  - ${unused.join('\n  - ')}',
      );
    }
    final redundant = <String>[
      for (final subKey in _matchedSubKeys)
        if (!_changedSubKeys.contains(subKey)) subKey,
    ]..sort();
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
