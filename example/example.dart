// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:web/web.dart';

void main() {
  // ignore: unused_local_variable
  final HtmlDocument foo = document;

  final doc = document as HtmlDocument;

  final div = doc.querySelector('div')!;
  div.text = 'Text set at ${DateTime.now()}';
}
