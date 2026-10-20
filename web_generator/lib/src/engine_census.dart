// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

const List<String> allCorpora = ['webref', 'blink', 'gecko', 'webkit'];
const List<String> engineCorpora = ['blink', 'gecko', 'webkit'];

/// WebIDL corpus identifier.
enum Corpus {
  webref,
  blink,
  gecko,
  webkit;

  static const List<Corpus> engines = [blink, gecko, webkit];

  bool get isEngine => this != webref;

  static Corpus fromName(String name) => switch (name) {
    'webref' => webref,
    'blink' => blink,
    'gecko' => gecko,
    'webkit' => webkit,
    _ => throw ArgumentError('Unknown corpus: $name'),
  };
}

/// Feature/member availability state ordered from least restrictive (`on` = 0)
/// to most restrictive (`off` = 2).
enum GateState {
  on,
  unknown,
  off;

  factory GateState.fromName(String name) => switch (name) {
    'on' => on,
    'unknown' => unknown,
    'off' => off,
    _ => throw ArgumentError.value(name, 'name', 'Invalid GateState'),
  };

  factory GateState.fromBool(bool? value) => switch (value) {
    true => on,
    false => off,
    null => unknown,
  };

  GateState combine(GateState other) => index >= other.index ? this : other;

  bool get isLive => this != off;
}

// ---------------------------------------------------------------- RegExp & Constants

final RegExp _lineCommentRe = RegExp(r'//.*$');
final RegExp _blockCommentRe = RegExp(r'/\*.*?\*/');
final RegExp _definedMacroRe = RegExp(
  r'defined\s*\(\s*(\w+)\s*\)|defined\s+(\w+)',
);
final RegExp _identRe = RegExp(r'\b[A-Za-z_]\w*\b');
final RegExp _idlDirectiveRe = RegExp(
  r'^\s*#\s*(ifdef|ifndef|if|elif|else|endif)\b(.*)$',
);
final RegExp _cppDirectiveRe = RegExp(
  r'^\s*#\s*(ifdef|ifndef|if|elif|else|endif|define|undef)\b\s*(.*)$',
);
final RegExp _cppDefNameRe = RegExp(r'^(\w+)\s*(.*)$');
final RegExp _digitsOnlyRe = RegExp(r'^\d+$');

final RegExp _yamlListKeyRe = RegExp(r'^(\s*-\s+|\s+)([A-Za-z_]\w*)\s*:');
final RegExp _json5CommentLineRe = RegExp(r'^\s*//.*$', multiLine: true);
final RegExp _json5UnquotedKeyRe = RegExp(
  r'^(\s*)([A-Za-z_]\w*)\s*:',
  multiLine: true,
);
final RegExp _json5TrailingCommaRe = RegExp(r',\s*([}\]])');
final RegExp _blinkBaseFeatureRe = RegExp(
  r'BASE_FEATURE\(\s*(k\w+)[^;]*?FEATURE_(ENABLED|DISABLED)_BY_DEFAULT',
);
final RegExp _blinkRuntimeFeatureRe = RegExp(
  r'\{\s*wf::Enable(\w+)\s*,\s*(?:raw_ref\()?\s*(?:[\w:]*::)?(k\w+)\)?\s*(?:,\s*(k\w+))?\s*\}',
);
final RegExp _geckoAtMacroRe = RegExp(r'@IS_(NOT_)?(\w+?)@');
final RegExp _geckoPrefCallRe = RegExp(
  r'pref\(\s*"([^"]+)"\s*,\s*([^)]+?)\s*(,\s*locked\s*)?\)',
);
final RegExp _wkFuncMacroRe = RegExp(
  r'\b(PLATFORM|USE|HAVE|ENABLE|OS|CPU)\s*\(\s*(\w+)\s*\)',
);
final RegExp _wkHeaderMacroRe = RegExp(
  r'\b(PLATFORM|USE|HAVE|ENABLE|OS|CPU|COMPILER)\s*\(\s*(\w+)\s*\)',
);
final RegExp _alphaOrUnderscoreRe = RegExp(r'[A-Za-z_]');

final RegExp _toStringCallRe = RegExp(r'\btoString\s*\(');
final RegExp _legacyCallerRe = RegExp(
  r'^\s*legacycaller\b[^;]*;',
  multiLine: true,
);
final RegExp _objectParamRe = RegExp(r'\bobject object\)');
final RegExp _surroundingQuotesRe = RegExp(r'^"|"$');
final RegExp _blinkTestPathRe = RegExp(r'/(testing|tests?|bindings/tests)/');
final RegExp _geckoTestFileRe = RegExp(r'/Test[A-Z][^/]*$');
final RegExp _utf8StringRe = RegExp(r'\bUTF8String\b');
final RegExp _geckoInternalExposedRe = RegExp(
  r'^(System|Chrome|.*Debugger|Sandbox)',
);
final RegExp _geckoWebExposedRe = RegExp(r'Window|Worker');
final RegExp _webkitTestPathRe = RegExp(r'/(testing|bindings/scripts/test)/');
final RegExp _wkIfElifLineRe = RegExp(
  r'^(\s*#\s*(?:if|elif)\b.*)$',
  multiLine: true,
);
final RegExp _wkMacroCallRe = RegExp(r'\b(ENABLE|PLATFORM|USE|HAVE)\((\w+)\)');
final RegExp _trailingBracketCommaRe = RegExp(r',(\s*\])');
final RegExp _implDefaultValRe = RegExp(
  r'(ImplementationDefaultValue)=\s*(\[\]|[^,\]]+)',
);
final RegExp _orAnyUnionRe = RegExp(r'\(([^()]*\bor any)\)');
final RegExp _callbackThisObjRe = RegExp(r'(CallbackThisObject)=\s*any\b');
final RegExp _bitOpExtAttrValRe = RegExp(
  r'=\s*([A-Za-z_][\w:]*(?:\s*[&|]\s*[A-Za-z_][\w:]*)+)',
);
final RegExp _wsRe = RegExp(r'\s+');

final RegExp _strTypesRe = RegExp(
  r'\b(USVString|ByteString|CSSOMString|UTF8String)\b',
);
final RegExp _bufTypeRe = RegExp(
  r'^(ArrayBuffer|SharedArrayBuffer|DataView|BufferSource|AllowSharedBufferSource|ArrayBufferView|(Big)?(Uint|Int|Float)(8|16|32|64)(Clamped)?Array|Uint8ClampedArray)$',
);
final RegExp _parenGroupRe = RegExp(r'\(([^()]*)\)');
final RegExp _trailingQuestionRe = RegExp(r'\?$');
final RegExp _bufferAliasRe = RegExp(
  r'\b(ArrayBufferView|AllowSharedBufferSource|ArrayBuffer)\b(?!\w)',
);
final RegExp _voidWordRe = RegExp(r'\bvoid\b');
final RegExp _unrestrictedPrefixRe = RegExp(r'\bunrestricted ');
final RegExp _outerUnionRe = RegExp(r'^\((.*)\)(\??)$');
final RegExp _idlNumericTypeRe = RegExp(
  r'^(unrestricted )?(double|float)$|^(unsigned )?(long long|long|short)$|^(byte|octet)$',
);
final RegExp _seqOrFrozenArrayRe = RegExp(r'FrozenArray|sequence');
final RegExp _wordOnlyRe = RegExp(r'^\w+$');
final RegExp _wasmFileRe = RegExp(r'wasm|webassembly', caseSensitive: false);
final RegExp _trailingParensRe = RegExp(r'\(\)$');

const Set<String> _wasmInterfaces = {
  'WebAssembly',
  'Module',
  'Instance',
  'Memory',
  'Table',
  'Global',
  'Tag',
  'Exception',
  'CompileError',
  'LinkError',
  'RuntimeError',
};

const String _nodeWebIdlParseScript = r'''
const fs = require('fs');
const w = require('webidl2');
const files = JSON.parse(fs.readFileSync(0, 'utf8'));
function chunks(text) {
  const t = text.replace(/\/\*[\s\S]*?\*\//g, (m) => m.replace(/[^\n]/g, ' '))
                .replace(/\/\/.*$/gm, '');
  const res = [];
  let depth = 0, start = 0, inStr = false;
  for (let i = 0; i < t.length; i++) {
    const c = t[i];
    if (c === '"') inStr = !inStr;
    if (inStr) continue;
    if (c === '{' || c === '(' || c === '[') depth++;
    else if (c === '}' || c === ')' || c === ']') depth--;
    else if (c === ';' && depth === 0) {
      res.push(t.slice(start, i + 1));
      start = i + 1;
    }
  }
  if (t.slice(start).trim()) res.push(t.slice(start));
  return res;
}
const stats = {
  files: Object.keys(files).length,
  filesOk: 0,
  filesRecovered: 0,
  defs: 0,
  defsFailed: 0,
  forwardDecls: 0,
  errors: [],
};
const ast = [];
for (const [rel, text] of Object.entries(files)) {
  try {
    for (const d of w.parse(text, { sourceName: rel })) {
      d.__file = rel;
      ast.push(d);
    }
    stats.filesOk++;
  } catch (e) {
    stats.filesRecovered++;
    for (const c of chunks(text)) {
      if (!c.trim()) continue;
      try {
        for (const d of w.parse(c, { sourceName: rel })) {
          d.__file = rel;
          ast.push(d);
          stats.defs++;
        }
      } catch (e2) {
        if (/^\s*(\[[^\]]*\]\s*)?interface\s+\w+\s*;\s*$/.test(c)) {
          stats.forwardDecls++;
          continue;
        }
        stats.defsFailed++;
        stats.errors.push({
          file: rel,
          msg: String(e2.bareMessage || e2.message).slice(0, 200),
          snippet: c.trim().slice(0, 160),
        });
      }
    }
  }
}
stats.defs = ast.length;
if (!stats.forwardDecls) delete stats.forwardDecls;
process.stdout.write(JSON.stringify({ ast, stats }));
''';

const Set<String> _geckoDefined = {
  'XP_UNIX',
  'XP_LINUX',
  'MOZ_WIDGET_GTK',
  'RELEASE_OR_BETA',
  'MOZ_WEBSPEECH',
  'ACCESSIBILITY',
  'MOZ_WEBRTC',
  'MOZ_AV1',
  'MOZ_WEBM',
  'MOZ_FMP4',
  'MOZ_DBUS',
  'MOZ_X11',
  'MOZ_WAYLAND',
  'MOZ_GECKO_PROFILER',
  'MOZ_PLACES',
  'MOZ_SANDBOX',
  'MOZ_WEBMIDI',
  'MOZ_UPDATER',
  'MOZ_BUILD_APP_IS_BROWSER',
  'MOZ_DEDICATED_PROFILES',
  'MOZ_ENABLE_DBUS',
  'MOZ_OMX',
  'MOZ_FFMPEG',
  'MOZ_FFVPX',
  'MOZ_WMF',
  'MOZ_JXL',
};

const Map<String, List<String>> _sparseCheckoutPatterns = {
  'blink': [
    '/third_party/blink/renderer/**/*.idl',
    '/third_party/blink/renderer/platform/runtime_enabled_features.json5',
    '/content/child/runtime_features.cc',
    '/content/public/common/content_features.cc',
    '/third_party/blink/common/features.cc',
    '/services/network/public/cpp/features.cc',
    '/media/base/media_switches.cc',
    '/ui/base/ui_base_features.cc',
    '/device/base/features.cc',
    '/third_party/blink/common/features_generated.cc',
  ],
  'gecko': [
    '/dom/webidl/*.webidl',
    '/modules/libpref/init/StaticPrefList.yaml',
    '/modules/libpref/init/all.js',
    '/browser/app/profile/firefox.js',
  ],
  'webkit': [
    '/Source/WebCore/**/*.idl',
    '/Source/WTF/Scripts/Preferences/*.yaml',
    '/Source/WebCore/Configurations/Version.xcconfig',
    '/Source/WebKit/Configurations/Version.xcconfig',
    '/Source/WTF/wtf/PlatformEnable*.h',
    '/Source/WTF/wtf/PlatformHave*.h',
    '/Configurations/Version.xcconfig',
  ],
};

const Map<String, String> _engineRepoUrls = {
  'blink': 'https://github.com/chromium/chromium.git',
  'gecko': 'https://github.com/mozilla-firefox/firefox.git',
  'webkit': 'https://github.com/WebKit/WebKit.git',
};

// ---------------------------------------------------------------- Extension Types: Raw webidl2 AST

extension type const IdlParsedOutput(Map<String, Object?> json) {
  List<IdlNode> get ast => (json['ast'] as List<Object?>).cast<IdlNode>();
  ParseStats get stats => ParseStats(json['stats'] as Map<String, Object?>);
}

extension type const ParseError(Map<String, Object?> json) {
  String get file => json['file'] as String;
  String get msg => json['msg'] as String;
  String get snippet => json['snippet'] as String;
  String get summaryLine => '$file: ${msg.split('\n').first}';
}

extension type const ParseStats(Map<String, Object?> json) {
  int get files => json['files'] as int;
  int get filesOk => json['filesOk'] as int;
  int get filesRecovered => json['filesRecovered'] as int;
  int get defs => json['defs'] as int;
  int get defsFailed => json['defsFailed'] as int;
  int? get forwardDecls => json['forwardDecls'] as int?;
  List<ParseError> get errors =>
      (json['errors'] as List<Object?>).cast<ParseError>();

  Map<String, Object?> toSummaryJson() => {...json, 'errors': errors.length};

  DisagreementParseStats toDisagreementStats() => DisagreementParseStats({
    ...json,
    'errors': errors.length,
    'errorList': [for (final e in errors) e.summaryLine],
  });
}

