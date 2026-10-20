// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse an IDL corpus (webref | blink | gecko | webkit | all) into a normalized
// member map under web_generator/.dart_tool/engine_census/.
// Usage: node tool/engine_census/parse.js [all | webref | blink | gecko | webkit] [outfile.json]
'use strict';
const fs = require('fs');
const os = require('os');
const path = require('path');
const { execFileSync } = require('child_process');
const w = require(
  fs.existsSync(path.resolve(__dirname, '../../node_modules/webidl2'))
    ? path.resolve(__dirname, '../../node_modules/webidl2')
    : path.resolve(__dirname, '../../../js_interop_gen/lib/src/node_modules/webidl2')
);

const CACHE = process.env.ENGINE_IDL_CACHE || path.join(os.homedir(), '.cache', 'engine_idl');
const WEBREF = process.env.WEBREF || path.resolve(__dirname, '../../node_modules/@webref/idl');
const OUT_DIR = process.env.ENGINE_CENSUS_OUT || path.resolve(__dirname, '../../.dart_tool/engine_census');

fs.mkdirSync(OUT_DIR, { recursive: true });

const corpus = process.argv[2] || 'all';
if (corpus === 'all') {
  for (const c of ['webref', 'blink', 'gecko', 'webkit']) {
    execFileSync(process.execPath, [__filename, c, path.join(OUT_DIR, `${c}.json`)], {
      stdio: 'inherit',
    });
  }
  process.exit(0);
}
const out = process.argv[3] || path.join(OUT_DIR, `${corpus}.json`);

function walk(dir, pred, acc = []) {
  for (const e of fs.readdirSync(dir, { withFileTypes: true })) {
    const p = path.join(dir, e.name);
    if (e.isDirectory()) walk(p, pred, acc);
    else if (pred(p)) acc.push(p);
  }
  return acc;
}

