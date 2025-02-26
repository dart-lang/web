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
      ..append(document.createElement('div')..textContent = '1')
      ..append(document.createElement('div')..textContent = '2')
      ..append(document.createElement('div')..textContent = '3');

    final List<Node> dartList =
        JSImmutableListWrapper<NodeList, Node>(div.querySelectorAll('div'));

    // Ensure accessing length does not throw.
    expect(() => dartList.length, returnsNormally);

    // Ensure list length is correct.
    expect(dartList.length, 3);

    // Ensure accessing any arbitrary item in the list does not throw.
    expect(() => dartList[0], returnsNormally);
  });

  test('responseHeaders transforms headers into a map', () async {
    final request = XMLHttpRequest()
      ..open('GET', 'www.google.com')
      ..send();

    await request.onLoad.first;

    expect(
      request.responseHeaders,
      allOf(
        containsPair('content-length', '10'),
        containsPair('content-type', 'text/plain; charset=utf-8'),
        containsPair('x-content-type-options', 'nosniff'),
        containsPair('x-frame-options', 'SAMEORIGIN'),
        containsPair('x-xss-protection', '1; mode=block'),
      ),
    );
  });

  test('cross-origin windows and locations can be accessed safely', () {
    // TODO(https://github.com/dart-lang/test/issues/2282): For some reason,
    // running `dart test` doesn't flag violations of same-origin policy,
    // allowing any unsafe accesses. When tested with `--pause-after-load` and
    // single stepped, however, the test correctly flags violations. Figure out
    // why and make this test always respect same-origin policy. Add some tests
    // to ensure that violations are being handled properly.
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
    expect(_is(openedWindow.opener!.unsafeWindow, window), true);
    expect(
        _is(openedWindow.top!.unsafeWindow, openedWindow.unsafeWindow), true);
    expect(_is(openedWindow.parent!.unsafeWindow, openedWindow.unsafeWindow),
        true);
    expect(_is(openedWindow.opener!.location!.unsafeLocation, window.location),
        true);
    expect(
        _is(openedWindow.opener!.parent?.unsafeWindow,
            window.parentCrossOrigin?.unsafeWindow),
        true);
    expect(
        _is(openedWindow.opener!.top?.unsafeWindow,
            window.topCrossOrigin?.unsafeWindow),
        true);
    expect(openedWindow.opener!.opener?.unsafeWindow,
        window.openerCrossOrigin?.unsafeWindow);
    testCommon(openedWindow);
    expect(openedWindow.closed, true);

    final iframe = HTMLIFrameElement();
    iframe.src = url;
    document.body!.append(iframe);
    final contentWindow = iframe.contentWindowCrossOrigin!;
    expect(contentWindow.opener, null);
    expect(
        _is(contentWindow.top?.unsafeWindow,
            window.topCrossOrigin?.unsafeWindow),
        true);
    expect(_is(contentWindow.parent!.unsafeWindow, window), true);
    expect(_is(contentWindow.parent!.location!.unsafeLocation, window.location),
        true);
    expect(
        _is(contentWindow.parent!.parent?.unsafeWindow,
            window.parentCrossOrigin?.unsafeWindow),
        true);
    expect(
        _is(contentWindow.parent!.top?.unsafeWindow,
            window.topCrossOrigin?.unsafeWindow),
        true);
    expect(
        _is(contentWindow.parent!.opener?.unsafeWindow,
            window.openerCrossOrigin?.unsafeWindow),
        true);
    testCommon(contentWindow);
    // `close` on a `contentWindow` does nothing.
    expect(contentWindow.closed, false);
  });
}