extension type const IdlExtAttr(Map<String, Object?> json) {
  String get name => json['name'] as String;
  Map<String, Object?>? get rhs => json['rhs'] as Map<String, Object?>?;

  /// Raw `rhs['value']` (used for `[InterfaceName=...]` alias lookup).
  Object? get rhsRawValue => rhs?['value'];

  /// Normalized string value (joins identifier-list with `,` and strips quotes).
  String? get value {
    final rhsVal = rhsRawValue;
    if (rhsVal is List) {
      return rhsVal
          .cast<Map<String, Object?>>()
          .map((v) => v['value'].toString())
          .join(',');
    }
    if (rhsVal != null) {
      return rhsVal.toString().replaceAll(_surroundingQuotesRe, '');
    }
    return null;
  }
}

extension type const IdlType(Map<String, Object?> json) {
  factory IdlType.fromRaw(Object tObj) => switch (tObj) {
    final String s => IdlType({
      'idlType': s,
      'nullable': false,
      'union': false,
      'generic': '',
    }),
    final Map<String, Object?> m => IdlType(m),
    _ => throw ArgumentError.value(tObj, 'tObj', 'Unexpected IDL type node'),
  };

  bool get isUnion => json['union'] == true;
  String get generic => (json['generic'] as String?) ?? '';
  bool get nullable => json['nullable'] == true;
  String get typeName => json['idlType'] as String;
  List<Object?> get subTypes => json['idlType'] as List<Object?>;
}

extension type const IdlArgument(Map<String, Object?> json) {
  String get name => json['name'] as String;
  Object? get idlType => json['idlType'];
  bool get optional => json['optional'] == true;
  bool get variadic => json['variadic'] == true;
}

extension type const IdlNode(Map<String, Object?> json) {
  String? get type => json['type'] as String?;
  String? get name => json['name'] as String?;
  String? get file => json['__file'] as String?;
  bool get isPartial => json['partial'] == true;
  String? get inheritance => json['inheritance'] as String?;
  String get target => json['target'] as String;
  String get includes => json['includes'] as String;
  Object? get idlType => json['idlType'];
  List<Object?> get idlTypeList => json['idlType'] as List<Object?>;
  String get special => (json['special'] as String?) ?? '';
  bool get readonly => json['readonly'] == true;
  bool get required => json['required'] == true;

  List<IdlExtAttr> get extAttrs =>
      (json['extAttrs'] as List<Object?>?)?.cast<IdlExtAttr>() ?? const [];

  List<IdlNode> get members =>
      (json['members'] as List<Object?>?)?.cast<IdlNode>() ?? const [];

  List<IdlArgument> get arguments =>
      (json['arguments'] as List<Object?>?)?.cast<IdlArgument>() ?? const [];

  List<String> get enumValues => (json['values'] as List<Object?>)
      .cast<Map<String, Object?>>()
      .map((v) => v['value'] as String)
      .toList();

  Object? get constValue {
    final valMap = json['value'] as Map<String, Object?>?;
    return valMap != null ? (valMap['value'] ?? valMap['type']) : null;
  }

  String? get fieldDefaultJson {
    final defMap = json['default'] as Map<String, Object?>?;
    return defMap != null
        ? jsonEncode(defMap['value'] ?? defMap['type'])
        : null;
  }
}

// ---------------------------------------------------------------- Extension Types: Parsed Corpus JSON

typedef ResolvedMember = ({
  MemberRecord member,
  GateRecord gate,
  String definingIface,
  String? inheritedFrom,
});

extension type const GateRecord(Map<String, Object?> json) {
  factory GateRecord.create({
    GateState state = GateState.on,
    List<String> why = const [],
  }) => GateRecord({
    'state': state.name,
    'why': <String>[...why],
  });

  static GateRecord on() => GateRecord.create();

  GateState get state => GateState.fromName(json['state'] as String);
  set state(GateState value) => json['state'] = value.name;

  List<String> get why => (json['why'] as List<Object?>).cast<String>();

  GateRecord combine(GateRecord other) => GateRecord.create(
    state: state.combine(other.state),
    why: [...why, ...other.why],
  );

  GateRecord deepCopy() => GateRecord.create(state: state, why: why);
}

extension type const ArgRecord(Map<String, Object?> json) {
  factory ArgRecord.create({
    required String? name,
    required String t,
    required String raw,
    required bool opt,
    required bool varg,
  }) => ArgRecord({'name': name, 't': t, 'raw': raw, 'opt': opt, 'varg': varg});

  String? get name => json['name'] as String?;
  String? get t => json['t'] as String?;
  String? get raw => json['raw'] as String?;
  bool get opt => json['opt'] == true;
  bool get varg => json['varg'] == true;

  ArgRecord deepCopy() => ArgRecord({...json});
}

extension type const OverloadRecord(Map<String, Object?> json) {
  factory OverloadRecord.create({
    required String? ret,
    required String? retRaw,
    required List<ArgRecord> args,
    required GateRecord gating,
  }) => OverloadRecord({
    'ret': ret,
    'retRaw': retRaw,
    'args': args,
    'gating': gating,
  });

  String? get ret => json['ret'] as String?;
  String? get retRaw => json['retRaw'] as String?;
  List<ArgRecord> get args => (json['args'] as List<Object?>).cast<ArgRecord>();
  GateRecord get gating => GateRecord(json['gating'] as Map<String, Object?>);
  set gating(GateRecord value) => json['gating'] = value;

  OverloadRecord deepCopy() => OverloadRecord.create(
    ret: ret,
    retRaw: retRaw,
    args: [for (final a in args) a.deepCopy()],
    gating: gating.deepCopy(),
  );
}

extension type const AltRecord(Map<String, Object?> json) {
  factory AltRecord.fromMember(MemberRecord old) => AltRecord({
    'file': old.file,
    'type': old.type,
    'readonly': old.json['readonly'],
    'required': old.json['required'],
    'value': old.value,
  });

  String? get file => json['file'] as String?;
  String? get type => json['type'] as String?;

  AltRecord deepCopy() => AltRecord({...json});
}

extension type const MemberRecord(Map<String, Object?> json) {
  factory MemberRecord.stringifier({
    required GateRecord gating,
    required String? file,
  }) => MemberRecord({
    'kind': 'operation',
    'special': 'stringifier',
    'overloads': <OverloadRecord>[
      OverloadRecord.create(
        ret: 'DOMString',
        retRaw: 'DOMString',
        args: <ArgRecord>[],
        gating: gating,
      ),
    ],
    'gating': gating,
    'file': file,
  });

  factory MemberRecord.synthesizedOperation({
    required String synthesizedFrom,
    required GateRecord gating,
    required String? file,
  }) => MemberRecord({
    'kind': 'operation',
    'special': 'synth',
    'synthesized': synthesizedFrom,
    'overloads': <OverloadRecord>[
      OverloadRecord.create(
        ret: 'synth',
        retRaw: 'synth',
        args: <ArgRecord>[],
        gating: gating,
      ),
    ],
    'gating': gating,
    'file': file,
  });

  factory MemberRecord.synthesizedSize({
    required String synthesizedFrom,
    required GateRecord gating,
    required String? file,
  }) => MemberRecord({
    'kind': 'attribute',
    'type': 'unsigned long',
    'raw': 'unsigned long',
    'readonly': true,
    'special': '',
    'synthesized': synthesizedFrom,
    'gating': gating,
    'file': file,
  });

  factory MemberRecord.attribute({
    required String type,
    required String raw,
    required bool readonly,
    required String special,
  }) => MemberRecord({
    'kind': 'attribute',
    'type': type,
    'raw': raw,
    'readonly': readonly,
    'special': special,
  });

  factory MemberRecord.operation({
    required String special,
    required List<OverloadRecord> overloads,
  }) => MemberRecord({
    'kind': 'operation',
    'special': special,
    'overloads': overloads,
  });

  factory MemberRecord.constructor({required List<OverloadRecord> overloads}) =>
      MemberRecord({'kind': 'constructor', 'overloads': overloads});

  factory MemberRecord.constant({
    required String type,
    required Object? value,
  }) => MemberRecord({'kind': 'const', 'type': type, 'value': value});

  factory MemberRecord.field({
    required String type,
    required String raw,
    required bool required,
    required String? defaultValue,
  }) => MemberRecord({
    'kind': 'field',
    'type': type,
    'raw': raw,
    'required': required,
    'default': defaultValue,
  });

  factory MemberRecord.collectionLike({
    required String kind,
    required List<String> types,
    required bool readonly,
  }) => MemberRecord({'kind': kind, 'types': types, 'readonly': readonly});

  factory MemberRecord.enumValues(List<String>? values) =>
      MemberRecord({'kind': 'enum', 'values': values});

  String get kind => json['kind'] as String;
  String? get type => json['type'] as String?;
  String? get raw => json['raw'] as String?;
  bool get readonly => json['readonly'] == true;
  bool get required => json['required'] == true;
  String get special => (json['special'] as String?) ?? '';
  String? get synthesized => json['synthesized'] as String?;
  Object? get value => json['value'];
  Object? get defaultValue => json['default'];

  List<OverloadRecord>? get overloads =>
      (json['overloads'] as List<Object?>?)?.cast<OverloadRecord>();

  List<String>? get types => (json['types'] as List<Object?>?)?.cast<String>();

  List<String>? get values =>
      (json['values'] as List<Object?>?)?.cast<String>();

  GateRecord get gating => GateRecord(json['gating'] as Map<String, Object?>);
  set gating(GateRecord value) => json['gating'] = value;

  String? get file => json['file'] as String?;
  set file(String? value) => json['file'] = value;

  List<AltRecord>? get alts =>
      (json['alts'] as List<Object?>?)?.cast<AltRecord>();
  set alts(List<AltRecord>? value) => json['alts'] = value;

  String? get viaMixin => json['viaMixin'] as String?;
  set viaMixin(String? value) => json['viaMixin'] = value;

  bool get isSynthesized =>
      synthesized != null || special == 'synth' || special == 'stringifier';

  MemberRecord withAlt(AltRecord alt) => MemberRecord({...json, ...alt.json});

  MemberRecord deepCopy() {
    final copy = <String, Object?>{...json};
    if (json['gating'] != null) {
      copy['gating'] = gating.deepCopy();
    }
    if (json['overloads'] is List<Object?>) {
      copy['overloads'] = <OverloadRecord>[
        for (final o in overloads!) o.deepCopy(),
      ];
    }
    if (json['types'] is List<Object?>) {
      copy['types'] = <String>[...types!];
    }
    if (json['alts'] is List<Object?>) {
      copy['alts'] = <AltRecord>[for (final a in alts!) a.deepCopy()];
    }
    return MemberRecord(copy);
  }

  MemberRecord copyForMixin(String mixinName, GateRecord mixinGate) {
    final copy = deepCopy();
    copy.gating = mixinGate.combine(copy.gating);
    final ovs = copy.overloads;
    if (ovs != null) {
      for (final o in ovs) {
        o.gating = mixinGate.combine(o.gating);
      }
    }
    copy.viaMixin = mixinName;
    return copy;
  }
}

extension type const DefRecord(Map<String, Object?> json) {
  factory DefRecord.create(String kind) => DefRecord({
    'kind': kind,
    'files': <String>[],
    'members': <String, MemberRecord>{},
    'gating': GateRecord.on(),
    'inherits': null,
  });

  factory DefRecord.mixin() => DefRecord({
    'members': <String, MemberRecord>{},
    'files': <String>[],
    'gating': GateRecord.on(),
  });

  String get kind => json['kind'] as String;
  set kind(String value) => json['kind'] = value;

  List<String> get files => (json['files'] as List<Object?>).cast<String>();

  Map<String, MemberRecord> get members =>
      (json['members'] as Map<String, Object?>).cast<String, MemberRecord>();

  GateRecord get gating => GateRecord(json['gating'] as Map<String, Object?>);
  set gating(GateRecord value) => json['gating'] = value;

  String? get inherits => json['inherits'] as String?;
  set inherits(String? value) => json['inherits'] = value;

  String? get exposed => json['exposed'] as String?;
  set exposed(String? value) => json['exposed'] = value;

  List<String>? get values =>
      (json['values'] as List<Object?>?)?.cast<String>();
  set values(List<String>? value) => json['values'] = value;

  String? get file => json['__file'] as String?;
}

extension type const CorpusDoc(Map<String, Object?> json) {
  factory CorpusDoc.create({
    required String corpus,
    required String root,
    required ParseStats stats,
    required Map<String, DefRecord> defs,
    required Map<String, Object?> typedefsRaw,
    required Map<String, Object?> notes,
  }) => CorpusDoc({
    'corpus': corpus,
    'root': root,
    'stats': stats,
    'defs': defs,
    'typedefsRaw': typedefsRaw,
    'notes': notes,
  });

  String get corpus => json['corpus'] as String;
  String get root => json['root'] as String;
  ParseStats get stats => ParseStats(json['stats'] as Map<String, Object?>);
  Map<String, DefRecord> get defs =>
      (json['defs'] as Map<String, Object?>).cast<String, DefRecord>();
  Map<String, Object?> get typedefsRaw =>
      (json['typedefsRaw'] as Map<String, Object?>?) ?? <String, Object?>{};
  Map<String, Object?> get notes => json['notes'] as Map<String, Object?>;

  /// Walks the interface inheritance chain (up to [maxDepth]) and merges
  /// interface-level and member-level gating.
  ResolvedMember? lookupMember(
    String iface,
    String key, {
    bool allowOperationFallback = false,
    int maxDepth = 20,
  }) {
    var curIface = iface;
    for (var depth = 0; depth <= maxDepth; depth++) {
      final def = defs[curIface];
      if (def == null) return null;
      final members = def.members;
      final m =
          members[key] ?? (allowOperationFallback ? members['$key()'] : null);
      if (m != null) {
        return (
          member: m,
          gate: def.gating.combine(m.gating),
          definingIface: curIface,
          inheritedFrom: depth > 0 ? curIface : null,
        );
      }
      final parent = def.inherits;
      if (parent == null) return null;
      curIface = parent;
    }
    return null;
  }
}

