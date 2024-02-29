// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:code_builder/code_builder.dart' as code;
import 'package:path/path.dart' as p;

import 'banned_names.dart';
import 'bcd.dart';
import 'doc_provider.dart';
import 'formatting.dart';
import 'singletons.dart';
import 'type_aliases.dart';
import 'type_union.dart';
import 'util.dart';
import 'webidl_api.dart' as idl;
import 'webref_elements_api.dart';

typedef TranslationResult = Map<String, code.Library>;

class _Library {
  final Translator translator;
  final String url;
  // Contains both IDL `interface`s and `namespace`s.
  final List<idl.Interfacelike> interfacelikes = [];
  final List<idl.Interfacelike> partialInterfaces = [];
  final List<idl.Interfacelike> interfaceMixins = [];
  final List<idl.Interfacelike> partialInterfaceMixins = [];
  final List<idl.Typedef> typedefs = [];
  final List<idl.Enum> enums = [];
  final List<idl.Callback> callbacks = [];
  final List<idl.Interfacelike> callbackInterfaces = [];

  _Library(this.translator, this.url);

  void _addNamed<T extends idl.Named>(idl.Node node, List<T> list) {
    final named = node as T;
    final name = named.name;
    assert(!translator._typeToLibrary.containsKey(name));
    translator._typeToLibrary[name] = this;
    assert(!translator._typeToDeclaration.containsKey(name));
    translator._typeToDeclaration[name] = node;
    list.add(named);
  }

  void add(idl.Node node) {
    final type = node.type;
    // TODO(srujzs): We may want an enum here, but that would be slower due to
    // a string lookup in the set of enums.
    switch (type) {
      case 'interface mixin':
      case 'interface':
      case 'namespace':
      case 'dictionary':
        // If we have a not partial interfacelike, then we will emit it in this
        // library. However, in order to collect any possible cross-library
        // partial interfaces, we track interfacelikes on the translator as
        // well.
        final isMixin = type == 'interface mixin';
        final interfaceList = isMixin ? interfaceMixins : interfacelikes;
        final partialInterfaceList =
            isMixin ? partialInterfaceMixins : partialInterfaces;
        final interfacelike = node as idl.Interfacelike;
        if (!node.partial) {
          _addNamed<idl.Interfacelike>(node, interfaceList);
        } else {
          partialInterfaceList.add(interfacelike);
        }
        break;
      case 'typedef':
        _addNamed<idl.Typedef>(node, typedefs);
        break;
      case 'includes':
        translator._includes.add(node as idl.Includes);
        break;
      case 'enum':
        _addNamed<idl.Enum>(node, enums);
        break;
      case 'callback interface':
        _addNamed<idl.Interfacelike>(node, callbackInterfaces);
        break;
      case 'callback':
        final callback = node as idl.Callback;

        /// TODO(joshualitt): Maybe handle this case a bit more elegantly?
        if (callback.name == 'Function') {
          return;
        }
        _addNamed<idl.Callback>(callback, callbacks);
        break;
      case 'eof':
        break;
      default:
        throw Exception('Unexpected node type $type');
    }
  }
}

/// If [rawType] corresponds to an IDL type that we declare as a typedef,
/// desugars the typedef and returns the JS type equivalent.
///
/// Otherwise, returns null.
_RawType? _getTypedefAsJsType(_RawType rawType) {
  final decl = Translator.instance!._typeToDeclaration[rawType.type];
  if (decl != null) {
    return switch (decl.type) {
      'typedef' => _getRawType((decl as idl.Typedef).idlType),
      // TODO(srujzs): If we ever add a generic JS function type, we should
      // maybe leverage that here so we have stronger type-checking of
      // callbacks.
      'callback' || 'callback interface' => _RawType('JSFunction', false),
      // TODO(srujzs): Enums in the WebIDL are just strings, but we could make
      // them easier to work with on the Dart side.
      'enum' => _RawType('JSString', false),
      _ => null
    };
  }
  return null;
}

