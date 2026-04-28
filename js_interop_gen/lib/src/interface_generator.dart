// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:code_builder/code_builder.dart' as code;

import 'banned_names.dart';
import 'bcd.dart';
import 'doc_provider.dart';
import 'elements.dart';
import 'js/webidl_api.dart' as idl;
import 'singletons.dart';
import 'translation_context.dart';
import 'util.dart';

final class InterfaceGenerator {
  final TranslationContext _context;
  final List<String> _cssStyleDeclarations;

  InterfaceGenerator(this._context, this._cssStyleDeclarations);

  code.Constructor constructor(OverridableConstructor constructor) =>
      overridableMember<code.Constructor>(
        constructor,
        (requiredParameters, optionalParameters) => code.Constructor(
          (b) => b
            ..external = true
            // TODO(srujzs): Should we generate generative or factory
            // constructors? With `@staticInterop`, factories were needed, but
            // extension types have no such limitation.
            ..factory = true
            ..requiredParameters.addAll(requiredParameters)
            ..optionalParameters.addAll(optionalParameters),
        ),
      );

  code.ExtensionType extensionType({
    required String jsName,
    required String dartClassName,
    required List<idl.ExtendedAttribute> extendedAttributes,
    required MdnInterface? mdnInterface,
    required BCDInterfaceStatus? interfaceStatus,
    required List<String> implements,
    required OverridableConstructor? constructor,
    required List<OverridableOperation> operations,
    required List<OverridableOperation> staticOperations,
    required List<Property> properties,
    required bool isObjectLiteral,
  }) {
    final docs = mdnInterface == null ? <String>[] : mdnInterface.formattedDocs;

    final jsObject = _context.typeReference(RawType('JSObject', false));
    const representationFieldName = '_';
    final legacyNameSpace = extendedAttributes
        .where(
          (extendedAttribute) => extendedAttribute.name == 'LegacyNamespace',
        )
        .firstOrNull
        ?.rhs
        .value;
    final instancePropertyMethods = <code.Method>[];
    final staticPropertyMethods = <code.Method>[];
    final propertySpecs = _properties(properties, mdnInterface);
    for (final property in propertySpecs.$2) {
      (property.static ? staticPropertyMethods : instancePropertyMethods).add(
        property,
      );
    }
    return code.ExtensionType(
      (b) => b
        ..docs.addAll(docs)
        ..annotations.addAll(
          _jsOverride(
            legacyNameSpace != null
                ? '$legacyNameSpace.$jsName'
                : (isObjectLiteral || jsName == dartClassName ? '' : jsName),
          ),
        )
        ..name = dartClassName
        ..primaryConstructorName = '_'
        ..representationDeclaration = code.RepresentationDeclaration(
          (b) => b
            ..name = representationFieldName
            ..declaredRepresentationType = jsObject,
        )
        ..implements.addAll(
          implements
              .map(
                (interface) =>
                    _context.typeReference(RawType(interface, false)),
              )
              .followedBy([jsObject]),
        )
        ..constructors.addAll(
          (isObjectLiteral
                  ? [objectLiteral(jsName, representationFieldName)]
                  : constructor != null
                  ? [this.constructor(constructor)]
                  : <code.Constructor>[])
              .followedBy(
                _context.elementConstructors(
                  jsName,
                  dartClassName,
                  representationFieldName,
                ),
              ),
        )
        ..fields.addAll(propertySpecs.$1)
        ..methods.addAll(
          _operations(staticOperations)
              .followedBy(staticPropertyMethods)
              .followedBy(_operations(operations))
              .followedBy(instancePropertyMethods)
              .followedBy(
                dartClassName == 'CSSStyleDeclaration'
                    ? _cssStyleDeclarationProperties()
                    : [],
              ),
        ),
    );
  }

  List<code.Spec> interfacelike(idl.Interfacelike idlInterfacelike) {
    final name = idlInterfacelike.name;
    final interfacelike = _context.getPartialInterface(name);
    if (interfacelike == null) {
      print(
        'WARNING: Skipping $name because it is not in _interfacelikes map!',
      );
      return [];
    }
    final jsName = interfacelike.name;
    final type = interfacelike.type;
    final isNamespace = type == 'namespace';
    final isDictionary = type == 'dictionary';
    final extendedAttributes = idlInterfacelike.extAttrs.toDart;

    final mdnInterface = _context.docProvider.interfaceFor(jsName);

    // Namespaces have lowercase names. We also translate them to
    // private classes, and make their first character uppercase in the process.
    final dartClassName = isNamespace ? '\$${capitalize(jsName)}' : jsName;

    final interfaceStatus = _context.browserCompatData.retrieveInterfaceFor(
      name,
    );

    // We create a getter for namespaces with the expected name. We also create
    // getters for a few pre-defined singleton classes.
    final getterName = isNamespace ? jsName : singletons[jsName];
    final operations = interfacelike.operations.values.toList();
    final staticOperations = interfacelike.staticOperations.values.toList();
    final properties = interfacelike.properties;
    final extensionProperties = interfacelike.extensionProperties;
    final implements = [
      if (interfacelike.inheritance != null) interfacelike.inheritance!,
    ];

    final rawType = RawType(dartClassName, false);

    if (!isNamespace && jsName != dartClassName) {
      _context.recordRenamedClass(jsName, dartClassName);
    }

    return [
      if (getterName != null) _topLevelGetter(rawType, getterName),
      extensionType(
        jsName: jsName,
        dartClassName: dartClassName,
        extendedAttributes: extendedAttributes,
        mdnInterface: mdnInterface,
        interfaceStatus: interfaceStatus,
        implements: implements,
        constructor: interfacelike.constructor,
        operations: operations,
        staticOperations: staticOperations,
        properties: properties,
        isObjectLiteral: isDictionary,
      ),
      if (extensionProperties.isNotEmpty)
        _extension(type: rawType, extensionProperties: extensionProperties),
    ];
  }

