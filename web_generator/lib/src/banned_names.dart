// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Dart reserved keywords, used for resolving conflict with a name.
///
/// Source: https://dart.dev/guides/language/language-tour#keywords.
const keywords = {
  'abstract',
  'as',
  'assert',
  'async',
  'await',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'covariant',
  'default',
  'deferred',
  'do',
  'dynamic',
  'else',
  'enum',
  'export',
  'extends',
  'extension',
  'external',
  'factory',
  'false',
  'final',
  'finally',
  'for',
  'Function',
  'get',
  'hide',
  'if',
  'implements',
  'import',
  'in',
  'interface',
  'is',
  'late',
  'library',
  'mixin',
  'new',
  'null',
  'on',
  'operator',
  'part',
  'required',
  'rethrow',
  'return',
  'set',
  'show',
  'static',
  'super',
  'switch',
  'sync',
  'this',
  'throw',
  'true',
  'try',
  'typedef',
  'var',
  'void',
  'while',
  'with',
  'yield',
};

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
