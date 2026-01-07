// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Headers._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('content-type')
  external String contentType;

  @_i1.JS('Content-Length')
  external num contentLength;

  @_i1.JS('x-custom-header')
  external String? xCustomHeader;
}
