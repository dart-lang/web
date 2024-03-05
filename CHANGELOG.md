## 0.5.1

- Add [`TrustedTypes`](https://web.dev/trusted-types) members.
- Include MDN API documentation as class and member dartdoc comments. Docs
  sourced from the [MDN Web Docs][] project; attributions and copyright
  licensing by Mozilla Contributors is licensed under [CC-BY-SA 2.5][].
- Add a constructor for each Element tag onto their respective Element
  interfaces.
- Remove `external` Element constructors that would result in a runtime error.
- Deprecate `createAudioElement` in favor of the `HTMLAudioElement` constructor.

[MDN Web Docs]: https://developer.mozilla.org/en-US/docs/Web
[CC-BY-SA 2.5]: https://creativecommons.org/licenses/by-sa/2.5/

## 0.5.0

- Redeprecate APIs that were deprecated in `0.4.1` but undeprecated in `0.4.2`.
- Add support for `dart fix` migrations from `dart:html` classes to
  `package:web` classes.
- Contribute a markdown file for the renamed classes from `dart:html` to
  `package:web` (see [renames.md](tool/renames.md)).
- Migrate classes to use interop extension types that implement `JSObject`.
- Add generics to APIs that use `JSArray` and `JSPromise`. Typedefs of a Dart
  primitive type are instead replaced with their JS type equivalent if they
  appear as a type parameter in order to conform with the type bounds of
  `JSArray` and `JSPromise`.
- Changed `record` types to be `JSObject` instead of `JSAny`.
- Reduce the number of DOM APIs we generate code for. Currently, the API needs
  to be standards-track, and be supported by Safari, Chrome, and Firefox.
- Updated the source IDL version to `3.43.1`.
- Deprecate a few type aliases in favor of their standardized versions:

  | Deprecated            | Preferred               |
  |-----------------------|-------------------------|
  | `AudioElement`        | `HTMLAudioElement`      |
  | `HtmlElement`         | `HTMLElement`           |
  | `CanvasElement`       | `HTMLCanvasElement`     |
  | `ImageElement`        | `HTMLImageElement`      |
  | `VideoElement`        | `HTMLVideoElement`      |
  | `CssStyleDeclaration` | `CSSStyleDeclaration`   |
  | `ContextEvent`        | `WebGLContextEvent`     |
  | `WebGL`               | `WebGLRenderingContext` |

- Deprecate the top-level `createElementTag`, `createCanvasElement`,
  `createIFrameElement`, and `querySelector` functions.
  Instead, use the standard creation and query methods on `document`.
- Deprecate the `client` extension methods on `MouseEvent` and `Touch`.
  Instead, directly use the `clientX` and `clientY` properties.
- Deprecate the `HttpRequest` API borrowed from `dart:html`.
  Consider migrating to `package:http` instead.

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
