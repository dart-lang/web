## What's this?

Tools to generate Dart interfaces from TypeScript declaration files and Web IDL definitions.

This package is used to generate
[`web`](https://github.com/dart-lang/web/tree/main/web) from Web IDL definitions
and MDN API documentation.

## Using this
The tools to generate bindings are written in Dart, compiled to JavaScript, and
run on Node.

There are two entrypoints present in this package:
- `gen_interop_bindings.dart`: This entrypoint is for generating Dart interfaces from TS Declaration code, given the path to a `.d.ts` file
- `update_idl_bindings.dart`: This entrypoint is for generating Dart interfaces from Web IDL definitions, given the path to a `.idl` file. If no idl file is present, it, by default, generates code for `package:web`.

## TS Declarations
To generate Dart interfaces for a given `.d.ts` file, run the following at the root of this package:
```shell
dart bin/gen_interop_bindings.dart <input.d.ts> 
dart bin/gen_interop_bindings.dart -o <output> <input>
```

If multiple files are passed, the output option is regarded as an output directory instead.

For more information on the command-line options you can pass alongside, you can check the help information
```shell
dart bin/gen_interop_bindings.dart --help
```

### Configuration
The generator also has support for configurating the output of the generator, allowing support for configuring features like: variardic argument count, preamble (if any), TS Compiler Options, etc.

These configuration options can either be passed from the command line, or via a YAML configuration file. To pass a configuration file, pass the `--config` option.

Given a sample configuration file:
```yaml
input: a.d.ts
output: b.d.ts
ts-config-file: tsconfig.json
```

The following are equivalent
```shell
dart bin/gen_interop_bindings.dart -o b.d.ts --ts-config tsconfig.json a.d.ts
dart bin/gen_interop_bindings.dart --config config.yaml
```

Note that not all configuration options are direct mappings between the CLI and the configuration file.

### Configuration File Reference

| Option | Description | Example |
|--------|-------------|---------|
| `name` | The name of the bindings | <pre>`name: MyBindings`</pre> |
| `description` | A description of the bindings (optional) | <pre>`description: My awesome bindings`</pre> |
| `preamble` | Preamble text to insert before the bindings (optional) | <pre>`preamble: \|`<br>`  // Generated. Do not edit.`</pre> |
| `input` | A file (single string) or set of files (array of strings) passed into the generator | <pre>`input: bindings.d.ts`</pre> <br/> or <br/> <pre>`input: `<br>` - bindings.d.ts`</pre> |
| `output` | The output file or directory to write the bindings to | <pre>`output: lib/src/js`</pre> |
| `include` | Declarations to include in the generated output (as a list). Can either be passed as a raw string to match the full name, or as a regular expression. By default, the generator outputs **all exported declarations** | <pre>`include: `<br>` - myNumber`</pre> |
| `language_version` | The Dart Language Version to use, usually for formatting (optional) | <pre>`language_version: 3.6.0`</pre> |
| `ts_config` | An object consisting of TS Configurations following the [tsconfig.json file schema](https://www.typescriptlang.org/tsconfig/) used for configuring the TypeScript Program/Compiler (optional) | <pre>`ts_config: `<br>`  compilerOptions: `<br>`    target: es2020`</pre> |
| `ts_config_file` | The TS Configuration file (tsconfig.json) if any (optional) | <pre>`ts_config_file: tsconfig.json`</pre> |
| `generate_all` | Include generating declarations for code that isn't exported. Defaults to false | <pre>`generate_all: true`</pre> |
| `ignore_errors` | Ignore source code warnings and errors (they will still be printed). Defaults to false | <pre>`ignore_errors: true`</pre> |
| `functions.varargs` | The number of arguments that variable-argument functions should take. Defaults to 4 | <pre>`functions: `<br>`  varargs: 6`</pre> |

### Conventions

The generator scripts use a number of conventions to consistently handle TS
definitions:

#### Top Level Declarations
- Top level declarations are handled as top level dart `external` declarations annotated with `@JS`.

#### Enums
- Enums are represented as extension types with static members.
- In most cases, values are known beforehand, so the representation types of the resulting extension types are Dart primitive types with non-external static members.
- If the value for an enum is not given, then the representation type is an interop type, and any members without a value are marked as `external`

#### Interfaces and Classes
- Interfaces and Classes are emitted as extension types that wrap and implement `JSObject`
- Interface and Class inheritance is maintained using `implements` between extension types
- Classes have default constructors if none are provided
- Interface and Classes support members such as: properties, functions, operators, `call` declarations, construct signatures, getters and setters.
- Readonly properties are represented as getters.
- Overriding signatures are annotated with [`@redeclare`](https://pub.dev/documentation/meta/latest/meta/redeclare-constant.html). 
- Multiple instances of interfaces in a given scope are merged together into a single interface. Also supports merging with `var` declarations.

#### Namespaces
- Namespaces in TS are converted to extension types on `JSObject` with static members.
- Typed declarations (such as enums, classes, interfaces and namespaces) are prefixed and generated in the general module space.
- Constructor calls for classes are generated for every class in a namespace as a static redirect method.
- Namespaces nested inside the namespace are as well generated as static getters on the namespace, which are references to the namespaces themselves.
- Supports overloading and declaration merging with classes, interfaces, enums, `var` declarations, and functions.

#### Types
- Supports mapping basic JS types to Dart `js_interop` types.
- `never` type returned from a const declaration, function, readonly property or method has the declaration annotated with [`@doNotStore`](https://pub.dev/documentation/meta/latest/meta/doNotStore-constant.html). 
- Supports automatically mapping web types to `package:web` types
- Anonymous Unions/Intersections: Anonymous unions and intersections are represented as extension types with cast members to cast the value as a type in the union/intersection. If the union is homogenous and contains strings/numbers, then it is generated more like an enum, with specific static values. An intersection with `null` or `undefined` equals `never`
- Anonymous Objects: Anonymous objects are represented similar to interface declarations, with an object literal constructor.
- Anonymous Closures and Construct Signatures: Anonymous closures and construct signatures are represented as extension types on `JSFunction` overriding the `call` method. This allows for a stronger type signature than just `JSFunction`. While closures leave their calls as `external`, construct signatures just redirect to the class constructor.
- Generic types are represented as normal Dart generics, and they are constrained by `JSAny` by default.
- `typeof` declarations are references to the type of the declaration, which are:
  - Variable: The variable's type
  - Enum: An object representation of the enum (in order to support `keyof` correctly). 
  - Function: `JSFunction`
  - Otherwise, the extension type representation of the type that it refers to is used.
- `keyof` declarations are represented as unions of the keys for the operand type.

#### Other
- Supports importing/exporting declarations. If the files that are being imported are included in input, then such references are treated as imports in Dart, else the declarations are generated in-place.
- Supports documentation (JSDoc), and maps some annotations to Dart annotations such as `@deprecated` and `@experimental`

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

or, manually edit `lib/src/package.json` to use specific IDL versions, and
re-run `update_idl_bindings.dart`.

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
| `@mdn/browser-compat-data` | [7.2.3](https://www.npmjs.com/package/@mdn/browser-compat-data/v/7.2.3) |
| `@webref/css` | [6.23.22](https://www.npmjs.com/package/@webref/css/v/6.23.22) |
| `@webref/elements` | [2.5.4](https://www.npmjs.com/package/@webref/elements/v/2.5.4) |
| `@webref/idl` | [3.70.2](https://www.npmjs.com/package/@webref/idl/v/3.70.2) |
<!-- END updated by bin/update_idl_bindings.dart. Do not modify by hand -->
