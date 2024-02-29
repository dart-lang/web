// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Given markdown formatted text [data] and a line [width], return a
/// line-wrapped dartdoc comment accounting for any [leadingWhitespace] the
/// comment should have.
List<String> formatDocs(String data, int width, [int leadingWhitespace = 0]) {
  // TODO(devoncarew): Look at combining soft line breaks in the markdown in
  // order to better reflow the returned dartdoc comments (i.e., only have line
  // breaks for markdown paragraphs).

  final lines = data.split('\n');
  final output = <String>[];

  width -= leadingWhitespace;
  width -= '/// '.length;

  var inCodeFence = false;

  for (var line in lines) {
    if (inCodeFence) {
      output.add(line);
      if (line.startsWith('```')) {
        inCodeFence = false;
      }
    } else {
      final ltrim = line.trimLeft();

      if (line.startsWith('> ')) {
        final wrapped = _wrap(line.substring(2), width - 2);
        output.addAll(wrapped.map((l) => '> $l'));
      } else if (line.startsWith('- ')) {
        final wrapped = _wrap(line.substring(2), width - 2);
        output.add('- ${wrapped.first}');
        output.addAll(wrapped.skip(1).map((l) => '  $l'));
      } else if (ltrim.startsWith('- ') || ltrim.startsWith('<')) {
        output.add(line);
      } else {
        output.addAll(_wrap(line, width));

        if (line.startsWith('```')) {
          inCodeFence = true;
        }
      }
    }
  }

  return output.map((line) => line.isEmpty ? '///' : '/// $line').toList();
}

/// Identify `[foo](bar)` and `[foo]` patterns.
final RegExp _linksRegEx = RegExp(r'\[([\w `-]+?)\](\(\S+\))?');

/// Wrap the given [line] to [width], breaking at whitespace.
Iterable<String> _wrap(String line, int width) sync* {
  if (line.isEmpty) {
    yield line;
    return;
  }

  const markerChar = '\u009e';

  // handle [foo bar](link)
  line = line.replaceAllMapped(_linksRegEx, (match) {
    const urlBase = 'https://developer.mozilla.org/';

    var text = match.group(1)!;
    text = text.replaceAll(' ', markerChar);

    final link = match.group(2);

    if (link == null) {
      return '[$text]';
    } else {
      if (link.startsWith('(/')) {
        return '[$text]($urlBase${link.substring(2)}';
      } else {
        return '[$text]$link';
      }
    }
  });

  final words = line.split(' ');
  final buf = StringBuffer();

  for (var word in words) {
    if (buf.isEmpty) {
      buf.write(word);
    } else {
      if (buf.length + 1 + word.length > width) {
        yield buf.toString().replaceAll(markerChar, ' ');
        buf.clear();
        buf.write(word);
      } else {
        buf.write(' $word');
      }
    }
  }

  if (buf.isNotEmpty) {
    yield buf.toString().replaceAll(markerChar, ' ');
  }
}
