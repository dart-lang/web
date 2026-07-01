// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type TaskScope._(_i1.JSNumber _) implements _i1.JSNumber {
  static final TaskScope Global = TaskScope._(1.toJS);

  static final TaskScope Workspace = TaskScope._(2.toJS);
}
extension type Task._(_i1.JSObject _) implements _i1.JSObject {
  external Task();

  external TaskScope scope;
}
