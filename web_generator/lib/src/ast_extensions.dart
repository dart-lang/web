import 'ast.dart';

extension AsReferredType<T extends NamedDeclaration> on T {
  ReferredType<T> get asReferredType =>
      ReferredType(name: name, declaration: this);

  ReferredType<T> asReferredTypeWithTypeArgs(List<Type> typeArgs) =>
      ReferredType(name: name, declaration: this, typeParams: typeArgs);
}
