// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_ignore, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:meta/meta.dart' as _i2;

/// Create a new 'Program' instance. A Program is an immutable collection of
/// 'SourceFile's and a 'CompilerOptions'
/// that represent a compilation unit.
///
/// Creating a program proceeds from a set of root files, expanding the set of
/// inputs by following imports and
/// triple-slash-reference-path directives transitively. '@types' and
/// triple-slash-reference-types are also pulled in.
/// - [createProgramOptions]:  - The options for creating a program.
///
/// Returns A 'Program' object.
/// - [rootNames]:  - A set of root files.
/// - [options]:  - The compiler options which should be used.
/// - [host]:  - The host interacts with the underlying file system.
/// - [oldProgram]:  - Reuses an old program structure.
/// - [configFileParsingDiagnostics]:  - error during config file parsing
///
/// Returns A 'Program' object.
@_i1.JS()
external TSProgram createProgram(CreateProgramOptions createProgramOptions);

/// Create a new 'Program' instance. A Program is an immutable collection of
/// 'SourceFile's and a 'CompilerOptions'
/// that represent a compilation unit.
///
/// Creating a program proceeds from a set of root files, expanding the set of
/// inputs by following imports and
/// triple-slash-reference-path directives transitively. '@types' and
/// triple-slash-reference-types are also pulled in.
/// - [createProgramOptions]:  - The options for creating a program.
///
/// Returns A 'Program' object.
/// - [rootNames]:  - A set of root files.
/// - [options]:  - The compiler options which should be used.
/// - [host]:  - The host interacts with the underlying file system.
/// - [oldProgram]:  - Reuses an old program structure.
/// - [configFileParsingDiagnostics]:  - error during config file parsing
///
/// Returns A 'Program' object.
@_i1.JS('createProgram')
external TSProgram createProgram$1(
  _i1.JSArray<_i1.JSString> rootNames,
  CompilerOptions options, [
  CompilerHost? host,
  TSProgram? oldProgram,
  _i1.JSArray<Diagnostic?>? configFileParsingDiagnostics,
]);
extension type TSProgram._(_i1.JSObject _) implements ScriptReferenceHost {
  @_i2.redeclare
  external String getCurrentDirectory();

  /// Get a list of root file names that were passed to a 'createProgram'
  external _i1.JSArray<_i1.JSString> getRootFileNames();

  /// Get a list of files in the program
  external _i1.JSArray<TSSourceFile> getSourceFiles();

  /// Emits the JavaScript and declaration files.  If targetSourceFile is not
  /// specified, then
  /// the JavaScript and declaration files will be produced for all the files in
  /// this program.
  /// If targetSourceFile is specified, then only the JavaScript and declaration
  /// for that
  /// specific file will be generated.
  ///
  /// If writeFile is not specified then the writeFile callback from the
  /// compiler host will be
  /// used for writing the JavaScript and declaration files.  Otherwise, the
  /// writeFile parameter
  /// will be invoked when writing the JavaScript and declaration files.
  external EmitResult emit([
    TSSourceFile? targetSourceFile,
    WriteFileCallback? writeFile,
    CancellationToken? cancellationToken,
    bool? emitOnlyDtsFiles,
    CustomTransformers? customTransformers,
  ]);
  external _i1.JSArray<Diagnostic> getOptionsDiagnostics([
    CancellationToken? cancellationToken,
  ]);
  external _i1.JSArray<Diagnostic> getGlobalDiagnostics([
    CancellationToken? cancellationToken,
  ]);
  external _i1.JSArray<DiagnosticWithLocation> getSyntacticDiagnostics([
    TSSourceFile? sourceFile,
    CancellationToken? cancellationToken,
  ]);

  /// The first time this is called, it will return global diagnostics (no
  /// location).
  external _i1.JSArray<Diagnostic> getSemanticDiagnostics([
    TSSourceFile? sourceFile,
    CancellationToken? cancellationToken,
  ]);
  external _i1.JSArray<DiagnosticWithLocation> getDeclarationDiagnostics([
    TSSourceFile? sourceFile,
    CancellationToken? cancellationToken,
  ]);
  external _i1.JSArray<Diagnostic> getConfigFileParsingDiagnostics();

  /// Gets a type checker that can be used to semantically analyze source files
  /// in the program.
  external TypeChecker getTypeChecker();
  external double getNodeCount();
  external double getIdentifierCount();
  external double getSymbolCount();
  external double getTypeCount();
  external double getInstantiationCount();
  external AnonymousType_3936789 getRelationCacheSizes();
  external bool isSourceFileFromExternalLibrary(TSSourceFile file);
  external bool isSourceFileDefaultLibrary(TSSourceFile file);

  /// Calculates the final resolution mode for a given module reference node.
  /// This function only returns a result when module resolution
  /// settings allow differing resolution between ESM imports and CJS requires,
  /// or when a mode is explicitly provided via import attributes,
  /// which cause an `import` or `require` condition to be used during
  /// resolution regardless of module resolution settings. In absence of
  /// overriding attributes, and in modes that support differing resolution, the
  /// result indicates the syntax the usage would emit to JavaScript.
  /// Some examples:
  ///
  /// ```ts
  /// // tsc foo.mts --module nodenext
  /// import {} from "mod";
  /// // Result: ESNext - the import emits as ESM due to `impliedNodeFormat` set by .mts file extension
  ///
  /// // tsc foo.cts --module nodenext
  /// import {} from "mod";
  /// // Result: CommonJS - the import emits as CJS due to `impliedNodeFormat` set by .cts file extension
  ///
  /// // tsc foo.ts --module preserve --moduleResolution bundler
  /// import {} from "mod";
  /// // Result: ESNext - the import emits as ESM due to `--module preserve` and `--moduleResolution bundler`
  /// // supports conditional imports/exports
  ///
  /// // tsc foo.ts --module preserve --moduleResolution node10
  /// import {} from "mod";
  /// // Result: undefined - the import emits as ESM due to `--module preserve`, but `--moduleResolution node10`
  /// // does not support conditional imports/exports
  ///
  /// // tsc foo.ts --module commonjs --moduleResolution node10
  /// import type {} from "mod" with { "resolution-mode": "import" };
  /// // Result: ESNext - conditional imports/exports always supported with "resolution-mode" attribute
  /// ```
  external ResolutionMode getModeForUsageLocation(
    TSSourceFile file,
    StringLiteralLike usage,
  );

  /// Calculates the final resolution mode for an import at some index within a
  /// file's `imports` list. This function only returns a result
  /// when module resolution settings allow differing resolution between ESM
  /// imports and CJS requires, or when a mode is explicitly provided
  /// via import attributes, which cause an `import` or `require` condition to
  /// be used during resolution regardless of module resolution
  /// settings. In absence of overriding attributes, and in modes that support
  /// differing resolution, the result indicates the syntax the
  /// usage would emit to JavaScript. Some examples:
  ///
  /// ```ts
  /// // tsc foo.mts --module nodenext
  /// import {} from "mod";
  /// // Result: ESNext - the import emits as ESM due to `impliedNodeFormat` set by .mts file extension
  ///
  /// // tsc foo.cts --module nodenext
  /// import {} from "mod";
  /// // Result: CommonJS - the import emits as CJS due to `impliedNodeFormat` set by .cts file extension
  ///
  /// // tsc foo.ts --module preserve --moduleResolution bundler
  /// import {} from "mod";
  /// // Result: ESNext - the import emits as ESM due to `--module preserve` and `--moduleResolution bundler`
  /// // supports conditional imports/exports
  ///
  /// // tsc foo.ts --module preserve --moduleResolution node10
  /// import {} from "mod";
  /// // Result: undefined - the import emits as ESM due to `--module preserve`, but `--moduleResolution node10`
  /// // does not support conditional imports/exports
  ///
  /// // tsc foo.ts --module commonjs --moduleResolution node10
  /// import type {} from "mod" with { "resolution-mode": "import" };
  /// // Result: ESNext - conditional imports/exports always supported with "resolution-mode" attribute
  /// ```
  external ResolutionMode getModeForResolutionAtIndex(
    TSSourceFile file,
    num index,
  );
  external _i1.JSArray<ProjectReference>? getProjectReferences();
  external _i1.JSArray<ResolvedProjectReference?>?
  getResolvedProjectReferences();
}
extension type TSSourceFile._(_i1.JSObject _)
    implements Declaration, LocalsContainer {
  external String fileName;

  external String text;

  external _i1.JSArray<AmdDependency> amdDependencies;

  external String? moduleName;

  external _i1.JSArray<FileReference> referencedFiles;

  external _i1.JSArray<FileReference> typeReferenceDirectives;

  external _i1.JSArray<FileReference> libReferenceDirectives;

  external LanguageVariant languageVariant;

  external bool isDeclarationFile;

  /// lib.d.ts should have a reference comment like
  ///
  /// /// `<reference no-default-lib="true"/>`
  ///
  /// If any other file has this comment, it signals not to include lib.d.ts
  /// because this containing file is intended to act as a default library.
  external bool hasNoDefaultLib;

  external ScriptTarget languageVersion;

  /// When `module` is `Node16` or `NodeNext`, this field controls whether the
  /// source file in question is an ESNext-output-format file, or a
  /// CommonJS-output-format
  /// module. This is derived by the module resolver as it looks up the file,
  /// since
  /// it is derived from either the file extension of the module, or the
  /// containing
  /// `package.json` context, and affects both checking and emit.
  ///
  /// It is _public_ so that (pre)transformers can set this field,
  /// since it switches the builtin `node` module transform. Generally speaking,
  /// if unset,
  /// the field is treated as though it is `ModuleKind.CommonJS`.
  ///
  /// Note that this field is only set by the module resolution process when
  /// `moduleResolution` is `Node16` or `NodeNext`, which is implied by the
  /// `module` setting
  /// of `Node16` or `NodeNext`, respectively, but may be overriden (eg, by a
  /// `moduleResolution`
  /// of `node`). If so, this field will be unset and source files will be
  /// considered to be
  /// CommonJS-output-format by the node module transformer and type checker,
  /// regardless of extension or context.
  external ResolutionMode? impliedNodeFormat;

  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<Statement> get statements;
  external Token<_i1.JSNumber> get endOfFileToken;
  external LineAndCharacter getLineAndCharacterOfPosition(num pos);
  external double getLineEndOfPosition(num pos);
  external _i1.JSArray<_i1.JSNumber> getLineStarts();
  external double getPositionOfLineAndCharacter(num line, num character);
  external TSSourceFile update(String newText, TextChangeRange textChangeRange);
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
typedef AssignmentOperatorToken = Token<AnonymousUnion_5002178>;
extension type CreateProgramOptions._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSArray<_i1.JSString> rootNames;

  external CompilerOptions options;

  external _i1.JSArray<ProjectReference?>? projectReferences;

  external CompilerHost? host;

  external TSProgram? oldProgram;

  external _i1.JSArray<Diagnostic?>? configFileParsingDiagnostics;
}
extension type CompilerOptions._(_i1.JSObject _) implements _i1.JSObject {
  external bool? allowImportingTsExtensions;

  external bool? allowJs;

  external bool? allowArbitraryExtensions;

  external bool? allowSyntheticDefaultImports;

  external bool? allowUmdGlobalAccess;

  external bool? allowUnreachableCode;

  external bool? allowUnusedLabels;

  external bool? alwaysStrict;

  external String? baseUrl;

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external String? charset;

  external bool? checkJs;

  external _i1.JSArray<_i1.JSString?>? customConditions;

  external bool? declaration;

  external bool? declarationMap;

  external bool? emitDeclarationOnly;

  external String? declarationDir;

  external bool? disableSizeLimit;

  external bool? disableSourceOfProjectReferenceRedirect;

  external bool? disableSolutionSearching;

  external bool? disableReferencedProjectLoad;

  external bool? downlevelIteration;

  external bool? emitBOM;

  external bool? emitDecoratorMetadata;

  external bool? exactOptionalPropertyTypes;

  external bool? experimentalDecorators;

  external bool? forceConsistentCasingInFileNames;

  external String? ignoreDeprecations;

  external bool? importHelpers;

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external ImportsNotUsedAsValues? importsNotUsedAsValues;

  external bool? inlineSourceMap;

  external bool? inlineSources;

  external bool? isolatedModules;

  external bool? isolatedDeclarations;

  external JsxEmit? jsx;

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external bool? keyofStringsOnly;

  external _i1.JSArray<_i1.JSString?>? lib;

  external bool? libReplacement;

  external String? locale;

  external String? mapRoot;

  external double? maxNodeModuleJsDepth;

  external ModuleKind? module;

  external ModuleResolutionKind? moduleResolution;

  external _i1.JSArray<_i1.JSString?>? moduleSuffixes;

  external ModuleDetectionKind? moduleDetection;

  external NewLineKind? newLine;

  external bool? noEmit;

  external bool? noCheck;

  external bool? noEmitHelpers;

  external bool? noEmitOnError;

  external bool? noErrorTruncation;

  external bool? noFallthroughCasesInSwitch;

  external bool? noImplicitAny;

  external bool? noImplicitReturns;

  external bool? noImplicitThis;

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external bool? noStrictGenericChecks;

  external bool? noUnusedLocals;

  external bool? noUnusedParameters;

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external bool? noImplicitUseStrict;

  external bool? noPropertyAccessFromIndexSignature;

  external bool? assumeChangesOnlyAffectDirectDependencies;

  external bool? noLib;

  external bool? noResolve;

  external bool? noUncheckedIndexedAccess;

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external String? out;

  external String? outDir;

  external String? outFile;

  external MapLike<_i1.JSArray<_i1.JSString>>? paths;

  external bool? preserveConstEnums;

  external bool? noImplicitOverride;

  external bool? preserveSymlinks;

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external bool? preserveValueImports;

  external String? project;

  external String? reactNamespace;

  external String? jsxFactory;

  external String? jsxFragmentFactory;

  external String? jsxImportSource;

  external bool? composite;

  external bool? incremental;

  external String? tsBuildInfoFile;

  external bool? removeComments;

  external bool? resolvePackageJsonExports;

  external bool? resolvePackageJsonImports;

  external bool? rewriteRelativeImportExtensions;

  external String? rootDir;

  external _i1.JSArray<_i1.JSString?>? rootDirs;

  external bool? skipLibCheck;

  external bool? skipDefaultLibCheck;

  external bool? sourceMap;

  external String? sourceRoot;

  external bool? strict;

  external bool? strictFunctionTypes;

  external bool? strictBindCallApply;

  external bool? strictNullChecks;

  external bool? strictPropertyInitialization;

  external bool? strictBuiltinIteratorReturn;

  external bool? stripInternal;

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external bool? suppressExcessPropertyErrors;

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external bool? suppressImplicitAnyIndexErrors;

  external ScriptTarget? target;

  external bool? traceResolution;

  external bool? useUnknownInCatchVariables;

  external bool? noUncheckedSideEffectImports;

  external bool? resolveJsonModule;

  external _i1.JSArray<_i1.JSString?>? types;

  /// Paths used to compute primary types search locations
  external _i1.JSArray<_i1.JSString?>? typeRoots;

  external bool? verbatimModuleSyntax;

  external bool? erasableSyntaxOnly;

  external bool? esModuleInterop;

  external bool? useDefineForClassFields;

  external AnonymousUnion_1307295? operator [](String option);
}
typedef CompilerOptionsValue = AnonymousUnion_1592685?;
extension type AnonymousUnion_2683278._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  double get asDouble => (_ as _i1.JSNumber).toDartDouble;
}

/// Type of objects whose values are all of the same type.
/// The `in` and `for-in` operators can *not* be safely used,
/// since `Object.prototype` may be modified by outside code.
extension type MapLike<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T operator [](String index);
}
extension type PluginImport._(_i1.JSObject _) implements _i1.JSObject {
  external String name;
}
extension type ProjectReference._(_i1.JSObject _) implements _i1.JSObject {
  /// A normalized path on disk
  external String path;

  /// The path as the user originally wrote it
  external String? originalPath;

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external bool? prepend;

  /// True if it is intended that this reference form a circularity
  external bool? circular;
}
extension type AnonymousUnion_1592685._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  double get asDouble => (_ as _i1.JSNumber).toDartDouble;

  bool get asBool => (_ as _i1.JSBoolean).toDart;

  _i1.JSArray<AnonymousUnion_2683278> get asJSArrayOfAnonymousUnion_2683278 =>
      (_ as _i1.JSArray<AnonymousUnion_2683278>);

  _i1.JSArray<_i1.JSString> get asJSArrayOfJSString =>
      (_ as _i1.JSArray<_i1.JSString>);

  MapLike<_i1.JSArray<_i1.JSString>> get asMapLikeOfJSArrayOfJSString =>
      (_ as MapLike<_i1.JSArray<_i1.JSString>>);

  _i1.JSArray<PluginImport> get asJSArrayOfPluginImport =>
      (_ as _i1.JSArray<PluginImport>);

  _i1.JSArray<ProjectReference> get asJSArrayOfProjectReference =>
      (_ as _i1.JSArray<ProjectReference>);
}
extension type TsConfigSourceFile._(_i1.JSObject _) implements JsonSourceFile {
  external _i1.JSArray<_i1.JSString?>? extendedSourceFiles;
}
extension type JsonSourceFile._(_i1.JSObject _) implements TSSourceFile {
  @_i2.redeclare
  external NodeArray<JsonObjectExpressionStatement> get statements;
}
extension type NodeArray<T extends _i1.JSObject>._(_i1.JSObject _)
    implements ReadonlyArray<_i1.JSAny?>, ReadonlyTextRange {
  external bool get hasTrailingComma;
}
extension type ReadonlyArray<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Gets the length of the array. This is a number one higher than the highest
  /// element defined in an array.
  external double get length;

  /// Returns a string representation of an array.
  @_i1.JS('toString')
  external String toString$();

  /// Returns a string representation of an array. The elements are converted to
  /// string using their toLocaleString methods.
  external String toLocaleString();

  /// Combines two or more arrays.
  /// - [items]:  Additional items to add to the end of array1.
  /// - [items]:  Additional items to add to the end of array1.
  external _i1.JSArray<T> concat(
    _i1.JSArray<ConcatArray<_i1.JSAny?>> items, [
    _i1.JSArray<ConcatArray<_i1.JSAny?>> items2,
    _i1.JSArray<ConcatArray<_i1.JSAny?>> items3,
    _i1.JSArray<ConcatArray<_i1.JSAny?>> items4,
  ]);

  /// Combines two or more arrays.
  /// - [items]:  Additional items to add to the end of array1.
  /// - [items]:  Additional items to add to the end of array1.
  @_i1.JS('concat')
  external _i1.JSArray<T> concat$1(
    _i1.JSArray<AnonymousUnion_2526729<_i1.JSAny?>> items, [
    _i1.JSArray<AnonymousUnion_2526729<_i1.JSAny?>> items2,
    _i1.JSArray<AnonymousUnion_2526729<_i1.JSAny?>> items3,
    _i1.JSArray<AnonymousUnion_2526729<_i1.JSAny?>> items4,
  ]);

  /// Adds all the elements of an array separated by the specified separator
  /// string.
  /// - [separator]:  A string used to separate one element of an array from the
  ///   next in the resulting String. If omitted, the array elements are
  ///   separated with a comma.
  external String join([String? separator]);

  /// Returns a section of an array.
  /// - [start]:  The beginning of the specified portion of the array.
  /// - [end]:  The end of the specified portion of the array. This is exclusive
  ///   of the element at the index 'end'.
  external _i1.JSArray<T> slice([num? start, num? end]);

  /// Returns the index of the first occurrence of a value in an array.
  /// - [searchElement]:  The value to locate in the array.
  /// - [fromIndex]:  The array index at which to begin the search. If fromIndex
  ///   is omitted, the search starts at index 0.
  external double indexOf(_i1.JSAny searchElement, [num? fromIndex]);

  /// Returns the index of the last occurrence of a specified value in an array.
  /// - [searchElement]:  The value to locate in the array.
  /// - [fromIndex]:  The array index at which to begin the search. If fromIndex
  ///   is omitted, the search starts at the last index in the array.
  external double lastIndexOf(_i1.JSAny searchElement, [num? fromIndex]);

  /// Determines whether all the members of an array satisfy the specified test.
  /// - [predicate]:  A function that accepts up to three arguments. The every
  ///   method calls
  /// the predicate function for each element in the array until the predicate
  /// returns a value
  /// which is coercible to the Boolean value false, or until the end of the
  /// array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function.
  /// If thisArg is omitted, undefined is used as the this value.
  /// - [predicate]:  A function that accepts up to three arguments. The every
  ///   method calls
  /// the predicate function for each element in the array until the predicate
  /// returns a value
  /// which is coercible to the Boolean value false, or until the end of the
  /// array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function.
  /// If thisArg is omitted, undefined is used as the this value.
  external bool every<S extends T>(
    _AnonymousFunction_2988645<_i1.JSAny> predicate, [
    _i1.JSAny? thisArg,
  ]);

  /// Determines whether all the members of an array satisfy the specified test.
  /// - [predicate]:  A function that accepts up to three arguments. The every
  ///   method calls
  /// the predicate function for each element in the array until the predicate
  /// returns a value
  /// which is coercible to the Boolean value false, or until the end of the
  /// array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function.
  /// If thisArg is omitted, undefined is used as the this value.
  /// - [predicate]:  A function that accepts up to three arguments. The every
  ///   method calls
  /// the predicate function for each element in the array until the predicate
  /// returns a value
  /// which is coercible to the Boolean value false, or until the end of the
  /// array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function.
  /// If thisArg is omitted, undefined is used as the this value.
  @_i1.JS('every')
  external bool every$1(
    _AnonymousFunction_2657783<_i1.JSAny> predicate, [
    _i1.JSAny? thisArg,
  ]);

  /// Determines whether the specified callback function returns true for any
  /// element of an array.
  /// - [predicate]:  A function that accepts up to three arguments. The some
  ///   method calls
  /// the predicate function for each element in the array until the predicate
  /// returns a value
  /// which is coercible to the Boolean value true, or until the end of the
  /// array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function.
  /// If thisArg is omitted, undefined is used as the this value.
  external bool some(
    _AnonymousFunction_2657783<_i1.JSAny> predicate, [
    _i1.JSAny? thisArg,
  ]);

  /// Performs the specified action for each element in an array.
  /// - [callbackfn]:  A function that accepts up to three arguments. forEach
  ///   calls the callbackfn function one time for each element in the array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   callbackfn function. If thisArg is omitted, undefined is used as the
  ///   this value.
  external void forEach(
    _AnonymousFunction_4160480<_i1.JSAny> callbackfn, [
    _i1.JSAny? thisArg,
  ]);

  /// Calls a defined callback function on each element of an array, and returns
  /// an array that contains the results.
  /// - [callbackfn]:  A function that accepts up to three arguments. The map
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   callbackfn function. If thisArg is omitted, undefined is used as the
  ///   this value.
  external _i1.JSArray<U> map<U extends _i1.JSAny?>(
    _AnonymousFunction_2665603<_i1.JSAny, _i1.JSAny> callbackfn, [
    _i1.JSAny? thisArg,
  ]);

  /// Returns the elements of an array that meet the condition specified in a
  /// callback function.
  /// - [predicate]:  A function that accepts up to three arguments. The filter
  ///   method calls the predicate function one time for each element in the
  ///   array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function. If thisArg is omitted, undefined is used as the this
  ///   value.
  /// - [predicate]:  A function that accepts up to three arguments. The filter
  ///   method calls the predicate function one time for each element in the
  ///   array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function. If thisArg is omitted, undefined is used as the this
  ///   value.
  external _i1.JSArray<S> filter<S extends T>(
    _AnonymousFunction_2988645<_i1.JSAny> predicate, [
    _i1.JSAny? thisArg,
  ]);

  /// Returns the elements of an array that meet the condition specified in a
  /// callback function.
  /// - [predicate]:  A function that accepts up to three arguments. The filter
  ///   method calls the predicate function one time for each element in the
  ///   array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function. If thisArg is omitted, undefined is used as the this
  ///   value.
  /// - [predicate]:  A function that accepts up to three arguments. The filter
  ///   method calls the predicate function one time for each element in the
  ///   array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function. If thisArg is omitted, undefined is used as the this
  ///   value.
  @_i1.JS('filter')
  external _i1.JSArray<T> filter$1(
    _AnonymousFunction_2657783<_i1.JSAny> predicate, [
    _i1.JSAny? thisArg,
  ]);

  /// Calls the specified callback function for all the elements in an array.
  /// The return value of the callback function is the accumulated result, and
  /// is provided as an argument in the next call to the callback function.
  /// - [callbackfn]:  A function that accepts up to four arguments. The reduce
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  /// - [callbackfn]:  A function that accepts up to four arguments. The reduce
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  external T reduce(_AnonymousFunction_3930812<_i1.JSAny> callbackfn);

  /// Calls the specified callback function for all the elements in an array.
  /// The return value of the callback function is the accumulated result, and
  /// is provided as an argument in the next call to the callback function.
  /// - [callbackfn]:  A function that accepts up to four arguments. The reduce
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  /// - [callbackfn]:  A function that accepts up to four arguments. The reduce
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  @_i1.JS('reduce')
  external T reduce$1(
    _AnonymousFunction_3930812<_i1.JSAny> callbackfn,
    _i1.JSAny initialValue,
  );

  /// Calls the specified callback function for all the elements in an array.
  /// The return value of the callback function is the accumulated result, and
  /// is provided as an argument in the next call to the callback function.
  /// - [callbackfn]:  A function that accepts up to four arguments. The reduce
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  /// - [callbackfn]:  A function that accepts up to four arguments. The reduce
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  @_i1.JS('reduce')
  external U reduce$2<U extends _i1.JSAny?>(
    _AnonymousFunction_2125744<_i1.JSAny, _i1.JSAny> callbackfn,
    _i1.JSAny initialValue,
  );

  /// Calls the specified callback function for all the elements in an array, in
  /// descending order. The return value of the callback function is the
  /// accumulated result, and is provided as an argument in the next call to the
  /// callback function.
  /// - [callbackfn]:  A function that accepts up to four arguments. The
  ///   reduceRight method calls the callbackfn function one time for each
  ///   element in the array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  /// - [callbackfn]:  A function that accepts up to four arguments. The
  ///   reduceRight method calls the callbackfn function one time for each
  ///   element in the array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  external T reduceRight(_AnonymousFunction_3930812<_i1.JSAny> callbackfn);

  /// Calls the specified callback function for all the elements in an array, in
  /// descending order. The return value of the callback function is the
  /// accumulated result, and is provided as an argument in the next call to the
  /// callback function.
  /// - [callbackfn]:  A function that accepts up to four arguments. The
  ///   reduceRight method calls the callbackfn function one time for each
  ///   element in the array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  /// - [callbackfn]:  A function that accepts up to four arguments. The
  ///   reduceRight method calls the callbackfn function one time for each
  ///   element in the array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  @_i1.JS('reduceRight')
  external T reduceRight$1(
    _AnonymousFunction_3930812<_i1.JSAny> callbackfn,
    _i1.JSAny initialValue,
  );

  /// Calls the specified callback function for all the elements in an array, in
  /// descending order. The return value of the callback function is the
  /// accumulated result, and is provided as an argument in the next call to the
  /// callback function.
  /// - [callbackfn]:  A function that accepts up to four arguments. The
  ///   reduceRight method calls the callbackfn function one time for each
  ///   element in the array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  /// - [callbackfn]:  A function that accepts up to four arguments. The
  ///   reduceRight method calls the callbackfn function one time for each
  ///   element in the array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  @_i1.JS('reduceRight')
  external U reduceRight$2<U extends _i1.JSAny?>(
    _AnonymousFunction_2125744<_i1.JSAny, _i1.JSAny> callbackfn,
    _i1.JSAny initialValue,
  );
  external T operator [](num n);
  external void operator []=(num n, _i1.JSAny newValue);
}
extension type ConcatArray<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external double get length;
  external String join([String? separator]);
  external _i1.JSArray<T> slice([num? start, num? end]);
  external T operator [](num n);
  external void operator []=(num n, _i1.JSAny newValue);
}
extension type AnonymousUnion_2526729<T extends _i1.JSAny?>._(_i1.JSAny _)
    implements _i1.JSAny {
  T get asT => (_ as T);

  ConcatArray<_i1.JSAny?> get asConcatArrayOfT =>
      (_ as ConcatArray<_i1.JSAny?>);
}
extension type _AnonymousFunction_2988645<T extends _i1.JSAny?>._(
  _i1.JSFunction _
)
    implements _i1.JSFunction {
  external bool call(_i1.JSAny value, num index, _i1.JSArray<_i1.JSAny> array);
}
extension type _AnonymousFunction_2657783<T extends _i1.JSAny?>._(
  _i1.JSFunction _
)
    implements _i1.JSFunction {
  external _i1.JSAny? call(
    _i1.JSAny value,
    num index,
    _i1.JSArray<_i1.JSAny> array,
  );
}
extension type _AnonymousFunction_4160480<T extends _i1.JSAny?>._(
  _i1.JSFunction _
)
    implements _i1.JSFunction {
  external void call(_i1.JSAny value, num index, _i1.JSArray<_i1.JSAny> array);
}
extension type _AnonymousFunction_2665603<
  U extends _i1.JSAny?,
  T extends _i1.JSAny?
>._(_i1.JSFunction _) implements _i1.JSFunction {
  external U call(_i1.JSAny value, num index, _i1.JSArray<_i1.JSAny> array);
}
extension type _AnonymousFunction_3930812<T extends _i1.JSAny?>._(
  _i1.JSFunction _
)
    implements _i1.JSFunction {
  external T call(
    _i1.JSAny previousValue,
    _i1.JSAny currentValue,
    num currentIndex,
    _i1.JSArray<_i1.JSAny> array,
  );
}
extension type _AnonymousFunction_2125744<
  U extends _i1.JSAny?,
  T extends _i1.JSAny?
>._(_i1.JSFunction _) implements _i1.JSFunction {
  external U call(
    _i1.JSAny previousValue,
    _i1.JSAny currentValue,
    num currentIndex,
    _i1.JSArray<_i1.JSAny> array,
  );
}
extension type ReadonlyTextRange._(_i1.JSObject _) implements _i1.JSObject {
  external double get pos;
  external double get end;
}
extension type JsonObjectExpressionStatement._(_i1.JSObject _)
    implements ExpressionStatement {
  @_i2.redeclare
  external JsonObjectExpression get expression;
}
typedef JsonObjectExpression = AnonymousUnion_2539418;
extension type ObjectLiteralExpression._(_i1.JSObject _)
    implements
        ObjectLiteralExpressionBase<AnonymousUnion_4079191>,
        JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
  @_i2.redeclare
  external NodeArray<_i1.JSObject> get properties;
  @_i1.JS('_primaryExpressionBrand')
  external _i1.JSAny? get $_primaryExpressionBrand;
  @_i1.JS('_primaryExpressionBrand')
  external set $_primaryExpressionBrand(_i1.JSAny? value);
  @_i1.JS('_memberExpressionBrand')
  external _i1.JSAny? get $_memberExpressionBrand;
  @_i1.JS('_memberExpressionBrand')
  external set $_memberExpressionBrand(_i1.JSAny? value);
  @_i1.JS('_leftHandSideExpressionBrand')
  external _i1.JSAny? get $_leftHandSideExpressionBrand;
  @_i1.JS('_leftHandSideExpressionBrand')
  external set $_leftHandSideExpressionBrand(_i1.JSAny? value);
  @_i1.JS('_updateExpressionBrand')
  external _i1.JSAny? get $_updateExpressionBrand;
  @_i1.JS('_updateExpressionBrand')
  external set $_updateExpressionBrand(_i1.JSAny? value);
  @_i1.JS('_unaryExpressionBrand')
  external _i1.JSAny? get $_unaryExpressionBrand;
  @_i1.JS('_unaryExpressionBrand')
  external set $_unaryExpressionBrand(_i1.JSAny? value);
  @_i1.JS('_expressionBrand')
  external _i1.JSAny? get $_expressionBrand;
  @_i1.JS('_expressionBrand')
  external set $_expressionBrand(_i1.JSAny? value);
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? get $_declarationBrand;
  @_i1.JS('_declarationBrand')
  external set $_declarationBrand(_i1.JSAny? value);
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
}
extension type SyntaxKind._(_i1.JSNumber _) implements _i1.JSNumber {
  static final SyntaxKind Unknown = SyntaxKind._(0.toJS);

  static final SyntaxKind EndOfFileToken = SyntaxKind._(1.toJS);

  static final SyntaxKind SingleLineCommentTrivia = SyntaxKind._(2.toJS);

  static final SyntaxKind MultiLineCommentTrivia = SyntaxKind._(3.toJS);

  static final SyntaxKind NewLineTrivia = SyntaxKind._(4.toJS);

  static final SyntaxKind WhitespaceTrivia = SyntaxKind._(5.toJS);

  static final SyntaxKind ShebangTrivia = SyntaxKind._(6.toJS);

  static final SyntaxKind ConflictMarkerTrivia = SyntaxKind._(7.toJS);

  static final SyntaxKind NonTextFileMarkerTrivia = SyntaxKind._(8.toJS);

  static final SyntaxKind NumericLiteral = SyntaxKind._(9.toJS);

  static final SyntaxKind BigIntLiteral = SyntaxKind._(10.toJS);

  static final SyntaxKind StringLiteral = SyntaxKind._(11.toJS);

  static final SyntaxKind JsxText = SyntaxKind._(12.toJS);

  static final SyntaxKind JsxTextAllWhiteSpaces = SyntaxKind._(13.toJS);

  static final SyntaxKind RegularExpressionLiteral = SyntaxKind._(14.toJS);

  static final SyntaxKind NoSubstitutionTemplateLiteral = SyntaxKind._(15.toJS);

  static final SyntaxKind TemplateHead = SyntaxKind._(16.toJS);

  static final SyntaxKind TemplateMiddle = SyntaxKind._(17.toJS);

  static final SyntaxKind TemplateTail = SyntaxKind._(18.toJS);

  static final SyntaxKind OpenBraceToken = SyntaxKind._(19.toJS);

  static final SyntaxKind CloseBraceToken = SyntaxKind._(20.toJS);

  static final SyntaxKind OpenParenToken = SyntaxKind._(21.toJS);

  static final SyntaxKind CloseParenToken = SyntaxKind._(22.toJS);

  static final SyntaxKind OpenBracketToken = SyntaxKind._(23.toJS);

  static final SyntaxKind CloseBracketToken = SyntaxKind._(24.toJS);

  static final SyntaxKind DotToken = SyntaxKind._(25.toJS);

  static final SyntaxKind DotDotDotToken = SyntaxKind._(26.toJS);

  static final SyntaxKind SemicolonToken = SyntaxKind._(27.toJS);

  static final SyntaxKind CommaToken = SyntaxKind._(28.toJS);

  static final SyntaxKind QuestionDotToken = SyntaxKind._(29.toJS);

  static final SyntaxKind LessThanToken = SyntaxKind._(30.toJS);

  static final SyntaxKind LessThanSlashToken = SyntaxKind._(31.toJS);

  static final SyntaxKind GreaterThanToken = SyntaxKind._(32.toJS);

  static final SyntaxKind LessThanEqualsToken = SyntaxKind._(33.toJS);

  static final SyntaxKind GreaterThanEqualsToken = SyntaxKind._(34.toJS);

  static final SyntaxKind EqualsEqualsToken = SyntaxKind._(35.toJS);

  static final SyntaxKind ExclamationEqualsToken = SyntaxKind._(36.toJS);

  static final SyntaxKind EqualsEqualsEqualsToken = SyntaxKind._(37.toJS);

  static final SyntaxKind ExclamationEqualsEqualsToken = SyntaxKind._(38.toJS);

  static final SyntaxKind EqualsGreaterThanToken = SyntaxKind._(39.toJS);

  static final SyntaxKind PlusToken = SyntaxKind._(40.toJS);

  static final SyntaxKind MinusToken = SyntaxKind._(41.toJS);

  static final SyntaxKind AsteriskToken = SyntaxKind._(42.toJS);

  static final SyntaxKind AsteriskAsteriskToken = SyntaxKind._(43.toJS);

  static final SyntaxKind SlashToken = SyntaxKind._(44.toJS);

  static final SyntaxKind PercentToken = SyntaxKind._(45.toJS);

  static final SyntaxKind PlusPlusToken = SyntaxKind._(46.toJS);

  static final SyntaxKind MinusMinusToken = SyntaxKind._(47.toJS);

  static final SyntaxKind LessThanLessThanToken = SyntaxKind._(48.toJS);

  static final SyntaxKind GreaterThanGreaterThanToken = SyntaxKind._(49.toJS);

  static final SyntaxKind GreaterThanGreaterThanGreaterThanToken = SyntaxKind._(
    50.toJS,
  );

  static final SyntaxKind AmpersandToken = SyntaxKind._(51.toJS);

  static final SyntaxKind BarToken = SyntaxKind._(52.toJS);

  static final SyntaxKind CaretToken = SyntaxKind._(53.toJS);

  static final SyntaxKind ExclamationToken = SyntaxKind._(54.toJS);

  static final SyntaxKind TildeToken = SyntaxKind._(55.toJS);

  static final SyntaxKind AmpersandAmpersandToken = SyntaxKind._(56.toJS);

  static final SyntaxKind BarBarToken = SyntaxKind._(57.toJS);

  static final SyntaxKind QuestionToken = SyntaxKind._(58.toJS);

  static final SyntaxKind ColonToken = SyntaxKind._(59.toJS);

  static final SyntaxKind AtToken = SyntaxKind._(60.toJS);

  static final SyntaxKind QuestionQuestionToken = SyntaxKind._(61.toJS);

  /// Only the JSDoc scanner produces BacktickToken. The normal scanner produces
  /// NoSubstitutionTemplateLiteral and related kinds.
  static final SyntaxKind BacktickToken = SyntaxKind._(62.toJS);

  /// Only the JSDoc scanner produces HashToken. The normal scanner produces
  /// PrivateIdentifier.
  static final SyntaxKind HashToken = SyntaxKind._(63.toJS);

  static final SyntaxKind EqualsToken = SyntaxKind._(64.toJS);

  static final SyntaxKind PlusEqualsToken = SyntaxKind._(65.toJS);

  static final SyntaxKind MinusEqualsToken = SyntaxKind._(66.toJS);

  static final SyntaxKind AsteriskEqualsToken = SyntaxKind._(67.toJS);

  static final SyntaxKind AsteriskAsteriskEqualsToken = SyntaxKind._(68.toJS);

  static final SyntaxKind SlashEqualsToken = SyntaxKind._(69.toJS);

  static final SyntaxKind PercentEqualsToken = SyntaxKind._(70.toJS);

  static final SyntaxKind LessThanLessThanEqualsToken = SyntaxKind._(71.toJS);

  static final SyntaxKind GreaterThanGreaterThanEqualsToken = SyntaxKind._(
    72.toJS,
  );

  static final SyntaxKind GreaterThanGreaterThanGreaterThanEqualsToken =
      SyntaxKind._(73.toJS);

  static final SyntaxKind AmpersandEqualsToken = SyntaxKind._(74.toJS);

  static final SyntaxKind BarEqualsToken = SyntaxKind._(75.toJS);

  static final SyntaxKind BarBarEqualsToken = SyntaxKind._(76.toJS);

  static final SyntaxKind AmpersandAmpersandEqualsToken = SyntaxKind._(77.toJS);

  static final SyntaxKind QuestionQuestionEqualsToken = SyntaxKind._(78.toJS);

  static final SyntaxKind CaretEqualsToken = SyntaxKind._(79.toJS);

  static final SyntaxKind Identifier = SyntaxKind._(80.toJS);