_RawType _computeRawTypeUnion(_RawType rawType1, _RawType rawType2) {
  final type1 = rawType1.type;
  final type2 = rawType2.type;
  final nullable1 = rawType1.nullable;
  final nullable2 = rawType2.nullable;
  final typeParam1 = rawType1.typeParameter;
  final typeParam2 = rawType2.typeParameter;

  // If either type parameter is null, then the resulting union can never be a
  // generic type, so return null.
  _RawType? computeTypeParamUnion(_RawType? typeParam1, _RawType? typeParam2) =>
      typeParam1 != null && typeParam2 != null
          ? _computeRawTypeUnion(typeParam1, typeParam2)
          : null;

  // Equality.
  if (type1 == type2) {
    return _RawType(type1, nullable1 || nullable2,
        computeTypeParamUnion(typeParam1, typeParam2));
  }
  // This sentinel is only for nullability.
  if (type1 == 'JSUndefined') return _RawType(type2, true, typeParam2);
  if (type2 == 'JSUndefined') return _RawType(type1, true, typeParam1);
  // If the two types are not equal, we can just use `JSNumber` as the union can
  // never be `JSInteger` or `JSDouble` anyways.
  if (type1 == 'JSInteger' || type1 == 'JSDouble') rawType1.type = 'JSNumber';
  if (type2 == 'JSInteger' || type2 == 'JSDouble') rawType2.type = 'JSNumber';

  // In the case of unions, we should try and get a JS type-able type to get a
  // better LUB.
  _RawType getTypeForUnionCalculation(_RawType rawType) {
    final type = rawType.type;
    final nullable = rawType.nullable;
    final decl = Translator.instance!._typeToDeclaration[type];
    if (decl != null) {
      final nodeType = decl.type;
      switch (nodeType) {
        case 'interface':
        case 'dictionary':
          // TODO(srujzs): We can do better if we do a LUB of the interfaces (so
          // we get a possible interface name instead of `JSObject`), but that
          // might be too much effort for too little reward. This would entail
          // caching the hierarchy of IDL types.
          return _RawType('JSObject', nullable);
        default:
          final desugaredType = _getTypedefAsJsType(rawType);
          if (desugaredType != null) {
            return getTypeForUnionCalculation(desugaredType);
          }
          throw Exception('Unhandled type $type with node type: $nodeType');
      }
    } else {
      return _RawType(type, nullable, rawType.typeParameter);
    }
  }

  final unionableType1 = getTypeForUnionCalculation(rawType1);
  final unionableType2 = getTypeForUnionCalculation(rawType2);

  // We choose `JSAny` if they're not both JS types.
  return _RawType(
      computeJsTypeUnion(unionableType1.type, unionableType2.type) ?? 'JSAny',
      unionableType1.nullable || unionableType2.nullable,
      computeTypeParamUnion(
          unionableType1.typeParameter, unionableType2.typeParameter));
}

/// Returns a [_RawType] for the given [idl.IDLType].
_RawType _getRawType(idl.IDLType idlType) {
  // For union types, we take the possible union of all the types using a LUB.
  if (idlType.union) {
    final types = (idlType.idlType as JSArray).toDart;
    final unionType = _getRawType(types[0] as idl.IDLType);
    for (var i = 1; i < types.length; i++) {
      unionType.update(types[i] as idl.IDLType);
    }
    return unionType..nullable |= idlType.nullable;
  }
  String type;
  var nullable = idlType.nullable;
  _RawType? typeParameter;
  if (idlType.generic.isNotEmpty) {
    // TODO(srujzs): Once we have a generic `JSArray` and `JSPromise`, we should
    // add these type parameters in. We need to be careful, however, as we
    // should only add the type parameter if the type is a subtype of `JSAny?`
    // either because it is an interface or a typedef. We also need to make sure
    // to convert type aliases that are Dart types back to JS types e.g.
    // `String` should be `JSString`.
    final types = (idlType.idlType as JSArray).toDart;
    if (types.length == 1) {
      typeParameter = _getRawType(types[0] as idl.IDLType);
    } else if (types.length > 1) {
      assert(types.length == 2);
      assert(idlType.generic == 'record');
    }
    type = idlType.generic;
  } else {
    type = (idlType.idlType as JSString).toDart;
  }

  // Handles types that don't exist in the set of IDL type declarations. They
  // are either some special values or JS builtin types.

  // `WindowProxy` doesn't exist as an interface in the IDL. For our purposes,
  // `Window` is the appropriate interface.
  if (type == 'WindowProxy') type = 'Window';
  // `any` is marked non-nullable in the IDL, but since it is a union of
  // `undefined`, it can be nullable for our purposes.
  if (type == 'any') nullable = true;
  return _RawType(
      idlOrBuiltinToJsTypeAliases[type] ?? type, nullable, typeParameter);
}

/// A class representing either a type that corresponds to an IDL declaration or
/// a `dart:js_interop` JS types (including sentinels).
///
/// This should not include IDL types for which there isn't a declaration e.g.
/// `any` or a JS built-in type e.g. `ArrayBuffer`.
class _RawType {
  String type;
  bool nullable;
  _RawType? typeParameter;

