## Updating the package

The Dart code in this package is generated from Web IDL definitions and MDN API
documentation.

### Regenerating the package

To regenerate the package from the current IDL versions, run:

```shell
dart tool/update_bindings.dart
```

### Updating the dartdoc info from MDN

package:web's dartdoc comments come from the
[MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web) project. In order
to update to the latest version of the documentation, run:

```shell
dart tool/scrape_mdn.dart
```

That will collect the MDN documentation into `third_party/mdn/mdn.json`; changes
to that file should be committed to git. You'll need to run
`tool/update_bindings.dart` to produce Dart code using the updated documentation.

### Updating to use the latest Web IDL versions

To re-generate the package from newer IDL versions, you can either run:

```shell
dart tool/update_bindings.dart --update
```

or, edit manually edit `tool/generator/package.json` to use specific IDL
versions, and re-run `tool/update_bindings.dart`.

## Web IDL versions

Based on:

<!-- START updated by tool/update_bindings.dart. Do not modify by hand -->
| Item | Version |
| --- | --: |
| `@webref/css` | [6.11.0](https://www.npmjs.com/package/@webref/css/v/6.11.0) |
| `@webref/elements` | [2.2.2](https://www.npmjs.com/package/@webref/elements/v/2.2.2) |
| `@webref/idl` | [3.43.1](https://www.npmjs.com/package/@webref/idl/v/3.43.1) |
<!-- END updated by tool/update_bindings.dart. Do not modify by hand -->

For instructions on re-generating the DOM bindings, see the
[generator docs](generator/README.md).