// ---------------------------------------------------------------- Extension Types: Comparison & Disagreements JSON

extension type const PerCorpusMember(Map<String, Object?> json) {
  factory PerCorpusMember.create({
    required GateState state,
    required List<String> why,
    required String sig,
    required String strict,
    String? inheritedFrom,
    required MemberRecord member,
  }) => PerCorpusMember({
    'state': state.name,
    if (why.isNotEmpty) 'why': why,
    'sig': sig,
    'strict': strict,
    'inheritedFrom': ?inheritedFrom,
    '_m': member,
  });

  GateState get state => GateState.fromName(json['state'] as String);
  bool get isLive => state.isLive;
  List<String>? get why => (json['why'] as List<Object?>?)?.cast<String>();
  String get sig => json['sig'] as String;
  String get strict => json['strict'] as String;
  String? get inheritedFrom => json['inheritedFrom'] as String?;
  MemberRecord get member => MemberRecord(json['_m'] as Map<String, Object?>);

  void stripTransientMember() {
    json.remove('_m');
  }
}

extension type const MemberComparisonRow(Map<String, Object?> json) {
  factory MemberComparisonRow.create({
    required String iface,
    required String key,
    String? kind,
    required Map<String, PerCorpusMember?> per,
  }) => MemberComparisonRow({
    'iface': iface,
    'key': key,
    'kind': ?kind,
    'per': per,
  });

  String get iface => json['iface'] as String;
  String get key => json['key'] as String;
  String? get kind => json['kind'] as String?;
  Map<String, PerCorpusMember?> get per =>
      (json['per'] as Map<String, Object?>).cast<String, PerCorpusMember?>();
}

extension type const DuplicateRow(Map<String, Object?> json) {
  factory DuplicateRow.create({
    required String iface,
    required String key,
    required List<String> sigs,
    required List<String?> files,
    required Map<String, String> engines,
  }) => DuplicateRow({
    'iface': iface,
    'key': key,
    'sigs': sigs,
    'files': files,
    'engines': engines,
  });

  String get iface => json['iface'] as String;
  String get key => json['key'] as String;
  List<String> get sigs => (json['sigs'] as List<Object?>).cast<String>();
  List<String?> get files => (json['files'] as List<Object?>).cast<String?>();
  Map<String, String> get engines =>
      (json['engines'] as Map<String, Object?>).cast<String, String>();
}

extension type const TypeDiffRow(Map<String, Object?> json) {
  factory TypeDiffRow.create({
    required String iface,
    required String key,
    required String? kind,
    required String webref,
    required Map<String, String> engines,
    required Map<String, List<String>> classes,
    required Map<String, List<String>> gating,
  }) => TypeDiffRow({
    'iface': iface,
    'key': key,
    'kind': kind,
    'webref': webref,
    'engines': engines,
    'classes': classes,
    'gating': gating,
  });

  String get iface => json['iface'] as String;
  String get key => json['key'] as String;
  String? get kind => json['kind'] as String?;
  String get webref => json['webref'] as String;
  Map<String, String> get engines =>
      (json['engines'] as Map<String, Object?>).cast<String, String>();
}

extension type const AgreeRow(Map<String, Object?> json) {
  factory AgreeRow.fromTypeDiff(
    TypeDiffRow base, {
    required List<String> agreeingEngines,
    required String agreedSig,
    required List<String> cls,
    required bool unanimous,
  }) => AgreeRow({
    ...base.json,
    'agreeingEngines': agreeingEngines,
    'agreedSig': agreedSig,
    'cls': cls,
    'unanimous': unanimous,
  });

  String get iface => json['iface'] as String;
  String get key => json['key'] as String;
  String? get kind => json['kind'] as String?;
  String get webref => json['webref'] as String;
  Map<String, String> get engines =>
      (json['engines'] as Map<String, Object?>).cast<String, String>();
  List<String> get agreeingEngines =>
      (json['agreeingEngines'] as List<Object?>).cast<String>();
  String get agreedSig => json['agreedSig'] as String;
  List<String> get cls => (json['cls'] as List<Object?>).cast<String>();
  bool get unanimous => json['unanimous'] == true;
}

extension type const MissingRow(Map<String, Object?> json) {
  factory MissingRow.create({
    required String iface,
    required String key,
    required String? kind,
    required List<String> absentIn,
    required List<String> offIn,
    required List<String> presentIn,
    required String webref,
  }) => MissingRow({
    'iface': iface,
    'key': key,
    'kind': kind,
    'absentIn': absentIn,
    'offIn': offIn,
    'presentIn': presentIn,
    'webref': webref,
  });

  String get iface => json['iface'] as String;
  String get key => json['key'] as String;
  String? get kind => json['kind'] as String?;
  List<String> get absentIn =>
      (json['absentIn'] as List<Object?>).cast<String>();
  List<String> get offIn => (json['offIn'] as List<Object?>).cast<String>();
  List<String> get presentIn =>
      (json['presentIn'] as List<Object?>).cast<String>();
  String get webref => json['webref'] as String;
}

extension type const ExtraRow(Map<String, Object?> json) {
  factory ExtraRow.create({
    required String iface,
    required String key,
    required String? kind,
    required bool ifaceInWebref,
    required Map<String, String> engines,
    required Map<String, String> states,
  }) => ExtraRow({
    'iface': iface,
    'key': key,
    'kind': kind,
    'ifaceInWebref': ifaceInWebref,
    'engines': engines,
    'states': states,
  });

  String get iface => json['iface'] as String;
  String get key => json['key'] as String;
  String? get kind => json['kind'] as String?;
  bool get ifaceInWebref => json['ifaceInWebref'] == true;
  Map<String, String> get engines =>
      (json['engines'] as Map<String, Object?>).cast<String, String>();
  Map<String, String> get states =>
      (json['states'] as Map<String, Object?>).cast<String, String>();
}

extension type const CountsRecord(Map<String, Object?> json) {
  factory CountsRecord.create({
    required int rows,
    required int typeDiffRows,
    required int agreeVsWebref,
    required int agreeVsWebrefUnanimous,
    required int extraInEngines,
    required int extraOnWebrefIfaces,
    required int missingInEngines,
    required int stringKindOnlyDiffs,
  }) => CountsRecord(<String, int>{
    'rows': rows,
    'typeDiffRows': typeDiffRows,
    'agreeVsWebref': agreeVsWebref,
    'agreeVsWebrefUnanimous': agreeVsWebrefUnanimous,
    'extraInEngines': extraInEngines,
    'extraOnWebrefIfaces': extraOnWebrefIfaces,
    'missingInEngines': missingInEngines,
    'stringKindOnlyDiffs': stringKindOnlyDiffs,
  });
}

extension type const RevisionRecord(Map<String, Object?> json) {
  String get ref => (json['ref'] ?? json['version'] ?? '').toString();
  String get sha => (json['sha'] ?? '').toString();
  String get shaShort => sha.length > 10 ? sha.substring(0, 10) : sha;
  String get displayNote =>
      (json['note'] ??
              (json['browser'] != null
                  ? '${json['browser']} ${json['version']}'
                  : json['path']) ??
              '')
          .toString();
}

extension type const DisagreementParseStats(Map<String, Object?> json) {
  int get files => json['files'] as int;
  int get defs => json['defs'] as int;
  int get errors => json['errors'] as int;
  List<String> get errorList =>
      (json['errorList'] as List<Object?>).cast<String>();
}

extension type const DisagreementsDoc(Map<String, Object?> json) {
  factory DisagreementsDoc.create({
    required String generated,
    required Map<String, Object?> revisions,
    required Map<String, DisagreementParseStats> parseStats,
    required CountsRecord counts,
    required List<DuplicateRow> webrefDuplicates,
    required List<AgreeRow> agreeVsWebref,
    required List<ExtraRow> extraInEngines,
    required List<MissingRow> missingInEngines,
    required List<TypeDiffRow> typeDiffs,
    required int stringKindOnly,
  }) => DisagreementsDoc({
    'generated': generated,
    'revisions': revisions,
    'parseStats': parseStats,
    'counts': counts,
    'webrefDuplicates': webrefDuplicates,
    'agreeVsWebref': agreeVsWebref,
    'extraInEngines': extraInEngines,
    'missingInEngines': missingInEngines,
    'typeDiffs': typeDiffs,
    'stringKindOnly': stringKindOnly,
  });

  String get generated => json['generated'] as String;
  Map<String, RevisionRecord> get revisions =>
      (json['revisions'] as Map<String, Object?>)
          .cast<String, RevisionRecord>();
  Map<String, DisagreementParseStats> get parseStats =>
      (json['parseStats'] as Map<String, Object?>)
          .cast<String, DisagreementParseStats>();
  CountsRecord get counts =>
      CountsRecord(json['counts'] as Map<String, Object?>);
  List<DuplicateRow> get webrefDuplicates =>
      (json['webrefDuplicates'] as List<Object?>).cast<DuplicateRow>();
  List<AgreeRow> get agreeVsWebref =>
      (json['agreeVsWebref'] as List<Object?>).cast<AgreeRow>();
  List<ExtraRow> get extraInEngines =>
      (json['extraInEngines'] as List<Object?>).cast<ExtraRow>();
  List<MissingRow> get missingInEngines =>
      (json['missingInEngines'] as List<Object?>).cast<MissingRow>();
  List<TypeDiffRow> get typeDiffs =>
      (json['typeDiffs'] as List<Object?>).cast<TypeDiffRow>();
  int get stringKindOnly => json['stringKindOnly'] as int;
}

// ---------------------------------------------------------------- Paths & Fetch

class EngineCensusPaths {
  final String webGeneratorDir;
  final String cacheDir;
  final String outDir;
  final String webrefDir;
  final String overridesPath;

  EngineCensusPaths({
    required this.webGeneratorDir,
    String? cacheDir,
    String? outDir,
    String? webrefDir,
    String? overridesPath,
  }) : cacheDir =
           cacheDir ??
           Platform.environment['ENGINE_IDL_CACHE'] ??
           p.join(
             Platform.environment['HOME'] ??
                 Platform.environment['USERPROFILE'] ??
                 '.',
             '.cache',
             'engine_idl',
           ),
       outDir =
           outDir ??
           Platform.environment['ENGINE_CENSUS_OUT'] ??
           p.join(webGeneratorDir, '.dart_tool', 'engine_census'),
       webrefDir =
           webrefDir ??
           Platform.environment['WEBREF'] ??
           p.join(webGeneratorDir, 'node_modules', '@webref', 'idl'),
       overridesPath =
           overridesPath ??
           p.normalize(
             p.join(
               webGeneratorDir,
               '..',
               'js_interop_gen',
               'lib',
               'src',
               'engine_overrides.json',
             ),
           );
}

Map<String, CorpusDoc> _loadCorpora(EngineCensusPaths paths) => {
  for (final c in allCorpora)
    c: CorpusDoc(
      jsonDecode(File(p.join(paths.outDir, '$c.json')).readAsStringSync())
          as Map<String, Object?>,
    ),
};

Future<void> fetchEngines(
  EngineCensusPaths paths, {
  Map<String, String> refOverrides = const {},
}) async {
  final overridesJson =
      jsonDecode(File(paths.overridesPath).readAsStringSync())
          as Map<String, Object?>;
  final revisions = overridesJson['revisions'] as Map<String, Object?>;
  Directory(paths.cacheDir).createSync(recursive: true);

  await Future.wait(
    engineCorpora.map((engine) async {
      final rev = RevisionRecord(revisions[engine] as Map<String, Object?>);
      final ref = refOverrides[engine] ?? rev.ref;
      final url = _engineRepoUrls[engine]!;
      final patterns = _sparseCheckoutPatterns[engine]!;
      final repoDir = p.join(paths.cacheDir, engine);
      final gitDir = Directory(p.join(repoDir, '.git'));

      if (!gitDir.existsSync()) {
        await _runGit([
          'clone',
          '--filter=blob:none',
          '--no-checkout',
          '--depth',
          '1',
          '--branch',
          ref,
          url,
          repoDir,
        ]);
        await _runGit(['-C', repoDir, 'sparse-checkout', 'init', '--no-cone']);
        File(
          p.join(repoDir, '.git', 'info', 'sparse-checkout'),
        ).writeAsStringSync('${patterns.join('\n')}\n');
        await _runGit(['-C', repoDir, 'checkout', ref]);
      } else {
        File(
          p.join(repoDir, '.git', 'info', 'sparse-checkout'),
        ).writeAsStringSync('${patterns.join('\n')}\n');
        final curHead = await _gitOutput(repoDir, ['rev-parse', 'HEAD']);
        final targetHead = await _gitOutput(repoDir, [
          'rev-parse',
          '--verify',
          '--quiet',
          '$ref^{commit}',
        ]);
        if (targetHead == null || curHead != targetHead) {
          await _runGit([
            '-C',
            repoDir,
            'fetch',
            '--filter=blob:none',
            '--depth',
            '1',
            'origin',
            ref,
          ]);
          await _runGit(['-C', repoDir, 'checkout', 'FETCH_HEAD']);
        } else {
          await _runGit(['-C', repoDir, 'sparse-checkout', 'reapply']);
        }
      }
      final head = await _gitOutput(repoDir, ['rev-parse', 'HEAD']);
      print('$engine ($ref): $head');
    }),
  );
}

