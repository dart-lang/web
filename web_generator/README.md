## What's this?

This package contains tools to generate
[`web`](https://github.com/dart-lang/web/tree/main/web) from Web IDL definitions
and MDN API documentation.

### Regenerating the package

The tool to generate bindings is written in Dart, compiled to JavaScript, and
run on Node.

To regenerate `web` bindings from the current IDL versions, run:

```shell
dart bin/update_idl_bindings.dart
```

## Update to the latest Web IDL versions and regenerate

To re-generate the package from newer IDL versions, you can either run:

```shell
dart bin/update_idl_bindings.dart --update
```

or, manually edit `lib/src/package.json` to use specific IDL versions, and
re-run `update_idl_bindings.dart`.

### Updating the dartdoc info from MDN

package:web's dartdoc comments come from the
[MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web) project. In order
to update to the latest version of the documentation, run:

```shell
dart bin/scrape_mdn.dart
```

That will collect the MDN documentation into `third_party/mdn/mdn.json`; changes
to that file should be committed to git. You'll need to run
`update_idl_bindings.dart` to produce Dart code using the updated documentation.

## Generation conventions

The generator scripts use a number of conventions to consistently handle Web IDL
definitions:

### Interfaces

- Interfaces are emitted as extension types that wrap and implement `JSObject`.
- Interface inheritance is maintained using `implements` between extension
  types.
- Members of partial interfaces, partial mixins, and mixins are added to the
  interfaces that include them, and therefore do not have separate declarations.

### Types

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

### Compatibility

- The generator uses the
  [MDN compatibility data](https://github.com/mdn/browser-compat-data) to
  determine what members, interfaces, and namespaces to emit. Currently, we only
  emit code that is standards track and is not experimental to reduce the number
  of breaking changes.

## Generate all bindings

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
| `@webref/css` | [6.20.3](https://www.npmjs.com/package/@webref/css/v/6.20.3) |
| `@webref/elements` | [2.4.0](https://www.npmjs.com/package/@webref/elements/v/2.4.0) |
| `@webref/idl` | [3.60.1](https://www.npmjs.com/package/@webref/idl/v/3.60.1) |
<!-- END updated by bin/update_idl_bindings.dart. Do not modify by hand -->
