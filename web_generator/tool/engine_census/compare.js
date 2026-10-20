// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Compare engine IDL corpora vs webref. Usage: node tool/engine_census/compare.js
'use strict';
const fs = require('fs');
const path = require('path');

const OUT_DIR = process.env.ENGINE_CENSUS_OUT || path.resolve(__dirname, '../../.dart_tool/engine_census');
const C = {};
for (const c of ['webref', 'blink', 'gecko', 'webkit']) {
  C[c] = JSON.parse(fs.readFileSync(path.join(OUT_DIR, `${c}.json`), 'utf8'));
}
const ENG = ['blink', 'gecko', 'webkit'];

// ---- normalization
const STR = /\b(USVString|ByteString|CSSOMString|UTF8String)\b/g;
const BUF = /^(ArrayBuffer|SharedArrayBuffer|DataView|BufferSource|AllowSharedBufferSource|ArrayBufferView|(Big)?(Uint|Int|Float)(8|16|32|64)(Clamped)?Array|Uint8ClampedArray)$/;
function normBuf(t) {
  // Collapse unions containing typed-array/ArrayBuffer members into a single BufferSource token,
  // since typedef expansions (Float16Array, SharedArrayBuffer...) differ by snapshot.
  return t.replace(/\(([^()]*)\)/g, (m, inner) => {
    const parts = inner.split(' or ');
    if (!parts.some((p) => BUF.test(p.replace(/\?$/, '')))) return m;
    const rest = parts.filter((p) => !BUF.test(p.replace(/\?$/, '')));
    const u = [...new Set(['BufferSource', ...rest])].sort();
    return u.length === 1 ? 'BufferSource' : '(' + u.join(' or ') + ')';
  }).replace(/\b(ArrayBufferView|AllowSharedBufferSource|ArrayBuffer)\b(?!\w)/g, 'BufferSource');
}
const loose = (t) => (t == null ? t : normBuf(t.replace(STR, 'DOMString').replace(/\bvoid\b/g, 'undefined').replace(/\bunrestricted /g, '')));

function argSig(a, L) { return `${a.opt ? 'optional ' : ''}${L(a.t)}${a.varg ? '...' : ''}`; }
function opSig(o, L) { return `${L(o.ret) ?? ''}(${o.args.map((a) => argSig(a, L)).join(', ')})`; }
function splitUnion(t) {
  // top-level union members of "(A or B)" / "(A or B)?"
  const m = t.match(/^\((.*)\)(\??)$/);
  if (!m) return [t];
  const parts = []; let depth = 0, cur = '';
  const inner = m[1];
  for (let i = 0; i < inner.length; i++) {
    const c = inner[i];
    if (c === '(' || c === '<') depth++;
    if (c === ')' || c === '>') depth--;
    if (depth === 0 && inner.startsWith(' or ', i)) { parts.push(cur); cur = ''; i += 3; continue; }
    cur += c;
  }
  parts.push(cur);
  if (m[2]) parts.push('null');
  return parts;
}
// Effective-overload-style expansion: drop trailing optionals, distribute top-level unions.
function expandOps(overloads, L) {
  const outS = new Set();
  for (const o of overloads) {
    const args = o.args;
    let minN = args.length;
    while (minN > 0 && (args[minN - 1].opt || args[minN - 1].varg)) minN--;
    for (let n = minN; n <= args.length; n++) {
      let combos = [[]];
      for (const a of args.slice(0, n)) {
        const ts = splitUnion(L(a.t)).map((x) => x + (a.varg ? '...' : ''));
        const next = [];
        for (const c of combos) for (const t of ts) next.push([...c, t]);
        combos = next.length > 512 ? [[...combos[0], L(a.t)]] : next;
      }
      for (const c of combos) outS.add(`${L(o.ret) ?? ''}(${c.join(', ')})`);
    }
  }
  return [...outS].sort().join(' | ');
}
function sig(m, L = loose) {
  switch (m.kind) {
    case 'attribute': return `${m.readonly ? 'readonly ' : ''}${m.special ? m.special + ' ' : ''}${L(m.type)}`;
    case 'operation': case 'constructor':
      if (L === loose) return expandOps(m.overloads.filter((o) => o.gating.state !== 'off'), L);
      return [...new Set(m.overloads.filter((o) => o.gating.state !== 'off').map((o) => opSig(o, L)))].sort().join(' | ');
    case 'const': return `${L(m.type)}=${m.value}`;
    case 'field': return `${m.required ? 'required ' : ''}${L(m.type)}`;
    case 'enum': return m.values.slice().sort().join(',');
    default: return `${m.kind}<${(m.types || []).map(L).join(',')}>`;
  }
}

