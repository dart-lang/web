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
  final String name;
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

  _Library(this.name, this.url);

  void _addNamed<T extends idl.Named>(idl.Node node, List<T> list) {
    final named = node as T;
    final name = named.name;
    final translator = Translator.instance!;
    assert(!translator._typeToLibrary.containsKey(name));
    translator._typeToLibrary[name] = this;
    assert(!translator._typeToDeclaration.containsKey(name));
    translator._typeToDeclaration[name] = node;
    list.add(named);
  }

  void add(idl.Node node) {
    final type = node.type;
    final translator = Translator.instance!;
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
          translator._typeToPartials
              .putIfAbsent(interfacelike.name, () => [])
              .add(interfacelike);
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
/// desugars the typedef, accounting for nullability along the way.
///
/// Otherwise, returns null.
_RawType? _desugarTypedef(_RawType rawType) {
  final decl = Translator.instance!._typeToDeclaration[rawType.type];
  return switch (decl?.type) {
    'typedef' => _getRawType((decl as idl.Typedef).idlType)
      ..nullable |= rawType.nullable,
    // TODO(srujzs): If we ever add a generic JS function type, we should
    // maybe leverage that here so we have stronger type-checking of
    // callbacks.
    'callback' ||
    'callback interface' =>
      _RawType('JSFunction', rawType.nullable),
    // TODO(srujzs): Enums in the WebIDL are just strings, but we could make
    // them easier to work with on the Dart side.
    'enum' => _RawType('JSString', rawType.nullable),
    _ => null
  };
}

/// Given a [rawType], return its JS type-equivalent type if it's a type that is
/// declared in the IDL.
///
/// Otherwise, return null.
_RawType? _getJSTypeEquivalent(_RawType rawType) {
  final type = rawType.type;
  final nullable = rawType.nullable;
  final decl = Translator.instance!._typeToDeclaration[type];
  if (decl != null) {
    final nodeType = decl.type;
    switch (nodeType) {
      case 'interface':
      case 'dictionary':
        return _RawType('JSObject', nullable);
      default:
        final desugaredType = _desugarTypedef(rawType);
        if (desugaredType != null) {
          // The output of `_desugarTypedef` is always an IDL decl type or a JS
          // type, so either get the equivalent in the former case or return the
          // JS type directly.
          return _getJSTypeEquivalent(desugaredType) ?? desugaredType;
        }
        throw Exception('Unhandled type $type with node type: $nodeType');
    }
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
  final unionableType1 = _getJSTypeEquivalent(rawType1) ?? rawType1;
  final unionableType2 = _getJSTypeEquivalent(rawType2) ?? rawType2;

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
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
    final unionType = _getRawType(types[0]);
    for (var i = 1; i < types.length; i++) {
      unionType.update(types[i]);
    }
    return unionType..nullable |= idlType.nullable;
  }
  String type;
  var nullable = idlType.nullable;
  _RawType? typeParameter;
  if (idlType.generic.isNotEmpty) {
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
    if (types.length == 1) {
      typeParameter = _getRawType(types[0]);
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
  final translator = Translator.instance!;
  final decl = translator._typeToDeclaration[type];
  final alias = idlOrBuiltinToJsTypeAliases[type];
  assert(decl != null || alias != null);
  if (alias == null && !translator.markTypeAsUsed(type)) {
    // If the type is an IDL type that is never generated, use its JS type
    // equivalent.
    type = _getJSTypeEquivalent(_RawType(type, false))!.type;
  }
  return _RawType(alias ?? type, nullable, typeParameter);
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

sealed class _Property {
  late final _MemberName name;
  final _RawType type;
  final MdnProperty? mdnProperty;

  // TODO(srujzs): Remove ignore after
  // https://github.com/dart-lang/sdk/issues/55720 is resolved.
  // ignore: unused_element
  _Property(_MemberName name, idl.IDLType idlType, [this.mdnProperty])
      : type = _getRawType(idlType) {
    // Rename the property if there's a collision with the type name.
    final dartName = name.name;
    final jsName = name.jsOverride.isEmpty ? dartName : name.jsOverride;
    this.name =
        dartName == type.type ? _MemberName('${dartName}_', jsName) : name;
  }
}

class _Attribute extends _Property {
  final bool isStatic;
  final bool isReadOnly;

  _Attribute(super.name, super.idlType, super.mdnProperty,
      {required this.isStatic, required this.isReadOnly});
}

class _Field extends _Property {
  final bool isRequired;

  _Field(super.name, super.idlType, super.mdnProperty,
      {required this.isRequired});
}

class _Constant extends _Property {
  _Constant(super.name, super.idlType);
}

abstract class _OverridableMember {
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
  bool _finalized = false;
  _MemberName _name;

  final bool isStatic;
  final _RawType returnType;
  final MdnProperty? mdnProperty;
  late final _MemberName name = _generateName();

  _OverridableOperation._(this._name, this.isStatic, this.returnType,
      this.mdnProperty, super.parameters);

  factory _OverridableOperation(idl.Operation operation, _MemberName name,
          MdnProperty? mdnProperty) =>
      _OverridableOperation._(name, operation.special == 'static',
          _getRawType(operation.idlType), mdnProperty, operation.arguments);

  _MemberName _generateName() {
    // The name is determined after all updates are done, so finalize the
    // operation.
    _finalized = true;
    // Rename the member if the name collides with a return or parameter type.
    final dartName = _name.name;
    if (dartName == returnType.type ||
        parameters.any((parameter) => dartName == parameter.type.type)) {
      underscoreName();
    }
    return _name;
  }

  void underscoreName() {
    final jsName = _name.jsOverride.isEmpty ? _name.name : _name.jsOverride;
    _name = _MemberName('${_name.name}_', jsName);
  }

  void update(idl.Operation that) {
    assert(
        !_finalized,
        'Call to _OverridableOperation.update was made after the operation was '
        'finalized.');
    final jsOverride = _name.jsOverride;
    final thisName = jsOverride.isNotEmpty ? jsOverride : _name.name;
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
  final List<_Property> properties = [];
  final List<_Property> extensionProperties = [];
  final MdnInterface? mdnInterface;
  _OverridableConstructor? constructor;

  _PartialInterfacelike._(
      this.name, this.type, String? inheritance, this.mdnInterface) {
    _setInheritance(inheritance);
  }

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
          if (!_shouldGenerateMember(name)) break;
          final idlConstructor = member as idl.Constructor;
          if (_hasHTMLConstructorAttribute(idlConstructor)) continue;
          if (constructor == null) {
            constructor = _OverridableConstructor(idlConstructor);
          } else {
            constructor!.update(idlConstructor);
          }
          break;
        case 'const':
          final constant = member as idl.Constant;
          // Note that constants do not have browser compatibility data, so we
          // always emit.
          properties
              .add(_Constant(_MemberName(constant.name), constant.idlType));
          break;
        case 'attribute':
          final attribute = member as idl.Attribute;
          final isStatic = attribute.special == 'static';
          final attributeName = attribute.name;
          if (!_shouldGenerateMember(attributeName, isStatic: isStatic)) break;
          // `SVGElement.className` returns an `SVGAnimatedString`, but its
          // corresponding setter `Element.className` takes a `String`. As these
          // two types are incompatible, we need to move this member to an
          // extension instead. As it shares the same name as the getter
          // `Element.className`, users will need to apply the extension
          // explicitly.
          final isExtensionMember =
              name == 'SVGElement' && attributeName == 'className';
          final memberList =
              isExtensionMember ? extensionProperties : properties;
          memberList.add(_Attribute(
              _MemberName(attributeName),
              attribute.idlType,
              mdnInterface?.propertyFor(attributeName, isStatic: isStatic),
              isStatic: isStatic,
              isReadOnly: attribute.readonly));
          break;
        case 'operation':
          final operation = member as idl.Operation;
          final operationName = operation.name;
          if (operationName.isEmpty) {
            // TODO(joshualitt): We may be able to handle some unnamed
            // operations.
            continue;
          }
          final isStatic = operation.special == 'static';
          if (!_shouldGenerateMember(operationName, isStatic: isStatic)) break;
          final docs =
              mdnInterface?.propertyFor(operationName, isStatic: isStatic);
          // Static member may have the same name as instance members in the
          // IDL, but not in Dart. Rename the static member if so.
          if (isStatic) {
            if (staticOperations.containsKey(operationName)) {
              staticOperations[operationName]!.update(operation);
            } else {
              staticOperations[operationName] = _OverridableOperation(
                  operation, _MemberName(operationName), docs);
              if (operations.containsKey(operationName)) {
                staticOperations[operationName]!.underscoreName();
              }
            }
          } else {
            if (operations.containsKey(operationName)) {
              operations[operationName]!.update(operation);
            } else {
              staticOperations[operationName]?.underscoreName();
              operations[operationName] = _OverridableOperation(
                  operation, _MemberName(operationName), docs);
            }
          }
          break;
        case 'field':
          final field = member as idl.Field;
          final fieldName = field.name;
          if (!_shouldGenerateMember(fieldName)) break;
          properties.add(_Field(_MemberName(fieldName), field.idlType,
              mdnInterface?.propertyFor(fieldName, isStatic: false),
              isRequired: field.required));
          break;
        case 'maplike':
        case 'setlike':
        case 'iterable':
          // TODO(srujzs): Generate members for these types.
          break;
        default:
          throw Exception('Unrecognized member type $type');
      }
    }
  }

  /// Given the [declaredInheritance] by the IDL, find the closest supertype
  /// that is actually generated, and set the inheritance equal to that type.
  void _setInheritance(String? declaredInheritance) {
    if (declaredInheritance == null) return;
    final translator = Translator.instance!;
    while (declaredInheritance != null) {
      if (translator.markTypeAsUsed(declaredInheritance)) {
        inheritance = declaredInheritance;
        break;
      } else {
        declaredInheritance = (translator
                ._typeToDeclaration[declaredInheritance] as idl.Interfacelike)
            .inheritance;
      }
    }
  }

  /// Given a [memberName] and whether it [isStatic], return whether it is a
  /// member that should be emitted according to the compat data.
  bool _shouldGenerateMember(String memberName, {bool isStatic = false}) {
    // Compat data only exists for interfaces and namespaces. Mixins and
    // dictionaries should always generate their members.
    if (type != 'interface' && type != 'namespace') return true;
    final interfaceBcd =
        Translator.instance!.browserCompatData.retrieveInterfaceFor(name)!;
    final bcd = interfaceBcd.retrievePropertyFor(memberName,
        // Compat data treats namespace members as static, but the IDL does not.
        isStatic: isStatic || type == 'namespace');
    final shouldGenerate = bcd?.shouldGenerate;
    if (shouldGenerate != null) return shouldGenerate;
    // Events can bubble up to the window, document, or other elements. In the
    // case where we have no compatibility data, we assume that an event can
    // bubble up to this interface and support the event handler.
    if (!isStatic && BrowserCompatData.isEventHandlerSupported(memberName)) {
      return true;
    }
    // TODO(srujzs): Sometimes compatibility data can be up or down the type
    // hierarchy, so it may be worth checking supertypes and subtypes. In
    // practice, it doesn't seem to make a difference in the output.
    return false;
  }

  void update(idl.Interfacelike interfacelike) {
    assert((name == interfacelike.name && type == interfacelike.type) ||
        interfacelike.type == 'interface mixin');
    assert(interfacelike.inheritance == null || inheritance == null,
        'An interface should only be defined once.');
    _setInheritance(interfacelike.inheritance);
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
  final _typeToPartials = <String, List<idl.Interfacelike>>{};
  final _typeToLibrary = <String, _Library>{};
  final _interfacelikes = <String, _PartialInterfacelike>{};
  final _includes = <idl.Includes>[];
  final _usedTypes = <idl.Node>{};

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

  void _addOrUpdateInterfaceLike(idl.Interfacelike interfacelike) {
    final name = interfacelike.name;
    if (_interfacelikes.containsKey(name)) {
      _interfacelikes[name]!.update(interfacelike);
    } else {
      _interfacelikes[name] = _PartialInterfacelike(
        interfacelike,
        docProvider.interfaceFor(name),
      );
    }
  }

  /// Set or update interfaces and namespaces so we can have a unified interface
  /// representation.
  ///
  /// Note that this is done after the initial pass on the AST. This is because
  /// this step resolves unions and therefore can't be done until we record all
  /// types.
  ///
  /// This method only adds the interfaces and namespaces that the browser
  /// compat data claims should be generated. It also does not add any
  /// dictionaries, as those are handled by [markTypeAsUsed] because they don't
  /// have any compat data and are emitted only if used.
  void setOrUpdateInterfacesAndNamespaces() {
    final mixins = <String, Set<idl.Interfacelike>>{};
    for (final library in _libraries.values) {
      for (final interfacelike in [
        ...library.interfacelikes,
        ...library.partialInterfaces
      ]) {
        final name = interfacelike.name;
        bool shouldGenerate;
        switch (interfacelike.type) {
          case 'interface':
            shouldGenerate = browserCompatData.shouldGenerateInterface(name);
            break;
          case 'namespace':
            // Browser compat data doesn't document namespaces that only contain
            // constants.
            // https://github.com/mdn/browser-compat-data/blob/main/docs/data-guidelines/api.md#namespaces
            shouldGenerate = browserCompatData.shouldGenerateInterface(name) ||
                interfacelike.members.toDart
                    .every((member) => member.type == 'const');
            break;
          case 'dictionary':
            shouldGenerate = false;
            break;
          default:
            throw Exception(
                'Unexpected interfacelike type ${interfacelike.type}');
        }

        if (shouldGenerate) {
          _addOrUpdateInterfaceLike(interfacelike);
          _usedTypes.add(interfacelike);
        }
      }
      for (final interfacelike in [
        ...library.interfaceMixins,
        ...library.partialInterfaceMixins
      ]) {
        final name = interfacelike.name;
        mixins.putIfAbsent(name, () => {}).add(interfacelike);
      }
    }
    for (final include in _includes) {
      final target = include.target;
      final includes = include.includes;

      // Incorporate mixins into the interfaces that include them.
      if (_interfacelikes.containsKey(target) && mixins.containsKey(includes)) {
        for (final partial in mixins[includes]!) {
          _interfacelikes[target]!.update(partial);
        }
      }
    }
  }

  /// Given a [type] that corresponds to an IDL type, marks it as a used type
  /// and marks any types its declaration uses.
  ///
  /// If the type is an interface, this function doesn't mark it as used, as
  /// that determination is handled by [setOrUpdateInterfacesAndNamespaces].
  ///
  /// If the type is a dictionary, this function emits it.
  ///
  /// If the type is a type that is treated like a typedef, marks the type it is
  /// aliased to as used.
  ///
  /// Returns whether the type has been or will be marked as used.
  bool markTypeAsUsed(String type) {
    final decl = _typeToDeclaration[type];
    if (decl == null) return false;
    switch (decl.type) {
      case 'dictionary':
        if (!_usedTypes.contains(decl)) {
          _usedTypes.add(decl);
          final dictionary = decl as idl.Interfacelike;
          final name = dictionary.name;
          for (final interfacelike in [
            dictionary,
            ..._typeToPartials[name] ?? <idl.Interfacelike>[]
          ]) {
            _addOrUpdateInterfaceLike(interfacelike);
          }
        }
        return true;
      case 'typedef':
        if (!_usedTypes.contains(decl)) {
          _usedTypes.add(decl);
          final desugaredType = _desugarTypedef(_RawType(type, false))!.type;
          markTypeAsUsed(desugaredType);
        }
        return true;
      case 'enum':
      case 'callback interface':
      case 'callback':
        _usedTypes.add(decl);
        return true;
      case 'interface':
        // Interfaces can only be marked as used depending on their compat data.
        return browserCompatData
            .shouldGenerateInterface((decl as idl.Interfacelike).name);
      case 'interface mixin':
      case 'namespace':
      // Mixins and namespaces should never appear in types.
      default:
        throw Exception('Unexpected node type to be marked as used: $type');
    }
  }

  void collect(String shortName, JSArray<idl.Node> ast) {
    final libraryPath = '$_librarySubDir/${shortName.kebabToSnake}.dart';
    assert(!_libraries.containsKey(libraryPath));

    final library = _Library(shortName, '$packageRoot/$libraryPath');

    for (var i = 0; i < ast.length; i++) {
      library.add(ast[i]);
    }

    _libraries[libraryPath] = library;
  }

  code.TypeDef _typedef(String name, _RawType rawType) => code.TypeDef((b) => b
    ..name = name
    // Any typedefs that need to be handled differently when used in a return
    // type context will be handled in `_typeReference` separately.
    ..definition = _typeReference(rawType));

  code.Method _topLevelGetter(_RawType type, String getterName) =>
      code.Method((b) => b
        ..annotations.addAll(_jsOverride('', alwaysEmit: true))
        ..external = true
        ..returns = _typeReference(type, returnType: true)
        ..name = getterName
        ..type = code.MethodType.getter);

  /// Given a raw type, convert it to the Dart type that will be emitted by the
  /// translator.
  ///
  /// If [returnType] is true, [type] is assumed to be used as a return type of
  /// some member.
  ///
  /// If [onlyEmitInteropTypes] is true, we don't convert to Dart primitives but
  /// rather only emit a valid interop type. This is used for type arguments as
  /// they are bound to `JSAny?`.
  code.TypeReference _typeReference(_RawType type,
      {bool returnType = false, bool onlyEmitInteropTypes = false}) {
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
        ..type = _typeReference(rawParameter.type));
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

  // TODO(srujzs): We don't need constructors for many dictionaries as they're
  // only ever returned from APIs instead of passed to them. However,
  // determining whether they are is quite difficult and requires tracking not
  // only where this type is used but where any typedefs of this type are used.
  // The IDL also doesn't tell us if a dictionary needs a constructor or not, so
  // for now, always emit one.
  code.Constructor _objectLiteral(
      String jsName, String representationFieldName) {
    // Dictionaries that inherit other dictionaries should provide a constructor
    // that can take in their supertypes' members as well.
    final namedParameters = <code.Parameter>[];
    String? dictionaryName = jsName;
    while (dictionaryName != null) {
      final interfacelike = _interfacelikes[dictionaryName]!;
      final parameters = <code.Parameter>[];
      for (final property in interfacelike.properties) {
        // We currently only lower dictionaries to object literals, and
        // dictionaries can only have 'field' members.
        final field = property as _Field;
        final isRequired = field.isRequired;
        final parameter = code.Parameter((b) => b
          ..name = field.name.name
          ..type = _typeReference(field.type)
          ..required = isRequired
          ..named = true);
        parameters.add(parameter);
      }
      // Supertype members should be first.
      namedParameters.insertAll(0, parameters);
      dictionaryName = interfacelike.inheritance;
    }
    if (namedParameters.isEmpty) {
      return code.Constructor((b) => b
        ..initializers.add(code
            .refer(representationFieldName)
            .assign(code.refer('JSObject', _urlForType('JSObject')).call([]))
            .code));
    } else {
      return code.Constructor((b) => b
        ..optionalParameters.addAll(namedParameters)
        ..external = true
        // TODO(srujzs): Should we generate generative or factory constructors?
        // With `@staticInterop`, factories were needed, but extension types have
        // no such limitation.
        ..factory = true);
    }
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
        ..returns = _typeReference(operation.returnType, returnType: true)
        ..name = memberName.name
        ..docs.addAll(operation.mdnProperty?.formattedDocs ?? [])
        ..requiredParameters.addAll(requiredParameters)
        ..optionalParameters.addAll(optionalParameters)),
    );
  }

  List<code.Method> _getterSetter({
    required _MemberName memberName,
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

  List<code.Method> _attribute(
      _Attribute attribute, MdnInterface? mdnInterface) {
    return _getterSetter(
      memberName: attribute.name,
      getGetterType: () => _typeReference(attribute.type, returnType: true),
      getSetterType: () => _typeReference(attribute.type),
      readOnly: attribute.isReadOnly,
      isStatic: attribute.isStatic,
      mdnInterface: mdnInterface,
    );
  }

  List<code.Method> _constant(_Constant constant) {
    return [
      code.Method(
        (b) => b
          ..annotations.addAll(_jsOverride(constant.name.jsOverride))
          ..external = true
          ..static = true
          ..returns = _typeReference(constant.type, returnType: true)
          ..type = code.MethodType.getter
          ..name = constant.name.name,
      )
    ];
  }

  List<code.Method> _field(_Field field, MdnInterface? mdnInterface) {
    return _getterSetter(
      memberName: field.name,
      getGetterType: () => _typeReference(field.type, returnType: true),
      getSetterType: () => _typeReference(field.type),
      readOnly: false,
      isStatic: false,
      mdnInterface: mdnInterface,
    );
  }

  List<code.Method> _property(_Property member, MdnInterface? mdnInterface) =>
      switch (member) {
        _Attribute() => _attribute(member, mdnInterface),
        _Field() => _field(member, mdnInterface),
        _Constant() => _constant(member),
      };

  List<code.Method> _properties(
      List<_Property> properties, MdnInterface? mdnInterface) {
    return [
      for (final property in properties) ..._property(property, mdnInterface),
    ];
  }

  List<code.Method> _operations(List<_OverridableOperation> operations) =>
      [for (final operation in operations) _operation(operation)];

  List<code.Method> _cssStyleDeclarationProperties() {
    return [
      for (final style in _cssStyleDeclarations)
        ..._getterSetter(
          memberName: _MemberName(style),
          getGetterType: () =>
              _typeReference(_RawType('JSString', false), returnType: true),
          getSetterType: () => _typeReference(_RawType('JSString', false)),
          isStatic: false,
          readOnly: false,
          mdnInterface: null,
        ),
    ];
  }

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

  code.Extension _extension({
    required _RawType type,
    required List<_Property> extensionProperties,
  }) {
    return code.Extension(
      (b) => b
        ..name = '${type.type.snakeToPascal}Extension'
        ..on = _typeReference(type)
        ..methods.addAll(_properties(extensionProperties, null)),
    );
  }

  code.ExtensionType _extensionType({
    required String jsName,
    required String dartClassName,
    required MdnInterface? mdnInterface,
    required BCDInterfaceStatus? interfaceStatus,
    required List<String> implements,
    required _OverridableConstructor? constructor,
    required List<_OverridableOperation> operations,
    required List<_OverridableOperation> staticOperations,
    required List<_Property> properties,
    required bool isObjectLiteral,
  }) {
    final docs = mdnInterface == null ? <String>[] : mdnInterface.formattedDocs;

    final jsObject = _typeReference(_RawType('JSObject', false));
    const representationFieldName = '_';
    final instanceProperties = <code.Method>[];
    final staticProperties = <code.Method>[];
    for (final property in _properties(properties, mdnInterface)) {
      (property.static ? staticProperties : instanceProperties).add(property);
    }
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
              ? [_objectLiteral(jsName, representationFieldName)]
              : constructor != null
                  ? [_constructor(constructor)]
                  : <code.Constructor>[])
          .followedBy(_elementConstructors(
              jsName, dartClassName, representationFieldName)))
      ..methods.addAll(_operations(staticOperations)
          .followedBy(staticProperties)
          .followedBy(_operations(operations))
          .followedBy(instanceProperties)
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
    final properties = interfacelike.properties;
    final extensionProperties = interfacelike.extensionProperties;
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
        properties: properties,
        isObjectLiteral: isDictionary,
      ),
      if (extensionProperties.isNotEmpty)
        _extension(type: rawType, extensionProperties: extensionProperties)
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
      for (final typedef in library.typedefs.where(_usedTypes.contains))
        _typedef(typedef.name, _desugarTypedef(_RawType(typedef.name, false))!),
      for (final callback in library.callbacks.where(_usedTypes.contains))
        _typedef(
            callback.name, _desugarTypedef(_RawType(callback.name, false))!),
      for (final callbackInterface
          in library.callbackInterfaces.where(_usedTypes.contains))
        _typedef(callbackInterface.name,
            _desugarTypedef(_RawType(callbackInterface.name, false))!),
      for (final enum_ in library.enums.where(_usedTypes.contains))
        _typedef(enum_.name, _desugarTypedef(_RawType(enum_.name, false))!),
      for (final interfacelike
          in library.interfacelikes.where(_usedTypes.contains))
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
}
