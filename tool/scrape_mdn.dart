// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: prefer_expression_function_bodies

import 'dart:convert';
import 'dart:io';

import 'package:html/dom.dart' as dom;
import 'package:html/dom_parsing.dart' show TreeVisitor;
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;
import 'package:pool/pool.dart';

const apiUrl = 'https://developer.mozilla.org/en-US/docs/Web/API';

Future<void> main(List<String> args) async {
  final client = http.Client();

  // Get the API page with all the interface references.
  final response = await client.get(Uri.parse(apiUrl));
  final doc = parse(response.body);

  final section = doc.querySelector('section[aria-labelledby=interfaces]')!;
  final anchorItems = section.querySelectorAll('li a');

  final interfaceNames = <String>[];

  for (final item in anchorItems) {
    final href = item.attributes['href']!;
    final interfaceName = href.split('/').last;

    interfaceNames.add(interfaceName);
  }

  interfaceNames.sort();

  print('${interfaceNames.length} items read from $apiUrl.');

  final pool = Pool(6);

  final interfaces = await pool.forEach(interfaceNames, (item) async {
    return populateInterfaceInfo(item, client: client);
  }).toList();

  client.close();

  const encoder = JsonEncoder.withIndent('  ');

  final file = File('tool/mdn.json');
  final json = {
    '__meta__': {
      'source': '[MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web)',
      'license':
          '[CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/)',
    },
    for (var i in interfaces) i.name: i.asJson,
  };
  file.writeAsStringSync('${encoder.convert(json)}\n');
}

Future<InterfaceInfo> populateInterfaceInfo(
  String interfaceName, {
  required http.Client client,
}) async {
  print('  $interfaceName');

  final info = InterfaceInfo(name: interfaceName);

  final url = '$apiUrl/$interfaceName';

  // Retrieve the interface docs page.
  final response = await client.get(Uri.parse(url));
  final doc = parse(response.body);

  final article = doc.querySelector('main article')!;
  final content = article.querySelector('div[class=section-content]')!;

  info.docs = '''
${_nodesToMarkdown(content.children)}

See also $url.''';

  // Gather property info.
  for (final dt in article.querySelectorAll('dt[id]')) {
    final id = dt.attributes['id']!;

    if (id.startsWith('${interfaceName.toLowerCase()}.')) {
      final name = id.substring(interfaceName.length + 1);
      final property = Property(name: name);

      final index = dt.parent!.children.indexOf(dt);
      final dd = dt.parent!.children[index + 1];
      if (dd.localName == 'dd') {
        property.docs = _nodesToMarkdown(dd.children);
      }

      info.properties.add(property);
    }
  }

  info.properties.sort((a, b) => a.name.compareTo(b.name));

  return info;
}

class InterfaceInfo {
  final String name;
  late final String docs;

  final List<Property> properties = [];

  InterfaceInfo({required this.name});

  Map<String, dynamic> get asJson => {
        'docs': docs,
        if (properties.isNotEmpty)
          'properties': {for (var p in properties) p.name: p.docs},
      };
}

class Property {
  final String name;
  late final String docs;

  Property({required this.name});
}

String _nodesToMarkdown(List<dom.Element> nodes) {
  return nodes.map(_nodeToMarkdown).whereType<String>().join('\n\n');
}

String? _nodeToMarkdown(dom.Element node) {
  String value;

  switch (node.localName) {
    case 'p':
      value = getTextForNote(node);
      break;
    case 'blockquote':
      value = '> ${getTextForNote(node)}';
      break;
    case 'ul':
    case 'ol':
      final buf = StringBuffer();
      for (var child in node.querySelectorAll('li')) {
        buf.writeln('- ${getTextForNote(child)}');
      }
      value = buf.toString();
      break;
    case 'div':
      if (node.classes.contains('notecard')) {
        value =
            node.children.map(_nodeToMarkdown).whereType<String>().join('\n');
      } else if (node.classes.contains('code-example')) {
        final buf = StringBuffer();
        final pre = node.querySelector('pre')!;
        buf.writeln('```');
        buf.writeln(pre.text.trimRight());
        buf.writeln('```');
        value = buf.toString();
      } else {
        throw Exception('unhandled div type: ${node.classes}');
      }
      break;
    case 'dl':
      final buf = StringBuffer();
      buf.writeln('| --- | --- |');
      for (var child in node.children) {
        if (child.localName == 'dt') {
          buf.write('| ${getTextForNote(child).trim()} ');
        } else if (child.localName == 'dd') {
          buf.writeln('| ${getTextForNote(child).trim()} |');
        }
      }
      value = buf.toString();
      break;
    case 'figure':
    case 'svg':
      return null;
    default:
      throw Exception('unhandled node type: ${node.localName}');
  }

  return value.trim();
}

String getTextForNote(dom.Element node) {
  final visitor = MarkdownTextVisitor();
  visitor.visit(node);
  return visitor.toString();
}

class MarkdownTextVisitor extends TreeVisitor {
  final StringBuffer buf = StringBuffer();

  @override
  void visitText(dom.Text node) {
    buf.write(node.data);
  }

  @override
  void visitElement(dom.Element node) {
    switch (node.localName) {
      case 'strong':
        buf.write('**');
        visitChildren(node);
        buf.write('**');
        break;
      case 'br':
        buf.writeln();
        buf.writeln();
        break;
      case 'a':
        // TODO(devoncarew): Fixup relative urls? Convert to symbol references?
        final href = node.attributes['href'];
        if (href != null && href.startsWith('https://')) {
          buf.write('[');
          visitChildren(node);
          buf.write(']($href)');
        } else {
          visitChildren(node);
        }
        break;
      case 'code':
        buf.write('`');
        visitChildren(node);
        buf.write('`');
        break;
      default:
        visitChildren(node);
        break;
    }
  }

  @override
  String toString() => buf.toString();
}