  static final SyntaxKind PrivateIdentifier = SyntaxKind._(81.toJS);

  static final SyntaxKind BreakKeyword = SyntaxKind._(83.toJS);

  static final SyntaxKind CaseKeyword = SyntaxKind._(84.toJS);

  static final SyntaxKind CatchKeyword = SyntaxKind._(85.toJS);

  static final SyntaxKind ClassKeyword = SyntaxKind._(86.toJS);

  static final SyntaxKind ConstKeyword = SyntaxKind._(87.toJS);

  static final SyntaxKind ContinueKeyword = SyntaxKind._(88.toJS);

  static final SyntaxKind DebuggerKeyword = SyntaxKind._(89.toJS);

  static final SyntaxKind DefaultKeyword = SyntaxKind._(90.toJS);

  static final SyntaxKind DeleteKeyword = SyntaxKind._(91.toJS);

  static final SyntaxKind DoKeyword = SyntaxKind._(92.toJS);

  static final SyntaxKind ElseKeyword = SyntaxKind._(93.toJS);

  static final SyntaxKind EnumKeyword = SyntaxKind._(94.toJS);

  static final SyntaxKind ExportKeyword = SyntaxKind._(95.toJS);

  static final SyntaxKind ExtendsKeyword = SyntaxKind._(96.toJS);

  static final SyntaxKind FalseKeyword = SyntaxKind._(97.toJS);

  static final SyntaxKind FinallyKeyword = SyntaxKind._(98.toJS);

  static final SyntaxKind ForKeyword = SyntaxKind._(99.toJS);

  static final SyntaxKind FunctionKeyword = SyntaxKind._(100.toJS);

  static final SyntaxKind IfKeyword = SyntaxKind._(101.toJS);

  static final SyntaxKind ImportKeyword = SyntaxKind._(102.toJS);

  static final SyntaxKind InKeyword = SyntaxKind._(103.toJS);

  static final SyntaxKind InstanceOfKeyword = SyntaxKind._(104.toJS);

  static final SyntaxKind NewKeyword = SyntaxKind._(105.toJS);

  static final SyntaxKind NullKeyword = SyntaxKind._(106.toJS);

  static final SyntaxKind ReturnKeyword = SyntaxKind._(107.toJS);

  static final SyntaxKind SuperKeyword = SyntaxKind._(108.toJS);

  static final SyntaxKind SwitchKeyword = SyntaxKind._(109.toJS);

  static final SyntaxKind ThisKeyword = SyntaxKind._(110.toJS);

  static final SyntaxKind ThrowKeyword = SyntaxKind._(111.toJS);

  static final SyntaxKind TrueKeyword = SyntaxKind._(112.toJS);

  static final SyntaxKind TryKeyword = SyntaxKind._(113.toJS);

  static final SyntaxKind TypeOfKeyword = SyntaxKind._(114.toJS);

  static final SyntaxKind VarKeyword = SyntaxKind._(115.toJS);

  static final SyntaxKind VoidKeyword = SyntaxKind._(116.toJS);

  static final SyntaxKind WhileKeyword = SyntaxKind._(117.toJS);

  static final SyntaxKind WithKeyword = SyntaxKind._(118.toJS);

  static final SyntaxKind ImplementsKeyword = SyntaxKind._(119.toJS);

  static final SyntaxKind InterfaceKeyword = SyntaxKind._(120.toJS);

  static final SyntaxKind LetKeyword = SyntaxKind._(121.toJS);

  static final SyntaxKind PackageKeyword = SyntaxKind._(122.toJS);

  static final SyntaxKind PrivateKeyword = SyntaxKind._(123.toJS);

  static final SyntaxKind ProtectedKeyword = SyntaxKind._(124.toJS);

  static final SyntaxKind PublicKeyword = SyntaxKind._(125.toJS);

  static final SyntaxKind StaticKeyword = SyntaxKind._(126.toJS);

  static final SyntaxKind YieldKeyword = SyntaxKind._(127.toJS);

  static final SyntaxKind AbstractKeyword = SyntaxKind._(128.toJS);

  static final SyntaxKind AccessorKeyword = SyntaxKind._(129.toJS);

  static final SyntaxKind AsKeyword = SyntaxKind._(130.toJS);

  static final SyntaxKind AssertsKeyword = SyntaxKind._(131.toJS);

  static final SyntaxKind AssertKeyword = SyntaxKind._(132.toJS);

  static final SyntaxKind AnyKeyword = SyntaxKind._(133.toJS);

  static final SyntaxKind AsyncKeyword = SyntaxKind._(134.toJS);

  static final SyntaxKind AwaitKeyword = SyntaxKind._(135.toJS);

  static final SyntaxKind BooleanKeyword = SyntaxKind._(136.toJS);

  static final SyntaxKind ConstructorKeyword = SyntaxKind._(137.toJS);

  static final SyntaxKind DeclareKeyword = SyntaxKind._(138.toJS);

  static final SyntaxKind GetKeyword = SyntaxKind._(139.toJS);

  static final SyntaxKind InferKeyword = SyntaxKind._(140.toJS);

  static final SyntaxKind IntrinsicKeyword = SyntaxKind._(141.toJS);

  static final SyntaxKind IsKeyword = SyntaxKind._(142.toJS);

  static final SyntaxKind KeyOfKeyword = SyntaxKind._(143.toJS);

  static final SyntaxKind ModuleKeyword = SyntaxKind._(144.toJS);

  static final SyntaxKind NamespaceKeyword = SyntaxKind._(145.toJS);

  static final SyntaxKind NeverKeyword = SyntaxKind._(146.toJS);

  static final SyntaxKind OutKeyword = SyntaxKind._(147.toJS);

  static final SyntaxKind ReadonlyKeyword = SyntaxKind._(148.toJS);

  static final SyntaxKind RequireKeyword = SyntaxKind._(149.toJS);

  static final SyntaxKind NumberKeyword = SyntaxKind._(150.toJS);

  static final SyntaxKind ObjectKeyword = SyntaxKind._(151.toJS);

  static final SyntaxKind SatisfiesKeyword = SyntaxKind._(152.toJS);

  static final SyntaxKind SetKeyword = SyntaxKind._(153.toJS);

  static final SyntaxKind StringKeyword = SyntaxKind._(154.toJS);

  static final SyntaxKind SymbolKeyword = SyntaxKind._(155.toJS);

  static final SyntaxKind TypeKeyword = SyntaxKind._(156.toJS);

  static final SyntaxKind UndefinedKeyword = SyntaxKind._(157.toJS);

  static final SyntaxKind UniqueKeyword = SyntaxKind._(158.toJS);

  static final SyntaxKind UnknownKeyword = SyntaxKind._(159.toJS);

  static final SyntaxKind UsingKeyword = SyntaxKind._(160.toJS);

  static final SyntaxKind FromKeyword = SyntaxKind._(161.toJS);

  static final SyntaxKind GlobalKeyword = SyntaxKind._(162.toJS);

  static final SyntaxKind BigIntKeyword = SyntaxKind._(163.toJS);

  static final SyntaxKind OverrideKeyword = SyntaxKind._(164.toJS);

  static final SyntaxKind OfKeyword = SyntaxKind._(165.toJS);

  static final SyntaxKind DeferKeyword = SyntaxKind._(166.toJS);

  static final SyntaxKind QualifiedName = SyntaxKind._(167.toJS);

  static final SyntaxKind ComputedPropertyName = SyntaxKind._(168.toJS);

  static final SyntaxKind TypeParameter = SyntaxKind._(169.toJS);

  static final SyntaxKind Parameter = SyntaxKind._(170.toJS);

  static final SyntaxKind Decorator = SyntaxKind._(171.toJS);

  static final SyntaxKind PropertySignature = SyntaxKind._(172.toJS);

  static final SyntaxKind PropertyDeclaration = SyntaxKind._(173.toJS);

  static final SyntaxKind MethodSignature = SyntaxKind._(174.toJS);

  static final SyntaxKind MethodDeclaration = SyntaxKind._(175.toJS);

  static final SyntaxKind ClassStaticBlockDeclaration = SyntaxKind._(176.toJS);

  static final SyntaxKind Constructor = SyntaxKind._(177.toJS);

  static final SyntaxKind GetAccessor = SyntaxKind._(178.toJS);

  static final SyntaxKind SetAccessor = SyntaxKind._(179.toJS);

  static final SyntaxKind CallSignature = SyntaxKind._(180.toJS);

  static final SyntaxKind ConstructSignature = SyntaxKind._(181.toJS);

  static final SyntaxKind IndexSignature = SyntaxKind._(182.toJS);

  static final SyntaxKind TypePredicate = SyntaxKind._(183.toJS);

  static final SyntaxKind TypeReference = SyntaxKind._(184.toJS);

  static final SyntaxKind FunctionType = SyntaxKind._(185.toJS);

  static final SyntaxKind ConstructorType = SyntaxKind._(186.toJS);

  static final SyntaxKind TypeQuery = SyntaxKind._(187.toJS);

  static final SyntaxKind TypeLiteral = SyntaxKind._(188.toJS);

  static final SyntaxKind ArrayType = SyntaxKind._(189.toJS);

  static final SyntaxKind TupleType = SyntaxKind._(190.toJS);

  static final SyntaxKind OptionalType = SyntaxKind._(191.toJS);

  static final SyntaxKind RestType = SyntaxKind._(192.toJS);

  static final SyntaxKind UnionType = SyntaxKind._(193.toJS);

  static final SyntaxKind IntersectionType = SyntaxKind._(194.toJS);

  static final SyntaxKind ConditionalType = SyntaxKind._(195.toJS);

  static final SyntaxKind InferType = SyntaxKind._(196.toJS);

  static final SyntaxKind ParenthesizedType = SyntaxKind._(197.toJS);

  static final SyntaxKind ThisType = SyntaxKind._(198.toJS);

  static final SyntaxKind TypeOperator = SyntaxKind._(199.toJS);

  static final SyntaxKind IndexedAccessType = SyntaxKind._(200.toJS);

  static final SyntaxKind MappedType = SyntaxKind._(201.toJS);

  static final SyntaxKind LiteralType = SyntaxKind._(202.toJS);

  static final SyntaxKind NamedTupleMember = SyntaxKind._(203.toJS);

  static final SyntaxKind TemplateLiteralType = SyntaxKind._(204.toJS);

  static final SyntaxKind TemplateLiteralTypeSpan = SyntaxKind._(205.toJS);

  static final SyntaxKind ImportType = SyntaxKind._(206.toJS);

  static final SyntaxKind ObjectBindingPattern = SyntaxKind._(207.toJS);

  static final SyntaxKind ArrayBindingPattern = SyntaxKind._(208.toJS);

  static final SyntaxKind BindingElement = SyntaxKind._(209.toJS);

  static final SyntaxKind ArrayLiteralExpression = SyntaxKind._(210.toJS);

  static final SyntaxKind ObjectLiteralExpression = SyntaxKind._(211.toJS);

  static final SyntaxKind PropertyAccessExpression = SyntaxKind._(212.toJS);

  static final SyntaxKind ElementAccessExpression = SyntaxKind._(213.toJS);

  static final SyntaxKind CallExpression = SyntaxKind._(214.toJS);

  static final SyntaxKind NewExpression = SyntaxKind._(215.toJS);

  static final SyntaxKind TaggedTemplateExpression = SyntaxKind._(216.toJS);

  static final SyntaxKind TypeAssertionExpression = SyntaxKind._(217.toJS);

  static final SyntaxKind ParenthesizedExpression = SyntaxKind._(218.toJS);

  static final SyntaxKind FunctionExpression = SyntaxKind._(219.toJS);

  static final SyntaxKind ArrowFunction = SyntaxKind._(220.toJS);

  static final SyntaxKind DeleteExpression = SyntaxKind._(221.toJS);

  static final SyntaxKind TypeOfExpression = SyntaxKind._(222.toJS);

  static final SyntaxKind VoidExpression = SyntaxKind._(223.toJS);

  static final SyntaxKind AwaitExpression = SyntaxKind._(224.toJS);

  static final SyntaxKind PrefixUnaryExpression = SyntaxKind._(225.toJS);

  static final SyntaxKind PostfixUnaryExpression = SyntaxKind._(226.toJS);

  static final SyntaxKind BinaryExpression = SyntaxKind._(227.toJS);

  static final SyntaxKind ConditionalExpression = SyntaxKind._(228.toJS);

  static final SyntaxKind TemplateExpression = SyntaxKind._(229.toJS);

  static final SyntaxKind YieldExpression = SyntaxKind._(230.toJS);

  static final SyntaxKind SpreadElement = SyntaxKind._(231.toJS);

  static final SyntaxKind ClassExpression = SyntaxKind._(232.toJS);

  static final SyntaxKind OmittedExpression = SyntaxKind._(233.toJS);

  static final SyntaxKind ExpressionWithTypeArguments = SyntaxKind._(234.toJS);

  static final SyntaxKind AsExpression = SyntaxKind._(235.toJS);

  static final SyntaxKind NonNullExpression = SyntaxKind._(236.toJS);

  static final SyntaxKind MetaProperty = SyntaxKind._(237.toJS);

  static final SyntaxKind SyntheticExpression = SyntaxKind._(238.toJS);

  static final SyntaxKind SatisfiesExpression = SyntaxKind._(239.toJS);

  static final SyntaxKind TemplateSpan = SyntaxKind._(240.toJS);

  static final SyntaxKind SemicolonClassElement = SyntaxKind._(241.toJS);

  static final SyntaxKind Block = SyntaxKind._(242.toJS);

  static final SyntaxKind EmptyStatement = SyntaxKind._(243.toJS);

  static final SyntaxKind VariableStatement = SyntaxKind._(244.toJS);

  static final SyntaxKind ExpressionStatement = SyntaxKind._(245.toJS);

  static final SyntaxKind IfStatement = SyntaxKind._(246.toJS);

  static final SyntaxKind DoStatement = SyntaxKind._(247.toJS);

  static final SyntaxKind WhileStatement = SyntaxKind._(248.toJS);

  static final SyntaxKind ForStatement = SyntaxKind._(249.toJS);

  static final SyntaxKind ForInStatement = SyntaxKind._(250.toJS);

  static final SyntaxKind ForOfStatement = SyntaxKind._(251.toJS);

  static final SyntaxKind ContinueStatement = SyntaxKind._(252.toJS);

  static final SyntaxKind BreakStatement = SyntaxKind._(253.toJS);

  static final SyntaxKind ReturnStatement = SyntaxKind._(254.toJS);

  static final SyntaxKind WithStatement = SyntaxKind._(255.toJS);

  static final SyntaxKind SwitchStatement = SyntaxKind._(256.toJS);

  static final SyntaxKind LabeledStatement = SyntaxKind._(257.toJS);

  static final SyntaxKind ThrowStatement = SyntaxKind._(258.toJS);

  static final SyntaxKind TryStatement = SyntaxKind._(259.toJS);

  static final SyntaxKind DebuggerStatement = SyntaxKind._(260.toJS);

  static final SyntaxKind VariableDeclaration = SyntaxKind._(261.toJS);

  static final SyntaxKind VariableDeclarationList = SyntaxKind._(262.toJS);

  static final SyntaxKind FunctionDeclaration = SyntaxKind._(263.toJS);

  static final SyntaxKind ClassDeclaration = SyntaxKind._(264.toJS);

  static final SyntaxKind InterfaceDeclaration = SyntaxKind._(265.toJS);

  static final SyntaxKind TypeAliasDeclaration = SyntaxKind._(266.toJS);

  static final SyntaxKind EnumDeclaration = SyntaxKind._(267.toJS);

  static final SyntaxKind ModuleDeclaration = SyntaxKind._(268.toJS);

  static final SyntaxKind ModuleBlock = SyntaxKind._(269.toJS);

  static final SyntaxKind CaseBlock = SyntaxKind._(270.toJS);

  static final SyntaxKind NamespaceExportDeclaration = SyntaxKind._(271.toJS);

  static final SyntaxKind ImportEqualsDeclaration = SyntaxKind._(272.toJS);

  static final SyntaxKind ImportDeclaration = SyntaxKind._(273.toJS);

  static final SyntaxKind ImportClause = SyntaxKind._(274.toJS);

  static final SyntaxKind NamespaceImport = SyntaxKind._(275.toJS);

  static final SyntaxKind NamedImports = SyntaxKind._(276.toJS);

  static final SyntaxKind ImportSpecifier = SyntaxKind._(277.toJS);

  static final SyntaxKind ExportAssignment = SyntaxKind._(278.toJS);

  static final SyntaxKind ExportDeclaration = SyntaxKind._(279.toJS);

  static final SyntaxKind NamedExports = SyntaxKind._(280.toJS);

  static final SyntaxKind NamespaceExport = SyntaxKind._(281.toJS);

  static final SyntaxKind ExportSpecifier = SyntaxKind._(282.toJS);

  static final SyntaxKind MissingDeclaration = SyntaxKind._(283.toJS);

  static final SyntaxKind ExternalModuleReference = SyntaxKind._(284.toJS);

  static final SyntaxKind JsxElement = SyntaxKind._(285.toJS);

  static final SyntaxKind JsxSelfClosingElement = SyntaxKind._(286.toJS);

  static final SyntaxKind JsxOpeningElement = SyntaxKind._(287.toJS);

  static final SyntaxKind JsxClosingElement = SyntaxKind._(288.toJS);

  static final SyntaxKind JsxFragment = SyntaxKind._(289.toJS);

  static final SyntaxKind JsxOpeningFragment = SyntaxKind._(290.toJS);

  static final SyntaxKind JsxClosingFragment = SyntaxKind._(291.toJS);

  static final SyntaxKind JsxAttribute = SyntaxKind._(292.toJS);

  static final SyntaxKind JsxAttributes = SyntaxKind._(293.toJS);

  static final SyntaxKind JsxSpreadAttribute = SyntaxKind._(294.toJS);

  static final SyntaxKind JsxExpression = SyntaxKind._(295.toJS);

  static final SyntaxKind JsxNamespacedName = SyntaxKind._(296.toJS);

  static final SyntaxKind CaseClause = SyntaxKind._(297.toJS);

  static final SyntaxKind DefaultClause = SyntaxKind._(298.toJS);

  static final SyntaxKind HeritageClause = SyntaxKind._(299.toJS);

  static final SyntaxKind CatchClause = SyntaxKind._(300.toJS);

  static final SyntaxKind ImportAttributes = SyntaxKind._(301.toJS);

  static final SyntaxKind ImportAttribute = SyntaxKind._(302.toJS);

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  static final SyntaxKind AssertClause = SyntaxKind._(301.toJS);

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  static final SyntaxKind AssertEntry = SyntaxKind._(302.toJS);

  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  static final SyntaxKind ImportTypeAssertionContainer = SyntaxKind._(303.toJS);

  static final SyntaxKind PropertyAssignment = SyntaxKind._(304.toJS);

  static final SyntaxKind ShorthandPropertyAssignment = SyntaxKind._(305.toJS);

  static final SyntaxKind SpreadAssignment = SyntaxKind._(306.toJS);

  static final SyntaxKind EnumMember = SyntaxKind._(307.toJS);

  static final SyntaxKind SourceFile = SyntaxKind._(308.toJS);

  static final SyntaxKind Bundle = SyntaxKind._(309.toJS);

  static final SyntaxKind JSDocTypeExpression = SyntaxKind._(310.toJS);

  static final SyntaxKind JSDocNameReference = SyntaxKind._(311.toJS);

  static final SyntaxKind JSDocMemberName = SyntaxKind._(312.toJS);

  static final SyntaxKind JSDocAllType = SyntaxKind._(313.toJS);

  static final SyntaxKind JSDocUnknownType = SyntaxKind._(314.toJS);

  static final SyntaxKind JSDocNullableType = SyntaxKind._(315.toJS);

  static final SyntaxKind JSDocNonNullableType = SyntaxKind._(316.toJS);

  static final SyntaxKind JSDocOptionalType = SyntaxKind._(317.toJS);

  static final SyntaxKind JSDocFunctionType = SyntaxKind._(318.toJS);

  static final SyntaxKind JSDocVariadicType = SyntaxKind._(319.toJS);

  static final SyntaxKind JSDocNamepathType = SyntaxKind._(320.toJS);

  static final SyntaxKind JSDoc = SyntaxKind._(321.toJS);

  @Deprecated('Use SyntaxKind.JSDoc')
  static final SyntaxKind JSDocComment = SyntaxKind._(321.toJS);

  static final SyntaxKind JSDocText = SyntaxKind._(322.toJS);

  static final SyntaxKind JSDocTypeLiteral = SyntaxKind._(323.toJS);

  static final SyntaxKind JSDocSignature = SyntaxKind._(324.toJS);

  static final SyntaxKind JSDocLink = SyntaxKind._(325.toJS);

  static final SyntaxKind JSDocLinkCode = SyntaxKind._(326.toJS);

  static final SyntaxKind JSDocLinkPlain = SyntaxKind._(327.toJS);

  static final SyntaxKind JSDocTag = SyntaxKind._(328.toJS);

  static final SyntaxKind JSDocAugmentsTag = SyntaxKind._(329.toJS);

  static final SyntaxKind JSDocImplementsTag = SyntaxKind._(330.toJS);

  static final SyntaxKind JSDocAuthorTag = SyntaxKind._(331.toJS);

  static final SyntaxKind JSDocDeprecatedTag = SyntaxKind._(332.toJS);

  static final SyntaxKind JSDocClassTag = SyntaxKind._(333.toJS);

  static final SyntaxKind JSDocPublicTag = SyntaxKind._(334.toJS);

  static final SyntaxKind JSDocPrivateTag = SyntaxKind._(335.toJS);

  static final SyntaxKind JSDocProtectedTag = SyntaxKind._(336.toJS);

  static final SyntaxKind JSDocReadonlyTag = SyntaxKind._(337.toJS);

  static final SyntaxKind JSDocOverrideTag = SyntaxKind._(338.toJS);

  static final SyntaxKind JSDocCallbackTag = SyntaxKind._(339.toJS);

  static final SyntaxKind JSDocOverloadTag = SyntaxKind._(340.toJS);

  static final SyntaxKind JSDocEnumTag = SyntaxKind._(341.toJS);

  static final SyntaxKind JSDocParameterTag = SyntaxKind._(342.toJS);

  static final SyntaxKind JSDocReturnTag = SyntaxKind._(343.toJS);

  static final SyntaxKind JSDocThisTag = SyntaxKind._(344.toJS);

  static final SyntaxKind JSDocTypeTag = SyntaxKind._(345.toJS);

  static final SyntaxKind JSDocTemplateTag = SyntaxKind._(346.toJS);

  static final SyntaxKind JSDocTypedefTag = SyntaxKind._(347.toJS);

  static final SyntaxKind JSDocSeeTag = SyntaxKind._(348.toJS);

  static final SyntaxKind JSDocPropertyTag = SyntaxKind._(349.toJS);

  static final SyntaxKind JSDocThrowsTag = SyntaxKind._(350.toJS);

  static final SyntaxKind JSDocSatisfiesTag = SyntaxKind._(351.toJS);

  static final SyntaxKind JSDocImportTag = SyntaxKind._(352.toJS);

  static final SyntaxKind SyntaxList = SyntaxKind._(353.toJS);

  static final SyntaxKind NotEmittedStatement = SyntaxKind._(354.toJS);

  static final SyntaxKind NotEmittedTypeElement = SyntaxKind._(355.toJS);

  static final SyntaxKind PartiallyEmittedExpression = SyntaxKind._(356.toJS);

  static final SyntaxKind CommaListExpression = SyntaxKind._(357.toJS);

  static final SyntaxKind SyntheticReferenceExpression = SyntaxKind._(358.toJS);

  static final SyntaxKind Count = SyntaxKind._(359.toJS);

  static final SyntaxKind FirstAssignment = SyntaxKind._(64.toJS);

  static final SyntaxKind LastAssignment = SyntaxKind._(79.toJS);

  static final SyntaxKind FirstCompoundAssignment = SyntaxKind._(65.toJS);

  static final SyntaxKind LastCompoundAssignment = SyntaxKind._(79.toJS);

  static final SyntaxKind FirstReservedWord = SyntaxKind._(83.toJS);

  static final SyntaxKind LastReservedWord = SyntaxKind._(118.toJS);

  static final SyntaxKind FirstKeyword = SyntaxKind._(83.toJS);

  static final SyntaxKind LastKeyword = SyntaxKind._(166.toJS);

  static final SyntaxKind FirstFutureReservedWord = SyntaxKind._(119.toJS);

  static final SyntaxKind LastFutureReservedWord = SyntaxKind._(127.toJS);

  static final SyntaxKind FirstTypeNode = SyntaxKind._(183.toJS);

  static final SyntaxKind LastTypeNode = SyntaxKind._(206.toJS);

  static final SyntaxKind FirstPunctuation = SyntaxKind._(19.toJS);

  static final SyntaxKind LastPunctuation = SyntaxKind._(79.toJS);

  static final SyntaxKind FirstToken = SyntaxKind._(0.toJS);

  static final SyntaxKind LastToken = SyntaxKind._(166.toJS);

  static final SyntaxKind FirstTriviaToken = SyntaxKind._(2.toJS);

  static final SyntaxKind LastTriviaToken = SyntaxKind._(7.toJS);

  static final SyntaxKind FirstLiteralToken = SyntaxKind._(9.toJS);

  static final SyntaxKind LastLiteralToken = SyntaxKind._(15.toJS);

  static final SyntaxKind FirstTemplateToken = SyntaxKind._(15.toJS);

  static final SyntaxKind LastTemplateToken = SyntaxKind._(18.toJS);

  static final SyntaxKind FirstBinaryOperator = SyntaxKind._(30.toJS);

  static final SyntaxKind LastBinaryOperator = SyntaxKind._(79.toJS);

  static final SyntaxKind FirstStatement = SyntaxKind._(244.toJS);

  static final SyntaxKind LastStatement = SyntaxKind._(260.toJS);

  static final SyntaxKind FirstNode = SyntaxKind._(167.toJS);

  static final SyntaxKind FirstJSDocNode = SyntaxKind._(310.toJS);

  static final SyntaxKind LastJSDocNode = SyntaxKind._(352.toJS);

  static final SyntaxKind FirstJSDocTagNode = SyntaxKind._(328.toJS);

  static final SyntaxKind LastJSDocTagNode = SyntaxKind._(352.toJS);
}

/// This interface is a base interface for ObjectLiteralExpression and
/// JSXAttributes to extend from. JSXAttributes is similar to
/// ObjectLiteralExpression in that it contains array of properties; however,
/// JSXAttributes' properties can only be
/// JSXAttribute or JSXSpreadAttribute. ObjectLiteralExpression, on the other
/// hand, can only have properties of type
/// ObjectLiteralElement (e.g. PropertyAssignment, ShorthandPropertyAssignment
/// etc.)
extension type ObjectLiteralExpressionBase<T extends _i1.JSObject>._(
  _i1.JSObject _
)
    implements PrimaryExpression, Declaration {
  external NodeArray<_i1.JSObject> get properties;
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type PrimaryExpression._(_i1.JSObject _) implements MemberExpression {
  @_i1.JS('_primaryExpressionBrand')
  external _i1.JSAny? $_primaryExpressionBrand;
}
extension type MemberExpression._(_i1.JSObject _)
    implements LeftHandSideExpression {
  @_i1.JS('_memberExpressionBrand')
  external _i1.JSAny? $_memberExpressionBrand;
}
extension type LeftHandSideExpression._(_i1.JSObject _)
    implements UpdateExpression {
  @_i1.JS('_leftHandSideExpressionBrand')
  external _i1.JSAny? $_leftHandSideExpressionBrand;
}
extension type UpdateExpression._(_i1.JSObject _) implements UnaryExpression {
  @_i1.JS('_updateExpressionBrand')
  external _i1.JSAny? $_updateExpressionBrand;
}
extension type UnaryExpression._(_i1.JSObject _) implements Expression {
  @_i1.JS('_unaryExpressionBrand')
  external _i1.JSAny? $_unaryExpressionBrand;
}
extension type Expression._(_i1.JSObject _) implements Node {
  @_i1.JS('_expressionBrand')
  external _i1.JSAny? $_expressionBrand;
}
extension type Node._(_i1.JSObject _) implements ReadonlyTextRange {
  external SyntaxKind get kind;
  external NodeFlags get flags;
  external Node get parent;
}
extension type NodeFlags._(_i1.JSNumber _) implements _i1.JSNumber {
  static final NodeFlags None = NodeFlags._(0.toJS);

  static final NodeFlags Let = NodeFlags._(1.toJS);

  static final NodeFlags Const = NodeFlags._(2.toJS);

  static final NodeFlags Using = NodeFlags._(4.toJS);

  static final NodeFlags AwaitUsing = NodeFlags._(6.toJS);

  static final NodeFlags NestedNamespace = NodeFlags._(8.toJS);

  static final NodeFlags Synthesized = NodeFlags._(16.toJS);

  static final NodeFlags Namespace = NodeFlags._(32.toJS);

  static final NodeFlags OptionalChain = NodeFlags._(64.toJS);

  static final NodeFlags ExportContext = NodeFlags._(128.toJS);

  static final NodeFlags ContainsThis = NodeFlags._(256.toJS);

  static final NodeFlags HasImplicitReturn = NodeFlags._(512.toJS);

  static final NodeFlags HasExplicitReturn = NodeFlags._(1024.toJS);

  static final NodeFlags GlobalAugmentation = NodeFlags._(2048.toJS);

  static final NodeFlags HasAsyncFunctions = NodeFlags._(4096.toJS);

  static final NodeFlags DisallowInContext = NodeFlags._(8192.toJS);

  static final NodeFlags YieldContext = NodeFlags._(16384.toJS);

  static final NodeFlags DecoratorContext = NodeFlags._(32768.toJS);

  static final NodeFlags AwaitContext = NodeFlags._(65536.toJS);

  static final NodeFlags DisallowConditionalTypesContext = NodeFlags._(
    131072.toJS,
  );

  static final NodeFlags ThisNodeHasError = NodeFlags._(262144.toJS);

  static final NodeFlags JavaScriptFile = NodeFlags._(524288.toJS);

  static final NodeFlags ThisNodeOrAnySubNodesHasError = NodeFlags._(
    1048576.toJS,
  );

  static final NodeFlags HasAggregatedChildData = NodeFlags._(2097152.toJS);

  static final NodeFlags JSDoc = NodeFlags._(16777216.toJS);

  static final NodeFlags JsonFile = NodeFlags._(134217728.toJS);

  static final NodeFlags BlockScoped = NodeFlags._(7.toJS);

  static final NodeFlags Constant = NodeFlags._(6.toJS);

  static final NodeFlags ReachabilityCheckFlags = NodeFlags._(1536.toJS);

  static final NodeFlags ReachabilityAndEmitFlags = NodeFlags._(5632.toJS);

  static final NodeFlags ContextFlags = NodeFlags._(101441536.toJS);

  static final NodeFlags TypeExcludesFlags = NodeFlags._(81920.toJS);
}
extension type Declaration._(_i1.JSObject _) implements Node {
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? $_declarationBrand;
}
extension type PropertyAssignment._(_i1.JSObject _)
    implements ObjectLiteralElement, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ObjectLiteralExpression get parent;
  @_i2.redeclare
  external String get name;
  external Expression get initializer;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
typedef PropertyName = AnonymousUnion_5805531;
extension type Identifier._(_i1.JSObject _)
    implements PrimaryExpression, Declaration, JSDocContainer, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;

  /// Prefer to use `id.unescapedText`. (Note: This is available only in
  /// services, not internally to the TypeScript compiler.)
  /// Text of identifier, but if the identifier begins with two underscores,
  /// this will begin with three.
  external __String get escapedText;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}

/// This represents a string whose leading underscore have been escaped by
/// adding extra leading underscores.
/// The shape of this brand is rather unique compared to others we've used.
/// Instead of just an intersection of a string and an object, it is that
/// union-ed
/// with an intersection of void and an object. This makes it wholly
/// incompatible
/// with a normal string (which is good, it cannot be misused on assignment or
/// on usage),
/// while still being comparable with a normal string via === (also good) and
/// castable from a string.
typedef __String = AnonymousUnion_2036142;
extension type AnonymousType_6565416._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_6565416();
}
extension type AnonymousIntersection_4024081._(_i1.JSAny _)
    implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  AnonymousType_6565416 get asAnonymousType_6565416 =>
      (_ as AnonymousType_6565416);
}
extension type AnonymousIntersection_1270241._(_i1.JSAny _)
    implements _i1.JSAny {
  void get asVoid => _;

  AnonymousType_6565416 get asAnonymousType_6565416 =>
      (_ as AnonymousType_6565416);
}
extension type InternalSymbolName._(_i1.JSString _) implements _i1.JSString {
  static final InternalSymbolName Call = InternalSymbolName._('__call'.toJS);

  static final InternalSymbolName Constructor = InternalSymbolName._(
    '__constructor'.toJS,
  );

  static final InternalSymbolName New = InternalSymbolName._('__new'.toJS);

  static final InternalSymbolName Index = InternalSymbolName._('__index'.toJS);

  static final InternalSymbolName ExportStar = InternalSymbolName._(
    '__export'.toJS,
  );

  static final InternalSymbolName Global = InternalSymbolName._(
    '__global'.toJS,
  );

  static final InternalSymbolName Missing = InternalSymbolName._(
    '__missing'.toJS,
  );

  static final InternalSymbolName Type = InternalSymbolName._('__type'.toJS);

  static final InternalSymbolName Object = InternalSymbolName._(
    '__object'.toJS,
  );

  static final InternalSymbolName JSXAttributes = InternalSymbolName._(
    '__jsxAttributes'.toJS,
  );

  static final InternalSymbolName Class = InternalSymbolName._('__class'.toJS);

  static final InternalSymbolName Function$ = InternalSymbolName._(
    '__function'.toJS,
  );

  static final InternalSymbolName Computed = InternalSymbolName._(
    '__computed'.toJS,
  );

  static final InternalSymbolName Resolving = InternalSymbolName._(
    '__resolving__'.toJS,
  );

  static final InternalSymbolName ExportEquals = InternalSymbolName._(
    'export='.toJS,
  );

  static final InternalSymbolName Default = InternalSymbolName._(
    'default'.toJS,
  );

  static final InternalSymbolName This = InternalSymbolName._('this'.toJS);

  static final InternalSymbolName InstantiationExpression =
      InternalSymbolName._('__instantiationExpression'.toJS);

  static final InternalSymbolName ImportAttributes = InternalSymbolName._(
    '__importAttributes'.toJS,
  );
}
extension type AnonymousUnion_2036142._(_i1.JSAny _) implements _i1.JSAny {
  AnonymousIntersection_4024081 get asAnonymousIntersection_4024081 =>
      (_ as AnonymousIntersection_4024081);

  AnonymousIntersection_1270241 get asAnonymousIntersection_1270241 =>
      (_ as AnonymousIntersection_1270241);

  InternalSymbolName get asInternalSymbolName =>
      InternalSymbolName._((_ as _i1.JSString));
}
extension type JSDocContainer._(_i1.JSObject _) implements Node {
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? $_jsdocContainerBrand;
}
extension type FlowContainer._(_i1.JSObject _) implements Node {
  @_i1.JS('_flowContainerBrand')
  external _i1.JSAny? $_flowContainerBrand;
}
extension type StringLiteral._(_i1.JSObject _)
    implements LiteralExpression, Declaration {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type LiteralExpression._(_i1.JSObject _)
    implements LiteralLikeNode, PrimaryExpression {
  @_i1.JS('_literalExpressionBrand')
  external _i1.JSAny? $_literalExpressionBrand;

  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type LiteralLikeNode._(_i1.JSObject _) implements Node {
  external String text;

  external bool? isUnterminated;

  external bool? hasExtendedUnicodeEscape;
}
extension type NoSubstitutionTemplateLiteral._(_i1.JSObject _)
    implements LiteralExpression, TemplateLiteralLikeNode, Declaration {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get text;
  external set text(String value);
  external bool? get isUnterminated;
  external set isUnterminated(bool? value);
  external bool? get hasExtendedUnicodeEscape;
  external set hasExtendedUnicodeEscape(bool? value);
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type TemplateLiteralLikeNode._(_i1.JSObject _)
    implements LiteralLikeNode {
  external String? rawText;
}
extension type NumericLiteral._(_i1.JSObject _)
    implements LiteralExpression, Declaration {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type ComputedPropertyName._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external Declaration get parent;
  external Expression get expression;
}
extension type PrivateIdentifier._(_i1.JSObject _)
    implements PrimaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external __String get escapedText;
}
extension type BigIntLiteral._(_i1.JSObject _) implements LiteralExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type AnonymousUnion_5805531._(Node _) implements Node {
  Identifier get asIdentifier => (_ as Identifier);

  StringLiteral get asStringLiteral => (_ as StringLiteral);

  NoSubstitutionTemplateLiteral get asNoSubstitutionTemplateLiteral =>
      (_ as NoSubstitutionTemplateLiteral);

  NumericLiteral get asNumericLiteral => (_ as NumericLiteral);

  ComputedPropertyName get asComputedPropertyName =>
      (_ as ComputedPropertyName);

  PrivateIdentifier get asPrivateIdentifier => (_ as PrivateIdentifier);

  BigIntLiteral get asBigIntLiteral => (_ as BigIntLiteral);
}
extension type ObjectLiteralElement._(_i1.JSObject _)
    implements NamedDeclaration {
  @_i1.JS('_objectLiteralBrand')
  external _i1.JSAny? $_objectLiteralBrand;

  @_i2.redeclare
  external String? get name;
}
extension type NamedDeclaration._(_i1.JSObject _) implements Declaration {
  external String? get name;
}
typedef DeclarationName = AnonymousUnion_2961058;
typedef JsxAttributeName = AnonymousUnion_2800809;
extension type JsxNamespacedName._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get name;
  external Identifier get namespace;
}
extension type AnonymousUnion_2800809._(Node _) implements Node {
  Identifier get asIdentifier => (_ as Identifier);

  JsxNamespacedName get asJsxNamespacedName => (_ as JsxNamespacedName);
}
typedef StringLiteralLike = AnonymousUnion_3755859;
extension type AnonymousUnion_3755859._(_i1.JSObject _)
    implements _i1.JSObject {
  StringLiteral get asStringLiteral => (_ as StringLiteral);

  NoSubstitutionTemplateLiteral get asNoSubstitutionTemplateLiteral =>
      (_ as NoSubstitutionTemplateLiteral);
}
extension type ElementAccessExpression._(_i1.JSObject _)
    implements MemberExpression, Declaration, JSDocContainer, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external LeftHandSideExpression get expression;
  external QuestionDotToken? get questionDotToken;
  external Expression get argumentExpression;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
typedef QuestionDotToken = PunctuationToken<_i1.JSNumber>;
extension type PunctuationToken<TKind extends _i1.JSNumber>._(_i1.JSObject _)
    implements Token<_i1.JSNumber> {}
extension type Token<TKind extends _i1.JSNumber>._(_i1.JSObject _)
    implements Node {
  @_i2.redeclare
  external TKind get kind;
}
typedef BindingPattern = AnonymousUnion_4353370;
extension type ObjectBindingPattern._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_2419982 get parent;
  external NodeArray<BindingElement> get elements;
}
extension type VariableDeclaration._(_i1.JSObject _)
    implements NamedDeclaration, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_2302268 get parent;
  @_i2.redeclare
  external String get name;
  external ExclamationToken? get exclamationToken;
  external String? get type;
  external Expression? get initializer;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type VariableDeclarationList._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_2107317 get parent;
  external NodeArray<VariableDeclaration> get declarations;
}
extension type VariableStatement._(_i1.JSObject _)
    implements Statement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  external VariableDeclarationList get declarationList;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