Future<void> _runGit(List<String> args) async {
  final res = await Process.run('git', args);
  if (res.exitCode != 0) {
    throw ProcessException(
      'git',
      args,
      '${res.stdout}\n${res.stderr}'.trim(),
      res.exitCode,
    );
  }
}

Future<String?> _gitOutput(String repoDir, List<String> args) async {
  final res = await Process.run('git', ['-C', repoDir, ...args]);
  if (res.exitCode != 0) return null;
  return (res.stdout as String).trim();
}

// ---------------------------------------------------------------- C Expr & Preprocessor

bool evalCExpr(String expr) {
  try {
    final parser = _CExprParser(expr);
    final v = parser.parseExpr();
    parser.skipWs();
    if (parser.pos < parser.src.length) return false;
    return v != 0;
  } on FormatException {
    return false;
  }
}

class _CExprParser {
  final String src;
  int pos = 0;

  _CExprParser(this.src);

  void skipWs() {
    while (pos < src.length && src.codeUnitAt(pos) <= 32) {
      pos++;
    }
  }

  bool _consume(String token) {
    skipWs();
    if (src.startsWith(token, pos)) {
      // Ensure `|` doesn't match `||` and `&` doesn't match `&&`, etc.
      if ((token == '|' || token == '&' || token == '<' || token == '>') &&
          pos + 1 < src.length &&
          (src[pos + 1] == token || src[pos + 1] == '=')) {
        return false;
      }
      pos += token.length;
      return true;
    }
    return false;
  }

  int parseExpr() => _parseLogicalOr();

  int _parseLogicalOr() {
    var left = _parseLogicalAnd();
    while (_consume('||')) {
      final right = _parseLogicalAnd();
      left = (left != 0 || right != 0) ? 1 : 0;
    }
    return left;
  }

  int _parseLogicalAnd() {
    var left = _parseBitwiseOr();
    while (_consume('&&')) {
      final right = _parseBitwiseOr();
      left = (left != 0 && right != 0) ? 1 : 0;
    }
    return left;
  }

  int _parseBitwiseOr() {
    var left = _parseBitwiseAnd();
    while (_consume('|')) {
      final right = _parseBitwiseAnd();
      left = left | right;
    }
    return left;
  }

  int _parseBitwiseAnd() {
    var left = _parseEquality();
    while (_consume('&')) {
      final right = _parseEquality();
      left = left & right;
    }
    return left;
  }

  int _parseEquality() {
    var left = _parseRelational();
    for (;;) {
      if (_consume('==')) {
        final right = _parseRelational();
        left = left == right ? 1 : 0;
      } else if (_consume('!=')) {
        final right = _parseRelational();
        left = left != right ? 1 : 0;
      } else {
        break;
      }
    }
    return left;
  }

  int _parseRelational() {
    var left = _parseUnary();
    for (;;) {
      if (_consume('<=')) {
        final right = _parseUnary();
        left = left <= right ? 1 : 0;
      } else if (_consume('>=')) {
        final right = _parseUnary();
        left = left >= right ? 1 : 0;
      } else if (_consume('<')) {
        final right = _parseUnary();
        left = left < right ? 1 : 0;
      } else if (_consume('>')) {
        final right = _parseUnary();
        left = left > right ? 1 : 0;
      } else {
        break;
      }
    }
    return left;
  }

  int _parseUnary() {
    if (_consume('!')) return _parseUnary() == 0 ? 1 : 0;
    if (_consume('+')) return _parseUnary();
    if (_consume('-')) return -_parseUnary();
    if (_consume('(')) {
      final v = parseExpr();
      if (!_consume(')')) throw const FormatException('Expected )');
      return v;
    }
    skipWs();
    final start = pos;
    while (pos < src.length) {
      final c = src.codeUnitAt(pos);
      if (c >= 48 && c <= 57) {
        pos++;
      } else {
        break;
      }
    }
    if (pos == start) throw const FormatException('Expected number');
    // Strip trailing C integer suffixes (U, L, UL, ULL).
    final numStr = src.substring(start, pos);
    while (pos < src.length) {
      final c = src[pos];
      if (c == 'u' || c == 'U' || c == 'l' || c == 'L') {
        pos++;
      } else {
        break;
      }
    }
    return int.parse(numStr);
  }
}

bool _evalDefinedCond(String expr, Set<String> defined) {
  var e = expr.replaceAll(_lineCommentRe, ' ').replaceAll(_blockCommentRe, ' ');
  e = e.replaceAllMapped(
    _definedMacroRe,
    (m) => defined.contains(m[1] ?? m[2]) ? ' 1 ' : ' 0 ',
  );
  e = e.replaceAllMapped(
    _identRe,
    (m) => defined.contains(m[0]) ? ' 1 ' : ' 0 ',
  );
  return evalCExpr(e);
}

class _IfFrame {
  bool active;
  bool taken;
  _IfFrame({required this.active, required this.taken});
}

class _CppDirectiveStack {
  final List<_IfFrame> _frames = [];

  bool get isActive => _frames.every((f) => f.active);

  bool handleBranch(
    String directive,
    String rest, {
    required bool Function(String name) isDefined,
    required bool Function(String expr) evalCond,
  }) {
    switch (directive) {
      case 'ifdef':
        final v = isDefined(rest.trim());
        _frames.add(_IfFrame(active: v, taken: v));
      case 'ifndef':
        final v = !isDefined(rest.trim());
        _frames.add(_IfFrame(active: v, taken: v));
      case 'if':
        final v = evalCond(rest);
        _frames.add(_IfFrame(active: v, taken: v));
      case 'elif':
        final top = _frames.last;
        if (top.taken) {
          top.active = false;
        } else {
          top.active = evalCond(rest);
          top.taken = top.active;
        }
      case 'else':
        final top = _frames.last;
        top.active = !top.taken;
        top.taken = true;
      case 'endif':
        _frames.removeLast();
      default:
        return false;
    }
    return true;
  }
}

String preprocessIdl(String text, Set<String> defined) {
  final lines = text.split('\n');
  final stack = _CppDirectiveStack();
  final outL = <String>[];

  for (final line in lines) {
    final m = _idlDirectiveRe.firstMatch(line);
    if (m == null) {
      outL.add(stack.isActive ? line : '');
      continue;
    }
    stack.handleBranch(
      m[1]!,
      m[2]!,
      isDefined: defined.contains,
      evalCond: (expr) => _evalDefinedCond(expr, defined),
    );
    outL.add('');
  }
  return outL.join('\n');
}

// ---------------------------------------------------------------- Gating Loaders

Object? _yamlToDart(Object? node) => switch (node) {
  YamlMap(:final entries) => <String, Object?>{
    for (final MapEntry(:key, :value) in entries)
      key.toString(): _yamlToDart(value),
  },
  YamlList() => <Object?>[for (final item in node) _yamlToDart(item)],
  _ => node,
};

bool? _parseBool(Object? v) => switch (v) {
  true || 'true' => true,
  false || 'false' => false,
  _ => null,
};

String dedupeYamlListKeys(String txt) {
  final lines = txt.split('\n');
  final seenKeys = <String>{};
  for (var i = 0; i < lines.length; i++) {
    final line = lines[i];
    if (line.startsWith('- ')) seenKeys.clear();
    final m = _yamlListKeyRe.firstMatch(line);
    if (m != null && m[1]!.length <= 2) {
      final k = m[2]!;
      if (!seenKeys.add(k)) {
        lines[i] = '';
      }
    }
  }
  return lines.join('\n');
}

class _BlinkFeatures {
  final Map<String, Map<String, Object?>> feats;
  final Map<String, ({String feature, String mode, bool? on})> mapped;
  final Map<String, bool?> _memo = {};

  _BlinkFeatures(this.feats, this.mapped);

  String statusOf(Object? s) => switch (s) {
    final String str => str,
    final Map<Object?, Object?> m =>
      (m['Linux'] ?? m['default'] ?? '').toString(),
    _ => '',
  };

  bool? isOn(String name, [Set<String>? seen]) {
    if (_memo.containsKey(name)) return _memo[name];
    final visited = seen ?? <String>{};
    if (!visited.add(name)) return false;

    final d = feats[name];
    bool? r;
    if (d == null) {
      r = null;
    } else {
      final st = statusOf(d['status']);
      final baseCounts =
          d['base_feature_status'] == 'enabled' &&
          d['copied_from_base_feature_if'] != 'overridden';
      r = st == 'stable' || baseCounts;
      final mp = mapped[name];
      if (r != true &&
          mp != null &&
          mp.on == true &&
          mp.mode != 'kSetOnlyIfOverridden') {
        r = true;
      }
      if (r != true && d['public'] == true) {
        r = null;
      }
      final impliedBy = d['implied_by'] as List<Object?>?;
      if (r != true &&
          impliedBy != null &&
          impliedBy.any((x) => isOn(x.toString(), visited) == true)) {
        r = true;
      }
      final dependsOn = d['depends_on'] as List<Object?>?;
      if (r == true &&
          dependsOn != null &&
          !dependsOn.every((x) => isOn(x.toString(), visited) == true)) {
        r = dependsOn.any((x) => isOn(x.toString(), visited) == false)
            ? false
            : null;
      }
    }
    _memo[name] = r;
    return r;
  }
}

_BlinkFeatures _loadBlinkFeatures(String cacheDir) {
  final json5Path = p.join(
    cacheDir,
    'blink',
    'third_party',
    'blink',
    'renderer',
    'platform',
    'runtime_enabled_features.json5',
  );
  // Convert JSON5 (line comments, unquoted keys, trailing commas) to JSON.
  var raw = File(json5Path).readAsStringSync();
  raw = raw.replaceAll(_json5CommentLineRe, '');
  raw = raw.replaceAllMapped(_json5UnquotedKeyRe, (m) => '${m[1]}"${m[2]}":');
  raw = raw.replaceAllMapped(_json5TrailingCommaRe, (m) => m[1]!);
  final data = jsonDecode(raw) as Map<String, Object?>;
  final feats = <String, Map<String, Object?>>{};
  for (final d
      in (data['data'] as List<Object?>).cast<Map<String, Object?>>()) {
    feats[d['name'] as String] = d;
  }

  final blinkRoot = p.join(cacheDir, 'blink');
  final baseDefault = <String, bool>{};
  for (final rel in const [
    'content/public/common/content_features.cc',
    'third_party/blink/common/features.cc',
    'services/network/public/cpp/features.cc',
    'media/base/media_switches.cc',
    'ui/base/ui_base_features.cc',
    'device/base/features.cc',
    'third_party/blink/common/features_generated.cc',
  ]) {
    final f = File(p.join(blinkRoot, rel));
    if (!f.existsSync()) continue;
    for (final m in _blinkBaseFeatureRe.allMatches(f.readAsStringSync())) {
      baseDefault[m[1]!] = m[2] == 'ENABLED';
    }
  }

  final mapped = <String, ({String feature, String mode, bool? on})>{};
  final rfFile = File(p.join(blinkRoot, 'content/child/runtime_features.cc'));
  for (final m in _blinkRuntimeFeatureRe.allMatches(
    rfFile.readAsStringSync(),
  )) {
    final feat = m[2]!;
    mapped[m[1]!] = (
      feature: feat,
      mode: m[3] ?? 'kDefault',
      on: baseDefault[feat],
    );
  }
  return _BlinkFeatures(feats, mapped);
}

Map<String, Object?> _loadGeckoPrefs(String cacheDir) {
  final prefs = <String, Object?>{};
  final yamlFile = File(
    p.join(
      cacheDir,
      'gecko',
      'modules',
      'libpref',
      'init',
      'StaticPrefList.yaml',
    ),
  );
  var txt = preprocessIdl(yamlFile.readAsStringSync(), _geckoDefined);
  txt = txt.replaceAllMapped(_geckoAtMacroRe, (m) {
    final not = m[1] != null;
    final sym = m[2]!;
    final v = switch (sym) {
      'NIGHTLY_BUILD' || 'EARLY_BETA_OR_EARLIER' || 'ANDROID' => false,
      _ => _geckoDefined.contains(sym),
    };
    return (not ? !v : v).toString();
  });
  // StaticPrefList.yaml contains occasional duplicate keys within a single
  // item (e.g. duplicate `type: String` lines), which PyYAML ignores but
  // package:yaml rejects. Keep the last occurrence of each key per item.
  txt = dedupeYamlListKeys(txt);
  final parsed = _yamlToDart(loadYaml(txt)) as List<Object?>?;
  for (final item
      in (parsed ?? const <Object?>[]).cast<Map<String, Object?>>()) {
    prefs[item['name'] as String] = item['value'];
  }
  for (final rel in const [
    'gecko/modules/libpref/init/all.js',
    'gecko/browser/app/profile/firefox.js',
  ]) {
    final f = File(p.join(cacheDir, rel));
    if (!f.existsSync()) continue;
    final t = preprocessIdl(f.readAsStringSync(), _geckoDefined);
    for (final m in _geckoPrefCallRe.allMatches(t)) {
      final v = m[2]!.trim();
      prefs[m[1]!] = _parseBool(v) ?? v;
    }
  }
  return prefs;
}

class _WebKitPrefs {
  final Map<String, Object?> prefs;
  final Set<String> enables;
  final Map<String, int> vals;

  _WebKitPrefs(this.prefs, this.enables, this.vals);

  static const Map<String, int> _fixedMacros = {
    'PLATFORM_COCOA': 1,
    'PLATFORM_MAC': 1,
    'PLATFORM_IOS_FAMILY': 0,
    'PLATFORM_IOS': 0,
    'PLATFORM_VISION': 0,
    'PLATFORM_GTK': 0,
    'PLATFORM_WPE': 0,
    'USE_GLIB': 0,
    'ENABLE_EXPERIMENTAL_FEATURES': 0,
    'PLATFORM_WATCHOS': 0,
    'PLATFORM_APPLETV': 0,
    'USE_APPLE_INTERNAL_SDK': 1,
    'PLATFORM_PLAYSTATION': 0,
    'PLATFORM_WIN': 0,
  };

