## 0.1.0-wip

- **Breaking**: Transferred package ownership to the Dart team (`labs.dart.dev`)
  and replaced the `0.0.1` `dart:html`, `dart:js`, and `package:js` API
  (`JsInterop` and `InteropedMap`) with utilities and typed bindings for
  `dart:js_interop` and `dart:js_interop_unsafe`.
- Added `package:js_interop/js_interop.dart`:
  - `JSDate` extension type for JavaScript `Date` and `DateTimeToJSDate`
    (`DateTime.toJS`).
  - `JSRecord` extension type for string-keyed JavaScript object maps and
    `MapToJSRecord` (`Map<String, V>.toJSRecord`).
  - `JSMap`, `JSSet`, and `JSSetLike` extension types for JavaScript `Map`,
    `Set`, and set-like objects, plus `MapToJSMap` (`Map.toJS`) and `SetToJSSet`
    (`Set.toJS`).
  - `JSPair` extension type for heterogeneous two-element JavaScript arrays and
    `RecordPairToJSPair` (`(E1, E2).toJS`).
- Added `package:js_interop/unsafe.dart` with `JSObjectUnsafeExtension` on
  `JSObject` exposing JavaScript `Object` and `Reflect` reflection helpers.
- Require `sdk: ^3.13.0`.

## 0.0.1

- Initial community release prior to transfer to the Dart team
  (`labs.dart.dev`), providing `JsInterop` (`fn`, `map`, `script`, `hasContext`,
  `safeAddScript`) and `InteropedMap` built on `dart:html`, `dart:js`,
  `dart:js_util`, and `package:js` (`sdk: '>=2.15.0 <3.0.0'`).
