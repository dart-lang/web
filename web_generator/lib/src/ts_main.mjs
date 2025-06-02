import * as childProcess from 'node:child_process';
import * as fs from 'node:fs/promises';
import { createRequire } from 'node:module';

const require = createRequire(import.meta.url);

globalThis.dartMainRunner = async function (main, args) {
  const dartArgs = process.argv.slice(2);
  await main(dartArgs);
}

async function scriptMain() {
  require('./dart_ts_main.js');
}

if (require.main === require.module) {
  await scriptMain();
}
