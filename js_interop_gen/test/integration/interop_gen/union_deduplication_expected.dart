// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_ignore, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type TaskScope._(_i1.JSNumber _) implements _i1.JSNumber {
  static final TaskScope Global = TaskScope._(1.toJS);

  static final TaskScope Workspace = TaskScope._(2.toJS);
}
typedef ScopeUnion = AnonymousUnion_3654794;
extension type AnonymousUnion_3654794._(TaskScope _) implements TaskScope {
  TaskScope get asTaskScope => _;
}
