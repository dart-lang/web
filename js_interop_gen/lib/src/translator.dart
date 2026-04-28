// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:code_builder/code_builder.dart' as code;
import 'package:path/path.dart' as p;

import 'banned_names.dart';
import 'bcd.dart';
import 'doc_generator.dart';
import 'doc_provider.dart';
import 'elements.dart';
import 'formatting.dart';
import 'interface_generator.dart';
import 'js/webidl_api.dart' as idl;
import 'js/webref_elements_api.dart';

import 'translation_context.dart';
import 'type_aliases.dart';
import 'type_union.dart';
import 'util.dart';

typedef TranslationResult = Map<String, code.Library>;

extension LibraryInfoOps on LibraryInfo {
  void _addNamed<T extends idl.Named>(idl.Node node, List<T> list) {
    final named = node as T;
    final name = named.name;
    final translator = Translator.instance!;
    final isPartial =
        (node.type == 'interface' ||
            node.type == 'interface mixin' ||
            node.type == 'dictionary' ||
            node.type == 'namespace') &&
        (named as idl.Interfacelike).partial;
    if (isPartial) {
      translator._typeToPartials
          .putIfAbsent(name, () => [])
          .add(named as idl.Interfacelike);
    } else {
      translator._typeToLibrary[name] = this;
      translator._typeToDeclaration[name] = node;
      list.add(named);
    }
  }

  void add(idl.Node node) {
    final type = node.type;
    switch (type) {
      case 'interface':
      case 'namespace':
      case 'dictionary':
        _addNamed<idl.Interfacelike>(node, interfacelikes);
        break;
      case 'interface mixin':
        _addNamed<idl.Interfacelike>(node, interfaceMixins);
        break;
      case 'typedef':
        _addNamed<idl.Typedef>(node, typedefs);
        break;
      case 'enum':
        _addNamed<idl.Enum>(node, enums);
        break;
      case 'callback':
        _addNamed<idl.Callback>(node, callbacks);
        break;
      case 'callback interface':
        _addNamed<idl.Interfacelike>(node, callbackInterfaces);
        break;
      case 'includes':
        final includes = node as idl.Includes;
        final translator = Translator.instance!;
        translator._includes
            .putIfAbsent(includes.target, () => [])
            .add(includes.includes);
        break;
      default:
        throw Exception('Unexpected node type $type');
    }
  }
}

/// desugars the typedef, accounting for nullability along the way.
///
/// Otherwise, returns null.
RawType? _desugarTypedef(RawType rawType) {
  final decl = Translator.instance!._typeToDeclaration[rawType.type];
  return switch (decl?.type) {
    'typedef' => _getRawType(
      (decl as idl.Typedef).idlType,
    )..nullable |= rawType.nullable,
    // TODO(srujzs): We can use `JSFunction` for callbacks but we may want to
    // maybe leverage that here so we have stronger type-checking of
    // callbacks.
    'callback' ||
    'callback interface' => RawType('JSFunction', rawType.nullable),
    // TODO(srujzs): Enums in the WebIDL are just strings, but we could make
    // them easier to work with on the Dart side.
    'enum' => RawType('JSString', rawType.nullable),
    _ => null,
  };
}

/// Returns the JS type equivalent for the given [rawType] if it was something
/// declared in the IDL.
///
/// Otherwise, return null.
RawType? _getJSTypeEquivalent(RawType rawType) {
  final type = rawType.type;
  final nullable = rawType.nullable;
  final decl = Translator.instance!._typeToDeclaration[type];
  if (decl != null) {
    final nodeType = decl.type;
    switch (nodeType) {
      case 'interface':
      case 'dictionary':
        return RawType('JSObject', nullable);
      default:
        final desugaredType = _desugarTypedef(rawType);
        if (desugaredType != null) {
          return _getJSTypeEquivalent(desugaredType) ?? desugaredType;
        }
    }
  }
  return null;
}

