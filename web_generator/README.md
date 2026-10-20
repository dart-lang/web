This package contains generator scripts specific to [`package:web`](https://pub.dev/packages/web).

## Web IDL Definitions
To generate Dart interfaces for a given `.idl` file, run the following at the root of this package:
```shell
dart bin/update_idl_bindings.dart
```

If multiple files are passed, the output option is regarded as an output directory instead.

To regenerate `web` bindings from the current IDL versions, run the entrypoint without any arguments:

```shell
dart bin/update_idl_bindings.dart
```

### Update to the latest Web IDL versions and regenerate

To re-generate the package from newer IDL versions, you can either run:

```shell
dart bin/update_idl_bindings.dart --update
```

which installs the latest `@webref/*` and `@mdn/browser-compat-data` releases
(including new major versions) into this package's `package.json`.

Alternatively, manually edit `package.json` to use specific versions, and re-run
`update_idl_bindings.dart`.

### Browser engine overrides (`engine_overrides.json`)

`@webref/idl` tracks latest Editor's Drafts and applies curation patches that
occasionally diverge from what shipping browser engines (Blink, Gecko, WebKit)
implement. `js_interop_gen/lib/src/engine_overrides.json` pins targeted AST and
interface-visibility overrides before translation:

1. **Self-pruning on roll**: `update_idl_bindings.dart` fails with a
   `StateError` if any override in `engine_overrides.json` is unused or already
   matches `@webref/idl` (having become a no-op). Delete those entries and
   re-run.
2. **Reviewing `web/tool/api.txt`**: After rolling `@webref/idl` or
   `@mdn/browser-compat-data`, inspect `git diff web/tool/api.txt` for
   unintended signature widenings (e.g., concrete types widened to `JSAny`,
   `void` changed to `JSPromise` before engines ship it, or single-engine
   interfaces enabled in BCD) and add an entry with a `"reason"` if needed.
3. **3-engine WebIDL census (`tool/engine_census/`)**: To audit `@webref/idl`
   against shipping Blink, Gecko, and WebKit WebIDL and feature-flag files (or
   look up a specific `Interface.member` across all 3 engines), see
   [`tool/engine_census/README.md`](tool/engine_census/README.md).

### Public API golden

`web/tool/api.txt` is a [`package:api_summary`](https://pub.dev/packages/api_summary)
summary of `package:web`'s public API, including member signatures, so API
changes are visible in diffs. `update_idl_bindings.dart` regenerates it after
generating the bindings, and `web/test/api_test.dart` verifies that it is up to
date. To regenerate it manually, run the following in `web/`:

```shell
dart run api_summary --output tool/api.txt
```

The summary depends on the Dart SDK version, so regenerate it with a current
dev or beta SDK (CI checks it on `dev`), not the minimum supported SDK.

#### Updating the dartdoc info from MDN

package:web's dartdoc comments come from the
[MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web) project. In order
to update to the latest version of the documentation, run:

```shell
dart bin/scrape_mdn.dart
```

That will collect the MDN documentation into `third_party/mdn/mdn.json`; changes
to that file should be committed to git. You'll need to run
`update_idl_bindings.dart` to produce Dart code using the updated documentation.

### Generation conventions

The generator scripts use a number of conventions to consistently handle Web IDL
definitions:

#### Interfaces

- Interfaces are emitted as extension types that wrap and implement `JSObject`.
- Interface inheritance is maintained using `implements` between extension
  types.
- Members of partial interfaces, partial mixins, and mixins are added to the
  interfaces that include them, and therefore do not have separate declarations.

#### Types

- Generic types include the generic in the case of `JSArray` and `JSPromise`.
- Enums are typedef'd to `String`.
- Callbacks and callback interfaces are typedef'd to `JSFunction`.
- In general, we prefer the Dart primitive over the JS type equivalent wherever
  possible. For example, APIs use `String` instead of `JSString`.
- If a type appears in a generic position and it was typedef'd to a Dart
  primitive type, it is replaced with the JS type equivalent to respect the type
  bound of `JSAny?`.
- Union types are computed by picking the least upper bound of the types in the
  JS type hierarchy, where every interface is equivalent to `JSObject`.
- Dictionary and typedef types are only emitted if they're used by another API.

#### Compatibility

- The generator uses the
  [MDN compatibility data](https://github.com/mdn/browser-compat-data) to
  determine what members, interfaces, and namespaces to emit. Currently, we only
  emit code that is standards track and is not experimental to reduce the number
  of breaking changes.

### Generate all bindings

To ignore the compatibility data and emit all members, run:

```shell
dart bin/update_idl_bindings.dart --generate-all
```

This is useful if you want to avoid having to write bindings manually for some
experimental and non-standard APIs.

## Web IDL versions

Based on:

<!-- START updated by bin/update_idl_bindings.dart. Do not modify by hand -->
| Item | Version |
| --- | --: |
| `@mdn/browser-compat-data` | [8.1.6](https://www.npmjs.com/package/@mdn/browser-compat-data/v/8.1.6) |
| `@webref/css` | [8.7.7](https://www.npmjs.com/package/@webref/css/v/8.7.7) |
| `@webref/elements` | [2.9.2](https://www.npmjs.com/package/@webref/elements/v/2.9.2) |
| `@webref/idl` | [3.85.2](https://www.npmjs.com/package/@webref/idl/v/3.85.2) |

Browser engine WebIDL baselines (`js_interop_gen/lib/src/engine_overrides.json`):

| Engine | Browser | Ref | Commit |
| --- | --- | --- | --- |
| Blink | Chrome 155.0.8059.84 | `155.0.8059.84` | [`5869fe3135`](https://github.com/chromium/chromium/commit/5869fe313571d75152b77813cf0a4ee26a4e6df0) |
| Gecko | Firefox 158.0 | `FIREFOX_158_0_RELEASE` | [`3c71aeacdb`](https://github.com/mozilla-firefox/firefox/commit/3c71aeacdb296402e41fb2084b13e797d1770642) |
| WebKit | Safari 27.0 | `safari-7625.1.29.18-branch` | [`d60793ae18`](https://github.com/WebKit/WebKit/commit/d60793ae18be892cdc16459584a7b00283ffefbd) |
<!-- END updated by bin/update_idl_bindings.dart. Do not modify by hand -->