typedef Modifier = AnonymousUnion_8635666;
typedef AbstractKeyword = ModifierToken<_i1.JSNumber>;
extension type ModifierToken<TKind extends _i1.JSNumber>._(_i1.JSObject _)
    implements KeywordToken<_i1.JSNumber> {}
extension type KeywordToken<TKind extends _i1.JSNumber>._(_i1.JSObject _)
    implements Token<_i1.JSNumber> {}
typedef AccessorKeyword = ModifierToken<_i1.JSNumber>;
typedef AsyncKeyword = ModifierToken<_i1.JSNumber>;
typedef ConstKeyword = ModifierToken<_i1.JSNumber>;
typedef DeclareKeyword = ModifierToken<_i1.JSNumber>;
typedef DefaultKeyword = ModifierToken<_i1.JSNumber>;
typedef ExportKeyword = ModifierToken<_i1.JSNumber>;
typedef InKeyword = ModifierToken<_i1.JSNumber>;
typedef PrivateKeyword = ModifierToken<_i1.JSNumber>;
typedef ProtectedKeyword = ModifierToken<_i1.JSNumber>;
typedef PublicKeyword = ModifierToken<_i1.JSNumber>;
typedef OutKeyword = ModifierToken<_i1.JSNumber>;
typedef OverrideKeyword = ModifierToken<_i1.JSNumber>;
typedef ReadonlyKeyword = ModifierToken<_i1.JSNumber>;
typedef StaticKeyword = ModifierToken<_i1.JSNumber>;
extension type AnonymousUnion_8635666._(ModifierToken<_i1.JSNumber> _)
    implements ModifierToken<_i1.JSNumber> {
  AbstractKeyword get asAbstractKeyword => _;

  AccessorKeyword get asAccessorKeyword => _;

  AsyncKeyword get asAsyncKeyword => _;

  ConstKeyword get asConstKeyword => _;

  DeclareKeyword get asDeclareKeyword => _;

  DefaultKeyword get asDefaultKeyword => _;

  ExportKeyword get asExportKeyword => _;

  InKeyword get asInKeyword => _;

  PrivateKeyword get asPrivateKeyword => _;

  ProtectedKeyword get asProtectedKeyword => _;

  PublicKeyword get asPublicKeyword => _;

  OutKeyword get asOutKeyword => _;

  OverrideKeyword get asOverrideKeyword => _;

  ReadonlyKeyword get asReadonlyKeyword => _;

  StaticKeyword get asStaticKeyword => _;
}
extension type Decorator._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external NamedDeclaration get parent;
  external LeftHandSideExpression get expression;
}
extension type AnonymousUnion_4023207._(Node _) implements Node {
  Modifier get asModifier => (_ as AnonymousUnion_8635666);

  Decorator get asDecorator => (_ as Decorator);
}
extension type Statement._(_i1.JSObject _) implements Node, JSDocContainer {
  @_i1.JS('_statementBrand')
  external _i1.JSAny? $_statementBrand;

  external SyntaxKind get kind;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type ForStatement._(_i1.JSObject _)
    implements IterationStatement, LocalsContainer, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external ForInitializer? get initializer;
  external Expression? get condition;
  external Expression? get incrementor;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
typedef ForInitializer = AnonymousUnion_1156623;
extension type AnonymousUnion_1156623._(Node _) implements Node {
  VariableDeclarationList get asVariableDeclarationList =>
      (_ as VariableDeclarationList);

  Expression get asExpression => (_ as Expression);
}
extension type IterationStatement._(_i1.JSObject _) implements Statement {
  external Statement get statement;
}
extension type LocalsContainer._(_i1.JSObject _) implements Node {
  @_i1.JS('_localsContainerBrand')
  external _i1.JSAny? $_localsContainerBrand;
}
extension type ForOfStatement._(_i1.JSObject _)
    implements IterationStatement, LocalsContainer, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external AwaitKeyword? get awaitModifier;
  external ForInitializer get initializer;
  external Expression get expression;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
typedef AwaitKeyword = KeywordToken<_i1.JSNumber>;
extension type ForInStatement._(_i1.JSObject _)
    implements IterationStatement, LocalsContainer, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external ForInitializer get initializer;
  external Expression get expression;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type AnonymousUnion_2107317._(_i1.JSObject _)
    implements _i1.JSObject {
  VariableStatement get asVariableStatement => (_ as VariableStatement);

  ForStatement get asForStatement => (_ as ForStatement);

  ForOfStatement get asForOfStatement => (_ as ForOfStatement);

  ForInStatement get asForInStatement => (_ as ForInStatement);
}
extension type CatchClause._(_i1.JSObject _) implements Node, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external TryStatement get parent;
  external VariableDeclaration? get variableDeclaration;
  external Block get block;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type TryStatement._(_i1.JSObject _)
    implements Statement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Block get tryBlock;
  external CatchClause? get catchClause;
  external Block? get finallyBlock;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type Block._(_i1.JSObject _) implements Statement, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<Statement> get statements;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type AnonymousUnion_2302268._(Node _) implements Node {
  VariableDeclarationList get asVariableDeclarationList =>
      (_ as VariableDeclarationList);

  CatchClause get asCatchClause => (_ as CatchClause);
}
typedef BindingName = AnonymousUnion_1836642;
extension type AnonymousUnion_1836642._(Node _) implements Node {
  Identifier get asIdentifier => (_ as Identifier);

  BindingPattern get asBindingPattern => (_ as AnonymousUnion_4353370);
}
typedef ExclamationToken = PunctuationToken<_i1.JSNumber>;
extension type TypeNode._(_i1.JSObject _) implements Node {
  @_i1.JS('_typeNodeBrand')
  external _i1.JSAny? $_typeNodeBrand;
}
extension type ParameterDeclaration._(_i1.JSObject _)
    implements NamedDeclaration, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external SignatureDeclaration get parent;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  external DotDotDotToken? get dotDotDotToken;
  @_i2.redeclare
  external String get name;
  external QuestionToken? get questionToken;
  external String? get type;
  external Expression? get initializer;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
typedef SignatureDeclaration = AnonymousUnion_2968490;
extension type CallSignatureDeclaration._(_i1.JSObject _)
    implements SignatureDeclarationBase, TypeElement, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String? get name;
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? get $_declarationBrand;
  @_i1.JS('_declarationBrand')
  external set $_declarationBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type SignatureDeclarationBase._(_i1.JSObject _)
    implements NamedDeclaration, JSDocContainer {
  @_i2.redeclare
  external _i1.JSAny get kind;
  @_i2.redeclare
  external String? get name;
  external NodeArray<TypeParameterDeclaration>? get typeParameters;
  external NodeArray<ParameterDeclaration> get parameters;
  external String? get type;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type TypeParameterDeclaration._(_i1.JSObject _)
    implements NamedDeclaration, JSDocContainer {
  external Expression? expression;

  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_2810713 get parent;
  external NodeArray<AnonymousUnion_8635666>? get modifiers;
  @_i2.redeclare
  external String get name;

  /// Note: Consider calling `getEffectiveConstraintOfTypeParameter`
  external TypeNode? get constraint;
  @_i1.JS('default')
  external TypeNode? get default$;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
typedef DeclarationWithTypeParameterChildren = AnonymousUnion_7027864;
typedef ClassLikeDeclaration = AnonymousUnion_1983041;
extension type ClassDeclaration._(_i1.JSObject _)
    implements ClassLikeDeclarationBase, DeclarationStatement {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;

  /// May be undefined in `export default class { ... }`.
  @_i2.redeclare
  external String? get name;
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? get $_declarationBrand;
  @_i1.JS('_declarationBrand')
  external set $_declarationBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
}
extension type ClassLikeDeclarationBase._(_i1.JSObject _)
    implements NamedDeclaration, JSDocContainer {
  @_i2.redeclare
  external AnonymousUnion_2480212 get kind;
  @_i2.redeclare
  external String? get name;
  external NodeArray<TypeParameterDeclaration>? get typeParameters;
  external NodeArray<HeritageClause>? get heritageClauses;
  external NodeArray<ClassElement> get members;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type AnonymousUnion_2480212._(SyntaxKind _) implements SyntaxKind {
  SyntaxKind get asSyntaxKind => _;
}
extension type HeritageClause._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_1089822 get parent;
  external AnonymousUnion_2480212 get token;
  external NodeArray<ExpressionWithTypeArguments> get types;
}
extension type InterfaceDeclaration._(_i1.JSObject _)
    implements DeclarationStatement, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external String get name;
  external NodeArray<TypeParameterDeclaration>? get typeParameters;
  external NodeArray<HeritageClause>? get heritageClauses;
  external NodeArray<TypeElement> get members;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type TypeElement._(_i1.JSObject _) implements NamedDeclaration {
  @_i1.JS('_typeElementBrand')
  external _i1.JSAny? $_typeElementBrand;

  @_i2.redeclare
  external String? get name;
  external QuestionToken? get questionToken;
}
typedef QuestionToken = PunctuationToken<_i1.JSNumber>;
extension type DeclarationStatement._(_i1.JSObject _)
    implements NamedDeclaration, Statement {
  @_i2.redeclare
  external String? get name;
  external SyntaxKind get kind;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type AnonymousUnion_1561396._(_i1.JSObject _)
    implements _i1.JSObject {
  Identifier get asIdentifier => (_ as Identifier);

  StringLiteral get asStringLiteral => (_ as StringLiteral);

  NumericLiteral get asNumericLiteral => (_ as NumericLiteral);
}
extension type AnonymousUnion_1089822._(JSDocContainer _)
    implements JSDocContainer {
  InterfaceDeclaration get asInterfaceDeclaration =>
      (_ as InterfaceDeclaration);

  ClassLikeDeclaration get asClassLikeDeclaration =>
      (_ as AnonymousUnion_1983041);
}
extension type ExpressionWithTypeArguments._(_i1.JSObject _)
    implements MemberExpression, NodeWithTypeArguments {
  @_i2.redeclare
  external SyntaxKind get kind;
  external LeftHandSideExpression get expression;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type NodeWithTypeArguments._(_i1.JSObject _) implements TypeNode {
  external NodeArray<TypeNode>? get typeArguments;
}
extension type ClassElement._(_i1.JSObject _) implements NamedDeclaration {
  @_i1.JS('_classElementBrand')
  external _i1.JSAny? $_classElementBrand;

  @_i2.redeclare
  external String? get name;
}
extension type ClassExpression._(_i1.JSObject _)
    implements ClassLikeDeclarationBase, PrimaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type AnonymousUnion_1983041._(ClassLikeDeclarationBase _)
    implements ClassLikeDeclarationBase {
  ClassDeclaration get asClassDeclaration => (_ as ClassDeclaration);

  ClassExpression get asClassExpression => (_ as ClassExpression);
}
extension type TypeAliasDeclaration._(_i1.JSObject _)
    implements DeclarationStatement, JSDocContainer, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external String get name;
  external NodeArray<TypeParameterDeclaration>? get typeParameters;
  external String get type;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type JSDocTemplateTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
  external JSDocTypeExpression? get constraint;
  external NodeArray<TypeParameterDeclaration> get typeParameters;
  external AnonymousUnion_1715393 get parent;
  external Identifier get tagName;
  external AnonymousUnion_6234722? get comment;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type JSDocTypeExpression._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get type;
}
extension type JSDocTag._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external AnonymousUnion_1715393 get parent;
  external Identifier get tagName;
  external AnonymousUnion_6234722? get comment;
}
extension type JSDoc._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external HasJSDoc get parent;
  external NodeArray<JSDocTag>? get tags;
  external AnonymousUnion_6234722? get comment;
}
typedef HasJSDoc = AnonymousUnion_3504332;
typedef AccessorDeclaration = AnonymousUnion_3939723;
extension type GetAccessorDeclaration._(_i1.JSObject _)
    implements
        FunctionLikeDeclarationBase,
        ClassElement,
        TypeElement,
        ObjectLiteralElement,
        JSDocContainer,
        LocalsContainer,
        FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_2859850 get parent;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external String get name;
  @_i2.redeclare
  external FunctionBody? get body;
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? get $_declarationBrand;
  @_i1.JS('_declarationBrand')
  external set $_declarationBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external double get pos;
  external double get end;
  external QuestionToken? get questionToken;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
}
extension type TypeLiteralNode._(_i1.JSObject _)
    implements TypeNode, Declaration {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<TypeElement> get members;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type AnonymousUnion_2859850._(Declaration _) implements Declaration {
  ClassLikeDeclaration get asClassLikeDeclaration =>
      (_ as AnonymousUnion_1983041);

  ObjectLiteralExpression get asObjectLiteralExpression =>
      (_ as ObjectLiteralExpression);

  TypeLiteralNode get asTypeLiteralNode => (_ as TypeLiteralNode);

  InterfaceDeclaration get asInterfaceDeclaration =>
      (_ as InterfaceDeclaration);
}
typedef FunctionBody = Block;

/// Several node kinds share function-like features such as a signature,
/// a name, and a body. These nodes should extend FunctionLikeDeclarationBase.
/// Examples:
/// - FunctionDeclaration
/// - MethodDeclaration
/// - AccessorDeclaration
extension type FunctionLikeDeclarationBase._(_i1.JSObject _)
    implements SignatureDeclarationBase {
  @_i1.JS('_functionLikeDeclarationBrand')
  external _i1.JSAny? $_functionLikeDeclarationBrand;

  external AsteriskToken? get asteriskToken;
  external QuestionToken? get questionToken;
  external ExclamationToken? get exclamationToken;
  external AnonymousUnion_3117510? get body;
}
typedef AsteriskToken = PunctuationToken<_i1.JSNumber>;
extension type AnonymousUnion_3117510._(Node _) implements Node {
  Block get asBlock => (_ as Block);

  Expression get asExpression => (_ as Expression);
}
extension type SetAccessorDeclaration._(_i1.JSObject _)
    implements
        FunctionLikeDeclarationBase,
        ClassElement,
        TypeElement,
        ObjectLiteralElement,
        JSDocContainer,
        LocalsContainer,
        FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_2859850 get parent;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external String get name;
  @_i2.redeclare
  external FunctionBody? get body;
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? get $_declarationBrand;
  @_i1.JS('_declarationBrand')
  external set $_declarationBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external double get pos;
  external double get end;
  external QuestionToken? get questionToken;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
}
extension type AnonymousUnion_3939723._(_i1.JSObject _)
    implements _i1.JSObject {
  GetAccessorDeclaration get asGetAccessorDeclaration =>
      (_ as GetAccessorDeclaration);

  SetAccessorDeclaration get asSetAccessorDeclaration =>
      (_ as SetAccessorDeclaration);
}
extension type ArrowFunction._(_i1.JSObject _)
    implements
        Expression,
        FunctionLikeDeclarationBase,
        JSDocContainer,
        LocalsContainer,
        FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<AnonymousUnion_8635666>? get modifiers;
  external EqualsGreaterThanToken get equalsGreaterThanToken;
  @_i2.redeclare
  external ConciseBody get body;
  @_i2.redeclare
  external String get name;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
}
typedef EqualsGreaterThanToken = PunctuationToken<_i1.JSNumber>;
typedef ConciseBody = AnonymousUnion_1053007;
extension type AnonymousUnion_1053007._(Node _) implements Node {
  FunctionBody get asFunctionBody => (_ as FunctionBody);

  Expression get asExpression => (_ as Expression);
}
extension type BinaryExpression._(_i1.JSObject _)
    implements Expression, Declaration, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get left;
  external BinaryOperatorToken get operatorToken;
  external Expression get right;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
typedef BinaryOperatorToken = Token<AnonymousUnion_1634575>;
typedef AssignmentOperatorOrHigher = AnonymousUnion_2736107;
typedef LogicalOperatorOrHigher = AnonymousUnion_5640664;
typedef BitwiseOperatorOrHigher = AnonymousUnion_1091477;
typedef EqualityOperatorOrHigher = AnonymousUnion_2078874;
typedef RelationalOperatorOrHigher = AnonymousUnion_1240369;
typedef ShiftOperatorOrHigher = AnonymousUnion_3427490;
typedef AdditiveOperatorOrHigher = AnonymousUnion_1669224;
typedef MultiplicativeOperatorOrHigher = AnonymousUnion_3359945;
typedef ExponentiationOperator = SyntaxKind;
typedef MultiplicativeOperator = AnonymousUnion_1288264;
extension type AnonymousUnion_1288264._(SyntaxKind _) implements SyntaxKind {
  SyntaxKind get asSyntaxKind => _;
}
extension type AnonymousUnion_3359945._(SyntaxKind _) implements SyntaxKind {
  ExponentiationOperator get asExponentiationOperator => _;

  MultiplicativeOperator get asMultiplicativeOperator =>
      (_ as AnonymousUnion_1288264);
}
typedef AdditiveOperator = AnonymousUnion_2480212;
extension type AnonymousUnion_1669224._(SyntaxKind _) implements SyntaxKind {
  MultiplicativeOperatorOrHigher get asMultiplicativeOperatorOrHigher =>
      (_ as AnonymousUnion_3359945);

  AdditiveOperator get asAdditiveOperator => (_ as AnonymousUnion_2480212);
}
typedef ShiftOperator = AnonymousUnion_1288264;
extension type AnonymousUnion_3427490._(SyntaxKind _) implements SyntaxKind {
  AdditiveOperatorOrHigher get asAdditiveOperatorOrHigher =>
      (_ as AnonymousUnion_1669224);

  ShiftOperator get asShiftOperator => (_ as AnonymousUnion_1288264);
}
typedef RelationalOperator = AnonymousUnion_3450588;
extension type AnonymousUnion_3450588._(SyntaxKind _) implements SyntaxKind {
  SyntaxKind get asSyntaxKind => _;
}
extension type AnonymousUnion_1240369._(SyntaxKind _) implements SyntaxKind {
  ShiftOperatorOrHigher get asShiftOperatorOrHigher =>
      (_ as AnonymousUnion_3427490);

  RelationalOperator get asRelationalOperator => (_ as AnonymousUnion_3450588);
}
typedef EqualityOperator = AnonymousUnion_3400339;
extension type AnonymousUnion_3400339._(SyntaxKind _) implements SyntaxKind {
  SyntaxKind get asSyntaxKind => _;
}
extension type AnonymousUnion_2078874._(SyntaxKind _) implements SyntaxKind {
  RelationalOperatorOrHigher get asRelationalOperatorOrHigher =>
      (_ as AnonymousUnion_1240369);

  EqualityOperator get asEqualityOperator => (_ as AnonymousUnion_3400339);
}
typedef BitwiseOperator = AnonymousUnion_1288264;
extension type AnonymousUnion_1091477._(SyntaxKind _) implements SyntaxKind {
  EqualityOperatorOrHigher get asEqualityOperatorOrHigher =>
      (_ as AnonymousUnion_2078874);

  BitwiseOperator get asBitwiseOperator => (_ as AnonymousUnion_1288264);
}
typedef LogicalOperator = AnonymousUnion_2480212;
extension type AnonymousUnion_5640664._(SyntaxKind _) implements SyntaxKind {
  BitwiseOperatorOrHigher get asBitwiseOperatorOrHigher =>
      (_ as AnonymousUnion_1091477);

  LogicalOperator get asLogicalOperator => (_ as AnonymousUnion_2480212);
}
typedef AssignmentOperator = AnonymousUnion_5002178;
typedef CompoundAssignmentOperator = AnonymousUnion_1632551;
extension type AnonymousUnion_1632551._(SyntaxKind _) implements SyntaxKind {
  SyntaxKind get asSyntaxKind => _;
}
extension type AnonymousUnion_5002178._(SyntaxKind _) implements SyntaxKind {
  SyntaxKind get asSyntaxKind => _;

  CompoundAssignmentOperator get asCompoundAssignmentOperator =>
      (_ as AnonymousUnion_1632551);
}
extension type AnonymousUnion_2736107._(SyntaxKind _) implements SyntaxKind {
  SyntaxKind get asSyntaxKind => _;

  LogicalOperatorOrHigher get asLogicalOperatorOrHigher =>
      (_ as AnonymousUnion_5640664);

  AssignmentOperator get asAssignmentOperator => (_ as AnonymousUnion_5002178);
}
extension type AnonymousUnion_1634575._(SyntaxKind _) implements SyntaxKind {
  AssignmentOperatorOrHigher get asAssignmentOperatorOrHigher =>
      (_ as AnonymousUnion_2736107);

  SyntaxKind get asSyntaxKind => _;
}
extension type BreakStatement._(_i1.JSObject _)
    implements Statement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Identifier? get label;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type CaseClause._(_i1.JSObject _) implements Node, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external CaseBlock get parent;
  external Expression get expression;
  external NodeArray<Statement> get statements;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type CaseBlock._(_i1.JSObject _) implements Node, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external SwitchStatement get parent;
  external NodeArray<AnonymousUnion_3845700> get clauses;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type SwitchStatement._(_i1.JSObject _)
    implements Statement, FlowContainer {
  external bool? possiblyExhaustive;

  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get expression;
  external CaseBlock get caseBlock;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type DefaultClause._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external CaseBlock get parent;
  external NodeArray<Statement> get statements;
}
extension type AnonymousUnion_3845700._(Node _) implements Node {
  CaseClause get asCaseClause => (_ as CaseClause);

  DefaultClause get asDefaultClause => (_ as DefaultClause);
}
extension type ClassStaticBlockDeclaration._(_i1.JSObject _)
    implements ClassElement, JSDocContainer, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_1983041 get parent;
  external Block get body;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type ConstructorDeclaration._(_i1.JSObject _)
    implements
        FunctionLikeDeclarationBase,
        ClassElement,
        JSDocContainer,
        LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ClassLikeDeclaration get parent;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external FunctionBody? get body;
  external String? get name;
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? get $_declarationBrand;
  @_i1.JS('_declarationBrand')
  external set $_declarationBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external double get pos;
  external double get end;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
}
extension type ConstructorTypeNode._(_i1.JSObject _)
    implements FunctionOrConstructorTypeNodeBase, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<AnonymousUnion_8635666>? get modifiers;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type FunctionOrConstructorTypeNodeBase._(_i1.JSObject _)
    implements TypeNode, SignatureDeclarationBase {
  @_i2.redeclare
  external AnonymousUnion_2480212 get kind;
  @_i2.redeclare
  external String get type;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type ConstructSignatureDeclaration._(_i1.JSObject _)
    implements SignatureDeclarationBase, TypeElement, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external String? get name;
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? get $_declarationBrand;
  @_i1.JS('_declarationBrand')
  external set $_declarationBrand(_i1.JSAny? value);
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type ContinueStatement._(_i1.JSObject _)
    implements Statement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Identifier? get label;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type DebuggerStatement._(_i1.JSObject _)
    implements Statement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type DoStatement._(_i1.JSObject _)
    implements IterationStatement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get expression;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type EmptyStatement._(_i1.JSObject _) implements Statement {
  @_i2.redeclare
  external SyntaxKind get kind;
}
typedef EndOfFileToken = AnonymousIntersection_3694461;
extension type AnonymousIntersection_3694461._(_i1.JSObject _)
    implements Token<_i1.JSNumber>, JSDocContainer {
  @_i2.redeclare
  external _i1.JSAny get kind;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
  Token<_i1.JSNumber> get asTokenOfJSNumber => (_ as Token<_i1.JSNumber>);

  JSDocContainer get asJSDocContainer => (_ as JSDocContainer);
}
extension type EnumDeclaration._(_i1.JSObject _)
    implements DeclarationStatement, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external String get name;
  external NodeArray<EnumMember> get members;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type EnumMember._(_i1.JSObject _)
    implements NamedDeclaration, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external EnumDeclaration get parent;
  @_i2.redeclare
  external String get name;
  external Expression? get initializer;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}

/// This is either an `export =` or an `export default` declaration.
/// Unless `isExportEquals` is set, this node was parsed as an `export
/// default`.
extension type ExportAssignment._(_i1.JSObject _)
    implements DeclarationStatement, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external TSSourceFile get parent;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  external bool? get isExportEquals;
  external Expression get expression;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type AmdDependency._(_i1.JSObject _) implements _i1.JSObject {
  external String path;

  external String? name;
}
extension type FileReference._(_i1.JSObject _) implements TextRange {
  external String fileName;

  external ResolutionMode? resolutionMode;

  external bool? preserve;
}
typedef ResolutionMode = AnonymousUnion_1254180?;
extension type ModuleKind._(_i1.JSNumber _) implements _i1.JSNumber {
  static final ModuleKind None = ModuleKind._(0.toJS);

  static final ModuleKind CommonJS = ModuleKind._(1.toJS);

  static final ModuleKind AMD = ModuleKind._(2.toJS);

  static final ModuleKind UMD = ModuleKind._(3.toJS);

  static final ModuleKind System = ModuleKind._(4.toJS);

  static final ModuleKind ES2015 = ModuleKind._(5.toJS);

  static final ModuleKind ES2020 = ModuleKind._(6.toJS);

  static final ModuleKind ES2022 = ModuleKind._(7.toJS);

  static final ModuleKind ESNext = ModuleKind._(99.toJS);

  static final ModuleKind Node16 = ModuleKind._(100.toJS);

  static final ModuleKind Node18 = ModuleKind._(101.toJS);

  static final ModuleKind Node20 = ModuleKind._(102.toJS);

  static final ModuleKind NodeNext = ModuleKind._(199.toJS);

  static final ModuleKind Preserve = ModuleKind._(200.toJS);
}
extension type AnonymousUnion_1254180._(ModuleKind? _) {
  ModuleKind? get asModuleKind => _;
}
extension type TextRange._(_i1.JSObject _) implements _i1.JSObject {
  external double pos;

  external double end;
}
extension type LanguageVariant._(_i1.JSNumber _) implements _i1.JSNumber {
  static final LanguageVariant Standard = LanguageVariant._(0.toJS);

  static final LanguageVariant JSX = LanguageVariant._(1.toJS);
}
extension type ScriptTarget._(_i1.JSNumber _) implements _i1.JSNumber {
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  static final ScriptTarget ES3 = ScriptTarget._(0.toJS);

  static final ScriptTarget ES5 = ScriptTarget._(1.toJS);

  static final ScriptTarget ES2015 = ScriptTarget._(2.toJS);

  static final ScriptTarget ES2016 = ScriptTarget._(3.toJS);

  static final ScriptTarget ES2017 = ScriptTarget._(4.toJS);

  static final ScriptTarget ES2018 = ScriptTarget._(5.toJS);

  static final ScriptTarget ES2019 = ScriptTarget._(6.toJS);

  static final ScriptTarget ES2020 = ScriptTarget._(7.toJS);

  static final ScriptTarget ES2021 = ScriptTarget._(8.toJS);

  static final ScriptTarget ES2022 = ScriptTarget._(9.toJS);

  static final ScriptTarget ES2023 = ScriptTarget._(10.toJS);

  static final ScriptTarget ES2024 = ScriptTarget._(11.toJS);

  static final ScriptTarget ESNext = ScriptTarget._(99.toJS);

  static final ScriptTarget JSON = ScriptTarget._(100.toJS);

  static final ScriptTarget Latest = ScriptTarget._(99.toJS);
}
extension type ExportDeclaration._(_i1.JSObject _)
    implements DeclarationStatement, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_5470341 get parent;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  external bool get isTypeOnly;

  /// Will not be assigned in the case of `export * from "foo";`
  external NamedExportBindings? get exportClause;

  /// If this is not a StringLiteral it will be a grammar error.
  external Expression? get moduleSpecifier;
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external AssertClause? get assertClause;
  external ImportAttributes? get attributes;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type ModuleBlock._(_i1.JSObject _) implements Node, Statement {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ModuleDeclaration get parent;
  external NodeArray<Statement> get statements;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type ModuleDeclaration._(_i1.JSObject _)
    implements DeclarationStatement, JSDocContainer, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_2735704 get parent;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external String get name;
  external AnonymousUnion_2146786? get body;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
typedef ModuleBody = AnonymousUnion_3753633;
typedef NamespaceBody = AnonymousUnion_1239975;
extension type NamespaceDeclaration._(_i1.JSObject _)
    implements ModuleDeclaration {
  @_i2.redeclare
  external String get name;
  @_i2.redeclare
  external NamespaceBody get body;
}
extension type AnonymousUnion_1239975._(_i1.JSObject _)
    implements _i1.JSObject {
  ModuleBlock get asModuleBlock => (_ as ModuleBlock);

  NamespaceDeclaration get asNamespaceDeclaration =>
      (_ as NamespaceDeclaration);
}
typedef JSDocNamespaceBody = AnonymousUnion_2853000;
extension type JSDocNamespaceDeclaration._(_i1.JSObject _)
    implements ModuleDeclaration {
  @_i2.redeclare
  external String get name;
  @_i2.redeclare
  external JSDocNamespaceBody? get body;
}
extension type AnonymousUnion_2853000._(_i1.JSObject _)
    implements _i1.JSObject {
  Identifier get asIdentifier => (_ as Identifier);

  JSDocNamespaceDeclaration get asJSDocNamespaceDeclaration =>
      (_ as JSDocNamespaceDeclaration);
}
extension type AnonymousUnion_3753633._(_i1.JSObject _)
    implements _i1.JSObject {
  NamespaceBody get asNamespaceBody => (_ as AnonymousUnion_1239975);

  JSDocNamespaceBody get asJSDocNamespaceBody => (_ as AnonymousUnion_2853000);
}
extension type AnonymousUnion_2735704._(_i1.JSObject _)
    implements _i1.JSObject {
  ModuleBody get asModuleBody => (_ as AnonymousUnion_3753633);

  TSSourceFile get asTSSourceFile => (_ as TSSourceFile);
}
typedef ModuleName = AnonymousUnion_2208724;
extension type AnonymousUnion_2208724._(_i1.JSObject _)
    implements _i1.JSObject {
  Identifier get asIdentifier => (_ as Identifier);

  StringLiteral get asStringLiteral => (_ as StringLiteral);
}
extension type AnonymousUnion_2146786._(_i1.JSObject _)
    implements _i1.JSObject {
  ModuleBody get asModuleBody => (_ as AnonymousUnion_3753633);

  JSDocNamespaceDeclaration get asJSDocNamespaceDeclaration =>
      (_ as JSDocNamespaceDeclaration);
}
extension type AnonymousUnion_5470341._(Node _) implements Node {
  TSSourceFile get asTSSourceFile => (_ as TSSourceFile);

  ModuleBlock get asModuleBlock => (_ as ModuleBlock);
}
typedef NamedExportBindings = AnonymousUnion_3351605;
extension type NamespaceExport._(_i1.JSObject _) implements NamedDeclaration {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ExportDeclaration get parent;
  @_i2.redeclare
  external String get name;
}
typedef ModuleExportName = AnonymousUnion_2208724;
extension type NamedExports._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ExportDeclaration get parent;
  external NodeArray<ExportSpecifier> get elements;
}
extension type ExportSpecifier._(_i1.JSObject _)
    implements NamedDeclaration, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external NamedExports get parent;
  external bool get isTypeOnly;
  external ModuleExportName? get propertyName;
  @_i2.redeclare
  external String get name;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type AnonymousUnion_3351605._(Node _) implements Node {
  NamespaceExport get asNamespaceExport => (_ as NamespaceExport);

  NamedExports get asNamedExports => (_ as NamedExports);
}
extension type AssertClause._(_i1.JSObject _) implements ImportAttributes {
  @_i2.redeclare
  external AnonymousUnion_2480212 get token;
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_3234897 get parent;
  @_i2.redeclare
  external NodeArray<ImportAttribute> get elements;
  @_i2.redeclare
  external bool? get multiLine;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type ImportAttributes._(_i1.JSObject _) implements Node {
  external AnonymousUnion_2480212 get token;
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_3234897 get parent;
  external NodeArray<ImportAttribute> get elements;
  external bool? get multiLine;
}
extension type ImportDeclaration._(_i1.JSObject _) implements Statement {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_5470341 get parent;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  external ImportClause? get importClause;

  /// If this is not a StringLiteral it will be a grammar error.
  external Expression get moduleSpecifier;
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external AssertClause? get assertClause;
  external ImportAttributes? get attributes;
}
extension type ImportClause._(_i1.JSObject _) implements NamedDeclaration {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_3086809 get parent;
  @Deprecated('Use `phaseModifier` instead')
  external bool get isTypeOnly;
  external ImportPhaseModifierSyntaxKind? get phaseModifier;
  @_i2.redeclare
  external String? get name;
  external NamedImportBindings? get namedBindings;
}
extension type JSDocImportTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external JSDoc get parent;
  external ImportClause? get importClause;
  external Expression get moduleSpecifier;
  external ImportAttributes? get attributes;
}
extension type AnonymousUnion_3086809._(Node _) implements Node {
  ImportDeclaration get asImportDeclaration => (_ as ImportDeclaration);

  JSDocImportTag get asJSDocImportTag => (_ as JSDocImportTag);
}
typedef ImportPhaseModifierSyntaxKind = AnonymousUnion_2480212;
typedef NamedImportBindings = AnonymousUnion_2196925;
extension type NamespaceImport._(_i1.JSObject _) implements NamedDeclaration {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ImportClause get parent;
  @_i2.redeclare
  external String get name;
}
extension type NamedImports._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ImportClause get parent;
  external NodeArray<ImportSpecifier> get elements;
}
extension type ImportSpecifier._(_i1.JSObject _) implements NamedDeclaration {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external NamedImports get parent;
  external ModuleExportName? get propertyName;
  @_i2.redeclare
  external String get name;
  external bool get isTypeOnly;
}
extension type AnonymousUnion_2196925._(Node _) implements Node {
  NamespaceImport get asNamespaceImport => (_ as NamespaceImport);

  NamedImports get asNamedImports => (_ as NamedImports);
}
extension type AnonymousUnion_3234897._(_i1.JSObject _)
    implements _i1.JSObject {
  ImportDeclaration get asImportDeclaration => (_ as ImportDeclaration);

  ExportDeclaration get asExportDeclaration => (_ as ExportDeclaration);
}
extension type ImportAttribute._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ImportAttributes get parent;
  external String get name;
  external Expression get value;
}
typedef ImportAttributeName = AnonymousUnion_2208724;
extension type ExpressionStatement._(_i1.JSObject _)
    implements Statement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get expression;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type FunctionDeclaration._(_i1.JSObject _)
    implements
        FunctionLikeDeclarationBase,
        DeclarationStatement,
        LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external String? get name;
  @_i2.redeclare
  external FunctionBody? get body;
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? get $_declarationBrand;
  @_i1.JS('_declarationBrand')
  external set $_declarationBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
}
extension type FunctionExpression._(_i1.JSObject _)
    implements
        PrimaryExpression,
        FunctionLikeDeclarationBase,
        JSDocContainer,
        LocalsContainer,
        FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<AnonymousUnion_8635666>? get modifiers;
  @_i2.redeclare
  external String? get name;
  @_i2.redeclare
  external FunctionBody get body;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
}
extension type FunctionTypeNode._(_i1.JSObject _)
    implements FunctionOrConstructorTypeNodeBase, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type IfStatement._(_i1.JSObject _)
    implements Statement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get expression;
  external Statement get thenStatement;
  external Statement? get elseStatement;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}

/// One of:
/// - import x = require("mod");
/// - import x = M.x;
extension type ImportEqualsDeclaration._(_i1.JSObject _)
    implements DeclarationStatement, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_5470341 get parent;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external String get name;
  external bool get isTypeOnly;
  external ModuleReference get moduleReference;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
typedef ModuleReference = AnonymousUnion_2461007;
typedef EntityName = AnonymousUnion_4911331;
extension type QualifiedName._(_i1.JSObject _) implements Node, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external EntityName get left;
  external Identifier get right;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type AnonymousUnion_4911331._(_i1.JSObject _)
    implements _i1.JSObject {
  Identifier get asIdentifier => (_ as Identifier);

  QualifiedName get asQualifiedName => (_ as QualifiedName);
}
extension type ExternalModuleReference._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ImportEqualsDeclaration get parent;
  external Expression get expression;
}
extension type AnonymousUnion_2461007._(_i1.JSObject _)
    implements _i1.JSObject {
  EntityName get asEntityName => (_ as AnonymousUnion_4911331);

  ExternalModuleReference get asExternalModuleReference =>
      (_ as ExternalModuleReference);
}
extension type IndexSignatureDeclaration._(_i1.JSObject _)
    implements
        SignatureDeclarationBase,
        ClassElement,
        TypeElement,
        LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ObjectTypeDeclaration get parent;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external String get type;
  external String? get name;
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? get $_declarationBrand;
  @_i1.JS('_declarationBrand')
  external set $_declarationBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
typedef ObjectTypeDeclaration = AnonymousUnion_3544669;
extension type AnonymousUnion_3544669._(Declaration _) implements Declaration {
  ClassLikeDeclaration get asClassLikeDeclaration =>
      (_ as AnonymousUnion_1983041);

  InterfaceDeclaration get asInterfaceDeclaration =>
      (_ as InterfaceDeclaration);

  TypeLiteralNode get asTypeLiteralNode => (_ as TypeLiteralNode);
}
extension type JSDocFunctionType._(_i1.JSObject _)
    implements JSDocType, SignatureDeclarationBase, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type JSDocType._(_i1.JSObject _) implements TypeNode {
  @_i1.JS('_jsDocTypeBrand')
  external _i1.JSAny? $_jsDocTypeBrand;
}
extension type JSDocSignature._(_i1.JSObject _)
    implements JSDocType, Declaration, JSDocContainer, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external _i1.JSArray<JSDocTemplateTag?>? get typeParameters;
  external _i1.JSArray<JSDocParameterTag> get parameters;
  external String get type;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type JSDocParameterTag._(_i1.JSObject _)
    implements JSDocPropertyLikeTag {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocPropertyLikeTag._(_i1.JSObject _)
    implements JSDocTag, Declaration {
  @_i2.redeclare
  external JSDoc get parent;
  external String get name;
  external JSDocTypeExpression? get typeExpression;

  /// Whether the property name came before the type -- non-standard for JSDoc,
  /// but Typescript-like
  external bool get isNameFirst;
  external bool get isBracketed;
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type JSDocReturnTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
  external JSDocTypeExpression? get typeExpression;
}
extension type LabeledStatement._(_i1.JSObject _)
    implements Statement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Identifier get label;
  external Statement get statement;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type MethodDeclaration._(_i1.JSObject _)
    implements
        FunctionLikeDeclarationBase,
        ClassElement,
        ObjectLiteralElement,
        JSDocContainer,
        LocalsContainer,
        FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_3324225 get parent;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external String get name;
  @_i2.redeclare
  external FunctionBody? get body;
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? get $_declarationBrand;
  @_i1.JS('_declarationBrand')
  external set $_declarationBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external double get pos;
  external double get end;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
}
extension type AnonymousUnion_3324225._(JSDocContainer _)
    implements JSDocContainer {
  ClassLikeDeclaration get asClassLikeDeclaration =>
      (_ as AnonymousUnion_1983041);

  ObjectLiteralExpression get asObjectLiteralExpression =>
      (_ as ObjectLiteralExpression);
}
extension type MethodSignature._(_i1.JSObject _)
    implements SignatureDeclarationBase, TypeElement, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_4794774 get parent;
  external NodeArray<AnonymousUnion_8635666>? get modifiers;
  @_i2.redeclare
  external String get name;
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? get $_declarationBrand;
  @_i1.JS('_declarationBrand')
  external set $_declarationBrand(_i1.JSAny? value);
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type AnonymousUnion_4794774._(Declaration _) implements Declaration {
  TypeLiteralNode get asTypeLiteralNode => (_ as TypeLiteralNode);

  InterfaceDeclaration get asInterfaceDeclaration =>
      (_ as InterfaceDeclaration);
}
extension type NamedTupleMember._(_i1.JSObject _)
    implements TypeNode, Declaration, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Token<_i1.JSNumber>? get dotDotDotToken;
  external String get name;
  external Token<_i1.JSNumber>? get questionToken;
  external String get type;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type NamespaceExportDeclaration._(_i1.JSObject _)
    implements DeclarationStatement, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external String get name;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type ParenthesizedExpression._(_i1.JSObject _)
    implements PrimaryExpression, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get expression;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type PropertyAccessExpression._(_i1.JSObject _)
    implements
        MemberExpression,
        NamedDeclaration,
        JSDocContainer,
        FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external LeftHandSideExpression get expression;
  external QuestionDotToken? get questionDotToken;
  @_i2.redeclare
  external String get name;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