RawType _computeRawTypeUnion(RawType rawType1, RawType rawType2) {
  final type1 = rawType1.type;
  final type2 = rawType2.type;
  final nullable1 = rawType1.nullable;
  final nullable2 = rawType2.nullable;
  final typeParam1 = rawType1.typeParameter;
  final typeParam2 = rawType2.typeParameter;

  // If either type parameter is null, then the resulting union can never be a
  // generic type, so return null.
  RawType? computeTypeParamUnion(RawType? typeParam1, RawType? typeParam2) =>
      typeParam1 != null && typeParam2 != null
      ? _computeRawTypeUnion(typeParam1, typeParam2)
      : null;

  // Equality.
  if (type1 == type2) {
    return RawType(
      type1,
      nullable1 || nullable2,
      computeTypeParamUnion(typeParam1, typeParam2),
    );
  }
  // This sentinel is only for nullability.
  if (type1 == 'JSUndefined') return RawType(type2, true, typeParam2);
  if (type2 == 'JSUndefined') return RawType(type1, true, typeParam1);
  // If the two types are not equal, we can just use `JSNumber` as the union can
  // never be `JSInteger` or `JSDouble` anyways.
  if (type1 == 'JSInteger' || type1 == 'JSDouble') rawType1.type = 'JSNumber';
  if (type2 == 'JSInteger' || type2 == 'JSDouble') rawType2.type = 'JSNumber';

  // LUBS.
  final unionableType1 = _getJSTypeEquivalent(rawType1) ?? rawType1;
  final unionableType2 = _getJSTypeEquivalent(rawType2) ?? rawType2;

  // We choose `JSAny` if they're not both JS types.
  return RawType(
    computeJsTypeUnion(unionableType1.type, unionableType2.type) ?? 'JSAny',
    unionableType1.nullable || unionableType2.nullable,
    computeTypeParamUnion(
      unionableType1.typeParameter,
      unionableType2.typeParameter,
    ),
  );
}

/// Returns a [RawType] for the given [idl.IDLType].
RawType _getRawType(idl.IDLType idlType) {
  // For union types, we take the possible union of all the types using a LUB.
  if (idlType.union) {
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
    var union = _getRawType(types[0]);
    for (var i = 1; i < types.length; i++) {
      union = _computeRawTypeUnion(union, _getRawType(types[i]));
    }
    union.nullable |= idlType.nullable;
    return union;
  }
  String type;
  final nullable = idlType.nullable;
  RawType? typeParameter;
  if (idlType.generic.isNotEmpty) {
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
    if (types.length == 1) {
      typeParameter = _getRawType(types[0]);
    }
    type = idlType.generic;
  } else {
    type = (idlType.idlType as JSString).toDart;
  }

  final translator = Translator.instance!;
  final alias = idlOrBuiltinToJsTypeAliases[type];
  if (alias == null && !translator.markTypeAsUsed(type)) {
    // If the type is an IDL type that is never generated, use its JS type
    // equivalent.
    type = _getJSTypeEquivalent(RawType(type, false))?.type ?? 'JSAny';
  }
  final raw = RawType(alias ?? type, nullable, typeParameter);
  if (raw.type == 'JSAny') raw.nullable = true;
  return raw;
}

/// A class representing either a type that corresponds to an IDL declaration or
/// a JS built-in type.
///
/// This should not include IDL types for which there isn't a declaration e.g.
/// `any` or a JS built-in type e.g. `ArrayBuffer`.
extension RawTypeOps on RawType {
  void update(idl.IDLType idlType) {
    final union = _computeRawTypeUnion(this, _getRawType(idlType));
    type = union.type;
    nullable = union.nullable;
    typeParameter = union.typeParameter;
  }
}

Parameter _createParameter(idl.Argument argument) {
  final names = {argument.name};
  return Parameter(
    names: names,
    type: _getRawType(argument.idlType),
    isOptional: argument.optional,
    isVariadic: argument.variadic,
  );
}

