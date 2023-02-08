// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import * as bannedNamesModule from './bannedNames.mjs';
import * as util from './util.mjs';
import * as singletonsModule from './singletons.mjs';
import * as typeAliasesModule from './typeAliases.mjs';

const bannedNames = bannedNamesModule.bannedNames;
const singletons = singletonsModule.singletons;
const typeAliases = typeAliasesModule.typeAliases;

class PartialInterfacelike {
  constructor(interfacelike) {
    this.name = interfacelike.name;
    this.type = interfacelike.type;
    this.inheritance = interfacelike.inheritance;
    this.members = [];
    this.staticMembers = [];
    this.constructors = [];
    this.includes = [];
    this.hasNoArgumentConstructor = false;
    this.#processMembers(interfacelike.members);
  }

  #processMembers(members) {
    for (let i = 0; i < members.length; i++) {
      const member = members[i];

      // TODO(joshualitt): See if we can handle some unnamed members.
      if (member.name === '') {
        continue;
      }
      if (member.type === 'constructor') {
        if (member.arguments.length === 0) {
          this.hasNoArgumentConstructor = true;
        }
        this.constructors.push(member);
      } else if (member.type === 'const' ||
          member.special === 'static') {
        this.staticMembers.push(member);
      } else {
        this.members.push(member);
      }
    }
  }

  update(interfacelike) {
    util.assert(this.name === interfacelike.name && this.type === interfacelike.type);
    util.assert(interfacelike.inheritance === null || this.inheritance === null,
        'An interface should only be defined once.');
    this.inheritance ??= interfacelike.inheritance;
    this.#processMembers(interfacelike.members);
  }

  include(mixin) {
    util.assert(this.type === 'interface' && mixin.type === 'interface mixin');
    this.includes.push(mixin.name);
  }
}

function idlTypeToType(idlType) {
  if (idlType.union) {
    return 'union';
  } else if (idlType.generic !== '') {
    return idlType.generic;
  } else {
    return idlType.idlType;
  }
}

export class Translator {
  constructor() {
    this.interfacelikes = new Map();
    this.typedefs = [];
    this.enums = [];
    this.includes = [];
    this.callbacks = [];
    this.namesSeen = null;
  }

  setOrUpdate(map, node, constructor_) {
    const name = node.name;
    if (map.has(name)) {
      map.get(name).update(node);
    } else {
      map.set(name, new constructor_(node));
    }
  }

  collect(ast) {
    for (let i = 0; i < ast.length; i++) {
      const node = ast[i];
      switch (node.type) {
        case 'interface mixin':
        case 'interface':
        case 'namespace':
        case 'dictionary':
          this.setOrUpdate(this.interfacelikes, node, PartialInterfacelike);
          break;
        case 'typedef':
          this.typedefs.push(node);
          break;
        case 'includes':
          this.includes.push(node);
          break;
        case 'enum':
          this.enums.push(node);
          break;
        case 'callback interface':
        case 'callback':
          this.callbacks.push(node);
          break;
        case 'eof':
          break;
        default:
          throw `Unexpected node type ${node.type}`
      }
    }
  }