  // TODO(srujzs): We don't need constructors for many dictionaries as they're
  // only ever returned from APIs instead of passed to them. However,
  // determining whether they are is quite difficult and requires tracking not
  // only where this type is used but where any typedefs of this type are used.
  // The IDL also doesn't tell us if a dictionary needs a constructor or not, so
  // for now, always emit one.
  code.Constructor objectLiteral(
    String jsName,
    String representationFieldName,
  ) {
    // Dictionaries that inherit other dictionaries should provide a constructor
    // that can take in their supertypes' members as well.
    final namedParameters = <code.Parameter>[];
    String? dictionaryName = jsName;
    while (dictionaryName != null) {
      _context.markTypeAsUsed(dictionaryName);
      final interfacelike = _context.getPartialInterface(dictionaryName)!;
      final parameters = <code.Parameter>[];
      for (final property in interfacelike.properties) {
        final field = property as Field;
        // We currently only lower dictionaries to object literals, and
        // dictionaries can only have 'field' members.
        final isRequired = field.isRequired;
        final parameter = code.Parameter(
          (b) => b
            ..name = field.name.name
            ..type = _context.typeReference(field.type)
            ..required = isRequired
            ..named = true,
        );
        parameters.add(parameter);
      }
      // Supertype members should be first.
      namedParameters.insertAll(0, parameters);
      dictionaryName = interfacelike.inheritance;
    }
    if (namedParameters.isEmpty) {
      return code.Constructor(
        (b) => b
          ..initializers.add(
            code
                .refer(representationFieldName)
                .assign(
                  code
                      .refer(
                        'JSObject',
                        _context.typeReference(RawType('JSObject', false)).url,
                      )
                      .call([]),
                )
                .code,
          ),
      );
    } else {
      return code.Constructor(
        (b) => b
          ..optionalParameters.addAll(namedParameters)
          ..external = true
          // TODO(srujzs): Generate generative or factory constructors?
          // With `@staticInterop`, factories were needed, but extension types
          // have no such limitation.
          ..factory = true,
      );
    }
  }

  T overridableMember<T>(
    OverridableMember member,
    T Function(
      List<code.Parameter> requiredParameters,
      List<code.Parameter> optionalParameters,
    )
    generator,
  ) {
    final requiredParameters = <code.Parameter>[];
    final optionalParameters = <code.Parameter>[];
    for (final rawParameter in member.parameters) {
      final type = _context.typeReference(rawParameter.type);
      if (rawParameter.isVariadic) {
        for (var i = 0; i < 4; i++) {
          optionalParameters.add(
            code.Parameter(
              (b) => b
                ..name = '${dartRename(rawParameter.name, true)}${i + 1}'
                ..type = type,
            ),
          );
        }
      } else {
        final parameter = code.Parameter(
          (b) => b
            ..name = dartRename(rawParameter.name)
            ..type = type,
        );
        if (rawParameter.isOptional) {
          optionalParameters.add(parameter);
        } else {
          requiredParameters.add(parameter);
        }
      }
    }
    return generator(requiredParameters, optionalParameters);
  }

  List<code.Method> _attribute(
    Attribute attribute,
    MdnInterface? mdnInterface,
  ) {
    return _getterSetter(
      memberName: attribute.name,
      getGetterType: () =>
          _context.typeReference(attribute.type, returnType: true),
      getSetterType: () => _context.typeReference(attribute.type),
      readOnly: attribute.isReadOnly,
      isStatic: attribute.isStatic,
      mdnInterface: mdnInterface,
    );
  }

  (List<code.Field>, List<code.Method>) _constant(Constant constant) {
    // If it's a value type that we can emit directly in Dart as a constant,
    // emit this as a field so users can `switch` over it. Value types taken
    // from: https://github.com/w3c/webidl2.js/blob/main/README.md#default-and-const-values
    final body = switch (constant.valueType) {
      'string' => code.literalString((constant.value as JSString).toDart),
      'boolean' => code.literalBool((constant.value as JSBoolean).toDart),
      'number' => code.literalNum(
        num.parse((constant.value as JSString).toDart),
      ),
      'null' => code.literalNull,
      _ => null,
    };
    if (body != null) {
      return (
        [
          code.Field(
            (b) => b
              ..external = false
              ..static = true
              ..modifier = code.FieldModifier.constant
              ..type = _context.typeReference(constant.type, returnType: true)
              ..assignment = body.code
              ..name = constant.name.name,
          ),
        ],
        [],
      );
    }
    return (
      [],
      [
        code.Method(
          (b) => b
            ..annotations.addAll(_jsOverride(constant.name.jsOverride))
            ..external = true
            ..static = true
            ..returns = _context.typeReference(constant.type, returnType: true)
            ..type = code.MethodType.getter
            ..name = constant.name.name,
        ),
      ],
    );
  }