extension PartialInterfacelikeOps on PartialInterfacelike {
  void _processMembers(JSArray<idl.Member> idlMembers) {
    final isNamespace = type == 'namespace';
    final isDictionary = type == 'dictionary';
    final mdnInterface = this.mdnInterface;

    for (var i = 0; i < idlMembers.length; i++) {
      final member = idlMembers[i];
      final memberType = member.type;
      switch (memberType) {
        case 'operation':
          final operation = member as idl.Operation;
          final special = operation.special;
          var operationName = operation.name;
          var shouldQueryMDN = true;
          switch (special) {
            case 'getter':
              if (operationName.isEmpty) {
                operationName = 'operator []';
                shouldQueryMDN = false;
              }
              break;
            case 'setter':
              if (operationName.isEmpty) {
                operationName = 'operator []=';
                shouldQueryMDN = false;
              }
              break;
            case 'static':
              break;
            default:
              if (operationName.isEmpty) continue;
          }
          final isStatic = operation.special == 'static';
          if (shouldQueryMDN &&
              !markMemberUsed(operationName, isStatic: isStatic)) {
            break;
          }
          final docs = shouldQueryMDN
              ? mdnInterface?.propertyFor(operationName, isStatic: isStatic)
              : null;
          final operationsMap = isStatic ? staticOperations : operations;

          if (operationsMap.containsKey(operationName)) {
            operationsMap[operationName]!.update(operation);
          } else {
            final returnType = _getRawType(operation.idlType);
            final parameters = operation.arguments.toDart
                .map(_createParameter)
                .toList();
            operationsMap[operationName] = OverridableOperation(
              parameters: parameters,
              name: operationName == returnType.type
                  ? MemberName('${operationName}_', operationName)
                  : MemberName(operationName),
              special: operation.special,
              returnType: returnType,
              mdnProperty: docs,
            );
            if (!isStatic && staticOperations.containsKey(operationName)) {
              staticOperations[operationName]!.underscoreName();
            } else if (isStatic && operations.containsKey(operationName)) {
              operationsMap[operationName]!.underscoreName();
            }
          }
          break;
        case 'attribute':
          final attribute = member as idl.Attribute;
          final isStatic = attribute.special == 'static';
          final attributeName = attribute.name;
          if (!markMemberUsed(attributeName, isStatic: isStatic)) break;

          final isExtensionMember =
              name == 'SVGElement' && attributeName == 'className';
          final memberList = isExtensionMember
              ? extensionProperties
              : properties;
          final type = _getRawType(attribute.idlType);
          memberList.add(
            Attribute(
              name: _resolvePropertyName(attributeName, '', type),
              type: type,
              mdnProperty: mdnInterface?.propertyFor(
                attributeName,
                isStatic: isStatic,
              ),
              isStatic: isStatic,
              isReadOnly: attribute.readonly,
            ),
          );
          break;
        case 'const':
          final constant = member as idl.Constant;
          final jsName = constant.name;
          properties.add(
            Constant(
              name: MemberName(jsName),
              type: _getRawType(constant.idlType),
              valueType: constant.value.type,
              value: constant.value.value,
            ),
          );
          break;
        case 'field':
          final field = member as idl.Field;
          final fieldName = field.name;
          if (!markMemberUsed(fieldName)) break;
          final type = _getRawType(field.idlType);
          properties.add(
            Field(
              name: _resolvePropertyName(fieldName, '', type),
              type: type,
              mdnProperty: mdnInterface?.propertyFor(
                fieldName,
                isStatic: false,
              ),
              isRequired: field.required,
            ),
          );
          break;
        case 'constructor':
          if (isNamespace || isDictionary) {
            throw Exception('Constructors are not allowed in $type');
          }
          final idlConstructor = member as idl.Constructor;
          if (idlConstructor.hasHTMLConstructorAttribute) break;
          if (!markMemberUsed(name)) break;
          if (constructor == null) {
            constructor = OverridableConstructor(
              parameters: idlConstructor.arguments.toDart
                  .map(_createParameter)
                  .toList(),
            );
          } else {
            constructor!.update(idlConstructor);
          }
          break;
        case 'iterable':
        case 'async iterable':
        case 'maplike':
        case 'setlike':
          // TODO(srujzs): Support these.
          break;
        default:
          throw Exception('Unexpected member type $memberType');
      }
    }
  }

  bool markMemberUsed(String memberName, {bool isStatic = false}) {
    final translator = Translator.instance!;
    if (translator.browserCompatData.generateAll) return true;
    if (type != 'interface' && type != 'namespace') return true;
    final interfaceBcd = translator.browserCompatData.retrieveInterfaceFor(
      name,
    )!;
    final bcd = interfaceBcd.retrievePropertyFor(
      memberName,
      isStatic: isStatic || type == 'namespace',
    );
    final shouldGenerate = bcd?.shouldGenerate;
    if (shouldGenerate != null) return shouldGenerate;
    if (!isStatic && BrowserCompatData.isEventHandlerSupported(memberName)) {
      return true;
    }
    return false;
  }

