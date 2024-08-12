// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'svg.dart';

/// The **`SVGClipPathElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGClipPathElement).
extension type SVGClipPathElement._(JSObject _)
    implements SVGElement, JSObject {
  /// Creates an [SVGClipPathElement] using the tag 'clipPath'.
  SVGClipPathElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'clipPath',
        );

  /// The read-only **`clipPathUnits`** property of the [SVGClipPathElement]
  /// interface reflects the `clipPathUnits` attribute of a  element which
  /// defines the coordinate system to use for the content of the element.
  ///
  /// > **Note:** Although this property is read-only, it is merely a container
  /// > for two values you can modify, [SVGAnimatedEnumeration.baseVal] and
  /// > [SVGAnimatedEnumeration.animVal].
  external SVGAnimatedEnumeration get clipPathUnits;

  /// The read-only **`transform`** property of the [SVGClipPathElement]
  /// interface reflects the `transform` attribute of a  element, that is a list
  /// of transformations applied to the element.
  external SVGAnimatedTransformList get transform;
}

/// The **`SVGMaskElement`** interface provides access to the properties of
/// elements, as well as methods to manipulate them.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement).
extension type SVGMaskElement._(JSObject _) implements SVGElement, JSObject {
  /// Creates an [SVGMaskElement] using the tag 'mask'.
  SVGMaskElement()
      : _ = document.createElementNS(
          'http://www.w3.org/2000/svg',
          'mask',
        );

  /// The read-only **`maskUnits`** property of the [SVGMaskElement] interface
  /// reflects the `maskUnits` attribute of a  element which defines the
  /// coordinate system to use for the mask of the element.
  ///
  /// > **Note:** Although this property is read-only, it is merely a container
  /// > for two values you can modify, [SVGAnimatedEnumeration.baseVal] and
  /// > [SVGAnimatedEnumeration.animVal].
  external SVGAnimatedEnumeration get maskUnits;

  /// The read-only **`maskContentUnits`** property of the [SVGMaskElement]
  /// interface reflects the `maskContentUnits` attribute. It indicates which
  /// coordinate system to use for the contents of the  element.
  ///
  /// > **Note:** Although this property is read-only, it is merely a container
  /// > for two values you can modify, [SVGAnimatedEnumeration.baseVal] and
  /// > [SVGAnimatedEnumeration.animVal].
  external SVGAnimatedEnumeration get maskContentUnits;

  /// The read-only **`x`** property of the [SVGMaskElement] interface returns
  /// an [SVGAnimatedLength] object containing the value of the `x` attribute of
  /// the . It represents the x-axis coordinate of the _top-left_ corner of the
  /// masking area.
  ///
  /// > **Note:** Although this property is read-only, it is merely a container
  /// > for two values you can modify, [SVGAnimatedLength.baseVal] and
  /// > [SVGAnimatedLength.animVal].
  external SVGAnimatedLength get x;

  /// The read-only **`y`** property of the [SVGMaskElement] interface returns
  /// an [SVGAnimatedLength] object containing the value of the `y` attribute of
  /// the . It represents the y-axis coordinate of the _top-left_ corner of the
  /// masking area.
  ///
  /// > **Note:** Although this property is read-only, it is merely a container
  /// > for two values you can modify, [SVGAnimatedLength.baseVal] and
  /// > [SVGAnimatedLength.animVal].
  external SVGAnimatedLength get y;

  /// The read-only **`width`** property of the [SVGMaskElement] interface
  /// returns an [SVGAnimatedLength] object containing the value of the `width`
  /// attribute of the .
  ///
  /// > **Note:** Although this property is read-only, it is merely a container
  /// > for two values you can modify, [SVGAnimatedLength.baseVal] and
  /// > [SVGAnimatedLength.animVal].
  external SVGAnimatedLength get width;

  /// The read-only **`height`** property of the [SVGMaskElement] interface
  /// returns an [SVGAnimatedLength] object containing the value of the `height`
  /// attribute of the .
  ///
  /// > **Note:** Although this property is read-only, it is merely a container
  /// > for two values you can modify, [SVGAnimatedLength.baseVal] and
  /// > [SVGAnimatedLength.animVal].
  external SVGAnimatedLength get height;
}
