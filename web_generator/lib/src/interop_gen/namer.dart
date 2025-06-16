// typedef ID = ({String type, String name, String? index});

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

  /// Adds a [name] to used names.
  void markUsed(String name) {
    _usedNames.add(name);
  }
}
