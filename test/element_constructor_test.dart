// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('browser')
library;

import 'package:test/test.dart';
import 'package:web/web.dart';

void main() {
  test('Element constructors create the expected element', () {
    const html = 'http://www.w3.org/1999/xhtml';
    const svg = 'http://www.w3.org/2000/svg';
    const mathML = 'http://www.w3.org/1998/Math/MathML';
    final area = HTMLAreaElement();
    expect(area.tagName, 'AREA');
    expect(area.namespaceURI, html);
    final footer = HTMLElement.footer();
    expect(footer.tagName, 'FOOTER');
    expect(footer.namespaceURI, html);
    final mpath = SVGMPathElement();
    expect(mpath.tagName, 'mpath');
    expect(mpath.namespaceURI, svg);
    final annotation = MathMLElement.annotation();
    expect(annotation.tagName, 'annotation');
    expect(annotation.namespaceURI, mathML);
  });
}
