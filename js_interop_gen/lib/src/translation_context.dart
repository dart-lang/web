// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:code_builder/code_builder.dart' as code;

import 'bcd.dart';
import 'doc_provider.dart';
import 'elements.dart';
import 'js/webidl_api.dart' as idl;

abstract class TranslationContext {
  DocProvider get docProvider;
  BrowserCompatData get browserCompatData;
  bool markTypeAsUsed(String typeName);

  // Methods needed by DocGenerator
  idl.Node? getDeclaration(String typeName);
  void addDocImport(String url);
  bool isTypeUsed(idl.Node node);
  LibraryInfo? getLibraryForType(String typeName);
  void recordRenamedClass(String jsName, String dartClassName);

  // Methods needed by InterfaceGenerator
  PartialInterfacelike? getPartialInterface(String name);
  code.TypeReference typeReference(
    RawType type, {
    bool returnType = false,
    bool onlyEmitInteropTypes = false,
  });
  List<code.Constructor> elementConstructors(
    String jsName,
    String dartClassName,
    String representationFieldName,
  );
}

extension ConstructorOps on idl.Constructor {
  bool get hasHTMLConstructorAttribute =>
      extAttrs.toDart.any((extAttr) => extAttr.name == 'HTMLConstructor');
}
