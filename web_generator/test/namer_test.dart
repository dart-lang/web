import 'package:test/test.dart';
import 'package:web_generator/src/interop_gen/namer.dart';

void main() {
  group('Namer Test', () {
    final namer = UniqueNamer();

    test('Names', () {
      var newName = namer.makeUnique('foo', 'fun');
      expectNameMatches(newName, 'foo', 'fun');

      newName = namer.makeUnique('bar', 'fun');
      expectNameMatches(newName, 'bar', 'fun');

      newName = namer.makeUnique('bar', 'var');
      expectNameMatches(newName, r'bar$1', 'var');

      newName = namer.makeUnique('bar', 'var');
      expectNameMatches(newName, r'bar$2', 'var');

      newName = namer.makeUnique('box', 'var');
      expectNameMatches(newName, 'box', 'var');

      newName = namer.makeUnique('foo', 'fun');
      expectNameMatches(newName, r'foo$1', 'fun');
    });
  });

  group('Scoped Namer Test', () {
    final namer = ScopedUniqueNamer({'get', 'set'});

    test('Names', () {
      var newName = namer.makeUnique('foo', 'fun');
      expectNameMatches(newName, 'foo', 'fun');

      newName = namer.makeUnique('bar', 'get');
      expectNameMatches(newName, 'bar', 'get');

      newName = namer.makeUnique('bar', 'set');
      expectNameMatches(newName, 'bar', 'set');

      newName = namer.makeUnique('bar', 'var');
      expectNameMatches(newName, r'bar$1', 'var');

      newName = namer.makeUnique('box', 'var');
      expectNameMatches(newName, 'box', 'var');

      newName = namer.makeUnique('foo', 'fun');
      expectNameMatches(newName, r'foo$1', 'fun');
    });
  });
}

void expectNameMatches(
  ({ID id, String name}) name,
  String newName,
  String type,
) {
  expect(name.name, newName);
  expect(name.id.type, type);
}
