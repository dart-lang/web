// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

const bannedNames = <String>{
  'assert',
  'break',
  'continue',
  'extends',
  'default',
  'in',
  'is',
  'var',
};

/// Given a [jsName], returns the allowed Dart equivalent accounting for invalid
/// characters and reserved keywords.
String dartRename(String jsName) {
  var dartName = jsName.replaceAll('-', '_');
  if (bannedNames.contains(dartName)) {
    dartName = '${dartName}_';
  }
  return dartName;
}