function lookup(corpus, iface, key, depth = 0) {
  const d = C[corpus].defs[iface];
  if (!d) return null;
  const m = Object.hasOwn(d.members, key) ? d.members[key] : undefined;
  if (m) {
    const state = d.gating.state === 'off' || m.gating.state === 'off' ? 'off'
      : d.gating.state === 'unknown' || m.gating.state === 'unknown' ? 'unknown' : 'on';
    return { m, state, why: [...d.gating.why, ...m.gating.why], from: depth ? iface : null };
  }
  if (d.inherits && depth < 20) return lookup(corpus, d.inherits, key, depth + 1);
  return null;
}

// classify a webref-vs-engine diff (single-signature members only)
function classify(w, e) {
  if (w.kind !== e.kind) return ['kind'];
  const cls = new Set();
  const tdiff = (a, b) => {
    a = a ?? 'none'; b = b ?? 'none';
    if (a === b) return;
    a = loose(a); b = loose(b);
    if (a === b) { cls.add('string-kind'); return; }
    if (a.replace(/\?$/, '') === b.replace(/\?$/, '')) { cls.add('nullability'); return; }
    const num = /^(unrestricted )?(double|float)$|^(unsigned )?(long long|long|short)$|^(byte|octet)$/;
    const ua = a.replace(/\?$/, ''), ub = b.replace(/\?$/, '');
    if (num.test(ua) && num.test(ub)) {
      const fa = /double|float/.test(ua), fb = /double|float/.test(ub);
      cls.add(fa !== fb ? 'int-vs-float' : ua.replace('unrestricted ', '') === ub.replace('unrestricted ', '') ? 'unrestricted' : (ua.includes('unsigned') !== ub.includes('unsigned') && ua.replace('unsigned ', '') === ub.replace('unsigned ', '')) ? 'signedness' : 'numeric-width'); if (a.endsWith('?') !== b.endsWith('?')) cls.add('nullability'); return;
    }
    if (ua.replace(/FrozenArray|sequence/g, 'S') === ub.replace(/FrozenArray|sequence/g, 'S')) { cls.add('sequence-vs-FrozenArray'); return; }
    const isEnum = (n) => [C.webref, ...ENG.map((x) => C[x])].some((c) => c.defs[n] && c.defs[n].kind === 'enum');
    if ((isEnum(ua) && ub === 'DOMString') || (isEnum(ub) && ua === 'DOMString')) { cls.add('enum-vs-DOMString'); return; }
    if (/^\w+$/.test(ua) && /^\w+$/.test(ub)) { cls.add('named-type'); return; }
    cls.add('type');
  };
  if (w.kind === 'attribute') { tdiff(w.type, e.type); if (w.readonly !== e.readonly) cls.add('readonly'); }
  else if (w.kind === 'field') { tdiff(w.type, e.type); if (w.required !== e.required) cls.add('required'); }
  else if (w.kind === 'const') { tdiff(w.type, e.type); if (String(w.value) !== String(e.value)) cls.add('value'); }
  else if (w.kind === 'enum') cls.add('enum-values');
  else if (w.kind === 'operation' || w.kind === 'constructor') {
    const wo = w.overloads.filter((o) => o.gating.state !== 'off'), eo = e.overloads.filter((o) => o.gating.state !== 'off');
    if (wo.length !== 1 || eo.length !== 1) cls.add('overloads');
    else {
      const a = wo[0], b = eo[0];
      if (loose(a.ret) !== loose(b.ret)) { tdiff(a.ret, b.ret); cls.add('return'); }
      if (a.args.length !== b.args.length) cls.add('arity');
      for (let i = 0; i < Math.min(a.args.length, b.args.length); i++) {
        tdiff(a.args[i].t, b.args[i].t);
        if (a.args[i].opt !== b.args[i].opt) cls.add('optionality');
        if (a.args[i].varg !== b.args[i].varg) cls.add('variadic');
      }
    }
  } else cls.add('other');
  return [...cls];
}