typedef MemberName = AnonymousUnion_1903918;
extension type AnonymousUnion_1903918._(PrimaryExpression _)
    implements PrimaryExpression {
  Identifier get asIdentifier => (_ as Identifier);

  PrivateIdentifier get asPrivateIdentifier => (_ as PrivateIdentifier);
}
extension type PropertyDeclaration._(_i1.JSObject _)
    implements ClassElement, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ClassLikeDeclaration get parent;
  external NodeArray<AnonymousUnion_4023207>? get modifiers;
  @_i2.redeclare
  external String get name;
  external QuestionToken? get questionToken;
  external ExclamationToken? get exclamationToken;
  external String? get type;
  external Expression? get initializer;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type PropertySignature._(_i1.JSObject _)
    implements TypeElement, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_4794774 get parent;
  external NodeArray<AnonymousUnion_8635666>? get modifiers;
  @_i2.redeclare
  external String get name;
  @_i2.redeclare
  external QuestionToken? get questionToken;
  external String? get type;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type ReturnStatement._(_i1.JSObject _)
    implements Statement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression? get expression;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}

/// For when we encounter a semicolon in a class declaration. ES6 allows these
/// as class elements.
extension type SemicolonClassElement._(_i1.JSObject _)
    implements ClassElement, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ClassLikeDeclaration get parent;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type ShorthandPropertyAssignment._(_i1.JSObject _)
    implements ObjectLiteralElement, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ObjectLiteralExpression get parent;
  @_i2.redeclare
  external String get name;
  external EqualsToken? get equalsToken;
  external Expression? get objectAssignmentInitializer;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
typedef EqualsToken = PunctuationToken<_i1.JSNumber>;
extension type SpreadAssignment._(_i1.JSObject _)
    implements ObjectLiteralElement, JSDocContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ObjectLiteralExpression get parent;
  external Expression get expression;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type ThrowStatement._(_i1.JSObject _)
    implements Statement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get expression;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type WhileStatement._(_i1.JSObject _)
    implements IterationStatement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get expression;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type WithStatement._(_i1.JSObject _)
    implements Statement, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get expression;
  external Statement get statement;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type AnonymousUnion_3504332._(_i1.JSObject _)
    implements _i1.JSObject {
  AccessorDeclaration get asAccessorDeclaration =>
      (_ as AnonymousUnion_3939723);

  ArrowFunction get asArrowFunction => (_ as ArrowFunction);

  BinaryExpression get asBinaryExpression => (_ as BinaryExpression);

  Block get asBlock => (_ as Block);

  BreakStatement get asBreakStatement => (_ as BreakStatement);

  CallSignatureDeclaration get asCallSignatureDeclaration =>
      (_ as CallSignatureDeclaration);

  CaseClause get asCaseClause => (_ as CaseClause);

  ClassLikeDeclaration get asClassLikeDeclaration =>
      (_ as AnonymousUnion_1983041);

  ClassStaticBlockDeclaration get asClassStaticBlockDeclaration =>
      (_ as ClassStaticBlockDeclaration);

  ConstructorDeclaration get asConstructorDeclaration =>
      (_ as ConstructorDeclaration);

  ConstructorTypeNode get asConstructorTypeNode => (_ as ConstructorTypeNode);

  ConstructSignatureDeclaration get asConstructSignatureDeclaration =>
      (_ as ConstructSignatureDeclaration);

  ContinueStatement get asContinueStatement => (_ as ContinueStatement);

  DebuggerStatement get asDebuggerStatement => (_ as DebuggerStatement);

  DoStatement get asDoStatement => (_ as DoStatement);

  ElementAccessExpression get asElementAccessExpression =>
      (_ as ElementAccessExpression);

  EmptyStatement get asEmptyStatement => (_ as EmptyStatement);

  EndOfFileToken get asEndOfFileToken => (_ as AnonymousIntersection_3694461);

  EnumDeclaration get asEnumDeclaration => (_ as EnumDeclaration);

  EnumMember get asEnumMember => (_ as EnumMember);

  ExportAssignment get asExportAssignment => (_ as ExportAssignment);

  ExportDeclaration get asExportDeclaration => (_ as ExportDeclaration);

  ExportSpecifier get asExportSpecifier => (_ as ExportSpecifier);

  ExpressionStatement get asExpressionStatement => (_ as ExpressionStatement);

  ForInStatement get asForInStatement => (_ as ForInStatement);

  ForOfStatement get asForOfStatement => (_ as ForOfStatement);

  ForStatement get asForStatement => (_ as ForStatement);

  FunctionDeclaration get asFunctionDeclaration => (_ as FunctionDeclaration);

  FunctionExpression get asFunctionExpression => (_ as FunctionExpression);

  FunctionTypeNode get asFunctionTypeNode => (_ as FunctionTypeNode);

  Identifier get asIdentifier => (_ as Identifier);

  IfStatement get asIfStatement => (_ as IfStatement);

  ImportDeclaration get asImportDeclaration => (_ as ImportDeclaration);

  ImportEqualsDeclaration get asImportEqualsDeclaration =>
      (_ as ImportEqualsDeclaration);

  IndexSignatureDeclaration get asIndexSignatureDeclaration =>
      (_ as IndexSignatureDeclaration);

  InterfaceDeclaration get asInterfaceDeclaration =>
      (_ as InterfaceDeclaration);

  JSDocFunctionType get asJSDocFunctionType => (_ as JSDocFunctionType);

  JSDocSignature get asJSDocSignature => (_ as JSDocSignature);

  LabeledStatement get asLabeledStatement => (_ as LabeledStatement);

  MethodDeclaration get asMethodDeclaration => (_ as MethodDeclaration);

  MethodSignature get asMethodSignature => (_ as MethodSignature);

  ModuleDeclaration get asModuleDeclaration => (_ as ModuleDeclaration);

  NamedTupleMember get asNamedTupleMember => (_ as NamedTupleMember);

  NamespaceExportDeclaration get asNamespaceExportDeclaration =>
      (_ as NamespaceExportDeclaration);

  ObjectLiteralExpression get asObjectLiteralExpression =>
      (_ as ObjectLiteralExpression);

  ParameterDeclaration get asParameterDeclaration =>
      (_ as ParameterDeclaration);

  ParenthesizedExpression get asParenthesizedExpression =>
      (_ as ParenthesizedExpression);

  PropertyAccessExpression get asPropertyAccessExpression =>
      (_ as PropertyAccessExpression);

  PropertyAssignment get asPropertyAssignment => (_ as PropertyAssignment);

  PropertyDeclaration get asPropertyDeclaration => (_ as PropertyDeclaration);

  PropertySignature get asPropertySignature => (_ as PropertySignature);

  ReturnStatement get asReturnStatement => (_ as ReturnStatement);

  SemicolonClassElement get asSemicolonClassElement =>
      (_ as SemicolonClassElement);

  ShorthandPropertyAssignment get asShorthandPropertyAssignment =>
      (_ as ShorthandPropertyAssignment);

  SpreadAssignment get asSpreadAssignment => (_ as SpreadAssignment);

  SwitchStatement get asSwitchStatement => (_ as SwitchStatement);

  ThrowStatement get asThrowStatement => (_ as ThrowStatement);

  TryStatement get asTryStatement => (_ as TryStatement);

  TypeAliasDeclaration get asTypeAliasDeclaration =>
      (_ as TypeAliasDeclaration);

  TypeParameterDeclaration get asTypeParameterDeclaration =>
      (_ as TypeParameterDeclaration);

  VariableDeclaration get asVariableDeclaration => (_ as VariableDeclaration);

  VariableStatement get asVariableStatement => (_ as VariableStatement);

  WhileStatement get asWhileStatement => (_ as WhileStatement);

  WithStatement get asWithStatement => (_ as WithStatement);
}
extension type JSDocText._(_i1.JSObject _) implements Node {
  external String text;

  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocLink._(_i1.JSObject _) implements Node {
  external String text;

  @_i2.redeclare
  external SyntaxKind get kind;
  external String? get name;
}

/// Class#method reference in JSDoc
extension type JSDocMemberName._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  external AnonymousUnion_2264832 get left;
  external Identifier get right;
}
extension type AnonymousUnion_2264832._(_i1.JSObject _)
    implements _i1.JSObject {
  EntityName get asEntityName => (_ as AnonymousUnion_4911331);

  JSDocMemberName get asJSDocMemberName => (_ as JSDocMemberName);
}
extension type JSDocLinkCode._(_i1.JSObject _) implements Node {
  external String text;

  @_i2.redeclare
  external SyntaxKind get kind;
  external String? get name;
}
extension type JSDocLinkPlain._(_i1.JSObject _) implements Node {
  external String text;

  @_i2.redeclare
  external SyntaxKind get kind;
  external String? get name;
}
extension type AnonymousUnion_8610416._(Node _) implements Node {
  JSDocText get asJSDocText => (_ as JSDocText);

  JSDocLink get asJSDocLink => (_ as JSDocLink);

  JSDocLinkCode get asJSDocLinkCode => (_ as JSDocLinkCode);

  JSDocLinkPlain get asJSDocLinkPlain => (_ as JSDocLinkPlain);
}
extension type AnonymousUnion_6234722._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  NodeArray<AnonymousUnion_8610416> get asNodeArrayOfAnonymousUnion_8610416 =>
      (_ as NodeArray<AnonymousUnion_8610416>);
}
extension type JSDocTypeLiteral._(_i1.JSObject _)
    implements JSDocType, Declaration {
  @_i2.redeclare
  external SyntaxKind get kind;
  external _i1.JSArray<JSDocPropertyLikeTag?>? get jsDocPropertyTags;

  /// If true, then this type literal represents an *array* of its type.
  external bool get isArrayType;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type AnonymousUnion_1715393._(Node _) implements Node {
  JSDoc get asJSDoc => (_ as JSDoc);

  JSDocTypeLiteral get asJSDocTypeLiteral => (_ as JSDocTypeLiteral);
}
extension type AnonymousUnion_7027864._(_i1.JSObject _)
    implements _i1.JSObject {
  SignatureDeclaration get asSignatureDeclaration =>
      (_ as AnonymousUnion_2968490);

  ClassLikeDeclaration get asClassLikeDeclaration =>
      (_ as AnonymousUnion_1983041);

  InterfaceDeclaration get asInterfaceDeclaration =>
      (_ as InterfaceDeclaration);

  TypeAliasDeclaration get asTypeAliasDeclaration =>
      (_ as TypeAliasDeclaration);

  JSDocTemplateTag get asJSDocTemplateTag => (_ as JSDocTemplateTag);
}
extension type InferTypeNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  external TypeParameterDeclaration get typeParameter;
}
extension type AnonymousUnion_2810713._(_i1.JSObject _)
    implements _i1.JSObject {
  DeclarationWithTypeParameterChildren
  get asDeclarationWithTypeParameterChildren => (_ as AnonymousUnion_7027864);

  InferTypeNode get asInferTypeNode => (_ as InferTypeNode);
}
extension type AnonymousUnion_2968490._(_i1.JSObject _)
    implements _i1.JSObject {
  CallSignatureDeclaration get asCallSignatureDeclaration =>
      (_ as CallSignatureDeclaration);

  ConstructSignatureDeclaration get asConstructSignatureDeclaration =>
      (_ as ConstructSignatureDeclaration);

  MethodSignature get asMethodSignature => (_ as MethodSignature);

  IndexSignatureDeclaration get asIndexSignatureDeclaration =>
      (_ as IndexSignatureDeclaration);

  FunctionTypeNode get asFunctionTypeNode => (_ as FunctionTypeNode);

  ConstructorTypeNode get asConstructorTypeNode => (_ as ConstructorTypeNode);

  JSDocFunctionType get asJSDocFunctionType => (_ as JSDocFunctionType);

  FunctionDeclaration get asFunctionDeclaration => (_ as FunctionDeclaration);

  MethodDeclaration get asMethodDeclaration => (_ as MethodDeclaration);

  ConstructorDeclaration get asConstructorDeclaration =>
      (_ as ConstructorDeclaration);

  AccessorDeclaration get asAccessorDeclaration =>
      (_ as AnonymousUnion_3939723);

  FunctionExpression get asFunctionExpression => (_ as FunctionExpression);

  ArrowFunction get asArrowFunction => (_ as ArrowFunction);
}
typedef DotDotDotToken = PunctuationToken<_i1.JSNumber>;
extension type BindingElement._(_i1.JSObject _)
    implements NamedDeclaration, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external BindingPattern get parent;
  external PropertyName? get propertyName;
  external DotDotDotToken? get dotDotDotToken;
  @_i2.redeclare
  external String get name;
  external Expression? get initializer;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type AnonymousUnion_2419982._(NamedDeclaration _)
    implements NamedDeclaration {
  VariableDeclaration get asVariableDeclaration => (_ as VariableDeclaration);

  ParameterDeclaration get asParameterDeclaration =>
      (_ as ParameterDeclaration);

  BindingElement get asBindingElement => (_ as BindingElement);
}
extension type ArrayBindingPattern._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_2419982 get parent;
  external NodeArray<AnonymousUnion_2404920> get elements;
}
extension type OmittedExpression._(_i1.JSObject _) implements Expression {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type AnonymousUnion_2404920._(Node _) implements Node {
  BindingElement get asBindingElement => (_ as BindingElement);

  OmittedExpression get asOmittedExpression => (_ as OmittedExpression);
}
extension type AnonymousUnion_4353370._(Node _) implements Node {
  ObjectBindingPattern get asObjectBindingPattern =>
      (_ as ObjectBindingPattern);

  ArrayBindingPattern get asArrayBindingPattern => (_ as ArrayBindingPattern);
}
typedef EntityNameExpression = AnonymousUnion_2262749;

/// Brand for a PropertyAccessExpression which, like a QualifiedName, consists
/// of a sequence of identifiers separated by dots.
extension type PropertyAccessEntityNameExpression._(_i1.JSObject _)
    implements PropertyAccessExpression {
  @_i1.JS('_propertyAccessExpressionLikeQualifiedNameBrand')
  external _i1.JSAny? $_propertyAccessExpressionLikeQualifiedNameBrand;

  @_i2.redeclare
  external EntityNameExpression get expression;
  @_i2.redeclare
  external String get name;
}
extension type AnonymousUnion_2262749._(_i1.JSObject _)
    implements _i1.JSObject {
  Identifier get asIdentifier => (_ as Identifier);

  PropertyAccessEntityNameExpression get asPropertyAccessEntityNameExpression =>
      (_ as PropertyAccessEntityNameExpression);
}
extension type AnonymousUnion_2961058._(_i1.JSObject _)
    implements _i1.JSObject {
  PropertyName get asPropertyName => (_ as AnonymousUnion_5805531);

  JsxAttributeName get asJsxAttributeName => (_ as AnonymousUnion_2800809);

  StringLiteralLike get asStringLiteralLike => (_ as AnonymousUnion_3755859);

  ElementAccessExpression get asElementAccessExpression =>
      (_ as ElementAccessExpression);

  BindingPattern get asBindingPattern => (_ as AnonymousUnion_4353370);

  EntityNameExpression get asEntityNameExpression =>
      (_ as AnonymousUnion_2262749);
}
extension type AnonymousUnion_4079191._(_i1.JSObject _)
    implements _i1.JSObject {
  PropertyAssignment get asPropertyAssignment => (_ as PropertyAssignment);

  ShorthandPropertyAssignment get asShorthandPropertyAssignment =>
      (_ as ShorthandPropertyAssignment);

  SpreadAssignment get asSpreadAssignment => (_ as SpreadAssignment);

  MethodDeclaration get asMethodDeclaration => (_ as MethodDeclaration);

  AccessorDeclaration get asAccessorDeclaration =>
      (_ as AnonymousUnion_3939723);
}
extension type ArrayLiteralExpression._(_i1.JSObject _)
    implements PrimaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<Expression> get elements;
}
extension type JsonMinusNumericLiteral._(_i1.JSObject _)
    implements PrefixUnaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i1.JS('operator')
  external SyntaxKind get operator$;
  @_i2.redeclare
  external NumericLiteral get operand;
}
extension type PrefixUnaryExpression._(_i1.JSObject _)
    implements UpdateExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i1.JS('operator')
  external PrefixUnaryOperator get operator$;
  external UnaryExpression get operand;
}
typedef PrefixUnaryOperator = AnonymousUnion_3450588;
typedef BooleanLiteral = AnonymousUnion_2412593;
extension type TrueLiteral._(_i1.JSObject _) implements PrimaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type FalseLiteral._(_i1.JSObject _) implements PrimaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type AnonymousUnion_2412593._(PrimaryExpression _)
    implements PrimaryExpression {
  TrueLiteral get asTrueLiteral => (_ as TrueLiteral);

  FalseLiteral get asFalseLiteral => (_ as FalseLiteral);
}
extension type NullLiteral._(_i1.JSObject _) implements PrimaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type AnonymousUnion_2539418._(_i1.JSObject _)
    implements _i1.JSObject {
  ObjectLiteralExpression get asObjectLiteralExpression =>
      (_ as ObjectLiteralExpression);

  ArrayLiteralExpression get asArrayLiteralExpression =>
      (_ as ArrayLiteralExpression);

  JsonMinusNumericLiteral get asJsonMinusNumericLiteral =>
      (_ as JsonMinusNumericLiteral);

  NumericLiteral get asNumericLiteral => (_ as NumericLiteral);

  StringLiteral get asStringLiteral => (_ as StringLiteral);

  BooleanLiteral get asBooleanLiteral => (_ as AnonymousUnion_2412593);

  NullLiteral get asNullLiteral => (_ as NullLiteral);
}
extension type AnonymousUnion_1307295._(_i1.JSAny _) implements _i1.JSAny {
  CompilerOptionsValue get asCompilerOptionsValue =>
      (_ as AnonymousUnion_1592685?);

  TsConfigSourceFile get asTsConfigSourceFile => (_ as TsConfigSourceFile);
}
@Deprecated(
  'This declaration has been marked as deprecated in the original JS/TS code',
)
extension type ImportsNotUsedAsValues._(_i1.JSNumber _)
    implements _i1.JSNumber {
  static final ImportsNotUsedAsValues Remove = ImportsNotUsedAsValues._(0.toJS);

  static final ImportsNotUsedAsValues Preserve = ImportsNotUsedAsValues._(
    1.toJS,
  );

  static final ImportsNotUsedAsValues Error = ImportsNotUsedAsValues._(2.toJS);
}
extension type JsxEmit._(_i1.JSNumber _) implements _i1.JSNumber {
  static final JsxEmit None = JsxEmit._(0.toJS);

  static final JsxEmit Preserve = JsxEmit._(1.toJS);

  static final JsxEmit React = JsxEmit._(2.toJS);

  static final JsxEmit ReactNative = JsxEmit._(3.toJS);

  static final JsxEmit ReactJSX = JsxEmit._(4.toJS);

  static final JsxEmit ReactJSXDev = JsxEmit._(5.toJS);
}
extension type ModuleResolutionKind._(_i1.JSNumber _) implements _i1.JSNumber {
  static final ModuleResolutionKind Classic = ModuleResolutionKind._(1.toJS);

  @Deprecated(
    '`NodeJs` was renamed to `Node10` to better reflect the version of Node that it targets.\nUse the new name or consider switching to a modern module resolution target.',
  )
  static final ModuleResolutionKind NodeJs = ModuleResolutionKind._(2.toJS);

  static final ModuleResolutionKind Node10 = ModuleResolutionKind._(2.toJS);

  static final ModuleResolutionKind Node16 = ModuleResolutionKind._(3.toJS);

  static final ModuleResolutionKind NodeNext = ModuleResolutionKind._(99.toJS);

  static final ModuleResolutionKind Bundler = ModuleResolutionKind._(100.toJS);
}
extension type ModuleDetectionKind._(_i1.JSNumber _) implements _i1.JSNumber {
  /// Files with imports, exports and/or import.meta are considered modules
  static final ModuleDetectionKind Legacy = ModuleDetectionKind._(1.toJS);

  /// Legacy, but also files with jsx under react-jsx or react-jsxdev and esm
  /// mode files under moduleResolution: node16+
  static final ModuleDetectionKind Auto = ModuleDetectionKind._(2.toJS);

  /// Consider all non-declaration files modules, regardless of present syntax
  static final ModuleDetectionKind Force = ModuleDetectionKind._(3.toJS);
}
extension type NewLineKind._(_i1.JSNumber _) implements _i1.JSNumber {
  static final NewLineKind CarriageReturnLineFeed = NewLineKind._(0.toJS);

  static final NewLineKind LineFeed = NewLineKind._(1.toJS);
}
extension type CompilerHost._(_i1.JSObject _) implements ModuleResolutionHost {
  external WriteFileCallback writeFile;

  external JSDocParsingMode? jsDocParsingMode;

  external TSSourceFile? getSourceFile(
    String fileName,
    AnonymousUnion_1027795 languageVersionOrOptions, [
    _AnonymousFunction_1267068? onError,
    bool? shouldCreateNewSourceFile,
  ]);
  external _i1.JSFunction? get getSourceFileByPath;
  external _i1.JSFunction? get getCancellationToken;
  external String getDefaultLibFileName(CompilerOptions options);
  external _i1.JSFunction? get getDefaultLibLocation;
  @_i2.redeclare
  external String getCurrentDirectory();
  external String getCanonicalFileName(String fileName);
  @_i2.redeclare
  external bool useCaseSensitiveFileNames();
  external String getNewLine();
  external _i1.JSFunction? get readDirectory;
  @Deprecated(
    'supply resolveModuleNameLiterals instead for resolution that can handle newer resolution modes like nodenext',
  )
  external _i1.JSFunction? get resolveModuleNames;

  /// Returns the module resolution cache used by a provided
  /// `resolveModuleNames` implementation so that any non-name module resolution
  /// operations (eg, package.json lookup) can reuse it
  external _i1.JSFunction? get getModuleResolutionCache;
  @Deprecated(
    'supply resolveTypeReferenceDirectiveReferences instead for resolution that can handle newer resolution modes like nodenext\n\nThis method is a companion for \'resolveModuleNames\' and is used to resolve \'types\' references to actual type declaration files',
  )
  external _i1.JSFunction? get resolveTypeReferenceDirectives;
  external _i1.JSFunction? get resolveModuleNameLiterals;
  external _i1.JSFunction? get resolveTypeReferenceDirectiveReferences;
  external _i1.JSFunction? get getEnvironmentVariable;

  /// If provided along with custom resolveModuleNames or
  /// resolveTypeReferenceDirectives, used to determine if unchanged file path
  /// needs to re-resolve modules/type reference directives
  external _i1.JSFunction? get hasInvalidatedResolutions;
  external _i1.JSFunction? get createHash;
  external _i1.JSFunction? get getParsedCommandLine;
}
extension type CreateSourceFileOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  external ScriptTarget languageVersion;

  /// Controls the format the file is detected as - this can be derived from
  /// only the path
  /// and files on disk, but needs to be done with a module resolution cache in
  /// scope to be performant.
  /// This is usually `undefined` for compilations that do not have
  /// `moduleResolution` values of `node16` or `nodenext`.
  external ResolutionMode? impliedNodeFormat;

  /// Controls how module-y-ness is set for the given file. Usually the result
  /// of calling
  /// `getSetExternalModuleIndicator` on a valid `CompilerOptions` object. If
  /// not present, the default
  /// check specified by `isFileProbablyExternalModule` will be used to set the
  /// field.
  external _AnonymousFunction_7051686? setExternalModuleIndicator;

  external JSDocParsingMode? jsDocParsingMode;
}
extension type _AnonymousFunction_7051686._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call(TSSourceFile file);
}
extension type JSDocParsingMode._(_i1.JSNumber _) implements _i1.JSNumber {
  /// Always parse JSDoc comments and include them in the AST.
  ///
  /// This is the default if no mode is provided.
  static final JSDocParsingMode ParseAll = JSDocParsingMode._(0.toJS);

  /// Never parse JSDoc comments, mo matter the file type.
  static final JSDocParsingMode ParseNone = JSDocParsingMode._(1.toJS);

  /// Parse only JSDoc comments which are needed to provide correct type errors.
  ///
  /// This will always parse JSDoc in non-TS files, but only parse JSDoc
  /// comments
  /// containing `@see` and `@link` in TS files.
  static final JSDocParsingMode ParseForTypeErrors = JSDocParsingMode._(2.toJS);

  /// Parse only JSDoc comments which are needed to provide correct type info.
  ///
  /// This will always parse JSDoc in non-TS files, but never in TS files.
  ///
  /// Note: Do not use this mode if you require accurate type errors; use
  /// ParseForTypeErrors instead.
  static final JSDocParsingMode ParseForTypeInfo = JSDocParsingMode._(3.toJS);
}
extension type AnonymousUnion_1027795._(_i1.JSAny _) implements _i1.JSAny {
  ScriptTarget get asScriptTarget => ScriptTarget._((_ as _i1.JSNumber));

  CreateSourceFileOptions get asCreateSourceFileOptions =>
      (_ as CreateSourceFileOptions);
}
extension type _AnonymousFunction_1267068._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call(String message);
}
typedef Path = AnonymousIntersection_1619730;
extension type AnonymousType_9754893._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_9754893({_i1.JSAny? $__pathBrand});

  @_i1.JS('__pathBrand')
  external _i1.JSAny? $__pathBrand;
}
extension type AnonymousIntersection_1619730._(_i1.JSAny _)
    implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  AnonymousType_9754893 get asAnonymousType_9754893 =>
      (_ as AnonymousType_9754893);
}
extension type CancellationToken._(_i1.JSObject _) implements _i1.JSObject {
  external bool isCancellationRequested();
  external void throwIfCancellationRequested();
}
extension type ResolvedProjectReference._(_i1.JSObject _)
    implements _i1.JSObject {
  external ParsedCommandLine commandLine;

  external TSSourceFile sourceFile;

  external _i1.JSArray<ResolvedProjectReference?>? references;
}

/// Either a parsed command line or a parsed tsconfig.json
extension type ParsedCommandLine._(_i1.JSObject _) implements _i1.JSObject {
  external CompilerOptions options;

  external TypeAcquisition? typeAcquisition;

  external _i1.JSArray<_i1.JSString> fileNames;

  external _i1.JSArray<ProjectReference?>? projectReferences;

  external WatchOptions? watchOptions;

  external _i1.JSAny? raw;

  external _i1.JSArray<Diagnostic> errors;

  external MapLike<_i1.JSNumber>? wildcardDirectories;

  external bool? compileOnSave;
}
extension type TypeAcquisition._(_i1.JSObject _) implements _i1.JSObject {
  external bool? enable;

  external _i1.JSArray<_i1.JSString?>? include;

  external _i1.JSArray<_i1.JSString?>? exclude;

  external bool? disableFilenameBasedTypeAcquisition;

  external CompilerOptionsValue? operator [](String option);
}
extension type WatchOptions._(_i1.JSObject _) implements _i1.JSObject {
  external WatchFileKind? watchFile;

  external WatchDirectoryKind? watchDirectory;

  external PollingWatchKind? fallbackPolling;

  external bool? synchronousWatchDirectory;

  external _i1.JSArray<_i1.JSString?>? excludeDirectories;

  external _i1.JSArray<_i1.JSString?>? excludeFiles;

  external CompilerOptionsValue? operator [](String option);
}
extension type WatchFileKind._(_i1.JSNumber _) implements _i1.JSNumber {
  static final WatchFileKind FixedPollingInterval = WatchFileKind._(0.toJS);

  static final WatchFileKind PriorityPollingInterval = WatchFileKind._(1.toJS);

  static final WatchFileKind DynamicPriorityPolling = WatchFileKind._(2.toJS);

  static final WatchFileKind FixedChunkSizePolling = WatchFileKind._(3.toJS);

  static final WatchFileKind UseFsEvents = WatchFileKind._(4.toJS);

  static final WatchFileKind UseFsEventsOnParentDirectory = WatchFileKind._(
    5.toJS,
  );
}
extension type WatchDirectoryKind._(_i1.JSNumber _) implements _i1.JSNumber {
  static final WatchDirectoryKind UseFsEvents = WatchDirectoryKind._(0.toJS);

  static final WatchDirectoryKind FixedPollingInterval = WatchDirectoryKind._(
    1.toJS,
  );

  static final WatchDirectoryKind DynamicPriorityPolling = WatchDirectoryKind._(
    2.toJS,
  );

  static final WatchDirectoryKind FixedChunkSizePolling = WatchDirectoryKind._(
    3.toJS,
  );
}
extension type PollingWatchKind._(_i1.JSNumber _) implements _i1.JSNumber {
  static final PollingWatchKind FixedInterval = PollingWatchKind._(0.toJS);

  static final PollingWatchKind PriorityInterval = PollingWatchKind._(1.toJS);

  static final PollingWatchKind DynamicPriority = PollingWatchKind._(2.toJS);

  static final PollingWatchKind FixedChunkSize = PollingWatchKind._(3.toJS);
}
extension type Diagnostic._(_i1.JSObject _)
    implements DiagnosticRelatedInformation {
  /// May store more in future. For now, this will simply be `true` to indicate
  /// when a diagnostic is an unused-identifier diagnostic.
  external AnonymousType_2166136? reportsUnnecessary;

  external AnonymousType_2166136? reportsDeprecated;

  external String? source;

  external _i1.JSArray<DiagnosticRelatedInformation?>? relatedInformation;
}
extension type AnonymousType_2166136._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2166136();
}
extension type DiagnosticRelatedInformation._(_i1.JSObject _)
    implements _i1.JSObject {
  external DiagnosticCategory category;

  external double code;

  external TSSourceFile? file;

  external double? start;

  external double? length;

  external AnonymousUnion_1907104 messageText;
}
extension type DiagnosticCategory._(_i1.JSNumber _) implements _i1.JSNumber {
  static final DiagnosticCategory Warning = DiagnosticCategory._(0.toJS);

  static final DiagnosticCategory Error = DiagnosticCategory._(1.toJS);

  static final DiagnosticCategory Suggestion = DiagnosticCategory._(2.toJS);

  static final DiagnosticCategory Message = DiagnosticCategory._(3.toJS);
}

/// A linked list of formatted diagnostic messages to be used as part of a
/// multiline message.
/// It is built from the bottom up, leaving the head to be the "main"
/// diagnostic.
/// While it seems that DiagnosticMessageChain is structurally similar to
/// DiagnosticMessage,
/// the difference is that messages are all preformatted in DMC.
extension type DiagnosticMessageChain._(_i1.JSObject _)
    implements _i1.JSObject {
  external String messageText;

  external DiagnosticCategory category;

  external double code;

  external _i1.JSArray<DiagnosticMessageChain?>? next;
}
extension type AnonymousUnion_1907104._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  DiagnosticMessageChain get asDiagnosticMessageChain =>
      (_ as DiagnosticMessageChain);
}

/// Represents the result of module resolution.
/// Module resolution will pick up tsx/jsx/js files even if '--jsx' and
/// '--allowJs' are turned off.
/// The Program will then filter results based on these flags.
///
/// Prefer to return a `ResolvedModuleFull` so that the file type does not
/// have to be inferred.
extension type ResolvedModule._(_i1.JSObject _) implements _i1.JSObject {
  /// Path of the file the module was resolved to.
  external String resolvedFileName;

  /// True if `resolvedFileName` comes from `node_modules`.
  external bool? isExternalLibraryImport;

  /// True if the original module reference used a .ts extension to refer
  /// directly to a .ts file,
  /// which should produce an error during checking if emit is enabled.
  external bool? resolvedUsingTsExtension;
}
extension type ModuleResolutionCache._(_i1.JSObject _)
    implements
        PerDirectoryResolutionCache<ResolvedModuleWithFailedLookupLocations>,
        NonRelativeModuleNameResolutionCache,
        PackageJsonInfoCache {
  external PackageJsonInfoCache getPackageJsonInfoCache();
  external void clear();

  /// Updates with the current compilerOptions the cache will operate with.
  /// This updates the redirects map as well if needed so module resolutions are
  /// cached if they can across the projects
  external void update(CompilerOptions options);
}
extension type PackageJsonInfoCache._(_i1.JSObject _) implements _i1.JSObject {
  external void clear();
}

/// Cached resolutions per containing directory.
/// This assumes that any module id will have the same resolution for sibling
/// files located in the same folder.
extension type PerDirectoryResolutionCache<T extends _i1.JSAny?>._(
  _i1.JSObject _
)
    implements _i1.JSObject {
  external T? getFromDirectoryCache(
    String name,
    ResolutionMode mode,
    String directoryName,
    ResolvedProjectReference? redirectedReference,
  );
  external ModeAwareCache<_i1.JSAny?> getOrCreateCacheForDirectory(
    String directoryName, [
    ResolvedProjectReference? redirectedReference,
  ]);
  external void clear();

  /// Updates with the current compilerOptions the cache will operate with.
  /// This updates the redirects map as well if needed so module resolutions are
  /// cached if they can across the projects
  external void update(CompilerOptions options);
}
extension type ModeAwareCache<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  @_i1.JS('get')
  external T? get$(String key, ResolutionMode mode);
  @_i1.JS('set')
  external ModeAwareCache<_i1.JSAny?> set$(
    String key,
    ResolutionMode mode,
    _i1.JSAny value,
  );
  external ModeAwareCache<_i1.JSAny?> delete(String key, ResolutionMode mode);
  external bool has(String key, ResolutionMode mode);
  external void forEach(_AnonymousFunction_4156650<_i1.JSAny> cb);
  external double size();
}
extension type _AnonymousFunction_4156650<T extends _i1.JSAny?>._(
  _i1.JSFunction _
)
    implements _i1.JSFunction {
  external void call(_i1.JSAny elem, String key, ResolutionMode mode);
}
extension type ResolvedModuleWithFailedLookupLocations._(_i1.JSObject _)
    implements _i1.JSObject {
  external ResolvedModuleFull? get resolvedModule;
}

/// ResolvedModule with an explicitly provided `extension` property.
/// Prefer this over `ResolvedModule`.
/// If changing this, remember to change `moduleResolutionIsEqualTo`.
extension type ResolvedModuleFull._(_i1.JSObject _) implements ResolvedModule {
  /// Extension of resolvedFileName. This must match what's at the end of
  /// resolvedFileName.
  /// This is optional for backwards-compatibility, but will be added if not
  /// provided.
  @_i1.JS('extension')
  external String extension$;

  external PackageId? packageId;
}

/// Unique identifier with a package name and version.
/// If changing this, remember to change `packageIdIsEqual`.
extension type PackageId._(_i1.JSObject _) implements _i1.JSObject {
  /// Name of the package.
  /// Should not include `@types`.
  /// If accessing a non-index file, this should include its name e.g.
  /// "foo/bar".
  external String name;

  /// Name of a submodule within this package.
  /// May be "".
  external String subModuleName;

  /// Version of the package, e.g. "1.2.3"
  external String version;
}

/// Stored map from non-relative module name to a table: directory -> result
/// of module lookup in this directory
/// We support only non-relative module names because resolution of relative
/// module names is usually more deterministic and thus less expensive.
extension type NonRelativeModuleNameResolutionCache._(_i1.JSObject _)
    implements
        NonRelativeNameResolutionCache<ResolvedModuleWithFailedLookupLocations>,
        PackageJsonInfoCache {
  @Deprecated('Use getOrCreateCacheForNonRelativeName')
  external PerModuleNameCache getOrCreateCacheForModuleName(
    String nonRelativeModuleName,
    ResolutionMode mode, [
    ResolvedProjectReference? redirectedReference,
  ]);
  external void clear();
}
typedef PerModuleNameCache =
    PerNonRelativeNameCache<ResolvedModuleWithFailedLookupLocations>;
extension type PerNonRelativeNameCache<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  @_i1.JS('get')
  external T? get$(String directory);
  @_i1.JS('set')
  external void set$(String directory, _i1.JSAny result);
}
extension type NonRelativeNameResolutionCache<T extends _i1.JSAny?>._(
  _i1.JSObject _
)
    implements _i1.JSObject {
  external T? getFromNonRelativeNameCache(
    String nonRelativeName,
    ResolutionMode mode,
    String directoryName,
    ResolvedProjectReference? redirectedReference,
  );
  external PerNonRelativeNameCache<_i1.JSAny?>
  getOrCreateCacheForNonRelativeName(
    String nonRelativeName,
    ResolutionMode mode, [
    ResolvedProjectReference? redirectedReference,
  ]);
  external void clear();

  /// Updates with the current compilerOptions the cache will operate with.
  /// This updates the redirects map as well if needed so module resolutions are
  /// cached if they can across the projects
  external void update(CompilerOptions options);
}
extension type AnonymousUnion_1587234._(_i1.JSArray<_i1.JSString> _)
    implements _i1.JSArray<_i1.JSString> {
  _i1.JSArray<_i1.JSString> get asJSArrayOfJSString => _;

  _i1.JSArray<FileReference> get asJSArrayOfFileReference =>
      (_ as _i1.JSArray<FileReference>);
}
extension type ResolvedTypeReferenceDirective._(_i1.JSObject _)
    implements _i1.JSObject {
  external bool primary;

  external String? resolvedFileName;

  external PackageId? packageId;

  /// True if `resolvedFileName` comes from `node_modules`.
  external bool? isExternalLibraryImport;
}
extension type AnonymousUnion_3482728._(_i1.JSAny _) implements _i1.JSAny {
  FileReference get asFileReference => (_ as FileReference);

  _i1.JSString get asJSString => (_ as _i1.JSString);
}
extension type ResolvedTypeReferenceDirectiveWithFailedLookupLocations._(
  _i1.JSObject _
)
    implements _i1.JSObject {
  external ResolvedTypeReferenceDirective? get resolvedTypeReferenceDirective;
}
typedef WriteFileCallback = _AnonymousFunction_3571865;
extension type _AnonymousFunction_3571865._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call(
    String fileName,
    String text,
    bool writeByteOrderMark, [
    _AnonymousFunction_1267068? onError,
    _i1.JSArray<TSSourceFile?>? sourceFiles,
    WriteFileCallbackData? data,
  ]);
}
extension type WriteFileCallbackData._(_i1.JSObject _)
    implements _i1.JSObject {}
extension type ModuleResolutionHost._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousUnion_7984146? useCaseSensitiveFileNames;

  external bool fileExists(String fileName);
  external String? readFile(String fileName);
  external _i1.JSFunction? get trace;
  external _i1.JSFunction? get directoryExists;

  /// Resolve a symbolic link.
  external _i1.JSFunction? get realpath;
  external _i1.JSFunction? get getCurrentDirectory;
  external _i1.JSFunction? get getDirectories;
}
extension type _AnonymousFunction_2568610._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external bool call();
}
extension type AnonymousUnion_7984146._(_i1.JSAny _) implements _i1.JSAny {
  bool get asBool => (_ as _i1.JSBoolean).toDart;

  _AnonymousFunction_2568610 get as_AnonymousFunction_2568610 =>
      (_ as _AnonymousFunction_2568610);
}
extension type CustomTransformers._(_i1.JSObject _) implements _i1.JSObject {
  /// Custom transformers to evaluate before built-in .js transformations.
  external _i1.JSArray<AnonymousUnion_2268840?>? before;

