// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'banned_names.dart';
import 'singletons.dart';
import 'type_aliases.dart';
import 'util.dart';
import 'webidl_api.dart';

class _PartialInterfacelike {
  final String name;
  final String type;
  String? inheritance;
  final List<Member> members = [];
  final List<Member> staticMembers = [];
  final List<Constructor> constructors = [];
  final List<String> includes = [];
  bool hasNoArgumentsConstructor = false;

  _PartialInterfacelike._(this.name, this.type, this.inheritance);

  factory _PartialInterfacelike(Interfacelike interfacelike) {
    final partialInterfacelike = _PartialInterfacelike._(
        interfacelike.name.toDart,
        interfacelike.type.toDart,
        interfacelike.inheritance.toDartString);
    partialInterfacelike._processMembers(interfacelike.members);
    return partialInterfacelike;
  }

  void _processMember(Member member, String special) {
    if (special == 'static') {
      staticMembers.add(member);
    } else {
      members.add(member);
    }
  }

  void _processMembers(JSArray nodeMembers) {
    for (var i = 0; i < nodeMembers.length; i++) {
      final member = nodeMembers[i] as Member;
      final type = member.type.toDart;
      switch (type) {
        case 'constructor':
          final constructor = member as Constructor;
          if (constructor.arguments.isEmpty) {
            hasNoArgumentsConstructor = true;
          }
          constructors.add(constructor);
          break;
        case 'const':
          staticMembers.add(member);
          break;
        case 'attribute':
          final attribute = member as Attribute;
          _processMember(attribute, attribute.special.toDart);
          break;
        case 'operation':
          final operation = member as Operation;
          if (operation.name.toDart.isEmpty) {
            // TODO(joshualitt): We may be able to handle some unnamed
            // operations.
            continue;
          }
          _processMember(operation, operation.special.toDart);
          break;
        case 'field':
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

  void update(Interfacelike interfacelike) {
    assert(
        name == interfacelike.name.toDart && type == interfacelike.type.toDart);
    assert(interfacelike.inheritance == null || inheritance == null,
        'An interface should only be defined once.');
    inheritance ??= interfacelike.inheritance.toDartString;
    _processMembers(interfacelike.members);
  }

  void include(_PartialInterfacelike mixin) {
    assert(type == 'interface' && mixin.type == 'interface mixin');
    includes.add(mixin.name);
  }
}

extension IDLTypeToTypeExtension on IDLType {
  String get toType {
    if (union.toDart) {
      return 'union';
    } else if (generic.toDart.isNotEmpty) {
      return generic.toDart;
    } else {
      return (idlType as JSString).toDart;
    }
  }
}

// TODO(joshualitt): Replace with a record.
class _MemberName {
  final String name;
  final String jsOverride;

  _MemberName(this.name, this.jsOverride);
}

class Translator {
  final Map<String, _PartialInterfacelike> interfacelikes = {};
  final List<Typedef> typedefs = [];
  final List<Includes> includes = [];
  final List<Enum> enums = [];
  final List<Callback> callbacks = [];
  final List<Interfacelike> callbackInterfaces = [];
  final Map<String, int> namesSeen = {};

  void _setOrUpdate(Interfacelike interfacelike) {
    final name = interfacelike.name.toDart;
    if (interfacelikes.containsKey(name)) {
      interfacelikes[name]!.update(interfacelike);
    } else {
      interfacelikes[name] = _PartialInterfacelike(interfacelike);
    }
  }

  void collect(JSString name, JSArray ast) {
    for (var i = 0; i < ast.length; i++) {
      final node = ast[i] as Node;
      final type = node.type.toDart;
      switch (type) {
        case 'interface mixin':
        case 'interface':
        case 'namespace':
        case 'dictionary':
          _setOrUpdate(node as Interfacelike);
          break;
        case 'typedef':
          typedefs.add(node as Typedef);
          break;
        case 'includes':
          includes.add(node as Includes);
          break;
        case 'enum':
          enums.add(node as Enum);
          break;
        case 'callback interface':
          callbackInterfaces.add(node as Interfacelike);
          break;
        case 'callback':
          callbacks.add(node as Callback);
          break;
        case 'eof':
          break;
        default:
          throw Exception('Unexpected node type $type');
      }
    }
  }

  String _getTypeRaw(IDLType idlType) {
    final type = idlType.toType;
    if (typeAliases.containsKey(type)) {
      return typeAliases[type]!;
    } else {
      return type;
    }
  }

  String _typedef(String name, String type) => 'typedef $name = $type;';

  String _translateTypedef(Typedef typedef) =>
      _typedef(typedef.name.toDart, _getTypeRaw(typedef.idlType));

  // TODO(joshualitt): We should lower callbacks and callback interfaces to a
  // Dart function that takes a typed Dart function, and returns an JSFunction.
  String _translateCallback(Callback callback) =>
      _typedef(callback.name.toDart, 'JSFunction');

  String _translateCallbackInterface(Interfacelike callbackInterface) =>
      _typedef(callbackInterface.name.toDart, 'JSFunction');

  // TODO(joshualitt): Enums in the WebIDL are just strings, but we could make
  // them easier to work with on the Dart side.
  String _translateEnum(Enum enum_) => _typedef(enum_.name.toDart, 'JSString');

  String _dartClassName(String jsName, String type) {
    if (type == 'namespace') {
      // Namespaces have lowercase names. We translate them to private classes,
      // and make their firt character uppercase in the process.
      return '_${jsName[0].toUpperCase()}${jsName.substring(1)}';
    } else {
      return jsName;
    }
  }

  String _maybeMakeTopLevelGetter(String jsName, String type, String dartName) {
    final String getterName;
    if (type == 'namespace') {
      getterName = jsName;
    } else if (singletons.containsKey(jsName)) {
      getterName = singletons[jsName]!;
    } else {
      getterName = '';
    }
    if (getterName == '') {
      return '';
    } else {
      return '''@JS()
external $dartName get $getterName;''';
    }
  }

  String _getArgumentName(String name) {
    if (bannedNames.contains(name)) {
      return '${name}_';
    } else {
      return name;
    }
  }

  String _getType(IDLType idlType) {
    final rawType = _getTypeRaw(idlType);
    if (idlType.nullable.toDart) {
      return '$rawType?';
    } else {
      return rawType;
    }
  }

  String _translateArgument(Argument argument) {
    final name = _getArgumentName(argument.name.toDart);
    return '${_getType(argument.idlType)} $name';
  }

  String _translateArguments(JSArray arguments, int stop) {
    final argumentsStrings = <String>[];
    for (var i = 0; i < stop; i++) {
      final argument = arguments[i] as Argument;
      argumentsStrings.add(_translateArgument(argument));
    }
    return argumentsStrings.join(', ');
  }

  String _translateMultiMember(String baseString, JSArray arguments) {
    final memberStrings = <String>[];
    var emittedCount = 0;
    void emit(int i) {
      final suffix = emittedCount == 0 ? '' : '_$emittedCount';
      memberStrings
          .add('$baseString$suffix(${_translateArguments(arguments, i)});');
      emittedCount++;
    }

    for (var i = 0; i < arguments.length; i++) {
      final argument = arguments[i] as Argument;
      if (argument.optional.toDart) {
        emit(i);
      }
    }
    emit(arguments.length);
    return memberStrings.join('\n');
  }

  String _translateConstructor(
      String dartClassName, Constructor constructor, int constructorCount) {
    // TODO(joshualitt): More elegant approach to renaming factories.
    final constructorSuffix =
        constructorCount == 0 ? '' : '.a$constructorCount';
    final baseString = 'external factory $dartClassName$constructorSuffix';
    return _translateMultiMember(baseString, constructor.arguments);
  }

  String _translateConstructors(String dartClassName,
      List<Constructor> constructors, bool needsNoArgumentsConstructor) {
    var constructorCount = 0;
    final constructorStrings = <String>[];
    if (needsNoArgumentsConstructor) {
      constructorStrings.add('external factory $dartClassName();');
      constructorCount++;
    }
    for (final constructor in constructors) {
      constructorStrings.add(
          _translateConstructor(dartClassName, constructor, constructorCount));
      constructorCount++;
    }
    return constructorStrings.join('\n');
  }

  _MemberName _getMemberName(String name) {
    // TODO(joshualitt): Name override members more elegantly.
    var memberName = name;
    var count = namesSeen[name] ?? 0;
    var jsOverride = '';
    if (bannedNames.contains(name) || namesSeen.containsKey(name)) {
      jsOverride = "@JS('$name')\n";
      memberName = '$name$count';
    }
    namesSeen[name] = count + 1;
    return _MemberName(memberName, jsOverride);
  }

  String _translateOperation(Operation operation) {
    final operationName = operation.name.toDart;
    final memberName = _getMemberName(operationName);
    final jsOverride = memberName.jsOverride;
    final name = memberName.name;
    // TODO(joshualitt): Let's replace `JSUndefined` when used as a return type
    // with `JSVoid`.
    final returns = _getType(operation.idlType);
    final staticString = operation.special.toDart == 'static' ? 'static ' : '';
    final baseString = '${jsOverride}external $staticString$returns $name';
    return _translateMultiMember(baseString, operation.arguments);
  }

  String _translateAttribute(Attribute attribute) {
    final memberName = _getMemberName(attribute.name.toDart);
    final name = memberName.name;
    final jsOverride = memberName.jsOverride;
    final type = _getType(attribute.idlType);
    final staticString = attribute.special == 'static' ? 'static ' : '';
    final getterString = '${jsOverride}external $staticString$type get $name;';
    if (!attribute.readonly.toDart) {
      return '''$getterString
  ${jsOverride}external ${staticString}set $name($type value);''';
    } else {
      return getterString;
    }
  }

  String _translateConstant(Constant constant) {
    final type = _getType(constant.idlType);
    final name = constant.name.toDart;
    return 'external static $type get $name;';
  }

  String _translateMember(Member member) {
    final type = member.type.toDart;
    switch (type) {
      case 'operation':
        return _translateOperation(member as Operation);
      case 'attribute':
        return _translateAttribute(member as Attribute);
      case 'const':
        return _translateConstant(member as Constant);
      case 'field':
      case 'iterable':
      case 'maplike':
      case 'setlike':
        // TODO(joshualitt): Handle these cases.
        return '// TODO';
      default:
        throw Exception('Unsupported member type $type');
    }
  }

  String _translateMembers(List<Member> members) {
    final memberStrings = <String>[];
    for (final member in members) {
      memberStrings.add(_translateMember(member));
    }
    return memberStrings.join('\n  ');
  }

  String _translateExtensionMembers(String name, List<Member> members) {
    final memberStrings = _translateMembers(members);
    return '''extension ${name}Extension on $name {
  $memberStrings
}''';
  }

  String _translateInterfacelike(_PartialInterfacelike interfacelike) {
    final jsName = interfacelike.name;
    final type = interfacelike.type;
    final dartClassName = _dartClassName(jsName, type);
    final topLevelGetter =
        _maybeMakeTopLevelGetter(jsName, type, dartClassName);
    final extendsName = interfacelike.inheritance;
    final extendsString = extendsName == null ? '' : 'extends $extendsName ';
    final includes = interfacelike.includes;
    final implementsString =
        includes.isEmpty ? '' : 'implements ${includes.join(',')} ';
    final constructors = interfacelike.constructors;
    // TODO(joshualitt): Only generate no arguments constructor when needed.
    final needsNoArgumentsConstructor =
        !interfacelike.hasNoArgumentsConstructor;
    final constructorsString = _translateConstructors(
        dartClassName, constructors, needsNoArgumentsConstructor);
    final staticMembers = interfacelike.staticMembers;
    final staticMembersString = _translateMembers(staticMembers);
    final members = interfacelike.members;
    final membersString = members.isEmpty
        ? ''
        : _translateExtensionMembers(dartClassName, members);
    return '''$topLevelGetter

@JS('$jsName')
@staticInterop
class $dartClassName $extendsString$implementsString{
  $constructorsString
  $staticMembersString
}
$membersString''';
  }

  String translate() {
    // Wire up includes.
    for (final include in includes) {
      final target = interfacelikes[include.target.toDart]!;
      target.include(interfacelikes[include.includes.toDart]!);
    }

    // Translate typedefs.
    final fragments = <String>[];
    for (final typedef in typedefs) {
      fragments.add(_translateTypedef(typedef));
    }

    // Translate callbacks.
    for (final callback in callbacks) {
      /// TODO(joshualitt): Maybe handle this case a bit more elegantly?
      if (callback.name == 'Function') {
        continue;
      }
      fragments.add(_translateCallback(callback));
    }

    // Translate callback interfaces.
    for (final callbackInterface in callbackInterfaces) {
      fragments.add(_translateCallbackInterface(callbackInterface));
    }

    // Translate enums.
    for (final enum_ in enums) {
      fragments.add(_translateEnum(enum_));
    }

    // Translate interfacelikes.
    for (final interfacelike in interfacelikes.values) {
      // Each [interfacelike] acts as a namespace, so we clear the
      // [namesSeen] map each time through the loop.
      namesSeen.clear();
      fragments.add(_translateInterfacelike(interfacelike));
    }
    return fragments.join('\n');
  }
}