  #getArgumentName(name) {
    if (bannedNames.has(name)) {
      return `${name}_`;
    } else {
      return name;
    }
  }

  #getMemberName(name) {
    //  TODO Consider more elegant naming for overridden members.
    let memberName = name;
    const count = this.namesSeen.get(name) ?? 0;
    let jsOverride = '';
    if (bannedNames.has(name) || this.namesSeen.has(name)) {
      jsOverride = `@JS('${name}')
`
      memberName = `${name}${count}`;
    }
    this.namesSeen.set(name, count + 1);
    return {
      'name': memberName,
      'jsOverride': jsOverride,
    };
  }

  #getTypeRaw(idlType) {
    let type = idlTypeToType(idlType);
    if (typeAliases.has(type)) {
      type = typeAliases.get(type);
    }
    return type;
  }

  #getType(idlType) {
    let type = this.#getTypeRaw(idlType);
    if (idlType.nullable) {
      type = `${type}?`;
    }
    return type;
  }

  #translateArgument(argument) {
    const name = this.#getArgumentName(argument.name);
    return `${this.#getType(argument.idlType)} ${name}`;
  }

  #translateArguments(args, stop) {
    let argumentsStrings = [];
    for (let i = 0; i < stop; i++) {
      const argument = args[i];
      argumentsStrings.push(this.#translateArgument(argument));
    }
    return argumentsStrings.join(', ');
  }

  #translateMultiMember(baseString, args) {
    let memberStrings = [];
    let emittedCount = 0;
    const emit = (i) => {
      const suffix = emittedCount === 0 ? '' : `_${emittedCount}`;
      memberStrings.push(`${baseString}${suffix}(${this.#translateArguments(args, i)});`);
      emittedCount++;
    }
    for (let i = 0; i < args.length; i++) {
      if (args[i].optional) {
        emit(i);
      }
    }
    emit(args.length);
    return memberStrings.join('\n');
  }

  #translateOperation(operation) {
    const {name, jsOverride} = this.#getMemberName(operation.name);
    const returns = this.#getType(operation.idlType);
    const staticString = operation.special === 'static' ? 'static ' : '';
    const baseString = `${jsOverride}external ${staticString}${returns} ${name}`;
    return this.#translateMultiMember(baseString, operation.arguments);
  }

  #translateAttribute(attribute) {
    const {name, jsOverride} = this.#getMemberName(attribute.name);
    const type = this.#getType(attribute.idlType);
    const staticString = attribute.special === 'static' ? 'static ' : '';
    const getterString =
        `${jsOverride}external ${staticString}${type} get ${name};`;
    if (!attribute.readonly) {
      return `${getterString}
  ${jsOverride}external ${staticString}set ${name}(${type} value);`
    } else {
      return getterString;
    }
  }

  #translateConstant(constant) {
    return `external static ${this.#getType(constant.idlType)} get ${constant.name};`
  }

  #translateMember(member) {
    switch (member.type) {
      case 'operation':
        return this.#translateOperation(member);
      case 'attribute':
        return this.#translateAttribute(member);
      case 'const':
        return this.#translateConstant(member);
      case 'field':
      case 'iterable':
      case 'maplike':
      case 'setlike':
        // TODO(joshualitt): Handle these cases.
        return '// TODO';
      default:
        throw `Unsupported member type ${member.type}`;
    }
  }

  #translateConstructor(name, constructor, constructorCount) {
    // TODO(joshualitt): More elegant approach to renaming factories.
    const constructorSuffix = constructorCount === 0 ? '' : `.a${constructorCount}`
    const baseString = `external factory ${name}${constructorSuffix}`;
    return this.#translateMultiMember(baseString, constructor.arguments);
  }

  #translateConstructors(name, constructors, needsNoArgumentConstructor) {
    let constructorCount = 0;
    let constructorStrings = [];
    if (needsNoArgumentConstructor) {
      constructorStrings.push(`external factory ${name}();`);
      constructorCount++;
    }
    for (const constructor of constructors) {
      constructorStrings.push(this.#translateConstructor(name, constructor, constructorCount));
      constructorCount++;
    }
    return constructorStrings.join('\n');
  }

  #translateMembers(members) {
    let memberStrings = [];
    for (const member of members) {
      memberStrings.push(this.#translateMember(member));
    }
    return memberStrings;
  }

  #translateStaticMembers(members) {
    return this.#translateMembers(members).join('\n');
  }

  #translateExtensionMembers(name, members) {
    const memberStrings = this.#translateMembers(members);
    return (`
extension ${name}Extension on ${name} {
  ${memberStrings.join('\n  ')}
}`);
  }

  #maybeMakeTopLevelGetter(interfacelike, typename) {
    const name = interfacelike.name;
    let getterName = undefined;
    if (interfacelike.type === 'namespace') {
      getterName = name;
    } else if (singletons.has(name)) {
      getterName = singletons.get(name);
    }
    return getterName === undefined ? '' : `@JS()
external ${typename} get ${getterName};`
  }

  #translateInterfacelike(interfacelike) {
    let jsName = interfacelike.name;
    let dartName = jsName;
    if (interfacelike.type === 'namespace') {
      dartName = `_${jsName}`;
    }
    const topLevelGetter = this.#maybeMakeTopLevelGetter(interfacelike, dartName);
    const extendsName = interfacelike.inheritance;
    const extendsString = extendsName === null ? '' : `extends ${extendsName} `;
    const includes = interfacelike.includes;
    const implementsString = includes.length === 0 ? '' : `implements ${includes.join(',')} `;
    const constructors = interfacelike.constructors;
    // TODO(joshualitt): Only generate no argument constructors when needed.
    const needsNoArgumentConstructor = !interfacelike.hasNoArgumentConstructor;
    const constructorsString =
        this.#translateConstructors(dartName, constructors, needsNoArgumentConstructor);
    const staticMembers = interfacelike.staticMembers;
    const staticMembersString = this.#translateStaticMembers(staticMembers);
    const members = interfacelike.members;
    const membersString = members.length === 0 ? '' : this.#translateExtensionMembers(dartName, members);
    return (
`${topLevelGetter}

@JS('${jsName}')
@staticInterop
class ${dartName} ${extendsString}${implementsString}{
  ${constructorsString}
  ${staticMembersString}
}
${membersString}`)
  }

  #translateTypedef(typedef) {
    return `typedef ${typedef.name} = ${this.#getTypeRaw(typedef.idlType)};`;
  }

  #translateCallback(callback) {
    // TODO(joshualitt): proper implementation;
    return `typedef ${callback.name} = JSFunction;`
  }

  #translateEnum(enum_) {
    return `typedef ${enum_.name} = JSString;`;
  }

  translate() {
    for (const include of this.includes) {
      const target = this.interfacelikes.get(include.target);
      target.include(this.interfacelikes.get(include.includes));
    }

    let fragments = [];
    for (const typedef of this.typedefs) {
      fragments.push(this.#translateTypedef(typedef));
    }
    for (const callback of this.callbacks) {
      /// TODO(joshualitt): Maybe handle this case a bit more elegantly?
      if (callback.name === 'Function') {
        continue;
      }
      fragments.push(this.#translateCallback(callback));
    }
    for (const enum_ of this.enums) {
      fragments.push(this.#translateEnum(enum_));
    }
    for (const interfacelike of this.interfacelikes.values()) {
      this.namesSeen = new Map();
      fragments.push(this.#translateInterfacelike(interfacelike));
    }
    return fragments.join('\n');
  }
}
