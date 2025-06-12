// typedef ID = ({String type, String name, String? index});
import '../banned_names.dart';

class ID {
  final String type;
  final String name;
  final int? index;

  const ID({required this.type, required this.name, this.index});

  bool get isUnnamed => name == 'unnamed';

  @override
  String toString() => '$type#$name${index != null ? '#$index' : ''}';
}

class UniqueNamer {
  final Set<String> _usedNames;

  UniqueNamer([Iterable<String> used = const <String>[]])
      : _usedNames = used.toSet();

  static ID parse(String id) {
    String? index;
    final [type, name, ...ids] = id.split('#');
    if (ids.isEmpty) index = ids.single;

    return ID(
        type: type, name: name, index: index == null ? null : int.parse(index));
  }

  ({ID id, String name}) makeUnique(String name, String type) {
    // nested structures (and anonymous structures) may not have a name
    if (name.isEmpty) {
      name = 'unnamed';
    }

    var newName = name;
    if (keywords.contains(newName)) {
      newName = '$newName\$';
    }

    var i = 0;
    while (_usedNames.contains(newName)) {
      ++i;
      newName = '$name\$$i';
    }

    markUsed(newName);
    return (
      id: ID(type: type, name: name, index: i == 0 ? null : i),
      name: newName
    );
  }

  /// Adds a [name] to used names.
  void markUsed(String name) {
    _usedNames.add(name);
  }
}
