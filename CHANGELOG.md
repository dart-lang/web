## 0.5.0-wip

- Redeprecate APIs that were deprecated in `0.4.1` but undeprecated in `0.4.2`.

## 0.4.2

- Undeprecate some APIs and helpers library that were deprecated in `0.4.1`.
  Because deprecations are breaking in Flutter, they should be done in a
  breaking change.

## 0.4.1

- Exported the helper libraries from `web.dart`.
- Deprecated the `helpers.dart` library in favor of `web.dart`.
- Updated the readme to include usage info and package status.
- Added an example.
- Added event extensions for `WebSocket`
- Fixes to the return types of the `append()` and `clone()` extension methods on
  `Node`.
- Deprecated `NodeGlue.append` in favor of `Node.appendChild`.
- Deprecated `NodeGlue.clone` in favor of `Node.cloneNode`.
- Updated `@webref/css` to `6.10.0`.

## 0.4.0

- Remove `implements JSObject` from all types. This is needed to move the JS
  types exposed in `dart:js_interop` to extension types. This subtyping will be
  added back in a future version when we move all `package:web` types to extension
  types.
- Add `onMessage` getter to `WindowEventGetters` extension methods.
- `helpers.dart`: expose the `EventStreamProviders` class.
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
