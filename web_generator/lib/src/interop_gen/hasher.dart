/// A hasher is used to give a unique hash to a given anonymous declaration
class AnonymousHasher {
  static String hashUnion(List<String> parts) {
    final cloneParts = parts;
    cloneParts.sort((a, b) => a.compareTo(b));
    // TODO: A better way for hashing values
    return Object.hashAll(cloneParts).toString();
  }

  static String hashTuple(List<String> parts) {
    return Object.hashAll(parts).toString();
  }

  static String hashObject(List<(String, String)> parts) {
    final cloneParts = parts;
    cloneParts.sort((a, b) => a.$1.compareTo(b.$1));
    return Object.hashAll(cloneParts).toString();
  }
}
