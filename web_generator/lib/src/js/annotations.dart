/// An annotation representing that a given declaration is a union
/// of a given set of types
final class UnionOf {
  final List<Type> types;

  const UnionOf(this.types);
}
