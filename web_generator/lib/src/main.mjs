// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import * as childProcess from 'child_process';
import * as nodeFs from 'fs';
import * as path from 'path';
import { createRequire } from 'module';
import * as css from '@webref/css';
import * as elements from '@webref/elements';
import * as idl from '@webref/idl';
import * as webidl2 from 'webidl2';
import * as ts from 'typescript';

const require = createRequire(import.meta.url);

globalThis.fs = {
  ...nodeFs,

  globSync(pattern, options) {
    const cwd = options?.cwd ?? process.cwd();

    if (Array.isArray(pattern)) {
      return pattern.flatMap(p => this.globSync(p, options));
    }

    if (typeof pattern !== 'string') {
      return [];
    }

    const fullPath = path.resolve(cwd, pattern);

    if (
      !pattern.includes('*') &&
      !pattern.includes('?') &&
      !pattern.includes('[')
    ) {
      return nodeFs.existsSync(fullPath) ? [fullPath] : [];
    }
      return [];
  },

  writeFileSync(filePath, data, options) {
    const dir = path.dirname(filePath);
    nodeFs.mkdirSync(dir, { recursive: true });
    return nodeFs.writeFileSync(filePath, data, options);
  },
};

globalThis.self = globalThis;
globalThis.childProcess = childProcess;
globalThis.css = css;
globalThis.elements = elements;
globalThis.idl = idl;
globalThis.webidl2 = webidl2;
globalThis.ts = ts;

globalThis.location = { href: `file://${process.cwd()}/` };
globalThis.url = import.meta.url;

globalThis.dartMainRunner = async function (main, args) {
  const dartArgs = process.argv.slice(2);
  await main(dartArgs);
};

async function scriptMain() {
  require('./dart_main.js');
}

if (require.main === require.module) {
  await scriptMain();
}
