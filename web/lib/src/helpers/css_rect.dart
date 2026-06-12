// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:math';

import '../../web.dart';

// `dart:html` helpers for CSS rectangles.

/// Class representing a
/// [length measurement](https://developer.mozilla.org/en-US/docs/Web/CSS/length)
/// in CSS.
class Dimension {
  num _value;
  String _unit;

  /// Set this CSS Dimension to a percentage `value`.
  Dimension.percent(this._value) : _unit = '%';

  /// Set this CSS Dimension to a pixel `value`.
  Dimension.px(this._value) : _unit = 'px';

  /// Set this CSS Dimension to a pica `value`.
  Dimension.pc(this._value) : _unit = 'pc';

  /// Set this CSS Dimension to a point `value`.
  Dimension.pt(this._value) : _unit = 'pt';

  /// Set this CSS Dimension to an inch `value`.
  Dimension.inch(this._value) : _unit = 'in';

  /// Set this CSS Dimension to a centimeter `value`.
  Dimension.cm(this._value) : _unit = 'cm';

  /// Set this CSS Dimension to a millimeter `value`.
  Dimension.mm(this._value) : _unit = 'mm';

  /// Set this CSS Dimension to the specified number of ems.
  ///
  /// 1em is equal to the current font size. (So 2ems is equal to double the font
  /// size). This is useful for producing website layouts that scale nicely with
  /// the user's desired font size.
  Dimension.em(this._value) : _unit = 'em';

  /// Set this CSS Dimension to the specified number of x-heights.
  ///
  /// One ex is equal to the x-height of a font's baseline to its mean line,
  /// generally the height of the letter "x" in the font, which is usually about
  /// half the font-size.
  Dimension.ex(this._value) : _unit = 'ex';

  /// Construct a Dimension object from the valid, simple CSS string `cssValue`
  /// that represents a distance measurement.
  ///
  /// This constructor is intended as a convenience method for working with
  /// simplistic CSS length measurements. Non-numeric values such as `auto` or
  /// `inherit` or invalid CSS will cause this constructor to throw a
  /// FormatError.
  Dimension.css(String cssValue) : _unit = '', _value = 0 {
    if (cssValue == '') cssValue = '0px';
    if (cssValue.endsWith('%')) {
      _unit = '%';
    } else {
      _unit = cssValue.substring(cssValue.length - 2);
    }
    if (cssValue.contains('.')) {
      _value = double.parse(
        cssValue.substring(0, cssValue.length - _unit.length),
      );
    } else {
      _value = int.parse(cssValue.substring(0, cssValue.length - _unit.length));
    }
  }

  /// Print out the CSS String representation of this value.
  @override
  String toString() {
    return '$_value$_unit';
  }

  /// Return a unitless, numerical value of this CSS value.
  num get value => _value;
}

/// A class for representing CSS dimensions.
///
/// In contrast to the more general purpose [Rectangle] class, this class's
/// values are mutable, so one can change the height of an element
/// programmatically.
///
/// _Important_ _note_: use of these methods will perform CSS calculations that
/// can trigger a browser reflow. Therefore, use of these properties _during_ an
/// animation frame is discouraged. See also:
/// [Browser Reflow](https://developers.google.com/speed/articles/reflow)
abstract class CssRect implements Rectangle<num> {
  final Element _element;

  CssRect(this._element);

  @override
  num get left;

  @override
  num get top;

  /// The height of this rectangle.
  ///
  /// This is equivalent to the `height` function in jQuery and the calculated
  /// `height` CSS value, converted to a dimensionless num in pixels. Unlike
  /// [Element.getBoundingClientRect], `height` will return the same numerical
  /// height if the element is hidden or not.
  @override
  num get height;

  /// The width of this rectangle.
  ///
  /// This is equivalent to the `width` function in jQuery and the calculated
  /// `width` CSS value, converted to a dimensionless num in pixels. Unlike
  /// [Element.getBoundingClientRect], `width` will return the same numerical
  /// width if the element is hidden or not.
  @override
  num get width;

  /// Set the height to `newHeight`.
  ///
  /// newHeight can be either a [num] representing the height in pixels or a
  /// [Dimension] object. Values of newHeight that are less than zero are
  /// converted to effectively setting the height to 0. This is equivalent to the
  /// `height` function in jQuery and the calculated `height` CSS value,
  /// converted to a num in pixels.
  ///
  /// Note that only the content height can actually be set via this method.
  set height(dynamic newHeight) {
    throw UnsupportedError('Can only set height for content rect.');
  }

  /// Set the current computed width in pixels of this element.
  ///
  /// newWidth can be either a [num] representing the width in pixels or a
  /// [Dimension] object. This is equivalent to the `width` function in jQuery
  /// and the calculated
  /// `width` CSS value, converted to a dimensionless num in pixels.
  ///
  /// Note that only the content width can be set via this method.
  set width(dynamic newWidth) {
    throw UnsupportedError('Can only set width for content rect.');
  }