  List<code.Method> _cssStyleDeclarationProperties() {
    return [
      for (final style in _cssStyleDeclarations)
        ..._getterSetter(
          memberName: MemberName(style),
          getGetterType: () => _context.typeReference(
            RawType('JSString', false),
            returnType: true,
          ),
          getSetterType: () =>
              _context.typeReference(RawType('JSString', false)),
          isStatic: false,
          readOnly: false,
          mdnInterface: null,
        ),
    ];
  }

  code.Extension _extension({
    required RawType type,
    required List<Property> extensionProperties,
  }) {
    final properties = _properties(extensionProperties, null);
    return code.Extension(
      (b) => b
        ..name = '${type.type.snakeToPascal}Extension'
        ..on = _context.typeReference(type)
        ..fields.addAll(properties.$1)
        ..methods.addAll(properties.$2),
    );
  }

  List<code.Method> _field(Field field, MdnInterface? mdnInterface) {
    return _getterSetter(
      memberName: field.name,
      getGetterType: () => _context.typeReference(field.type, returnType: true),
      getSetterType: () => _context.typeReference(field.type),
      readOnly: false,
      isStatic: false,
      mdnInterface: mdnInterface,
    );
  }

  List<code.Method> _getterSetter({
    required MemberName memberName,
    required code.Reference Function() getGetterType,
    required code.Reference Function() getSetterType,
    required bool isStatic,
    required bool readOnly,
    required MdnInterface? mdnInterface,
  }) {
    final name = memberName.name;
    final docs =
        mdnInterface?.propertyFor(name, isStatic: isStatic)?.formattedDocs ??
        [];

    return [
      code.Method(
        (b) => b
          ..annotations.addAll(_jsOverride(memberName.jsOverride))
          ..external = true
          ..static = isStatic
          ..returns = getGetterType()
          ..type = code.MethodType.getter
          ..name = name
          ..docs.addAll(docs),
      ),
      if (!readOnly)
        code.Method(
          (b) => b
            ..annotations.addAll(_jsOverride(memberName.jsOverride))
            ..external = true
            ..static = isStatic
            ..type = code.MethodType.setter
            ..name = name
            ..requiredParameters.add(
              code.Parameter(
                (b) => b
                  ..type = getSetterType()
                  ..name = 'value',
              ),
            ),
        ),
    ];
  }

  List<code.Expression> _jsOverride(
    String jsOverride, {
    bool alwaysEmit = false,
  }) => [
    if (jsOverride.isNotEmpty || alwaysEmit)
      code.refer('JS', 'dart:js_interop').call([
        if (jsOverride.isNotEmpty) code.literalString(jsOverride),
      ]),
  ];

  code.Method _operation(OverridableOperation operation) {
    final memberName = operation.name;
    // The IDL may return the value that is set. Dart doesn't let us use any
    // type besides `void` for `[]=`, so we ignore the return value.
    final returnType = memberName.name == 'operator []='
        ? code.TypeReference((b) => b..symbol = 'void')
        : _context.typeReference(operation.returnType, returnType: true);
    return overridableMember<code.Method>(
      operation,
      (requiredParameters, optionalParameters) => code.Method(
        (b) => b
          ..annotations.addAll(_jsOverride(memberName.jsOverride))
          ..external = true
          ..static = operation.isStatic
          ..returns = returnType
          ..name = memberName.name
          ..docs.addAll(operation.mdnProperty?.formattedDocs ?? [])
          ..requiredParameters.addAll(requiredParameters)
          ..optionalParameters.addAll(optionalParameters),
      ),
    );
  }

  List<code.Method> _operations(List<OverridableOperation> operations) => [
    for (final operation in operations) _operation(operation),
  ];

  (List<code.Field>, List<code.Method>) _properties(
    List<Property> properties,
    MdnInterface? mdnInterface,
  ) => properties.fold(([], []), (specs, property) {
    final (fields, methods) = _property(property, mdnInterface);
    return (specs.$1..addAll(fields), specs.$2..addAll(methods));
  });

  (List<code.Field>, List<code.Method>) _property(
    Property member,
    MdnInterface? mdnInterface,
  ) => switch (member) {
    Attribute() => ([], _attribute(member, mdnInterface)),
    Field() => ([], _field(member, mdnInterface)),
    Constant() => _constant(member),
  };

  code.Method _topLevelGetter(RawType type, String getterName) => code.Method(
    (b) => b
      ..annotations.addAll(_jsOverride('', alwaysEmit: true))
      ..external = true
      ..returns = _context.typeReference(type, returnType: true)
      ..name = getterName
      ..type = code.MethodType.getter,
  );
}
