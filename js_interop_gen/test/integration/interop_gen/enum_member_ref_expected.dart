// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type const TaskScope._(int _) {
  static const TaskScope Global = TaskScope._(1);

  static const TaskScope Workspace = TaskScope._(2);
}
extension type Task._(_i1.JSObject _) implements _i1.JSObject {
  external Task();

  external TaskScope scope;
}
