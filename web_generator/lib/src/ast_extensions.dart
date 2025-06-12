import 'ast.dart';

extension AsReferredType<T extends Node> on T {
  ReferredType<T> get asReferredType =>
      ReferredType(name: name, declaration: this, exported: true);

  ReferredType<T> asReferredTypeWithTypeArgs(List<Type> typeArgs) =>
      ReferredType(
          name: name, declaration: this, exported: true, typeParams: typeArgs);
}
