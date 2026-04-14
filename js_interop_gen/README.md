## What's this?

Tools to generate Dart interfaces from TypeScript declaration files and Web IDL definitions.

This package is used to generate
[`web`](https://github.com/dart-lang/web/tree/main/web) from Web IDL definitions
and MDN API documentation.

## Using this
The tools to generate bindings are written in Dart, compiled to JavaScript, and
run on Node.

There is one entrypoint present in this package:
- `js_interop_gen.dart`: This entrypoint is for generating Dart interfaces from TS Declaration code, given the path to a `.d.ts` file

### Requirements
#### Node.js
The js_interop_gen requires **Node.js v22 or newer**.
Older Node versions are not supported and may result in runtime failures.

## TS Declarations
To generate Dart interfaces for a given `.d.ts` file, run the following at the root of this package:
```shell
dart run js_interop_gen <input.d.ts> 
dart run js_interop_gen -o <output> <input>
```

If multiple files are passed, the output option is regarded as an output directory instead.

For more information on the command-line options you can pass alongside, you can check the help information
```shell
dart run js_interop_gen --help
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
dart run js_interop_gen -o b.d.ts --ts-config tsconfig.json a.d.ts
dart run js_interop_gen --config config.yaml
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