  bool? evalWkCond(String k) {
    var unknown = false;
    final e = k.replaceAllMapped(_wkFuncMacroRe, (m) {
      final n = '${m[1]}_${m[2]}';
      if (_fixedMacros.containsKey(n)) return ' ${_fixedMacros[n]} ';
      if (vals.containsKey(n)) return ' ${(vals[n] ?? 0) != 0 ? 1 : 0} ';
      if (m[1] == 'ENABLE' || m[1] == 'HAVE') return ' 0 ';
      unknown = true;
      return ' 0 ';
    });
    if (_alphaOrUnderscoreRe.hasMatch(e)) {
      return null;
    }
    try {
      final parser = _CExprParser(e);
      final v = parser.parseExpr() != 0;
      parser.skipWs();
      if (parser.pos < parser.src.length) return null;
      return unknown && !v ? null : v;
    } on FormatException {
      return null;
    }
  }

  ({bool? value, String raw}) evalDefault(Map<String, Object?>? pref) {
    if (pref == null) return (value: null, raw: 'unknown-setting');
    final cond = pref['condition'] as String?;
    if (cond != null && evalWkCond(cond) == false) {
      return (value: false, raw: 'condition:$cond=false');
    }
    final defaultValue = pref['defaultValue'] as Map<String, Object?>?;
    final dv =
        (defaultValue?['WebKit'] ?? defaultValue?['WebCore'])
            as Map<String, Object?>?;
    if (dv == null) return (value: null, raw: 'no-default');

    var sawUnknown = false;
    for (final MapEntry(:key, :value) in dv.entries) {
      if (key == 'default') continue;
      final c = evalWkCond(key);
      if (c == true) {
        return (value: _parseBool(value), raw: '$key:$value');
      }
      if (c == null) sawUnknown = true;
    }
    final v = dv['default'];
    return switch (_parseBool(v)) {
      true => (value: true, raw: 'true'),
      false when sawUnknown => (
        value: null,
        raw: 'false+unevaluable-condition',
      ),
      false => (value: false, raw: 'false'),
      null => (value: null, raw: v.toString()),
    };
  }
}

_WebKitPrefs _loadWebKitPrefs(String cacheDir) {
  final yamlPath = p.join(
    cacheDir,
    'webkit',
    'Source',
    'WTF',
    'Scripts',
    'Preferences',
    'UnifiedWebPreferences.yaml',
  );
  final prefs =
      _yamlToDart(loadYaml(File(yamlPath).readAsStringSync()))
          as Map<String, Object?>;

  final vals = <String, int>{
    'PLATFORM_MAC': 1,
    'PLATFORM_COCOA': 1,
    'OS_DARWIN': 1,
    'OS_MACOS': 1,
    'CPU_ARM64': 1,
    'CPU_ADDRESS64': 1,
    'USE_APPLE_INTERNAL_SDK': 1,
    'USE_CF': 1,
    'USE_FOUNDATION': 1,
    '__MAC_OS_X_VERSION_MIN_REQUIRED': 260000,
    '__MAC_OS_X_VERSION_MAX_ALLOWED': 260000,
    'ENABLE_WEB_AUDIO': 1,
  };

  bool ev(String expr) {
    var e = expr
        .replaceAll(_lineCommentRe, ' ')
        .replaceAll(_blockCommentRe, ' ');
    e = e.replaceAllMapped(
      _definedMacroRe,
      (m) => vals.containsKey(m[1] ?? m[2]) ? ' 1 ' : ' 0 ',
    );
    e = e.replaceAllMapped(
      _wkHeaderMacroRe,
      (m) => ' ${vals['${m[1]}_${m[2]}'] ?? 0} ',
    );
    e = e.replaceAllMapped(_identRe, (m) => ' ${vals[m[0]] ?? 0} ');
    return evalCExpr(e);
  }

  for (final f in const [
    'PlatformHave.h',
    'PlatformEnableCocoa.h',
    'PlatformEnable.h',
  ]) {
    final hdrPath = p.join(cacheDir, 'webkit', 'Source', 'WTF', 'wtf', f);
    final t = File(hdrPath).readAsStringSync().replaceAll('\\\n', ' ');
    final stack = _CppDirectiveStack();

    for (final line in t.split('\n')) {
      final m = _cppDirectiveRe.firstMatch(line);
      if (m == null) continue;
      final d = m[1]!;
      final rest = m[2]!;
      if (stack.handleBranch(
        d,
        rest,
        isDefined: vals.containsKey,
        evalCond: ev,
      )) {
        continue;
      }
      if (stack.isActive) {
        final mm = _cppDefNameRe.firstMatch(rest);
        if (mm == null) continue;
        final name = mm[1]!;
        if (d == 'undef') {
          vals.remove(name);
        } else {
          final v = mm[2]!.trim();
          vals[name] = v.isEmpty
              ? 1
              : _digitsOnlyRe.hasMatch(v)
              ? int.parse(v)
              : (ev(v) ? 1 : 0);
        }
      }
    }
  }

  final enables = <String>{
    for (final MapEntry(:key, :value) in vals.entries)
      if (key.startsWith('ENABLE_') && value != 0) key.substring(7),
  };
  return _WebKitPrefs(prefs, enables, vals);
}

// ---------------------------------------------------------------- Corpus Sources & Parse

List<String> _walkFiles(String dir, bool Function(String path) pred) {
  final acc = <String>[];
  void walk(Directory d) {
    final entries = d.listSync(followLinks: false)
      ..sort((a, b) => a.path.compareTo(b.path));
    for (final e in entries) {
      if (e is Directory) {
        walk(e);
      } else if (e is File && pred(e.path)) {
        acc.add(e.path);
      }
    }
  }

  walk(Directory(dir));
  return acc;
}

String _commonPre(String t) => t
    .replaceAll(_toStringCallRe, 'toStringXX(')
    .replaceAll(_legacyCallerRe, '')
    .replaceAll(_objectParamRe, 'object obj)');

sealed class _CorpusSource {
  final Corpus corpus;
  final String rootDir;

  _CorpusSource(this.corpus, this.rootDir);

  factory _CorpusSource.forCorpus(Corpus corpus, EngineCensusPaths paths) =>
      switch (corpus) {
        Corpus.webref => _WebrefCorpusSource(paths),
        Corpus.blink => _BlinkCorpusSource.load(paths),
        Corpus.gecko => _GeckoCorpusSource.load(paths),
        Corpus.webkit => _WebKitCorpusSource.load(paths),
      };

  String? get quirks => null;

  List<String> collectFiles();

  String preprocess(String rawText) => rawText;

  String preprocessFile(String rawText) => _commonPre(preprocess(rawText));

  GateRecord evaluateGate(List<IdlExtAttr> eas) => GateRecord.on();

  Map<String, Object?> buildNotes(Map<String, String> aliases) => {
    'quirks': ?quirks,
    'aliases': aliases,
  };
}

final class _WebrefCorpusSource extends _CorpusSource {
  _WebrefCorpusSource(EngineCensusPaths paths)
    : super(Corpus.webref, paths.webrefDir);

  @override
  List<String> collectFiles() =>
      Directory(rootDir)
          .listSync()
          .whereType<File>()
          .map((f) => f.path)
          .where((f) => f.endsWith('.idl'))
          .toList()
        ..sort();
}

final class _BlinkCorpusSource extends _CorpusSource {
  final _BlinkFeatures features;

  _BlinkCorpusSource(String rootDir, this.features)
    : super(Corpus.blink, rootDir);

  factory _BlinkCorpusSource.load(EngineCensusPaths paths) =>
      _BlinkCorpusSource(
        p.join(paths.cacheDir, 'blink', 'third_party', 'blink', 'renderer'),
        _loadBlinkFeatures(paths.cacheDir),
      );

  @override
  List<String> collectFiles() => _walkFiles(
    rootDir,
    (f) =>
        f.endsWith('.idl') &&
        !_blinkTestPathRe.hasMatch(f.substring(rootDir.length)),
  );

  @override
  GateRecord evaluateGate(List<IdlExtAttr> eas) {
    final why = <String>[];
    var state = GateState.on;
    for (final ea in eas) {
      switch (ea.name) {
        case 'RuntimeEnabled' || 'ContextEnabled':
          final n = ea.value ?? '';
          final r = ea.name == 'ContextEnabled' ? null : features.isOn(n);
          final d = features.feats[n] ?? const <String, Object?>{};
          final mp = features.mapped[n];
          final st = features.statusOf(d['status']);
          final baseSt = d['base_feature_status'];
          final copiedIf = d['copied_from_base_feature_if'];
          final ot = d['origin_trial_feature_name'];
          final pub = d['public'];
          why.add(
            '${ea.name}=$n(${st.isEmpty ? 'none' : st}'
            '${baseSt != null ? ',base:$baseSt' : ''}'
            '${copiedIf != null ? ',copied_if:$copiedIf' : ''}'
            '${ot != null ? ',OT' : ''}'
            '${pub == true ? ',public' : ''}'
            '${mp != null ? ',${mp.feature}=${mp.on}' : ''})',
          );
          state = state.combine(GateState.fromBool(r));
        case 'IsolatedContext':
          why.add('IsolatedContext');
          state = GateState.off;
        case 'CrossOriginIsolated':
          why.add(
            'CrossOriginIsolated${ea.value != null ? '=${ea.value}' : ''}',
          );
        case 'SecureContext' when ea.value != null:
          why.add('SecureContext=${ea.value}');
      }
    }
    return GateRecord.create(state: state, why: why);
  }
}

final class _GeckoCorpusSource extends _CorpusSource {
  final Map<String, Object?> prefs;

  _GeckoCorpusSource(String rootDir, this.prefs) : super(Corpus.gecko, rootDir);

  factory _GeckoCorpusSource.load(EngineCensusPaths paths) =>
      _GeckoCorpusSource(
        p.join(paths.cacheDir, 'gecko', 'dom', 'webidl'),
        _loadGeckoPrefs(paths.cacheDir),
      );

  @override
  String get quirks =>
      'UTF8String->USVString; legacycaller dropped; forward decls skipped; #if evaluated for Linux release';

  @override
  List<String> collectFiles() => _walkFiles(
    rootDir,
    (f) => f.endsWith('.webidl') && !_geckoTestFileRe.hasMatch(f),
  );

  @override
  String preprocess(String rawText) => preprocessIdl(
    rawText,
    _geckoDefined,
  ).replaceAll(_utf8StringRe, 'USVString');

  @override
  GateRecord evaluateGate(List<IdlExtAttr> eas) {
    final why = <String>[];
    var state = GateState.on;
    for (final ea in eas) {
      switch (ea.name) {
        case 'Pref':
          final n = ea.value ?? '';
          final hasPref = prefs.containsKey(n);
          final v = prefs[n];
          why.add('Pref=$n(${hasPref ? v : '?'})');
          state = state.combine(
            v is bool ? GateState.fromBool(v) : GateState.unknown,
          );
        case 'ChromeOnly':
          why.add('ChromeOnly');
          state = GateState.off;
        case 'Func' || 'Trial':
          why.add('${ea.name}=${ea.value}');
          state = state.combine(GateState.unknown);
        case 'Exposed'
            when _geckoInternalExposedRe.hasMatch('${ea.value}') &&
                !_geckoWebExposedRe.hasMatch('${ea.value}'):
          why.add('Exposed=${ea.value}');
          state = GateState.off;
      }
    }
    return GateRecord.create(state: state, why: why);
  }
}

final class _WebKitCorpusSource extends _CorpusSource {
  final _WebKitPrefs wk;
  final Set<String> wkDefined;

  _WebKitCorpusSource(String rootDir, this.wk)
    : wkDefined = {
        for (final e in wk.enables) 'ENABLE_$e',
        'PLATFORM_COCOA',
        'PLATFORM_MAC',
      },
      super(Corpus.webkit, rootDir);

  factory _WebKitCorpusSource.load(EngineCensusPaths paths) =>
      _WebKitCorpusSource(
        p.join(paths.cacheDir, 'webkit', 'Source', 'WebCore'),
        _loadWebKitPrefs(paths.cacheDir),
      );

  @override
  String get quirks =>
      'A&B ext-attr values quoted; trailing commas removed; #if ENABLE() evaluated against PlatformEnable(.h|Cocoa.h); (X or any)->any';

  @override
  List<String> collectFiles() => _walkFiles(
    rootDir,
    (f) =>
        f.endsWith('.idl') &&
        !_webkitTestPathRe.hasMatch(f.substring(rootDir.length)),
  );

  @override
  String preprocess(String rawText) {
    var t = rawText.replaceAllMapped(
      _wkIfElifLineRe,
      (m) => m[1]!.replaceAllMapped(
        _wkMacroCallRe,
        (mm) => 'defined(${mm[1]}_${mm[2]})',
      ),
    );
    t = preprocessIdl(t, wkDefined);
    t = t.replaceAllMapped(_trailingBracketCommaRe, (m) => m[1]!);
    t = t.replaceAllMapped(
      _implDefaultValRe,
      (m) => '${m[1]}="${m[2]!.trim().replaceAll('"', "'")}"',
    );
    t = t.replaceAll(_orAnyUnionRe, 'any');
    t = t.replaceAllMapped(_callbackThisObjRe, (m) => '${m[1]}="any"');
    t = t.replaceAllMapped(
      _bitOpExtAttrValRe,
      (m) => '="${m[1]!.replaceAll(_wsRe, '')}"',
    );
    return t;
  }

