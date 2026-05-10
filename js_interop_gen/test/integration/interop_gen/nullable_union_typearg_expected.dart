// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Holder<T extends _i1.JSString?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T value;
}
extension type Consumer._(_i1.JSObject _) implements _i1.JSObject {
  external Holder<_i1.JSString> useHolder;
}
