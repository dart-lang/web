@TestOn('browser')

import 'package:test/test.dart';
import 'package:web/dom.dart';

void main() {
  test('Hello World!', () {
    final div = document.createElement('div') as HTMLDivElement;
    div.innerText = 'Hello World!';
    div.id = 'foo';
    document.body!.appendChild(div);
    final found = document.getElementById('foo') as HTMLDivElement;
    expect(found.innerText, equals('Hello World!'));
  });
}