  @override
  GateRecord evaluateGate(List<IdlExtAttr> eas) {
    final why = <String>[];
    var state = GateState.on;
    for (final ea in eas) {
      switch (ea.name) {
        case 'EnabledBySetting':
          for (final n in (ea.value ?? '').split('&')) {
            final pref = wk.prefs[n] as Map<String, Object?>?;
            final r = wk.evalDefault(pref);
            why.add(
              'EnabledBySetting=$n(${pref != null ? pref['status'] : '?'},${r.raw})',
            );
            final settingState = switch (r.value) {
              true => GateState.on,
              false when !(pref != null && pref['status'] == 'embedder') =>
                GateState.off,
              _ => GateState.unknown,
            };
            state = state.combine(settingState);
          }
        case 'Conditional':
          final val = ea.value ?? '';
          final ok = val
              .split('&')
              .every((c) => c.split('|').any(wk.enables.contains));
          why.add('Conditional=$val${ok ? '' : '(not-in-PlatformEnable*.h)'}');
          if (!ok) state = state.combine(GateState.unknown);
        case 'EnabledByDeprecatedGlobalSetting' ||
            'EnabledByQuirk' ||
            'EnabledForWorld' ||
            'EnabledBySettingOrQuirk':
          why.add('${ea.name}=${ea.value}');
          state = state.combine(GateState.unknown);
        case 'LegacyFactoryFunctionEnabledBySetting' ||
            'DisabledByQuirk' ||
            'EnabledForContext':
          why.add('${ea.name}=${ea.value}');
      }
    }
    return GateRecord.create(state: state, why: why);
  }
}

Future<void> parseCorpora(
  EngineCensusPaths paths, {
  String targetCorpus = 'all',
  String? customOutPath,
}) async {
  Directory(paths.outDir).createSync(recursive: true);
  if (targetCorpus == 'all') {
    for (final c in Corpus.values) {
      await _parseSingleCorpus(
        paths,
        c,
        p.join(paths.outDir, '${c.name}.json'),
      );
    }
  } else {
    final corpus = Corpus.fromName(targetCorpus);
    final outPath = customOutPath ?? p.join(paths.outDir, '$targetCorpus.json');
    await _parseSingleCorpus(paths, corpus, outPath);
  }
}

Future<void> _parseSingleCorpus(
  EngineCensusPaths paths,
  Corpus corpus,
  String outPath,
) async {
  final source = _CorpusSource.forCorpus(corpus, paths);
  final files = source.collectFiles();
  final filesPayload = <String, String>{
    for (final f in files)
      p.relative(f, from: source.rootDir): source.preprocessFile(
        File(f).readAsStringSync(),
      ),
  };

  final proc = await Process.start('node', [
    '-e',
    _nodeWebIdlParseScript,
  ], workingDirectory: paths.webGeneratorDir);
  final stdoutFuture = proc.stdout.transform(utf8.decoder).join();
  final stderrFuture = proc.stderr.transform(utf8.decoder).join();
  proc.stdin.write(jsonEncode(filesPayload));
  await proc.stdin.close();
  final exitCode = await proc.exitCode;
  final stderrOut = await stderrFuture;
  if (exitCode != 0) {
    throw ProcessException('node', ['-e', 'webidl2'], stderrOut, exitCode);
  }
  final parsedNode = IdlParsedOutput(
    jsonDecode(await stdoutFuture) as Map<String, Object?>,
  );
  final ast = parsedNode.ast;
  final stats = parsedNode.stats;

  // Normalize typedefs and aliases.
  final typedefs = <String, Object?>{
    for (final d in ast)
      if (d.type == 'typedef') d.name!: d.idlType,
  };
  var webrefTypedefs = <String, Object?>{};
  final webrefJsonFile = File(p.join(p.dirname(outPath), 'webref.json'));
  if (corpus != Corpus.webref && webrefJsonFile.existsSync()) {
    final wj = CorpusDoc(
      jsonDecode(webrefJsonFile.readAsStringSync()) as Map<String, Object?>,
    );
    webrefTypedefs = wj.typedefsRaw;
  }

  final alias = <String, String>{};
  for (final d in ast) {
    for (final x in d.extAttrs) {
      if (x.name == 'InterfaceName' && x.rhsRawValue != null) {
        alias[d.name!] = x.rhsRawValue.toString();
      }
    }
  }
  String nameOf(String n) => alias[n] ?? n;
  final notes = source.buildNotes(alias);

  String tstr(Object? tObj, bool resolve, [int depth = 0]) {
    if (tObj == null) return 'undefined';
    final t = IdlType.fromRaw(tObj);
    String s;
    if (t.isUnion) {
      final sub =
          t.subTypes
              .map((x) => tstr(x, resolve, depth))
              .expand(
                (x) => x.startsWith('(') && !x.endsWith('?')
                    ? x.substring(1, x.length - 1).split(' or ')
                    : [x],
              )
              .toList()
            ..sort();
      s = '(${sub.join(' or ')})';
    } else if (t.generic.isNotEmpty) {
      final sub = t.subTypes.map((x) => tstr(x, resolve, depth)).join(', ');
      s = '${t.generic}<$sub>';
    } else {
      final rawName = t.typeName;
      s = alias[rawName] ?? rawName;
      if (resolve && depth < 10) {
        final td = typedefs[s] ?? webrefTypedefs[s];
        if (td != null) {
          final r = tstr(td, resolve, depth + 1);
          if (t.nullable && !r.endsWith('?')) return '$r?';
          return r;
        }
      }
    }
    return t.nullable ? '$s?' : s;
  }

  OverloadRecord buildOverload(IdlNode m, GateRecord gating) {
    final idlType = m.idlType;
    return OverloadRecord.create(
      ret: idlType != null ? tstr(idlType, true) : null,
      retRaw: idlType != null ? tstr(idlType, false) : null,
      args: [
        for (final a in m.arguments)
          ArgRecord.create(
            name: a.name,
            t: tstr(a.idlType, true),
            raw: tstr(a.idlType, false),
            opt: a.optional,
            varg: a.variadic,
          ),
      ],
      gating: gating,
    );
  }

  final defs = <String, DefRecord>{};
  final mixins = <String, DefRecord>{};
  final includes = <({String target, String mixin})>[];

  DefRecord ensure(String name, String kind) =>
      defs.putIfAbsent(name, () => DefRecord.create(kind));

  void addMembers(DefRecord target, IdlNode d, GateRecord defGate) {
    final file = d.file ?? target.file;
    final targetMembers = target.members;

    for (final m in d.members) {
      final g = defGate.combine(source.evaluateGate(m.extAttrs));
      final mType = m.type;
      late final String key;
      late final MemberRecord rec;

      switch (mType) {
        case 'attribute':
          if (m.special == 'stringifier' &&
              !targetMembers.containsKey('toString()')) {
            targetMembers['toString()'] = MemberRecord.stringifier(
              gating: g,
              file: file,
            );
          }
          key = m.name!;
          rec = MemberRecord.attribute(
            type: tstr(m.idlType, true),
            raw: tstr(m.idlType, false),
            readonly: m.readonly,
            special: m.special,
          );
        case 'operation':
          final rawName = m.name ?? '';
          final nm = rawName == 'toStringXX' ? 'toString' : rawName;
          final special = m.special;
          if (special == 'stringifier' && nm.isEmpty) {
            targetMembers.putIfAbsent(
              'toString()',
              () => MemberRecord.stringifier(gating: g, file: file),
            );
            continue;
          }
          key = nm.isNotEmpty ? '$nm()' : '[$special]';
          final prev = targetMembers[key];
          final overload = buildOverload(m, g);
          if (prev != null && prev.kind == 'operation') {
            prev.overloads!.add(overload);
            if (g.state == GateState.on) {
              prev.gating = GateRecord.create(
                state: GateState.on,
                why: prev.gating.why,
              );
            }
            continue;
          }
          rec = MemberRecord.operation(
            special: special,
            overloads: <OverloadRecord>[overload],
          );
        case 'constructor':
          key = 'constructor()';
          final prev = targetMembers[key];
          final overload = buildOverload(m, g);
          if (prev != null) {
            prev.overloads!.add(overload);
            continue;
          }
          rec = MemberRecord.constructor(overloads: <OverloadRecord>[overload]);
        case 'const':
          key = m.name!;
          rec = MemberRecord.constant(
            type: tstr(m.idlType, true),
            value: m.constValue,
          );
        case 'field':
          key = m.name!;
          rec = MemberRecord.field(
            type: tstr(m.idlType, true),
            raw: tstr(m.idlType, false),
            required: m.required,
            defaultValue: m.fieldDefaultJson,
          );
        case 'iterable' || 'maplike' || 'setlike' || 'async_iterable':
          final collKind = mType!;
          key = '[$collKind]';
          final idlTypes = m.idlTypeList.map((x) => tstr(x, true)).toList();
          final isReadonly = m.readonly;
          rec = MemberRecord.collectionLike(
            kind: collKind,
            types: idlTypes,
            readonly: isReadonly,
          );
          final synth = switch (collKind) {
            'iterable' => const ['entries', 'forEach', 'keys', 'values'],
            'async_iterable' => const ['entries', 'keys', 'values'],
            'setlike' => const ['entries', 'forEach', 'has', 'keys', 'values'],
            'maplike' => const [
              'entries',
              'forEach',
              'get',
              'has',
              'keys',
              'values',
            ],
            _ => const <String>[],
          };
          final mut = switch ((isReadonly, collKind)) {
            (false, 'setlike') => const ['add', 'clear', 'delete'],
            (false, 'maplike') => const ['clear', 'delete', 'set'],
            _ => const <String>[],
          };
          for (final n in [...synth, ...mut]) {
            targetMembers.putIfAbsent(
              '$n()',
              () => MemberRecord.synthesizedOperation(
                synthesizedFrom: collKind,
                gating: g,
                file: file,
              ),
            );
          }
          if ((collKind == 'setlike' || collKind == 'maplike') &&
              !targetMembers.containsKey('size')) {
            targetMembers['size'] = MemberRecord.synthesizedSize(
              synthesizedFrom: collKind,
              gating: g,
              file: file,
            );
          }
        default:
          continue;
      }

      rec.gating = g;
      rec.file = file;
      final old = targetMembers[key];
      if (old != null && old.kind == rec.kind && old.file != rec.file) {
        rec.alts = <AltRecord>[...?old.alts, AltRecord.fromMember(old)];
      }
      targetMembers[key] = rec;
    }
  }

  for (final d in ast) {
    final dType = d.type;
    if (dType == 'typedef' || dType == 'eof') continue;
    if (dType == 'includes') {
      includes.add((target: nameOf(d.target), mixin: nameOf(d.includes)));
      continue;
    }
    final name = d.name != null ? nameOf(d.name!) : null;
    if (dType == 'enum') {
      final e = ensure(name!, 'enum');
      e.values = d.enumValues;
      e.files.add(d.file!);
      e.gating = source.evaluateGate(d.extAttrs);
      continue;
    }
    final eas = d.extAttrs;
    final g = source.evaluateGate(eas);
    final isPartial = d.isPartial;
    if (dType == 'interface mixin') {
      final mx = mixins.putIfAbsent(name!, DefRecord.mixin);
      mx.files.add(d.file!);
      if (!isPartial) mx.gating = g;
      addMembers(mx, d, isPartial ? g : GateRecord.on());
      continue;
    }
    final def = ensure(name!, dType!);
    def.files.add(d.file!);
    if (!isPartial) {
      def.kind = dType;
      def.gating = g;
      final inh = d.inheritance;
      def.inherits = inh != null ? nameOf(inh) : null;
      for (final x in eas) {
        if (x.name == 'Exposed') {
          def.exposed = x.value;
          break;
        }
      }
      addMembers(def, d, GateRecord.on());
    } else {
      addMembers(def, d, g);
    }
  }

  for (final (:target, :mixin) in includes) {
    final mx = mixins[mixin];
    if (mx == null) continue;
    final def = ensure(target, 'interface');
    final defMembers = def.members;
    final mxGate = mx.gating;

    for (final MapEntry(:key, :value) in mx.members.entries) {
      defMembers[key] = value.copyForMixin(mixin, mxGate);
    }
  }

  final doc = CorpusDoc.create(
    corpus: corpus.name,
    root: source.rootDir,
    stats: stats,
    defs: defs,
    typedefsRaw: typedefs,
    notes: notes,
  );
  File(outPath).writeAsStringSync(jsonEncode(doc));
  print(
    '${corpus.name} ${jsonEncode(stats.toSummaryJson())} defs: ${defs.length}',
  );
}

// ---------------------------------------------------------------- Compare

String normalizeBufferType(String t) {
  return t
      .replaceAllMapped(_parenGroupRe, (m) {
        final inner = m[1]!;
        final parts = inner.split(' or ');
        if (!parts.any(
          (part) =>
              _bufTypeRe.hasMatch(part.replaceFirst(_trailingQuestionRe, '')),
        )) {
          return m[0]!;
        }
        final rest = parts.where(
          (part) =>
              !_bufTypeRe.hasMatch(part.replaceFirst(_trailingQuestionRe, '')),
        );
        final u = <String>{'BufferSource', ...rest}.toList()..sort();
        return u.length == 1 ? 'BufferSource' : '(${u.join(' or ')})';
      })
      .replaceAll(_bufferAliasRe, 'BufferSource');
}

String? looseType(String? t) {
  if (t == null) return null;
  return normalizeBufferType(
    t
        .replaceAll(_strTypesRe, 'DOMString')
        .replaceAll(_voidWordRe, 'undefined')
        .replaceAll(_unrestrictedPrefixRe, ''),
  );
}

