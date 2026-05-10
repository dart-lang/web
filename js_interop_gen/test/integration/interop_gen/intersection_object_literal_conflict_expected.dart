// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type OptionHolder._(_i1.JSObject _) implements _i1.JSObject {
  external bool? canPickMany;
}
typedef IntersectWithLiteral = AnonymousIntersection_3818894;
extension type AnonymousType_5510480._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_5510480({bool canPickMany});

  external bool canPickMany;
}
extension type AnonymousIntersection_3818894._(_i1.JSObject _)
    implements OptionHolder, AnonymousType_5510480 {
  external bool? get canPickMany;
  external set canPickMany(bool? value);
  OptionHolder get asOptionHolder => (_ as OptionHolder);

  AnonymousType_5510480 get asAnonymousType_5510480 =>
      (_ as AnonymousType_5510480);
}
