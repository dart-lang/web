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

  test('modify child nodes using JSLiveNodeListWrapper', () {
    void expectNodeListEquals(List<Node> list, List<String> contents) {
      expect(list.length, contents.length);
      for (var i = 0; i < contents.length; i++) {
        expect(list[i].textContent, contents[i]);
      }
    }

    final div = (document.createElement('div'))
      ..append(document.createElement('div')..textContent = 'e1')
      ..append(document.createElement('div')..textContent = 'e2')
      ..append(document.createElement('div')..textContent = 'e3');

    final childNodesList = div.childNodesAsList;
    final childrenList = div.childrenAsList;

    // Ensure initial lists are correct.
    expectNodeListEquals(childNodesList, ['e1', 'e2', 'e3']);
    expectNodeListEquals(childrenList, ['e1', 'e2', 'e3']);

    childrenList.removeWhere((node) => node.textContent == 'e2');

    // Ensure both list were updated.
    expectNodeListEquals(childNodesList, ['e1', 'e3']);
    expectNodeListEquals(childrenList, ['e1', 'e3']);

    // add only text nodes
    childNodesList
        .addAll([document.createTextNode('t1'), document.createTextNode('t2')]);

    // Ensure only childNodes list changed
    expectNodeListEquals(childNodesList, ['e1', 'e3', 't1', 't2']);
    expectNodeListEquals(childrenList, ['e1', 'e3']);

    // add node via children
    childrenList.add(document.createElement('div')..textContent = 'e4');
    // add node via childNodes
    childNodesList.add(document.createElement('div')..textContent = 'e5');
    // add node directly to parent
    div.appendChild(document.createElement('div')..textContent = 'e6');

    // Ensure 3 elements were added to both lists
    expectNodeListEquals(
        childNodesList, ['e1', 'e3', 't1', 't2', 'e4', 'e5', 'e6']);
    expectNodeListEquals(childrenList, ['e1', 'e3', 'e4', 'e5', 'e6']);

    // replace element with text node
    childNodesList[4] = document.createTextNode('t3');

    // test retainWhere, keep Elements only
    childNodesList.retainWhere((e) => e.isA<Element>());

    // Ensure only text nodes were removed
    expectNodeListEquals(childNodesList, ['e1', 'e3', 'e5', 'e6']);
    expectNodeListEquals(childrenList, ['e1', 'e3', 'e5', 'e6']);

    // test removeRange
    childrenList.removeRange(1, 3);

    // Ensure 2 elements were removed
    expectNodeListEquals(childNodesList, ['e1', 'e6']);
    expectNodeListEquals(childrenList, ['e1', 'e6']);

    // test []= range exception
    expect(() => childNodesList[10] = document.createTextNode('nope'),
        throwsRangeError);

    // test remove
    final removeMe = childNodesList[0];
    expect(childNodesList.remove(removeMe), true);
    expectNodeListEquals(childNodesList, ['e6']);

    // test remove with objects that are not in list
    expect(childNodesList.remove(removeMe), false);
    expect(childNodesList.remove(null), false);
    // ignore: collection_methods_unrelated_type
    expect(childNodesList.remove('test'), false);

    final differentParentDiv = document.createElement('div');
    document.createElement('div').append(differentParentDiv);
    expect(childNodesList.remove(differentParentDiv), false);

    // test if nothing was removed
    expectNodeListEquals(childNodesList, ['e6']);

    final newTextNodes = [
      document.createTextNode('t3'),
      document.createTextNode('t4')
    ];
    final newDiv = (document.createElement('div'))
      ..append(document.createElement('div')..textContent = 'e7')
      ..append(document.createElement('div')..textContent = 'e8');

    // adding text nodes via addAll
    childNodesList.addAll(newTextNodes);
    expectNodeListEquals(childNodesList, ['e6', 't3', 't4']);
    expectNodeListEquals(childrenList, ['e6']);

    // adding div nodes from other element
    childrenList.addAll(newDiv.childrenAsList);
    expectNodeListEquals(childNodesList, ['e6', 't3', 't4', 'e7', 'e8']);
    expectNodeListEquals(childrenList, ['e6', 'e7', 'e8']);

    // adding from self should throw exception
    expect(() => childrenList.addAll(div.childrenAsList), throwsArgumentError);
    expect(
        () => childNodesList.addAll(div.childNodesAsList), throwsArgumentError);

    // insertAll test
    childNodesList.insertAll(
        1, [document.createTextNode('t5'), document.createTextNode('t6')]);
    expectNodeListEquals(
        childNodesList, ['e6', 't5', 't6', 't3', 't4', 'e7', 'e8']);
    expectNodeListEquals(childrenList, ['e6', 'e7', 'e8']);

    // empty elements list
    childrenList.clear();
    expectNodeListEquals(childNodesList, ['t5', 't6', 't3', 't4']);
    expectNodeListEquals(childrenList, []);

    // empty both lists
    childNodesList.clear();
    expectNodeListEquals(childNodesList, []);
    expectNodeListEquals(childrenList, []);
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

  test('converts from a JS to a Dart URL', () {
    final url =
        URL('https://foo:bar@example.org:1234/path?query#fragment').toDart;
    expect(url.scheme, equals('https'));
    expect(url.userInfo, equals('foo:bar'));
    expect(url.host, equals('example.org'));
    expect(url.port, equals(1234));
    expect(url.path, equals('/path'));
    expect(url.query, equals('query'));
    expect(url.fragment, equals('fragment'));
  });

  test('converts from a Dart to a JS URL', () {
    final url =
        Uri.parse('https://foo:bar@example.org:1234/path?query#fragment').toJS;
    expect(url.protocol, equals('https:'));
    expect(url.username, equals('foo'));
    expect(url.password, equals('bar'));
    expect(url.hostname, equals('example.org'));
    expect(url.port, equals('1234'));
    expect(url.pathname, equals('/path'));
    expect(url.search, equals('?query'));
    expect(url.hash, equals('#fragment'));
  });

  test('Uri.toJS throws an ArgumentError for a relative URL', () {
    expect(() => Uri.parse('/path').toJS, throwsArgumentError);
  });
}
