// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Usage: node tool/engine_census/lookup.js Iface.member [Iface.member ...]
// (member: attribute/field name, or operation name with/without "()")
'use strict';
const fs = require('fs');
const path = require('path');

const OUT_DIR = process.env.ENGINE_CENSUS_OUT || path.resolve(__dirname, '../../.dart_tool/engine_census');
const C = {};
for (const c of ['webref', 'blink', 'gecko', 'webkit']) {
  C[c] = JSON.parse(fs.readFileSync(path.join(OUT_DIR, `${c}.json`), 'utf8'));
}
function find(c, iface, key, depth = 0) {
  const d = C[c].defs[iface];
  if (!d) return null;
  const m = (Object.hasOwn(d.members, key) && d.members[key]) || (Object.hasOwn(d.members, key + '()') && d.members[key + '()']);
  if (m) return { iface, d, m };
  return d.inherits && depth < 20 ? find(c, d.inherits, key, depth + 1) : null;
}
const show = (m) => {
  if (m.kind === 'attribute') return `${m.readonly ? 'readonly ' : ''}attribute ${m.raw}${m.raw !== m.type ? ' [=' + m.type + ']' : ''}`;
  if (m.kind === 'field') return `${m.required ? 'required ' : ''}${m.raw}${m.default ? ' = ' + m.default : ''}`;
  if (m.overloads) return m.overloads.map((o) => `${o.retRaw ?? ''} (${o.args.map((a) => `${a.opt ? 'optional ' : ''}${a.raw}${a.varg ? '...' : ''} ${a.name}`).join(', ')})${o.gating.state !== 'on' ? ' {' + o.gating.state + '}' : ''}`).join('  ||  ');
  return JSON.stringify(m);
};
for (const q of process.argv.slice(2)) {
  const [iface, key] = q.split('.');
  console.log(`== ${q}`);
  for (const c of Object.keys(C)) {
    const r = find(c, iface, key.replace(/\(\)$/, ''));
    if (!r) { console.log(`  ${c.padEnd(7)} ABSENT${C[c].defs[iface] ? '' : ' (no interface)'}`); continue; }
    const rank = { on: 0, unknown: 1, off: 2 };
    const g = rank[r.d.gating.state] > rank[r.m.gating.state] ? r.d.gating : r.m.gating;
    const why = [...r.d.gating.why, ...r.m.gating.why];
    console.log(`  ${c.padEnd(7)} ${show(r.m)}${r.iface !== iface ? '  (on ' + r.iface + ')' : ''}  [${g.state}${why.length ? ': ' + why.join('; ') : ''}]  ${r.m.file || ''}`);
  }
}
