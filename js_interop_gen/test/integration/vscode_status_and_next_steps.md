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

To get the generated output to be 100% green under the strict Dart analyzer, we will systematically address the remaining **3 distinct compiler error patterns**:

### 1. Generic Parameter Blindspot (`non_type_as_type_argument`)
* **The Issue**: Inside standard generic collections like `JSArray` and `JSPromise`, custom types are passed as generic arguments (e.g. `JSArray<AnonymousUnion_3231260>`), but the compiler fails to emit the concrete `AnonymousUnion_3231260` class definition.
* **Roadmap**: Update the `DependencyWalker` in [type_resolver.dart](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/interop_gen/transform/type_resolver.dart) to recursively unwrap and walk inside type parameters of `BuiltinType`s, bringing hidden generic type parameters into the generation scope!

### 2. Dart Primitive Type Arguments Bounds Mismatch (`type_argument_not_matching_bounds`)
* **The Issue**: A type argument (like `String?`) is passed to a type parameter with a non-nullable bound like `T extends JSAny?` (e.g. `TelemetrySender<string>` yielding `TelemetrySender<String?>`). Since Dart's primitive `String` does not extend `JSAny`, the compiler throws type bounds conformance errors.
* **Roadmap**: Update the generic type argument mapping in the generator to automatically emit the JS interop type alternative (like `JSString?` / `JSString`) instead of the Dart primitive type (like `String?` / `String`) when mapped against a `JSAny` bound.

### 3. Double-Check & Verified Clean Audit
* **Roadmap**: Rebuild the massive, full-scale `vscode_expected.dart` golden file and run `dart analyze` on it. Verify that all warnings and errors are completely gone, leaving us with **exactly 0 issues found**!

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
   - Do NOT commit the massive `vscode_expected.dart` golden file until all 3 hurdles are fully resolved, leaving us with a 100% statically analyze-clean VS Code output.