  /// Custom transformers to evaluate after built-in .js transformations.
  external _i1.JSArray<AnonymousUnion_2268840?>? after;

  /// Custom transformers to evaluate after built-in .d.ts transformations.
  external _i1.JSArray<AnonymousUnion_4000137?>? afterDeclarations;
}

/// A function that is used to initialize and return a `Transformer` callback,
/// which in turn
/// will be used to transform one or more nodes.
typedef TransformerFactory<T extends _i1.JSObject> =
    _AnonymousFunction_3793676<T>;
extension type _AnonymousFunction_3793676<T extends _i1.JSObject>._(
  _i1.JSFunction _
)
    implements _i1.JSFunction {
  external Transformer<_i1.JSObject> call(TransformationContext context);
}
extension type TransformationContext._(_i1.JSObject _)
    implements CoreTransformationContext {
  /// Hook used by transformers to substitute expressions just before they
  /// are emitted by the pretty printer.
  ///
  /// NOTE: Transformation hooks should only be modified during `Transformer`
  /// initialization,
  /// before returning the `NodeTransformer` callback.
  external _AnonymousFunction_3090643 onSubstituteNode;

  /// Hook used to allow transformers to capture state before or after
  /// the printer emits a node.
  ///
  /// NOTE: Transformation hooks should only be modified during `Transformer`
  /// initialization,
  /// before returning the `NodeTransformer` callback.
  external _AnonymousFunction_3456704 onEmitNode;

  /// Records a request for a non-scoped emit helper in the current context.
  external void requestEmitHelper(EmitHelper helper);

  /// Gets and resets the requested non-scoped emit helpers.
  external _i1.JSArray<AnonymousUnion_4030589>? readEmitHelpers();

  /// Enables expression substitutions in the pretty printer for the provided
  /// SyntaxKind.
  external void enableSubstitution(SyntaxKind kind);

  /// Determines whether expression substitutions are enabled for the provided
  /// node.
  external bool isSubstitutionEnabled(Node node);

  /// Enables before/after emit notifications in the pretty printer for the
  /// provided
  /// SyntaxKind.
  external void enableEmitNotification(SyntaxKind kind);

  /// Determines whether before/after emit notifications should be raised in the
  /// pretty
  /// printer when it emits a node.
  external bool isEmitNotificationEnabled(Node node);
}
typedef EmitHelper = AnonymousUnion_4030589;
extension type ScopedEmitHelper._(_i1.JSObject _) implements EmitHelperBase {
  @_i2.redeclare
  external bool get scoped;
}
extension type EmitHelperBase._(_i1.JSObject _) implements _i1.JSObject {
  external String get name;
  external bool get scoped;
  external AnonymousUnion_3528961 get text;
  external double? get priority;
  external _i1.JSArray<AnonymousUnion_4030589?>? get dependencies;
}
extension type _AnonymousFunction_4279507._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external String call(EmitHelperUniqueNameCallback node);
}
typedef EmitHelperUniqueNameCallback = _AnonymousFunction_1213495;
extension type _AnonymousFunction_1213495._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external String call(String name);
}
extension type AnonymousUnion_3528961._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  _AnonymousFunction_4279507 get as_AnonymousFunction_4279507 =>
      (_ as _AnonymousFunction_4279507);
}
extension type UnscopedEmitHelper._(_i1.JSObject _) implements EmitHelperBase {
  @_i2.redeclare
  external bool get scoped;
  @_i2.redeclare
  external String get text;
}
extension type AnonymousUnion_4030589._(EmitHelperBase _)
    implements EmitHelperBase {
  ScopedEmitHelper get asScopedEmitHelper => (_ as ScopedEmitHelper);

  UnscopedEmitHelper get asUnscopedEmitHelper => (_ as UnscopedEmitHelper);
}
extension type _AnonymousFunction_3090643._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external Node call(EmitHint hint, Node node);
}
extension type EmitHint._(_i1.JSNumber _) implements _i1.JSNumber {
  static final EmitHint SourceFile = EmitHint._(0.toJS);

  static final EmitHint Expression = EmitHint._(1.toJS);

  static final EmitHint IdentifierName = EmitHint._(2.toJS);

  static final EmitHint MappedTypeParameter = EmitHint._(3.toJS);

  static final EmitHint Unspecified = EmitHint._(4.toJS);

  static final EmitHint EmbeddedStatement = EmitHint._(5.toJS);

  static final EmitHint JsxAttributeValue = EmitHint._(6.toJS);

  static final EmitHint ImportTypeNodeAttributes = EmitHint._(7.toJS);
}
extension type _AnonymousFunction_3456704._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call(
    EmitHint hint,
    Node node,
    _AnonymousFunction_3131520 emitCallback,
  );
}
extension type _AnonymousFunction_3131520._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call(EmitHint hint, Node node);
}
extension type CoreTransformationContext._(_i1.JSObject _)
    implements _i1.JSObject {
  @_i1.JS('factory')
  external NodeFactory get factory$;

  /// Gets the compiler options supplied to the transformer.
  external CompilerOptions getCompilerOptions();

  /// Starts a new lexical environment.
  external void startLexicalEnvironment();

  /// Suspends the current lexical environment, usually after visiting a
  /// parameter list.
  external void suspendLexicalEnvironment();

  /// Resumes a suspended lexical environment, usually before visiting a
  /// function body.
  external void resumeLexicalEnvironment();

  /// Ends a lexical environment, returning any declarations.
  external _i1.JSArray<Statement>? endLexicalEnvironment();

  /// Hoists a function declaration to the containing scope.
  external void hoistFunctionDeclaration(FunctionDeclaration node);

  /// Hoists a variable declaration to the containing scope.
  external void hoistVariableDeclaration(Identifier node);
}
extension type NodeFactory._(_i1.JSObject _) implements _i1.JSObject {
  external NodeArray<_i1.JSObject> createNodeArray<T extends _i1.JSObject>([
    _i1.JSArray<_i1.JSAny?>? elements,
    bool? hasTrailingComma,
  ]);
  external NumericLiteral createNumericLiteral(
    AnonymousUnion_5376531 value, [
    TokenFlags? numericLiteralFlags,
  ]);
  external BigIntLiteral createBigIntLiteral(AnonymousUnion_3588516 value);
  external StringLiteral createStringLiteral(
    String text, [
    bool? isSingleQuote,
  ]);
  external StringLiteral createStringLiteralFromNode(
    AnonymousUnion_2575464 sourceNode, [
    bool? isSingleQuote,
  ]);
  external RegularExpressionLiteral createRegularExpressionLiteral(String text);
  external Identifier createIdentifier(String text);

  /// Create a unique temporary variable.
  /// - [recordTempVariable]:  An optional callback used to record the temporary
  ///   variable name. This
  /// should usually be a reference to `hoistVariableDeclaration` from a
  /// `TransformationContext`, but
  /// can be `undefined` if you plan to record the temporary variable manually.
  /// - [reservedInNestedScopes]:  When `true`, reserves the temporary variable
  ///   name in all nested scopes
  /// during emit so that the variable can be referenced in a nested function
  /// body. This is an alternative to
  /// setting `EmitFlags.ReuseTempVariableScope` on the nested function itself.
  external Identifier createTempVariable(
    _AnonymousFunction_6293689 recordTempVariable, [
    bool? reservedInNestedScopes,
  ]);

  /// Create a unique temporary variable for use in a loop.
  /// - [reservedInNestedScopes]:  When `true`, reserves the temporary variable
  ///   name in all nested scopes
  /// during emit so that the variable can be referenced in a nested function
  /// body. This is an alternative to
  /// setting `EmitFlags.ReuseTempVariableScope` on the nested function itself.
  external Identifier createLoopVariable([bool? reservedInNestedScopes]);

  /// Create a unique name based on the supplied text.
  external Identifier createUniqueName(
    String text, [
    GeneratedIdentifierFlags? flags,
  ]);