  _RawType(this.type, this.nullable, [this.typeParameter]) {
    // While the IDL does not define `undefined` as nullable, it is treated as
    // null in interop.
    if (type == 'JSUndefined') nullable = true;
  }

  void update(idl.IDLType idlType) {
    final union = _computeRawTypeUnion(this, _getRawType(idlType));
    type = union.type;
    nullable = union.nullable;
    typeParameter = union.typeParameter;
  }
}

class _Parameter {
  final Set<String> _names;
  final _RawType type;
  bool isOptional;
  late final String name = _generateName();

  _Parameter._(this._names, this.type, this.isOptional);

  factory _Parameter(idl.Argument argument) => _Parameter._(
      {argument.name}, _getRawType(argument.idlType), argument.optional);

  String _generateName() {
    final namesList = _names.toList();
    namesList.sort();
    return namesList
        .sublist(0, 1)
        .followedBy(namesList.sublist(1).map(capitalize))
        .join('Or');
  }

  void update(idl.Argument argument) {
    final thatName = argument.name;
    _names.add(thatName);
    type.update(argument.idlType);
    if (argument.optional) {
      isOptional = true;
    }
  }
}

class _OverridableMember {
  final List<_Parameter> parameters = [];

  _OverridableMember(JSArray<idl.Argument> rawParameters) {
    for (var i = 0; i < rawParameters.length; i++) {
      parameters.add(_Parameter(rawParameters[i]));
    }
  }

  void _processParameters(JSArray<idl.Argument> thoseParameters) {
    // Assume if we have extra arguments beyond what was provided in some other
    // method, that these are all optional.
    final thatLength = thoseParameters.length;
    for (var i = thatLength; i < parameters.length; i++) {
      parameters[i].isOptional = true;
    }
    for (var i = 0; i < thatLength; i++) {
      final argument = thoseParameters[i];
      if (i >= parameters.length) {
        // We assume these parameters must be optional, regardless of what the
        // IDL says.
        parameters.add(_Parameter(argument)..isOptional = true);
      } else {
        parameters[i].update(argument);
      }
    }
  }
}

class _OverridableOperation extends _OverridableMember {
  _MemberName name;
  final bool isStatic;
  final _RawType returnType;
  final MdnProperty? mdnProperty;

  _OverridableOperation._(this.name, this.isStatic, this.returnType,
      this.mdnProperty, super.parameters);

  factory _OverridableOperation(idl.Operation operation, _MemberName name,
          MdnProperty? mdnProperty) =>
      _OverridableOperation._(name, operation.special == 'static',
          _getRawType(operation.idlType), mdnProperty, operation.arguments);

  void update(idl.Operation that) {
    final jsOverride = name.jsOverride;
    final thisName = jsOverride.isNotEmpty ? jsOverride : name.name;
    assert(thisName == that.name && isStatic == (that.special == 'static'));
    returnType.update(that.idlType);
    _processParameters(that.arguments);
  }
}

class _OverridableConstructor extends _OverridableMember {
  _OverridableConstructor(idl.Constructor constructor)
      : super(constructor.arguments);

  void update(idl.Constructor that) => _processParameters(that.arguments);
}

class _PartialInterfacelike {
  final String name;
  final String type;
  String? inheritance;
  final Map<String, _OverridableOperation> operations = {};
  final Map<String, _OverridableOperation> staticOperations = {};
  final List<idl.Member> members = [];
  final List<idl.Member> staticMembers = [];
  final MdnInterface? mdnInterface;
  final List<idl.Member> extensionMembers = [];
  _OverridableConstructor? constructor;

  _PartialInterfacelike._(
      this.name, this.type, this.inheritance, this.mdnInterface);

  factory _PartialInterfacelike(
      idl.Interfacelike interfacelike, MdnInterface? mdnInterface) {
    final partialInterfacelike = _PartialInterfacelike._(interfacelike.name,
        interfacelike.type, interfacelike.inheritance, mdnInterface);
    partialInterfacelike._processMembers(interfacelike.members);
    return partialInterfacelike;
  }

