# 🚀 VS Code Interop Generation: Status & Master Plan

We are systematically upgrading the `js_interop_gen` compiler engine to produce a **100% valid, standard, and statically analyze-clean Dart library** from the massive, full-scale VS Code API definition (`vscode_input.d.ts`). 

Every single compile warning, diagnostic issue, and type boundary error in the generated output must be resolved at the compiler level—**no cheating, no exclusions in `analysis_options.yaml`**.

---

## 🛠️ What Has Been Completed Successfully

1. **Cyclic Type Stack Overflow**: Added early class shell registration to break mutual recursion loops.
2. **Module Generic Parameter Resolution**: Relocated generic type parameter checks to support generic resolution inside module namespaces.
3. **String-Literal Module Declaration**: Added parser support for `declare module 'vscode'`.
4. **Idempotent Rescoping & Signature Deduplication**: Restored unique name preservation across rescoping passes to prevent name drift.
5. **Type Alias Grouping Isolation**: Isolated `TypeAliasDeclaration`s in the grouping phase to prevent they from colliding with classes.
6. **EnumMember Type Resolution**: Added recursive symbol resolution to map enum member type references back to parent enum types.
7. **Mismatched Unique-Suffix References (Fixed)**:
   - Implemented a compiler-wide `transformedCache` in [Transformer](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/interop_gen/transform/transformer.dart) mapping `TSNode` AST nodes to their transformed declarations.
   - Intercepted recursive resolution in `getTypeFromSymbol` and `searchForDeclRecursive` inside [type_resolver.dart](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/interop_gen/transform/type_resolver.dart) to map type references back to their single, clean original declaration, eliminating temporary suffixed types (like `Uri$176`).
8. **Duplicate Union Method Definitions (Fixed)**:
   - Implemented getter-name-based deduplication in `_UnionOrIntersectionDeclaration` inside [types.dart](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/ast/types.dart) using `_typeNameForGetter` to avoid generating duplicate getters (like `asTaskScope`) in union extension types.
9. **Nullable JSAny & Void casts (Fixed)**:
   - Modified union getter generation in [types.dart](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/ast/types.dart) to return the representation parameter `_` directly when the type is `void` or `JSAny` (as `.toDart` is invalid and unavailable for these types), eliminating the `unchecked_use_of_nullable_value` errors.

---

## 🎯 Remaining Hurdles: Strict Compliance Roadmap

To get the generated output to be 100% green under the strict Dart analyzer, we will systematically address the remaining **6 distinct compiler error patterns**:

### 1. Non-Type as Type Argument (`non_type_as_type_argument`) - ✅ (Fixed)
* **The Issue**: Inside `PromiseLike` and several other classes, union types are referenced inside generic arguments (e.g. `PromiseLike<AnonymousUnion_3555654>`), but the compiler fails to emit the concrete `AnonymousUnion_3555654` class definition.
* **Roadmap**: Trace how `DependencyWalker` collects generic type arguments from `ReferredType` and ensure that they are registered and emitted in the output. (Fixed by introducing unique generic arguments in `ReferredType.id` walk context!)

### 2. Type Argument Not Matching Bounds (`type_argument_not_matching_bounds`) - ✅ (Fixed)
* **The Issue**: A type argument (like `JSString?`) is passed to a parameter with a non-nullable bound (`K extends JSString`).
* **Roadmap**: Update type mapping to strips nullability markers (`?`) when generating arguments bound to non-nullable bounds, or propagate nullability correctly to the parameter bounds. (Fixed by overriding and stripping parent nullability leaks inside ReferredType.emit type argument mapping!)

### 3. Extended Type Representation Not Supertype (`extension_type_implements_representation_not_supertype`) - ✅ (Fixed)
* **The Issue**: `JSArrayType` is not a supertype of the representation type `JSObject` for `RegExpExecArray`.
* **Roadmap**: Align class/interface hierarchy representation in the generator. (Fixed by dynamically resolving non-JSObject representation types from parent extendees recursively inside getRepresentationType, and always enforcing them for interface definitions!)

### 4. Deprecated Annotation Empty Arguments (`no_annotation_constructor_arguments`) - ✅ (Fixed)
* **The Issue**: `@Deprecated` annotations are emitted without constructor arguments (requires `@Deprecated('...')`).
* **Roadmap**: Update deprecation documentation mapping to always supply a default descriptive message. (Fixed by supplying a default `'Deprecated'` message string inside Annotation.emit for deprecated kinds!)

### 5. Inherited Member Conflict (`extension_type_inherited_member_conflict`)
* **The Issue**: Extension types inheriting from multiple interfaces get colliding member definitions.
* **Roadmap**: Detect and redeclare colliding getters/setters.

### 6. Return of Invalid Type (`return_of_invalid_type`)
* **The Issue**: Return types in nested events fail to match parameter type bounds correctly.
* **Roadmap**: Ensure covariant or generic type conversions align safely.

---

## 🔄 The Developer Cycle: Targeted Iteration Workflow

To ensure 100% code safety and a perfectly clean repository, we follow a disciplined, test-driven development loop for each remaining hurdle:

1. **Identify the Next Targeted Fix**:
   - Run `dart analyze test/integration/vscode_actual.dart | grep "error -"` to isolate a specific compiler error pattern.
2. **Implement the Engine Fix**:
   - Make targeted, isolated modifications to the AST and generator source files under `lib/src/`.
3. **Create a Dedicated Unit Test**:
   - Write a small, self-contained TypeScript declaration input (`*_input.d.ts`) inside `test/integration/interop_gen/` reproducing the isolated compiler pattern.
   - Generate the clean, valid expected golden (`*_expected.dart`) by running the manual generation script:
     ```bash
     node --enable-source-maps main.mjs --input=../../test/integration/interop_gen/<test_name>_input.d.ts --output=../../test/integration/interop_gen/<test_name>_expected.dart --declaration
     ```
4. **Verify the Test Passes & is Analyzer Clean**:
   - Run the unit test suite to guarantee the new golden matches the compiler's optimized output:
     ```bash
     dart test test/integration/interop_gen_test.dart
     ```
   - Run `dart analyze` on the entire `js_interop_gen` project to guarantee that the compiler source files under `lib/` and all test files are 100% statically analyze clean.
   - Run `dart analyze test/integration/interop_gen/<test_name>_expected.dart` to guarantee the generated unit test golden itself is 100% statically analyze clean.
5. **Stage & Commit with `-n`**:
   - Stage ONLY your core engine changes and the targeted unit test files (`*_input.d.ts` and `*_expected.dart`).
   - Commit the standalone milestone using the `-n` (no-verify) flag to bypass environment-specific pre-commit hooks:
     ```bash
     git commit -n -m "fix: <isolated description of your targeted fix>"
     ```
6. **Verify VS Code Progress (Periodic Rebuild)**:
   - Run the full-scale VS Code integration test with `_rewriteFiles = true` set in [test_shared.dart](file:///Users/kevmoo/github/web/js_interop_gen/test/test_shared.dart) to rebuild `vscode_expected.dart`.
   - Revert `_rewriteFiles = false` and run `dart analyze test/integration/vscode_expected.dart | grep "error -"` to evaluate the new error count and verify overall progress. Keep `vscode_expected.dart` untracked in your local workspace.
7. **Repeat**:
   - Do NOT commit the massive `vscode_expected.dart` golden file until all 6 hurdles are fully resolved, leaving us with a 100% statically analyze-clean VS Code output.

