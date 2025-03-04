// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

const mdnUrl = 'https://developer.mozilla.org/en-US/docs/Web';
const gitUrl = 'https://github.com/mdn/content.git';

Future<void> main(List<String> args) async {
  final offline = args.length == 1 && args.first == '--offline';

  // clone the repo
  final repoPath =
      p.fromUri(Platform.script.resolve('../.dart_tool/mdn_content'));
  final repoDir = Directory(repoPath);
  if (!repoDir.existsSync()) {
    await _run(
      'git',
      [
        'clone',
        '--depth=1',
        gitUrl,
        p.basename(repoDir.path),
      ],
      cwd: repoDir.parent,
    );
  } else {
    if (!offline) {
      await _run('git', ['pull'], cwd: repoDir);
    }
  }

  print('');

  final interfaces = <InterfaceInfo>[];

  final apiDir =
      Directory(p.join(repoDir.path, 'files', 'en-us', 'web', 'api'));
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
  final filePath =
      p.fromUri(Platform.script.resolve('../../third_party/mdn/mdn.json'));
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

  InterfaceInfo({
    required this.name,
    required this.docs,
  });

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

final RegExp _xrefRegex =
    RegExp(r'''{{\s*(\w+)\(([\w\., \n/\*"'\(\)]+)\)\s*}}''');
final RegExp _mustacheRegex = RegExp(r'''{{\s*([\S ]+?)\s*}}''');

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

String convertMdnToMarkdown(String content) {
  var lines = content.split('\n');

  // remove the front matter
  if (lines.first.startsWith('---')) {
    lines.removeUntil((line) => line == '---');
    lines.removeUntil((line) => line == '---');
  }

  // remove everything after the first section
  // TODO: handle cases where the first line is a section header
  final index = lines.indexWhere((line) => line.startsWith('## '));
  if (index != -1) {
    lines = lines.sublist(0, index);
  }

  // remove leading and trailing blank lines
  lines.removeWhile((line) => line.isEmpty);
  while (lines.isNotEmpty && lines.last.isEmpty) {
    lines.removeLast();
  }

  // Rewrite relative link references:
  //   "[WebGL API](/en-US/docs/Web/API/WebGL_API)"
  final linkRefRegex = RegExp(r'\[([^\]]+)\]\(([\w\/-]+)\)');
  lines = lines
      .map((line) => line.replaceAllMapped(linkRefRegex, (match) {
            final ref = match.group(1)!;
            final link = match.group(2)!;

            if (link.startsWith('/en-US/')) {
              // prefix with 'https://developer.mozilla.org'
              return '[$ref](https://developer.mozilla.org$link)';
            } else {
              return match.group(0)!;
            }
          }))
      .toList();

  var text = lines.join('\n');

  // Convert {{jsxref("Promise")}} to code references and
  // {{domxref("BluetoothRemote")}} to symbol references.
  text = text.replaceAllMapped(_xrefRegex, (match) {
    final type = match.group(1)!.toLowerCase();
    if (type == 'apiref' || type == 'glossary' || type == 'svgelement') {
      return '';
    }

    if (type == 'defaultapisidebar') {
      return '';
    }

    var content = match.group(2)!;
    if (type == 'availableinworkers') {
      final name = match.group(1)!;
      return '@$name($content)';
    } else if (type == 'jsxref' ||
        type == 'htmlelement' ||
        type == 'svgattr' ||
        type == 'cssxref') {
      content = _stripQuotes(content.split(',').last);
      return '`$content`';
    } else if (type == 'domxref') {
      content = content.split(',').first.trim();
      content = _stripQuotes(content);

      if (content.endsWith('()')) {
        content = content.substring(0, content.length - 2);
      }

      // Rewrite [FontFace/status] references to [FontFace.status] ones.
      if (content.contains('/')) {
        content = content.replaceAll('/', '.');
      }

      // TODO: rewrite FileReader.loadend_event => FileReader.onloadend

      return '[$content]';
    } else {
      content = _stripQuotes(content);
      return '`$content`';
    }
  });

  // Remove additional mustache-like directives ({{InheritanceDiagram}}, ...).
  text = text.replaceAllMapped(_mustacheRegex, (match) => '');

  // Replace multiple blank lines by 2 blank lines.
  text = text.replaceAll(RegExp('\n\n\n+'), '\n\n');

  return text.trim();
}

String _stripQuotes(String value) {
  value = value.trim();
  if (value.startsWith("'") && value.endsWith("'")) {
    return value.substring(1, value.length - 1);
  } else if (value.startsWith('"') && value.endsWith('"')) {
    return value.substring(1, value.length - 1);
  }
  return value;
}

extension ListExtension on List<String> {
  void removeUntil(bool Function(String) fn) {
    while (true) {
      if (fn(first)) {
        removeAt(0);
        return;
      } else {
        removeAt(0);
      }
    }
  }

  void removeWhile(bool Function(String) fn) {
    if (isEmpty) return;

    while (!isEmpty && fn(first)) {
      removeAt(0);
    }
  }
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