  void update(idl.Interfacelike interfacelike) {
    assert(
      (name == interfacelike.name && type == interfacelike.type) ||
          interfacelike.type == 'interface mixin',
    );
    assert(
      interfacelike.inheritance == null || inheritance == null,
      'An interface should only be defined once.',
    );
    setInheritance(interfacelike.inheritance);
    _processMembers(interfacelike.members);
  }

  void setInheritance(String? declaredInheritance) {
    if (declaredInheritance == null) return;
    inheritance = null;
    final translator = Translator.instance!;
    while (declaredInheritance != null) {
      if (translator.markTypeAsUsed(declaredInheritance)) {
        inheritance = declaredInheritance;
        break;
      } else {
        final decl = translator._typeToDeclaration[declaredInheritance];
        if (decl == null) {
          declaredInheritance = null;
        } else {
          declaredInheritance = (decl as idl.Interfacelike).inheritance;
        }
      }
    }
  }
}

extension OverridableOperationOps on OverridableOperation {
  void update(idl.Operation operation) {
    assert(!finalized);
    final newParameters = operation.arguments.toDart
        .map(_createParameter)
        .toList();
    final maxLength = newParameters.length > parameters.length
        ? newParameters.length
        : parameters.length;
    for (var i = 0; i < maxLength; i++) {
      if (i < parameters.length && i < newParameters.length) {
        parameters[i].names.addAll(newParameters[i].names);
        parameters[i].type.update(operation.arguments.toDart[i].idlType);
        parameters[i].isOptional |= newParameters[i].isOptional;
        parameters[i].isVariadic |= newParameters[i].isVariadic;
      } else if (i >= parameters.length) {
        newParameters[i].isOptional = true;
        parameters.add(newParameters[i]);
      } else if (i >= newParameters.length) {
        parameters[i].isOptional = true;
      }
    }
    returnType.update(operation.idlType);
  }

  void underscoreName() {
    name = MemberName(
      '${name.name}_',
      name.jsOverride.isNotEmpty ? name.jsOverride : name.name,
    );
  }
}

extension OverridableConstructorOps on OverridableConstructor {
  void update(idl.Constructor constructor) {
    final newParameters = constructor.arguments.toDart
        .map(_createParameter)
        .toList();
    final maxLength = newParameters.length > parameters.length
        ? newParameters.length
        : parameters.length;
    for (var i = 0; i < maxLength; i++) {
      if (i < parameters.length && i < newParameters.length) {
        parameters[i].names.addAll(newParameters[i].names);
        parameters[i].type.update(constructor.arguments.toDart[i].idlType);
        parameters[i].isOptional |= newParameters[i].isOptional;
        parameters[i].isVariadic |= newParameters[i].isVariadic;
      } else if (i >= parameters.length) {
        newParameters[i].isOptional = true;
        parameters.add(newParameters[i]);
      } else if (i >= newParameters.length) {
        parameters[i].isOptional = true;
      }
    }
  }
}

MemberName _resolvePropertyName(String name, String special, RawType type) {
  return MemberName(name);
}

final class Translator implements TranslationContext {
  final String? _packageRoot;
  final String _librarySubDir;
  final List<String> _cssStyleDeclarations;
  final Map<String, Set<String>> _elementTagMap;
  final bool _generateForWeb;

  final _libraries = <String, LibraryInfo>{};
  final _typeToDeclaration = <String, idl.Node>{};
  final _typeToPartials = <String, List<idl.Interfacelike>>{};
  final _typeToLibrary = <String, LibraryInfo>{};
  final _interfacelikes = <String, PartialInterfacelike>{};
  final _includes = <String, List<String>>{};
  final _usedTypes = <idl.Node>{};
  final _renamedClasses = <String, String>{};
  final _currentDocImports = <String>{};
  final _regularImports = <String>{};
  late InterfaceGenerator _interfaceGenerator;
  late DocGenerator _docGenerator;

  Map<String, String> get renamedClasses => _renamedClasses;

  final Map<String, String> loadedRenameMap;

  late String _currentlyTranslatingUrl;

  @override
  late DocProvider docProvider;

  @override
  late BrowserCompatData browserCompatData;

  /// Singleton so that various helper methods can access info about the AST.
  static Translator? instance;