List<String> splitUnionType(String t) {
  final m = _outerUnionRe.firstMatch(t);
  if (m == null) return [t];
  final parts = <String>[];
  var depth = 0;
  final cur = StringBuffer();
  final inner = m[1]!;
  for (var i = 0; i < inner.length; i++) {
    final c = inner[i];
    if (c == '(' || c == '<') depth++;
    if (c == ')' || c == '>') depth--;
    if (depth == 0 && inner.startsWith(' or ', i)) {
      parts.add(cur.toString());
      cur.clear();
      i += 3;
      continue;
    }
    cur.write(c);
  }
  parts.add(cur.toString());
  if (m[2]!.isNotEmpty) parts.add('null');
  return parts;
}

String _expandOps(
  List<OverloadRecord> overloads,
  String? Function(String?) norm,
) {
  final outS = <String>{};
  for (final o in overloads) {
    final args = o.args;
    var minN = args.length;
    while (minN > 0 && (args[minN - 1].opt || args[minN - 1].varg)) {
      minN--;
    }
    for (var n = minN; n <= args.length; n++) {
      var combos = <List<String>>[const []];
      for (final a in args.take(n)) {
        final aType = norm(a.t) ?? '';
        final vargSuffix = a.varg ? '...' : '';
        final ts = splitUnionType(aType).map((x) => '$x$vargSuffix').toList();
        final next = <List<String>>[];
        for (final c in combos) {
          for (final t in ts) {
            next.add([...c, t]);
          }
        }
        combos = next.length > 512
            ? [
                [...combos.first, aType],
              ]
            : next;
      }
      final ret = norm(o.ret) ?? '';
      for (final c in combos) {
        outS.add('$ret(${c.join(', ')})');
      }
    }
  }
  final sorted = outS.toList()..sort();
  return sorted.join(' | ');
}

String memberSignature(MemberRecord m, {bool strict = false}) {
  final norm = strict ? (String? x) => x : looseType;
  final kind = m.kind;
  switch (kind) {
    case 'attribute':
      final ro = m.readonly ? 'readonly ' : '';
      final sp = m.special.isNotEmpty ? '${m.special} ' : '';
      return '$ro$sp${norm(m.type)}';
    case 'operation' || 'constructor':
      final overloads = m.overloads!
          .where((o) => o.gating.state.isLive)
          .toList();
      if (!strict) return _expandOps(overloads, norm);
      final sigs =
          overloads
              .map((o) {
                final args = o.args
                    .map(
                      (a) =>
                          '${a.opt ? 'optional ' : ''}${norm(a.t)}${a.varg ? '...' : ''}',
                    )
                    .join(', ');
                return '${norm(o.ret) ?? ''}($args)';
              })
              .toSet()
              .toList()
            ..sort();
      return sigs.join(' | ');
    case 'const':
      return '${norm(m.type)}=${m.value}';
    case 'field':
      return '${m.required ? 'required ' : ''}${norm(m.type)}';
    case 'enum':
      final vals = [...?m.values]..sort();
      return vals.join(',');
    default:
      final types = (m.types ?? const []).map(norm).join(',');
      return '$kind<$types>';
  }
}

void compareCorpora(EngineCensusPaths paths) {
  final corpora = _loadCorpora(paths);

  bool isEnumName(String n) => allCorpora.any((c) {
    final d = corpora[c]!.defs[n];
    return d != null && d.kind == 'enum';
  });

  List<String> classify(MemberRecord w, MemberRecord e) {
    if (w.kind != e.kind) return ['kind'];
    final cls = <String>{};
    void tdiff(String? aRaw, String? bRaw) {
      var a = aRaw ?? 'none';
      var b = bRaw ?? 'none';
      if (a == b) return;
      a = looseType(a)!;
      b = looseType(b)!;
      if (a == b) {
        cls.add('string-kind');
        return;
      }
      final ua = a.replaceFirst(_trailingQuestionRe, '');
      final ub = b.replaceFirst(_trailingQuestionRe, '');
      if (ua == ub) {
        cls.add('nullability');
        return;
      }
      if (_idlNumericTypeRe.hasMatch(ua) && _idlNumericTypeRe.hasMatch(ub)) {
        final fa = ua.contains('double') || ua.contains('float');
        final fb = ub.contains('double') || ub.contains('float');
        if (fa != fb) {
          cls.add('int-vs-float');
        } else if (ua.replaceFirst('unrestricted ', '') ==
            ub.replaceFirst('unrestricted ', '')) {
          cls.add('unrestricted');
        } else if (ua.contains('unsigned') != ub.contains('unsigned') &&
            ua.replaceFirst('unsigned ', '') ==
                ub.replaceFirst('unsigned ', '')) {
          cls.add('signedness');
        } else {
          cls.add('numeric-width');
        }
        if (a.endsWith('?') != b.endsWith('?')) cls.add('nullability');
        return;
      }
      if (ua.replaceAll(_seqOrFrozenArrayRe, 'S') ==
          ub.replaceAll(_seqOrFrozenArrayRe, 'S')) {
        cls.add('sequence-vs-FrozenArray');
        return;
      }
      if ((isEnumName(ua) && ub == 'DOMString') ||
          (isEnumName(ub) && ua == 'DOMString')) {
        cls.add('enum-vs-DOMString');
        return;
      }
      if (_wordOnlyRe.hasMatch(ua) && _wordOnlyRe.hasMatch(ub)) {
        cls.add('named-type');
        return;
      }
      cls.add('type');
    }

    switch (w.kind) {
      case 'attribute':
        tdiff(w.type, e.type);
        if (w.readonly != e.readonly) cls.add('readonly');
      case 'field':
        tdiff(w.type, e.type);
        if (w.required != e.required) cls.add('required');
      case 'const':
        tdiff(w.type, e.type);
        if ('${w.value}' != '${e.value}') cls.add('value');
      case 'enum':
        cls.add('enum-values');
      case 'operation' || 'constructor':
        final wo = w.overloads!.where((o) => o.gating.state.isLive).toList();
        final eo = e.overloads!.where((o) => o.gating.state.isLive).toList();
        if (wo.length != 1 || eo.length != 1) {
          cls.add('overloads');
        } else {
          final a = wo.first;
          final b = eo.first;
          if (looseType(a.ret) != looseType(b.ret)) {
            tdiff(a.ret, b.ret);
            cls.add('return');
          }
          final aArgs = a.args;
          final bArgs = b.args;
          if (aArgs.length != bArgs.length) cls.add('arity');
          final minLen = aArgs.length < bArgs.length
              ? aArgs.length
              : bArgs.length;
          for (var i = 0; i < minLen; i++) {
            tdiff(aArgs[i].t, bArgs[i].t);
            if (aArgs[i].opt != bArgs[i].opt) cls.add('optionality');
            if (aArgs[i].varg != bArgs[i].varg) cls.add('variadic');
          }
        }
      default:
        cls.add('other');
    }
    return cls.toList();
  }

  final rows = <MemberComparisonRow>[];
  final allIfaces = <String>{
    for (final c in corpora.values) ...c.defs.keys,
  }.toList()..sort();

  for (final iface in allIfaces) {
    final keys = <String>{};
    for (final c in corpora.values) {
      final d = c.defs[iface];
      if (d == null) continue;
      if (d.kind == 'enum') {
        keys.add('(enum)');
      } else {
        keys.addAll(d.members.keys);
      }
    }
    final sortedKeys = keys.toList()..sort();
    for (final key in sortedKeys) {
      final per = <String, PerCorpusMember?>{};
      String? rowKind;
      for (final c in allCorpora) {
        ResolvedMember? r;
        if (key == '(enum)') {
          final d = corpora[c]!.defs[iface];
          if (d != null && d.kind == 'enum') {
            r = (
              member: MemberRecord.enumValues(d.values),
              gate: d.gating,
              definingIface: iface,
              inheritedFrom: null,
            );
          }
        } else {
          r = corpora[c]!.lookupMember(iface, key);
        }
        if (r == null) {
          per[c] = null;
          continue;
        }
        rowKind ??= r.member.kind;
        per[c] = PerCorpusMember.create(
          state: r.gate.state,
          why: r.gate.why,
          sig: memberSignature(r.member),
          strict: memberSignature(r.member, strict: true),
          inheritedFrom: r.inheritedFrom,
          member: r.member,
        );
      }
      rows.add(
        MemberComparisonRow.create(
          iface: iface,
          key: key,
          kind: rowKind,
          per: per,
        ),
      );
    }
  }

  bool isLive(PerCorpusMember? p) => p != null && p.isLive;
  final webrefDefs = corpora['webref']!.defs;
  final webrefDuplicates = <DuplicateRow>[];
  final agreeVsWebref = <AgreeRow>[];
  final extraInEngines = <ExtraRow>[];
  final missingInEngines = <MissingRow>[];
  final typeDiffs = <TypeDiffRow>[];
  var stringKindOnly = 0;

  for (final r in rows) {
    final iface = r.iface;
    final key = r.key;
    final kind = r.kind;
    final per = r.per;
    final w = per['webref'];
    final liveEng = engineCorpora.where((e) => isLive(per[e])).toList();

    if (w != null) {
      final wm = w.member;
      final wSig = w.sig;
      final alts = wm.alts ?? const [];
      final wAlts = <String>{
        wSig,
        for (final a in alts) memberSignature(wm.withAlt(a)),
      };
      if (wAlts.length > 1) {
        webrefDuplicates.add(
          DuplicateRow.create(
            iface: iface,
            key: key,
            sigs: wAlts.toList(),
            files: [wm.file, for (final a in alts) a.file],
            engines: {for (final e in liveEng) e: per[e]!.sig},
          ),
        );
      }

      final diffs = <String, ({String sig, List<String> cls})>{};
      for (final e in liveEng) {
        final pe = per[e]!;
        if (wm.isSynthesized || pe.member.isSynthesized) continue;
        final eSig = pe.sig;
        if (wAlts.length > 1 && wAlts.contains(eSig) && eSig != wSig) {
          diffs[e] = (sig: eSig, cls: const ['matches-other-webref-decl']);
          continue;
        }
        if (eSig != wSig) {
          diffs[e] = (sig: eSig, cls: classify(wm, pe.member));
        } else if (pe.strict != w.strict) {
          stringKindOnly++;
        }
      }
      if (diffs.isNotEmpty) {
        final groups = <String, List<String>>{};
        for (final MapEntry(:key, :value) in diffs.entries) {
          groups.putIfAbsent(value.sig, () => []).add(key);
        }
        final row = TypeDiffRow.create(
          iface: iface,
          key: key,
          kind: kind,
          webref: wSig,
          engines: {for (final e in liveEng) e: per[e]!.sig},
          classes: {
            for (final MapEntry(:key, :value) in diffs.entries) key: value.cls,
          },
          gating: {
            for (final e in engineCorpora)
              if (per[e]?.why case final why?) e: why,
          },
        );
        typeDiffs.add(row);
        for (final MapEntry(key: agreedSig, value: agreeing)
            in groups.entries) {
          if (agreeing.length >= 2) {
            agreeVsWebref.add(
              AgreeRow.fromTypeDiff(
                row,
                agreeingEngines: agreeing,
                agreedSig: agreedSig,
                cls: diffs[agreeing.first]!.cls,
                unanimous: agreeing.length == 3,
              ),
            );
          }
        }
      }
      final absent = engineCorpora.where((e) => !isLive(per[e])).toList();
      final wd = webrefDefs[iface]!;
      final wdKind = wd.kind;
      final skipMissing =
          wdKind == 'dictionary' ||
          wdKind == 'callback interface' ||
          iface == 'console' ||
          (_wasmInterfaces.contains(iface) &&
              wd.files.any(_wasmFileRe.hasMatch));
      if (absent.length >= 2 && !skipMissing) {
        missingInEngines.add(
          MissingRow.create(
            iface: iface,
            key: key,
            kind: kind,
            absentIn: absent,
            offIn: absent.where((e) => per[e] != null).toList(),
            presentIn: liveEng,
            webref: wSig,
          ),
        );
      }
    } else if (liveEng.length >= 2) {
      extraInEngines.add(
        ExtraRow.create(
          iface: iface,
          key: key,
          kind: kind,
          ifaceInWebref: webrefDefs.containsKey(iface),
          engines: {for (final e in liveEng) e: per[e]!.sig},
          states: {for (final e in liveEng) e: per[e]!.state.name},
        ),
      );
    }
  }

  for (final r in rows) {
    for (final pMember in r.per.values) {
      pMember?.stripTransientMember();
    }
  }

  final overridesJson =
      jsonDecode(File(paths.overridesPath).readAsStringSync())
          as Map<String, Object?>;
  final webrefPkgFile = File(p.join(paths.webrefDir, 'package.json'));
  final webrefVersion = webrefPkgFile.existsSync()
      ? ((jsonDecode(webrefPkgFile.readAsStringSync())
                as Map<String, Object?>)['version']
            as String)
      : 'unknown';
  final revisions = <String, Object?>{
    ...(overridesJson['revisions'] as Map<String, Object?>),
    'webref': {
      'version': webrefVersion,
      'path': 'web_generator/node_modules/@webref/idl',
    },
  };

  final parseStats = <String, DisagreementParseStats>{
    for (final c in allCorpora) c: corpora[c]!.stats.toDisagreementStats(),
  };

  final counts = CountsRecord.create(
    rows: rows.length,
    typeDiffRows: typeDiffs.length,
    agreeVsWebref: agreeVsWebref.length,
    agreeVsWebrefUnanimous: agreeVsWebref.where((x) => x.unanimous).length,
    extraInEngines: extraInEngines.length,
    extraOnWebrefIfaces: extraInEngines.where((x) => x.ifaceInWebref).length,
    missingInEngines: missingInEngines.length,
    stringKindOnlyDiffs: stringKindOnly,
  );

  File(
    p.join(paths.outDir, 'members_all.json'),
  ).writeAsStringSync(jsonEncode(rows));
  final disagreementsDoc = DisagreementsDoc.create(
    generated: DateTime.now().toUtc().toIso8601String(),
    revisions: revisions,
    parseStats: parseStats,
    counts: counts,
    webrefDuplicates: webrefDuplicates,
    agreeVsWebref: agreeVsWebref,
    extraInEngines: extraInEngines,
    missingInEngines: missingInEngines,
    typeDiffs: typeDiffs,
    stringKindOnly: stringKindOnly,
  );
  File(p.join(paths.outDir, 'disagreements.json')).writeAsStringSync(
    const JsonEncoder.withIndent(' ').convert(disagreementsDoc),
  );

  print(const JsonEncoder.withIndent(' ').convert(counts));
  final tally = <String, int>{};
  for (final a in agreeVsWebref) {
    for (final c in a.cls) {
      tally[c] = (tally[c] ?? 0) + 1;
    }
  }
  print('agreeVsWebref classes $tally');
}