const rows = [];
const allIfaces = new Set();
for (const c of Object.values(C)) for (const n of Object.keys(c.defs)) allIfaces.add(n);
for (const iface of [...allIfaces].sort()) {
  const keys = new Set();
  for (const c of Object.values(C)) {
    const d = c.defs[iface]; if (!d) continue;
    if (d.kind === 'enum') keys.add('(enum)'); else for (const k of Object.keys(d.members)) keys.add(k);
  }
  for (const key of [...keys].sort()) {
    const row = { iface, key, per: {} };
    for (const c of ['webref', ...ENG]) {
      let r;
      if (key === '(enum)') {
        const d = C[c].defs[iface];
        r = d && d.kind === 'enum' ? { m: { kind: 'enum', values: d.values }, state: d.gating.state, why: d.gating.why } : null;
      } else r = lookup(c, iface, key);
      if (!r) { row.per[c] = null; continue; }
      row.kind = row.kind || r.m.kind;
      row.per[c] = { state: r.state, why: r.why.length ? r.why : undefined, sig: sig(r.m), strict: sig(r.m, (x) => x), inheritedFrom: r.from || undefined, _m: r.m };
    }
    rows.push(row);
  }
}

// ---- analyses
const live = (p) => p && p.state !== 'off';
const out = { webrefDuplicates: [], agreeVsWebref: [], extraInEngines: [], missingInEngines: [], typeDiffs: [], stringKindOnly: 0 };
const ifaceInWebref = (i) => !!C.webref.defs[i];
for (const r of rows) {
  const w = r.per.webref;
  const liveEng = ENG.filter((e) => live(r.per[e]));
  if (w) {
    // type diffs per engine
    const diffs = {};
    const wAlts = new Set([w.sig, ...((w._m.alts || []).map((a) => sig({ ...w._m, ...a })))]);
    if (wAlts.size > 1) out.webrefDuplicates.push({ iface: r.iface, key: r.key, sigs: [...wAlts], files: [w._m.file, ...(w._m.alts || []).map((a) => a.file)], engines: Object.fromEntries(liveEng.map((e) => [e, r.per[e].sig])) });
    const isSynth = (x) => x._m.synthesized || x._m.special === 'synth' || x._m.special === 'stringifier';
    for (const e of liveEng) {
      if (isSynth(w) || isSynth(r.per[e])) continue;
      if (wAlts.size > 1 && wAlts.has(r.per[e].sig) && r.per[e].sig !== w.sig) { diffs[e] = { sig: r.per[e].sig, cls: ['matches-other-webref-decl'] }; continue; }
      if (r.per[e].sig !== w.sig) diffs[e] = { sig: r.per[e].sig, cls: classify(w._m, r.per[e]._m) };
      else if (r.per[e].strict !== w.strict) out.stringKindOnly++;
    }
    if (Object.keys(diffs).length) {
      // group engines by sig
      const groups = {};
      for (const [e, d] of Object.entries(diffs)) (groups[d.sig] = groups[d.sig] || []).push(e);
      const agree = Object.entries(groups).filter(([, es]) => es.length >= 2);
      const row = { iface: r.iface, key: r.key, kind: r.kind, webref: w.sig, engines: Object.fromEntries(liveEng.map((e) => [e, r.per[e].sig])), classes: Object.fromEntries(Object.entries(diffs).map(([e, d]) => [e, d.cls])), gating: Object.fromEntries(ENG.filter((e) => r.per[e] && r.per[e].why).map((e) => [e, r.per[e].why])) };
      out.typeDiffs.push(row);
      for (const [s, es] of agree) out.agreeVsWebref.push({ ...row, agreeingEngines: es, agreedSig: s, cls: diffs[es[0]].cls, unanimous: es.length === 3 });
    }
    const absent = ENG.filter((e) => !live(r.per[e]));
    const wd = C.webref.defs[r.iface];
    const skipMissing = wd.kind === 'dictionary' || wd.kind === 'callback interface' || r.iface === 'console' || /^(WebAssembly|Module|Instance|Memory|Table|Global|Tag|Exception|CompileError|LinkError|RuntimeError)$/.test(r.iface) && (wd.files || []).some((f) => /wasm|webassembly/i.test(f));
    if (absent.length >= 2 && !skipMissing) out.missingInEngines.push({ iface: r.iface, key: r.key, kind: r.kind, absentIn: absent, offIn: absent.filter((e) => r.per[e]), presentIn: liveEng, webref: w.sig });
  } else if (liveEng.length >= 2) {
    out.extraInEngines.push({ iface: r.iface, key: r.key, kind: r.kind, ifaceInWebref: ifaceInWebref(r.iface), engines: Object.fromEntries(liveEng.map((e) => [e, r.per[e].sig])), states: Object.fromEntries(liveEng.map((e) => [e, r.per[e].state])) });
  }
}

