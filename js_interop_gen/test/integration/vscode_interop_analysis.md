# 📊 VS Code Interop Generation Gaps & Targeted Fixes

This document details the exact compiler gaps in `js_interop_gen` that prevent it from compiling the VS Code `.d.ts` API with zero static errors. Each gap is presented with a concrete `.d.ts` input example, the incorrect generated Dart code, and a targeted implementation plan for the engine.

---

## 1. [DONE] Namespace Flattening Type Reference Resolution
### The Issue
When classes or interfaces are declared inside a TypeScript module or namespace (e.g. `declare module 'vscode'`), `js_interop_gen` correctly flattens the namespace structure for the emitted extension types (generating `Position$1` instead of `vscode_Position`). However, properties or method parameters that reference these types are resolved to the original nested symbol name (e.g. `Position`), causing `Undefined class 'Position'` static errors because the local output type is named `Position$1` (renamed due to a name clash with DOM's standard `Position` interface).

### 📝 TypeScript Input Example
```typescript
declare module 'vscode' {
    export interface TextLine {
        readonly range: Range;
    }
    export class Range {
        constructor(start: Position, end: Position);
    }
    export class Position {
        constructor(line: number, character: number);
    }
}
```

### ❌ Incorrect Generated Dart Code
```dart
extension type TextLine._(_i1.JSObject _) implements _i1.JSObject {
  // RANGE IS UNDEFINED! Should reference the local `Range$1` extension type.
  external Range get range;
}

@_i1.JS('Range')
extension type Range$1._(_i1.JSObject _) implements _i1.JSObject {
  // POSITION IS UNDEFINED! Should reference `Position$1`.
  external Range$1(Position start, Position end);
}

@_i1.JS('Position')
extension type Position$1._(_i1.JSObject _) implements _i1.JSObject {
  external Position$1(num line, num character);
}
```

### 🛠️ How to Fix (Targeted Engine Plan)
* **Our Completed Fix**:
  Added `ReferredType.declarationToEmittedName` static lookup map and populated it inside `processAndReturn()` in `transformer.dart` for all merged/rescope declarations. Modified `ReferredType.emit` to consult the lookup map first, resolving the namespace flattening and naming/renaming resolution mismatch correctly.

---

## 2. [DONE] Self-Import & Type Resolution Mismatch
### The Issue
When compiling a single `.d.ts` file, the TS compiler associates declarations with the input filename (e.g. `vscode_stripped_input.d.ts`), which maps to a virtual Dart library URL (`vscode_stripped_input.dart`). When generating the single output file `vscode_stripped_actual.dart`, type references resolve their import path relative to the input file. This results in:
1. The output file attempting to import its virtual self: `import 'vscode_stripped_input.dart' as _i2;`.
2. Prefixing local references with `_i2.` (e.g. `_i2.Range`), which fails to compile because `vscode_stripped_input.dart` does not exist.

### 🛠️ How to Fix (Targeted Engine Plan)
* **Our Completed Fix**:
  Updated `transformer.dart:_searchForDeclRecursive` to check if the `importUrl` is equal to the currently translating `file`. If they are equal, `relativePath` is kept `null`, preventing self-imports and eliminating the prefixing.

---

## 3. [DONE] Missing Anonymous Generic Union Declarations
### The Issue
TypeScript APIs frequently return or accept generic unions (e.g. `TResult1 | Thenable<TResult1>`). The generator converts this to an `AnonymousUnion_XXXX<TResult1>` reference. However, because type parameters/arguments of `ReferredType`s were not traversed during dependency extraction, the actual declaration of `AnonymousUnion_XXXX` was never added to the output, leading to `Undefined class 'AnonymousUnion_XXXX'` errors.

### 📝 TypeScript Input Example
```typescript
export interface Thenable<T> {
    then<TResult1 = T>(
        onfulfilled?: (value: T) => TResult1 | Thenable<TResult1>
    ): Thenable<TResult1>;
}
```

### ❌ Incorrect Generated Dart Code
```dart
extension type Thenable<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  // AnonymousUnion_3555654 is used as a return type but is NEVER defined in the file!
  external Thenable<AnonymousUnion_3555654> then<TResult1 extends _i1.JSAny?>([
    _AnonymousFunction_3119559<TResult1?, T?>? onfulfilled,
  ]);
}
```

### 🛠️ How to Fix (Targeted Engine Plan)
* **Our Completed Fix**:
  Updated `transformer.dart:_getDependenciesOfDecl` in the `ReferredType r` case to explicitly traverse `r.typeParams` (type arguments). This ensures that any nested anonymous unions or custom types passed as generic arguments are correctly collected and generated.

---

## 4. [DONE] Duplicate Generic Type Parameter Definitions in Union Declarations
### The Issue
When generic types containing the same type parameter name (e.g., `TResult1` and `Thenable<TResult1>`) are combined into a `UnionType`, the union constructor collected generic parameters from all members and added them to `typeParameters` without deduplication. This led to generated extension types declaring duplicate generic parameters (e.g., `AnonymousUnion_XXXX<TResult1, TResult1>`), causing `The name 'TResult1' is already defined` static errors.

### 🛠️ How to Fix (Targeted Engine Plan)
* **Our Completed Fix**:
  Rewrote the `types.dart:_UnionOrIntersectionDeclaration` constructor to utilize a `Set<String> seen` that deduplicates collected type parameters by their string name before adding them to `typeParameters`.

---

## 5. [DONE] Duplicate Cast Getters on Homogeneous Union Arrays
### The Issue
A union type containing multiple array variations (e.g. `JSArray<String> | JSArray<num>`) originally generated duplicate `asJSArray` cast getter methods because the generator name-formatting logic only looked at the base type symbol (`JSArray`) rather than the type parameters. This caused duplicate getter definition compile errors.

### 🛠️ How to Fix (Targeted Engine Plan)
* **Our Completed Fix**:
  Added a recursive `_typeNameForGetter` helper in `types.dart` to format union type cast getters with their type parameters (e.g., producing `asJSArrayOfJSString` and `asJSArrayOfJSNumber` instead of two `asJSArray` getters).

---

## 6. [DONE] Incompatible Generic Type Bounds on `Event<void>`
### The Issue
TypeScript generic types are often instantiated with `void` (e.g., `Event<void>`). In Dart JS Interop, interop type parameters are bounded by `JSAny?` (e.g. `Event<T extends JSAny?>`). Instantiating them with `void` throws a compile error because `void` does not conform to `JSAny?`.

### 🛠️ How to Fix (Targeted Engine Plan)
* **Our Completed Fix**:
  Updated the `emit` methods of `ReferredType`, `BuiltinType`, and `PackageWebType` to intercept `void` type arguments and map them to `JSAny` (`BuiltinType.anyType`) so they conform cleanly to the `JSAny?` generic bounds.
