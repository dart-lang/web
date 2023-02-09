// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import * as fs from 'fs';
import * as child_process from 'child_process';
import { createRequire } from 'module';
import * as idl from '@webref/idl';
import * as assumedTypesModule from './assumedTypes.mjs';
import * as translatorModule from './translator.mjs';
import * as util from './util.mjs';

const require = createRequire(import.meta.url);
const Translator = translatorModule.Translator;
const assumedTypesBlob = assumedTypesModule.assumedTypesBlob;

function generateHeader() {
  return (
`// Copyright (c) ${util.year}, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// TODO(joshualitt): Import js types properly.
import 'dart:typed_data';
import 'package:js/js.dart';
`);
}

async function translateIDLs() {
  const files = await idl.listAll();
  const translator = new Translator();
  for (const [shortname, file] of Object.entries(files)) {
    translator.collect(await file.parse());
  }
  return translator.translate();
}

function runDartFormat(filePath) {
  child_process.exec(`dart format ${filePath}`, (error, stdout, stderr) => {
    if (error) {
      console.error(`exec error: ${error}`);
      return;
    }
    console.log(`stdout: ${stdout}`);
    console.error(`stderr: ${stderr}`);
  });
}

async function generateBindings(dir) {
  const filePath = `${dir}/dom.dart`;
  const translation = await translateIDLs();
  console.log(translation);
  fs.writeFileSync(filePath,
`${generateHeader()}
${translation}
${assumedTypesBlob}`);
  runDartFormat(filePath);
}

async function main() {
  const dir = process.argv[2];
  util.ensureDirectoryExists(dir);
  try {
    await generateBindings(dir);
  } catch (e) {
    console.log(e);
    throw e;
  }
}

if (require.main === require.module) {
  main();
}
