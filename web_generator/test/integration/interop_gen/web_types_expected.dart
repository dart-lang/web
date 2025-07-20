// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:web/web.dart' as _i2;

@_i1.JS()
external _i2.CustomEvent get myCustomEvent;
@_i1.JS()
external _i2.ShadowRoot myShadowRoot;
@_i1.JS()
external void handleMouseEvent(_i2.MouseEvent event);
@_i1.JS()
external _i2.URL generateUrl(String path);
@_i1.JS()
external _i1.JSPromise<_i2.WebGLBuffer> convertToWebGL(
    _i1.JSArrayBuffer buffer);
@_i1.JS()
external String getHTMLElementContent<T extends _i2.HTMLElement>(T element);
@_i1.JS()
external _i2.HTMLButtonElement get button;
@_i1.JS()
external _i2.HTMLDivElement get output;
@_i1.JS()
external void handleButtonClick(_i2.MouseEvent event);
@_i1.JS()
external void handleInputChange(_i2.Event event);
