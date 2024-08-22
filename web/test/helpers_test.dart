// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('browser')
library;

import 'dart:js_interop';

import 'package:test/test.dart';
import 'package:web/web.dart';

@JS('Object.is')
external bool _is(JSAny? a, JSAny? b);

void main() {
  test('instanceOfString works with package:web types', () {
    final div = document.createElement('div') as JSObject;

    expect(div.instanceOfString('bob'), false);
    expect(div.instanceOfString('HTMLDivElement'), true);
  });

  test('Converts a JS list to a dart list using JSImmutableListWrapper', () {
    final div = (document.createElement('div'))
      ..append(document.createElement('div')..text = '1')
      ..append(document.createElement('div')..text = '2')
      ..append(document.createElement('div')..text = '3');

    final List<Node> dartList =
        JSImmutableListWrapper<NodeList, Node>(div.querySelectorAll('div'));

    // Ensure accessing length does not throw.
    expect(() => dartList.length, returnsNormally);

    // Ensure list length is correct.
    expect(dartList.length, 3);

    // Ensure accessing any arbitrary item in the list does not throw.
    expect(() => dartList[0], returnsNormally);
  });

  test('cross-origin windows and locations can be accessed safely', () {
    const url = 'https://www.google.com';
    const url2 = 'https://www.example.org';

    void testCommon(CrossOriginWindow crossOriginWindow) {
      expect(crossOriginWindow.length, 0);
      expect(crossOriginWindow.closed, false);
      // We can't add an event listener on a cross-origin window, so just test
      // that a message can be sent without any errors.
      crossOriginWindow.postMessage('hello world'.toJS);
      crossOriginWindow.postMessage('hello world'.toJS, url.toJS);
      crossOriginWindow.postMessage('hello world'.toJS, url.toJS, JSArray());
      crossOriginWindow.location!.replace(url2);
      crossOriginWindow.location!.href = url;
      crossOriginWindow.blur();
      crossOriginWindow.focus();
      crossOriginWindow.close();
    }

    final openedWindow = window.openCrossOrigin(url)!;
    // Use `Object.is` to test that values can be passed to interop.
    expect(_is(openedWindow.opener!.window, window), true);
    expect(_is(openedWindow.top!.window, openedWindow.window), true);
    expect(_is(openedWindow.parent!.window, openedWindow.window), true);
    expect(_is(openedWindow.opener!.location!.location, window.location), true);
    expect(
        _is(openedWindow.opener!.parent?.window,
            window.parentCrossOrigin?.window),
        true);
    expect(_is(openedWindow.opener!.top?.window, window.topCrossOrigin?.window),
        true);
    expect(
        openedWindow.opener!.opener?.window, window.openerCrossOrigin?.window);
    testCommon(openedWindow);
    expect(openedWindow.closed, true);

    final iframe = HTMLIFrameElement();
    iframe.src = url;
    document.body!.append(iframe);
    final contentWindow = iframe.contentWindowCrossOrigin!;
    expect(contentWindow.opener, null);
    expect(_is(contentWindow.top?.window, window.topCrossOrigin?.window), true);
    expect(_is(contentWindow.parent!.window, window), true);
    expect(
        _is(contentWindow.parent!.location!.location, window.location), true);
    expect(
        _is(contentWindow.parent!.parent?.window,
            window.parentCrossOrigin?.window),
        true);
    expect(
        _is(contentWindow.parent!.top?.window, window.topCrossOrigin?.window),
        true);
    expect(
        _is(contentWindow.parent!.opener?.window,
            window.openerCrossOrigin?.window),
        true);
    testCommon(contentWindow);
    // `close` on a `contentWindow` does nothing.
    expect(contentWindow.closed, false);
  });
}
