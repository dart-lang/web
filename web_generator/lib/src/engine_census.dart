// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

const List<String> allCorpora = ['webref', 'blink', 'gecko', 'webkit'];
const List<String> engineCorpora = ['blink', 'gecko', 'webkit'];

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

// ---------------------------------------------------------------- Fetch

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
      final rev = revisions[engine] as Map<String, Object?>;
      final ref = refOverrides[engine] ?? (rev['ref'] as String);
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
  var e = expr
      .replaceAll(RegExp(r'//.*$'), ' ')
      .replaceAll(RegExp(r'/\*.*?\*/'), ' ');
  e = e.replaceAllMapped(
    RegExp(r'defined\s*\(\s*(\w+)\s*\)'),
    (m) => defined.contains(m[1]) ? ' 1 ' : ' 0 ',
  );
  e = e.replaceAllMapped(
    RegExp(r'defined\s+(\w+)'),
    (m) => defined.contains(m[1]) ? ' 1 ' : ' 0 ',
  );
  e = e.replaceAllMapped(
    RegExp(r'\b[A-Za-z_]\w*\b'),
    (m) => defined.contains(m[0]) ? ' 1 ' : ' 0 ',
  );
  return evalCExpr(e);
}

class _IfFrame {
  bool active;
  bool taken;
  final bool parentActive;
  _IfFrame({
    required this.active,
    required this.taken,
    this.parentActive = true,
  });
}

String preprocessIdl(String text, Set<String> defined) {
  final lines = text.split('\n');
  final stack = <_IfFrame>[];
  final outL = <String>[];
  bool isActive() => stack.every((s) => s.active);
  final directiveRe = RegExp(
    r'^\s*#\s*(ifdef|ifndef|if|elif|else|endif)\b(.*)$',
  );

  for (final line in lines) {
    final m = directiveRe.firstMatch(line);
    if (m == null) {
      outL.add(isActive() ? line : '');
      continue;
    }
    final d = m[1]!;
    final rest = m[2]!;
    if (d == 'ifdef' || d == 'ifndef' || d == 'if') {
      final bool v;
      if (d == 'ifdef') {
        v = defined.contains(rest.trim());
      } else if (d == 'ifndef') {
        v = !defined.contains(rest.trim());
      } else {
        v = _evalDefinedCond(rest, defined);
      }
      stack.add(_IfFrame(active: v, taken: v));
    } else if (d == 'elif') {
      final s = stack.last;
      if (s.taken) {
        s.active = false;
      } else {
        s.active = _evalDefinedCond(rest, defined);
        s.taken = s.active;
      }
    } else if (d == 'else') {
      final s = stack.last;
      s.active = !s.taken;
      s.taken = true;
    } else {
      stack.removeLast();
    }
    outL.add('');
  }
  return outL.join('\n');
}

// ---------------------------------------------------------------- Gating Loaders

Object? _yamlToDart(Object? node) {
  if (node is YamlMap) {
    return <String, Object?>{
      for (final e in node.entries) e.key.toString(): _yamlToDart(e.value),
    };
  }
  if (node is YamlList) {
    return <Object?>[for (final item in node) _yamlToDart(item)];
  }
  return node;
}