  Translator(
    this._librarySubDir,
    this._cssStyleDeclarations,
    this._elementTagMap, {
    String? packageRoot,
    required bool generateAll,
    bool generateForWeb = true,
    this.loadedRenameMap = const {},
    required String bcdJsonPath,
  }) : _generateForWeb = generateForWeb,
       _packageRoot = packageRoot {
    instance = this;
    docProvider = DocProvider.create();
    _interfaceGenerator = InterfaceGenerator(this, _cssStyleDeclarations);
    browserCompatData = BrowserCompatData.read(
      generateAll: generateAll,
      path: bcdJsonPath,
    );
  }

  void _addOrUpdateInterfaceLike(idl.Interfacelike interfacelike) {
    final name = interfacelike.name;
    if (_interfacelikes.containsKey(name)) {
      _interfacelikes[name]!.update(interfacelike);
    } else {
      _interfacelikes[name] = PartialInterfacelike(
        name: interfacelike.name,
        type: interfacelike.type,
        mdnInterface: docProvider.interfaceFor(name),
      );
      _interfacelikes[name]!.setInheritance(interfacelike.inheritance);
      _interfacelikes[name]!._processMembers(interfacelike.members);
    }
  }

  /// Add interfaces and namespaces so we can have a unified interface
  /// representation.
  ///
  /// Note that this is done after the initial pass on the AST. This is because
  /// this step resolves unions and therefore can't be done until we record all
  /// types.
  ///
  /// This method only adds the interfaces and namespaces that the browser
  /// compat data claims should be generated. It also only adds dictionaries if
  /// [BrowserCompatData.generateAll] is true and are otherwise handled by
  /// [markTypeAsUsed] because they don't have any compat data and are emitted
  /// only if used.
  void addInterfacesAndNamespaces() {
    for (final library in _libraries.values) {
      for (final interfacelike in library.interfacelikes) {
        final name = interfacelike.name;
        switch (interfacelike.type) {
          case 'interface':
          case 'namespace':
            markTypeAsUsed(name);
            break;
          case 'dictionary':
            if (Translator.instance!.browserCompatData.generateAll) {
              markTypeAsUsed(name);
            }
            break;
          default:
            throw Exception(
              'Unexpected interfacelike type ${interfacelike.type}',
            );
        }
      }
    }
  }

  /// Given an [interfacelikeName], combines its interfacelike declaration, its
  /// partial interfacelikes, and any mixins it includes in that order.
  ///
  /// Mixins are applied by applying the mixin interface first and then its
  /// partial interfaces.
  void _combineInterfacelikes(String interfacelikeName) {
    final decl = _typeToDeclaration[interfacelikeName]! as idl.Interfacelike;
    for (final interfacelike in [
      decl,
      ...?_typeToPartials[interfacelikeName],
    ]) {
      _addOrUpdateInterfaceLike(interfacelike);
    }
    final mixins = _includes[interfacelikeName];
    if (mixins == null) return;
    for (final mixin in mixins) {
      for (final interfacelike in [
        _typeToDeclaration[mixin] as idl.Interfacelike,
        ...?_typeToPartials[mixin],
      ]) {
        _interfacelikes[interfacelikeName]!.update(interfacelike);
      }
    }
  }

  /// Given a [type] that corresponds to an IDL type, marks it as a used type,
  /// processes the type if needed, and marks any types its declaration uses.
  ///
  /// If the type is an interface, this function only marks it used if the
  /// browser compat data says it should be.
  ///
  /// If the type is a dictionary, this function always marks it as used.
  ///
  /// If the type is a type that is treated like a typedef, marks the type it is
  /// aliased to as used.
  ///
  /// Returns whether the type has been or will be marked as used.
  @override
  bool markTypeAsUsed(String type) {
    final decl = _typeToDeclaration[type];
    if (decl == null) return false;
    if (_usedTypes.contains(decl)) return true;
    switch (decl.type) {
      case 'dictionary':
        final name = (decl as idl.Interfacelike).name;
        _usedTypes.add(decl);
        _combineInterfacelikes(name);
        return true;
      case 'typedef':
        _usedTypes.add(decl);
        final desugaredType = _desugarTypedef(RawType(type, false))!.type;
        markTypeAsUsed(desugaredType);
        return true;
      case 'enum':
      case 'callback interface':
      case 'callback':
        _usedTypes.add(decl);
        return true;
      case 'interface':
        // Interfaces and namespaces can only be marked as used depending on
        // their compat data.
        final name = (decl as idl.Interfacelike).name;
        if (browserCompatData.shouldGenerateInterface(name)) {
          _usedTypes.add(decl);
          _combineInterfacelikes(name);
          return true;
        }
        return false;
      case 'namespace':
        // Browser compat data doesn't document namespaces that only contain
        // constants.
        // https://github.com/mdn/browser-compat-data/blob/main/docs/data-guidelines/api.md#namespaces
        final namespace = decl as idl.Interfacelike;
        final name = namespace.name;
        if (browserCompatData.shouldGenerateInterface(name) ||
            namespace.members.toDart.every(
              (member) => member.type == 'const',
            )) {
          _usedTypes.add(decl);
          _combineInterfacelikes(name);
          return true;
        }
        return false;
      case 'interface mixin':
      // Mixins should never appear as types.
      default:
        throw Exception(
          'Unexpected node type to be marked as used: ${decl.type}',
        );
    }
  }