// strip internal refs
for (const r of rows) for (const p of Object.values(r.per)) if (p) delete p._m;

const overridesPath = path.resolve(__dirname, '../../../js_interop_gen/lib/src/engine_overrides.json');
const webrefPkgPath = path.resolve(__dirname, '../../node_modules/@webref/idl/package.json');
const revisions = {
  ...JSON.parse(fs.readFileSync(overridesPath, 'utf8')).revisions,
  webref: {
    version: fs.existsSync(webrefPkgPath)
      ? JSON.parse(fs.readFileSync(webrefPkgPath, 'utf8')).version
      : 'unknown',
    path: 'web_generator/node_modules/@webref/idl',
  },
};

const stats = {};
for (const c of ['webref', ...ENG]) stats[c] = C[c].stats && { ...C[c].stats, errors: C[c].stats.errors.length, errorList: C[c].stats.errors.map((e) => `${e.file}: ${e.msg.split('\n')[0]}`) };
const summary = {
  generated: new Date().toISOString(),
  revisions,
  parseStats: stats,
  counts: {
    rows: rows.length, typeDiffRows: out.typeDiffs.length, agreeVsWebref: out.agreeVsWebref.length,
    agreeVsWebrefUnanimous: out.agreeVsWebref.filter((x) => x.unanimous).length,
    extraInEngines: out.extraInEngines.length, extraOnWebrefIfaces: out.extraInEngines.filter((x) => x.ifaceInWebref).length,
    missingInEngines: out.missingInEngines.length, stringKindOnlyDiffs: out.stringKindOnly,
  },
};
fs.writeFileSync(path.join(OUT_DIR, 'members_all.json'), JSON.stringify(rows));
fs.writeFileSync(path.join(OUT_DIR, 'disagreements.json'), JSON.stringify({ ...summary, ...out }, null, 1));
console.log(JSON.stringify(summary.counts, null, 1));
const tally = {};
for (const a of out.agreeVsWebref) for (const c of a.cls) tally[c] = (tally[c] || 0) + 1;
console.log('agreeVsWebref classes', tally);
