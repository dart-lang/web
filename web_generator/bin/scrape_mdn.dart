// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:web_generator/src/mdn_converter.dart';

const mdnUrl = 'https://developer.mozilla.org/en-US/docs/Web';
const gitUrl = 'https://github.com/mdn/content.git';

Future<void> main(List<String> args) async {
  final offline = args.length == 1 && args.first == '--offline';

  // clone the repo
  final repoPath = p.fromUri(
    Platform.script.resolve('../.dart_tool/mdn_content'),
  );
  final repoDir = Directory(repoPath);
  if (!repoDir.existsSync()) {
    await _run('git', [
      'clone',
      '--depth=1',
      gitUrl,
      p.basename(repoDir.path),
    ], cwd: repoDir.parent);
  } else {
    if (!offline) {
      await _run('git', ['pull'], cwd: repoDir);
    }
  }

  print('');

  final interfaces = <InterfaceInfo>[];

  final apiDir = Directory(
    p.join(repoDir.path, 'files', 'en-us', 'web', 'api'),
  );
  for (final dir in apiDir.listSync().whereType<Directory>()) {
    final interfaceIndex = File(p.join(dir.path, 'index.md'));
    if (!interfaceIndex.existsSync()) continue;

    final docs = interfaceIndex.readAsStringSync();
    if (!docs.contains('page-type: web-api-interface')) {
      continue;
    }

    final indexFileContent = interfaceIndex.readAsStringSync();
    final name = findTitle(indexFileContent) ?? p.basename(dir.path);
    final info = InterfaceInfo(
      name: name,
      docs: convertMdnToMarkdown(interfaceIndex.readAsStringSync()),
    );
    interfaces.add(info);

    for (final child in dir.listSync().whereType<Directory>()) {
      final propertyIndex = File(p.join(child.path, 'index.md'));
      if (!propertyIndex.existsSync()) continue;

      final property = Property(
        name: p.basename(child.path),
        docs: convertMdnToMarkdown(propertyIndex.readAsStringSync()),
      );
      if (property.name != info.name) {
        info.properties.add(property);
      }
    }

    info.properties.sort();
  }

  interfaces.sort();

  print('${interfaces.length} items read from $gitUrl.');

  const encoder = JsonEncoder.withIndent('  ');
  final filePath = p.fromUri(
    Platform.script.resolve('../../third_party/mdn/mdn.json'),
  );
  final file = File(filePath);
  final json = {
    '__meta__': {
      'source': '[MDN Web Docs]($mdnUrl)',
      'license':
          '[CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/)',
    },
    for (var i in interfaces) i.name: i.asJson,
  };
  file.writeAsStringSync('${encoder.convert(json)}\n');

  print('');
  print('Wrote ${file.lengthSync()} bytes to ${file.path}.');
}

class InterfaceInfo implements Comparable<InterfaceInfo> {
  final String name;
  final String docs;

  final List<Property> properties = [];

  InterfaceInfo({required this.name, required this.docs});

  Map<String, dynamic> get asJson => {
    'docs': docs,
    if (properties.isNotEmpty)
      'properties': {for (var p in properties) p.name: p.docs},
  };

  @override
  int compareTo(InterfaceInfo other) => name.compareTo(other.name);
}

class Property implements Comparable<Property> {
  final String name;
  final String docs;

  Property({required this.name, required this.docs});

  @override
  int compareTo(Property other) => name.compareTo(other.name);
}

String? findTitle(String content) {
  // Look for 'title: AbortController'.

  for (var line in content.split('\n')) {
    line = line.trim();

    // early exit
    if (line.isEmpty) return null;

    if (line.contains(':')) {
      final index = line.indexOf(':');
      final key = line.substring(0, index).trim();

      if (key == 'title') {
        final value = line.substring(index + 1).trim();
        // Work around 'title: Foo (Bar)'.
        return value.split(' ').first;
      }
    }
  }

  return null;
}

Future<void> _run(
  String command,
  List<String> args, {
  required Directory cwd,
}) async {
  print('$command ${args.join(' ')} [${cwd.path}]');

  final result = await Process.start(
    command,
    args,
    workingDirectory: cwd.path,
    mode: ProcessStartMode.inheritStdio,
  );

  final code = await result.exitCode;
  if (code != 0) {
    throw Exception('process exited with code $code');
  }
}
