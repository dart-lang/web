// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

const bannedNames = <String>{
  'assert',
  'break',
  'catch',
  'continue',
  'default',
  'extends',
  'finally',
  'in',
  'is',
  'var',
};

/// Given a [jsName], returns the allowed Dart equivalent accounting for invalid
/// characters and reserved keywords.
String dartRename(String jsName, [bool toSingleForm = false]) {
  var dartName = jsName.replaceAll('-', '_');
  if (toSingleForm && dartName.length > 2 && dartName.endsWith('s')) {
    dartName = dartName.substring(0, dartName.length - 1);
  }
  if (bannedNames.contains(dartName)) {
    dartName = '${dartName}_';
  }
  return dartName;
}
