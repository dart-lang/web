// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Event<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external void fire(T value);
}
extension type TargetClass._(_i1.JSObject _) implements _i1.JSObject {
  external Event<_i1.JSAny?> onEvent;
}
