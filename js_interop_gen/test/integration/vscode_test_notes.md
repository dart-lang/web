# 🚀 VS Code Interop Generation: Status & Next Steps

This document outlines the work completed so far to generate Dart JS Interop bindings from the VS Code `vscode.d.ts` API file, and provides explicit, step-by-step instructions for the next agent to achieve a 100% warning-free compile.

---

## 🛠️ What Has Been Done So Far (The Engine Wins)

We successfully resolved multiple fundamental architectural bugs and crashes in the `js_interop_gen` compiler engine:
1. **Cyclic Type Stack Overflow Fix** ([`transformer.dart:L484-L487`](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/interop_gen/transform/transformer.dart#L484-L487)): Registered in-progress type declaration shells in `nodeMap` early (before transforming their children/members) to break self-referential type resolution loops.
2. **Module Generic Parameter Resolution** ([`transformer.dart:L2451-L2469`](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/interop_gen/transform/transformer.dart#L2451-L2469)): Moved the `isTypeParameter()` check to the absolute top of `_getTypeFromSymbol` so type parameters inside module declarations (which are prefixed by the TS type checker with string literal names like `"vscode".Event.T`) are correctly recognized as generics.
3. **String-Literal Module Declaration Support** ([`transformer.dart:L150-L154`](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/interop_gen/transform/transformer.dart#L150-L154)): Added AST handling to process the `ModuleBlock` of module declarations with string literal names (like `declare module 'vscode'`).
4. **Idempotent Declaration Rescoping** ([`merger.dart:L508-L520`](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/ast/merger.dart#L508-L520)): Updated `_rescopeDecls` to check if a declaration already has a unique `dartName` assigned. If it does, we preserve it instead of continuously overwriting it with new unique suffixes (which was causing references to mismatch like `Uri$15` vs `Uri$189`).
5. **Void Nullability Fix** ([`builtin.dart:L57`](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/ast/builtin.dart#L57)): Prevented `void` type from being printed as a nullable `void?` in Dart (which is a syntax error).
6. **Getter Naming on Union Literal Types** ([`types.dart:L751-L756`](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/ast/types.dart#L751-L756)): Handled `LiteralType` inside union getter name generation to prevent invalid getter names with dots (e.g., `asTrue.true`).
7. **Module Name / Path Caching** ([`transformer.dart:L2565-L2573`](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/interop_gen/transform/transformer.dart#L2565-L2573), [`L2663-L2671`](file:///Users/kevmoo/github/web/js_interop_gen/lib/src/interop_gen/transform/transformer.dart#L2663-L2671)): Mapped virtual path resolutions for module `'vscode'` back to the current file context so declarations are transformed inside the same `Transformer` and `namer` context.

---

## 📋 Current Workspace Assets
- **TypeScript Input File**: [`vscode_input.d.ts`](file:///Users/kevmoo/github/web/js_interop_gen/test/integration/vscode_input.d.ts)
- **YAML Configuration**: [`vscode_config.yaml`](file:///Users/kevmoo/github/web/js_interop_gen/test/integration/vscode_config.yaml)
- **Integration Test File**: [`vscode_test.dart`](file:///Users/kevmoo/github/web/js_interop_gen/test/integration/vscode_test.dart)
- **Output Interop File**: [`vscode_actual.dart`](file:///Users/kevmoo/github/web/js_interop_gen/test/integration/vscode_actual.dart)

---

## 🎯 Instructions for the Next Agent

Your objective is to resolve the remaining **113 type-checker issues** in the generated `vscode_actual.dart` library or create a perfectly stripped-down subset that compiles cleanly. 

Here are the three categories of issues and their recommended implementation paths:

### 1. Incompatible Generic Type Bounds on `Event<void>`
- **The Issue**: In Dart JS Interop, type parameters bounded by `JSAny?` (e.g. `Event<T extends JSAny?>`) cannot be instantiated with `void`.
- **The Solution**: Inside `js_interop_gen`, identify when `void` is passed as a type argument to a generic bound to `JSAny?`, and map it to `JSAny?` (or another nullable interop type) instead of `void`, OR desugar the type parameter constraints.

### 2. Duplicate Cast Getters on Homogeneous Union Arrays
- **The Issue**: In `merger.dart`, union types containing multiple different array types (like `JSArray<String> | JSArray<num>`) result in duplicate `asJSArray` getter cast definitions.
- **The Solution**: Update the cast getter naming logic to include type parameters inside the getter name (e.g., `asJSArrayOfJSString`, `asJSArrayOfJSNumber`) or cleanly merge them into a broader array type.

### 3. Stripped-Down focused `d.ts` compilation (Recommended Path)
- **The Idea**: Since compiling the entire, huge 725KB `vscode.d.ts` with all of its auxiliary classes is massive and prone to auxiliary TS standard library type resolution gaps (e.g. `ConcatArray`), it might be much better to compile a **stripped-down, focused** `vscode_stripped_input.d.ts` file containing only the core classes needed for your extension.
- **How to do this**: 
  1. Create a smaller `vscode_stripped_input.d.ts` containing the required APIs (like `Position`, `Range`, `Selection`, `TextLine`, `TextDocument`, `Command`).
  2. Run `dart run js_interop_gen --config=test/integration/vscode_config.yaml test/integration/vscode_stripped_input.d.ts`.
  3. Run `dart analyze` on it to verify it has 0 compiler errors or warnings.

Good luck! You are starting with a highly upgraded compiler engine and a solid integration test foundation!