  void _processMembers(JSArray<idl.Member> nodeMembers) {
    for (var i = 0; i < nodeMembers.length; i++) {
      final member = nodeMembers[i];
      final type = member.type;
      switch (type) {
        case 'constructor':
          final idlConstructor = member as idl.Constructor;
          if (_hasHTMLConstructorAttribute(idlConstructor)) continue;
          if (constructor == null) {
            constructor = _OverridableConstructor(idlConstructor);
          } else {
            constructor!.update(idlConstructor);
          }
          break;
        case 'const':
          staticMembers.add(member);
          break;
        case 'attribute':
          final attribute = member as idl.Attribute;
          if (attribute.special == 'static') {
            staticMembers.add(member);
          } else {
            if (name == 'SVGElement' && attribute.name == 'className') {
              // `SVGElement.className` returns an `SVGAnimatedString`, but its
              // corresponding setter `Element.className` takes a `String`. As
              // these two types are incompatible, we need to move this member
              // to an extension instead. As it shares the same name as the
              // getter `Element.className`, users will need to apply the
              // extension explicitly.
              extensionMembers.add(member);
            } else {
              members.add(member);
            }
          }
          break;
        case 'operation':
          final operation = member as idl.Operation;
          final name = operation.name;
          if (name.isEmpty) {
            // TODO(joshualitt): We may be able to handle some unnamed
            // operations.
            continue;
          }
          if (operation.special == 'static') {
            if (staticOperations.containsKey(name)) {
              staticOperations[name]!.update(operation);
            } else {
              final _MemberName memberName;
              if (operations.containsKey(name)) {
                memberName = _MemberName('${name}_', name);
              } else {
                memberName = _MemberName(name);
              }
              staticOperations[name] = _OverridableOperation(
                  operation, memberName, mdnInterface?.propertyFor(name));
            }
          } else {
            if (operations.containsKey(name)) {
              operations[name]!.update(operation);
            } else {
              final staticOperation = staticOperations[name];
              if (staticOperation != null) {
                staticOperation.name = _MemberName('${name}_', name);
              }
              operations[name] = _OverridableOperation(operation,
                  _MemberName(operation.name), mdnInterface?.propertyFor(name));
            }
          }
          break;
        case 'field':
          members.add(member);
          break;
        case 'maplike':
        case 'setlike':
        case 'iterable':
          members.add(member);
          break;
        default:
          throw Exception('Unrecognized member type $type');
      }
    }
  }

  void update(idl.Interfacelike interfacelike) {
    assert((name == interfacelike.name && type == interfacelike.type) ||
        interfacelike.type == 'interface mixin');
    assert(interfacelike.inheritance == null || inheritance == null,
        'An interface should only be defined once.');
    inheritance ??= interfacelike.inheritance;
    _processMembers(interfacelike.members);
  }

  // Constructors with the attribute `HTMLConstructor` are intended for custom
  // element behavior, and are not useful otherwise, so avoid emitting them.
  // https://html.spec.whatwg.org/#html-element-constructors
  bool _hasHTMLConstructorAttribute(idl.Constructor constructor) =>
      constructor.extAttrs.toDart
          .any((extAttr) => extAttr.name == 'HTMLConstructor');
}

class _MemberName {
  final String name;
  final String jsOverride;

  _MemberName._(this.name, this.jsOverride);

  factory _MemberName(String name, [String jsOverride = '']) {
    final rename = dartRename(name);
    if (rename != name && jsOverride.isEmpty) jsOverride = name;
    return _MemberName._(rename, jsOverride);
  }
}

class Translator {
  final String packageRoot;
  final String _librarySubDir;
  final List<String> _cssStyleDeclarations;
  final Map<String, Set<String>> _elementTagMap;

  final _libraries = <String, _Library>{};
  final _typeToDeclaration = <String, idl.Node>{};
  final _typeToLibrary = <String, _Library>{};
  final _interfacelikes = <String, _PartialInterfacelike>{};
  final _includes = <idl.Includes>[];

  late String _currentlyTranslatingUrl;
  late DocProvider docProvider;
  late BrowserCompatData browserCompatData;

  /// Singleton so that various helper methods can access info about the AST.
  static Translator? instance;

  Translator(this.packageRoot, this._librarySubDir, this._cssStyleDeclarations,
      this._elementTagMap) {
    instance = this;
    docProvider = DocProvider.create();
    browserCompatData = BrowserCompatData.read();
  }