  void collect(String shortName, JSArray<idl.Node> ast) {
    final libraryPath = '$_librarySubDir/${shortName.kebabToSnake}.dart';
    assert(!_libraries.containsKey(libraryPath));

    final library = LibraryInfo(
      shortName,
      '${_packageRoot ?? '.'}/$libraryPath',
    );

    for (var i = 0; i < ast.length; i++) {
      library.add(ast[i]);
    }

    _libraries[libraryPath] = library;
  }

  code.TypeDef _typedef(
    String name,
    RawType rawType, [
    idl.Typedef? idlTypedef,
  ]) => code.TypeDef(
    (b) => b
      ..name = name
      ..definition = _typeReference(rawType)
      ..docs.addAll([
        if (idlTypedef != null)
          ..._docGenerator.generateUnionDocs(
            idlTypedef.idlType,
            _currentlyTranslatingUrl,
          ),
      ]),
  );

  /// Given a raw type, convert it to the Dart type that will be emitted by the
  /// translator.
  ///
  /// If [returnType] is true, [type] is assumed to be used as a return type of
  /// some member.
  ///
  /// If [onlyEmitInteropTypes] is true, we don't convert to Dart primitives but
  /// rather only emit a valid interop type. This is used for type arguments as
  /// they are bound to `JSAny?`.
  code.TypeReference _typeReference(
    RawType type, {
    bool returnType = false,
    bool onlyEmitInteropTypes = false,
  }) {
    var dartType = type.type;
    var nullable = type.nullable;
    var typeParameter = type.typeParameter;

    if (onlyEmitInteropTypes) {
      // [type] is already an interop type, but we need to handle two cases:
      // 1. Types that we declare as typedefs. In the case where they are
      // aliased to a type that we would declare as a Dart primitive, we need to
      // use the JS type equivalent and not the typedef name.
      // 2. Sentinels in our type aliases that aren't actually JS types.

      // TODO(srujzs): Some of these typedefs definitions may end up being
      // unused as they were ever only used in a generic. Should we delete them
      // or do they provide value to users? If we do delete them, a good way of
      // detecting if they're unused is making `_usedTypes` a ref counter.
      final rawType = _desugarTypedef(type);
      if (rawType != null &&
          _jsTypeToDartPrimitiveAliases.containsKey(rawType.type)) {
        dartType = rawType.type;
        nullable = rawType.nullable;
        typeParameter = rawType.typeParameter;
      }
      dartType = switch (dartType) {
        'JSInteger' => 'JSNumber',
        'JSDouble' => 'JSNumber',
        // When the result is `undefined`, we use `JSAny?`. We explicitly
        // declare `JSUndefined` `RawType`s to be nullable, so no need to set
        // nullable.
        'JSUndefined' => 'JSAny',
        _ => dartType,
      };
    } else {
      if (returnType) {
        // To avoid users downcasting `num`, which works differently based on
        // the platform, we return `double` if it's a double type.
        // TODO(srujzs): Some of these typedefs definitions may end up being
        // unused as they were ever only used in a return type. Should we delete
        // them or do they provide value to users? If we do delete them, a good
        // way of detecting if they're unused is making `_usedTypes` a ref
        // counter.
        final rawType = _desugarTypedef(type);
        final underlyingType = rawType?.type ?? dartType;
        if (underlyingType == 'JSDouble') dartType = 'double';
      }
      dartType = _jsTypeToDartPrimitiveAliases[dartType] ?? dartType;
      if (dartType == 'void') nullable = false;
    }

    final typeArguments = <code.TypeReference>[];
    if (typeParameter != null &&
        (dartType == 'JSArray' || dartType == 'JSPromise')) {
      typeArguments.add(
        _typeReference(typeParameter, onlyEmitInteropTypes: true),
      );
    }
    final originalUrl = _typeToLibrary[dartType]?.url;
    if (originalUrl != null) {
      _regularImports.add(originalUrl);
    }
    final url = _urlForType(dartType);
    return code.TypeReference(
      (b) => b
        ..symbol = dartType
        ..isNullable = nullable
        ..types.addAll(typeArguments)
        ..url = url,
    );
  }

