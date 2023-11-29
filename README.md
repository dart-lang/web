[![Dart CI](https://github.com/dart-lang/web/actions/workflows/test-package.yml/badge.svg)](https://github.com/dart-lang/web/actions/workflows/test-package.yml)
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

## Status

The APIs in this package are still fairly provisional and could change rapidly.
We'll continue to use [semantic versioning](https://semver.org/) as we evolve
the APIs.

## Usage

```dart
import 'package:web/web.dart';

void main() {
  final div = document.querySelector('div') as HTMLDivElement;
  div.textContent = 'Text set at ${DateTime.now()}';
}
```

## Web IDL version

<!-- START updated by tool/update_bindings.dart. Do not modify by hand -->
Based on [`@webref/idl 3.39.1`](https://www.npmjs.com/package/@webref/idl/v/3.39.1).
<!-- END updated by tool/update_bindings.dart. Do not modify by hand -->