  /// Set or update partial interfaces so we can have a unified interface
  /// representation.
  ///
  /// Note that this is done after the initial pass on the AST. This is because
  /// this step resolves unions and therefore can't be done until we record all
  /// types.
  void setOrUpdateInterfacelikes() {
    final mixins = <String, Set<idl.Interfacelike>>{};
    for (final library in _libraries.values) {
      for (final interfacelike in [
        ...library.interfacelikes,
        ...library.partialInterfaces
      ]) {
        final name = interfacelike.name;
        if (_interfacelikes.containsKey(name)) {
          _interfacelikes[name]!.update(interfacelike);
        } else {
          _interfacelikes[name] = _PartialInterfacelike(
              interfacelike, docProvider.interfaceFor(name));
        }
      }
      for (final interfacelike in [
        ...library.interfaceMixins,
        ...library.partialInterfaceMixins
      ]) {
        mixins.putIfAbsent(interfacelike.name, () => {}).add(interfacelike);
      }
    }
    for (final include in _includes) {
      final target = include.target;
      final includes = include.includes;

      // Guard against partial interfaces and mixins that we chose not to
      // generate.
      if (_interfacelikes.containsKey(target) && mixins.containsKey(includes)) {
        for (final partial in mixins[includes]!) {
          _interfacelikes[target]!.update(partial);
        }
      }
    }
  }

  void collect(String shortName, JSArray<idl.Node> ast) {
    final libraryPath = '$_librarySubDir/${shortName.kebabToSnake}.dart';
    assert(!_libraries.containsKey(libraryPath));

    final library = _Library(this, '$packageRoot/$libraryPath');

    for (var i = 0; i < ast.length; i++) {
      library.add(ast[i]);
    }

    if (_shouldGenerate(shortName, library)) {
      _libraries[libraryPath] = library;
    } else {
      print('  skipping generation for $shortName');
    }
  }

  code.TypeDef _typedef(String name, _RawType rawType) => code.TypeDef((b) => b
    ..name = name
    ..definition = _typeReference(rawType));

  code.Method _topLevelGetter(_RawType type, String getterName) =>
      code.Method((b) => b
        ..annotations.addAll(_jsOverride('', alwaysEmit: true))
        ..external = true
        ..returns = _typeReference(type)
        ..name = getterName
        ..type = code.MethodType.getter);

  // Given a raw type, convert it to the Dart type that will be emitted by the
  // translator.
  //
  // If [onlyEmitInteropTypes] is true, we don't convert to Dart primitives but
  // rather only emit a valid interop type. This is used for type arguments as
  // they are bound to `JSAny?`.
  code.TypeReference _typeReference(_RawType type,
      {bool onlyEmitInteropTypes = false}) {
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
      // or does it provide value to users?
      final rawType = _getTypedefAsJsType(type);
      if (rawType != null &&
          jsTypeToDartPrimitiveAliases.containsKey(rawType.type)) {
        dartType = rawType.type;
        nullable = rawType.nullable;
        typeParameter = rawType.typeParameter;
      }
      dartType = switch (dartType) {
        'JSInteger' => 'JSNumber',
        'JSDouble' => 'JSNumber',
        // When the result is `undefined`, we use `JSAny?`. We explicitly
        // declare `JSUndefined` `_RawType`s to be nullable, so no need to set
        // nullable.
        'JSUndefined' => 'JSAny',
        _ => dartType,
      };
    } else {
      // Convert JS types to primitives.
      dartType = jsTypeToDartPrimitiveAliases[dartType] ?? dartType;
      if (dartType == 'void') nullable = false;
    }

