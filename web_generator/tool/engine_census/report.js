// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Render SUMMARY.md from disagreements.json. Usage: node tool/engine_census/report.js
'use strict';
const fs = require('fs');
const path = require('path');

const OUT_DIR = process.env.ENGINE_CENSUS_OUT || path.resolve(__dirname, '../../.dart_tool/engine_census');
const J = JSON.parse(fs.readFileSync(path.join(OUT_DIR, 'disagreements.json'), 'utf8'));
const C = {};
for (const c of ['webref', 'blink', 'gecko', 'webkit']) {
  C[c] = JSON.parse(fs.readFileSync(path.join(OUT_DIR, `${c}.json`), 'utf8'));
}
const ENG = ['blink', 'gecko', 'webkit'];
const L = [];
const p = (s = '') => L.push(s);
const esc = (s) => String(s ?? '').replace(/\\/g, '\\\\').replace(/\|/g, '\\|').replace(/</g, '&lt;');
const trunc = (s, n = 140) => (s && s.length > n ? s.slice(0, n) + '…' : s);

p('# Engine IDL vs webref: type/shape disagreements');
p();
p(`Generated ${J.generated}. Scripts: parse.js, compare.js, report.js, lookup.js (\`node tool/engine_census/lookup.js MouseEvent.clientX\`).`);
p();
p('## Sources');
p();
p('| corpus | ref | sha | files | parse failures (defs) | note |');
p('|---|---|---|---|---|---|');
for (const c of ['webref', ...ENG]) {
  const r = J.revisions[c] || {}; const s = J.parseStats[c];
  const note = r.note || (r.browser ? `${r.browser} ${r.version}` : r.path) || '';
  p(`| ${c} | ${r.ref || r.version || ''} | ${(r.sha || '').slice(0, 10)} | ${s.files} | ${s.errors}/${s.defs} (${(100 * s.errors / s.defs).toFixed(2)}%) | ${esc(note)} |`);
}
p();
p('Parse failures: ' + ENG.map((c) => `${c}: ${J.parseStats[c].errorList.join('; ') || 'none'}`).join(' — '));
p();
p('Gating (members, after interface-level gating): ' + ENG.map((c) => {
  const t = { on: 0, off: 0, unknown: 0 };
  for (const d of Object.values(C[c].defs)) for (const m of Object.values(d.members || {})) t[d.gating.state === 'off' ? 'off' : d.gating.state === 'unknown' && m.gating.state === 'on' ? 'unknown' : m.gating.state]++;
  return `${c} on=${t.on} off=${t.off} unknown=${t.unknown}`;
}).join('; ') + '. "off" members are excluded from comparisons (declared but disabled by default).');
p();
p('## Method');
p();
p('- **Parsing.** Every corpus is parsed with webidl2. Partials and `includes` mixins are merged, and member lookup walks the inheritance chain. WebKit `[InterfaceName=]` renames are applied.');
p('- **Comparison.** Types are compared after resolving typedefs and normalizing. The string types DOMString, USVString, ByteString and UTF8String count as one type. `unrestricted` is dropped. Buffer and typed-array unions collapse into BufferSource. `void` is treated as `undefined`.');
p('- **Overloads.** Overload sets are compared as their expanded effective signatures: trailing optional arguments are dropped and top-level unions are distributed. So `f(optional (A or B))` matches `f()`, `f(A)` and `f(B)`.');
p('- **Gating.** Each engine is gated by its build defaults:');
p('  - Blink uses `[RuntimeEnabled]` with runtime_enabled_features.json5 Linux status. A feature counts as on if its `base_feature_status` is enabled, if it is set by a content/child/runtime_features.cc base::Feature that is ENABLED_BY_DEFAULT, or if it is implied by another feature. Embedder-settable `public:true` features count as unknown.');
p('  - Gecko uses `[Pref]`, read from StaticPrefList.yaml for a Linux release build (`#if` evaluated, @IS_NIGHTLY_BUILD@=false). `[Func]` is unknown and `[ChromeOnly]` is off.');
p('  - WebKit uses `[EnabledBySetting]`, read from the UnifiedWebPreferences.yaml WebKit default. It is evaluated as Safari would: PLATFORM(COCOA) true, ENABLE(X) from PlatformEnable*.h, ENABLE(EXPERIMENTAL_FEATURES) false. `[Conditional]` macros missing from PlatformEnable*.h are unknown.');
p();
p('## Known limitations');
p();
p('- **WebKit source tracks the shipping Safari branch, whereas Playwright WebKit builds track WebKit trunk.** Features gated `(preview|testable),false` (such as CloseWatcher, CSSFunctionRule, HTMLDialogElement.closedBy, ImageDecoder, IDBRecord) show as off in this report to reflect shipping Safari.');
p('- **Gecko `[Func]` gates are unknown, and pref values set by Nimbus or remote settings are not modelled.** Example: `dom.webserial.enabled` defaults to `@IS_NOT_MOBILE@` (`true`) in StaticPrefList.yaml, yet stock Firefox exposes no Serial.');
p('- **Gecko CSS IDL generated at build time is not in `dom/webidl`,** for example CSS2Properties and per-property CSSStyleProperties attributes. So "missing in Gecko" overcounts there.');
p('- **Blink gating is evaluated for Linux.** Features that are stable only on Mac, Android or ChromeOS show as off.');
p('- **Members from maplike, setlike, iterable and stringifier declarations are synthesized** (e.g. FontFaceSet.forEach, Location.toString) and excluded from type comparison.');
p('- **The `console` and WebAssembly namespaces, which V8 and JSC implement without engine IDL, are excluded from the missing lists,** as are callback-interface members.');
p('- **Some runtime presence is outside static IDL.** Gecko generates some CSS descriptor IDL at build time (CSSPositionTryDescriptors, CSSPageDescriptors), and Chrome hides `ontouch*` handlers on desktops without a touchscreen.');
p();
p('## Counts');
p();
for (const [k, v] of Object.entries(J.counts)) p(`- ${k}: ${v}`);
p();

