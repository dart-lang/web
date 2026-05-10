// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

extension type const TaskScope._(int _) {
  static const TaskScope Global = TaskScope._(1);

  static const TaskScope Workspace = TaskScope._(2);
}
typedef ScopeUnion = AnonymousUnion_3654794;
extension type AnonymousUnion_3654794._(TaskScope _) implements TaskScope {
  TaskScope get asTaskScope => _;
}
