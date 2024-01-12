## What's here?

For information about the files in this directory, see
https://github.com/flutter/flutter/wiki/Data-driven-Fixes#testing.

Note that files in this directory are excluded from analysis.

## Organization

The contents of this directory are used to test the `dart fix` refactorings
offered by this package. See `lib/dart_fix.yaml` for the fix definitions.

## Running the dart fix tests

In order to manually test the fixes manually:

```bash
> cd test_fixes
> dart fix --compare-to-golden
```

## Symbols excluded from the renames

The helpers in `lib/src/helpers/renames.dart` define typedefs for dart:html to
package:web renames of a few common classes; we don't offer quick fix renames
for these symbols (though we may want to revisit having the typedefs).

```dart
typedef AudioElement = HTMLAudioElement;
typedef HtmlElement = HTMLElement;
typedef CanvasElement = HTMLCanvasElement;
typedef ImageElement = HTMLImageElement;
typedef VideoElement = HTMLVideoElement;
typedef CssStyleDeclaration = CSSStyleDeclaration;
```

In addition, `lib/src/helpers/http.dart` defines a `HttpRequest` class, so we
don't offer a quick fix to rename from `HttpRequest` to `XMLHttpRequest`.