  /// Return a value that is used to modify the initial height or width
  /// measurement of an element. Depending on the value (ideally an enum) passed
  /// to augmentingMeasurement, we may need to add or subtract margin, padding,
  /// or border values, depending on the measurement we're trying to obtain.
  num _addOrSubtractToBoxModel(
    List<String> dimensions,
    String augmentingMeasurement,
  ) {
    // getComputedStyle always returns pixel values (hence, computed), so we're
    // always dealing with pixels in this method.
    final styles = _element.getComputedStyle();

    num val = 0;

    for (var measurement in dimensions) {
      // The border-box and default box model both exclude margin in the regular
      // height/width calculation, so add it if we want it for this measurement.
      if (augmentingMeasurement == _MARGIN) {
        val += Dimension.css(
          styles.getPropertyValue('$augmentingMeasurement-$measurement'),
        ).value;
      }

      // The border-box includes padding and border, so remove it if we want
      // just the content itself.
      if (augmentingMeasurement == _CONTENT) {
        val -= Dimension.css(
          styles.getPropertyValue('$_PADDING-$measurement'),
        ).value;
      }

      // At this point, we don't wan't to augment with border or margin,
      // so remove border.
      if (augmentingMeasurement != _MARGIN) {
        val -= Dimension.css(
          styles.getPropertyValue('border-$measurement-width'),
        ).value;
      }
    }
    return val;
  }

  // TODO(jacobr): these methods are duplicated from _RectangleBase in dart:math
  // Ideally we would provide a RectangleMixin class that provides this
  // implementation. In an ideal world we would exp
  /// The x-coordinate of the right edge.
  @override
  num get right => left + width;

  /// The y-coordinate of the bottom edge.
  @override
  num get bottom => top + height;

  @override
  String toString() {
    return 'Rectangle ($left, $top) $width x $height';
  }

  @override
  bool operator ==(Object other) =>
      other is Rectangle &&
      left == other.left &&
      top == other.top &&
      right == other.right &&
      bottom == other.bottom;

  @override
  int get hashCode => Object.hash(left, top, right, bottom);

  /// Computes the intersection of `this` and [other].
  ///
  /// The intersection of two axis-aligned rectangles, if any, is always another
  /// axis-aligned rectangle.
  ///
  /// Returns the intersection of this and `other`, or `null` if they don't
  /// intersect.
  @override
  Rectangle<num>? intersection(Rectangle<num> other) {
    final x0 = max(left, other.left);
    final x1 = min(left + width, other.left + other.width);

    if (x0 <= x1) {
      final y0 = max(top, other.top);
      final y1 = min(top + height, other.top + other.height);

      if (y0 <= y1) {
        return Rectangle<num>(x0, y0, x1 - x0, y1 - y0);
      }
    }
    return null;
  }

  /// Returns true if `this` intersects [other].
  @override
  bool intersects(Rectangle<num> other) {
    return left <= other.left + other.width &&
        other.left <= left + width &&
        top <= other.top + other.height &&
        other.top <= top + height;
  }

  /// Returns a new rectangle which completely contains `this` and [other].
  @override
  Rectangle<num> boundingBox(Rectangle<num> other) {
    final right = max(this.left + width, other.left + other.width);
    final bottom = max(this.top + height, other.top + other.height);

    final left = min(this.left, other.left);
    final top = min(this.top, other.top);

    return Rectangle<num>(left, top, right - left, bottom - top);
  }

  /// Tests whether `this` entirely contains [another].
  @override
  bool containsRectangle(Rectangle<num> another) {
    return left <= another.left &&
        left + width >= another.left + another.width &&
        top <= another.top &&
        top + height >= another.top + another.height;
  }

  /// Tests whether [another] is inside or along the edges of `this`.
  @override
  bool containsPoint(Point<num> another) {
    return another.x >= left &&
        another.x <= left + width &&
        another.y >= top &&
        another.y <= top + height;
  }

  @override
  Point<num> get topLeft => Point<num>(left, top);
  @override
  Point<num> get topRight => Point<num>(left + width, top);
  @override
  Point<num> get bottomRight => Point<num>(left + width, top + height);
  @override
  Point<num> get bottomLeft => Point<num>(left, top + height);
}

/// A rectangle representing the dimensions of the space occupied by the
/// element's content + padding + border + margin in the
/// [box model](http://www.w3.org/TR/CSS2/box.html).
class MarginCssRect extends CssRect {
  MarginCssRect(super.element);

  @override
  num get height =>
      _element.offsetHeight + _addOrSubtractToBoxModel(_HEIGHT, _MARGIN);
  @override
  num get width =>
      _element.offsetWidth + _addOrSubtractToBoxModel(_WIDTH, _MARGIN);

  @override
  num get left =>
      _element.getBoundingClientRect().left -
      _addOrSubtractToBoxModel(['left'], _MARGIN);
  @override
  num get top =>
      _element.getBoundingClientRect().top -
      _addOrSubtractToBoxModel(['top'], _MARGIN);
}

// ignore: non_constant_identifier_names
final _HEIGHT = ['top', 'bottom'];
// ignore: non_constant_identifier_names
final _WIDTH = ['right', 'left'];
// ignore: constant_identifier_names
const _CONTENT = 'content';
// ignore: constant_identifier_names
const _PADDING = 'padding';
// ignore: constant_identifier_names
const _MARGIN = 'margin';

/// A rectangle representing the dimensions of the space occupied by the
/// element's content + padding + border in the
/// [box model](http://www.w3.org/TR/CSS2/box.html).
class BorderCssRect extends CssRect {
  BorderCssRect(super.element);

  @override
  num get height => _element.offsetHeight;
  @override
  num get width => _element.offsetWidth;

  @override
  num get left => _element.getBoundingClientRect().left;
  @override
  num get top => _element.getBoundingClientRect().top;
}