const PRIO = ['int-vs-float', 'nullability', 'optionality', 'arity', 'required', 'return', 'signedness', 'numeric-width', 'enum-values', 'kind', 'type', 'overloads', 'variadic', 'readonly', 'named-type', 'enum-vs-DOMString', 'sequence-vs-FrozenArray', 'string-kind', 'matches-other-webref-decl', 'value', 'other'];
const prio = (cls) => Math.min(...cls.map((c) => (PRIO.indexOf(c) + 1) || 99));
const rowLine = (a) => {
  const others = ENG.filter((e) => !a.agreeingEngines.includes(e)).map((e) => `${e}: ${a.engines[e] ? esc(trunc(a.engines[e], 80)) : '—'}`).join('<br>');
  return `| \`${a.iface}.${a.key}\` | ${a.cls.join(', ')} | ${esc(trunc(a.webref))} | ${esc(trunc(a.agreedSig))} | ${a.agreeingEngines.join('+')} | ${others} |`;
};
const hdr = () => { p('| member | class | webref | engines say | agreeing | other engine |'); p('|---|---|---|---|---|---|'); };

const una = J.agreeVsWebref.filter((a) => a.unanimous).sort((a, b) => prio(a.cls) - prio(b.cls) || a.iface.localeCompare(b.iface));
p(`## All 3 engines agree, webref differs (${una.length})`);
p();
p('These are the strongest signals: either the spec or webref has drifted from reality, or the spec intentionally differs and no engine has followed yet.');
p();
hdr(); for (const a of una) p(rowLine(a));
p();
const two = J.agreeVsWebref.filter((a) => !a.unanimous).sort((a, b) => prio(a.cls) - prio(b.cls) || a.iface.localeCompare(b.iface));
p(`## Exactly 2 engines agree with each other against webref (${two.length})`);
p();
hdr(); for (const a of two) p(rowLine(a));
p();

const extra = J.extraInEngines.filter((x) => x.ifaceInWebref).sort((a, b) => Object.keys(b.engines).length - Object.keys(a.engines).length || a.iface.localeCompare(b.iface));
p(`## Members that at least 2 engines declare as enabled but webref lacks, on interfaces webref has (${extra.length})`);
p();
p('| member | engines | signature (first engine) |'); p('|---|---|---|');
for (const x of extra) p(`| \`${x.iface}.${x.key}\` | ${Object.keys(x.engines).join('+')} | ${esc(trunc(Object.values(x.engines)[0], 100))} |`);
p();
const extraIf = {};
for (const x of J.extraInEngines.filter((y) => !y.ifaceInWebref)) (extraIf[x.iface] = extraIf[x.iface] || new Set(Object.keys(x.engines).join('+'))).add(Object.keys(x.engines).join('+'));
p(`### Interfaces/dictionaries/enums declared by at least 2 engines but missing from webref (${Object.keys(extraIf).length})`);
p();
p(Object.keys(extraIf).sort().map((k) => `\`${k}\``).join(', '));
p();

// webref members missing in engines (on interfaces at least one engine has)
const miss = J.missingInEngines;
const allAbsent = miss.filter((m) => m.absentIn.length === 3);
const byIf = {};
for (const m of allAbsent) (byIf[m.iface] = byIf[m.iface] || []).push(m.key);
const ifaceAbsentAll = Object.keys(byIf).filter((i) => ENG.every((e) => !C[e].defs[i] || C[e].defs[i].gating.state === 'off'));
const partial = Object.entries(byIf).filter(([i]) => !ifaceAbsentAll.includes(i));
p(`## webref members not enabled in any engine (${allAbsent.length} members)`);
p();
p(`- ${ifaceAbsentAll.length} webref definitions are absent or off in all three engines. These are candidates for package:web to drop or mark experimental:`);
p();
p('  ' + ifaceAbsentAll.sort().map((k) => `\`${k}\``).join(', '));
p();
p(`- ${partial.length} interfaces exist in at least one engine but have members that no engine enables:`);
p();
p('| interface | members absent/off in all 3 |'); p('|---|---|');
for (const [i, ks] of partial.sort((a, b) => b[1].length - a[1].length)) p(`| \`${i}\` | ${esc(trunc(ks.join(', '), 300))} |`);
p();
const outPath = path.join(OUT_DIR, 'SUMMARY.md');
fs.writeFileSync(outPath, L.join('\n') + '\n');
console.log('wrote', outPath, L.length, 'lines');
