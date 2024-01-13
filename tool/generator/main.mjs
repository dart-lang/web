// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import * as fs from 'fs';
import * as childProcess from 'child_process';
import { createRequire } from 'module';
import * as idl from '@webref/idl';
import * as css from '@webref/css';

const require = createRequire(import.meta.url);

// Setup properties for JS interop in Dart.
globalThis.self = globalThis;
globalThis.childProcess = childProcess;
globalThis.css = css;
globalThis.idl = idl;
globalThis.fs = fs;
globalThis.location = { href: `file://${process.cwd()}/`}

globalThis.dartMainRunner = async function(main, args) {
  const dir = process.argv[2];
  await main(dir);
}

async function scriptMain() {
  // We have to load `dart_main.js` here so that the `dartMainRunner`
  // hook is registered before the IIFE in `dart_main.js` runs.
  require('./dart_main.js');
}

if (require.main === require.module) {
  await scriptMain();
}
