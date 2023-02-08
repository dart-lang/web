// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import * as fs from 'fs';

export function assert(expression, string) {
  if (!expression) {
    throw new Error(string ?? '');
  }
}

export function ensureDirectoryExists(dir) {
  if (!fs.existsSync(dir)) {
    fs.mkdirSync(dir, {recursive: true});
  }
}

export const year = new Date().getFullYear();
