// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes

@_i1.JS('vscode')
library;

import 'dart:js_interop' as _i1;

extension type Thenable<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external Thenable<AnonymousUnion_3555654<TResult1, TResult2>>
  then<TResult1 extends _i1.JSAny?, TResult2 extends _i1.JSAny?>([
    _AnonymousFunction_2123872<TResult1?, T?>? onfulfilled,
    _AnonymousFunction_1873223<TResult2?>? onrejected,
  ]);
}
extension type Uri._(_i1.JSObject _) implements _i1.JSObject {
  external Uri();

  external static Uri parse(String value);
}
extension type TextDocument._(_i1.JSObject _) implements _i1.JSObject {
  external Uri get uri;
}
extension type TextEditor._(_i1.JSObject _) implements _i1.JSObject {
  external TextDocument get document;
}
extension type workspace._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static Thenable<TextDocument> openTextDocument(Uri uri);
}
extension type _AnonymousFunction_2123872<
  TResult1 extends _i1.JSAny?,
  T extends _i1.JSAny?
>._(_i1.JSFunction _) implements _i1.JSFunction {
  external AnonymousUnion_2658987<TResult1> call(T value);
}
extension type _AnonymousFunction_1873223<TResult2 extends _i1.JSAny?>._(
  _i1.JSFunction _
) implements _i1.JSFunction {
  external AnonymousUnion_3247291<TResult2> call(_i1.JSAny? reason);
}
extension type AnonymousUnion_2658987<TResult1 extends _i1.JSAny?>._(
  _i1.JSAny _
) implements _i1.JSAny {
  TResult1 get asTResult1 => (_ as TResult1);

  Thenable<TResult1> get asThenableOfTResult1 => (_ as Thenable<TResult1>);
}
extension type AnonymousUnion_3247291<TResult2 extends _i1.JSAny?>._(
  _i1.JSAny _
) implements _i1.JSAny {
  TResult2 get asTResult2 => (_ as TResult2);

  Thenable<TResult2> get asThenableOfTResult2 => (_ as Thenable<TResult2>);
}
extension type AnonymousUnion_3555654<
  TResult1 extends _i1.JSAny?,
  TResult2 extends _i1.JSAny?
>._(_i1.JSAny _) implements _i1.JSAny {
  TResult1 get asTResult1 => (_ as TResult1);

  TResult2 get asTResult2 => (_ as TResult2);
}
