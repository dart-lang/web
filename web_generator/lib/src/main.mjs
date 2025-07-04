// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import * as childProcess from 'child_process';
import * as fs from 'fs';
import { createRequire } from 'module';
import * as css from '@webref/css';
import * as elements from '@webref/elements';
import * as idl from '@webref/idl';
import * as webidl2 from "webidl2";
import * as ts from 'typescript';

const require = createRequire(import.meta.url);

// Setup properties for JS interop in Dart.
globalThis.self = globalThis;
globalThis.childProcess = childProcess;
globalThis.css = css;
globalThis.elements = elements;
globalThis.fs = fs;
globalThis.idl = idl;
globalThis.webidl2 = webidl2;
globalThis.ts = ts;
globalThis.location = { href: `file://${process.cwd()}/` }
globalThis.url = import.meta.url;

globalThis.dartMainRunner = async function (main, args) {
  const dartArgs = process.argv.slice(2);
  await main(dartArgs);
}

async function scriptMain() {
  // We have to load `dart_main.js` here so that the `dartMainRunner`
  // hook is registered before the IIFE in `dart_main.js` runs.
  require('./dart_main.js');
}

if (require.main === require.module) {
  await scriptMain();
}
