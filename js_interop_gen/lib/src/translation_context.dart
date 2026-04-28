// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart' as code;

import 'bcd.dart';
import 'doc_provider.dart';
import 'elements.dart';
import 'js/webidl_api.dart' as idl;

/// A context that provides access to the translation state and helper methods
/// needed by `DocGenerator` and `InterfaceGenerator`.
///
/// This interface decouples the generators from the concrete `Translator`
/// implementation, making it easier to maintain and test.
abstract class TranslationContext {
  /// The provider for documentation comments (usually from MDN).
  DocProvider get docProvider;

  /// The provider for browser compatibility data.
  BrowserCompatData get browserCompatData;

  /// Marks the type named [typeName] as used by the generator.
  ///
  /// Returns `true` if the type was successfully marked as used
  /// (or was already marked).
  bool markTypeAsUsed(String typeName);

  // Methods needed by DocGenerator

  /// Gets the IDL declaration node for the given [typeName], if available.
  idl.Node? getDeclaration(String typeName);

  /// Adds a URL to the set of imports needed for documentation comments in the
  /// current library.
  void addDocImport(String url);

  /// Returns `true` if the given IDL [node] is marked as used by the generator.
  bool isTypeUsed(idl.Node node);

  /// Gets the [LibraryInfo] that contains the definition for the given
  /// [typeName].
  LibraryInfo? getLibraryForType(String typeName);

  /// Records that a JS class named [jsName] has been renamed to [dartClassName]
  /// in the generated code.
  void recordRenamedClass(String jsName, String dartClassName);

  // Methods needed by InterfaceGenerator

  /// Gets the merged [PartialInterfacelike] definition for the given [name].
  PartialInterfacelike? getPartialInterface(String name);

  /// Generates a `code_builder` [TypeReference] for the given [type].
  ///
  /// [returnType] indicates if the reference is being used as a return type
  /// (which may affect how types like `double` are emitted).
  /// [onlyEmitInteropTypes] forces the use of JS interop types even when a
  /// Dart primitive mapping exists.
  code.TypeReference typeReference(
    RawType type, {
    bool returnType = false,
    bool onlyEmitInteropTypes = false,
  });

  /// Generates the standard element constructors for a class.
  List<code.Constructor> elementConstructors(
    String jsName,
    String dartClassName,
    String representationFieldName,
  );
}
