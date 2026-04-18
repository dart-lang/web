// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:js_interop';

import 'package:path/path.dart' as p;

import 'formatting.dart';
import 'js/filesystem_api.dart';

class DocProvider {
  static DocProvider create() {
    final content =
        fs.readFileSync(
              p.join('..', '..', '..', 'third_party', 'mdn', 'mdn.json').toJS,
              JSReadFileOptions(encoding: 'utf8'.toJS),
            )
            as JSString;

    return DocProvider(jsonDecode(content.toDart) as Map<String, dynamic>);
  }

  final List<MdnInterface> interfaces = [];

  DocProvider(Map<String, dynamic> data) {
    for (var key in data.keys) {
      if (key.startsWith('__')) continue;

      interfaces.add(MdnInterface(key, data[key] as Map<String, dynamic>));
    }
  }

  MdnInterface? interfaceFor(String name) =>
      interfaces.where((p) => p.name == name).firstOrNull;
}

class MdnInterface {
  final String name;
  late final String docs;
  final List<MdnProperty> properties = [];

  MdnInterface(this.name, Map<String, dynamic> data) {
    docs = data['docs'] as String;

    final propertiesData = data['properties'] as Map<String, dynamic>?;
    if (propertiesData != null) {
      for (var key in propertiesData.keys) {
        properties.add(MdnProperty(key, propertiesData[key] as String));
      }
    }
  }

  List<String> get formattedDocs {
    final result = formatDocs(docs, 80);

    if (result.isEmpty) {
      return result;
    } else {
      return [
        ...result,
        '///',
        '/// ---',
        '///',
        '/// API documentation sourced from',
        '/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/$name).',
      ];
    }
  }

  MdnProperty? propertyFor(String name, {required bool isStatic}) {
    name = name.toLowerCase();
    if (isStatic) name = '${name}_static';
    return properties.where((p) => p.name == name).firstOrNull;
  }
}

class MdnProperty {
  final String name;
  final String docs;

  MdnProperty(this.name, this.docs);

  List<String> get formattedDocs => formatDocs(docs, 78);
}