    final typeArguments = <code.TypeReference>[];
    if (typeParameter != null &&
        (dartType == 'JSArray' || dartType == 'JSPromise')) {
      typeArguments
          .add(_typeReference(typeParameter, onlyEmitInteropTypes: true));
    }
    final url = _urlForType(dartType);
    return code.TypeReference((b) => b
      ..symbol = dartType
      ..isNullable = nullable
      ..types.addAll(typeArguments)
      ..url = url);
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
    } else if (p.dirname(url) == p.dirname(_currentlyTranslatingUrl)) {
      url = p.basename(url);
    }
    return url;
  }

  code.TypeReference _idlTypeToTypeReference(idl.IDLType idlType) =>
      _typeReference(_getRawType(idlType));

  code.TypeReference _typeToTypeReference(_RawType type) =>
      _typeReference(type);

  T _overridableMember<T>(
      _OverridableMember member,
      T Function(List<code.Parameter> requiredParameters,
              List<code.Parameter> optionalParameters)
          generator) {
    final requiredParameters = <code.Parameter>[];
    final optionalParameters = <code.Parameter>[];
    for (final rawParameter in member.parameters) {
      final parameter = code.Parameter((b) => b
        ..name = dartRename(rawParameter.name)
        ..type = _typeToTypeReference(rawParameter.type));
      if (rawParameter.isOptional) {
        optionalParameters.add(parameter);
      } else {
        requiredParameters.add(parameter);
      }
    }
    return generator(requiredParameters, optionalParameters);
  }

  code.Constructor _constructor(_OverridableConstructor constructor) =>
      _overridableMember<code.Constructor>(
          constructor,
          (requiredParameters, optionalParameters) => code.Constructor((b) => b
            ..external = true
            // TODO(srujzs): Should we generate generative or factory
            // constructors? With `@staticInterop`, factories were needed, but
            // extension types have no such limitation.
            ..factory = true
            ..requiredParameters.addAll(requiredParameters)
            ..optionalParameters.addAll(optionalParameters)));

  code.Constructor _objectLiteral(List<idl.Member> members) {
    final optionalParameters = <code.Parameter>[];
    for (final member in members) {
      // We currently only lower dictionaries to object literals, and
      // dictionaries can only have 'field' members.
      assert(member.type == 'field');
      final field = member as idl.Field;
      final isRequired = field.required;
      final parameter = code.Parameter((b) => b
        ..name = dartRename(field.name)
        ..type = _idlTypeToTypeReference(field.idlType)
        ..required = isRequired
        ..named = true);
      optionalParameters.add(parameter);
    }
    return code.Constructor((b) => b
      ..optionalParameters.addAll(optionalParameters)
      ..external = true
      // TODO(srujzs): Should we generate generative or factory constructors?
      // With `@staticInterop`, factories were needed, but extension types have
      // no such limitation.
      ..factory = true);
  }

  // Generates an `@JS` annotation if the given [jsOverride] is not empty or if
  // [alwaysEmit] is true.
  //
  // The value of the annotation is either omitted or [jsOverride] if it isn't
  // empty.
  List<code.Expression> _jsOverride(String jsOverride,
          {bool alwaysEmit = false}) =>
      [
        if (jsOverride.isNotEmpty || alwaysEmit)
          code.refer('JS', 'dart:js_interop').call([
            if (jsOverride.isNotEmpty) code.literalString(jsOverride),
          ]),
      ];

  code.Method _operation(_OverridableOperation operation) {
    final memberName = operation.name;
    return _overridableMember<code.Method>(
      operation,
      (requiredParameters, optionalParameters) => code.Method((b) => b
        ..annotations.addAll(_jsOverride(memberName.jsOverride))
        ..external = true
        ..static = operation.isStatic
        ..returns = _typeToTypeReference(operation.returnType)
        ..name = memberName.name
        ..docs.addAll(operation.mdnProperty?.formattedDocs ?? [])
        ..requiredParameters.addAll(requiredParameters)
        ..optionalParameters.addAll(optionalParameters)),
    );
  }

  List<code.Method> _getterSetter(
      {required String fieldName,
      required code.Reference Function() getType,
      required bool isStatic,
      required bool readOnly}) {
    final memberName = _MemberName(fieldName);
    final name = memberName.name;
    return [
      if (!readOnly)
        code.Method((b) => b
          ..annotations.addAll(_jsOverride(memberName.jsOverride))
          ..external = true
          ..static = isStatic
          ..type = code.MethodType.setter
          ..name = name
          ..requiredParameters.add(code.Parameter((b) => b
            ..type = getType()
            ..name = 'value'))),
      code.Method((b) => b
        ..annotations.addAll(_jsOverride(memberName.jsOverride))
        ..external = true
        ..static = isStatic
        ..returns = getType()
        ..type = code.MethodType.getter
        ..name = name)
    ];
  }

  List<code.Method> _getterSetterWithIDLType(
          {required String fieldName,
          required idl.IDLType type,
          required bool isStatic,
          required bool readOnly}) =>
      _getterSetter(
          fieldName: fieldName,
          getType: () => _idlTypeToTypeReference(type),
          isStatic: isStatic,
          readOnly: readOnly);

  List<code.Method> _attribute(idl.Attribute attribute) =>
      _getterSetterWithIDLType(
          fieldName: attribute.name,
          type: attribute.idlType,
          readOnly: attribute.readonly,
          isStatic: attribute.special == 'static');

  code.Method _constant(idl.Constant constant) => code.Method((b) => b
    ..external = true
    ..static = true
    ..returns = _idlTypeToTypeReference(constant.idlType)
    ..type = code.MethodType.getter
    ..name = constant.name);

  List<code.Method> _field(idl.Field field) => _getterSetterWithIDLType(
      fieldName: field.name,
      type: field.idlType,
      readOnly: false,
      isStatic: false);

  List<code.Method> _member(idl.Member member) {
    final type = member.type;
    return switch (type) {
      'operation' => throw Exception('Should be handled explicitly.'),
      'attribute' => _attribute(member as idl.Attribute),
      'const' => [_constant(member as idl.Constant)],
      'field' => _field(member as idl.Field),
      'iterable' ||
      'maplike' ||
      'setlike' =>
        // TODO(joshualitt): Handle these cases.
        [],
      _ => throw Exception('Unsupported member type $type')
    };
  }

  List<code.Method> _members(List<idl.Member> members) =>
      [for (final member in members) ..._member(member)];

  List<code.Method> _operations(List<_OverridableOperation> operations) =>
      [for (final operation in operations) _operation(operation)];

  List<code.Method> _cssStyleDeclarationProperties() => [
        for (final style in _cssStyleDeclarations)
          ..._getterSetter(
              fieldName: style,
              getType: () => code.TypeReference((b) => b..symbol = 'String'),
              isStatic: false,
              readOnly: false),
      ];

  // If [jsName] is an element type, creates a constructor for each tag that the
  // element interface corresponds to using either `createElement` or
  // `createElementNS`.
  List<code.Constructor> _elementConstructors(
      String jsName, String dartClassName, String representationFieldName) {
    final elementConstructors = <code.Constructor>[];
    final tags = _elementTagMap[jsName];
    if (tags != null) {
      final uri = uriForElement(jsName);
      assert(tags.isNotEmpty);
      final createElementMethod =
          uri != null ? 'createElementNS' : 'createElement';
      for (final tag in tags) {
        final article = singularArticleForElement(dartClassName);
        elementConstructors.add(code.Constructor((b) => b
          ..docs.addAll([
            formatDocs(
                    "Creates $article [$dartClassName] using the tag '$tag'.",
                    80,
                    // Extension type members start with an indentation of 2
                    // chars.
                    2)
                .join('\n')
          ])
          // If there are multiple tags, use a named constructor.
          ..name = tags.length == 1 ? null : dartRename(tag)
          ..initializers.addAll([
            code
                .refer(representationFieldName)
                .assign(code
                    .refer('document', _urlForType('Document'))
                    .property(createElementMethod)
                    .call([
                  // TODO(srujzs): Should we make these URIs a constant and
                  // refer to the constant instead? Downside is that it requires
                  // another manual hack to generate them.
                  if (uri != null) code.literalString(uri),
                  code.literalString(tag)
                ]))
                .code
          ])));
      }
    }
    return elementConstructors;
  }

  code.Extension _extension(
          {required _RawType type,
          required List<idl.Member> extensionMembers}) =>
      code.Extension((b) => b
        ..name = '${type.type.snakeToPascal}Extension'
        ..on = _typeReference(type)
        ..methods.addAll(_members(extensionMembers)));

  code.ExtensionType _extensionType({
    required String jsName,
    required String dartClassName,
    required MdnInterface? mdnInterface,
    required BCDInterfaceStatus? interfaceStatus,
    required List<String> implements,
    required _OverridableConstructor? constructor,
    required List<_OverridableOperation> operations,
    required List<_OverridableOperation> staticOperations,
    required List<idl.Member> members,
    required List<idl.Member> staticMembers,
    required bool isObjectLiteral,
  }) {
    final docs = mdnInterface == null ? <String>[] : mdnInterface.formattedDocs;

    final jsObject = _typeReference(_RawType('JSObject', false));
    const representationFieldName = '_';
    return code.ExtensionType((b) => b
      ..docs.addAll(docs)
      ..annotations.addAll(
          _jsOverride(isObjectLiteral || jsName == dartClassName ? '' : jsName))
      ..name = dartClassName
      ..primaryConstructorName = '_'
      ..representationDeclaration = code.RepresentationDeclaration((b) => b
        ..name = representationFieldName
        ..declaredRepresentationType = jsObject)
      ..implements.addAll(implements
          .map((interface) => _typeReference(_RawType(interface, false)))
          .followedBy([jsObject]))
      ..constructors.addAll((isObjectLiteral
              ? [_objectLiteral(members)]
              : constructor != null
                  ? [_constructor(constructor)]
                  : <code.Constructor>[])
          .followedBy(_elementConstructors(
              jsName, dartClassName, representationFieldName)))
      ..methods.addAll(_operations(staticOperations)
          .followedBy(_members(staticMembers))
          .followedBy(_operations(operations))
          .followedBy(_members(members))
          .followedBy(dartClassName == 'CSSStyleDeclaration'
              ? _cssStyleDeclarationProperties()
              : [])));
  }

  List<code.Spec> _interfacelike(idl.Interfacelike idlInterfacelike) {
    final name = idlInterfacelike.name;
    final interfacelike = _interfacelikes[name]!;
    final jsName = interfacelike.name;
    final type = interfacelike.type;
    final isNamespace = type == 'namespace';
    final isDictionary = type == 'dictionary';

    final mdnInterface = docProvider.interfaceFor(jsName);

    // Namespaces have lowercase names. We also translate them to
    // private classes, and make their first character uppercase in the process.
    final dartClassName = isNamespace ? '\$${capitalize(jsName)}' : jsName;

    final interfaceStatus = browserCompatData.retrieveInterfaceFor(name);

    // We create a getter for namespaces with the expected name. We also create
    // getters for a few pre-defined singleton classes.
    final getterName = isNamespace ? jsName : singletons[jsName];
    final operations = interfacelike.operations.values.toList();
    final staticOperations = interfacelike.staticOperations.values.toList();
    final members = interfacelike.members;
    final extensionMembers = interfacelike.extensionMembers;
    final implements = [
      if (interfacelike.inheritance != null) interfacelike.inheritance!
    ];

    final rawType = _RawType(dartClassName, false);

    return [
      if (getterName != null) _topLevelGetter(rawType, getterName),
      _extensionType(
          jsName: jsName,
          dartClassName: dartClassName,
          mdnInterface: mdnInterface,
          interfaceStatus: interfaceStatus,
          implements: implements,
          constructor: interfacelike.constructor,
          operations: operations,
          staticOperations: staticOperations,
          members: members,
          staticMembers: interfacelike.staticMembers,
          isObjectLiteral: isDictionary),
      if (extensionMembers.isNotEmpty)
        _extension(type: rawType, extensionMembers: extensionMembers)
    ];
  }

  code.Library _library(_Library library) => code.Library((b) => b
    ..comments.addAll([
      ...licenseHeader,
      '',
      ...mozLicenseHeader,
    ])
    ..generatedByComment = generatedFileDisclaimer
    // TODO(srujzs): This is to address the issue around extension type object
    // literal constructors in https://github.com/dart-lang/sdk/issues/54801.
    // Once this package moves to an SDK version that contains a fix for that,
    // this can be removed.
    ..annotations.addAll(_jsOverride('', alwaysEmit: true))
    ..body.addAll([
      for (final typedef in library.typedefs)
        _typedef(
            typedef.name, _getTypedefAsJsType(_RawType(typedef.name, false))!),
      for (final callback in library.callbacks)
        _typedef(callback.name,
            _getTypedefAsJsType(_RawType(callback.name, false))!),
      for (final callbackInterface in library.callbackInterfaces)
        _typedef(callbackInterface.name,
            _getTypedefAsJsType(_RawType(callbackInterface.name, false))!),
      for (final enum_ in library.enums)
        _typedef(enum_.name, _getTypedefAsJsType(_RawType(enum_.name, false))!),
      for (final interfacelike in library.interfacelikes)
        ..._interfacelike(interfacelike),
    ]));

  code.Library generateRootImport(Iterable<String> files) =>
      code.Library((b) => b
        ..comments.addAll(licenseHeader)
        ..directives.addAll(files.map(code.Directive.export)));

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

    dartLibraries['dom.dart'] = generateRootImport(dartLibraries.keys);

    return dartLibraries;
  }

  bool _shouldGenerate(String name, _Library library) {
    // These libraries wouldn't normally qualify for generation but have types
    // that are referenced from generated code.
    // TODO(devoncarew): We should either remove the members that reference the
    // types or decide the library should be generated irrespective of the BCD
    // info.
    const allowList = {
      'css-typed-om',
      'css-view-transitions',
      'referrer-policy',
      'reporting',
      'touch-events',
      'vibration',
      'webrtc-stats',
      'trusted-types',
    };
    if (allowList.contains(name)) {
      return true;
    }

    final typeNames = library.interfacelikes.map((i) => i.name);
    final statuses = typeNames
        .map((name) => browserCompatData.retrieveInterfaceFor(name))
        .whereType<BCDInterfaceStatus>()
        .toList();

    return statuses.any((status) => status.shouldGenerate);
  }
}
