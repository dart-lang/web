[![Dart CI](https://github.com/dart-lang/web/actions/workflows/build.yml/badge.svg)](https://github.com/dart-lang/web/actions/workflows/build.yml)
[![pub package](https://img.shields.io/pub/v/web.svg)](https://pub.dev/packages/web)
[![package publisher](https://img.shields.io/pub/publisher/web.svg)](https://pub.dev/packages/web/publisher)

Lightweight browser API bindings built around JS static interop.

## What's this?

This package exposes browser APIs. It's generated from the Web IDL definitions
and uses recent Dart language features for zero-overhead bindings.

This package is intended to replace
[`dart:html`](https://api.dart.dev/stable/dart-html/dart-html-library.html) and
similar Dart SDK libraries. It will support access to browser APIs from Dart
code compiled to either JavaScript or WebAssembly.

## Usage

```dart
import 'package:web/web.dart';

void main() {
  final div = document.querySelector('div')!;
  div.text = 'Text set at ${DateTime.now()}';
}
```

## Web IDL version

Based on:

<!-- START updated by tool/update_bindings.dart. Do not modify by hand -->
- @webref/idl [3.39.1](https://www.npmjs.com/package/@webref/idl/v/3.39.1)
- @webref/css [6.10.0](https://www.npmjs.com/package/@webref/css/v/6.10.0)
<!-- END updated by tool/update_bindings.dart. Do not modify by hand -->

For instructions on re-generating the DOM bindings, see the
[generator docs](tool/generator/README.md).