  /// Create a unique name generated for a node.
  external Identifier getGeneratedNameForNode(
    Node? node, [
    GeneratedIdentifierFlags? flags,
  ]);
  external PrivateIdentifier createPrivateIdentifier(String text);
  external PrivateIdentifier createUniquePrivateName([String? text]);
  external PrivateIdentifier getGeneratedPrivateNameForNode(Node node);
  external SuperExpression createToken(SyntaxKind token);
  @_i1.JS('createToken')
  external ThisExpression createToken$1(SyntaxKind token);
  @_i1.JS('createToken')
  external NullLiteral createToken$2(SyntaxKind token);
  @_i1.JS('createToken')
  external TrueLiteral createToken$3(SyntaxKind token);
  @_i1.JS('createToken')
  external FalseLiteral createToken$4(SyntaxKind token);
  @_i1.JS('createToken')
  external EndOfFileToken createToken$5(SyntaxKind token);
  @_i1.JS('createToken')
  external Token<_i1.JSNumber> createToken$6(SyntaxKind token);
  @_i1.JS('createToken')
  external PunctuationToken<_i1.JSNumber>
  createToken$7<TKind extends _i1.JSNumber>(_i1.JSAny token);
  @_i1.JS('createToken')
  external KeywordTypeNode<_i1.JSNumber>
  createToken$8<TKind extends _i1.JSNumber>(_i1.JSAny token);
  @_i1.JS('createToken')
  external ModifierToken<_i1.JSNumber>
  createToken$9<TKind extends _i1.JSNumber>(_i1.JSAny token);
  @_i1.JS('createToken')
  external KeywordToken<_i1.JSNumber>
  createToken$10<TKind extends _i1.JSNumber>(_i1.JSAny token);
  external SuperExpression createSuper();
  external ThisExpression createThis();
  external NullLiteral createNull();
  external TrueLiteral createTrue();
  external FalseLiteral createFalse();
  external ModifierToken<_i1.JSNumber> createModifier<T extends _i1.JSNumber>(
    _i1.JSAny kind,
  );
  external _i1.JSArray<AnonymousUnion_8635666>?
  createModifiersFromModifierFlags(ModifierFlags flags);
  external QualifiedName createQualifiedName(
    EntityName left,
    AnonymousUnion_1309070 right,
  );
  external QualifiedName updateQualifiedName(
    QualifiedName node,
    EntityName left,
    Identifier right,
  );
  external ComputedPropertyName createComputedPropertyName(
    Expression expression,
  );
  external ComputedPropertyName updateComputedPropertyName(
    ComputedPropertyName node,
    Expression expression,
  );
  external TypeParameterDeclaration createTypeParameterDeclaration(
    _i1.JSArray<AnonymousUnion_8635666>? modifiers,
    AnonymousUnion_1309070 name, [
    TypeNode? constraint,
    TypeNode? defaultType,
  ]);
  external TypeParameterDeclaration updateTypeParameterDeclaration(
    TypeParameterDeclaration node,
    _i1.JSArray<AnonymousUnion_8635666>? modifiers,
    Identifier name,
    TypeNode? constraint,
    TypeNode? defaultType,
  );
  external ParameterDeclaration createParameterDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    DotDotDotToken? dotDotDotToken,
    AnonymousUnion_3855707 name, [
    QuestionToken? questionToken,
    TypeNode? type,
    Expression? initializer,
  ]);
  external ParameterDeclaration updateParameterDeclaration(
    ParameterDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    DotDotDotToken? dotDotDotToken,
    AnonymousUnion_3855707 name,
    QuestionToken? questionToken,
    TypeNode? type,
    Expression? initializer,
  );
  external Decorator createDecorator(Expression expression);
  external Decorator updateDecorator(Decorator node, Expression expression);
  external PropertySignature createPropertySignature(
    _i1.JSArray<AnonymousUnion_8635666>? modifiers,
    AnonymousUnion_1821232 name,
    QuestionToken? questionToken,
    TypeNode? type,
  );
  external PropertySignature updatePropertySignature(
    PropertySignature node,
    _i1.JSArray<AnonymousUnion_8635666>? modifiers,
    PropertyName name,
    QuestionToken? questionToken,
    TypeNode? type,
  );
  external PropertyDeclaration createPropertyDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AnonymousUnion_1821232 name,
    AnonymousUnion_2547692 questionOrExclamationToken,
    TypeNode? type,
    Expression? initializer,
  );
  external PropertyDeclaration updatePropertyDeclaration(
    PropertyDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AnonymousUnion_1821232 name,
    AnonymousUnion_2547692 questionOrExclamationToken,
    TypeNode? type,
    Expression? initializer,
  );
  external MethodSignature createMethodSignature(
    _i1.JSArray<AnonymousUnion_8635666>? modifiers,
    AnonymousUnion_1821232 name,
    QuestionToken? questionToken,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
  );
  external MethodSignature updateMethodSignature(
    MethodSignature node,
    _i1.JSArray<AnonymousUnion_8635666>? modifiers,
    PropertyName name,
    QuestionToken? questionToken,
    NodeArray<TypeParameterDeclaration>? typeParameters,
    NodeArray<ParameterDeclaration> parameters,
    TypeNode? type,
  );
  external MethodDeclaration createMethodDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AsteriskToken? asteriskToken,
    AnonymousUnion_1821232 name,
    QuestionToken? questionToken,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
    Block? body,
  );
  external MethodDeclaration updateMethodDeclaration(
    MethodDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AsteriskToken? asteriskToken,
    PropertyName name,
    QuestionToken? questionToken,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
    Block? body,
  );
  external ConstructorDeclaration createConstructorDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    _i1.JSArray<ParameterDeclaration> parameters,
    Block? body,
  );
  external ConstructorDeclaration updateConstructorDeclaration(
    ConstructorDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    _i1.JSArray<ParameterDeclaration> parameters,
    Block? body,
  );
  external GetAccessorDeclaration createGetAccessorDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AnonymousUnion_1821232 name,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
    Block? body,
  );
  external GetAccessorDeclaration updateGetAccessorDeclaration(
    GetAccessorDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    PropertyName name,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
    Block? body,
  );
  external SetAccessorDeclaration createSetAccessorDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AnonymousUnion_1821232 name,
    _i1.JSArray<ParameterDeclaration> parameters,
    Block? body,
  );
  external SetAccessorDeclaration updateSetAccessorDeclaration(
    SetAccessorDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    PropertyName name,
    _i1.JSArray<ParameterDeclaration> parameters,
    Block? body,
  );
  external CallSignatureDeclaration createCallSignature(
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
  );
  external CallSignatureDeclaration updateCallSignature(
    CallSignatureDeclaration node,
    NodeArray<TypeParameterDeclaration>? typeParameters,
    NodeArray<ParameterDeclaration> parameters,
    TypeNode? type,
  );
  external ConstructSignatureDeclaration createConstructSignature(
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
  );
  external ConstructSignatureDeclaration updateConstructSignature(
    ConstructSignatureDeclaration node,
    NodeArray<TypeParameterDeclaration>? typeParameters,
    NodeArray<ParameterDeclaration> parameters,
    TypeNode? type,
  );
  external IndexSignatureDeclaration createIndexSignature(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode type,
  );
  external IndexSignatureDeclaration updateIndexSignature(
    IndexSignatureDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode type,
  );
  external TemplateLiteralTypeSpan createTemplateLiteralTypeSpan(
    TypeNode type,
    AnonymousUnion_1273318 literal,
  );
  external TemplateLiteralTypeSpan updateTemplateLiteralTypeSpan(
    TemplateLiteralTypeSpan node,
    TypeNode type,
    AnonymousUnion_1273318 literal,
  );
  external ClassStaticBlockDeclaration createClassStaticBlockDeclaration(
    Block body,
  );
  external ClassStaticBlockDeclaration updateClassStaticBlockDeclaration(
    ClassStaticBlockDeclaration node,
    Block body,
  );
  external KeywordTypeNode<_i1.JSNumber>
  createKeywordTypeNode<TKind extends _i1.JSNumber>(_i1.JSAny kind);
  external TypePredicateNode createTypePredicateNode(
    AssertsKeyword? assertsModifier,
    AnonymousUnion_1707187 parameterName,
    TypeNode? type,
  );
  external TypePredicateNode updateTypePredicateNode(
    TypePredicateNode node,
    AssertsKeyword? assertsModifier,
    AnonymousUnion_3323271 parameterName,
    TypeNode? type,
  );
  external TypeReferenceNode createTypeReferenceNode(
    AnonymousUnion_3058613 typeName, [
    _i1.JSArray<TypeNode?>? typeArguments,
  ]);
  external TypeReferenceNode updateTypeReferenceNode(
    TypeReferenceNode node,
    EntityName typeName,
    NodeArray<TypeNode>? typeArguments,
  );
  external FunctionTypeNode createFunctionTypeNode(
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode type,
  );
  external FunctionTypeNode updateFunctionTypeNode(
    FunctionTypeNode node,
    NodeArray<TypeParameterDeclaration>? typeParameters,
    NodeArray<ParameterDeclaration> parameters,
    TypeNode type,
  );
  external ConstructorTypeNode createConstructorTypeNode(
    _i1.JSArray<AnonymousUnion_8635666>? modifiers,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode type,
  );
  external ConstructorTypeNode updateConstructorTypeNode(
    ConstructorTypeNode node,
    _i1.JSArray<AnonymousUnion_8635666>? modifiers,
    NodeArray<TypeParameterDeclaration>? typeParameters,
    NodeArray<ParameterDeclaration> parameters,
    TypeNode type,
  );
  external TypeQueryNode createTypeQueryNode(
    EntityName exprName, [
    _i1.JSArray<TypeNode?>? typeArguments,
  ]);
  external TypeQueryNode updateTypeQueryNode(
    TypeQueryNode node,
    EntityName exprName, [
    _i1.JSArray<TypeNode?>? typeArguments,
  ]);
  external TypeLiteralNode createTypeLiteralNode(
    _i1.JSArray<TypeElement>? members,
  );
  external TypeLiteralNode updateTypeLiteralNode(
    TypeLiteralNode node,
    NodeArray<TypeElement> members,
  );
  external ArrayTypeNode createArrayTypeNode(TypeNode elementType);
  external ArrayTypeNode updateArrayTypeNode(
    ArrayTypeNode node,
    TypeNode elementType,
  );
  external TupleTypeNode createTupleTypeNode(
    _i1.JSArray<AnonymousUnion_1127069> elements,
  );
  external TupleTypeNode updateTupleTypeNode(
    TupleTypeNode node,
    _i1.JSArray<AnonymousUnion_1127069> elements,
  );
  external NamedTupleMember createNamedTupleMember(
    DotDotDotToken? dotDotDotToken,
    Identifier name,
    QuestionToken? questionToken,
    TypeNode type,
  );
  external NamedTupleMember updateNamedTupleMember(
    NamedTupleMember node,
    DotDotDotToken? dotDotDotToken,
    Identifier name,
    QuestionToken? questionToken,
    TypeNode type,
  );
  external OptionalTypeNode createOptionalTypeNode(TypeNode type);
  external OptionalTypeNode updateOptionalTypeNode(
    OptionalTypeNode node,
    TypeNode type,
  );
  external RestTypeNode createRestTypeNode(TypeNode type);
  external RestTypeNode updateRestTypeNode(RestTypeNode node, TypeNode type);
  external UnionTypeNode createUnionTypeNode(_i1.JSArray<TypeNode> types);
  external UnionTypeNode updateUnionTypeNode(
    UnionTypeNode node,
    NodeArray<TypeNode> types,
  );
  external IntersectionTypeNode createIntersectionTypeNode(
    _i1.JSArray<TypeNode> types,
  );
  external IntersectionTypeNode updateIntersectionTypeNode(
    IntersectionTypeNode node,
    NodeArray<TypeNode> types,
  );
  external ConditionalTypeNode createConditionalTypeNode(
    TypeNode checkType,
    TypeNode extendsType,
    TypeNode trueType,
    TypeNode falseType,
  );
  external ConditionalTypeNode updateConditionalTypeNode(
    ConditionalTypeNode node,
    TypeNode checkType,
    TypeNode extendsType,
    TypeNode trueType,
    TypeNode falseType,
  );
  external InferTypeNode createInferTypeNode(
    TypeParameterDeclaration typeParameter,
  );
  external InferTypeNode updateInferTypeNode(
    InferTypeNode node,
    TypeParameterDeclaration typeParameter,
  );
  external ImportTypeNode createImportTypeNode(
    TypeNode argument, [
    ImportAttributes? attributes,
    EntityName? qualifier,
    _i1.JSArray<TypeNode?>? typeArguments,
    bool? isTypeOf,
  ]);
  external ImportTypeNode updateImportTypeNode(
    ImportTypeNode node,
    TypeNode argument,
    ImportAttributes? attributes,
    EntityName? qualifier,
    _i1.JSArray<TypeNode>? typeArguments, [
    bool? isTypeOf,
  ]);
  external ParenthesizedTypeNode createParenthesizedType(TypeNode type);
  external ParenthesizedTypeNode updateParenthesizedType(
    ParenthesizedTypeNode node,
    TypeNode type,
  );
  external ThisTypeNode createThisTypeNode();
  external TypeOperatorNode createTypeOperatorNode(
    AnonymousUnion_1288264 operator,
    TypeNode type,
  );
  external TypeOperatorNode updateTypeOperatorNode(
    TypeOperatorNode node,
    TypeNode type,
  );
  external IndexedAccessTypeNode createIndexedAccessTypeNode(
    TypeNode objectType,
    TypeNode indexType,
  );
  external IndexedAccessTypeNode updateIndexedAccessTypeNode(
    IndexedAccessTypeNode node,
    TypeNode objectType,
    TypeNode indexType,
  );
  external MappedTypeNode createMappedTypeNode(
    AnonymousUnion_2546890 readonlyToken,
    TypeParameterDeclaration typeParameter,
    TypeNode? nameType,
    AnonymousUnion_2460793 questionToken,
    TypeNode? type,
    NodeArray<TypeElement>? members,
  );
  external MappedTypeNode updateMappedTypeNode(
    MappedTypeNode node,
    AnonymousUnion_2546890 readonlyToken,
    TypeParameterDeclaration typeParameter,
    TypeNode? nameType,
    AnonymousUnion_2460793 questionToken,
    TypeNode? type,
    NodeArray<TypeElement>? members,
  );
  external LiteralTypeNode createLiteralTypeNode(_i1.JSAny literal);
  external LiteralTypeNode updateLiteralTypeNode(
    LiteralTypeNode node,
    _i1.JSAny literal,
  );
  external TemplateLiteralTypeNode createTemplateLiteralType(
    TemplateHead head,
    _i1.JSArray<TemplateLiteralTypeSpan> templateSpans,
  );
  external TemplateLiteralTypeNode updateTemplateLiteralType(
    TemplateLiteralTypeNode node,
    TemplateHead head,
    _i1.JSArray<TemplateLiteralTypeSpan> templateSpans,
  );
  external ObjectBindingPattern createObjectBindingPattern(
    _i1.JSArray<BindingElement> elements,
  );
  external ObjectBindingPattern updateObjectBindingPattern(
    ObjectBindingPattern node,
    _i1.JSArray<BindingElement> elements,
  );
  external ArrayBindingPattern createArrayBindingPattern(
    _i1.JSArray<AnonymousUnion_2404920> elements,
  );
  external ArrayBindingPattern updateArrayBindingPattern(
    ArrayBindingPattern node,
    _i1.JSArray<AnonymousUnion_2404920> elements,
  );
  external BindingElement createBindingElement(
    DotDotDotToken? dotDotDotToken,
    AnonymousUnion_1821232 propertyName,
    AnonymousUnion_3855707 name, [
    Expression? initializer,
  ]);
  external BindingElement updateBindingElement(
    BindingElement node,
    DotDotDotToken? dotDotDotToken,
    PropertyName? propertyName,
    BindingName name,
    Expression? initializer,
  );
  external ArrayLiteralExpression createArrayLiteralExpression([
    _i1.JSArray<Expression?>? elements,
    bool? multiLine,
  ]);
  external ArrayLiteralExpression updateArrayLiteralExpression(
    ArrayLiteralExpression node,
    _i1.JSArray<Expression> elements,
  );
  external ObjectLiteralExpression createObjectLiteralExpression([
    _i1.JSArray<AnonymousUnion_4079191?>? properties,
    bool? multiLine,
  ]);
  external ObjectLiteralExpression updateObjectLiteralExpression(
    ObjectLiteralExpression node,
    _i1.JSArray<AnonymousUnion_4079191> properties,
  );
  external PropertyAccessExpression createPropertyAccessExpression(
    Expression expression,
    AnonymousUnion_2314758 name,
  );
  external PropertyAccessExpression updatePropertyAccessExpression(
    PropertyAccessExpression node,
    Expression expression,
    MemberName name,
  );
  external PropertyAccessChain createPropertyAccessChain(
    Expression expression,
    QuestionDotToken? questionDotToken,
    AnonymousUnion_2314758 name,
  );
  external PropertyAccessChain updatePropertyAccessChain(
    PropertyAccessChain node,
    Expression expression,
    QuestionDotToken? questionDotToken,
    MemberName name,
  );
  external ElementAccessExpression createElementAccessExpression(
    Expression expression,
    AnonymousUnion_1878536 index,
  );
  external ElementAccessExpression updateElementAccessExpression(
    ElementAccessExpression node,
    Expression expression,
    Expression argumentExpression,
  );
  external ElementAccessChain createElementAccessChain(
    Expression expression,
    QuestionDotToken? questionDotToken,
    AnonymousUnion_1878536 index,
  );
  external ElementAccessChain updateElementAccessChain(
    ElementAccessChain node,
    Expression expression,
    QuestionDotToken? questionDotToken,
    Expression argumentExpression,
  );
  external CallExpression createCallExpression(
    Expression expression,
    _i1.JSArray<TypeNode>? typeArguments,
    _i1.JSArray<Expression>? argumentsArray,
  );
  external CallExpression updateCallExpression(
    CallExpression node,
    Expression expression,
    _i1.JSArray<TypeNode>? typeArguments,
    _i1.JSArray<Expression> argumentsArray,
  );
  external CallChain createCallChain(
    Expression expression,
    QuestionDotToken? questionDotToken,
    _i1.JSArray<TypeNode>? typeArguments,
    _i1.JSArray<Expression>? argumentsArray,
  );
  external CallChain updateCallChain(
    CallChain node,
    Expression expression,
    QuestionDotToken? questionDotToken,
    _i1.JSArray<TypeNode>? typeArguments,
    _i1.JSArray<Expression> argumentsArray,
  );
  external NewExpression createNewExpression(
    Expression expression,
    _i1.JSArray<TypeNode>? typeArguments,
    _i1.JSArray<Expression>? argumentsArray,
  );
  external NewExpression updateNewExpression(
    NewExpression node,
    Expression expression,
    _i1.JSArray<TypeNode>? typeArguments,
    _i1.JSArray<Expression>? argumentsArray,
  );
  external TaggedTemplateExpression createTaggedTemplateExpression(
    Expression tag,
    _i1.JSArray<TypeNode>? typeArguments,
    TemplateLiteral template,
  );
  external TaggedTemplateExpression updateTaggedTemplateExpression(
    TaggedTemplateExpression node,
    Expression tag,
    _i1.JSArray<TypeNode>? typeArguments,
    TemplateLiteral template,
  );
  external TypeAssertion createTypeAssertion(
    TypeNode type,
    Expression expression,
  );
  external TypeAssertion updateTypeAssertion(
    TypeAssertion node,
    TypeNode type,
    Expression expression,
  );
  external ParenthesizedExpression createParenthesizedExpression(
    Expression expression,
  );
  external ParenthesizedExpression updateParenthesizedExpression(
    ParenthesizedExpression node,
    Expression expression,
  );
  external FunctionExpression createFunctionExpression(
    _i1.JSArray<AnonymousUnion_8635666>? modifiers,
    AsteriskToken? asteriskToken,
    AnonymousUnion_1309070 name,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration>? parameters,
    TypeNode? type,
    Block body,
  );
  external FunctionExpression updateFunctionExpression(
    FunctionExpression node,
    _i1.JSArray<AnonymousUnion_8635666>? modifiers,
    AsteriskToken? asteriskToken,
    Identifier? name,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
    Block body,
  );
  external ArrowFunction createArrowFunction(
    _i1.JSArray<AnonymousUnion_8635666>? modifiers,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
    EqualsGreaterThanToken? equalsGreaterThanToken,
    ConciseBody body,
  );
  external ArrowFunction updateArrowFunction(
    ArrowFunction node,
    _i1.JSArray<AnonymousUnion_8635666>? modifiers,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
    EqualsGreaterThanToken equalsGreaterThanToken,
    ConciseBody body,
  );
  external DeleteExpression createDeleteExpression(Expression expression);
  external DeleteExpression updateDeleteExpression(
    DeleteExpression node,
    Expression expression,
  );
  external TypeOfExpression createTypeOfExpression(Expression expression);
  external TypeOfExpression updateTypeOfExpression(
    TypeOfExpression node,
    Expression expression,
  );
  external VoidExpression createVoidExpression(Expression expression);
  external VoidExpression updateVoidExpression(
    VoidExpression node,
    Expression expression,
  );
  external AwaitExpression createAwaitExpression(Expression expression);
  external AwaitExpression updateAwaitExpression(
    AwaitExpression node,
    Expression expression,
  );
  external PrefixUnaryExpression createPrefixUnaryExpression(
    PrefixUnaryOperator operator,
    Expression operand,
  );
  external PrefixUnaryExpression updatePrefixUnaryExpression(
    PrefixUnaryExpression node,
    Expression operand,
  );
  external PostfixUnaryExpression createPostfixUnaryExpression(
    Expression operand,
    PostfixUnaryOperator operator,
  );
  external PostfixUnaryExpression updatePostfixUnaryExpression(
    PostfixUnaryExpression node,
    Expression operand,
  );
  external BinaryExpression createBinaryExpression(
    Expression left,
    AnonymousUnion_2791230 operator,
    Expression right,
  );
  external BinaryExpression updateBinaryExpression(
    BinaryExpression node,
    Expression left,
    AnonymousUnion_2791230 operator,
    Expression right,
  );
  external ConditionalExpression createConditionalExpression(
    Expression condition,
    QuestionToken? questionToken,
    Expression whenTrue,
    ColonToken? colonToken,
    Expression whenFalse,
  );
  external ConditionalExpression updateConditionalExpression(
    ConditionalExpression node,
    Expression condition,
    QuestionToken questionToken,
    Expression whenTrue,
    ColonToken colonToken,
    Expression whenFalse,
  );
  external TemplateExpression createTemplateExpression(
    TemplateHead head,
    _i1.JSArray<TemplateSpan> templateSpans,
  );
  external TemplateExpression updateTemplateExpression(
    TemplateExpression node,
    TemplateHead head,
    _i1.JSArray<TemplateSpan> templateSpans,
  );
  external TemplateHead createTemplateHead(
    String text, [
    String? rawText,
    TokenFlags? templateFlags,
  ]);
  @_i1.JS('createTemplateHead')
  external TemplateHead createTemplateHead$1(
    String? text,
    String rawText, [
    TokenFlags? templateFlags,
  ]);
  external TemplateMiddle createTemplateMiddle(
    String text, [
    String? rawText,
    TokenFlags? templateFlags,
  ]);
  @_i1.JS('createTemplateMiddle')
  external TemplateMiddle createTemplateMiddle$1(
    String? text,
    String rawText, [
    TokenFlags? templateFlags,
  ]);
  external TemplateTail createTemplateTail(
    String text, [
    String? rawText,
    TokenFlags? templateFlags,
  ]);
  @_i1.JS('createTemplateTail')
  external TemplateTail createTemplateTail$1(
    String? text,
    String rawText, [
    TokenFlags? templateFlags,
  ]);
  external NoSubstitutionTemplateLiteral createNoSubstitutionTemplateLiteral(
    String text, [
    String? rawText,
  ]);
  @_i1.JS('createNoSubstitutionTemplateLiteral')
  external NoSubstitutionTemplateLiteral createNoSubstitutionTemplateLiteral$1(
    String? text,
    String rawText,
  );
  external YieldExpression createYieldExpression(
    AsteriskToken asteriskToken,
    Expression expression,
  );
  @_i1.JS('createYieldExpression')
  external YieldExpression createYieldExpression$1(
    void asteriskToken,
    Expression? expression,
  );
  external YieldExpression updateYieldExpression(
    YieldExpression node,
    AsteriskToken? asteriskToken,
    Expression? expression,
  );
  external SpreadElement createSpreadElement(Expression expression);
  external SpreadElement updateSpreadElement(
    SpreadElement node,
    Expression expression,
  );
  external ClassExpression createClassExpression(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AnonymousUnion_1309070 name,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<HeritageClause>? heritageClauses,
    _i1.JSArray<ClassElement> members,
  );
  external ClassExpression updateClassExpression(
    ClassExpression node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    Identifier? name,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<HeritageClause>? heritageClauses,
    _i1.JSArray<ClassElement> members,
  );
  external OmittedExpression createOmittedExpression();
  external ExpressionWithTypeArguments createExpressionWithTypeArguments(
    Expression expression,
    _i1.JSArray<TypeNode>? typeArguments,
  );
  external ExpressionWithTypeArguments updateExpressionWithTypeArguments(
    ExpressionWithTypeArguments node,
    Expression expression,
    _i1.JSArray<TypeNode>? typeArguments,
  );
  external AsExpression createAsExpression(
    Expression expression,
    TypeNode type,
  );
  external AsExpression updateAsExpression(
    AsExpression node,
    Expression expression,
    TypeNode type,
  );
  external NonNullExpression createNonNullExpression(Expression expression);
  external NonNullExpression updateNonNullExpression(
    NonNullExpression node,
    Expression expression,
  );
  external NonNullChain createNonNullChain(Expression expression);
  external NonNullChain updateNonNullChain(
    NonNullChain node,
    Expression expression,
  );
  external MetaProperty createMetaProperty(
    _i1.JSAny keywordToken,
    Identifier name,
  );
  external MetaProperty updateMetaProperty(MetaProperty node, Identifier name);
  external SatisfiesExpression createSatisfiesExpression(
    Expression expression,
    TypeNode type,
  );
  external SatisfiesExpression updateSatisfiesExpression(
    SatisfiesExpression node,
    Expression expression,
    TypeNode type,
  );
  external TemplateSpan createTemplateSpan(
    Expression expression,
    AnonymousUnion_1273318 literal,
  );
  external TemplateSpan updateTemplateSpan(
    TemplateSpan node,
    Expression expression,
    AnonymousUnion_1273318 literal,
  );
  external SemicolonClassElement createSemicolonClassElement();
  external Block createBlock(
    _i1.JSArray<Statement> statements, [
    bool? multiLine,
  ]);
  external Block updateBlock(Block node, _i1.JSArray<Statement> statements);
  external VariableStatement createVariableStatement(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AnonymousUnion_5047086 declarationList,
  );
  external VariableStatement updateVariableStatement(
    VariableStatement node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    VariableDeclarationList declarationList,
  );
  external EmptyStatement createEmptyStatement();
  external ExpressionStatement createExpressionStatement(Expression expression);
  external ExpressionStatement updateExpressionStatement(
    ExpressionStatement node,
    Expression expression,
  );
  external IfStatement createIfStatement(
    Expression expression,
    Statement thenStatement, [
    Statement? elseStatement,
  ]);
  external IfStatement updateIfStatement(
    IfStatement node,
    Expression expression,
    Statement thenStatement,
    Statement? elseStatement,
  );
  external DoStatement createDoStatement(
    Statement statement,
    Expression expression,
  );
  external DoStatement updateDoStatement(
    DoStatement node,
    Statement statement,
    Expression expression,
  );
  external WhileStatement createWhileStatement(
    Expression expression,
    Statement statement,
  );
  external WhileStatement updateWhileStatement(
    WhileStatement node,
    Expression expression,
    Statement statement,
  );
  external ForStatement createForStatement(
    ForInitializer? initializer,
    Expression? condition,
    Expression? incrementor,
    Statement statement,
  );
  external ForStatement updateForStatement(
    ForStatement node,
    ForInitializer? initializer,
    Expression? condition,
    Expression? incrementor,
    Statement statement,
  );
  external ForInStatement createForInStatement(
    ForInitializer initializer,
    Expression expression,
    Statement statement,
  );
  external ForInStatement updateForInStatement(
    ForInStatement node,
    ForInitializer initializer,
    Expression expression,
    Statement statement,
  );
  external ForOfStatement createForOfStatement(
    AwaitKeyword? awaitModifier,
    ForInitializer initializer,
    Expression expression,
    Statement statement,
  );
  external ForOfStatement updateForOfStatement(
    ForOfStatement node,
    AwaitKeyword? awaitModifier,
    ForInitializer initializer,
    Expression expression,
    Statement statement,
  );
  external ContinueStatement createContinueStatement([
    AnonymousUnion_1309070? label,
  ]);
  external ContinueStatement updateContinueStatement(
    ContinueStatement node,
    Identifier? label,
  );
  external BreakStatement createBreakStatement([AnonymousUnion_1309070? label]);
  external BreakStatement updateBreakStatement(
    BreakStatement node,
    Identifier? label,
  );
  external ReturnStatement createReturnStatement([Expression? expression]);
  external ReturnStatement updateReturnStatement(
    ReturnStatement node,
    Expression? expression,
  );
  external WithStatement createWithStatement(
    Expression expression,
    Statement statement,
  );
  external WithStatement updateWithStatement(
    WithStatement node,
    Expression expression,
    Statement statement,
  );
  external SwitchStatement createSwitchStatement(
    Expression expression,
    CaseBlock caseBlock,
  );
  external SwitchStatement updateSwitchStatement(
    SwitchStatement node,
    Expression expression,
    CaseBlock caseBlock,
  );
  external LabeledStatement createLabeledStatement(
    AnonymousUnion_1309070 label,
    Statement statement,
  );
  external LabeledStatement updateLabeledStatement(
    LabeledStatement node,
    Identifier label,
    Statement statement,
  );
  external ThrowStatement createThrowStatement(Expression expression);
  external ThrowStatement updateThrowStatement(
    ThrowStatement node,
    Expression expression,
  );
  external TryStatement createTryStatement(
    Block tryBlock,
    CatchClause? catchClause,
    Block? finallyBlock,
  );
  external TryStatement updateTryStatement(
    TryStatement node,
    Block tryBlock,
    CatchClause? catchClause,
    Block? finallyBlock,
  );
  external DebuggerStatement createDebuggerStatement();
  external VariableDeclaration createVariableDeclaration(
    AnonymousUnion_3855707 name, [
    ExclamationToken? exclamationToken,
    TypeNode? type,
    Expression? initializer,
  ]);
  external VariableDeclaration updateVariableDeclaration(
    VariableDeclaration node,
    BindingName name,
    ExclamationToken? exclamationToken,
    TypeNode? type,
    Expression? initializer,
  );
  external VariableDeclarationList createVariableDeclarationList(
    _i1.JSArray<VariableDeclaration> declarations, [
    NodeFlags? flags,
  ]);
  external VariableDeclarationList updateVariableDeclarationList(
    VariableDeclarationList node,
    _i1.JSArray<VariableDeclaration> declarations,
  );
  external FunctionDeclaration createFunctionDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AsteriskToken? asteriskToken,
    AnonymousUnion_1309070 name,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
    Block? body,
  );
  external FunctionDeclaration updateFunctionDeclaration(
    FunctionDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AsteriskToken? asteriskToken,
    Identifier? name,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
    Block? body,
  );
  external ClassDeclaration createClassDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AnonymousUnion_1309070 name,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<HeritageClause>? heritageClauses,
    _i1.JSArray<ClassElement> members,
  );
  external ClassDeclaration updateClassDeclaration(
    ClassDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    Identifier? name,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<HeritageClause>? heritageClauses,
    _i1.JSArray<ClassElement> members,
  );
  external InterfaceDeclaration createInterfaceDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AnonymousUnion_1309070 name,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<HeritageClause>? heritageClauses,
    _i1.JSArray<TypeElement> members,
  );
  external InterfaceDeclaration updateInterfaceDeclaration(
    InterfaceDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    Identifier name,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    _i1.JSArray<HeritageClause>? heritageClauses,
    _i1.JSArray<TypeElement> members,
  );
  external TypeAliasDeclaration createTypeAliasDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AnonymousUnion_1309070 name,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    TypeNode type,
  );
  external TypeAliasDeclaration updateTypeAliasDeclaration(
    TypeAliasDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    Identifier name,
    _i1.JSArray<TypeParameterDeclaration>? typeParameters,
    TypeNode type,
  );
  external EnumDeclaration createEnumDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    AnonymousUnion_1309070 name,
    _i1.JSArray<EnumMember> members,
  );
  external EnumDeclaration updateEnumDeclaration(
    EnumDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    Identifier name,
    _i1.JSArray<EnumMember> members,
  );
  external ModuleDeclaration createModuleDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    ModuleName name,
    ModuleBody? body, [
    NodeFlags? flags,
  ]);
  external ModuleDeclaration updateModuleDeclaration(
    ModuleDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    ModuleName name,
    ModuleBody? body,
  );
  external ModuleBlock createModuleBlock(_i1.JSArray<Statement> statements);
  external ModuleBlock updateModuleBlock(
    ModuleBlock node,
    _i1.JSArray<Statement> statements,
  );
  external CaseBlock createCaseBlock(
    _i1.JSArray<AnonymousUnion_3845700> clauses,
  );
  external CaseBlock updateCaseBlock(
    CaseBlock node,
    _i1.JSArray<AnonymousUnion_3845700> clauses,
  );
  external NamespaceExportDeclaration createNamespaceExportDeclaration(
    AnonymousUnion_1309070 name,
  );
  external NamespaceExportDeclaration updateNamespaceExportDeclaration(
    NamespaceExportDeclaration node,
    Identifier name,
  );
  external ImportEqualsDeclaration createImportEqualsDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    bool isTypeOnly,
    AnonymousUnion_1309070 name,
    ModuleReference moduleReference,
  );
  external ImportEqualsDeclaration updateImportEqualsDeclaration(
    ImportEqualsDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    bool isTypeOnly,
    Identifier name,
    ModuleReference moduleReference,
  );
  external ImportDeclaration createImportDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    ImportClause? importClause,
    Expression moduleSpecifier, [
    ImportAttributes? attributes,
  ]);
  external ImportDeclaration updateImportDeclaration(
    ImportDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    ImportClause? importClause,
    Expression moduleSpecifier,
    ImportAttributes? attributes,
  );
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external ImportClause createImportClause(
    ImportPhaseModifierSyntaxKind? phaseModifier,
    Identifier? name,
    NamedImportBindings? namedBindings,
  );
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  @_i1.JS('createImportClause')
  external ImportClause createImportClause$1(
    bool isTypeOnly,
    Identifier? name,
    NamedImportBindings? namedBindings,
  );
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external ImportClause updateImportClause(
    ImportClause node,
    ImportPhaseModifierSyntaxKind? phaseModifier,
    Identifier? name,
    NamedImportBindings? namedBindings,
  );
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  @_i1.JS('updateImportClause')
  external ImportClause updateImportClause$1(
    ImportClause node,
    bool isTypeOnly,
    Identifier? name,
    NamedImportBindings? namedBindings,
  );
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external AssertClause createAssertClause(
    NodeArray<AssertEntry> elements, [
    bool? multiLine,
  ]);
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external AssertClause updateAssertClause(
    AssertClause node,
    NodeArray<AssertEntry> elements, [
    bool? multiLine,
  ]);
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external AssertEntry createAssertEntry(AssertionKey name, Expression value);
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external AssertEntry updateAssertEntry(
    AssertEntry node,
    AssertionKey name,
    Expression value,
  );
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external ImportTypeAssertionContainer createImportTypeAssertionContainer(
    AssertClause clause, [
    bool? multiLine,
  ]);
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external ImportTypeAssertionContainer updateImportTypeAssertionContainer(
    ImportTypeAssertionContainer node,
    AssertClause clause, [
    bool? multiLine,
  ]);
  external ImportAttributes createImportAttributes(
    NodeArray<ImportAttribute> elements, [
    bool? multiLine,
  ]);
  external ImportAttributes updateImportAttributes(
    ImportAttributes node,
    NodeArray<ImportAttribute> elements, [
    bool? multiLine,
  ]);
  external ImportAttribute createImportAttribute(
    ImportAttributeName name,
    Expression value,
  );
  external ImportAttribute updateImportAttribute(
    ImportAttribute node,
    ImportAttributeName name,
    Expression value,
  );
  external NamespaceImport createNamespaceImport(Identifier name);
  external NamespaceImport updateNamespaceImport(
    NamespaceImport node,
    Identifier name,
  );
  external NamespaceExport createNamespaceExport(ModuleExportName name);
  external NamespaceExport updateNamespaceExport(
    NamespaceExport node,
    ModuleExportName name,
  );
  external NamedImports createNamedImports(
    _i1.JSArray<ImportSpecifier> elements,
  );
  external NamedImports updateNamedImports(
    NamedImports node,
    _i1.JSArray<ImportSpecifier> elements,
  );
  external ImportSpecifier createImportSpecifier(
    bool isTypeOnly,
    ModuleExportName? propertyName,
    Identifier name,
  );
  external ImportSpecifier updateImportSpecifier(
    ImportSpecifier node,
    bool isTypeOnly,
    ModuleExportName? propertyName,
    Identifier name,
  );
  external ExportAssignment createExportAssignment(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    bool? isExportEquals,
    Expression expression,
  );
  external ExportAssignment updateExportAssignment(
    ExportAssignment node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    Expression expression,
  );
  external ExportDeclaration createExportDeclaration(
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    bool isTypeOnly,
    NamedExportBindings? exportClause, [
    Expression? moduleSpecifier,
    ImportAttributes? attributes,
  ]);
  external ExportDeclaration updateExportDeclaration(
    ExportDeclaration node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
    bool isTypeOnly,
    NamedExportBindings? exportClause,
    Expression? moduleSpecifier,
    ImportAttributes? attributes,
  );
  external NamedExports createNamedExports(
    _i1.JSArray<ExportSpecifier> elements,
  );
  external NamedExports updateNamedExports(
    NamedExports node,
    _i1.JSArray<ExportSpecifier> elements,
  );
  external ExportSpecifier createExportSpecifier(
    bool isTypeOnly,
    AnonymousUnion_6714933 propertyName,
    AnonymousUnion_6714933 name,
  );
  external ExportSpecifier updateExportSpecifier(
    ExportSpecifier node,
    bool isTypeOnly,
    ModuleExportName? propertyName,
    ModuleExportName name,
  );
  external ExternalModuleReference createExternalModuleReference(
    Expression expression,
  );
  external ExternalModuleReference updateExternalModuleReference(
    ExternalModuleReference node,
    Expression expression,
  );
  external JSDocAllType createJSDocAllType();
  external JSDocUnknownType createJSDocUnknownType();
  external JSDocNonNullableType createJSDocNonNullableType(
    TypeNode type, [
    bool? postfix,
  ]);
  external JSDocNonNullableType updateJSDocNonNullableType(
    JSDocNonNullableType node,
    TypeNode type,
  );
  external JSDocNullableType createJSDocNullableType(
    TypeNode type, [
    bool? postfix,
  ]);
  external JSDocNullableType updateJSDocNullableType(
    JSDocNullableType node,
    TypeNode type,
  );
  external JSDocOptionalType createJSDocOptionalType(TypeNode type);
  external JSDocOptionalType updateJSDocOptionalType(
    JSDocOptionalType node,
    TypeNode type,
  );
  external JSDocFunctionType createJSDocFunctionType(
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
  );
  external JSDocFunctionType updateJSDocFunctionType(
    JSDocFunctionType node,
    _i1.JSArray<ParameterDeclaration> parameters,
    TypeNode? type,
  );
  external JSDocVariadicType createJSDocVariadicType(TypeNode type);
  external JSDocVariadicType updateJSDocVariadicType(
    JSDocVariadicType node,
    TypeNode type,
  );
  external JSDocNamepathType createJSDocNamepathType(TypeNode type);
  external JSDocNamepathType updateJSDocNamepathType(
    JSDocNamepathType node,
    TypeNode type,
  );
  external JSDocTypeExpression createJSDocTypeExpression(TypeNode type);
  external JSDocTypeExpression updateJSDocTypeExpression(
    JSDocTypeExpression node,
    TypeNode type,
  );
  external JSDocNameReference createJSDocNameReference(
    AnonymousUnion_2264832 name,
  );
  external JSDocNameReference updateJSDocNameReference(
    JSDocNameReference node,
    AnonymousUnion_2264832 name,
  );
  external JSDocMemberName createJSDocMemberName(
    AnonymousUnion_2264832 left,
    Identifier right,
  );
  external JSDocMemberName updateJSDocMemberName(
    JSDocMemberName node,
    AnonymousUnion_2264832 left,
    Identifier right,
  );
  external JSDocLink createJSDocLink(AnonymousUnion_2264832 name, String text);
  external JSDocLink updateJSDocLink(
    JSDocLink node,
    AnonymousUnion_2264832 name,
    String text,
  );
  external JSDocLinkCode createJSDocLinkCode(
    AnonymousUnion_2264832 name,
    String text,
  );
  external JSDocLinkCode updateJSDocLinkCode(
    JSDocLinkCode node,
    AnonymousUnion_2264832 name,
    String text,
  );
  external JSDocLinkPlain createJSDocLinkPlain(
    AnonymousUnion_2264832 name,
    String text,
  );
  external JSDocLinkPlain updateJSDocLinkPlain(
    JSDocLinkPlain node,
    AnonymousUnion_2264832 name,
    String text,
  );
  external JSDocTypeLiteral createJSDocTypeLiteral([
    _i1.JSArray<JSDocPropertyLikeTag?>? jsDocPropertyTags,
    bool? isArrayType,
  ]);
  external JSDocTypeLiteral updateJSDocTypeLiteral(
    JSDocTypeLiteral node,
    _i1.JSArray<JSDocPropertyLikeTag>? jsDocPropertyTags,
    bool? isArrayType,
  );
  external JSDocSignature createJSDocSignature(
    _i1.JSArray<JSDocTemplateTag>? typeParameters,
    _i1.JSArray<JSDocParameterTag> parameters, [
    JSDocReturnTag? type,
  ]);
  external JSDocSignature updateJSDocSignature(
    JSDocSignature node,
    _i1.JSArray<JSDocTemplateTag>? typeParameters,
    _i1.JSArray<JSDocParameterTag> parameters,
    JSDocReturnTag? type,
  );
  external JSDocTemplateTag createJSDocTemplateTag(
    Identifier? tagName,
    JSDocTypeExpression? constraint,
    _i1.JSArray<TypeParameterDeclaration> typeParameters, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocTemplateTag updateJSDocTemplateTag(
    JSDocTemplateTag node,
    Identifier? tagName,
    JSDocTypeExpression? constraint,
    _i1.JSArray<TypeParameterDeclaration> typeParameters,
    AnonymousUnion_6234722 comment,
  );
  external JSDocTypedefTag createJSDocTypedefTag(
    Identifier? tagName, [
    AnonymousUnion_3963972? typeExpression,
    AnonymousUnion_2853000? fullName,
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocTypedefTag updateJSDocTypedefTag(
    JSDocTypedefTag node,
    Identifier? tagName,
    AnonymousUnion_3963972 typeExpression,
    AnonymousUnion_2853000 fullName,
    AnonymousUnion_6234722 comment,
  );
  external JSDocParameterTag createJSDocParameterTag(
    Identifier? tagName,
    EntityName name,
    bool isBracketed, [
    JSDocTypeExpression? typeExpression,
    bool? isNameFirst,
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocParameterTag updateJSDocParameterTag(
    JSDocParameterTag node,
    Identifier? tagName,
    EntityName name,
    bool isBracketed,
    JSDocTypeExpression? typeExpression,
    bool isNameFirst,
    AnonymousUnion_6234722 comment,
  );
  external JSDocPropertyTag createJSDocPropertyTag(
    Identifier? tagName,
    EntityName name,
    bool isBracketed, [
    JSDocTypeExpression? typeExpression,
    bool? isNameFirst,
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocPropertyTag updateJSDocPropertyTag(
    JSDocPropertyTag node,
    Identifier? tagName,
    EntityName name,
    bool isBracketed,
    JSDocTypeExpression? typeExpression,
    bool isNameFirst,
    AnonymousUnion_6234722 comment,
  );
  external JSDocTypeTag createJSDocTypeTag(
    Identifier? tagName,
    JSDocTypeExpression typeExpression, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocTypeTag updateJSDocTypeTag(
    JSDocTypeTag node,
    Identifier? tagName,
    JSDocTypeExpression typeExpression,
    AnonymousUnion_6234722 comment,
  );
  external JSDocSeeTag createJSDocSeeTag(
    Identifier? tagName,
    JSDocNameReference? nameExpression, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocSeeTag updateJSDocSeeTag(
    JSDocSeeTag node,
    Identifier? tagName,
    JSDocNameReference? nameExpression, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocReturnTag createJSDocReturnTag(
    Identifier? tagName, [
    JSDocTypeExpression? typeExpression,
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocReturnTag updateJSDocReturnTag(
    JSDocReturnTag node,
    Identifier? tagName,
    JSDocTypeExpression? typeExpression,
    AnonymousUnion_6234722 comment,
  );
  external JSDocThisTag createJSDocThisTag(
    Identifier? tagName,
    JSDocTypeExpression typeExpression, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocThisTag updateJSDocThisTag(
    JSDocThisTag node,
    Identifier? tagName,
    JSDocTypeExpression? typeExpression,
    AnonymousUnion_6234722 comment,
  );
  external JSDocEnumTag createJSDocEnumTag(
    Identifier? tagName,
    JSDocTypeExpression typeExpression, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocEnumTag updateJSDocEnumTag(
    JSDocEnumTag node,
    Identifier? tagName,
    JSDocTypeExpression typeExpression,
    AnonymousUnion_6234722 comment,
  );
  external JSDocCallbackTag createJSDocCallbackTag(
    Identifier? tagName,
    JSDocSignature typeExpression, [
    AnonymousUnion_2853000? fullName,
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocCallbackTag updateJSDocCallbackTag(
    JSDocCallbackTag node,
    Identifier? tagName,
    JSDocSignature typeExpression,
    AnonymousUnion_2853000 fullName,
    AnonymousUnion_6234722 comment,
  );
  external JSDocOverloadTag createJSDocOverloadTag(
    Identifier? tagName,
    JSDocSignature typeExpression, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocOverloadTag updateJSDocOverloadTag(
    JSDocOverloadTag node,
    Identifier? tagName,
    JSDocSignature typeExpression,
    AnonymousUnion_6234722 comment,
  );
  external JSDocAugmentsTag createJSDocAugmentsTag(
    Identifier? tagName,
    _i1.JSAny className, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocAugmentsTag updateJSDocAugmentsTag(
    JSDocAugmentsTag node,
    Identifier? tagName,
    _i1.JSAny className,
    AnonymousUnion_6234722 comment,
  );
  external JSDocImplementsTag createJSDocImplementsTag(
    Identifier? tagName,
    _i1.JSAny className, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocImplementsTag updateJSDocImplementsTag(
    JSDocImplementsTag node,
    Identifier? tagName,
    _i1.JSAny className,
    AnonymousUnion_6234722 comment,
  );
  external JSDocAuthorTag createJSDocAuthorTag(
    Identifier? tagName, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocAuthorTag updateJSDocAuthorTag(
    JSDocAuthorTag node,
    Identifier? tagName,
    AnonymousUnion_6234722 comment,
  );
  external JSDocClassTag createJSDocClassTag(
    Identifier? tagName, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocClassTag updateJSDocClassTag(
    JSDocClassTag node,
    Identifier? tagName,
    AnonymousUnion_6234722 comment,
  );
  external JSDocPublicTag createJSDocPublicTag(
    Identifier? tagName, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocPublicTag updateJSDocPublicTag(
    JSDocPublicTag node,
    Identifier? tagName,
    AnonymousUnion_6234722 comment,
  );
  external JSDocPrivateTag createJSDocPrivateTag(
    Identifier? tagName, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocPrivateTag updateJSDocPrivateTag(
    JSDocPrivateTag node,
    Identifier? tagName,
    AnonymousUnion_6234722 comment,
  );
  external JSDocProtectedTag createJSDocProtectedTag(
    Identifier? tagName, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocProtectedTag updateJSDocProtectedTag(
    JSDocProtectedTag node,
    Identifier? tagName,
    AnonymousUnion_6234722 comment,
  );
  external JSDocReadonlyTag createJSDocReadonlyTag(
    Identifier? tagName, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocReadonlyTag updateJSDocReadonlyTag(
    JSDocReadonlyTag node,
    Identifier? tagName,
    AnonymousUnion_6234722 comment,
  );
  external JSDocUnknownTag createJSDocUnknownTag(
    Identifier tagName, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocUnknownTag updateJSDocUnknownTag(
    JSDocUnknownTag node,
    Identifier tagName,
    AnonymousUnion_6234722 comment,
  );
  external JSDocDeprecatedTag createJSDocDeprecatedTag(
    Identifier? tagName, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocDeprecatedTag updateJSDocDeprecatedTag(
    JSDocDeprecatedTag node,
    Identifier? tagName, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocOverrideTag createJSDocOverrideTag(
    Identifier? tagName, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocOverrideTag updateJSDocOverrideTag(
    JSDocOverrideTag node,
    Identifier? tagName, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocThrowsTag createJSDocThrowsTag(
    Identifier tagName,
    JSDocTypeExpression? typeExpression, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocThrowsTag updateJSDocThrowsTag(
    JSDocThrowsTag node,
    Identifier? tagName,
    JSDocTypeExpression? typeExpression, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocSatisfiesTag createJSDocSatisfiesTag(
    Identifier? tagName,
    JSDocTypeExpression typeExpression, [
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocSatisfiesTag updateJSDocSatisfiesTag(
    JSDocSatisfiesTag node,
    Identifier? tagName,
    JSDocTypeExpression typeExpression,
    AnonymousUnion_6234722 comment,
  );
  external JSDocImportTag createJSDocImportTag(
    Identifier? tagName,
    ImportClause? importClause,
    Expression moduleSpecifier, [
    ImportAttributes? attributes,
    AnonymousUnion_6234722? comment,
  ]);
  external JSDocImportTag updateJSDocImportTag(
    JSDocImportTag node,
    Identifier? tagName,
    ImportClause? importClause,
    Expression moduleSpecifier,
    ImportAttributes? attributes,
    AnonymousUnion_6234722 comment,
  );
  external JSDocText createJSDocText(String text);
  external JSDocText updateJSDocText(JSDocText node, String text);
  external JSDoc createJSDocComment([
    AnonymousUnion_6234722? comment,
    _i1.JSArray<JSDocTag?>? tags,
  ]);
  external JSDoc updateJSDocComment(
    JSDoc node,
    AnonymousUnion_6234722 comment,
    _i1.JSArray<JSDocTag>? tags,
  );
  external JsxElement createJsxElement(
    JsxOpeningElement openingElement,
    _i1.JSArray<AnonymousUnion_3764686> children,
    JsxClosingElement closingElement,
  );
  external JsxElement updateJsxElement(
    JsxElement node,
    JsxOpeningElement openingElement,
    _i1.JSArray<AnonymousUnion_3764686> children,
    JsxClosingElement closingElement,
  );
  external JsxSelfClosingElement createJsxSelfClosingElement(
    JsxTagNameExpression tagName,
    _i1.JSArray<TypeNode>? typeArguments,
    JsxAttributes attributes,
  );
  external JsxSelfClosingElement updateJsxSelfClosingElement(
    JsxSelfClosingElement node,
    JsxTagNameExpression tagName,
    _i1.JSArray<TypeNode>? typeArguments,
    JsxAttributes attributes,
  );
  external JsxOpeningElement createJsxOpeningElement(
    JsxTagNameExpression tagName,
    _i1.JSArray<TypeNode>? typeArguments,
    JsxAttributes attributes,
  );
  external JsxOpeningElement updateJsxOpeningElement(
    JsxOpeningElement node,
    JsxTagNameExpression tagName,
    _i1.JSArray<TypeNode>? typeArguments,
    JsxAttributes attributes,
  );
  external JsxClosingElement createJsxClosingElement(
    JsxTagNameExpression tagName,
  );
  external JsxClosingElement updateJsxClosingElement(
    JsxClosingElement node,
    JsxTagNameExpression tagName,
  );
  external JsxFragment createJsxFragment(
    JsxOpeningFragment openingFragment,
    _i1.JSArray<AnonymousUnion_3764686> children,
    JsxClosingFragment closingFragment,
  );
  external JsxText createJsxText(
    String text, [
    bool? containsOnlyTriviaWhiteSpaces,
  ]);
  external JsxText updateJsxText(
    JsxText node,
    String text, [
    bool? containsOnlyTriviaWhiteSpaces,
  ]);
  external JsxOpeningFragment createJsxOpeningFragment();
  external JsxClosingFragment createJsxJsxClosingFragment();
  external JsxFragment updateJsxFragment(
    JsxFragment node,
    JsxOpeningFragment openingFragment,
    _i1.JSArray<AnonymousUnion_3764686> children,
    JsxClosingFragment closingFragment,
  );
  external JsxAttribute createJsxAttribute(
    JsxAttributeName name,
    JsxAttributeValue? initializer,
  );
  external JsxAttribute updateJsxAttribute(
    JsxAttribute node,
    JsxAttributeName name,
    JsxAttributeValue? initializer,
  );
  external JsxAttributes createJsxAttributes(
    _i1.JSArray<AnonymousUnion_1036421> properties,
  );
  external JsxAttributes updateJsxAttributes(
    JsxAttributes node,
    _i1.JSArray<AnonymousUnion_1036421> properties,
  );
  external JsxSpreadAttribute createJsxSpreadAttribute(Expression expression);
  external JsxSpreadAttribute updateJsxSpreadAttribute(
    JsxSpreadAttribute node,
    Expression expression,
  );
  external JsxExpression createJsxExpression(
    DotDotDotToken? dotDotDotToken,
    Expression? expression,
  );
  external JsxExpression updateJsxExpression(
    JsxExpression node,
    Expression? expression,
  );
  external JsxNamespacedName createJsxNamespacedName(
    Identifier namespace,
    Identifier name,
  );
  external JsxNamespacedName updateJsxNamespacedName(
    JsxNamespacedName node,
    Identifier namespace,
    Identifier name,
  );
  external CaseClause createCaseClause(
    Expression expression,
    _i1.JSArray<Statement> statements,
  );
  external CaseClause updateCaseClause(
    CaseClause node,
    Expression expression,
    _i1.JSArray<Statement> statements,
  );
  external DefaultClause createDefaultClause(_i1.JSArray<Statement> statements);
  external DefaultClause updateDefaultClause(
    DefaultClause node,
    _i1.JSArray<Statement> statements,
  );
  external HeritageClause createHeritageClause(
    _i1.JSAny token,
    _i1.JSArray<ExpressionWithTypeArguments> types,
  );
  external HeritageClause updateHeritageClause(
    HeritageClause node,
    _i1.JSArray<ExpressionWithTypeArguments> types,
  );
  external CatchClause createCatchClause(
    AnonymousUnion_9191303? variableDeclaration,
    Block block,
  );
  external CatchClause updateCatchClause(
    CatchClause node,
    VariableDeclaration? variableDeclaration,
    Block block,
  );
  external PropertyAssignment createPropertyAssignment(
    AnonymousUnion_1821232 name,
    Expression initializer,
  );
  external PropertyAssignment updatePropertyAssignment(
    PropertyAssignment node,
    PropertyName name,
    Expression initializer,
  );
  external ShorthandPropertyAssignment createShorthandPropertyAssignment(
    AnonymousUnion_1309070 name, [
    Expression? objectAssignmentInitializer,
  ]);
  external ShorthandPropertyAssignment updateShorthandPropertyAssignment(
    ShorthandPropertyAssignment node,
    Identifier name,
    Expression? objectAssignmentInitializer,
  );
  external SpreadAssignment createSpreadAssignment(Expression expression);
  external SpreadAssignment updateSpreadAssignment(
    SpreadAssignment node,
    Expression expression,
  );
  external EnumMember createEnumMember(
    AnonymousUnion_1821232 name, [
    Expression? initializer,
  ]);
  external EnumMember updateEnumMember(
    EnumMember node,
    PropertyName name,
    Expression? initializer,
  );
  external TSSourceFile createSourceFile(
    _i1.JSArray<Statement> statements,
    EndOfFileToken endOfFileToken,
    NodeFlags flags,
  );
  external TSSourceFile updateSourceFile(
    TSSourceFile node,
    _i1.JSArray<Statement> statements, [
    bool? isDeclarationFile,
    _i1.JSArray<FileReference?>? referencedFiles,
    _i1.JSArray<FileReference?>? typeReferences,
    bool? hasNoDefaultLib,
    _i1.JSArray<FileReference?>? libReferences,
  ]);
  external NotEmittedStatement createNotEmittedStatement(Node original);
  external NotEmittedTypeElement createNotEmittedTypeElement();
  external PartiallyEmittedExpression createPartiallyEmittedExpression(
    Expression expression, [
    Node? original,
  ]);
  external PartiallyEmittedExpression updatePartiallyEmittedExpression(
    PartiallyEmittedExpression node,
    Expression expression,
  );
  external CommaListExpression createCommaListExpression(
    _i1.JSArray<Expression> elements,
  );
  external CommaListExpression updateCommaListExpression(
    CommaListExpression node,
    _i1.JSArray<Expression> elements,
  );
  external Bundle createBundle(_i1.JSArray<TSSourceFile> sourceFiles);
  external Bundle updateBundle(
    Bundle node,
    _i1.JSArray<TSSourceFile> sourceFiles,
  );
  external BinaryExpression createComma(Expression left, Expression right);
  external DestructuringAssignment createAssignment(
    AnonymousUnion_3480921 left,
    Expression right,
  );
  @_i1.JS('createAssignment')
  external AssignmentExpression<EqualsToken> createAssignment$1(
    Expression left,
    Expression right,
  );
  external BinaryExpression createLogicalOr(Expression left, Expression right);
  external BinaryExpression createLogicalAnd(Expression left, Expression right);
  external BinaryExpression createBitwiseOr(Expression left, Expression right);
  external BinaryExpression createBitwiseXor(Expression left, Expression right);
  external BinaryExpression createBitwiseAnd(Expression left, Expression right);
  external BinaryExpression createStrictEquality(
    Expression left,
    Expression right,
  );
  external BinaryExpression createStrictInequality(
    Expression left,
    Expression right,
  );
  external BinaryExpression createEquality(Expression left, Expression right);
  external BinaryExpression createInequality(Expression left, Expression right);
  external BinaryExpression createLessThan(Expression left, Expression right);
  external BinaryExpression createLessThanEquals(
    Expression left,
    Expression right,
  );
  external BinaryExpression createGreaterThan(
    Expression left,
    Expression right,
  );
  external BinaryExpression createGreaterThanEquals(
    Expression left,
    Expression right,
  );
  external BinaryExpression createLeftShift(Expression left, Expression right);
  external BinaryExpression createRightShift(Expression left, Expression right);
  external BinaryExpression createUnsignedRightShift(
    Expression left,
    Expression right,
  );
  external BinaryExpression createAdd(Expression left, Expression right);
  external BinaryExpression createSubtract(Expression left, Expression right);
  external BinaryExpression createMultiply(Expression left, Expression right);
  external BinaryExpression createDivide(Expression left, Expression right);
  external BinaryExpression createModulo(Expression left, Expression right);
  external BinaryExpression createExponent(Expression left, Expression right);
  external PrefixUnaryExpression createPrefixPlus(Expression operand);
  external PrefixUnaryExpression createPrefixMinus(Expression operand);
  external PrefixUnaryExpression createPrefixIncrement(Expression operand);
  external PrefixUnaryExpression createPrefixDecrement(Expression operand);
  external PrefixUnaryExpression createBitwiseNot(Expression operand);
  external PrefixUnaryExpression createLogicalNot(Expression operand);
  external PostfixUnaryExpression createPostfixIncrement(Expression operand);
  external PostfixUnaryExpression createPostfixDecrement(Expression operand);
  external CallExpression createImmediatelyInvokedFunctionExpression(
    _i1.JSArray<Statement> statements,
  );
  @_i1.JS('createImmediatelyInvokedFunctionExpression')
  external CallExpression createImmediatelyInvokedFunctionExpression$1(
    _i1.JSArray<Statement> statements,
    ParameterDeclaration param,
    Expression paramValue,
  );
  external ImmediatelyInvokedArrowFunction
  createImmediatelyInvokedArrowFunction(_i1.JSArray<Statement> statements);
  @_i1.JS('createImmediatelyInvokedArrowFunction')
  external ImmediatelyInvokedArrowFunction
  createImmediatelyInvokedArrowFunction$1(
    _i1.JSArray<Statement> statements,
    ParameterDeclaration param,
    Expression paramValue,
  );
  external VoidExpression createVoidZero();
  external ExportAssignment createExportDefault(Expression expression);
  external ExportDeclaration createExternalModuleExport(Identifier exportName);
  external Expression restoreOuterExpressions(
    Expression? outerExpression,
    Expression innerExpression, [
    OuterExpressionKinds? kinds,
  ]);

  /// Updates a node that may contain modifiers, replacing only the modifiers of
  /// the node.
  external T replaceModifiers<T extends _i1.JSObject>(
    _i1.JSAny node,
    AnonymousUnion_1794579? modifiers,
  );

  /// Updates a node that may contain decorators or modifiers, replacing only
  /// the decorators and modifiers of the node.
  external T replaceDecoratorsAndModifiers<T extends _i1.JSObject>(
    _i1.JSAny node,
    _i1.JSArray<AnonymousUnion_4023207>? modifiers,
  );

  /// Updates a node that contains a property name, replacing only the name of
  /// the node.
  external T replacePropertyName<T extends _i1.JSObject>(
    _i1.JSAny node,
    _i1.JSAny name,
  );
}
extension type AnonymousUnion_5376531._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  num get asNum => (_ as _i1.JSNumber).toDartDouble;
}
extension type TokenFlags._(_i1.JSNumber _) implements _i1.JSNumber {
  static final TokenFlags None = TokenFlags._(0.toJS);

  static final TokenFlags Scientific = TokenFlags._(16.toJS);

  static final TokenFlags Octal = TokenFlags._(32.toJS);

  static final TokenFlags HexSpecifier = TokenFlags._(64.toJS);

  static final TokenFlags BinarySpecifier = TokenFlags._(128.toJS);

  static final TokenFlags OctalSpecifier = TokenFlags._(256.toJS);
}

/// Represents a bigint literal value without requiring bigint support
extension type PseudoBigInt._(_i1.JSObject _) implements _i1.JSObject {
  external bool negative;

  external String base10Value;
}
extension type AnonymousUnion_3588516._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  PseudoBigInt get asPseudoBigInt => (_ as PseudoBigInt);
}
typedef PropertyNameLiteral = AnonymousUnion_2308869;
extension type AnonymousUnion_2308869._(_i1.JSObject _)
    implements _i1.JSObject {
  Identifier get asIdentifier => (_ as Identifier);

  StringLiteralLike get asStringLiteralLike => (_ as AnonymousUnion_3755859);

  NumericLiteral get asNumericLiteral => (_ as NumericLiteral);

  JsxNamespacedName get asJsxNamespacedName => (_ as JsxNamespacedName);

  BigIntLiteral get asBigIntLiteral => (_ as BigIntLiteral);
}
extension type AnonymousUnion_2575464._(_i1.JSObject _)
    implements _i1.JSObject {
  PropertyNameLiteral get asPropertyNameLiteral =>
      (_ as AnonymousUnion_2308869);

  PrivateIdentifier get asPrivateIdentifier => (_ as PrivateIdentifier);
}
extension type RegularExpressionLiteral._(_i1.JSObject _)
    implements LiteralExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type _AnonymousFunction_6293689._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call(Identifier node);
}
extension type GeneratedIdentifierFlags._(_i1.JSNumber _)
    implements _i1.JSNumber {
  static final GeneratedIdentifierFlags None = GeneratedIdentifierFlags._(
    0.toJS,
  );

  static final GeneratedIdentifierFlags ReservedInNestedScopes =
      GeneratedIdentifierFlags._(8.toJS);

  static final GeneratedIdentifierFlags Optimistic = GeneratedIdentifierFlags._(
    16.toJS,
  );

  static final GeneratedIdentifierFlags FileLevel = GeneratedIdentifierFlags._(
    32.toJS,
  );

  static final GeneratedIdentifierFlags AllowNameSubstitution =
      GeneratedIdentifierFlags._(64.toJS);
}
extension type SuperExpression._(_i1.JSObject _)
    implements PrimaryExpression, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type ThisExpression._(_i1.JSObject _)
    implements PrimaryExpression, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type AnonymousUnion_2970591._(SyntaxKind _) implements SyntaxKind {
  SyntaxKind get asSyntaxKind => _;
}
extension type AnonymousUnion_3990406._(SyntaxKind _) implements SyntaxKind {
  SyntaxKind get asSyntaxKind => _;
}
extension type KeywordTypeNode<TKind extends _i1.JSNumber>._(_i1.JSObject _)
    implements KeywordToken<_i1.JSNumber>, TypeNode {
  @_i2.redeclare
  external TKind get kind;
  @_i2.redeclare
  external NodeFlags get flags;
  @_i2.redeclare
  external Node get parent;
  @_i2.redeclare
  external double get pos;
  @_i2.redeclare
  external double get end;
}
extension type AnonymousUnion_3637968._(SyntaxKind _) implements SyntaxKind {
  SyntaxKind get asSyntaxKind => _;
}
extension type ModifierFlags._(_i1.JSNumber _) implements _i1.JSNumber {
  static final ModifierFlags None = ModifierFlags._(0.toJS);

  static final ModifierFlags Public = ModifierFlags._(1.toJS);

  static final ModifierFlags Private = ModifierFlags._(2.toJS);

  static final ModifierFlags Protected = ModifierFlags._(4.toJS);

  static final ModifierFlags Readonly = ModifierFlags._(8.toJS);

  static final ModifierFlags Override = ModifierFlags._(16.toJS);

  static final ModifierFlags Export = ModifierFlags._(32.toJS);

  static final ModifierFlags Abstract = ModifierFlags._(64.toJS);

  static final ModifierFlags Ambient = ModifierFlags._(128.toJS);

  static final ModifierFlags Static = ModifierFlags._(256.toJS);

  static final ModifierFlags Accessor = ModifierFlags._(512.toJS);

  static final ModifierFlags Async = ModifierFlags._(1024.toJS);

  static final ModifierFlags Default = ModifierFlags._(2048.toJS);

  static final ModifierFlags Const = ModifierFlags._(4096.toJS);

  static final ModifierFlags In = ModifierFlags._(8192.toJS);

  static final ModifierFlags Out = ModifierFlags._(16384.toJS);

  static final ModifierFlags Decorator = ModifierFlags._(32768.toJS);

  static final ModifierFlags Deprecated = ModifierFlags._(65536.toJS);

  static final ModifierFlags HasComputedJSDocModifiers = ModifierFlags._(
    268435456.toJS,
  );

  static final ModifierFlags HasComputedFlags = ModifierFlags._(536870912.toJS);

  static final ModifierFlags AccessibilityModifier = ModifierFlags._(7.toJS);

  static final ModifierFlags ParameterPropertyModifier = ModifierFlags._(
    31.toJS,
  );

  static final ModifierFlags NonPublicAccessibilityModifier = ModifierFlags._(
    6.toJS,
  );

  static final ModifierFlags TypeScriptModifier = ModifierFlags._(28895.toJS);

  static final ModifierFlags ExportDefault = ModifierFlags._(2080.toJS);

  static final ModifierFlags All = ModifierFlags._(131071.toJS);

  static final ModifierFlags Modifier = ModifierFlags._(98303.toJS);
}
extension type AnonymousUnion_1309070._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  Identifier get asIdentifier => (_ as Identifier);
}
extension type AnonymousUnion_3855707._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  BindingName get asBindingName => (_ as AnonymousUnion_1836642);
}
extension type AnonymousUnion_1821232._(_i1.JSAny _) implements _i1.JSAny {
  PropertyName get asPropertyName => (_ as AnonymousUnion_5805531);

  String get asString => (_ as _i1.JSString).toDart;
}
extension type AnonymousUnion_2547692._(PunctuationToken<_i1.JSNumber> _)
    implements PunctuationToken<_i1.JSNumber> {
  QuestionToken get asQuestionToken => _;

  ExclamationToken get asExclamationToken => _;
}
extension type TemplateMiddle._(_i1.JSObject _)
    implements TemplateLiteralLikeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_3350278 get parent;
}
extension type TemplateSpan._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external TemplateExpression get parent;
  external Expression get expression;
  external AnonymousUnion_1273318 get literal;
}
extension type TemplateExpression._(_i1.JSObject _)
    implements PrimaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external TemplateHead get head;
  external NodeArray<TemplateSpan> get templateSpans;
}
extension type TemplateHead._(_i1.JSObject _)
    implements TemplateLiteralLikeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_2337610 get parent;
}
extension type TemplateLiteralTypeNode._(_i1.JSObject _) implements TypeNode {
  external SyntaxKind kind;

  external TemplateHead get head;
  external NodeArray<TemplateLiteralTypeSpan> get templateSpans;
}
extension type TemplateLiteralTypeSpan._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external TemplateLiteralTypeNode get parent;
  external String get type;
  external AnonymousUnion_1273318 get literal;
}
extension type AnonymousUnion_2337610._(Node _) implements Node {
  TemplateExpression get asTemplateExpression => (_ as TemplateExpression);

  TemplateLiteralTypeNode get asTemplateLiteralTypeNode =>
      (_ as TemplateLiteralTypeNode);
}
extension type AnonymousUnion_3350278._(Node _) implements Node {
  TemplateSpan get asTemplateSpan => (_ as TemplateSpan);

  TemplateLiteralTypeSpan get asTemplateLiteralTypeSpan =>
      (_ as TemplateLiteralTypeSpan);
}
extension type TemplateTail._(_i1.JSObject _)
    implements TemplateLiteralLikeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_3350278 get parent;
}
extension type AnonymousUnion_1273318._(TemplateLiteralLikeNode _)
    implements TemplateLiteralLikeNode {
  TemplateMiddle get asTemplateMiddle => (_ as TemplateMiddle);

  TemplateTail get asTemplateTail => (_ as TemplateTail);
}
typedef AssertsKeyword = KeywordToken<_i1.JSNumber>;
extension type ThisTypeNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type AnonymousUnion_1707187._(_i1.JSAny _) implements _i1.JSAny {
  Identifier get asIdentifier => (_ as Identifier);

  ThisTypeNode get asThisTypeNode => (_ as ThisTypeNode);

  String get asString => (_ as _i1.JSString).toDart;
}
extension type TypePredicateNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_3417277 get parent;
  external AssertsKeyword? get assertsModifier;
  external AnonymousUnion_3323271 get parameterName;
  external String? get type;
}
extension type AnonymousUnion_3417277._(_i1.JSObject _)
    implements _i1.JSObject {
  SignatureDeclaration get asSignatureDeclaration =>
      (_ as AnonymousUnion_2968490);

  JSDocTypeExpression get asJSDocTypeExpression => (_ as JSDocTypeExpression);
}
extension type AnonymousUnion_3323271._(Node _) implements Node {
  Identifier get asIdentifier => (_ as Identifier);

  ThisTypeNode get asThisTypeNode => (_ as ThisTypeNode);
}
extension type AnonymousUnion_3058613._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  EntityName get asEntityName => (_ as AnonymousUnion_4911331);
}
extension type TypeReferenceNode._(_i1.JSObject _)
    implements NodeWithTypeArguments {
  @_i2.redeclare
  external SyntaxKind get kind;
  external EntityName get typeName;
}
extension type TypeQueryNode._(_i1.JSObject _)
    implements NodeWithTypeArguments {
  @_i2.redeclare
  external SyntaxKind get kind;
  external EntityName get exprName;
}
extension type ArrayTypeNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  external TypeNode get elementType;
}
extension type AnonymousUnion_1127069._(TypeNode _) implements TypeNode {
  TypeNode get asTypeNode => _;

  NamedTupleMember get asNamedTupleMember => (_ as NamedTupleMember);
}
extension type TupleTypeNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<AnonymousUnion_1127069> get elements;
}
extension type OptionalTypeNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get type;
}
extension type RestTypeNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get type;
}
extension type UnionTypeNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<TypeNode> get types;
}
extension type IntersectionTypeNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<TypeNode> get types;
}
extension type ConditionalTypeNode._(_i1.JSObject _)
    implements TypeNode, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external TypeNode get checkType;
  external TypeNode get extendsType;
  external TypeNode get trueType;
  external TypeNode get falseType;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type ImportTypeNode._(_i1.JSObject _)
    implements NodeWithTypeArguments {
  @_i2.redeclare
  external SyntaxKind get kind;
  external bool get isTypeOf;
  external TypeNode get argument;
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external ImportTypeAssertionContainer? get assertions;
  external ImportAttributes? get attributes;
  external EntityName? get qualifier;
}
@Deprecated(
  'This declaration has been marked as deprecated in the original JS/TS code',
)
extension type ImportTypeAssertionContainer._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external ImportTypeNode get parent;
  @Deprecated(
    'This declaration has been marked as deprecated in the original JS/TS code',
  )
  external AssertClause get assertClause;
  external bool? get multiLine;
}
extension type ParenthesizedTypeNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get type;
}
extension type TypeOperatorNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i1.JS('operator')
  external AnonymousUnion_1288264 get operator$;
  external String get type;
}
extension type IndexedAccessTypeNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  external TypeNode get objectType;
  external TypeNode get indexType;
}
typedef PlusToken = PunctuationToken<_i1.JSNumber>;
typedef MinusToken = PunctuationToken<_i1.JSNumber>;
extension type AnonymousUnion_2546890._(Token<_i1.JSNumber> _)
    implements Token<_i1.JSNumber> {
  ReadonlyKeyword get asReadonlyKeyword =>
      ((_ as _i1.JSAny) as ReadonlyKeyword);

  PlusToken get asPlusToken => ((_ as _i1.JSAny) as PlusToken);

  MinusToken get asMinusToken => ((_ as _i1.JSAny) as MinusToken);
}
extension type AnonymousUnion_2460793._(PunctuationToken<_i1.JSNumber> _)
    implements PunctuationToken<_i1.JSNumber> {
  QuestionToken get asQuestionToken => _;

  PlusToken get asPlusToken => _;

  MinusToken get asMinusToken => _;
}
extension type MappedTypeNode._(_i1.JSObject _)
    implements TypeNode, Declaration, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external AnonymousUnion_2546890? get readonlyToken;
  external TypeParameterDeclaration get typeParameter;
  external TypeNode? get nameType;
  external AnonymousUnion_2460793? get questionToken;
  external String? get type;

  /// Used only to produce grammar errors
  external NodeArray<TypeElement>? get members;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type LiteralTypeNode._(_i1.JSObject _) implements TypeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  external AnonymousUnion_4128081 get literal;
}
extension type AnonymousUnion_4128081._(UpdateExpression _)
    implements UpdateExpression {
  NullLiteral get asNullLiteral => (_ as NullLiteral);

  BooleanLiteral get asBooleanLiteral => (_ as AnonymousUnion_2412593);

  LiteralExpression get asLiteralExpression => (_ as LiteralExpression);

  PrefixUnaryExpression get asPrefixUnaryExpression =>
      (_ as PrefixUnaryExpression);
}
extension type AnonymousUnion_2314758._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  MemberName get asMemberName => (_ as AnonymousUnion_1903918);
}
extension type PropertyAccessChain._(_i1.JSObject _)
    implements PropertyAccessExpression {
  @_i1.JS('_optionalChainBrand')
  external _i1.JSAny? $_optionalChainBrand;

  @_i2.redeclare
  external String get name;
}
extension type AnonymousUnion_1878536._(_i1.JSAny _) implements _i1.JSAny {
  num get asNum => (_ as _i1.JSNumber).toDartDouble;

  Expression get asExpression => (_ as Expression);
}
extension type ElementAccessChain._(_i1.JSObject _)
    implements ElementAccessExpression {
  @_i1.JS('_optionalChainBrand')
  external _i1.JSAny? $_optionalChainBrand;
}
extension type CallExpression._(_i1.JSObject _)
    implements LeftHandSideExpression, Declaration {
  @_i2.redeclare
  external SyntaxKind get kind;
  external LeftHandSideExpression get expression;
  external QuestionDotToken? get questionDotToken;
  external NodeArray<TypeNode>? get typeArguments;
  external NodeArray<Expression> get arguments;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type CallChain._(_i1.JSObject _) implements CallExpression {
  @_i1.JS('_optionalChainBrand')
  external _i1.JSAny? $_optionalChainBrand;
}
extension type NewExpression._(_i1.JSObject _)
    implements PrimaryExpression, Declaration {
  @_i2.redeclare
  external SyntaxKind get kind;
  external LeftHandSideExpression get expression;
  external NodeArray<TypeNode>? get typeArguments;
  external NodeArray<Expression>? get arguments;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
typedef TemplateLiteral = AnonymousUnion_6010259;
extension type AnonymousUnion_6010259._(PrimaryExpression _)
    implements PrimaryExpression {
  TemplateExpression get asTemplateExpression => (_ as TemplateExpression);

  NoSubstitutionTemplateLiteral get asNoSubstitutionTemplateLiteral =>
      (_ as NoSubstitutionTemplateLiteral);
}
extension type TaggedTemplateExpression._(_i1.JSObject _)
    implements MemberExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external LeftHandSideExpression get tag;
  external NodeArray<TypeNode>? get typeArguments;
  external TemplateLiteral get template;
}
extension type TypeAssertion._(_i1.JSObject _) implements UnaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get type;
  external UnaryExpression get expression;
}
extension type DeleteExpression._(_i1.JSObject _) implements UnaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external UnaryExpression get expression;
}
extension type TypeOfExpression._(_i1.JSObject _) implements UnaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external UnaryExpression get expression;
}
extension type VoidExpression._(_i1.JSObject _) implements UnaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external UnaryExpression get expression;
}
extension type AwaitExpression._(_i1.JSObject _) implements UnaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external UnaryExpression get expression;
}
typedef PostfixUnaryOperator = AnonymousUnion_2480212;
extension type PostfixUnaryExpression._(_i1.JSObject _)
    implements UpdateExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external LeftHandSideExpression get operand;
  @_i1.JS('operator')
  external PostfixUnaryOperator get operator$;
}
typedef BinaryOperator = AnonymousUnion_1634575;
extension type AnonymousUnion_2791230._(_i1.JSAny _) implements _i1.JSAny {
  BinaryOperator get asBinaryOperator => (_ as AnonymousUnion_1634575);

  BinaryOperatorToken get asBinaryOperatorToken => (_ as BinaryOperatorToken);
}
typedef ColonToken = PunctuationToken<_i1.JSNumber>;
extension type ConditionalExpression._(_i1.JSObject _) implements Expression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get condition;
  external QuestionToken get questionToken;
  external Expression get whenTrue;
  external ColonToken get colonToken;
  external Expression get whenFalse;
}
extension type YieldExpression._(_i1.JSObject _) implements Expression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external AsteriskToken? get asteriskToken;
  external Expression? get expression;
}
extension type SpreadElement._(_i1.JSObject _) implements Expression {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_1371643 get parent;
  external Expression get expression;
}
extension type AnonymousUnion_1371643._(LeftHandSideExpression _)
    implements LeftHandSideExpression {
  ArrayLiteralExpression get asArrayLiteralExpression =>
      (_ as ArrayLiteralExpression);

  CallExpression get asCallExpression => (_ as CallExpression);

  NewExpression get asNewExpression => (_ as NewExpression);
}
extension type AsExpression._(_i1.JSObject _) implements Expression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get expression;
  external String get type;
}
extension type NonNullExpression._(_i1.JSObject _)
    implements LeftHandSideExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get expression;
}
extension type NonNullChain._(_i1.JSObject _) implements NonNullExpression {
  @_i1.JS('_optionalChainBrand')
  external _i1.JSAny? $_optionalChainBrand;
}
extension type MetaProperty._(_i1.JSObject _)
    implements PrimaryExpression, FlowContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  external AnonymousUnion_2480212 get keywordToken;
  external String get name;
  external NodeFlags get flags;
  external Node get parent;
  external double get pos;
  external double get end;
}
extension type SatisfiesExpression._(_i1.JSObject _) implements Expression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get expression;
  external String get type;
}
extension type AnonymousUnion_5047086._(_i1.JSObject _)
    implements _i1.JSObject {
  VariableDeclarationList get asVariableDeclarationList =>
      (_ as VariableDeclarationList);

  _i1.JSArray<VariableDeclaration> get asJSArrayOfVariableDeclaration =>
      (_ as _i1.JSArray<VariableDeclaration>);
}
@Deprecated(
  'This declaration has been marked as deprecated in the original JS/TS code',
)
extension type AssertEntry._(_i1.JSObject _) implements ImportAttribute {}
@Deprecated(
  'This declaration has been marked as deprecated in the original JS/TS code',
)
typedef AssertionKey = ImportAttributeName;
extension type AnonymousUnion_6714933._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  ModuleExportName get asModuleExportName => (_ as AnonymousUnion_2208724);
}
extension type JSDocAllType._(_i1.JSObject _) implements JSDocType {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocUnknownType._(_i1.JSObject _) implements JSDocType {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocNonNullableType._(_i1.JSObject _) implements JSDocType {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get type;
  external bool get postfix;
}
extension type JSDocNullableType._(_i1.JSObject _) implements JSDocType {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get type;
  external bool get postfix;
}
extension type JSDocOptionalType._(_i1.JSObject _) implements JSDocType {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get type;
}
extension type JSDocVariadicType._(_i1.JSObject _) implements JSDocType {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get type;
}
extension type JSDocNamepathType._(_i1.JSObject _) implements JSDocType {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get type;
}
extension type JSDocNameReference._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String get name;
}
extension type AnonymousUnion_3963972._(TypeNode _) implements TypeNode {
  JSDocTypeExpression get asJSDocTypeExpression => (_ as JSDocTypeExpression);