  // Given a [dartType] that is part of a reference, returns the url that needs
  // to be imported to use it, if any.
  String? _urlForType(String dartType) {
    // Unfortunately, `code_builder` doesn't know the url of the library we are
    // emitting, so we have to remove it here to avoid importing ourselves.
    var url = _typeToLibrary[dartType]?.url;

    // JS types and core types don't have urls.
    if (url == null) {
      if (dartType.startsWith('JS')) {
        url = 'dart:js_interop';
      }
      // Else is a core type, so no import required.
    } else if (url == _currentlyTranslatingUrl) {
      url = null;
    } else {
      url = p.url.relative(url, from: p.url.dirname(_currentlyTranslatingUrl));
    }
    return url;
  }

  // Generates an `@JS` annotation if the given [jsOverride] is not empty or if
  // [alwaysEmit] is true.
  //
  // The value of the annotation is either omitted or [jsOverride] if it isn't
  // empty.
  List<code.Expression> _jsOverride(
    String jsOverride, {
    bool alwaysEmit = false,
  }) => [
    if (jsOverride.isNotEmpty || alwaysEmit)
      code.refer('JS', 'dart:js_interop').call([
        if (jsOverride.isNotEmpty) code.literalString(jsOverride),
      ]),
  ];

  // If [jsName] is an element type, creates a constructor for each tag that the
  // element interface corresponds to using either `createElement` or
  // `createElementNS`.
  List<code.Constructor> _elementConstructors(
    String jsName,
    String dartClassName,
    String representationFieldName,
  ) {
    final elementConstructors = <code.Constructor>[];
    final tags = _elementTagMap[jsName];
    if (tags != null) {
      final uri = uriForElement(jsName);
      assert(tags.isNotEmpty);
      final createElementMethod = uri != null
          ? 'createElementNS'
          : 'createElement';
      for (final tag in tags) {
        final article = singularArticleForElement(dartClassName);
        elementConstructors.add(
          code.Constructor(
            (b) => b
              ..docs.addAll([
                formatDocs(
                  "Creates $article [$dartClassName] using the tag '$tag'.",
                  80,
                  // Extension type members start with an indentation of 2
                  // chars.
                  2,
                ).join('\n'),
              ])
              // If there are multiple tags, use a named constructor.
              ..name = tags.length == 1 ? null : dartRename(tag)
              ..initializers.addAll([
                code
                    .refer(representationFieldName)
                    .assign(
                      code
                          .refer('document', _urlForType('Document'))
                          .property(createElementMethod)
                          .call([
                            // TODO(srujzs): Should we make these URIs a
                            // constant and refer to the constant instead?
                            // Downside is that it requires another manual hack
                            // to generate them.
                            if (uri != null) code.literalString(uri),
                            code.literalString(tag),
                          ]),
                    )
                    .code,
              ]),
          ),
        );
      }
    }
    return elementConstructors;
  }