// ---------------------------------------------------------------- Report

const List<String> _prioOrder = [
  'int-vs-float',
  'nullability',
  'optionality',
  'arity',
  'required',
  'return',
  'signedness',
  'numeric-width',
  'enum-values',
  'kind',
  'type',
  'overloads',
  'variadic',
  'readonly',
  'named-type',
  'enum-vs-DOMString',
  'sequence-vs-FrozenArray',
  'string-kind',
  'matches-other-webref-decl',
  'value',
  'other',
];

int _prio(List<String> cls) {
  var best = 99;
  for (final c in cls) {
    final idx = _prioOrder.indexOf(c);
    final rank = idx >= 0 ? idx + 1 : 99;
    if (rank < best) best = rank;
  }
  return best;
}

String _esc(Object? s) => (s?.toString() ?? '')
    .replaceAll(r'\', r'\\')
    .replaceAll('|', r'\|')
    .replaceAll('<', '&lt;');

String _trunc(String? s, [int n = 140]) =>
    (s != null && s.length > n) ? '${s.substring(0, n)}…' : (s ?? '');

void generateReport(EngineCensusPaths paths) {
  final j = DisagreementsDoc(
    jsonDecode(
          File(p.join(paths.outDir, 'disagreements.json')).readAsStringSync(),
        )
        as Map<String, Object?>,
  );
  final corpora = _loadCorpora(paths);

  final buf = StringBuffer();
  buf.writeln('''
# Engine IDL vs webref: type/shape disagreements

Generated ${j.generated}. CLI: `dart bin/engine_census.dart` (`dart bin/engine_census.dart lookup MouseEvent.clientX`).

## Sources

| corpus | ref | sha | files | parse failures (defs) | note |
|---|---|---|---|---|---|''');

  final revisions = j.revisions;
  final parseStats = j.parseStats;
  for (final c in allCorpora) {
    final r = revisions[c] ?? const RevisionRecord({});
    final s = parseStats[c]!;
    final errs = s.errors;
    final defs = s.defs;
    final pct = (100 * errs / defs).toStringAsFixed(2);
    buf.writeln(
      '| $c | ${r.ref} | ${r.shaShort} | ${s.files} | $errs/$defs ($pct%) | ${_esc(r.displayNote)} |',
    );
  }

  final parseFailuresSummary = engineCorpora
      .map((c) {
        final list = parseStats[c]!.errorList;
        return '$c: ${list.isEmpty ? 'none' : list.join('; ')}';
      })
      .join(' — ');

  final gatingSummary = engineCorpora
      .map((c) {
        final t = <String, int>{'on': 0, 'off': 0, 'unknown': 0};
        for (final d in corpora[c]!.defs.values) {
          final dState = d.gating.state;
          for (final m in d.members.values) {
            final st = dState.combine(m.gating.state).name;
            t[st] = (t[st] ?? 0) + 1;
          }
        }
        return '$c on=${t['on']} off=${t['off']} unknown=${t['unknown']}';
      })
      .join('; ');

  buf.writeln('''

Parse failures: $parseFailuresSummary

Gating (members, after interface-level gating): $gatingSummary. "off" members are excluded from comparisons (declared but disabled by default).

## Method

- **Parsing.** Every corpus is parsed with webidl2. Partials and `includes` mixins are merged, and member lookup walks the inheritance chain. WebKit `[InterfaceName=]` renames are applied.
- **Comparison.** Types are compared after resolving typedefs and normalizing. The string types DOMString, USVString, ByteString and UTF8String count as one type. `unrestricted` is dropped. Buffer and typed-array unions collapse into BufferSource. `void` is treated as `undefined`.
- **Overloads.** Overload sets are compared as their expanded effective signatures: trailing optional arguments are dropped and top-level unions are distributed. So `f(optional (A or B))` matches `f()`, `f(A)` and `f(B)`.
- **Gating.** Each engine is gated by its build defaults:
  - Blink uses `[RuntimeEnabled]` with runtime_enabled_features.json5 Linux status. A feature counts as on if its `base_feature_status` is enabled, if it is set by a content/child/runtime_features.cc base::Feature that is ENABLED_BY_DEFAULT, or if it is implied by another feature. Embedder-settable `public:true` features count as unknown.
  - Gecko uses `[Pref]`, read from StaticPrefList.yaml for a Linux release build (`#if` evaluated, @IS_NIGHTLY_BUILD@=false). `[Func]` is unknown and `[ChromeOnly]` is off.
  - WebKit uses `[EnabledBySetting]`, read from the UnifiedWebPreferences.yaml WebKit default. It is evaluated as Safari would: PLATFORM(COCOA) true, ENABLE(X) from PlatformEnable*.h, ENABLE(EXPERIMENTAL_FEATURES) false. `[Conditional]` macros missing from PlatformEnable*.h are unknown.

## Known limitations

- **WebKit source tracks the shipping Safari branch, whereas Playwright WebKit builds track WebKit trunk.** Features gated `(preview|testable),false` (such as CloseWatcher, CSSFunctionRule, HTMLDialogElement.closedBy, ImageDecoder, IDBRecord) show as off in this report to reflect shipping Safari.
- **Gecko `[Func]` gates are unknown, and pref values set by Nimbus or remote settings are not modelled.** Example: `dom.webserial.enabled` defaults to `@IS_NOT_MOBILE@` (`true`) in StaticPrefList.yaml, yet stock Firefox exposes no Serial.
- **Gecko CSS IDL generated at build time is not in `dom/webidl`,** for example CSS2Properties and per-property CSSStyleProperties attributes. So "missing in Gecko" overcounts there.
- **Blink gating is evaluated for Linux.** Features that are stable only on Mac, Android or ChromeOS show as off.
- **Members from maplike, setlike, iterable and stringifier declarations are synthesized** (e.g. FontFaceSet.forEach, Location.toString) and excluded from type comparison.
- **The `console` and WebAssembly namespaces, which V8 and JSC implement without engine IDL, are excluded from the missing lists,** as are callback-interface members.
- **Some runtime presence is outside static IDL.** Gecko generates some CSS descriptor IDL at build time (CSSPositionTryDescriptors, CSSPageDescriptors), and Chrome hides `ontouch*` handlers on desktops without a touchscreen.

## Counts
''');

  for (final MapEntry(:key, :value) in j.counts.json.entries) {
    buf.writeln('- $key: $value');
  }

  String rowLine(AgreeRow a) {
    final agreeing = a.agreeingEngines;
    final engines = a.engines;
    final others = engineCorpora
        .where((e) => !agreeing.contains(e))
        .map(
          (e) =>
              '$e: ${engines[e] != null ? _esc(_trunc(engines[e], 80)) : '—'}',
        )
        .join('<br>');
    final cls = a.cls.join(', ');
    return '| `${a.iface}.${a.key}` | $cls | ${_esc(_trunc(a.webref))} | ${_esc(_trunc(a.agreedSig))} | ${agreeing.join('+')} | $others |';
  }

  const agreeTableHeader = '''
| member | class | webref | engines say | agreeing | other engine |
|---|---|---|---|---|---|''';

  final agreeAll = j.agreeVsWebref;
  int cmpAgree(AgreeRow a, AgreeRow b) {
    final c = _prio(a.cls) - _prio(b.cls);
    if (c != 0) return c;
    return a.iface.compareTo(b.iface);
  }

  final una = agreeAll.where((a) => a.unanimous).toList()..sort(cmpAgree);
  buf.writeln('''

## All 3 engines agree, webref differs (${una.length})

These are the strongest signals: either the spec or webref has drifted from reality, or the spec intentionally differs and no engine has followed yet.

$agreeTableHeader''');
  for (final a in una) {
    buf.writeln(rowLine(a));
  }

  final two = agreeAll.where((a) => !a.unanimous).toList()..sort(cmpAgree);
  buf.writeln('''

## Exactly 2 engines agree with each other against webref (${two.length})

$agreeTableHeader''');
  for (final a in two) {
    buf.writeln(rowLine(a));
  }

  final extraInEngines = j.extraInEngines;
  final extra = extraInEngines.where((x) => x.ifaceInWebref).toList()
    ..sort((a, b) {
      final ea = a.engines.length;
      final eb = b.engines.length;
      if (eb != ea) return eb - ea;
      return a.iface.compareTo(b.iface);
    });
  buf.writeln('''

## Members that at least 2 engines declare as enabled but webref lacks, on interfaces webref has (${extra.length})

| member | engines | signature (first engine) |
|---|---|---|''');
  for (final x in extra) {
    final engs = x.engines;
    buf.writeln(
      '| `${x.iface}.${x.key}` | ${engs.keys.join('+')} | ${_esc(_trunc(engs.values.first, 100))} |',
    );
  }

  final extraIf = <String>{
    for (final x in extraInEngines.where((y) => !y.ifaceInWebref)) x.iface,
  }.toList()..sort();
  buf.writeln('''

### Interfaces/dictionaries/enums declared by at least 2 engines but missing from webref (${extraIf.length})

${extraIf.map((k) => '`$k`').join(', ')}''');

  final miss = j.missingInEngines;
  final allAbsent = miss.where((m) => m.absentIn.length == 3).toList();
  final byIf = <String, List<String>>{};
  for (final m in allAbsent) {
    byIf.putIfAbsent(m.iface, () => []).add(m.key);
  }
  final ifaceAbsentAll = byIf.keys.where((i) {
    return engineCorpora.every((e) {
      final d = corpora[e]!.defs[i];
      return d == null || !d.gating.state.isLive;
    });
  }).toList()..sort();
  final partial =
      byIf.entries.where((e) => !ifaceAbsentAll.contains(e.key)).toList()
        ..sort((a, b) => b.value.length - a.value.length);

  buf.writeln('''

## webref members not enabled in any engine (${allAbsent.length} members)

- ${ifaceAbsentAll.length} webref definitions are absent or off in all three engines. These are candidates for package:web to drop or mark experimental:

  ${ifaceAbsentAll.map((k) => '`$k`').join(', ')}

- ${partial.length} interfaces exist in at least one engine but have members that no engine enables:

| interface | members absent/off in all 3 |
|---|---|''');
  for (final MapEntry(:key, :value) in partial) {
    buf.writeln('| `$key` | ${_esc(_trunc(value.join(', '), 300))} |');
  }
  buf.writeln();

  final outPath = p.join(paths.outDir, 'SUMMARY.md');
  final content = buf.toString();
  File(outPath).writeAsStringSync(content);
  final lineCount = '\n'.allMatches(content).length;
  print('wrote $outPath $lineCount lines');
}

// ---------------------------------------------------------------- Lookup

void lookupMembers(EngineCensusPaths paths, List<String> queries) {
  final corpora = _loadCorpora(paths);

  String showMember(MemberRecord m) {
    switch (m.kind) {
      case 'attribute':
        final ro = m.readonly ? 'readonly ' : '';
        final raw = m.raw;
        final type = m.type;
        return '${ro}attribute $raw${raw != type ? ' [=$type]' : ''}';
      case 'field':
        final req = m.required ? 'required ' : '';
        final raw = m.raw;
        final def = m.defaultValue;
        return '$req$raw${def != null ? ' = $def' : ''}';
      default:
        final overloads = m.overloads;
        if (overloads != null) {
          return overloads
              .map((o) {
                final args = o.args
                    .map(
                      (a) =>
                          '${a.opt ? 'optional ' : ''}${a.raw}${a.varg ? '...' : ''} ${a.name}',
                    )
                    .join(', ');
                final gState = o.gating.state;
                return '${o.retRaw ?? ''} ($args)${gState != GateState.on ? ' {${gState.name}}' : ''}';
              })
              .join('  ||  ');
        }
        return jsonEncode(m);
    }
  }

  for (final q in queries) {
    if (q.split('.') case [final iface, final rawMember, ...]) {
      final key = rawMember.replaceFirst(_trailingParensRe, '');
      print('== $q');
      for (final c in allCorpora) {
        final corpusDoc = corpora[c]!;
        final r = corpusDoc.lookupMember(
          iface,
          key,
          allowOperationFallback: true,
        );
        if (r == null) {
          print(
            '  ${c.padRight(7)} ABSENT${corpusDoc.defs.containsKey(iface) ? '' : ' (no interface)'}',
          );
          continue;
        }
        final state = r.gate.state.name;
        final why = r.gate.why;
        final onIface = r.definingIface != iface
            ? '  (on ${r.definingIface})'
            : '';
        final whyStr = why.isNotEmpty ? ': ${why.join('; ')}' : '';
        print(
          '  ${c.padRight(7)} ${showMember(r.member)}$onIface  [$state$whyStr]  ${r.member.file ?? ''}',
        );
      }
    } else {
      print('Invalid query "$q" (expected Interface.member)');
    }
  }
}