  JSDocTypeLiteral get asJSDocTypeLiteral => (_ as JSDocTypeLiteral);
}
extension type JSDocTypedefTag._(_i1.JSObject _)
    implements JSDocTag, NamedDeclaration, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external JSDoc get parent;
  external AnonymousUnion_2853000? get fullName;
  @_i2.redeclare
  external String? get name;
  external AnonymousUnion_3963972? get typeExpression;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type JSDocPropertyTag._(_i1.JSObject _)
    implements JSDocPropertyLikeTag {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocTypeTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
  external JSDocTypeExpression get typeExpression;
}
extension type JSDocSeeTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
  external String? get name;
}
extension type JSDocThisTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
  external JSDocTypeExpression get typeExpression;
}
extension type JSDocEnumTag._(_i1.JSObject _)
    implements JSDocTag, Declaration, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external JSDoc get parent;
  external JSDocTypeExpression get typeExpression;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type JSDocCallbackTag._(_i1.JSObject _)
    implements JSDocTag, NamedDeclaration, LocalsContainer {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external JSDoc get parent;
  external AnonymousUnion_2853000? get fullName;
  @_i2.redeclare
  external String? get name;
  external JSDocSignature get typeExpression;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
extension type JSDocOverloadTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external JSDoc get parent;
  external JSDocSignature get typeExpression;
}

/// Note that `@extends` is a synonym of `@augments`.
/// Both tags are represented by this interface.
extension type JSDocAugmentsTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i1.JS('class')
  external AnonymousIntersection_8319189 get class$;
}
extension type AnonymousType_1225480._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1225480({AnonymousUnion_2262749 expression});

  external AnonymousUnion_2262749 get expression;
}
extension type AnonymousIntersection_8319189._(_i1.JSObject _)
    implements ExpressionWithTypeArguments, AnonymousType_1225480 {
  external LeftHandSideExpression get expression;
  ExpressionWithTypeArguments get asExpressionWithTypeArguments =>
      (_ as ExpressionWithTypeArguments);

  AnonymousType_1225480 get asAnonymousType_1225480 =>
      (_ as AnonymousType_1225480);
}
extension type JSDocImplementsTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i1.JS('class')
  external AnonymousIntersection_8319189 get class$;
}
extension type JSDocAuthorTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocClassTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocPublicTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocPrivateTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocProtectedTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocReadonlyTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocUnknownTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocDeprecatedTag._(_i1.JSObject _) implements JSDocTag {
  external SyntaxKind kind;
}
extension type JSDocOverrideTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type JSDocThrowsTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
  external JSDocTypeExpression? get typeExpression;
}
extension type JSDocSatisfiesTag._(_i1.JSObject _) implements JSDocTag {
  @_i2.redeclare
  external SyntaxKind get kind;
  external JSDocTypeExpression get typeExpression;
}
extension type JsxOpeningElement._(_i1.JSObject _) implements Expression {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external JsxElement get parent;
  external JsxTagNameExpression get tagName;
  external NodeArray<TypeNode>? get typeArguments;
  external JsxAttributes get attributes;
}
extension type JsxElement._(_i1.JSObject _) implements PrimaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external JsxOpeningElement get openingElement;
  external NodeArray<AnonymousUnion_3764686> get children;
  external JsxClosingElement get closingElement;
}
extension type JsxText._(_i1.JSObject _) implements LiteralLikeNode {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_1985075 get parent;
  external bool get containsOnlyTriviaWhiteSpaces;
}
extension type JsxFragment._(_i1.JSObject _) implements PrimaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external JsxOpeningFragment get openingFragment;
  external NodeArray<AnonymousUnion_3764686> get children;
  external JsxClosingFragment get closingFragment;
}
extension type JsxOpeningFragment._(_i1.JSObject _) implements Expression {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external JsxFragment get parent;
}
extension type JsxClosingFragment._(_i1.JSObject _) implements Expression {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external JsxFragment get parent;
}
extension type AnonymousUnion_1985075._(PrimaryExpression _)
    implements PrimaryExpression {
  JsxElement get asJsxElement => (_ as JsxElement);

  JsxFragment get asJsxFragment => (_ as JsxFragment);
}
extension type JsxExpression._(_i1.JSObject _) implements Expression {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external AnonymousUnion_9069557 get parent;
  external Token<_i1.JSNumber>? get dotDotDotToken;
  external Expression? get expression;
}
typedef JsxAttributeLike = AnonymousUnion_1036421;
extension type JsxAttribute._(_i1.JSObject _) implements Declaration {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external JsxAttributes get parent;
  external String get name;
  external JsxAttributeValue? get initializer;
}
extension type JsxAttributes._(_i1.JSObject _)
    implements PrimaryExpression, Declaration {
  external NodeArray<AnonymousUnion_1036421> get properties;
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external JsxOpeningLikeElement get parent;
  external NodeFlags get flags;
  external double get pos;
  external double get end;
}
typedef JsxOpeningLikeElement = AnonymousUnion_3524408;
extension type JsxSelfClosingElement._(_i1.JSObject _)
    implements PrimaryExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external JsxTagNameExpression get tagName;
  external NodeArray<TypeNode>? get typeArguments;
  external JsxAttributes get attributes;
}
typedef JsxTagNameExpression = AnonymousUnion_2136225;
extension type JsxTagNamePropertyAccess._(_i1.JSObject _)
    implements PropertyAccessExpression {
  @_i2.redeclare
  external AnonymousUnion_1630334 get expression;
}
extension type AnonymousUnion_1630334._(FlowContainer _)
    implements FlowContainer {
  Identifier get asIdentifier => (_ as Identifier);

  ThisExpression get asThisExpression => (_ as ThisExpression);

  JsxTagNamePropertyAccess get asJsxTagNamePropertyAccess =>
      (_ as JsxTagNamePropertyAccess);
}
extension type AnonymousUnion_2136225._(Node _) implements Node {
  Identifier get asIdentifier => (_ as Identifier);

  ThisExpression get asThisExpression => (_ as ThisExpression);

  JsxTagNamePropertyAccess get asJsxTagNamePropertyAccess =>
      (_ as JsxTagNamePropertyAccess);

  JsxNamespacedName get asJsxNamespacedName => (_ as JsxNamespacedName);
}
extension type AnonymousUnion_3524408._(Expression _) implements Expression {
  JsxSelfClosingElement get asJsxSelfClosingElement =>
      (_ as JsxSelfClosingElement);

  JsxOpeningElement get asJsxOpeningElement => (_ as JsxOpeningElement);
}
typedef JsxAttributeValue = AnonymousUnion_3067015;
extension type AnonymousUnion_3067015._(Expression _) implements Expression {
  StringLiteral get asStringLiteral => (_ as StringLiteral);

  JsxExpression get asJsxExpression => (_ as JsxExpression);

  JsxElement get asJsxElement => (_ as JsxElement);

  JsxSelfClosingElement get asJsxSelfClosingElement =>
      (_ as JsxSelfClosingElement);

  JsxFragment get asJsxFragment => (_ as JsxFragment);
}
extension type JsxSpreadAttribute._(_i1.JSObject _)
    implements ObjectLiteralElement {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external JsxAttributes get parent;
  external Expression get expression;
}
extension type AnonymousUnion_1036421._(Declaration _) implements Declaration {
  JsxAttribute get asJsxAttribute => (_ as JsxAttribute);

  JsxSpreadAttribute get asJsxSpreadAttribute => (_ as JsxSpreadAttribute);
}
extension type AnonymousUnion_9069557._(Node _) implements Node {
  JsxElement get asJsxElement => (_ as JsxElement);

  JsxFragment get asJsxFragment => (_ as JsxFragment);

  JsxAttributeLike get asJsxAttributeLike => (_ as AnonymousUnion_1036421);
}
extension type AnonymousUnion_3764686._(Node _) implements Node {
  JsxText get asJsxText => (_ as JsxText);

  JsxExpression get asJsxExpression => (_ as JsxExpression);

  JsxElement get asJsxElement => (_ as JsxElement);

  JsxSelfClosingElement get asJsxSelfClosingElement =>
      (_ as JsxSelfClosingElement);

  JsxFragment get asJsxFragment => (_ as JsxFragment);
}
extension type JsxClosingElement._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  @_i2.redeclare
  external JsxElement get parent;
  external JsxTagNameExpression get tagName;
}
extension type AnonymousUnion_9191303._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  BindingName get asBindingName => (_ as AnonymousUnion_1836642);

  VariableDeclaration get asVariableDeclaration => (_ as VariableDeclaration);
}
extension type NotEmittedStatement._(_i1.JSObject _) implements Statement {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type NotEmittedTypeElement._(_i1.JSObject _) implements TypeElement {
  @_i2.redeclare
  external SyntaxKind get kind;
}
extension type PartiallyEmittedExpression._(_i1.JSObject _)
    implements LeftHandSideExpression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external Expression get expression;
}

/// A list of comma-separated expressions. This node is only created by
/// transformations.
extension type CommaListExpression._(_i1.JSObject _) implements Expression {
  @_i2.redeclare
  external SyntaxKind get kind;
  external NodeArray<Expression> get elements;
}
extension type Bundle._(_i1.JSObject _) implements Node {
  @_i2.redeclare
  external SyntaxKind get kind;
  external _i1.JSArray<TSSourceFile> get sourceFiles;
}
extension type AnonymousUnion_3480921._(PrimaryExpression _)
    implements PrimaryExpression {
  ObjectLiteralExpression get asObjectLiteralExpression =>
      (_ as ObjectLiteralExpression);

  ArrayLiteralExpression get asArrayLiteralExpression =>
      (_ as ArrayLiteralExpression);
}
typedef DestructuringAssignment = AnonymousUnion_3740647;
extension type ObjectDestructuringAssignment._(_i1.JSObject _)
    implements AssignmentExpression<EqualsToken> {
  @_i2.redeclare
  external ObjectLiteralExpression get left;
}
extension type AssignmentExpression<TOperator extends _i1.JSObject>._(
  _i1.JSObject _
)
    implements BinaryExpression {
  @_i2.redeclare
  external LeftHandSideExpression get left;
  @_i2.redeclare
  external TOperator get operatorToken;
}
extension type ArrayDestructuringAssignment._(_i1.JSObject _)
    implements AssignmentExpression<EqualsToken> {
  @_i2.redeclare
  external ArrayLiteralExpression get left;
}
extension type AnonymousUnion_3740647._(AssignmentExpression<EqualsToken> _)
    implements AssignmentExpression<EqualsToken> {
  ObjectDestructuringAssignment get asObjectDestructuringAssignment =>
      ((_ as _i1.JSAny) as ObjectDestructuringAssignment);

  ArrayDestructuringAssignment get asArrayDestructuringAssignment =>
      ((_ as _i1.JSAny) as ArrayDestructuringAssignment);
}
typedef ImmediatelyInvokedArrowFunction = AnonymousIntersection_4187166;
extension type AnonymousType_1872971._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1872971({AnonymousIntersection_3713114 expression});

  external AnonymousIntersection_3713114 get expression;
}
extension type AnonymousType_3321085._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3321085({ArrowFunction expression});

  external ArrowFunction get expression;
}
extension type AnonymousIntersection_3713114._(_i1.JSObject _)
    implements ParenthesizedExpression, AnonymousType_3321085 {
  external Expression get expression;
  ParenthesizedExpression get asParenthesizedExpression =>
      (_ as ParenthesizedExpression);

  AnonymousType_3321085 get asAnonymousType_3321085 =>
      (_ as AnonymousType_3321085);
}
extension type AnonymousIntersection_4187166._(_i1.JSObject _)
    implements CallExpression, AnonymousType_1872971 {
  external LeftHandSideExpression get expression;
  CallExpression get asCallExpression => (_ as CallExpression);

  AnonymousType_1872971 get asAnonymousType_1872971 =>
      (_ as AnonymousType_1872971);
}
extension type OuterExpressionKinds._(_i1.JSNumber _) implements _i1.JSNumber {
  static final OuterExpressionKinds Parentheses = OuterExpressionKinds._(
    1.toJS,
  );

  static final OuterExpressionKinds TypeAssertions = OuterExpressionKinds._(
    2.toJS,
  );

  static final OuterExpressionKinds NonNullAssertions = OuterExpressionKinds._(
    4.toJS,
  );

  static final OuterExpressionKinds PartiallyEmittedExpressions =
      OuterExpressionKinds._(8.toJS);

  static final OuterExpressionKinds ExpressionsWithTypeArguments =
      OuterExpressionKinds._(16.toJS);

  static final OuterExpressionKinds Satisfies = OuterExpressionKinds._(32.toJS);

  static final OuterExpressionKinds Assertions = OuterExpressionKinds._(
    38.toJS,
  );

  static final OuterExpressionKinds All = OuterExpressionKinds._(63.toJS);
}
extension type AnonymousUnion_1794579._(_i1.JSAny _) implements _i1.JSAny {
  _i1.JSArray<AnonymousUnion_8635666> get asJSArrayOfAnonymousUnion_8635666 =>
      (_ as _i1.JSArray<AnonymousUnion_8635666>);

  ModifierFlags get asModifierFlags => ModifierFlags._((_ as _i1.JSNumber));
}
extension type AnonymousUnion_7178516._(JSDocContainer _)
    implements JSDocContainer {
  TypeParameterDeclaration get asTypeParameterDeclaration =>
      (_ as TypeParameterDeclaration);

  ParameterDeclaration get asParameterDeclaration =>
      (_ as ParameterDeclaration);

  ConstructorTypeNode get asConstructorTypeNode => (_ as ConstructorTypeNode);

  PropertySignature get asPropertySignature => (_ as PropertySignature);

  PropertyDeclaration get asPropertyDeclaration => (_ as PropertyDeclaration);

  MethodSignature get asMethodSignature => (_ as MethodSignature);

  MethodDeclaration get asMethodDeclaration => (_ as MethodDeclaration);

  ConstructorDeclaration get asConstructorDeclaration =>
      (_ as ConstructorDeclaration);

  GetAccessorDeclaration get asGetAccessorDeclaration =>
      (_ as GetAccessorDeclaration);

  SetAccessorDeclaration get asSetAccessorDeclaration =>
      (_ as SetAccessorDeclaration);

  IndexSignatureDeclaration get asIndexSignatureDeclaration =>
      (_ as IndexSignatureDeclaration);

  FunctionExpression get asFunctionExpression => (_ as FunctionExpression);

  ArrowFunction get asArrowFunction => (_ as ArrowFunction);

  ClassExpression get asClassExpression => (_ as ClassExpression);

  VariableStatement get asVariableStatement => (_ as VariableStatement);

  FunctionDeclaration get asFunctionDeclaration => (_ as FunctionDeclaration);

  ClassDeclaration get asClassDeclaration => (_ as ClassDeclaration);

  InterfaceDeclaration get asInterfaceDeclaration =>
      (_ as InterfaceDeclaration);

  TypeAliasDeclaration get asTypeAliasDeclaration =>
      (_ as TypeAliasDeclaration);

  EnumDeclaration get asEnumDeclaration => (_ as EnumDeclaration);

  ModuleDeclaration get asModuleDeclaration => (_ as ModuleDeclaration);

  ImportEqualsDeclaration get asImportEqualsDeclaration =>
      (_ as ImportEqualsDeclaration);

  ImportDeclaration get asImportDeclaration => (_ as ImportDeclaration);

  ExportAssignment get asExportAssignment => (_ as ExportAssignment);

  ExportDeclaration get asExportDeclaration => (_ as ExportDeclaration);
}
extension type AnonymousUnion_5366558._(_i1.JSObject _)
    implements _i1.JSObject {
  ParameterDeclaration get asParameterDeclaration =>
      (_ as ParameterDeclaration);

  PropertyDeclaration get asPropertyDeclaration => (_ as PropertyDeclaration);

  MethodDeclaration get asMethodDeclaration => (_ as MethodDeclaration);

  GetAccessorDeclaration get asGetAccessorDeclaration =>
      (_ as GetAccessorDeclaration);

  SetAccessorDeclaration get asSetAccessorDeclaration =>
      (_ as SetAccessorDeclaration);

  ClassExpression get asClassExpression => (_ as ClassExpression);

  ClassDeclaration get asClassDeclaration => (_ as ClassDeclaration);
}
extension type AnonymousIntersection_3629097._(_i1.JSObject _)
    implements AnonymousUnion_5366558 {
  external ParameterDeclaration get asParameterDeclaration;
  external PropertyDeclaration get asPropertyDeclaration;
  external MethodDeclaration get asMethodDeclaration;
  external GetAccessorDeclaration get asGetAccessorDeclaration;
  external SetAccessorDeclaration get asSetAccessorDeclaration;
  external ClassExpression get asClassExpression;
  external ClassDeclaration get asClassDeclaration;
  external SyntaxKind get kind;
  external AnonymousUnion_2810713 get parent;
  external NodeArray<AnonymousUnion_8635666>? get modifiers;
  external String get name;
  @_i1.JS('_declarationBrand')
  external _i1.JSAny? get $_declarationBrand;
  @_i1.JS('_declarationBrand')
  external set $_declarationBrand(_i1.JSAny? value);
  external NodeFlags get flags;
  external double get pos;
  external double get end;
  @_i1.JS('_jsdocContainerBrand')
  external _i1.JSAny? get $_jsdocContainerBrand;
  @_i1.JS('_jsdocContainerBrand')
  external set $_jsdocContainerBrand(_i1.JSAny? value);
  external DotDotDotToken? get dotDotDotToken;
  external QuestionToken? get questionToken;
  external String? get type;
  external Expression? get initializer;
  external NodeArray<TypeParameterDeclaration>? get typeParameters;
  external NodeArray<ParameterDeclaration> get parameters;
  @_i1.JS('_localsContainerBrand')
  external _i1.JSAny? get $_localsContainerBrand;
  @_i1.JS('_localsContainerBrand')
  external set $_localsContainerBrand(_i1.JSAny? value);
  @_i1.JS('_typeElementBrand')
  external _i1.JSAny? get $_typeElementBrand;
  @_i1.JS('_typeElementBrand')
  external set $_typeElementBrand(_i1.JSAny? value);
  external ExclamationToken? get exclamationToken;
  @_i1.JS('_classElementBrand')
  external _i1.JSAny? get $_classElementBrand;
  @_i1.JS('_classElementBrand')
  external set $_classElementBrand(_i1.JSAny? value);
  external FunctionBody? get body;
  @_i1.JS('_functionLikeDeclarationBrand')
  external _i1.JSAny? get $_functionLikeDeclarationBrand;
  @_i1.JS('_functionLikeDeclarationBrand')
  external set $_functionLikeDeclarationBrand(_i1.JSAny? value);
  external AsteriskToken? get asteriskToken;
  @_i1.JS('_objectLiteralBrand')
  external _i1.JSAny? get $_objectLiteralBrand;
  @_i1.JS('_objectLiteralBrand')
  external set $_objectLiteralBrand(_i1.JSAny? value);
  @_i1.JS('_flowContainerBrand')
  external _i1.JSAny? get $_flowContainerBrand;
  @_i1.JS('_flowContainerBrand')
  external set $_flowContainerBrand(_i1.JSAny? value);
  @_i1.JS('_primaryExpressionBrand')
  external _i1.JSAny? get $_primaryExpressionBrand;
  @_i1.JS('_primaryExpressionBrand')
  external set $_primaryExpressionBrand(_i1.JSAny? value);
  @_i1.JS('_memberExpressionBrand')
  external _i1.JSAny? get $_memberExpressionBrand;
  @_i1.JS('_memberExpressionBrand')
  external set $_memberExpressionBrand(_i1.JSAny? value);
  @_i1.JS('_leftHandSideExpressionBrand')
  external _i1.JSAny? get $_leftHandSideExpressionBrand;
  @_i1.JS('_leftHandSideExpressionBrand')
  external set $_leftHandSideExpressionBrand(_i1.JSAny? value);
  @_i1.JS('_updateExpressionBrand')
  external _i1.JSAny? get $_updateExpressionBrand;
  @_i1.JS('_updateExpressionBrand')
  external set $_updateExpressionBrand(_i1.JSAny? value);
  @_i1.JS('_unaryExpressionBrand')
  external _i1.JSAny? get $_unaryExpressionBrand;
  @_i1.JS('_unaryExpressionBrand')
  external set $_unaryExpressionBrand(_i1.JSAny? value);
  @_i1.JS('_expressionBrand')
  external _i1.JSAny? get $_expressionBrand;
  @_i1.JS('_expressionBrand')
  external set $_expressionBrand(_i1.JSAny? value);
  external NodeArray<HeritageClause>? get heritageClauses;
  external NodeArray<ClassElement> get members;
  @_i1.JS('_statementBrand')
  external _i1.JSAny? get $_statementBrand;
  @_i1.JS('_statementBrand')
  external set $_statementBrand(_i1.JSAny? value);
  AnonymousUnion_7178516 get asAnonymousUnion_7178516 =>
      (_ as AnonymousUnion_7178516);

  AnonymousUnion_5366558 get asAnonymousUnion_5366558 =>
      (_ as AnonymousUnion_5366558);
}
extension type AnonymousUnion_2040603._(_i1.JSObject _)
    implements _i1.JSObject {
  AnonymousUnion_3939723 get asAnonymousUnion_3939723 =>
      (_ as AnonymousUnion_3939723);

  MethodDeclaration get asMethodDeclaration => (_ as MethodDeclaration);

  MethodSignature get asMethodSignature => (_ as MethodSignature);

  PropertyDeclaration get asPropertyDeclaration => (_ as PropertyDeclaration);

  PropertySignature get asPropertySignature => (_ as PropertySignature);

  PropertyAssignment get asPropertyAssignment => (_ as PropertyAssignment);
}

/// A function that transforms a node.
typedef Transformer<T extends _i1.JSObject> = _AnonymousFunction_3561750<T>;
extension type _AnonymousFunction_3561750<T extends _i1.JSAny?>._(
  _i1.JSFunction _
)
    implements _i1.JSFunction {
  external T call(_i1.JSAny node);
}
typedef CustomTransformerFactory = _AnonymousFunction_2333659;
extension type _AnonymousFunction_2333659._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external CustomTransformer call(TransformationContext context);
}
extension type CustomTransformer._(_i1.JSObject _) implements _i1.JSObject {
  external TSSourceFile transformSourceFile(TSSourceFile node);
  external Bundle transformBundle(Bundle node);
}
extension type AnonymousUnion_2268840._(_i1.JSFunction _)
    implements _i1.JSFunction {
  TransformerFactory<TSSourceFile> get asTransformerFactoryOfTSSourceFile =>
      (_ as TransformerFactory<TSSourceFile>);

  CustomTransformerFactory get asCustomTransformerFactory =>
      (_ as CustomTransformerFactory);
}
extension type AnonymousUnion_1267733._(Node _) implements Node {
  Bundle get asBundle => (_ as Bundle);

  TSSourceFile get asTSSourceFile => (_ as TSSourceFile);
}
extension type AnonymousUnion_4000137._(_i1.JSFunction _)
    implements _i1.JSFunction {
  TransformerFactory<AnonymousUnion_1267733>
  get asTransformerFactoryOfAnonymousUnion_1267733 =>
      (_ as TransformerFactory<AnonymousUnion_1267733>);

  CustomTransformerFactory get asCustomTransformerFactory =>
      (_ as CustomTransformerFactory);
}
extension type EmitResult._(_i1.JSObject _) implements _i1.JSObject {
  external bool emitSkipped;

  /// Contains declaration emit diagnostics
  external _i1.JSArray<Diagnostic> diagnostics;

  external _i1.JSArray<_i1.JSString?>? emittedFiles;
}
extension type DiagnosticWithLocation._(_i1.JSObject _) implements Diagnostic {
  external TSSourceFile file;

  external double start;

  external double length;
}
extension type TypeChecker._(_i1.JSObject _) implements _i1.JSObject {
  external _AnonymousFunction_1053202 getIndexInfosOfIndexSymbol;

  external Type getTypeOfSymbolAtLocation(Symbol symbol, Node node);
  external Type getTypeOfSymbol(Symbol symbol);
  external Type getDeclaredTypeOfSymbol(Symbol symbol);
  external _i1.JSArray<Symbol> getPropertiesOfType(Type type);
  external Symbol? getPropertyOfType(Type type, String propertyName);
  external Symbol? getPrivateIdentifierPropertyOfType(
    Type leftType,
    String name,
    Node location,
  );
  external IndexInfo? getIndexInfoOfType(Type type, IndexKind kind);
  external _i1.JSArray<IndexInfo> getIndexInfosOfType(Type type);
  external _i1.JSArray<Signature> getSignaturesOfType(
    Type type,
    SignatureKind kind,
  );
  external Type? getIndexTypeOfType(Type type, IndexKind kind);
  external _i1.JSArray<AnonymousUnion_3841478> getBaseTypes(InterfaceType type);
  external Type getBaseTypeOfLiteralType(Type type);
  external Type getWidenedType(Type type);

  /// Gets the "awaited type" of a type.
  ///
  /// If an expression has a Promise-like type, the "awaited type" of the
  /// expression is
  /// derived from the type of the first argument of the fulfillment callback
  /// for that
  /// Promise's `then` method. If the "awaited type" is itself a Promise-like,
  /// it is
  /// recursively unwrapped in the same manner until a non-promise type is
  /// found.
  ///
  /// If an expression does not have a Promise-like type, its "awaited type" is
  /// the type
  /// of the expression.
  ///
  /// If the resulting "awaited type" is a generic object type, then it is
  /// wrapped in
  /// an `Awaited<T>`.
  ///
  /// In the event the "awaited type" circularly references itself, or is a
  /// non-Promise
  /// object-type with a callable `then()` method, an "awaited type" cannot be
  /// determined
  /// and the value `undefined` will be returned.
  ///
  /// This is used to reflect the runtime behavior of the `await` keyword.
  external Type? getAwaitedType(Type type);
  external Type getReturnTypeOfSignature(Signature signature);
  external Type getNullableType(Type type, TypeFlags flags);
  external Type getNonNullableType(Type type);
  external _i1.JSArray<Type> getTypeArguments(TypeReference type);

  /// Note that the resulting nodes cannot be checked.
  external TypeNode? typeToTypeNode(
    Type type,
    Node? enclosingDeclaration,
    NodeBuilderFlags? flags,
  );

  /// Note that the resulting nodes cannot be checked.
  external AnonymousIntersection_1932384? signatureToSignatureDeclaration(
    Signature signature,
    SyntaxKind kind,
    Node? enclosingDeclaration,
    NodeBuilderFlags? flags,
  );

  /// Note that the resulting nodes cannot be checked.
  external IndexSignatureDeclaration? indexInfoToIndexSignatureDeclaration(
    IndexInfo indexInfo,
    Node? enclosingDeclaration,
    NodeBuilderFlags? flags,
  );

  /// Note that the resulting nodes cannot be checked.
  external EntityName? symbolToEntityName(
    Symbol symbol,
    SymbolFlags meaning,
    Node? enclosingDeclaration,
    NodeBuilderFlags? flags,
  );

  /// Note that the resulting nodes cannot be checked.
  external Expression? symbolToExpression(
    Symbol symbol,
    SymbolFlags meaning,
    Node? enclosingDeclaration,
    NodeBuilderFlags? flags,
  );

  /// Note that the resulting nodes cannot be checked.
  external NodeArray<TypeParameterDeclaration>?
  symbolToTypeParameterDeclarations(
    Symbol symbol,
    Node? enclosingDeclaration,
    NodeBuilderFlags? flags,
  );

  /// Note that the resulting nodes cannot be checked.
  external ParameterDeclaration? symbolToParameterDeclaration(
    Symbol symbol,
    Node? enclosingDeclaration,
    NodeBuilderFlags? flags,
  );

  /// Note that the resulting nodes cannot be checked.
  external TypeParameterDeclaration? typeParameterToDeclaration(
    TypeParameter parameter,
    Node? enclosingDeclaration,
    NodeBuilderFlags? flags,
  );
  external _i1.JSArray<Symbol> getSymbolsInScope(
    Node location,
    SymbolFlags meaning,
  );
  external Symbol? getSymbolAtLocation(Node node);
  external _i1.JSArray<Symbol> getSymbolsOfParameterPropertyDeclaration(
    ParameterDeclaration parameter,
    String parameterName,
  );

  /// The function returns the value (local variable) symbol of an identifier in
  /// the short-hand property assignment.
  /// This is necessary as an identifier in short-hand property assignment can
  /// contains two meaning: property name and property value.
  external Symbol? getShorthandAssignmentValueSymbol(Node? location);
  external Symbol? getExportSpecifierLocalTargetSymbol(
    AnonymousUnion_4038599 location,
  );

