// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

final RegExp _xrefRegex = RegExp(
  r'''{{\s*(\w+)\(([\w\., \n/\*"'\(\)]+)\)\s*}}''',
);
final RegExp _mustacheRegex = RegExp(r'''{{\s*([\S ]+?)\s*}}''');

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
      .map(
        (line) => line.replaceAllMapped(linkRefRegex, (match) {
          final ref = match.group(1)!;
          final link = match.group(2)!;

          if (link.startsWith('/en-US/')) {
            // prefix with 'https://developer.mozilla.org'
            return '[$ref](https://developer.mozilla.org$link)';
          } else {
            return match.group(0)!;
          }
        }),
      )
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