String dedupeYamlListKeys(String txt) {
  final lines = txt.split('\n');
  final seenKeys = <String>{};
  final keyRe = RegExp(r'^(\s*-\s+|\s+)([A-Za-z_]\w*)\s*:');
  for (var i = 0; i < lines.length; i++) {
    final line = lines[i];
    if (line.startsWith('- ')) seenKeys.clear();
    final m = keyRe.firstMatch(line);
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

  String statusOf(Object? s) {
    if (s == null) return '';
    if (s is String) return s;
    if (s is Map) {
      return (s['Linux'] ?? s['default'] ?? '').toString();
    }
    return '';
  }

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
  raw = raw.replaceAll(RegExp(r'^\s*//.*$', multiLine: true), '');
  raw = raw.replaceAllMapped(
    RegExp(r'^(\s*)([A-Za-z_]\w*)\s*:', multiLine: true),
    (m) => '${m[1]}"${m[2]}":',
  );
  raw = raw.replaceAllMapped(RegExp(r',\s*([}\]])'), (m) => m[1]!);
  final data = jsonDecode(raw) as Map<String, Object?>;
  final feats = <String, Map<String, Object?>>{};
  for (final d
      in (data['data'] as List<Object?>).cast<Map<String, Object?>>()) {
    feats[d['name'] as String] = d;
  }

  final blinkRoot = p.join(cacheDir, 'blink');
  final baseDefault = <String, bool>{};
  final baseFeatRe = RegExp(
    r'BASE_FEATURE\(\s*(k\w+)[^;]*?FEATURE_(ENABLED|DISABLED)_BY_DEFAULT',
  );
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
    for (final m in baseFeatRe.allMatches(f.readAsStringSync())) {
      baseDefault[m[1]!] = m[2] == 'ENABLED';
    }
  }

  final mapped = <String, ({String feature, String mode, bool? on})>{};
  final rfFile = File(p.join(blinkRoot, 'content/child/runtime_features.cc'));
  final rfRe = RegExp(
    r'\{\s*wf::Enable(\w+)\s*,\s*(?:raw_ref\()?\s*(?:[\w:]*::)?(k\w+)\)?\s*(?:,\s*(k\w+))?\s*\}',
  );
  for (final m in rfRe.allMatches(rfFile.readAsStringSync())) {
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
  txt = txt.replaceAllMapped(RegExp(r'@IS_(NOT_)?(\w+?)@'), (m) {
    final not = m[1] != null;
    final sym = m[2]!;
    var v = _geckoDefined.contains(sym);
    if (sym == 'NIGHTLY_BUILD' || sym == 'EARLY_BETA_OR_EARLIER') v = false;
    if (sym == 'ANDROID') v = false;
    return (not ? !v : v).toString();
  });
  // StaticPrefList.yaml contains occasional duplicate keys within a single
  // item (e.g. duplicate `type: String` lines), which PyYAML ignores but
  // package:yaml rejects. Keep the last occurrence of each key per item.
  txt = dedupeYamlListKeys(txt);
  final parsed = _yamlToDart(loadYaml(txt)) as List<Object?>?;
  for (final item in parsed ?? const <Object?>[]) {
    final map = item as Map<String, Object?>;
    prefs[map['name'] as String] = map['value'];
  }
  final prefCallRe = RegExp(
    r'pref\(\s*"([^"]+)"\s*,\s*([^)]+?)\s*(,\s*locked\s*)?\)',
  );
  for (final rel in const [
    'gecko/modules/libpref/init/all.js',
    'gecko/browser/app/profile/firefox.js',
  ]) {
    final f = File(p.join(cacheDir, rel));
    if (!f.existsSync()) continue;
    final t = preprocessIdl(f.readAsStringSync(), _geckoDefined);
    for (final m in prefCallRe.allMatches(t)) {
      final v = m[2]!.trim();
      prefs[m[1]!] = v == 'true'
          ? true
          : v == 'false'
          ? false
          : v;
    }
  }
  return prefs;
}

class _WebKitPrefs {
  final Map<String, Object?> prefs;
  final Set<String> enables;
  final Map<String, int> vals;

  _WebKitPrefs(this.prefs, this.enables, this.vals);

  bool? evalWkCond(String k) {
    const fixed = <String, int>{
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
    var unknown = false;
    final e = k.replaceAllMapped(
      RegExp(r'\b(PLATFORM|USE|HAVE|ENABLE|OS|CPU)\s*\(\s*(\w+)\s*\)'),
      (m) {
        final n = '${m[1]}_${m[2]}';
        if (fixed.containsKey(n)) return ' ${fixed[n]} ';
        if (vals.containsKey(n)) return ' ${(vals[n] ?? 0) != 0 ? 1 : 0} ';
        if (m[1] == 'ENABLE' || m[1] == 'HAVE') return ' 0 ';
        unknown = true;
        return ' 0 ';
      },
    );
    if (RegExp(r'[A-Za-z_]').hasMatch(e.replaceAll(RegExp(r'\s'), ''))) {
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
    for (final entry in dv.entries) {
      final k = entry.key;
      final v = entry.value;
      if (k == 'default') continue;
      final c = evalWkCond(k);
      if (c == true) {
        final boolVal = (v == true || v == 'true')
            ? true
            : (v == false || v == 'false')
            ? false
            : null;
        return (value: boolVal, raw: '$k:$v');
      }
      if (c == null) sawUnknown = true;
    }
    final v = dv['default'];
    if (v == true || v == 'true') return (value: true, raw: 'true');
    if ((v == false || v == 'false') && sawUnknown) {
      return (value: null, raw: 'false+unevaluable-condition');
    }
    if (v == false || v == 'false') return (value: false, raw: 'false');
    return (value: null, raw: v.toString());
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
        .replaceAll(RegExp(r'//.*$'), ' ')
        .replaceAll(RegExp(r'/\*.*?\*/'), ' ');
    e = e.replaceAllMapped(
      RegExp(r'defined\s*\(\s*(\w+)\s*\)|defined\s+(\w+)'),
      (m) => vals.containsKey(m[1] ?? m[2]) ? ' 1 ' : ' 0 ',
    );
    e = e.replaceAllMapped(
      RegExp(r'\b(PLATFORM|USE|HAVE|ENABLE|OS|CPU|COMPILER)\s*\(\s*(\w+)\s*\)'),
      (m) => ' ${vals['${m[1]}_${m[2]}'] ?? 0} ',
    );
    e = e.replaceAllMapped(
      RegExp(r'\b[A-Za-z_]\w*\b'),
      (m) => ' ${vals[m[0]] ?? 0} ',
    );
    return evalCExpr(e);
  }

  final directiveRe = RegExp(
    r'^\s*#\s*(ifdef|ifndef|if|elif|else|endif|define|undef)\b\s*(.*)$',
  );
  final defNameRe = RegExp(r'^(\w+)\s*(.*)$');

  for (final f in const [
    'PlatformHave.h',
    'PlatformEnableCocoa.h',
    'PlatformEnable.h',
  ]) {
    final hdrPath = p.join(cacheDir, 'webkit', 'Source', 'WTF', 'wtf', f);
    final t = File(hdrPath).readAsStringSync().replaceAll('\\\n', ' ');
    final stack = <_IfFrame>[];
    bool isActive() => stack.every((x) => x.active);

    for (final line in t.split('\n')) {
      final m = directiveRe.firstMatch(line);
      if (m == null) continue;
      final d = m[1]!;
      final rest = m[2]!;
      if (d == 'if' || d == 'ifdef' || d == 'ifndef') {
        final parentActive = isActive();
        final v = d == 'if'
            ? ev(rest)
            : d == 'ifdef'
            ? vals.containsKey(rest.trim())
            : !vals.containsKey(rest.trim());
        stack.add(
          _IfFrame(
            active: parentActive && v,
            taken: v,
            parentActive: parentActive,
          ),
        );
      } else if (d == 'elif') {
        final x = stack.last;
        if (x.taken) {
          x.active = false;
        } else {
          final v = ev(rest);
          x.active = x.parentActive && v;
          x.taken = v;
        }
      } else if (d == 'else') {
        final x = stack.last;
        x.active = x.parentActive && !x.taken;
        x.taken = true;
      } else if (d == 'endif') {
        stack.removeLast();
      } else if (isActive()) {
        final mm = defNameRe.firstMatch(rest);
        if (mm == null) continue;
        final name = mm[1]!;
        if (d == 'undef') {
          vals.remove(name);
        } else {
          final v = mm[2]!.trim();
          vals[name] = v.isEmpty
              ? 1
              : RegExp(r'^\d+$').hasMatch(v)
              ? int.parse(v)
              : (ev(v) ? 1 : 0);
        }
      }
    }
  }

  final enables = <String>{
    for (final e in vals.entries)
      if (e.key.startsWith('ENABLE_') && e.value != 0) e.key.substring(7),
  };
  return _WebKitPrefs(prefs, enables, vals);
}

// ---------------------------------------------------------------- Parse Corpus

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

String _commonPre(String t) {
  t = t.replaceAll(RegExp(r'\btoString\s*\('), 'toStringXX(');
  t = t.replaceAll(RegExp(r'^\s*legacycaller\b[^;]*;', multiLine: true), '');
  t = t.replaceAll(RegExp(r'\bobject object\)'), 'object obj)');
  return t;
}

typedef _GateResult = ({String state, List<String> why});
typedef _ExtAttr = ({String name, String? value});

_GateResult _combineGate(_GateResult a, _GateResult b) {
  const order = {'on': 0, 'unknown': 1, 'off': 2};
  final state = order[a.state]! >= order[b.state]! ? a.state : b.state;
  return (state: state, why: [...a.why, ...b.why]);
}

List<_ExtAttr> _eaList(List<Object?>? eas) {
  if (eas == null) return const [];
  return eas.cast<Map<String, Object?>>().map((ea) {
    final name = ea['name'] as String;
    final rhs = ea['rhs'] as Map<String, Object?>?;
    String? value;
    if (rhs != null) {
      final rhsVal = rhs['value'];
      if (rhsVal is List) {
        value = rhsVal
            .cast<Map<String, Object?>>()
            .map((v) => v['value'].toString())
            .join(',');
      } else if (rhsVal != null) {
        value = rhsVal.toString().replaceAll(RegExp(r'^"|"$'), '');
      }
    }
    return (name: name, value: value);
  }).toList();
}

Future<void> parseCorpora(
  EngineCensusPaths paths, {
  String targetCorpus = 'all',
  String? customOutPath,
}) async {
  Directory(paths.outDir).createSync(recursive: true);
  if (targetCorpus == 'all') {
    for (final c in allCorpora) {
      await _parseSingleCorpus(paths, c, p.join(paths.outDir, '$c.json'));
    }
  } else {
    final outPath = customOutPath ?? p.join(paths.outDir, '$targetCorpus.json');
    await _parseSingleCorpus(paths, targetCorpus, outPath);
  }
}

Future<void> _parseSingleCorpus(
  EngineCensusPaths paths,
  String corpus,
  String outPath,
) async {
  late final String rootDir;
  late final List<String> files;
  String Function(String) pre = (t) => t;
  _GateResult Function(List<_ExtAttr>) gate = (_) =>
      (state: 'on', why: const []);
  final notes = <String, Object?>{};

  if (corpus == 'webref') {
    rootDir = paths.webrefDir;
    files =
        Directory(rootDir)
            .listSync()
            .whereType<File>()
            .map((f) => f.path)
            .where((f) => f.endsWith('.idl'))
            .toList()
          ..sort();
  } else if (corpus == 'blink') {
    rootDir = p.join(
      paths.cacheDir,
      'blink',
      'third_party',
      'blink',
      'renderer',
    );
    final testPathRe = RegExp(r'/(testing|tests?|bindings/tests)/');
    files = _walkFiles(
      rootDir,
      (f) =>
          f.endsWith('.idl') &&
          !testPathRe.hasMatch(f.substring(rootDir.length)),
    );
    final bf = _loadBlinkFeatures(paths.cacheDir);
    gate = (eas) {
      final why = <String>[];
      var state = 'on';
      for (final ea in eas) {
        if (ea.name == 'RuntimeEnabled' || ea.name == 'ContextEnabled') {
          final n = ea.value ?? '';
          final r = ea.name == 'ContextEnabled' ? null : bf.isOn(n);
          final d = bf.feats[n] ?? const <String, Object?>{};
          final mp = bf.mapped[n];
          final st = bf.statusOf(d['status']);
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
          if (r == false) {
            state = 'off';
          } else if (r == null && state == 'on') {
            state = 'unknown';
          }
        } else if (ea.name == 'IsolatedContext') {
          why.add('IsolatedContext');
          state = 'off';
        } else if (ea.name == 'CrossOriginIsolated' ||
            (ea.name == 'SecureContext' && ea.value != null)) {
          why.add('${ea.name}${ea.value != null ? '=${ea.value}' : ''}');
        }
      }
      return (state: state, why: why);
    };
  } else if (corpus == 'gecko') {
    rootDir = p.join(paths.cacheDir, 'gecko', 'dom', 'webidl');
    final testFileRe = RegExp(r'/Test[A-Z][^/]*$');
    files = _walkFiles(
      rootDir,
      (f) => f.endsWith('.webidl') && !testFileRe.hasMatch(f),
    );
    pre = (t) => preprocessIdl(
      t,
      _geckoDefined,
    ).replaceAll(RegExp(r'\bUTF8String\b'), 'USVString');
    notes['quirks'] =
        'UTF8String->USVString; legacycaller dropped; forward decls skipped; #if evaluated for Linux release';
    final prefs = _loadGeckoPrefs(paths.cacheDir);
    gate = (eas) {
      final why = <String>[];
      var state = 'on';
      for (final ea in eas) {
        if (ea.name == 'Pref') {
          final n = ea.value ?? '';
          final hasPref = prefs.containsKey(n);
          final v = prefs[n];
          why.add('Pref=$n(${hasPref ? v : '?'})');
          if (v == false) {
            state = 'off';
          } else if (v != true && state == 'on') {
            state = 'unknown';
          }
        } else if (ea.name == 'ChromeOnly') {
          why.add('ChromeOnly');
          state = 'off';
        } else if (ea.name == 'Func') {
          why.add('Func=${ea.value}');
          if (state == 'on') state = 'unknown';
        } else if (ea.name == 'Trial') {
          why.add('Trial=${ea.value}');
          if (state == 'on') state = 'unknown';
        } else if (ea.name == 'Exposed' &&
            RegExp(
              r'^(System|Chrome|.*Debugger|Sandbox)',
            ).hasMatch('${ea.value}') &&
            !RegExp(r'Window|Worker').hasMatch('${ea.value}')) {
          why.add('Exposed=${ea.value}');
          state = 'off';
        }
      }
      return (state: state, why: why);
    };
  } else if (corpus == 'webkit') {
    rootDir = p.join(paths.cacheDir, 'webkit', 'Source', 'WebCore');
    final testPathRe = RegExp(r'/(testing|bindings/scripts/test)/');
    files = _walkFiles(
      rootDir,
      (f) =>
          f.endsWith('.idl') &&
          !testPathRe.hasMatch(f.substring(rootDir.length)),
    );
    final wk = _loadWebKitPrefs(paths.cacheDir);
    notes['quirks'] =
        'A&B ext-attr values quoted; trailing commas removed; #if ENABLE() evaluated against PlatformEnable(.h|Cocoa.h); (X or any)->any';
    final wkDefined = <String>{
      for (final e in wk.enables) 'ENABLE_$e',
      'PLATFORM_COCOA',
      'PLATFORM_MAC',
    };
    pre = (t) {
      t = t.replaceAllMapped(
        RegExp(r'^(\s*#\s*(?:if|elif)\b.*)$', multiLine: true),
        (m) => m[1]!.replaceAllMapped(
          RegExp(r'\b(ENABLE|PLATFORM|USE|HAVE)\((\w+)\)'),
          (mm) => 'defined(${mm[1]}_${mm[2]})',
        ),
      );
      t = preprocessIdl(t, wkDefined);
      t = t.replaceAllMapped(RegExp(r',(\s*\])'), (m) => m[1]!);
      t = t.replaceAllMapped(
        RegExp(r'(ImplementationDefaultValue)=\s*(\[\]|[^,\]]+)'),
        (m) => '${m[1]}="${m[2]!.trim().replaceAll('"', "'")}"',
      );
      t = t.replaceAll(RegExp(r'\(([^()]*\bor any)\)'), 'any');
      t = t.replaceAllMapped(
        RegExp(r'(CallbackThisObject)=\s*any\b'),
        (m) => '${m[1]}="any"',
      );
      t = t.replaceAllMapped(
        RegExp(r'=\s*([A-Za-z_][\w:]*(?:\s*[&|]\s*[A-Za-z_][\w:]*)+)'),
        (m) => '="${m[1]!.replaceAll(RegExp(r'\s+'), '')}"',
      );
      return t;
    };
    gate = (eas) {
      final why = <String>[];
      var state = 'on';
      void bump(String s) {
        if (s == 'off') {
          state = 'off';
        } else if (s == 'unknown' && state == 'on') {
          state = 'unknown';
        }
      }

      for (final ea in eas) {
        if (ea.name == 'EnabledBySetting') {
          for (final n in (ea.value ?? '').split('&')) {
            final pref = wk.prefs[n] as Map<String, Object?>?;
            final r = wk.evalDefault(pref);
            why.add(
              'EnabledBySetting=$n(${pref != null ? pref['status'] : '?'},${r.raw})',
            );
            bump(
              r.value == true
                  ? 'on'
                  : (r.value == false &&
                        !(pref != null && pref['status'] == 'embedder'))
                  ? 'off'
                  : 'unknown',
            );
          }
        } else if (ea.name == 'Conditional') {
          final val = ea.value ?? '';
          final ok = val
              .split('&')
              .every((c) => c.split('|').any(wk.enables.contains));
          why.add('Conditional=$val${ok ? '' : '(not-in-PlatformEnable*.h)'}');
          if (!ok) bump('unknown');
        } else if (const {
          'EnabledByDeprecatedGlobalSetting',
          'EnabledByQuirk',
          'EnabledForWorld',
          'EnabledBySettingOrQuirk',
        }.contains(ea.name)) {
          why.add('${ea.name}=${ea.value}');
          bump('unknown');
        } else if (ea.name == 'LegacyFactoryFunctionEnabledBySetting' ||
            ea.name == 'DisabledByQuirk' ||
            ea.name == 'EnabledForContext') {
          why.add('${ea.name}=${ea.value}');
        }
      }
      return (state: state, why: why);
    };
  } else {
    throw ArgumentError('Unknown corpus: $corpus');
  }

  final filesPayload = <String, String>{};
  for (final f in files) {
    final rel = p.relative(f, from: rootDir);
    filesPayload[rel] = _commonPre(pre(File(f).readAsStringSync()));
  }

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
  final parsedNode = jsonDecode(await stdoutFuture) as Map<String, Object?>;
  final ast = (parsedNode['ast'] as List<Object?>).cast<Map<String, Object?>>();
  final stats = parsedNode['stats'] as Map<String, Object?>;

  // Normalize typedefs and aliases.
  final typedefs = <String, Object?>{};
  for (final d in ast) {
    if (d['type'] == 'typedef') {
      typedefs[d['name'] as String] = d['idlType'];
    }
  }
  var webrefTypedefs = <String, Object?>{};
  final webrefJsonFile = File(p.join(p.dirname(outPath), 'webref.json'));
  if (corpus != 'webref' && webrefJsonFile.existsSync()) {
    final wj =
        jsonDecode(webrefJsonFile.readAsStringSync()) as Map<String, Object?>;
    webrefTypedefs =
        (wj['typedefsRaw'] as Map<String, Object?>?) ?? <String, Object?>{};
  }

  final alias = <String, String>{};
  for (final d in ast) {
    final eas = (d['extAttrs'] as List<Object?>?)?.cast<Map<String, Object?>>();
    if (eas == null) continue;
    for (final x in eas) {
      if (x['name'] == 'InterfaceName') {
        final rhs = x['rhs'] as Map<String, Object?>?;
        if (rhs != null && rhs['value'] != null) {
          alias[d['name'] as String] = rhs['value'].toString();
        }
      }
    }
  }
  String nameOf(String n) => alias[n] ?? n;
  notes['aliases'] = alias;

  String tstr(Object? tObj, bool resolve, [int depth = 0]) {
    if (tObj == null) return 'undefined';
    final Map<String, Object?> t;
    if (tObj is String) {
      t = {'idlType': tObj, 'nullable': false, 'union': false, 'generic': ''};
    } else {
      t = tObj as Map<String, Object?>;
    }
    String s;
    final isUnion = t['union'] == true;
    final generic = (t['generic'] as String?) ?? '';
    if (isUnion) {
      final sub =
          (t['idlType'] as List<Object?>)
              .map((x) => tstr(x, resolve, depth))
              .expand(
                (x) => x.startsWith('(') && !x.endsWith('?')
                    ? x.substring(1, x.length - 1).split(' or ')
                    : [x],
              )
              .toList()
            ..sort();
      s = '(${sub.join(' or ')})';
    } else if (generic.isNotEmpty) {
      final sub = (t['idlType'] as List<Object?>)
          .map((x) => tstr(x, resolve, depth))
          .join(', ');
      s = '$generic<$sub>';
    } else {
      final rawName = t['idlType'] as String;
      s = alias[rawName] ?? rawName;
      if (resolve && depth < 10) {
        final td = typedefs[s] ?? webrefTypedefs[s];
        if (td != null) {
          final r = tstr(td, resolve, depth + 1);
          if (t['nullable'] == true && !r.endsWith('?')) return '$r?';
          return r;
        }
      }
    }
    return t['nullable'] == true ? '$s?' : s;
  }

  Map<String, Object?> sigOf(Map<String, Object?> m) {
    final idlType = m['idlType'];
    final args =
        (m['arguments'] as List<Object?>?)?.cast<Map<String, Object?>>() ??
        const [];
    return {
      'ret': idlType != null ? tstr(idlType, true) : null,
      'retRaw': idlType != null ? tstr(idlType, false) : null,
      'args': [
        for (final a in args)
          {
            'name': a['name'],
            't': tstr(a['idlType'], true),
            'raw': tstr(a['idlType'], false),
            'opt': a['optional'] == true,
            'varg': a['variadic'] == true,
          },
      ],
    };
  }

  final defs = <String, Map<String, Object?>>{};
  final mixins = <String, Map<String, Object?>>{};
  final includes = <List<String>>[];

  Map<String, Object?> ensure(String name, String kind) => defs.putIfAbsent(
    name,
    () => {
      'kind': kind,
      'files': <String>[],
      'members': <String, Map<String, Object?>>{},
      'gating': {'state': 'on', 'why': <String>[]},
      'inherits': null,
    },
  );

  Map<String, Object?> gateToJson(_GateResult g) => {
    'state': g.state,
    'why': g.why,
  };

  _GateResult gateFromJson(Map<String, Object?> g) => (
    state: g['state'] as String,
    why: (g['why'] as List<Object?>).cast<String>(),
  );

  void addMembers(
    Map<String, Object?> target,
    Map<String, Object?> d,
    _GateResult defGate,
  ) {
    final file = (d['__file'] ?? target['__file']) as String?;
    final targetMembers =
        target['members'] as Map<String, Map<String, Object?>>;
    final members =
        (d['members'] as List<Object?>?)?.cast<Map<String, Object?>>() ??
        const [];

    for (final m in members) {
      final g = _combineGate(
        defGate,
        gate(_eaList(m['extAttrs'] as List<Object?>?)),
      );
      final gMap = gateToJson(g);
      final mType = m['type'] as String?;
      late final String key;
      late final Map<String, Object?> rec;

      switch (mType) {
        case 'attribute':
          if (m['special'] == 'stringifier' &&
              !targetMembers.containsKey('toString()')) {
            targetMembers['toString()'] = {
              'kind': 'operation',
              'special': 'stringifier',
              'overloads': <Map<String, Object?>>[
                {
                  'ret': 'DOMString',
                  'retRaw': 'DOMString',
                  'args': <Object?>[],
                  'gating': gMap,
                },
              ],
              'gating': gMap,
              'file': file,
            };
          }
          key = m['name'] as String;
          rec = {
            'kind': 'attribute',
            'type': tstr(m['idlType'], true),
            'raw': tstr(m['idlType'], false),
            'readonly': m['readonly'] == true,
            'special': (m['special'] as String?) ?? '',
          };
        case 'operation':
          final rawName = (m['name'] as String?) ?? '';
          final nm = rawName == 'toStringXX' ? 'toString' : rawName;
          final special = (m['special'] as String?) ?? '';
          if (special == 'stringifier' && nm.isEmpty) {
            if (!targetMembers.containsKey('toString()')) {
              targetMembers['toString()'] = {
                'kind': 'operation',
                'special': 'stringifier',
                'overloads': <Map<String, Object?>>[
                  {
                    'ret': 'DOMString',
                    'retRaw': 'DOMString',
                    'args': <Object?>[],
                    'gating': gMap,
                  },
                ],
                'gating': gMap,
                'file': file,
              };
            }
            continue;
          }
          key = nm.isNotEmpty ? '$nm()' : '[$special]';
          final prev = targetMembers[key];
          final sig = sigOf(m);
          if (prev != null && prev['kind'] == 'operation') {
            (prev['overloads'] as List<Map<String, Object?>>).add({
              ...sig,
              'gating': gMap,
            });
            if (g.state == 'on') {
              final prevGate = prev['gating'] as Map<String, Object?>;
              prev['gating'] = {'state': 'on', 'why': prevGate['why']};
            }
            continue;
          }
          rec = {
            'kind': 'operation',
            'special': special,
            'overloads': <Map<String, Object?>>[
              {...sig, 'gating': gMap},
            ],
          };
        case 'constructor':
          key = 'constructor()';
          final prev = targetMembers[key];
          final sig = sigOf(m);
          if (prev != null) {
            (prev['overloads'] as List<Map<String, Object?>>).add({
              ...sig,
              'gating': gMap,
            });
            continue;
          }
          rec = {
            'kind': 'constructor',
            'overloads': <Map<String, Object?>>[
              {...sig, 'gating': gMap},
            ],
          };
        case 'const':
          key = m['name'] as String;
          final valMap = m['value'] as Map<String, Object?>?;
          rec = {
            'kind': 'const',
            'type': tstr(m['idlType'], true),
            'value': valMap != null
                ? (valMap['value'] ?? valMap['type'])
                : null,
          };
        case 'field':
          key = m['name'] as String;
          final defMap = m['default'] as Map<String, Object?>?;
          rec = {
            'kind': 'field',
            'type': tstr(m['idlType'], true),
            'raw': tstr(m['idlType'], false),
            'required': m['required'] == true,
            'default': defMap != null
                ? jsonEncode(defMap['value'] ?? defMap['type'])
                : null,
          };
        case 'iterable':
        case 'maplike':
        case 'setlike':
        case 'async_iterable':
          key = '[$mType]';
          final idlTypes = (m['idlType'] as List<Object?>)
              .map((x) => tstr(x, true))
              .toList();
          final isReadonly = m['readonly'] == true;
          rec = {'kind': mType, 'types': idlTypes, 'readonly': isReadonly};
          final synth = switch (mType) {
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
          final mut = !isReadonly
              ? (mType == 'setlike'
                    ? const ['add', 'clear', 'delete']
                    : mType == 'maplike'
                    ? const ['clear', 'delete', 'set']
                    : const <String>[])
              : const <String>[];
          for (final n in [...synth, ...mut]) {
            targetMembers.putIfAbsent(
              '$n()',
              () => {
                'kind': 'operation',
                'special': 'synth',
                'synthesized': mType,
                'overloads': <Map<String, Object?>>[
                  {
                    'ret': 'synth',
                    'retRaw': 'synth',
                    'args': <Object?>[],
                    'gating': gMap,
                  },
                ],
                'gating': gMap,
                'file': file,
              },
            );
          }
          if ((mType == 'setlike' || mType == 'maplike') &&
              !targetMembers.containsKey('size')) {
            targetMembers['size'] = {
              'kind': 'attribute',
              'type': 'unsigned long',
              'raw': 'unsigned long',
              'readonly': true,
              'special': '',
              'synthesized': mType,
              'gating': gMap,
              'file': file,
            };
          }
        default:
          continue;
      }

      rec['gating'] = gMap;
      rec['file'] = file;
      final old = targetMembers[key];
      if (old != null &&
          old['kind'] == rec['kind'] &&
          old['file'] != rec['file']) {
        final prevAlts =
            (old['alts'] as List<Object?>?)?.cast<Map<String, Object?>>() ??
            const [];
        rec['alts'] = <Map<String, Object?>>[
          ...prevAlts,
          {
            'file': old['file'],
            'type': old['type'],
            'readonly': old['readonly'],
            'required': old['required'],
            'value': old['value'],
          },
        ];
      }
      targetMembers[key] = rec;
    }
  }

  for (final d in ast) {
    final dType = d['type'] as String?;
    if (dType == 'typedef' || dType == 'eof') continue;
    final rawName = d['name'] as String?;
    final name = rawName != null ? nameOf(rawName) : null;
    if (dType == 'includes') {
      includes.add([
        nameOf(d['target'] as String),
        nameOf(d['includes'] as String),
      ]);
      continue;
    }
    if (dType == 'enum') {
      final e = ensure(name!, 'enum');
      e['values'] = (d['values'] as List<Object?>)
          .cast<Map<String, Object?>>()
          .map((v) => v['value'] as String)
          .toList();
      (e['files'] as List<String>).add(d['__file'] as String);
      e['gating'] = gateToJson(gate(_eaList(d['extAttrs'] as List<Object?>?)));
      continue;
    }
    final eas = _eaList(d['extAttrs'] as List<Object?>?);
    final g = gate(eas);
    final isPartial = d['partial'] == true;
    if (dType == 'interface mixin') {
      final mx = mixins.putIfAbsent(
        name!,
        () => {
          'members': <String, Map<String, Object?>>{},
          'files': <String>[],
          'gating': {'state': 'on', 'why': <String>[]},
        },
      );
      (mx['files'] as List<String>).add(d['__file'] as String);
      if (!isPartial) mx['gating'] = gateToJson(g);
      addMembers(mx, d, isPartial ? g : (state: 'on', why: const <String>[]));
      continue;
    }
    final def = ensure(name!, dType!);
    (def['files'] as List<String>).add(d['__file'] as String);
    if (!isPartial) {
      def['kind'] = dType;
      def['gating'] = gateToJson(g);
      final inh = d['inheritance'] as String?;
      def['inherits'] = inh != null ? nameOf(inh) : null;
      for (final x in eas) {
        if (x.name == 'Exposed') {
          def['exposed'] = x.value;
          break;
        }
      }
      addMembers(def, d, (state: 'on', why: const <String>[]));
    } else {
      addMembers(def, d, g);
    }
  }

  for (final pair in includes) {
    final t = pair[0];
    final mname = pair[1];
    final mx = mixins[mname];
    if (mx == null) continue;
    final def = ensure(t, 'interface');
    final defMembers = def['members'] as Map<String, Map<String, Object?>>;
    final mxMembers = mx['members'] as Map<String, Map<String, Object?>>;
    final mxGate = gateFromJson(mx['gating'] as Map<String, Object?>);

    for (final entry in mxMembers.entries) {
      final c = jsonDecode(jsonEncode(entry.value)) as Map<String, Object?>;
      final cGate = gateFromJson(c['gating'] as Map<String, Object?>);
      c['gating'] = gateToJson(_combineGate(mxGate, cGate));
      final overloads = c['overloads'] as List<Object?>?;
      if (overloads != null) {
        for (final o in overloads.cast<Map<String, Object?>>()) {
          final oGate = gateFromJson(o['gating'] as Map<String, Object?>);
          o['gating'] = gateToJson(_combineGate(mxGate, oGate));
        }
      }
      c['viaMixin'] = mname;
      defMembers[entry.key] = c;
    }
  }

  File(outPath).writeAsStringSync(
    jsonEncode({
      'corpus': corpus,
      'root': rootDir,
      'stats': stats,
      'defs': defs,
      'typedefsRaw': typedefs,
      'notes': notes,
    }),
  );
  final summaryStats = {
    ...stats,
    'errors': (stats['errors'] as List<Object?>).length,
  };
  print('$corpus ${jsonEncode(summaryStats)} defs: ${defs.length}');
}

// ---------------------------------------------------------------- Compare

final RegExp _strTypesRe = RegExp(
  r'\b(USVString|ByteString|CSSOMString|UTF8String)\b',
);
final RegExp _bufTypeRe = RegExp(
  r'^(ArrayBuffer|SharedArrayBuffer|DataView|BufferSource|AllowSharedBufferSource|ArrayBufferView|(Big)?(Uint|Int|Float)(8|16|32|64)(Clamped)?Array|Uint8ClampedArray)$',
);

String _normBuf(String t) {
  return t
      .replaceAllMapped(RegExp(r'\(([^()]*)\)'), (m) {
        final inner = m[1]!;
        final parts = inner.split(' or ');
        if (!parts.any(
          (part) => _bufTypeRe.hasMatch(part.replaceFirst(RegExp(r'\?$'), '')),
        )) {
          return m[0]!;
        }
        final rest = parts.where(
          (part) => !_bufTypeRe.hasMatch(part.replaceFirst(RegExp(r'\?$'), '')),
        );
        final u = <String>{'BufferSource', ...rest}.toList()..sort();
        return u.length == 1 ? 'BufferSource' : '(${u.join(' or ')})';
      })
      .replaceAll(
        RegExp(
          r'\b(ArrayBufferView|AllowSharedBufferSource|ArrayBuffer)\b(?!\w)',
        ),
        'BufferSource',
      );
}

String? _loose(String? t) {
  if (t == null) return null;
  return _normBuf(
    t
        .replaceAll(_strTypesRe, 'DOMString')
        .replaceAll(RegExp(r'\bvoid\b'), 'undefined')
        .replaceAll(RegExp(r'\bunrestricted '), ''),
  );
}

List<String> _splitUnion(String t) {
  final m = RegExp(r'^\((.*)\)(\??)$').firstMatch(t);
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
  List<Map<String, Object?>> overloads,
  String? Function(String?) norm,
) {
  final outS = <String>{};
  for (final o in overloads) {
    final args = (o['args'] as List<Object?>).cast<Map<String, Object?>>();
    var minN = args.length;
    while (minN > 0 &&
        (args[minN - 1]['opt'] == true || args[minN - 1]['varg'] == true)) {
      minN--;
    }
    for (var n = minN; n <= args.length; n++) {
      var combos = <List<String>>[const []];
      for (final a in args.take(n)) {
        final aType = norm(a['t'] as String?) ?? '';
        final vargSuffix = a['varg'] == true ? '...' : '';
        final ts = _splitUnion(aType).map((x) => '$x$vargSuffix').toList();
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
      final ret = norm(o['ret'] as String?) ?? '';
      for (final c in combos) {
        outS.add('$ret(${c.join(', ')})');
      }
    }
  }
  final sorted = outS.toList()..sort();
  return sorted.join(' | ');
}

String _sig(Map<String, Object?> m, {bool strict = false}) {
  final norm = strict ? (String? x) => x : _loose;
  final kind = m['kind'] as String;
  switch (kind) {
    case 'attribute':
      final ro = m['readonly'] == true ? 'readonly ' : '';
      final sp = ((m['special'] as String?) ?? '').isNotEmpty
          ? '${m['special']} '
          : '';
      return '$ro$sp${norm(m['type'] as String?)}';
    case 'operation':
    case 'constructor':
      final overloads = (m['overloads'] as List<Object?>)
          .cast<Map<String, Object?>>()
          .where((o) => (o['gating'] as Map<String, Object?>)['state'] != 'off')
          .toList();
      if (!strict) return _expandOps(overloads, norm);
      final sigs =
          overloads
              .map((o) {
                final args = (o['args'] as List<Object?>)
                    .cast<Map<String, Object?>>()
                    .map(
                      (a) =>
                          '${a['opt'] == true ? 'optional ' : ''}${norm(a['t'] as String?)}${a['varg'] == true ? '...' : ''}',
                    )
                    .join(', ');
                return '${norm(o['ret'] as String?) ?? ''}($args)';
              })
              .toSet()
              .toList()
            ..sort();
      return sigs.join(' | ');
    case 'const':
      return '${norm(m['type'] as String?)}=${m['value']}';
    case 'field':
      return '${m['required'] == true ? 'required ' : ''}${norm(m['type'] as String?)}';
    case 'enum':
      final vals = (m['values'] as List<Object?>).cast<String>().toList()
        ..sort();
      return vals.join(',');
    default:
      final types = ((m['types'] as List<Object?>?) ?? const [])
          .map((x) => norm(x as String?))
          .join(',');
      return '$kind<$types>';
  }
}

void compareCorpora(EngineCensusPaths paths) {
  final corpora = <String, Map<String, Object?>>{};
  for (final c in allCorpora) {
    corpora[c] =
        jsonDecode(File(p.join(paths.outDir, '$c.json')).readAsStringSync())
            as Map<String, Object?>;
  }

  ({Map<String, Object?> m, String state, List<String> why, String? from})?
  lookup(String corpus, String iface, String key, [int depth = 0]) {
    final defs = corpora[corpus]!['defs'] as Map<String, Object?>;
    final d = defs[iface] as Map<String, Object?>?;
    if (d == null) return null;
    final members = d['members'] as Map<String, Object?>;
    final m = members[key] as Map<String, Object?>?;
    if (m != null) {
      final dGate = d['gating'] as Map<String, Object?>;
      final mGate = m['gating'] as Map<String, Object?>;
      final dState = dGate['state'] as String;
      final mState = mGate['state'] as String;
      final state = (dState == 'off' || mState == 'off')
          ? 'off'
          : (dState == 'unknown' || mState == 'unknown')
          ? 'unknown'
          : 'on';
      return (
        m: m,
        state: state,
        why: [
          ...(dGate['why'] as List<Object?>).cast<String>(),
          ...(mGate['why'] as List<Object?>).cast<String>(),
        ],
        from: depth > 0 ? iface : null,
      );
    }
    final inherits = d['inherits'] as String?;
    if (inherits != null && depth < 20) {
      return lookup(corpus, inherits, key, depth + 1);
    }
    return null;
  }

  bool isEnumName(String n) => allCorpora.any((c) {
    final defs = corpora[c]!['defs'] as Map<String, Object?>;
    final d = defs[n] as Map<String, Object?>?;
    return d != null && d['kind'] == 'enum';
  });

  final numRe = RegExp(
    r'^(unrestricted )?(double|float)$|^(unsigned )?(long long|long|short)$|^(byte|octet)$',
  );

  List<String> classify(Map<String, Object?> w, Map<String, Object?> e) {
    if (w['kind'] != e['kind']) return ['kind'];
    final cls = <String>{};
    void tdiff(String? aRaw, String? bRaw) {
      var a = aRaw ?? 'none';
      var b = bRaw ?? 'none';
      if (a == b) return;
      a = _loose(a)!;
      b = _loose(b)!;
      if (a == b) {
        cls.add('string-kind');
        return;
      }
      final ua = a.replaceFirst(RegExp(r'\?$'), '');
      final ub = b.replaceFirst(RegExp(r'\?$'), '');
      if (ua == ub) {
        cls.add('nullability');
        return;
      }
      if (numRe.hasMatch(ua) && numRe.hasMatch(ub)) {
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
      if (ua.replaceAll(RegExp(r'FrozenArray|sequence'), 'S') ==
          ub.replaceAll(RegExp(r'FrozenArray|sequence'), 'S')) {
        cls.add('sequence-vs-FrozenArray');
        return;
      }
      if ((isEnumName(ua) && ub == 'DOMString') ||
          (isEnumName(ub) && ua == 'DOMString')) {
        cls.add('enum-vs-DOMString');
        return;
      }
      if (RegExp(r'^\w+$').hasMatch(ua) && RegExp(r'^\w+$').hasMatch(ub)) {
        cls.add('named-type');
        return;
      }
      cls.add('type');
    }

    final kind = w['kind'] as String;
    if (kind == 'attribute') {
      tdiff(w['type'] as String?, e['type'] as String?);
      if (w['readonly'] != e['readonly']) cls.add('readonly');
    } else if (kind == 'field') {
      tdiff(w['type'] as String?, e['type'] as String?);
      if (w['required'] != e['required']) cls.add('required');
    } else if (kind == 'const') {
      tdiff(w['type'] as String?, e['type'] as String?);
      if ('${w['value']}' != '${e['value']}') cls.add('value');
    } else if (kind == 'enum') {
      cls.add('enum-values');
    } else if (kind == 'operation' || kind == 'constructor') {
      final wo = (w['overloads'] as List<Object?>)
          .cast<Map<String, Object?>>()
          .where((o) => (o['gating'] as Map<String, Object?>)['state'] != 'off')
          .toList();
      final eo = (e['overloads'] as List<Object?>)
          .cast<Map<String, Object?>>()
          .where((o) => (o['gating'] as Map<String, Object?>)['state'] != 'off')
          .toList();
      if (wo.length != 1 || eo.length != 1) {
        cls.add('overloads');
      } else {
        final a = wo.first;
        final b = eo.first;
        if (_loose(a['ret'] as String?) != _loose(b['ret'] as String?)) {
          tdiff(a['ret'] as String?, b['ret'] as String?);
          cls.add('return');
        }
        final aArgs = (a['args'] as List<Object?>).cast<Map<String, Object?>>();
        final bArgs = (b['args'] as List<Object?>).cast<Map<String, Object?>>();
        if (aArgs.length != bArgs.length) cls.add('arity');
        final minLen = aArgs.length < bArgs.length
            ? aArgs.length
            : bArgs.length;
        for (var i = 0; i < minLen; i++) {
          tdiff(aArgs[i]['t'] as String?, bArgs[i]['t'] as String?);
          if (aArgs[i]['opt'] != bArgs[i]['opt']) cls.add('optionality');
          if (aArgs[i]['varg'] != bArgs[i]['varg']) cls.add('variadic');
        }
      }
    } else {
      cls.add('other');
    }
    return cls.toList();
  }

  final rows = <Map<String, Object?>>[];
  final allIfaces = <String>{
    for (final c in corpora.values) ...(c['defs'] as Map<String, Object?>).keys,
  }.toList()..sort();

  for (final iface in allIfaces) {
    final keys = <String>{};
    for (final c in corpora.values) {
      final d =
          (c['defs'] as Map<String, Object?>)[iface] as Map<String, Object?>?;
      if (d == null) continue;
      if (d['kind'] == 'enum') {
        keys.add('(enum)');
      } else {
        keys.addAll((d['members'] as Map<String, Object?>).keys);
      }
    }
    final sortedKeys = keys.toList()..sort();
    for (final key in sortedKeys) {
      final per = <String, Map<String, Object?>?>{};
      String? rowKind;
      for (final c in allCorpora) {
        ({
          Map<String, Object?> m,
          String state,
          List<String> why,
          String? from,
        })?
        r;
        if (key == '(enum)') {
          final d =
              (corpora[c]!['defs'] as Map<String, Object?>)[iface]
                  as Map<String, Object?>?;
          if (d != null && d['kind'] == 'enum') {
            final dGate = d['gating'] as Map<String, Object?>;
            r = (
              m: {'kind': 'enum', 'values': d['values']},
              state: dGate['state'] as String,
              why: (dGate['why'] as List<Object?>).cast<String>(),
              from: null,
            );
          }
        } else {
          r = lookup(c, iface, key);
        }
        if (r == null) {
          per[c] = null;
          continue;
        }
        rowKind ??= r.m['kind'] as String?;
        per[c] = {
          'state': r.state,
          if (r.why.isNotEmpty) 'why': r.why,
          'sig': _sig(r.m),
          'strict': _sig(r.m, strict: true),
          if (r.from != null) 'inheritedFrom': r.from,
          '_m': r.m,
        };
      }
      rows.add({
        'iface': iface,
        'key': key,
        if (rowKind != null) 'kind': rowKind,
        'per': per,
      });
    }
  }

  bool isLive(Map<String, Object?>? p) => p != null && p['state'] != 'off';
  final webrefDefs = corpora['webref']!['defs'] as Map<String, Object?>;
  final webrefDuplicates = <Map<String, Object?>>[];
  final agreeVsWebref = <Map<String, Object?>>[];
  final extraInEngines = <Map<String, Object?>>[];
  final missingInEngines = <Map<String, Object?>>[];
  final typeDiffs = <Map<String, Object?>>[];
  var stringKindOnly = 0;

  for (final r in rows) {
    final iface = r['iface'] as String;
    final key = r['key'] as String;
    final kind = r['kind'] as String?;
    final per = r['per'] as Map<String, Map<String, Object?>?>;
    final w = per['webref'];
    final liveEng = engineCorpora.where((e) => isLive(per[e])).toList();

    if (w != null) {
      final wm = w['_m'] as Map<String, Object?>;
      final wSig = w['sig'] as String;
      final alts =
          (wm['alts'] as List<Object?>?)?.cast<Map<String, Object?>>() ??
          const [];
      final wAlts = <String>{
        wSig,
        for (final a in alts) _sig({...wm, ...a}),
      };
      if (wAlts.length > 1) {
        webrefDuplicates.add({
          'iface': iface,
          'key': key,
          'sigs': wAlts.toList(),
          'files': [wm['file'], for (final a in alts) a['file']],
          'engines': {for (final e in liveEng) e: per[e]!['sig']},
        });
      }
      bool isSynth(Map<String, Object?> x) {
        final xm = x['_m'] as Map<String, Object?>;
        return xm['synthesized'] != null ||
            xm['special'] == 'synth' ||
            xm['special'] == 'stringifier';
      }

      final diffs = <String, ({String sig, List<String> cls})>{};
      for (final e in liveEng) {
        final pe = per[e]!;
        if (isSynth(w) || isSynth(pe)) continue;
        final eSig = pe['sig'] as String;
        if (wAlts.length > 1 && wAlts.contains(eSig) && eSig != wSig) {
          diffs[e] = (sig: eSig, cls: const ['matches-other-webref-decl']);
          continue;
        }
        if (eSig != wSig) {
          diffs[e] = (
            sig: eSig,
            cls: classify(wm, pe['_m'] as Map<String, Object?>),
          );
        } else if (pe['strict'] != w['strict']) {
          stringKindOnly++;
        }
      }
      if (diffs.isNotEmpty) {
        final groups = <String, List<String>>{};
        for (final entry in diffs.entries) {
          groups.putIfAbsent(entry.value.sig, () => []).add(entry.key);
        }
        final row = <String, Object?>{
          'iface': iface,
          'key': key,
          'kind': kind,
          'webref': wSig,
          'engines': {for (final e in liveEng) e: per[e]!['sig']},
          'classes': {for (final e in diffs.entries) e.key: e.value.cls},
          'gating': {
            for (final e in engineCorpora)
              if (per[e] != null && per[e]!['why'] != null) e: per[e]!['why'],
          },
        };
        typeDiffs.add(row);
        for (final entry in groups.entries) {
          if (entry.value.length >= 2) {
            agreeVsWebref.add({
              ...row,
              'agreeingEngines': entry.value,
              'agreedSig': entry.key,
              'cls': diffs[entry.value.first]!.cls,
              'unanimous': entry.value.length == 3,
            });
          }
        }
      }
      final absent = engineCorpora.where((e) => !isLive(per[e])).toList();
      final wd = webrefDefs[iface] as Map<String, Object?>;
      final wdKind = wd['kind'] as String?;
      final wdFiles = ((wd['files'] as List<Object?>?) ?? const [])
          .cast<String>();
      final skipMissing =
          wdKind == 'dictionary' ||
          wdKind == 'callback interface' ||
          iface == 'console' ||
          (RegExp(
                r'^(WebAssembly|Module|Instance|Memory|Table|Global|Tag|Exception|CompileError|LinkError|RuntimeError)$',
              ).hasMatch(iface) &&
              wdFiles.any(
                (f) => RegExp(
                  r'wasm|webassembly',
                  caseSensitive: false,
                ).hasMatch(f),
              ));
      if (absent.length >= 2 && !skipMissing) {
        missingInEngines.add({
          'iface': iface,
          'key': key,
          'kind': kind,
          'absentIn': absent,
          'offIn': absent.where((e) => per[e] != null).toList(),
          'presentIn': liveEng,
          'webref': wSig,
        });
      }
    } else if (liveEng.length >= 2) {
      extraInEngines.add({
        'iface': iface,
        'key': key,
        'kind': kind,
        'ifaceInWebref': webrefDefs.containsKey(iface),
        'engines': {for (final e in liveEng) e: per[e]!['sig']},
        'states': {for (final e in liveEng) e: per[e]!['state']},
      });
    }
  }

  for (final r in rows) {
    final per = r['per'] as Map<String, Map<String, Object?>?>;
    for (final pMap in per.values) {
      pMap?.remove('_m');
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

  final parseStats = <String, Object?>{};
  for (final c in allCorpora) {
    final st = corpora[c]!['stats'] as Map<String, Object?>;
    final errs = (st['errors'] as List<Object?>).cast<Map<String, Object?>>();
    parseStats[c] = {
      ...st,
      'errors': errs.length,
      'errorList': [
        for (final e in errs)
          '${e['file']}: ${(e['msg'] as String).split('\n').first}',
      ],
    };
  }

  final counts = <String, int>{
    'rows': rows.length,
    'typeDiffRows': typeDiffs.length,
    'agreeVsWebref': agreeVsWebref.length,
    'agreeVsWebrefUnanimous': agreeVsWebref
        .where((x) => x['unanimous'] == true)
        .length,
    'extraInEngines': extraInEngines.length,
    'extraOnWebrefIfaces': extraInEngines
        .where((x) => x['ifaceInWebref'] == true)
        .length,
    'missingInEngines': missingInEngines.length,
    'stringKindOnlyDiffs': stringKindOnly,
  };

  File(
    p.join(paths.outDir, 'members_all.json'),
  ).writeAsStringSync(jsonEncode(rows));
  File(p.join(paths.outDir, 'disagreements.json')).writeAsStringSync(
    const JsonEncoder.withIndent(' ').convert({
      'generated': DateTime.now().toUtc().toIso8601String(),
      'revisions': revisions,
      'parseStats': parseStats,
      'counts': counts,
      'webrefDuplicates': webrefDuplicates,
      'agreeVsWebref': agreeVsWebref,
      'extraInEngines': extraInEngines,
      'missingInEngines': missingInEngines,
      'typeDiffs': typeDiffs,
      'stringKindOnly': stringKindOnly,
    }),
  );

  print(const JsonEncoder.withIndent(' ').convert(counts));
  final tally = <String, int>{};
  for (final a in agreeVsWebref) {
    for (final c in (a['cls'] as List<Object?>).cast<String>()) {
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
  final j =
      jsonDecode(
            File(p.join(paths.outDir, 'disagreements.json')).readAsStringSync(),
          )
          as Map<String, Object?>;
  final corpora = <String, Map<String, Object?>>{};
  for (final c in allCorpora) {
    corpora[c] =
        jsonDecode(File(p.join(paths.outDir, '$c.json')).readAsStringSync())
            as Map<String, Object?>;
  }

  final lines = <String>[];
  void pLine([String s = '']) => lines.add(s);

  pLine('# Engine IDL vs webref: type/shape disagreements');
  pLine();
  pLine(
    'Generated ${j['generated']}. CLI: `dart bin/engine_census.dart` '
    '(`dart bin/engine_census.dart lookup MouseEvent.clientX`).',
  );
  pLine();
  pLine('## Sources');
  pLine();
  pLine('| corpus | ref | sha | files | parse failures (defs) | note |');
  pLine('|---|---|---|---|---|---|');
  final revisions = j['revisions'] as Map<String, Object?>;
  final parseStats = j['parseStats'] as Map<String, Object?>;
  for (final c in allCorpora) {
    final r = (revisions[c] as Map<String, Object?>?) ?? const {};
    final s = parseStats[c] as Map<String, Object?>;
    final ref = (r['ref'] ?? r['version'] ?? '').toString();
    final sha = (r['sha'] ?? '').toString();
    final shaShort = sha.length > 10 ? sha.substring(0, 10) : sha;
    final errs = s['errors'] as int;
    final defs = s['defs'] as int;
    final pct = (100 * errs / defs).toStringAsFixed(2);
    final note =
        (r['note'] ??
                (r['browser'] != null
                    ? '${r['browser']} ${r['version']}'
                    : r['path']) ??
                '')
            .toString();
    pLine(
      '| $c | $ref | $shaShort | ${s['files']} | $errs/$defs ($pct%) | ${_esc(note)} |',
    );
  }
  pLine();
  pLine(
    'Parse failures: ${engineCorpora.map((c) {
      final list = ((parseStats[c] as Map<String, Object?>)['errorList'] as List<Object?>).cast<String>();
      return '$c: ${list.isEmpty ? 'none' : list.join('; ')}';
    }).join(' — ')}',
  );
  pLine();
  pLine(
    'Gating (members, after interface-level gating): ${engineCorpora.map((c) {
      final t = {'on': 0, 'off': 0, 'unknown': 0};
      final defs = corpora[c]!['defs'] as Map<String, Object?>;
      for (final d in defs.values.cast<Map<String, Object?>>()) {
        final dState = (d['gating'] as Map<String, Object?>)['state'] as String;
        final members = (d['members'] as Map<String, Object?>?) ?? const {};
        for (final m in members.values.cast<Map<String, Object?>>()) {
          final mState = (m['gating'] as Map<String, Object?>)['state'] as String;
          final st = dState == 'off'
              ? 'off'
              : (dState == 'unknown' && mState == 'on')
              ? 'unknown'
              : mState;
          t[st] = (t[st] ?? 0) + 1;
        }
      }
      return '$c on=${t['on']} off=${t['off']} unknown=${t['unknown']}';
    }).join('; ')}. "off" members are excluded from comparisons (declared but disabled by default).',
  );
  pLine();
  pLine('## Method');
  pLine();
  pLine(
    '- **Parsing.** Every corpus is parsed with webidl2. Partials and `includes` mixins are merged, and member lookup walks the inheritance chain. WebKit `[InterfaceName=]` renames are applied.',
  );
  pLine(
    '- **Comparison.** Types are compared after resolving typedefs and normalizing. The string types DOMString, USVString, ByteString and UTF8String count as one type. `unrestricted` is dropped. Buffer and typed-array unions collapse into BufferSource. `void` is treated as `undefined`.',
  );
  pLine(
    '- **Overloads.** Overload sets are compared as their expanded effective signatures: trailing optional arguments are dropped and top-level unions are distributed. So `f(optional (A or B))` matches `f()`, `f(A)` and `f(B)`.',
  );
  pLine('- **Gating.** Each engine is gated by its build defaults:');
  pLine(
    '  - Blink uses `[RuntimeEnabled]` with runtime_enabled_features.json5 Linux status. A feature counts as on if its `base_feature_status` is enabled, if it is set by a content/child/runtime_features.cc base::Feature that is ENABLED_BY_DEFAULT, or if it is implied by another feature. Embedder-settable `public:true` features count as unknown.',
  );
  pLine(
    '  - Gecko uses `[Pref]`, read from StaticPrefList.yaml for a Linux release build (`#if` evaluated, @IS_NIGHTLY_BUILD@=false). `[Func]` is unknown and `[ChromeOnly]` is off.',
  );
  pLine(
    '  - WebKit uses `[EnabledBySetting]`, read from the UnifiedWebPreferences.yaml WebKit default. It is evaluated as Safari would: PLATFORM(COCOA) true, ENABLE(X) from PlatformEnable*.h, ENABLE(EXPERIMENTAL_FEATURES) false. `[Conditional]` macros missing from PlatformEnable*.h are unknown.',
  );
  pLine();
  pLine('## Known limitations');
  pLine();
  pLine(
    '- **WebKit source tracks the shipping Safari branch, whereas Playwright WebKit builds track WebKit trunk.** Features gated `(preview|testable),false` (such as CloseWatcher, CSSFunctionRule, HTMLDialogElement.closedBy, ImageDecoder, IDBRecord) show as off in this report to reflect shipping Safari.',
  );
  pLine(
    '- **Gecko `[Func]` gates are unknown, and pref values set by Nimbus or remote settings are not modelled.** Example: `dom.webserial.enabled` defaults to `@IS_NOT_MOBILE@` (`true`) in StaticPrefList.yaml, yet stock Firefox exposes no Serial.',
  );
  pLine(
    '- **Gecko CSS IDL generated at build time is not in `dom/webidl`,** for example CSS2Properties and per-property CSSStyleProperties attributes. So "missing in Gecko" overcounts there.',
  );
  pLine(
    '- **Blink gating is evaluated for Linux.** Features that are stable only on Mac, Android or ChromeOS show as off.',
  );
  pLine(
    '- **Members from maplike, setlike, iterable and stringifier declarations are synthesized** (e.g. FontFaceSet.forEach, Location.toString) and excluded from type comparison.',
  );
  pLine(
    '- **The `console` and WebAssembly namespaces, which V8 and JSC implement without engine IDL, are excluded from the missing lists,** as are callback-interface members.',
  );
  pLine(
    '- **Some runtime presence is outside static IDL.** Gecko generates some CSS descriptor IDL at build time (CSSPositionTryDescriptors, CSSPageDescriptors), and Chrome hides `ontouch*` handlers on desktops without a touchscreen.',
  );
  pLine();
  pLine('## Counts');
  pLine();
  final counts = j['counts'] as Map<String, Object?>;
  for (final e in counts.entries) {
    pLine('- ${e.key}: ${e.value}');
  }
  pLine();

  String rowLine(Map<String, Object?> a) {
    final agreeing = (a['agreeingEngines'] as List<Object?>).cast<String>();
    final engines = a['engines'] as Map<String, Object?>;
    final others = engineCorpora
        .where((e) => !agreeing.contains(e))
        .map(
          (e) =>
              '$e: ${engines[e] != null ? _esc(_trunc(engines[e] as String?, 80)) : '—'}',
        )
        .join('<br>');
    final cls = (a['cls'] as List<Object?>).cast<String>().join(', ');
    return '| `${a['iface']}.${a['key']}` | $cls | ${_esc(_trunc(a['webref'] as String?))} | ${_esc(_trunc(a['agreedSig'] as String?))} | ${agreeing.join('+')} | $others |';
  }

  void hdr() {
    pLine(
      '| member | class | webref | engines say | agreeing | other engine |',
    );
    pLine('|---|---|---|---|---|---|');
  }

  final agreeAll = (j['agreeVsWebref'] as List<Object?>)
      .cast<Map<String, Object?>>();
  int cmpAgree(Map<String, Object?> a, Map<String, Object?> b) {
    final c =
        _prio((a['cls'] as List<Object?>).cast<String>()) -
        _prio((b['cls'] as List<Object?>).cast<String>());
    if (c != 0) return c;
    return (a['iface'] as String).compareTo(b['iface'] as String);
  }

  final una = agreeAll.where((a) => a['unanimous'] == true).toList()
    ..sort(cmpAgree);
  pLine('## All 3 engines agree, webref differs (${una.length})');
  pLine();
  pLine(
    'These are the strongest signals: either the spec or webref has drifted from reality, or the spec intentionally differs and no engine has followed yet.',
  );
  pLine();
  hdr();
  for (final a in una) {
    pLine(rowLine(a));
  }
  pLine();

  final two = agreeAll.where((a) => a['unanimous'] != true).toList()
    ..sort(cmpAgree);
  pLine(
    '## Exactly 2 engines agree with each other against webref (${two.length})',
  );
  pLine();
  hdr();
  for (final a in two) {
    pLine(rowLine(a));
  }
  pLine();

  final extraInEngines = (j['extraInEngines'] as List<Object?>)
      .cast<Map<String, Object?>>();
  final extra = extraInEngines.where((x) => x['ifaceInWebref'] == true).toList()
    ..sort((a, b) {
      final ea = (a['engines'] as Map<String, Object?>).length;
      final eb = (b['engines'] as Map<String, Object?>).length;
      if (eb != ea) return eb - ea;
      return (a['iface'] as String).compareTo(b['iface'] as String);
    });
  pLine(
    '## Members that at least 2 engines declare as enabled but webref lacks, on interfaces webref has (${extra.length})',
  );
  pLine();
  pLine('| member | engines | signature (first engine) |');
  pLine('|---|---|---|');
  for (final x in extra) {
    final engs = x['engines'] as Map<String, Object?>;
    pLine(
      '| `${x['iface']}.${x['key']}` | ${engs.keys.join('+')} | ${_esc(_trunc(engs.values.first as String?, 100))} |',
    );
  }
  pLine();

  final extraIf = <String>{
    for (final x in extraInEngines.where((y) => y['ifaceInWebref'] != true))
      x['iface'] as String,
  }.toList()..sort();
  pLine(
    '### Interfaces/dictionaries/enums declared by at least 2 engines but missing from webref (${extraIf.length})',
  );
  pLine();
  pLine(extraIf.map((k) => '`$k`').join(', '));
  pLine();

  final miss = (j['missingInEngines'] as List<Object?>)
      .cast<Map<String, Object?>>();
  final allAbsent = miss
      .where((m) => (m['absentIn'] as List<Object?>).length == 3)
      .toList();
  final byIf = <String, List<String>>{};
  for (final m in allAbsent) {
    byIf.putIfAbsent(m['iface'] as String, () => []).add(m['key'] as String);
  }
  final ifaceAbsentAll = byIf.keys.where((i) {
    return engineCorpora.every((e) {
      final d =
          (corpora[e]!['defs'] as Map<String, Object?>)[i]
              as Map<String, Object?>?;
      return d == null ||
          (d['gating'] as Map<String, Object?>)['state'] == 'off';
    });
  }).toList()..sort();
  final partial =
      byIf.entries.where((e) => !ifaceAbsentAll.contains(e.key)).toList()
        ..sort((a, b) => b.value.length - a.value.length);

  pLine(
    '## webref members not enabled in any engine (${allAbsent.length} members)',
  );
  pLine();
  pLine(
    '- ${ifaceAbsentAll.length} webref definitions are absent or off in all three engines. These are candidates for package:web to drop or mark experimental:',
  );
  pLine();
  pLine('  ${ifaceAbsentAll.map((k) => '`$k`').join(', ')}');
  pLine();
  pLine(
    '- ${partial.length} interfaces exist in at least one engine but have members that no engine enables:',
  );
  pLine();
  pLine('| interface | members absent/off in all 3 |');
  pLine('|---|---|');
  for (final entry in partial) {
    pLine('| `${entry.key}` | ${_esc(_trunc(entry.value.join(', '), 300))} |');
  }
  pLine();

  final outPath = p.join(paths.outDir, 'SUMMARY.md');
  File(outPath).writeAsStringSync('${lines.join('\n')}\n');
  print('wrote $outPath ${lines.length} lines');
}

// ---------------------------------------------------------------- Lookup

void lookupMembers(EngineCensusPaths paths, List<String> queries) {
  final corpora = <String, Map<String, Object?>>{};
  for (final c in allCorpora) {
    corpora[c] =
        jsonDecode(File(p.join(paths.outDir, '$c.json')).readAsStringSync())
            as Map<String, Object?>;
  }

  ({String iface, Map<String, Object?> d, Map<String, Object?> m})? findMember(
    String c,
    String iface,
    String key, [
    int depth = 0,
  ]) {
    final defs = corpora[c]!['defs'] as Map<String, Object?>;
    final d = defs[iface] as Map<String, Object?>?;
    if (d == null) return null;
    final members = d['members'] as Map<String, Object?>;
    final m = (members[key] ?? members['$key()']) as Map<String, Object?>?;
    if (m != null) return (iface: iface, d: d, m: m);
    final inherits = d['inherits'] as String?;
    return (inherits != null && depth < 20)
        ? findMember(c, inherits, key, depth + 1)
        : null;
  }

  String showMember(Map<String, Object?> m) {
    final kind = m['kind'] as String?;
    if (kind == 'attribute') {
      final ro = m['readonly'] == true ? 'readonly ' : '';
      final raw = m['raw'] as String?;
      final type = m['type'] as String?;
      return '${ro}attribute $raw${raw != type ? ' [=$type]' : ''}';
    }
    if (kind == 'field') {
      final req = m['required'] == true ? 'required ' : '';
      final raw = m['raw'] as String?;
      final def = m['default'];
      return '$req$raw${def != null ? ' = $def' : ''}';
    }
    final overloads = m['overloads'] as List<Object?>?;
    if (overloads != null) {
      return overloads
          .cast<Map<String, Object?>>()
          .map((o) {
            final args = (o['args'] as List<Object?>)
                .cast<Map<String, Object?>>()
                .map(
                  (a) =>
                      '${a['opt'] == true ? 'optional ' : ''}${a['raw']}${a['varg'] == true ? '...' : ''} ${a['name']}',
                )
                .join(', ');
            final gState =
                (o['gating'] as Map<String, Object?>)['state'] as String;
            return '${o['retRaw'] ?? ''} ($args)${gState != 'on' ? ' {$gState}' : ''}';
          })
          .join('  ||  ');
    }
    return jsonEncode(m);
  }

  const rank = {'on': 0, 'unknown': 1, 'off': 2};
  for (final q in queries) {
    final parts = q.split('.');
    if (parts.length < 2) {
      print('Invalid query "$q" (expected Interface.member)');
      continue;
    }
    final iface = parts[0];
    final key = parts[1].replaceFirst(RegExp(r'\(\)$'), '');
    print('== $q');
    for (final c in allCorpora) {
      final r = findMember(c, iface, key);
      final defs = corpora[c]!['defs'] as Map<String, Object?>;
      if (r == null) {
        print(
          '  ${c.padRight(7)} ABSENT${defs.containsKey(iface) ? '' : ' (no interface)'}',
        );
        continue;
      }
      final dGate = r.d['gating'] as Map<String, Object?>;
      final mGate = r.m['gating'] as Map<String, Object?>;
      final dState = dGate['state'] as String;
      final mState = mGate['state'] as String;
      final state = rank[dState]! > rank[mState]! ? dState : mState;
      final why = <String>[
        ...(dGate['why'] as List<Object?>).cast<String>(),
        ...(mGate['why'] as List<Object?>).cast<String>(),
      ];
      final onIface = r.iface != iface ? '  (on ${r.iface})' : '';
      final whyStr = why.isNotEmpty ? ': ${why.join('; ')}' : '';
      print(
        '  ${c.padRight(7)} ${showMember(r.m)}$onIface  [$state$whyStr]  ${r.m['file'] ?? ''}',
      );
    }
  }
}
