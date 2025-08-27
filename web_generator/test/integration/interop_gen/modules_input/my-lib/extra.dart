// ignore_for_file: constant_identifier_names, file_names
// ignore_for_file: non_constant_identifier_names

@_i1.JS('my-lib/extra')
library; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:js_interop' as _i1;

import '../my-lib.dart' as _i2;

@_i1.JS()
external void extraFn([_i2.Options? options]);
