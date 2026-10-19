// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:js_interop';

import 'js/filesystem_api.dart';

/// Declarative overrides reconciled from the Blink (Chrome), Gecko (Firefox),
/// and WebKit (Safari) browser engine WebIDL trees where `>= 2` shipping
/// engines disagree with `@webref/idl`.
class EngineOverrides {
  final Map<String, EngineInterfaceOverride> interfaces;
  final Map<String, EngineTypeOverride> typedefs;
  final Map<String, EnginePropertyOverride> properties;
  final Map<String, EngineOperationOverride> operations;

  final Set<String> _usedInterfaces = {};
  final Set<String> _usedTypedefs = {};
  final Set<String> _usedProperties = {};
  final Set<String> _usedOperations = {};
  final Set<String> _redundantOverrides = {};

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
          entry.key: EnginePropertyOverride.fromJson(
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

  bool? shouldGenerateInterface(String name) {
    final override = interfaces[name];
    if (override == null) return null;
    _usedInterfaces.add(name);
    return override.generate;
  }

  EngineTypeOverride? typedefOverride(String name) {
    final override = typedefs[name];
    if (override == null) return null;
    _usedTypedefs.add(name);
    return override;
  }

  EnginePropertyOverride? propertyOverride(
    String interfaceName,
    String memberName,
  ) {
    final key = '$interfaceName.$memberName';
    final override = properties[key];
    if (override == null) return null;
    _usedProperties.add(key);
    return override;
  }

  EngineOperationOverride? operationOverride(
    String interfaceName,
    String memberName,
  ) {
    final key = '$interfaceName.$memberName';
    final override = operations[key];
    if (override == null) return null;
    _usedOperations.add(key);
    return override;
  }

  /// Records an override whose target `@webref/idl` declaration now natively
  /// matches the overridden type or arity.
  void recordRedundant(String key) {
    _redundantOverrides.add(key);
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
      for (final k in operations.keys)
        if (!_usedOperations.contains(k)) 'operations.$k',
    ];
    if (unused.isNotEmpty) {
      throw StateError(
        'Stale engine overrides in engine_overrides.json (not matched during '
        'IDL translation):\n  - ${unused.join('\n  - ')}',
      );
    }
    if (_redundantOverrides.isNotEmpty) {
      final sorted = _redundantOverrides.toList()..sort();
      throw StateError(
        'Redundant engine overrides in engine_overrides.json (@webref/idl now '
        'natively matches the override; remove from engine_overrides.json):\n'
        '  - ${sorted.join('\n  - ')}',
      );
    }
  }
}

class EngineInterfaceOverride {
  final bool generate;
  final String reason;

  EngineInterfaceOverride({required this.generate, required this.reason});

  factory EngineInterfaceOverride.fromJson(Map<String, dynamic> json) =>
      EngineInterfaceOverride(
        generate: json['generate'] as bool,
        reason: json['reason'] as String? ?? '',
      );
}

class EngineTypeOverride {
  final String type;
  final bool nullable;
  final EngineTypeOverride? typeParameter;
  final String reason;

  EngineTypeOverride({
    required this.type,
    required this.nullable,
    this.typeParameter,
    this.reason = '',
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
        reason: json['reason'] as String? ?? '',
      );
}

class EnginePropertyOverride extends EngineTypeOverride {
  final bool? required;

  EnginePropertyOverride({
    required super.type,
    required super.nullable,
    super.typeParameter,
    super.reason,
    this.required,
  });

  factory EnginePropertyOverride.fromJson(Map<String, dynamic> json) =>
      EnginePropertyOverride(
        type: json['type'] as String,
        nullable: json['nullable'] as bool? ?? false,
        typeParameter: json['typeParameter'] != null
            ? EngineTypeOverride.fromJson(
                json['typeParameter'] as Map<String, dynamic>,
              )
            : null,
        reason: json['reason'] as String? ?? '',
        required: json['required'] as bool?,
      );
}

class EngineParameterOverride extends EngineTypeOverride {
  final String? name;

  EngineParameterOverride({
    required super.type,
    required super.nullable,
    super.typeParameter,
    this.name,
  });

  factory EngineParameterOverride.fromJson(Map<String, dynamic> json) =>
      EngineParameterOverride(
        type: json['type'] as String,
        nullable: json['nullable'] as bool? ?? false,
        typeParameter: json['typeParameter'] != null
            ? EngineTypeOverride.fromJson(
                json['typeParameter'] as Map<String, dynamic>,
              )
            : null,
        name: json['name'] as String?,
      );
}

class EngineOperationOverride {
  final EngineTypeOverride? returnType;
  final Map<int, EngineParameterOverride> parameters;
  final int? maxParameters;
  final String reason;

  EngineOperationOverride({
    this.returnType,
    this.parameters = const {},
    this.maxParameters,
    this.reason = '',
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
          int.parse(entry.key): EngineParameterOverride.fromJson(
            entry.value as Map<String, dynamic>,
          ),
      },
      maxParameters: json['maxParameters'] as int?,
      reason: json['reason'] as String? ?? '',
    );
  }
}
