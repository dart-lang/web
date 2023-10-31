## 0.3.1-dev
- Add `createIFrameElement` method to `helpers.dart`.
- Updated types to account for union types.
- Fixed issue where all `JSAny`s were treated as nullable.
- Changed `JSVoid` to `void`.
- `interface mixin`s are no longer emitted as interfaces. Their members are
instead added to the interface that mixes them in.

## 0.3.0

- Updated source IDL to `v3.39.1`.
- Fixed a bug where `typedef`s were not declared with the IDL type's
  nullability.
- Types that were aliased to `double` are now aliased to `num`. This is to make
  it easier for users to pass integer values without going through a cast and to
  make migration from `dart:html` easier.

## 0.2.2-beta

- Updates SDK version minimum to 3.2.0-194.0.dev.
- Removes `isInstanceOfDomType` as `dart:js_interop` now exposes
  `instanceOfString`.

## 0.2.1-beta

- `helpers.dart`
  - Expose `EventStreamProvider`

## 0.2.0-beta

- Added `helpers.dart` top-level library.
- Require Dart 3.2 pre-release.
- Update to IDL 3.38.2

## 0.1.4-beta

- Support `bool`, `int`, `double`, `String` in APIs.

## 0.1.3-beta

- CSS properties can now be accessed directly.

## 0.1.2-beta

- `JSAny` as an IDL type now includes `null`.

## 0.1.1-beta

- Objects now inherit from JSObject.

## 0.1.0-beta

- First release.