  code.Library _library(LibraryInfo library) => code.Library((b) {
    _currentDocImports.clear();
    _regularImports.clear();
    _docGenerator = DocGenerator(this);

    final body = [
      for (final typedef in library.typedefs.where(_usedTypes.contains))
        _typedef(
          typedef.name,
          _desugarTypedef(RawType(typedef.name, false))!,
          typedef,
        ),
      for (final callback in library.callbacks.where(_usedTypes.contains))
        _typedef(
          callback.name,
          _desugarTypedef(RawType(callback.name, false))!,
        ),
      for (final callbackInterface in library.callbackInterfaces.where(
        _usedTypes.contains,
      ))
        _typedef(
          callbackInterface.name,
          _desugarTypedef(RawType(callbackInterface.name, false))!,
        ),
      for (final enum_ in library.enums.where(_usedTypes.contains))
        _typedef(enum_.name, _desugarTypedef(RawType(enum_.name, false))!),
      for (final interfacelike in library.interfacelikes.where(
        _usedTypes.contains,
      ))
        ..._interfaceGenerator.interfacelike(interfacelike),
    ];

    final docImports =
        _currentDocImports
            .where((url) => !_regularImports.contains(url))
            .toList()
          ..sort();
    if (_generateForWeb) {
      b.comments.addAll([...licenseHeader, '', ...mozLicenseHeader]);
    }

    if (docImports.isNotEmpty) {
      final currentDir = p.url.dirname(_currentlyTranslatingUrl);
      b.docs.addAll([
        for (final url in docImports)
          '/// @docImport \'${p.url.relative(url, from: currentDir)}\';',
      ]);
    }

    b
      ..ignoreForFile.addAll([
        // JS constants are allowed to be all uppercased.
        'constant_identifier_names',
        // JS properties are allowed to not be camelcased.
        'non_constant_identifier_names',
      ])
      ..generatedByComment = generatedFileDisclaimer
      // TODO(srujzs): This is to address the issue around extension type
      // object literal constructors in
      // https://github.com/dart-lang/sdk/issues/54801.
      // Once this package moves to an SDK version that contains a fix
      // for that, this can be removed.
      ..annotations.addAll(_jsOverride('', alwaysEmit: true))
      ..body.addAll(body);
  });

  code.Library generateRootImport(Iterable<String> files) => code.Library(
    (b) => b
      ..comments.addAll(licenseHeader)
      ..directives.addAll(files.map(code.Directive.export)),
  );

  TranslationResult translate() {
    // Create a root import that exports all of the other libraries.
    final dartLibraries = <String, code.Library>{};

    // Translate each IDL library into a Dart library.
    for (var entry in _libraries.entries) {
      _currentlyTranslatingUrl = entry.value.url;

      final dartLibrary = _library(entry.value);
      if (dartLibrary.body.isEmpty && dartLibrary.directives.isEmpty) {
        print('  not generating empty library: ${entry.value.url}');
      } else {
        dartLibraries[entry.key] = dartLibrary;
      }
    }

    if (_generateForWeb) {
      dartLibraries['dom.dart'] = generateRootImport(dartLibraries.keys);
    }

    return dartLibraries;
  }

  @override
  idl.Node? getDeclaration(String typeName) => _typeToDeclaration[typeName];

  @override
  void addDocImport(String url) {
    if (url != _currentlyTranslatingUrl) {
      _currentDocImports.add(url);
    }
  }

  @override
  bool isTypeUsed(idl.Node node) => _usedTypes.contains(node);

  @override
  LibraryInfo? getLibraryForType(String typeName) => _typeToLibrary[typeName];

  @override
  void recordRenamedClass(String jsName, String dartClassName) {
    _renamedClasses[jsName] = dartClassName;
  }

  @override
  PartialInterfacelike? getPartialInterface(String name) =>
      _interfacelikes[name];

  @override
  code.TypeReference typeReference(
    RawType type, {
    bool onlyEmitInteropTypes = false,
    bool returnType = false,
  }) => _typeReference(
    type,
    onlyEmitInteropTypes: onlyEmitInteropTypes,
    returnType: returnType,
  );

  @override
  List<code.Constructor> elementConstructors(
    String jsName,
    String dartClassName,
    String representationFieldName,
  ) => _elementConstructors(jsName, dartClassName, representationFieldName);
}

const _jsTypeToDartPrimitiveAliases = <String, String>{
  'JSBoolean': 'bool',
  'JSString': 'String',
  'JSInteger': 'int',
  // Since we want users to be able to be pass integer values for where doubles
  // are expected, we keep this as `num`. We handle cases where doubles are
  // returned from a browser API differently however. See
  // `Translator._typeReference` for more details.
  'JSDouble': 'num',
  'JSNumber': 'num',
  'JSVoid': 'void',
  'JSUndefined': 'void',
};