  /// If a symbol is a local symbol with an associated exported symbol, returns
  /// the exported symbol.
  /// Otherwise returns its input.
  /// For example, at `export type T = number;`:
  ///     - `getSymbolAtLocation` at the location `T` will return the exported symbol for `T`.
  ///     - But the result of `getSymbolsInScope` will contain the *local* symbol for `T`, not the exported symbol.
  ///     - Calling `getExportSymbolOfSymbol` on that local symbol will return the exported symbol.
  external Symbol getExportSymbolOfSymbol(Symbol symbol);
  external Symbol? getPropertySymbolOfDestructuringAssignment(
    Identifier location,
  );
  external Type getTypeOfAssignmentPattern(AssignmentPattern pattern);
  external Type getTypeAtLocation(Node node);
  external Type getTypeFromTypeNode(TypeNode node);
  external String signatureToString(
    Signature signature, [
    Node? enclosingDeclaration,
    TypeFormatFlags? flags,
    SignatureKind? kind,
  ]);
  external String typeToString(
    Type type, [
    Node? enclosingDeclaration,
    TypeFormatFlags? flags,
  ]);
  external String symbolToString(
    Symbol symbol, [
    Node? enclosingDeclaration,
    SymbolFlags? meaning,
    SymbolFormatFlags? flags,
  ]);
  external String typePredicateToString(
    TypePredicate predicate, [
    Node? enclosingDeclaration,
    TypeFormatFlags? flags,
  ]);
  external String getFullyQualifiedName(Symbol symbol);
  external _i1.JSArray<Symbol> getAugmentedPropertiesOfType(Type type);
  external _i1.JSArray<Symbol> getRootSymbols(Symbol symbol);
  external Symbol? getSymbolOfExpando(Node node, bool allowDeclaration);
  external Type? getContextualType(Expression node);

  /// returns unknownSignature in the case of an error.
  /// returns undefined if the node is not valid.
  /// - [argumentCount]:  Apparent number of arguments, passed in case of a
  ///   possibly incomplete call. This should come from an ArgumentListInfo. See
  ///   `signatureHelp.ts`.
  external Signature? getResolvedSignature(
    CallLikeExpression node, [
    _i1.JSArray<Signature?>? candidatesOutArray,
    num? argumentCount,
  ]);
  external Signature? getSignatureFromDeclaration(
    SignatureDeclaration declaration,
  );
  external bool? isImplementationOfOverload(SignatureDeclaration node);
  external bool isUndefinedSymbol(Symbol symbol);
  external bool isArgumentsSymbol(Symbol symbol);
  external bool isUnknownSymbol(Symbol symbol);
  external Symbol getMergedSymbol(Symbol symbol);
  external AnonymousUnion_2683278 getConstantValue(AnonymousUnion_3482579 node);
  external bool isValidPropertyAccess(
    AnonymousUnion_3916119 node,
    String propertyName,
  );

  /// Follow all aliases to get the original symbol.
  external Symbol getAliasedSymbol(Symbol symbol);

  /// Follow a *single* alias to get the immediately aliased symbol.
  external Symbol? getImmediateAliasedSymbol(Symbol symbol);
  external _i1.JSArray<Symbol> getExportsOfModule(Symbol moduleSymbol);
  external _i1.JSArray<Symbol> getJsxIntrinsicTagNamesAt(Node location);
  external bool isOptionalParameter(ParameterDeclaration node);
  external _i1.JSArray<Symbol> getAmbientModules();
  external Symbol? tryGetMemberInModuleExports(
    String memberName,
    Symbol moduleSymbol,
  );
  external Type getApparentType(Type type);
  external Type? getBaseConstraintOfType(Type type);
  external Type? getDefaultFromTypeParameter(Type type);

  /// Gets the intrinsic `any` type. There are multiple types that act as `any`
  /// used internally in the compiler,
  /// so the type returned by this function should not be used in equality
  /// checks to determine if another type
  /// is `any`. Instead, use `type.flags & TypeFlags.Any`.
  external Type getAnyType();
  external Type getStringType();
  external StringLiteralType getStringLiteralType(String value);
  external Type getNumberType();
  external NumberLiteralType getNumberLiteralType(num value);
  external Type getBigIntType();
  external BigIntLiteralType getBigIntLiteralType(PseudoBigInt value);
  external Type getBooleanType();
  external Type getUnknownType();
  external Type getFalseType();
  external Type getTrueType();
  external Type getVoidType();

  /// Gets the intrinsic `undefined` type. There are multiple types that act as
  /// `undefined` used internally in the compiler
  /// depending on compiler options, so the type returned by this function
  /// should not be used in equality checks to determine
  /// if another type is `undefined`. Instead, use `type.flags &
  /// TypeFlags.Undefined`.
  external Type getUndefinedType();

  /// Gets the intrinsic `null` type. There are multiple types that act as
  /// `null` used internally in the compiler,
  /// so the type returned by this function should not be used in equality
  /// checks to determine if another type
  /// is `null`. Instead, use `type.flags & TypeFlags.Null`.
  external Type getNullType();
  external Type getESSymbolType();

  /// Gets the intrinsic `never` type. There are multiple types that act as
  /// `never` used internally in the compiler,
  /// so the type returned by this function should not be used in equality
  /// checks to determine if another type
  /// is `never`. Instead, use `type.flags & TypeFlags.Never`.
  external Type getNeverType();

  /// Gets the intrinsic `object` type.
  external Type getNonPrimitiveType();

  /// Returns true if the "source" type is assignable to the "target" type.
  ///
  /// ```ts
  /// declare const abcLiteral: ts.Type; // Type of "abc"
  /// declare const stringType: ts.Type; // Type of string
  ///
  /// isTypeAssignableTo(abcLiteral, abcLiteral); // true; "abc" is assignable to "abc"
  /// isTypeAssignableTo(abcLiteral, stringType); // true; "abc" is assignable to string
  /// isTypeAssignableTo(stringType, abcLiteral); // false; string is not assignable to "abc"
  /// isTypeAssignableTo(stringType, stringType); // true; string is assignable to string
  /// ```
  external bool isTypeAssignableTo(Type source, Type target);

  /// True if this type is the `Array` or `ReadonlyArray` type from lib.d.ts.
  /// This function will _not_ return true if passed a type which
  /// extends `Array` (for example, the TypeScript AST's `NodeArray` type).
  external bool isArrayType(Type type);

  /// True if this type is a tuple type. This function will _not_ return true if
  /// passed a type which extends from a tuple.
  external bool isTupleType(Type type);

  /// True if this type is assignable to `ReadonlyArray<any>`.
  external bool isArrayLikeType(Type type);
  external Symbol? resolveName(
    String name,
    Node? location,
    SymbolFlags meaning,
    bool excludeGlobals,
  );
  external TypePredicate? getTypePredicateOfSignature(Signature signature);

  /// Depending on the operation performed, it may be appropriate to throw away
  /// the checker
  /// if the cancellation token is triggered. Typically, if it is used for error
  /// checking
  /// and the operation is cancelled, then it should be discarded, otherwise it
  /// is safe to keep.
  external T runWithCancellationToken<T extends _i1.JSAny?>(
    CancellationToken token,
    _AnonymousFunction_3695647<_i1.JSAny> cb,
  );
  external _i1.JSArray<Type>? getTypeArgumentsForResolvedSignature(
    Signature signature,
  );
}
extension type Symbol._(_i1.JSObject _) implements _i1.JSObject {
  external SymbolFlags flags;

  external __String escapedName;

  external _i1.JSArray<Declaration?>? declarations;

  external Declaration? valueDeclaration;

  external SymbolTable? members;

  external SymbolTable? exports;

  external SymbolTable? globalExports;
}
extension type SymbolFlags._(_i1.JSNumber _) implements _i1.JSNumber {
  static final SymbolFlags None = SymbolFlags._(0.toJS);

  static final SymbolFlags FunctionScopedVariable = SymbolFlags._(1.toJS);

  static final SymbolFlags BlockScopedVariable = SymbolFlags._(2.toJS);

  static final SymbolFlags Property = SymbolFlags._(4.toJS);

  static final SymbolFlags EnumMember = SymbolFlags._(8.toJS);

  static final SymbolFlags Function$ = SymbolFlags._(16.toJS);

  static final SymbolFlags Class = SymbolFlags._(32.toJS);

  static final SymbolFlags Interface = SymbolFlags._(64.toJS);

  static final SymbolFlags ConstEnum = SymbolFlags._(128.toJS);

  static final SymbolFlags RegularEnum = SymbolFlags._(256.toJS);

  static final SymbolFlags ValueModule = SymbolFlags._(512.toJS);

  static final SymbolFlags NamespaceModule = SymbolFlags._(1024.toJS);

  static final SymbolFlags TypeLiteral = SymbolFlags._(2048.toJS);

  static final SymbolFlags ObjectLiteral = SymbolFlags._(4096.toJS);

  static final SymbolFlags Method = SymbolFlags._(8192.toJS);

  static final SymbolFlags Constructor = SymbolFlags._(16384.toJS);

  static final SymbolFlags GetAccessor = SymbolFlags._(32768.toJS);

  static final SymbolFlags SetAccessor = SymbolFlags._(65536.toJS);

  static final SymbolFlags Signature = SymbolFlags._(131072.toJS);

  static final SymbolFlags TypeParameter = SymbolFlags._(262144.toJS);

  static final SymbolFlags TypeAlias = SymbolFlags._(524288.toJS);

  static final SymbolFlags ExportValue = SymbolFlags._(1048576.toJS);

  static final SymbolFlags Alias = SymbolFlags._(2097152.toJS);

  static final SymbolFlags Prototype = SymbolFlags._(4194304.toJS);

  static final SymbolFlags ExportStar = SymbolFlags._(8388608.toJS);

  static final SymbolFlags Optional = SymbolFlags._(16777216.toJS);

  static final SymbolFlags Transient = SymbolFlags._(33554432.toJS);

  static final SymbolFlags Assignment = SymbolFlags._(67108864.toJS);

  static final SymbolFlags ModuleExports = SymbolFlags._(134217728.toJS);

  static final SymbolFlags Enum = SymbolFlags._(384.toJS);

  static final SymbolFlags Variable = SymbolFlags._(3.toJS);

  static final SymbolFlags Value = SymbolFlags._(111551.toJS);

  static final SymbolFlags Type = SymbolFlags._(788968.toJS);

  static final SymbolFlags Namespace = SymbolFlags._(1920.toJS);

  static final SymbolFlags Module = SymbolFlags._(1536.toJS);

  static final SymbolFlags Accessor = SymbolFlags._(98304.toJS);

  static final SymbolFlags FunctionScopedVariableExcludes = SymbolFlags._(
    111550.toJS,
  );

  static final SymbolFlags BlockScopedVariableExcludes = SymbolFlags._(
    111551.toJS,
  );

  static final SymbolFlags ParameterExcludes = SymbolFlags._(111551.toJS);

  static final SymbolFlags PropertyExcludes = SymbolFlags._(0.toJS);

  static final SymbolFlags EnumMemberExcludes = SymbolFlags._(900095.toJS);

  static final SymbolFlags FunctionExcludes = SymbolFlags._(110991.toJS);

  static final SymbolFlags ClassExcludes = SymbolFlags._(899503.toJS);

  static final SymbolFlags InterfaceExcludes = SymbolFlags._(788872.toJS);

  static final SymbolFlags RegularEnumExcludes = SymbolFlags._(899327.toJS);

  static final SymbolFlags ConstEnumExcludes = SymbolFlags._(899967.toJS);

  static final SymbolFlags ValueModuleExcludes = SymbolFlags._(110735.toJS);

  static final SymbolFlags NamespaceModuleExcludes = SymbolFlags._(0.toJS);

  static final SymbolFlags MethodExcludes = SymbolFlags._(103359.toJS);

  static final SymbolFlags GetAccessorExcludes = SymbolFlags._(46015.toJS);

  static final SymbolFlags SetAccessorExcludes = SymbolFlags._(78783.toJS);

  static final SymbolFlags AccessorExcludes = SymbolFlags._(13247.toJS);

  static final SymbolFlags TypeParameterExcludes = SymbolFlags._(526824.toJS);

  static final SymbolFlags TypeAliasExcludes = SymbolFlags._(788968.toJS);

  static final SymbolFlags AliasExcludes = SymbolFlags._(2097152.toJS);

  static final SymbolFlags ModuleMember = SymbolFlags._(2623475.toJS);

  static final SymbolFlags ExportHasLocal = SymbolFlags._(944.toJS);

  static final SymbolFlags BlockScoped = SymbolFlags._(418.toJS);

  static final SymbolFlags PropertyOrAccessor = SymbolFlags._(98308.toJS);

  static final SymbolFlags ClassMember = SymbolFlags._(106500.toJS);
}

/// SymbolTable based on ES6 Map interface.
typedef SymbolTable = Map<AnonymousUnion_2036142, Symbol>;
extension type Map<K extends _i1.JSAny?, V extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Returns the number of elements in the Map.
  external double get size;
  external void clear();

  /// Returns true if an element in the Map existed and has been removed, or
  /// false if the element does not exist.
  external bool delete(_i1.JSAny key);

  /// Executes a provided function once per each key/value pair in the Map, in
  /// insertion order.
  external void forEach(
    _AnonymousFunction_1508545<_i1.JSAny, _i1.JSAny> callbackfn, [
    _i1.JSAny? thisArg,
  ]);

  /// Returns a specified element from the Map object. If the value that is
  /// associated to the provided key is an object, then you will get a reference
  /// to that object and any change made to that object will effectively modify
  /// it inside the Map.
  ///
  /// Returns Returns the element associated with the specified key. If no
  /// element is associated with the specified key, undefined is returned.
  @_i1.JS('get')
  external V? get$(_i1.JSAny key);

  /// Returns boolean indicating whether an element with the specified key
  /// exists or not.
  external bool has(_i1.JSAny key);

  /// Adds a new element with a specified key and value to the Map. If an
  /// element with the same key already exists, the element will be updated.
  @_i1.JS('set')
  external Map<_i1.JSAny?, _i1.JSAny?> set$(_i1.JSAny key, _i1.JSAny value);
}
extension type _AnonymousFunction_1508545<
  V extends _i1.JSAny?,
  K extends _i1.JSAny?
>._(_i1.JSFunction _) implements _i1.JSFunction {
  external void call(
    _i1.JSAny value,
    _i1.JSAny key,
    Map<_i1.JSAny?, _i1.JSAny?> map,
  );
}
extension type Type._(_i1.JSObject _) implements _i1.JSObject {
  external TypeFlags flags;

  external Symbol symbol;

  external DestructuringPattern? pattern;

  external Symbol? aliasSymbol;

  external _i1.JSArray<Type?>? aliasTypeArguments;
}
extension type TypeFlags._(_i1.JSNumber _) implements _i1.JSNumber {
  static final TypeFlags Any = TypeFlags._(1.toJS);

  static final TypeFlags Unknown = TypeFlags._(2.toJS);

  static final TypeFlags String = TypeFlags._(4.toJS);

  static final TypeFlags Number = TypeFlags._(8.toJS);

  static final TypeFlags Boolean = TypeFlags._(16.toJS);

  static final TypeFlags Enum = TypeFlags._(32.toJS);

  static final TypeFlags BigInt = TypeFlags._(64.toJS);

  static final TypeFlags StringLiteral = TypeFlags._(128.toJS);

  static final TypeFlags NumberLiteral = TypeFlags._(256.toJS);

  static final TypeFlags BooleanLiteral = TypeFlags._(512.toJS);

  static final TypeFlags EnumLiteral = TypeFlags._(1024.toJS);

  static final TypeFlags BigIntLiteral = TypeFlags._(2048.toJS);

  static final TypeFlags ESSymbol = TypeFlags._(4096.toJS);

  static final TypeFlags UniqueESSymbol = TypeFlags._(8192.toJS);

  static final TypeFlags Void = TypeFlags._(16384.toJS);

  static final TypeFlags Undefined = TypeFlags._(32768.toJS);

  static final TypeFlags Null = TypeFlags._(65536.toJS);

  static final TypeFlags Never = TypeFlags._(131072.toJS);

  static final TypeFlags TypeParameter = TypeFlags._(262144.toJS);

  static final TypeFlags Object = TypeFlags._(524288.toJS);

  static final TypeFlags Union = TypeFlags._(1048576.toJS);

  static final TypeFlags Intersection = TypeFlags._(2097152.toJS);

  static final TypeFlags Index = TypeFlags._(4194304.toJS);

  static final TypeFlags IndexedAccess = TypeFlags._(8388608.toJS);

  static final TypeFlags Conditional = TypeFlags._(16777216.toJS);

  static final TypeFlags Substitution = TypeFlags._(33554432.toJS);

  static final TypeFlags NonPrimitive = TypeFlags._(67108864.toJS);

  static final TypeFlags TemplateLiteral = TypeFlags._(134217728.toJS);

  static final TypeFlags StringMapping = TypeFlags._(268435456.toJS);

  static final TypeFlags Literal = TypeFlags._(2944.toJS);

  static final TypeFlags Unit = TypeFlags._(109472.toJS);

  static final TypeFlags Freshable = TypeFlags._(2976.toJS);

  static final TypeFlags StringOrNumberLiteral = TypeFlags._(384.toJS);

  static final TypeFlags PossiblyFalsy = TypeFlags._(117724.toJS);

  static final TypeFlags StringLike = TypeFlags._(402653316.toJS);

  static final TypeFlags NumberLike = TypeFlags._(296.toJS);

  static final TypeFlags BigIntLike = TypeFlags._(2112.toJS);

  static final TypeFlags BooleanLike = TypeFlags._(528.toJS);

  static final TypeFlags EnumLike = TypeFlags._(1056.toJS);

  static final TypeFlags ESSymbolLike = TypeFlags._(12288.toJS);

  static final TypeFlags VoidLike = TypeFlags._(49152.toJS);

  static final TypeFlags UnionOrIntersection = TypeFlags._(3145728.toJS);

  static final TypeFlags StructuredType = TypeFlags._(3670016.toJS);

  static final TypeFlags TypeVariable = TypeFlags._(8650752.toJS);

  static final TypeFlags InstantiableNonPrimitive = TypeFlags._(58982400.toJS);

  static final TypeFlags InstantiablePrimitive = TypeFlags._(406847488.toJS);

  static final TypeFlags Instantiable = TypeFlags._(465829888.toJS);

  static final TypeFlags StructuredOrInstantiable = TypeFlags._(469499904.toJS);

  static final TypeFlags Narrowable = TypeFlags._(536624127.toJS);
}
typedef DestructuringPattern = AnonymousUnion_4251549;
extension type AnonymousUnion_4251549._(Node _) implements Node {
  BindingPattern get asBindingPattern => (_ as AnonymousUnion_4353370);

  ObjectLiteralExpression get asObjectLiteralExpression =>
      (_ as ObjectLiteralExpression);

  ArrayLiteralExpression get asArrayLiteralExpression =>
      (_ as ArrayLiteralExpression);
}
extension type IndexKind._(_i1.JSNumber _) implements _i1.JSNumber {
  static final IndexKind String = IndexKind._(0.toJS);

  static final IndexKind Number = IndexKind._(1.toJS);
}
extension type IndexInfo._(_i1.JSObject _) implements _i1.JSObject {
  external Type keyType;

  external String type;

  external bool isReadonly;

  external IndexSignatureDeclaration? declaration;

  external _i1.JSArray<AnonymousIntersection_2875729?>? components;
}
extension type AnonymousUnion_3057089._(NamedDeclaration _)
    implements NamedDeclaration {
  ClassElement get asClassElement => (_ as ClassElement);

  ObjectLiteralElement get asObjectLiteralElement =>
      (_ as ObjectLiteralElement);
}
extension type AnonymousType_2975848._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2975848({String name});

  external String name;
}
extension type AnonymousIntersection_2875729._(_i1.JSObject _)
    implements AnonymousType_2975848 {
  external String? get name;
  AnonymousUnion_3057089 get asAnonymousUnion_3057089 =>
      (_ as AnonymousUnion_3057089);

  AnonymousType_2975848 get asAnonymousType_2975848 =>
      (_ as AnonymousType_2975848);
}
extension type SignatureKind._(_i1.JSNumber _) implements _i1.JSNumber {
  static final SignatureKind Call = SignatureKind._(0.toJS);

  static final SignatureKind Construct = SignatureKind._(1.toJS);
}
extension type Signature._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousUnion_2822525? declaration;

  external _i1.JSArray<TypeParameter?>? typeParameters;

  external _i1.JSArray<Symbol> parameters;

  external Symbol? thisParameter;
}
extension type AnonymousUnion_2822525._(_i1.JSObject _)
    implements _i1.JSObject {
  SignatureDeclaration get asSignatureDeclaration =>
      (_ as AnonymousUnion_2968490);

  JSDocSignature get asJSDocSignature => (_ as JSDocSignature);
}
extension type TypeParameter._(_i1.JSObject _) implements InstantiableType {}
extension type InstantiableType._(_i1.JSObject _) implements Type {}

/// Class and interface types (ObjectFlags.Class and ObjectFlags.Interface).
extension type InterfaceType._(_i1.JSObject _) implements ObjectType {
  external _i1.JSArray<TypeParameter>? typeParameters;

  external _i1.JSArray<TypeParameter>? outerTypeParameters;

  external _i1.JSArray<TypeParameter>? localTypeParameters;

  external TypeParameter? thisType;
}
extension type ObjectType._(_i1.JSObject _) implements Type {
  external ObjectFlags objectFlags;
}
extension type ObjectFlags._(_i1.JSNumber _) implements _i1.JSNumber {
  static final ObjectFlags None = ObjectFlags._(0.toJS);

  static final ObjectFlags Class = ObjectFlags._(1.toJS);

  static final ObjectFlags Interface = ObjectFlags._(2.toJS);

  static final ObjectFlags Reference = ObjectFlags._(4.toJS);

  static final ObjectFlags Tuple = ObjectFlags._(8.toJS);

  static final ObjectFlags Anonymous = ObjectFlags._(16.toJS);

  static final ObjectFlags Mapped = ObjectFlags._(32.toJS);

  static final ObjectFlags Instantiated = ObjectFlags._(64.toJS);

  static final ObjectFlags ObjectLiteral = ObjectFlags._(128.toJS);

  static final ObjectFlags EvolvingArray = ObjectFlags._(256.toJS);

  static final ObjectFlags ObjectLiteralPatternWithComputedProperties =
      ObjectFlags._(512.toJS);

  static final ObjectFlags ReverseMapped = ObjectFlags._(1024.toJS);

  static final ObjectFlags JsxAttributes = ObjectFlags._(2048.toJS);

  static final ObjectFlags JSLiteral = ObjectFlags._(4096.toJS);

  static final ObjectFlags FreshLiteral = ObjectFlags._(8192.toJS);

  static final ObjectFlags ArrayLiteral = ObjectFlags._(16384.toJS);

  static final ObjectFlags SingleSignatureType = ObjectFlags._(134217728.toJS);

  static final ObjectFlags ClassOrInterface = ObjectFlags._(3.toJS);

  static final ObjectFlags ContainsSpread = ObjectFlags._(2097152.toJS);

  static final ObjectFlags ObjectRestType = ObjectFlags._(4194304.toJS);

  static final ObjectFlags InstantiationExpressionType = ObjectFlags._(
    8388608.toJS,
  );
}
extension type IntersectionType._(_i1.JSObject _)
    implements UnionOrIntersectionType {}
extension type UnionOrIntersectionType._(_i1.JSObject _) implements Type {
  external _i1.JSArray<Type> types;
}
typedef TypeVariable = AnonymousUnion_3516149;
extension type IndexedAccessType._(_i1.JSObject _) implements InstantiableType {
  external Type objectType;

  external Type indexType;

  external Type? constraint;

  external Type? simplifiedForReading;

  external Type? simplifiedForWriting;
}
extension type AnonymousUnion_3516149._(InstantiableType _)
    implements InstantiableType {
  TypeParameter get asTypeParameter => (_ as TypeParameter);

  IndexedAccessType get asIndexedAccessType => (_ as IndexedAccessType);
}
extension type AnonymousUnion_3841478._(Type _) implements Type {
  ObjectType get asObjectType => (_ as ObjectType);

  IntersectionType get asIntersectionType => (_ as IntersectionType);

  TypeVariable get asTypeVariable => (_ as AnonymousUnion_3516149);
}

/// Type references (ObjectFlags.Reference). When a class or interface has
/// type parameters or
/// a "this" type, references to the class or interface are made using type
/// references. The
/// typeArguments property specifies the types to substitute for the type
/// parameters of the
/// class or interface and optionally includes an extra element that specifies
/// the type to
/// substitute for "this" in the resulting instantiation. When no extra
/// argument is present,
/// the type reference itself is substituted for "this". The typeArguments
/// property is undefined
/// if the class or interface has no type parameters and the reference isn't
/// specifying an
/// explicit "this" argument.
extension type TypeReference._(_i1.JSObject _) implements ObjectType {
  external GenericType target;

  external AnonymousUnion_3010920? node;
}
extension type GenericType._(_i1.JSObject _)
    implements InterfaceType, TypeReference {
  external ObjectFlags get objectFlags;
  external set objectFlags(ObjectFlags value);
  external TypeFlags get flags;
  external set flags(TypeFlags value);
  external Symbol get symbol;
  external set symbol(Symbol value);
  external DestructuringPattern? get pattern;
  external set pattern(DestructuringPattern? value);
  external Symbol? get aliasSymbol;
  external set aliasSymbol(Symbol? value);
  external _i1.JSArray<Type?>? get aliasTypeArguments;
  external set aliasTypeArguments(_i1.JSArray<Type?>? value);
}
extension type AnonymousUnion_3010920._(TypeNode _) implements TypeNode {
  TypeReferenceNode get asTypeReferenceNode => (_ as TypeReferenceNode);

  ArrayTypeNode get asArrayTypeNode => (_ as ArrayTypeNode);

  TupleTypeNode get asTupleTypeNode => (_ as TupleTypeNode);
}
extension type NodeBuilderFlags._(_i1.JSNumber _) implements _i1.JSNumber {
  static final NodeBuilderFlags None = NodeBuilderFlags._(0.toJS);

  static final NodeBuilderFlags NoTruncation = NodeBuilderFlags._(1.toJS);

  static final NodeBuilderFlags WriteArrayAsGenericType = NodeBuilderFlags._(
    2.toJS,
  );

  static final NodeBuilderFlags GenerateNamesForShadowedTypeParams =
      NodeBuilderFlags._(4.toJS);

  static final NodeBuilderFlags UseStructuralFallback = NodeBuilderFlags._(
    8.toJS,
  );

  static final NodeBuilderFlags ForbidIndexedAccessSymbolReferences =
      NodeBuilderFlags._(16.toJS);

  static final NodeBuilderFlags WriteTypeArgumentsOfSignature =
      NodeBuilderFlags._(32.toJS);

  static final NodeBuilderFlags UseFullyQualifiedType = NodeBuilderFlags._(
    64.toJS,
  );

  static final NodeBuilderFlags UseOnlyExternalAliasing = NodeBuilderFlags._(
    128.toJS,
  );

  static final NodeBuilderFlags SuppressAnyReturnType = NodeBuilderFlags._(
    256.toJS,
  );

  static final NodeBuilderFlags WriteTypeParametersInQualifiedName =
      NodeBuilderFlags._(512.toJS);

  static final NodeBuilderFlags MultilineObjectLiterals = NodeBuilderFlags._(
    1024.toJS,
  );

  static final NodeBuilderFlags WriteClassExpressionAsTypeLiteral =
      NodeBuilderFlags._(2048.toJS);

  static final NodeBuilderFlags UseTypeOfFunction = NodeBuilderFlags._(
    4096.toJS,
  );

  static final NodeBuilderFlags OmitParameterModifiers = NodeBuilderFlags._(
    8192.toJS,
  );

  static final NodeBuilderFlags UseAliasDefinedOutsideCurrentScope =
      NodeBuilderFlags._(16384.toJS);

  static final NodeBuilderFlags UseSingleQuotesForStringLiteralType =
      NodeBuilderFlags._(268435456.toJS);

  static final NodeBuilderFlags NoTypeReduction = NodeBuilderFlags._(
    536870912.toJS,
  );

  static final NodeBuilderFlags OmitThisParameter = NodeBuilderFlags._(
    33554432.toJS,
  );

  static final NodeBuilderFlags AllowThisInObjectLiteral = NodeBuilderFlags._(
    32768.toJS,
  );

  static final NodeBuilderFlags AllowQualifiedNameInPlaceOfIdentifier =
      NodeBuilderFlags._(65536.toJS);

  static final NodeBuilderFlags AllowAnonymousIdentifier = NodeBuilderFlags._(
    131072.toJS,
  );

  static final NodeBuilderFlags AllowEmptyUnionOrIntersection =
      NodeBuilderFlags._(262144.toJS);

  static final NodeBuilderFlags AllowEmptyTuple = NodeBuilderFlags._(
    524288.toJS,
  );

  static final NodeBuilderFlags AllowUniqueESSymbolType = NodeBuilderFlags._(
    1048576.toJS,
  );

  static final NodeBuilderFlags AllowEmptyIndexInfoType = NodeBuilderFlags._(
    2097152.toJS,
  );

  static final NodeBuilderFlags AllowNodeModulesRelativePaths =
      NodeBuilderFlags._(67108864.toJS);

  static final NodeBuilderFlags IgnoreErrors = NodeBuilderFlags._(
    70221824.toJS,
  );

  static final NodeBuilderFlags InObjectTypeLiteral = NodeBuilderFlags._(
    4194304.toJS,
  );

  static final NodeBuilderFlags InTypeAlias = NodeBuilderFlags._(8388608.toJS);

  static final NodeBuilderFlags InInitialEntityName = NodeBuilderFlags._(
    16777216.toJS,
  );
}
extension type AnonymousType_2567447._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2567447({NodeArray<TypeNode> typeArguments});

  external NodeArray<TypeNode>? typeArguments;
}
extension type AnonymousIntersection_1932384._(_i1.JSObject _)
    implements AnonymousUnion_2968490, AnonymousType_2567447 {
  SignatureDeclaration get asSignatureDeclaration =>
      (_ as AnonymousUnion_2968490);

  AnonymousType_2567447 get asAnonymousType_2567447 =>
      (_ as AnonymousType_2567447);
}
extension type AnonymousUnion_4038599._(_i1.JSObject _)
    implements _i1.JSObject {
  ExportSpecifier get asExportSpecifier => (_ as ExportSpecifier);

  Identifier get asIdentifier => (_ as Identifier);
}
typedef AssignmentPattern = AnonymousUnion_3480921;
extension type TypeFormatFlags._(_i1.JSNumber _) implements _i1.JSNumber {
  static final TypeFormatFlags None = TypeFormatFlags._(0.toJS);

  static final TypeFormatFlags NoTruncation = TypeFormatFlags._(1.toJS);

  static final TypeFormatFlags WriteArrayAsGenericType = TypeFormatFlags._(
    2.toJS,
  );

  static final TypeFormatFlags GenerateNamesForShadowedTypeParams =
      TypeFormatFlags._(4.toJS);

  static final TypeFormatFlags UseStructuralFallback = TypeFormatFlags._(
    8.toJS,
  );

  static final TypeFormatFlags WriteTypeArgumentsOfSignature =
      TypeFormatFlags._(32.toJS);

  static final TypeFormatFlags UseFullyQualifiedType = TypeFormatFlags._(
    64.toJS,
  );

  static final TypeFormatFlags SuppressAnyReturnType = TypeFormatFlags._(
    256.toJS,
  );

  static final TypeFormatFlags MultilineObjectLiterals = TypeFormatFlags._(
    1024.toJS,
  );

  static final TypeFormatFlags WriteClassExpressionAsTypeLiteral =
      TypeFormatFlags._(2048.toJS);

  static final TypeFormatFlags UseTypeOfFunction = TypeFormatFlags._(4096.toJS);

  static final TypeFormatFlags OmitParameterModifiers = TypeFormatFlags._(
    8192.toJS,
  );

  static final TypeFormatFlags UseAliasDefinedOutsideCurrentScope =
      TypeFormatFlags._(16384.toJS);

  static final TypeFormatFlags UseSingleQuotesForStringLiteralType =
      TypeFormatFlags._(268435456.toJS);

  static final TypeFormatFlags NoTypeReduction = TypeFormatFlags._(
    536870912.toJS,
  );

  static final TypeFormatFlags OmitThisParameter = TypeFormatFlags._(
    33554432.toJS,
  );

  static final TypeFormatFlags AllowUniqueESSymbolType = TypeFormatFlags._(
    1048576.toJS,
  );

  static final TypeFormatFlags AddUndefined = TypeFormatFlags._(131072.toJS);

  static final TypeFormatFlags WriteArrowStyleSignature = TypeFormatFlags._(
    262144.toJS,
  );

  static final TypeFormatFlags InArrayType = TypeFormatFlags._(524288.toJS);

  static final TypeFormatFlags InElementType = TypeFormatFlags._(2097152.toJS);

  static final TypeFormatFlags InFirstTypeArgument = TypeFormatFlags._(
    4194304.toJS,
  );

  static final TypeFormatFlags InTypeAlias = TypeFormatFlags._(8388608.toJS);

  static final TypeFormatFlags NodeBuilderFlagsMask = TypeFormatFlags._(
    848330095.toJS,
  );
}
extension type SymbolFormatFlags._(_i1.JSNumber _) implements _i1.JSNumber {
  static final SymbolFormatFlags None = SymbolFormatFlags._(0.toJS);

  static final SymbolFormatFlags WriteTypeParametersOrArguments =
      SymbolFormatFlags._(1.toJS);

  static final SymbolFormatFlags UseOnlyExternalAliasing = SymbolFormatFlags._(
    2.toJS,
  );

  static final SymbolFormatFlags AllowAnyNodeKind = SymbolFormatFlags._(4.toJS);

  static final SymbolFormatFlags UseAliasDefinedOutsideCurrentScope =
      SymbolFormatFlags._(8.toJS);
}
typedef TypePredicate = AnonymousUnion_3734919;
extension type ThisTypePredicate._(_i1.JSObject _)
    implements TypePredicateBase {
  external TypePredicateKind kind;

  external String type;
}
extension type TypePredicateKind._(_i1.JSNumber _) implements _i1.JSNumber {
  static final TypePredicateKind This = TypePredicateKind._(0.toJS);

  static final TypePredicateKind Identifier = TypePredicateKind._(1.toJS);

  static final TypePredicateKind AssertsThis = TypePredicateKind._(2.toJS);

  static final TypePredicateKind AssertsIdentifier = TypePredicateKind._(
    3.toJS,
  );
}
extension type TypePredicateBase._(_i1.JSObject _) implements _i1.JSObject {
  external TypePredicateKind kind;

  external String type;
}
extension type IdentifierTypePredicate._(_i1.JSObject _)
    implements TypePredicateBase {
  external TypePredicateKind kind;

  external String parameterName;

  external double parameterIndex;

  external String type;
}
extension type AssertsThisTypePredicate._(_i1.JSObject _)
    implements TypePredicateBase {
  external TypePredicateKind kind;

  external String type;
}
extension type AssertsIdentifierTypePredicate._(_i1.JSObject _)
    implements TypePredicateBase {
  external TypePredicateKind kind;

  external String parameterName;

  external double parameterIndex;

  external String type;
}
extension type AnonymousUnion_3734919._(TypePredicateBase _)
    implements TypePredicateBase {
  ThisTypePredicate get asThisTypePredicate => (_ as ThisTypePredicate);

  IdentifierTypePredicate get asIdentifierTypePredicate =>
      (_ as IdentifierTypePredicate);

  AssertsThisTypePredicate get asAssertsThisTypePredicate =>
      (_ as AssertsThisTypePredicate);

  AssertsIdentifierTypePredicate get asAssertsIdentifierTypePredicate =>
      (_ as AssertsIdentifierTypePredicate);
}
typedef CallLikeExpression = AnonymousUnion_2175551;
typedef JsxCallLike = AnonymousUnion_2213276;
extension type AnonymousUnion_2213276._(Expression _) implements Expression {
  JsxOpeningLikeElement get asJsxOpeningLikeElement =>
      (_ as AnonymousUnion_3524408);

  JsxOpeningFragment get asJsxOpeningFragment => (_ as JsxOpeningFragment);
}
extension type InstanceofExpression._(_i1.JSObject _)
    implements BinaryExpression {
  @_i2.redeclare
  external Token<_i1.JSNumber> get operatorToken;
}
extension type AnonymousUnion_2175551._(Node _) implements Node {
  CallExpression get asCallExpression => (_ as CallExpression);

  NewExpression get asNewExpression => (_ as NewExpression);

  TaggedTemplateExpression get asTaggedTemplateExpression =>
      (_ as TaggedTemplateExpression);

  Decorator get asDecorator => (_ as Decorator);

  JsxCallLike get asJsxCallLike => (_ as AnonymousUnion_2213276);

  InstanceofExpression get asInstanceofExpression =>
      (_ as InstanceofExpression);
}
extension type AnonymousUnion_3482579._(_i1.JSObject _)
    implements _i1.JSObject {
  EnumMember get asEnumMember => (_ as EnumMember);

  PropertyAccessExpression get asPropertyAccessExpression =>
      (_ as PropertyAccessExpression);

  ElementAccessExpression get asElementAccessExpression =>
      (_ as ElementAccessExpression);
}
extension type AnonymousUnion_3916119._(Node _) implements Node {
  PropertyAccessExpression get asPropertyAccessExpression =>
      (_ as PropertyAccessExpression);

  QualifiedName get asQualifiedName => (_ as QualifiedName);

  ImportTypeNode get asImportTypeNode => (_ as ImportTypeNode);
}
extension type StringLiteralType._(_i1.JSObject _) implements LiteralType {
  external String value;
}
extension type LiteralType._(_i1.JSObject _) implements FreshableType {
  external AnonymousUnion_9002734 value;
}
extension type AnonymousUnion_9002734._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  double get asDouble => (_ as _i1.JSNumber).toDartDouble;

  PseudoBigInt get asPseudoBigInt => (_ as PseudoBigInt);
}
extension type FreshableType._(_i1.JSObject _) implements Type {
  external FreshableType freshType;

  external FreshableType regularType;
}
extension type NumberLiteralType._(_i1.JSObject _) implements LiteralType {
  external double value;
}
extension type BigIntLiteralType._(_i1.JSObject _) implements LiteralType {
  external PseudoBigInt value;
}
extension type _AnonymousFunction_3695647<T extends _i1.JSAny?>._(
  _i1.JSFunction _
)
    implements _i1.JSFunction {
  external T call(TypeChecker checker);
}
extension type _AnonymousFunction_1053202._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _i1.JSArray<IndexInfo> call(
    Symbol indexSymbol, [
    _i1.JSArray<Symbol?>? siblingSymbols,
  ]);
}
extension type AnonymousType_3936789._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3936789({
    double assignable,
    double identity,
    double subtype,
    double strictSubtype,
  });

  external double assignable;

  external double identity;

  external double subtype;

  external double strictSubtype;
}
extension type ScriptReferenceHost._(_i1.JSObject _) implements _i1.JSObject {
  external CompilerOptions getCompilerOptions();
  external TSSourceFile? getSourceFile(String fileName);
  external TSSourceFile? getSourceFileByPath(Path path);
  external String getCurrentDirectory();
}
extension type LineAndCharacter._(_i1.JSObject _) implements _i1.JSObject {
  /// 0-based.
  external double line;

  external double character;
}
extension type TextChangeRange._(_i1.JSObject _) implements _i1.JSObject {
  external TextSpan span;

  external double newLength;
}
extension type TextSpan._(_i1.JSObject _) implements _i1.JSObject {
  external double start;

  external double length;
}