// ---------------------------------------------------------------- C-preprocessor-ish
// Assumptions: Linux x86_64 desktop *release* build (Gecko), Safari macOS (WebKit).
const GECKO_DEFINED = new Set([
  'XP_UNIX', 'XP_LINUX', 'MOZ_WIDGET_GTK', 'RELEASE_OR_BETA',
  'MOZ_WEBSPEECH', 'ACCESSIBILITY', 'MOZ_WEBRTC', 'MOZ_AV1', 'MOZ_WEBM', 'MOZ_FMP4',
  'MOZ_DBUS', 'MOZ_X11', 'MOZ_WAYLAND', 'MOZ_GECKO_PROFILER', 'MOZ_PLACES', 'MOZ_SANDBOX',
  'MOZ_WEBMIDI', 'MOZ_UPDATER', 'MOZ_BUILD_APP_IS_BROWSER', 'MOZ_DEDICATED_PROFILES',
  'MOZ_ENABLE_DBUS', 'MOZ_OMX', 'MOZ_FFMPEG', 'MOZ_FFVPX', 'MOZ_WMF', 'MOZ_JXL',
]);
function evalCond(expr, defined) {
  let e = expr.replace(/\/\/.*$/, ' ').replace(/\/\*.*?\*\//g, ' ');
  e = e.replace(/defined\s*\(\s*(\w+)\s*\)/g, (_, s) => (defined.has(s) ? ' 1 ' : ' 0 '));
  e = e.replace(/defined\s+(\w+)/g, (_, s) => (defined.has(s) ? ' 1 ' : ' 0 '));
  e = e.replace(/\b[A-Za-z_]\w*\b/g, (s) => (defined.has(s) ? ' 1 ' : ' 0 '));
  try { return !!Function('return (' + e + ')')(); } catch (_) { return false; }
}
function preprocess(text, defined) {
  const lines = text.split('\n');
  const stack = []; // {active, taken, parentActive}
  const outL = [];
  const active = () => stack.every((s) => s.active);
  for (const line of lines) {
    const m = line.match(/^\s*#\s*(ifdef|ifndef|if|elif|else|endif)\b(.*)$/);
    if (!m) { outL.push(active() ? line : ''); continue; }
    const [, d, rest] = m;
    if (d === 'ifdef' || d === 'ifndef' || d === 'if') {
      let v;
      if (d === 'ifdef') v = defined.has(rest.trim());
      else if (d === 'ifndef') v = !defined.has(rest.trim());
      else v = evalCond(rest, defined);
      stack.push({ active: v, taken: v });
    } else if (d === 'elif') {
      const s = stack[stack.length - 1];
      if (s.taken) s.active = false; else { s.active = evalCond(rest, defined); s.taken = s.active; }
    } else if (d === 'else') {
      const s = stack[stack.length - 1]; s.active = !s.taken; s.taken = true;
    } else stack.pop();
    outL.push('');
  }
  return outL.join('\n');
}

// ---------------------------------------------------------------- gating data
function loadBlinkFeatures() {
  const f = CACHE + '/blink/third_party/blink/renderer/platform/runtime_enabled_features.json5';
  const data = Function('return (' + fs.readFileSync(f, 'utf8') + ')')();
  const feats = {};
  for (const d of data.data) feats[d.name] = d;
  // content/child/runtime_features.cc maps base::Features onto runtime features.
  const B = CACHE + '/blink/';
  const baseDefault = {};
  for (const f of [
    'content/public/common/content_features.cc', 'third_party/blink/common/features.cc',
    'services/network/public/cpp/features.cc', 'media/base/media_switches.cc', 'ui/base/ui_base_features.cc',
    'device/base/features.cc', 'third_party/blink/common/features_generated.cc',
  ]) {
    if (!fs.existsSync(B + f)) continue;
    for (const m of fs.readFileSync(B + f, 'utf8').matchAll(/BASE_FEATURE\(\s*(k\w+)[^;]*?FEATURE_(ENABLED|DISABLED)_BY_DEFAULT/g)) baseDefault[m[1]] = m[2] === 'ENABLED';
  }
  const mapped = {};
  const rf = fs.readFileSync(B + 'content/child/runtime_features.cc', 'utf8');
  for (const m of rf.matchAll(/\{\s*wf::Enable(\w+)\s*,\s*(?:raw_ref\()?\s*(?:[\w:]*::)?(k\w+)\)?\s*(?:,\s*(k\w+))?\s*\}/g)) {
    mapped[m[1]] = { feature: m[2], mode: m[3] || 'kDefault', on: baseDefault[m[2]] };
  }
  const memo = {};
  const statusOf = (s) => {
    if (s == null) return '';
    if (typeof s === 'string') return s;
    return s.Linux ?? s.default ?? '';
  };
  function on(name, seen = new Set()) {
    if (name in memo) return memo[name];
    if (seen.has(name)) return false;
    seen.add(name);
    const d = feats[name];
    let r;
    if (!d) r = null; // unknown feature
    else {
      const st = statusOf(d.status);
      const baseCounts = d.base_feature_status === 'enabled' && d.copied_from_base_feature_if !== 'overridden';
      r = st === 'stable' || baseCounts;
      const mp = mapped[name];
      if (!r && mp && mp.on === true && mp.mode !== 'kSetOnlyIfOverridden') r = true;
      if (!r && d.public === true) r = null; // embedder may enable via WebRuntimeFeatures (e.g. PaymentRequest)
      if (r !== true && d.implied_by && d.implied_by.some((x) => on(x, seen) === true)) r = true;
      if (r === true && d.depends_on && !d.depends_on.every((x) => on(x, seen) === true)) r = d.depends_on.some((x) => on(x, seen) === false) ? false : null;
    }
    memo[name] = r;
    return r;
  }
  return { feats, on, statusOf, mapped };
}

function loadYaml(file, pre) {
  let txt = fs.readFileSync(file, 'utf8');
  if (pre) txt = pre(txt);
  return JSON.parse(execFileSync('python3', ['-c',
    'import sys,yaml,json; print(json.dumps(yaml.safe_load(sys.stdin.read()), default=str))'],
  { input: txt, maxBuffer: 1 << 28 }).toString());
}

function loadGeckoPrefs() {
  const prefs = {};
  const y = loadYaml(CACHE + '/gecko/modules/libpref/init/StaticPrefList.yaml', (t) => {
    t = preprocess(t, GECKO_DEFINED);
    return t.replace(/@IS_(NOT_)?(\w+?)@/g, (_, not, sym) => {
      let v = GECKO_DEFINED.has(sym);
      if (sym === 'NIGHTLY_BUILD' || sym === 'EARLY_BETA_OR_EARLIER') v = false;
      if (sym === 'ANDROID') v = false;
      return String(not ? !v : v);
    });
  });
  for (const p of y || []) prefs[p.name] = p.value;
  for (const f of ['/gecko/modules/libpref/init/all.js', '/gecko/browser/app/profile/firefox.js']) {
    if (!fs.existsSync(CACHE + f)) continue;
    const t = preprocess(fs.readFileSync(CACHE + f, 'utf8'), GECKO_DEFINED);
    for (const m of t.matchAll(/pref\(\s*"([^"]+)"\s*,\s*([^)]+?)\s*(,\s*locked\s*)?\)/g)) {
      const v = m[2].trim();
      prefs[m[1]] = v === 'true' ? true : v === 'false' ? false : v;
    }
  }
  return prefs;
}

function loadWebKitPrefs() {
  const y = loadYaml(CACHE + '/webkit/Source/WTF/Scripts/Preferences/UnifiedWebPreferences.yaml');
  // Stateful mini-preprocessor over PlatformHave.h, PlatformEnableCocoa.h, PlatformEnable.h
  // assuming Safari on macOS 26 (PLATFORM(MAC), COCOA, APPLE_INTERNAL_SDK, arm64).
  const vals = new Map([['PLATFORM_MAC', 1], ['PLATFORM_COCOA', 1], ['OS_DARWIN', 1], ['OS_MACOS', 1],
    ['CPU_ARM64', 1], ['CPU_ADDRESS64', 1], ['USE_APPLE_INTERNAL_SDK', 1], ['USE_CF', 1], ['USE_FOUNDATION', 1],
    ['__MAC_OS_X_VERSION_MIN_REQUIRED', 260000], ['__MAC_OS_X_VERSION_MAX_ALLOWED', 260000], ['ENABLE_WEB_AUDIO', 1]]);
  const ev = (expr) => {
    let e = expr.replace(/\/\/.*$/, ' ').replace(/\/\*.*?\*\//g, ' ');
    e = e.replace(/defined\s*\(\s*(\w+)\s*\)|defined\s+(\w+)/g, (_, a, b) => (vals.has(a || b) ? ' 1 ' : ' 0 '));
    e = e.replace(/\b(PLATFORM|USE|HAVE|ENABLE|OS|CPU|COMPILER)\s*\(\s*(\w+)\s*\)/g, (_, a, b) => ` ${Number(vals.get(a + '_' + b) || 0)} `);
    e = e.replace(/\b[A-Za-z_]\w*\b/g, (x) => ` ${Number(vals.get(x) || 0)} `);
    try { return !!Function('return (' + e + ')')(); } catch (_) { return false; }
  };
  for (const f of ['PlatformHave.h', 'PlatformEnableCocoa.h', 'PlatformEnable.h']) {
    const t = fs.readFileSync(CACHE + '/webkit/Source/WTF/wtf/' + f, 'utf8').replace(/\\\n/g, ' ');
    const stack = [];
    const active = () => stack.every((x) => x.active);
    for (const line of t.split('\n')) {
      const m = line.match(/^\s*#\s*(ifdef|ifndef|if|elif|else|endif|define|undef)\b\s*(.*)$/);
      if (!m) continue;
      const [, d, rest] = m;
      if (d === 'if' || d === 'ifdef' || d === 'ifndef') {
        const parentActive = active();
        const v = d === 'if' ? ev(rest) : d === 'ifdef' ? vals.has(rest.trim()) : !vals.has(rest.trim());
        stack.push({ active: parentActive && v, taken: v, parentActive });
      } else if (d === 'elif') {
        const x = stack[stack.length - 1];
        if (x.taken) x.active = false; else { const v = ev(rest); x.active = x.parentActive && v; x.taken = v; }
      } else if (d === 'else') { const x = stack[stack.length - 1]; x.active = x.parentActive && !x.taken; x.taken = true; }
      else if (d === 'endif') stack.pop();
      else if (active()) {
        const mm = rest.match(/^(\w+)\s*(.*)$/);
        if (!mm) continue;
        if (d === 'undef') vals.delete(mm[1]);
        else { const v = mm[2].trim(); vals.set(mm[1], v === '' ? 1 : /^\d+$/.test(v) ? Number(v) : (ev(v) ? 1 : 0)); }
      }
    }
  }
  WK_VALS = vals;
  const enables = new Set();
  for (const [k, v] of vals) if (k.startsWith('ENABLE_') && v) enables.add(k.slice(7));
  WK_ENABLES = enables;
  return { prefs: y, enables };
}

let WK_ENABLES = new Set();
let WK_VALS = new Map();
function evalWkCond(k) {
  // Evaluate a UnifiedWebPreferences condition key like "PLATFORM(COCOA) || PLATFORM(GTK)" for Safari/macOS.
  const FIXED = { PLATFORM_COCOA: 1, PLATFORM_MAC: 1, PLATFORM_IOS_FAMILY: 0, PLATFORM_IOS: 0, PLATFORM_VISION: 0,
    PLATFORM_GTK: 0, PLATFORM_WPE: 0, USE_GLIB: 0, ENABLE_EXPERIMENTAL_FEATURES: 0, PLATFORM_WATCHOS: 0, PLATFORM_APPLETV: 0,
    USE_APPLE_INTERNAL_SDK: 1, PLATFORM_PLAYSTATION: 0, PLATFORM_WIN: 0 };
  let unknown = false;
  const e = k.replace(/\b(PLATFORM|USE|HAVE|ENABLE|OS|CPU)\s*\(\s*(\w+)\s*\)/g, (_, a, b) => {
    const n = a + '_' + b;
    if (n in FIXED) return ` ${FIXED[n]} `;
    if (WK_VALS.has(n)) return ` ${Number(WK_VALS.get(n)) ? 1 : 0} `;
    if (a === 'ENABLE' || a === 'HAVE') return ' 0 ';
    unknown = true; return ' 0 ';
  });
  if (/[A-Za-z_]/.test(e.replace(/\s/g, ''))) return null;
  try { const v = !!Function('return (' + e + ')')(); return unknown && !v ? null : v; } catch (_) { return null; }
}
function evalWebKitDefault(pref) {
  // Returns {value: true|false|null, raw}
  if (!pref) return { value: null, raw: 'unknown-setting' };
  if (pref.condition && evalWkCond(pref.condition) === false) return { value: false, raw: 'condition:' + pref.condition + '=false' };
  const dv = pref.defaultValue && (pref.defaultValue.WebKit || pref.defaultValue.WebCore);
  if (!dv) return { value: null, raw: 'no-default' };
  let sawUnknown = false;
  for (const [k, v] of Object.entries(dv)) {
    if (k === 'default') continue;
    const c = evalWkCond(k);
    if (c === true) return { value: v === true || v === 'true' ? true : v === false || v === 'false' ? false : null, raw: `${k}:${v}` };
    if (c === null) sawUnknown = true;
  }
  const v = dv.default;
  if (v === true || v === 'true') return { value: true, raw: 'true' };
  if ((v === false || v === 'false') && sawUnknown) return { value: null, raw: 'false+unevaluable-condition' };
  if (v === false || v === 'false') return { value: false, raw: 'false' };
  return { value: null, raw: String(v) };
}

// ---------------------------------------------------------------- per-corpus config
let files, pre = (t) => t, gate = () => ({ state: 'on', why: [] }), rootDir;
const notes = {};
if (corpus === 'webref') {
  rootDir = WEBREF;
  files = fs.readdirSync(WEBREF).filter((f) => f.endsWith('.idl')).map((f) => path.join(WEBREF, f));
} else if (corpus === 'blink') {
  rootDir = CACHE + '/blink/third_party/blink/renderer';
  files = walk(rootDir, (p) => p.endsWith('.idl') &&
    !/\/(testing|tests?|bindings\/tests)\//.test(p.slice(rootDir.length)));
  const bf = loadBlinkFeatures();
  gate = (eas) => {
    const why = []; let state = 'on';
    for (const ea of eas) {
      if (ea.name === 'RuntimeEnabled' || ea.name === 'ContextEnabled') {
        const n = ea.value;
        const r = ea.name === 'ContextEnabled' ? null : bf.on(n);
        const d = bf.feats[n] || {};
        const mp = bf.mapped[n];
        why.push(`${ea.name}=${n}(${bf.statusOf(d.status) || 'none'}${d.base_feature_status ? ',base:' + d.base_feature_status : ''}${d.copied_from_base_feature_if ? ',copied_if:' + d.copied_from_base_feature_if : ''}${d.origin_trial_feature_name ? ',OT' : ''}${d.public ? ',public' : ''}${mp ? ',' + mp.feature + '=' + mp.on : ''})`);
        if (r === false) state = 'off'; else if (r === null && state === 'on') state = 'unknown';
      } else if (ea.name === 'IsolatedContext') { why.push('IsolatedContext'); state = 'off'; }
      else if (ea.name === 'CrossOriginIsolated' || ea.name === 'SecureContext' && ea.value) why.push(ea.name + (ea.value ? '=' + ea.value : ''));
    }
    return { state, why };
  };
} else if (corpus === 'gecko') {
  rootDir = CACHE + '/gecko/dom/webidl';
  files = walk(rootDir, (p) => p.endsWith('.webidl') && !/\/Test[A-Z][^/]*$/.test(p));
  pre = (t) => preprocess(t, GECKO_DEFINED).replace(/\bUTF8String\b/g, 'USVString');
  notes.quirks = 'UTF8String->USVString; legacycaller dropped; forward decls skipped; #if evaluated for Linux release';
  const prefs = loadGeckoPrefs();
  gate = (eas) => {
    const why = []; let state = 'on';
    for (const ea of eas) {
      if (ea.name === 'Pref') {
        const n = ea.value; const v = prefs[n];
        why.push(`Pref=${n}(${v === undefined ? '?' : v})`);
        if (v === false) state = 'off';
        else if (v !== true && state === 'on') state = 'unknown';
      } else if (ea.name === 'ChromeOnly') { why.push('ChromeOnly'); state = 'off'; }
      else if (ea.name === 'Func') { why.push(`Func=${ea.value}`); if (state === 'on') state = 'unknown'; }
      else if (ea.name === 'Trial') { why.push(`Trial=${ea.value}`); if (state === 'on') state = 'unknown'; }
      else if (ea.name === 'Exposed' && /^(System|Chrome|.*Debugger|Sandbox)/.test(String(ea.value)) && !/Window|Worker/.test(String(ea.value))) { why.push('Exposed=' + ea.value); state = 'off'; }
    }
    return { state, why };
  };
} else if (corpus === 'webkit') {
  rootDir = CACHE + '/webkit/Source/WebCore';
  files = walk(rootDir, (p) => p.endsWith('.idl') &&
    !/\/(testing|bindings\/scripts\/test)\//.test(p.slice(rootDir.length)));
  const { prefs, enables } = loadWebKitPrefs();
  notes.quirks = 'A&B ext-attr values quoted; trailing commas removed; #if ENABLE() evaluated against PlatformEnable(.h|Cocoa.h); (X or any)->any';
  pre = (t) => {
    const wkDefined = new Set([...enables].map((e) => 'ENABLE_' + e).concat(['PLATFORM_COCOA', 'PLATFORM_MAC']));
    t = t.replace(/^(\s*#\s*(?:if|elif)\b.*)$/gm, (l) => l.replace(/\b(ENABLE|PLATFORM|USE|HAVE)\((\w+)\)/g, (_, a, b) => `defined(${a}_${b})`));
    t = preprocess(t, wkDefined);
    t = t.replace(/,(\s*\])/g, '$1');
    t = t.replace(/(ImplementationDefaultValue)=\s*(\[\]|[^,\]]+)/g, (_, a, b) => `${a}="${b.trim().replace(/"/g, "'")}"`);
    t = t.replace(/\(([^()]*\bor any)\)/g, 'any');
    t = t.replace(/(CallbackThisObject)=\s*any\b/g, '$1="any"');
    // Quote WebKit's A&B / A|B ext-attr values so webidl2 accepts them.
    t = t.replace(/=\s*([A-Za-z_][\w:]*(?:\s*[&|]\s*[A-Za-z_][\w:]*)+)/g, (_, v) => `="${v.replace(/\s+/g, '')}"`);
    return t;
  };
  gate = (eas) => {
    const why = []; let state = 'on';
    const bump = (s) => { if (s === 'off') state = 'off'; else if (s === 'unknown' && state === 'on') state = 'unknown'; };
    for (const ea of eas) {
      if (ea.name === 'EnabledBySetting') {
        for (const n of ea.value.split('&')) {
          const p = prefs[n]; const r = evalWebKitDefault(p);
          why.push(`EnabledBySetting=${n}(${p ? p.status : '?'},${r.raw})`);
          // status "embedder": the app (Safari) decides; default false is not evidence of off.
          bump(r.value === true ? 'on' : r.value === false && !(p && p.status === 'embedder') ? 'off' : 'unknown');
        }
      } else if (ea.name === 'Conditional') {
        const ok = ea.value.split('&').every((c) => c.split('|').some((x) => enables.has(x)));
        why.push(`Conditional=${ea.value}${ok ? '' : '(not-in-PlatformEnable*.h)'}`);
        if (!ok) bump('unknown');
      } else if (/^(EnabledByDeprecatedGlobalSetting|EnabledByQuirk|EnabledForWorld|EnabledBySettingOrQuirk)$/.test(ea.name)) {
        why.push(`${ea.name}=${ea.value}`); bump('unknown');
      } else if (ea.name === 'LegacyFactoryFunctionEnabledBySetting' || ea.name === 'DisabledByQuirk' || ea.name === 'EnabledForContext') why.push(`${ea.name}=${ea.value}`);
    }
    return { state, why };
  };
} else throw new Error(`Unknown corpus: ${corpus}`);

// ---------------------------------------------------------------- parse
function chunks(text) {
  // Split into top-level definitions by tracking brace depth (comments stripped).
  const t = text.replace(/\/\*[\s\S]*?\*\//g, (m) => m.replace(/[^\n]/g, ' ')).replace(/\/\/.*$/gm, '');
  const res = []; let depth = 0, start = 0, inStr = false;
  for (let i = 0; i < t.length; i++) {
    const c = t[i];
    if (c === '"') inStr = !inStr;
    if (inStr) continue;
    if (c === '{' || c === '(' || c === '[') depth++;
    else if (c === '}' || c === ')' || c === ']') depth--;
    else if (c === ';' && depth === 0) { res.push(t.slice(start, i + 1)); start = i + 1; }
  }
  if (t.slice(start).trim()) res.push(t.slice(start));
  return res;
}

function commonPre(t) {
  t = t.replace(/\btoString\s*\(/g, 'toStringXX(');
  t = t.replace(/^\s*legacycaller\b[^;]*;/gm, '');
  t = t.replace(/\bobject object\)/g, 'object obj)');
  return t;
}
const stats = { files: files.length, filesOk: 0, filesRecovered: 0, defs: 0, defsFailed: 0, errors: [] };
const ast = [];
for (const f of files) {
  const rel = path.relative(rootDir, f);
  const text = commonPre(pre(fs.readFileSync(f, 'utf8')));
  try {
    for (const d of w.parse(text, { sourceName: rel })) { d.__file = rel; ast.push(d); }
    stats.filesOk++;
  } catch (e) {
    stats.filesRecovered++;
    for (const c of chunks(text)) {
      if (!c.trim()) continue;
      try { for (const d of w.parse(c, { sourceName: rel })) { d.__file = rel; ast.push(d); stats.defs++; } }
      catch (e2) {
        if (/^\s*(\[[^\]]*\]\s*)?interface\s+\w+\s*;\s*$/.test(c)) { stats.forwardDecls = (stats.forwardDecls || 0) + 1; continue; }
        stats.defsFailed++;
        stats.errors.push({ file: rel, msg: String(e2.bareMessage || e2.message).slice(0, 200), snippet: c.trim().slice(0, 160) });
      }
    }
  }
}
stats.defs += ast.length - stats.defs; // total parsed defs

// ---------------------------------------------------------------- normalize
const typedefs = {};
for (const d of ast) if (d.type === 'typedef') typedefs[d.name] = d.idlType;
let webrefTypedefs = {};
if (corpus !== 'webref' && fs.existsSync(path.join(path.dirname(out), 'webref.json'))) {
  webrefTypedefs = JSON.parse(fs.readFileSync(path.join(path.dirname(out), 'webref.json'))).typedefsRaw || {};
}

function tstr(t, resolve, depth = 0) {
  if (!t) return 'undefined';
  if (typeof t === 'string') t = { idlType: t, nullable: false, union: false, generic: '' };
  let s;
  if (t.union) s = '(' + t.idlType.map((x) => tstr(x, resolve, depth)).flatMap((x) => x.startsWith('(') && !x.endsWith('?') ? x.slice(1, -1).split(' or ') : [x]).sort().join(' or ') + ')';
  else if (t.generic) s = `${t.generic}<${t.idlType.map((x) => tstr(x, resolve, depth)).join(', ')}>`;
  else {
    s = alias[t.idlType] || t.idlType;
    if (resolve && depth < 10) {
      const td = typedefs[s] || webrefTypedefs[s];
      if (td) {
        const r = tstr(td, resolve, depth + 1);
        if (t.nullable && !r.endsWith('?')) return r + '?';
        return r;
      }
    }
  }
  return t.nullable ? s + '?' : s;
}
const typedefsRaw = {};
for (const [k, v] of Object.entries(typedefs)) typedefsRaw[k] = JSON.parse(JSON.stringify(v));

const eaList = (eas) => (eas || []).map((ea) => ({
  name: ea.name,
  value: ea.rhs ? (Array.isArray(ea.rhs.value) ? ea.rhs.value.map((v) => v.value).join(',')
    : String(ea.rhs.value).replace(/^"|"$/g, '')) : null,
}));

function sigOf(m) {
  return {
    ret: m.idlType ? tstr(m.idlType, true) : null,
    retRaw: m.idlType ? tstr(m.idlType, false) : null,
    args: (m.arguments || []).map((a) => ({ name: a.name, t: tstr(a.idlType, true), raw: tstr(a.idlType, false), opt: a.optional, varg: a.variadic })),
  };
}

const defs = {}; // name -> {kind, exposed, gating, members:{key:{...}}}
const mixins = {};
const includes = [];
function ensure(name, kind) {
  if (!defs[name]) defs[name] = { kind, files: [], members: {}, gating: { state: 'on', why: [] }, inherits: null };
  return defs[name];
}
function combine(a, b) {
  const order = { on: 0, unknown: 1, off: 2 };
  return { state: order[a.state] >= order[b.state] ? a.state : b.state, why: [...a.why, ...b.why] };
}
function addMembers(target, d, defGate) {
  if (!d.__file && target.__file) d.__file = target.__file;
  for (const m of d.members || []) {
    const g = combine(defGate, gate(eaList(m.extAttrs)));
    let key, rec;
    switch (m.type) {
      case 'attribute':
        if (m.special === 'stringifier' && !target.members['toString()']) target.members['toString()'] = { kind: 'operation', special: 'stringifier', overloads: [{ ret: 'DOMString', retRaw: 'DOMString', args: [], gating: g }], gating: g, file: d.__file };
        key = m.name; rec = { kind: 'attribute', type: tstr(m.idlType, true), raw: tstr(m.idlType, false), readonly: !!m.readonly, special: m.special || '' }; break;
      case 'operation': {
        const nm = m.name === 'toStringXX' ? 'toString' : m.name;
        if (m.special === 'stringifier' && !nm) {
          if (!target.members['toString()']) target.members['toString()'] = { kind: 'operation', special: 'stringifier', overloads: [{ ret: 'DOMString', retRaw: 'DOMString', args: [], gating: g }], gating: g, file: d.__file };
          continue;
        }
        key = nm ? nm + '()' : `[${m.special}]`;
        const prev = target.members[key];
        const sig = sigOf(m);
        if (prev && prev.kind === 'operation') { prev.overloads.push({ ...sig, gating: g }); if (g.state === 'on') prev.gating = { state: 'on', why: prev.gating.why }; continue; }
        rec = { kind: 'operation', special: m.special || '', overloads: [{ ...sig, gating: g }] }; break;
      }
      case 'constructor': {
        key = 'constructor()';
        const prev = target.members[key]; const sig = sigOf(m);
        if (prev) { prev.overloads.push({ ...sig, gating: g }); continue; }
        rec = { kind: 'constructor', overloads: [{ ...sig, gating: g }] }; break;
      }
      case 'const': key = m.name; rec = { kind: 'const', type: tstr(m.idlType, true), value: m.value && (m.value.value ?? m.value.type) }; break;
      case 'field': key = m.name; rec = { kind: 'field', type: tstr(m.idlType, true), raw: tstr(m.idlType, false), required: !!m.required, default: m.default ? JSON.stringify(m.default.value ?? m.default.type) : null }; break;
      case 'iterable': case 'maplike': case 'setlike': case 'async_iterable': {
        key = `[${m.type}]`; rec = { kind: m.type, types: m.idlType.map((x) => tstr(x, true)), readonly: !!m.readonly };
        const synth = { iterable: ['entries', 'forEach', 'keys', 'values'], async_iterable: ['entries', 'keys', 'values'],
          setlike: ['entries', 'forEach', 'has', 'keys', 'values'], maplike: ['entries', 'forEach', 'get', 'has', 'keys', 'values'] }[m.type];
        const mut = !m.readonly && (m.type === 'setlike' ? ['add', 'clear', 'delete'] : m.type === 'maplike' ? ['clear', 'delete', 'set'] : []);
        for (const n of [...synth, ...(mut || [])]) {
          if (!target.members[n + '()']) target.members[n + '()'] = { kind: 'operation', special: 'synth', synthesized: m.type, overloads: [{ ret: 'synth', retRaw: 'synth', args: [], gating: g }], gating: g, file: d.__file };
        }
        if ((m.type === 'setlike' || m.type === 'maplike') && !target.members.size) target.members.size = { kind: 'attribute', type: 'unsigned long', raw: 'unsigned long', readonly: true, special: '', synthesized: m.type, gating: g, file: d.__file };
        break;
      }
      default: continue;
    }
    rec.gating = g;
    rec.file = d.__file;
    const old = target.members[key];
    if (old && old.kind === rec.kind && old.file !== rec.file) {
      // Same member declared in two places (e.g. webref uievents vs cssom-view partial). Keep both.
      rec.alts = [...(old.alts || []), { file: old.file, type: old.type, readonly: old.readonly, required: old.required, value: old.value }];
    }
    target.members[key] = rec;
  }
}
// WebKit [InterfaceName=X]: JS-visible name differs from IDL name.
const alias = {};
for (const d of ast) {
  const ea = (d.extAttrs || []).find((x) => x.name === 'InterfaceName');
  if (ea && ea.rhs) alias[d.name] = String(ea.rhs.value);
}
const nameOf = (n) => alias[n] || n;
notes.aliases = alias;
for (const d of ast) {
  if (d.type === 'typedef' || d.type === 'eof') continue;
  if (d.name && alias[d.name]) Object.defineProperty(d, 'name', { value: alias[d.name] });
  if (d.type === 'includes' && (alias[d.target] || alias[d.includes])) { includes.push([nameOf(d.target), nameOf(d.includes)]); continue; }
  if (d.type === 'includes') { includes.push([d.target, d.includes]); continue; }
  if (d.type === 'enum') {
    const e = ensure(d.name, 'enum'); e.values = d.values.map((v) => v.value); e.files.push(d.__file);
    e.gating = gate(eaList(d.extAttrs)); continue;
  }
  const eas = eaList(d.extAttrs);
  const g = gate(eas);
  if (d.type === 'interface mixin') {
    const mx = mixins[d.name] || (mixins[d.name] = { members: {}, files: [], gating: { state: 'on', why: [] } });
    mx.files.push(d.__file);
    if (!d.partial) mx.gating = g;
    addMembers(mx, d, d.partial ? g : { state: 'on', why: [] });
    continue;
  }
  const kind = d.type;
  const def = ensure(d.name, kind);
  def.files.push(d.__file);
  if (!d.partial) {
    def.kind = kind; def.gating = g; def.inherits = d.inheritance ? nameOf(d.inheritance) : null;
    const ex = eas.find((x) => x.name === 'Exposed'); if (ex) def.exposed = ex.value;
    addMembers(def, d, { state: 'on', why: [] });
  } else addMembers(def, d, g);
}
for (const [t, mname] of includes) {
  const mx = mixins[mname]; if (!mx) continue;
  const def = ensure(t, 'interface');
  for (const [k, v] of Object.entries(mx.members)) {
    const c = JSON.parse(JSON.stringify(v));
    c.gating = combine(mx.gating, c.gating);
    if (c.overloads) for (const o of c.overloads) o.gating = combine(mx.gating, o.gating);
    c.viaMixin = mname;
    def.members[k] = c;
  }
}

fs.writeFileSync(out, JSON.stringify({ corpus, root: rootDir, stats, defs, typedefsRaw, notes }, null, 0));
console.log(corpus, JSON.stringify({ ...stats, errors: stats.errors.length }), 'defs:', Object.keys(defs).length);
