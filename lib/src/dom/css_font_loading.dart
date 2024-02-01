// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library css_font_loading;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef BinaryData = JSObject;
typedef FontFaceLoadStatus = String;
typedef FontFaceSetLoadStatus = String;
extension type FontFaceDescriptors._(JSObject _) implements JSObject {
  external factory FontFaceDescriptors({
    String style,
    String weight,
    String stretch,
    String unicodeRange,
    String featureSettings,
    String variationSettings,
    String display,
    String ascentOverride,
    String descentOverride,
    String lineGapOverride,
  });

  external set style(String value);
  external String get style;
  external set weight(String value);
  external String get weight;
  external set stretch(String value);
  external String get stretch;
  external set unicodeRange(String value);
  external String get unicodeRange;
  external set featureSettings(String value);
  external String get featureSettings;
  external set variationSettings(String value);
  external String get variationSettings;
  external set display(String value);
  external String get display;
  external set ascentOverride(String value);
  external String get ascentOverride;
  external set descentOverride(String value);
  external String get descentOverride;
  external set lineGapOverride(String value);
  external String get lineGapOverride;
}
extension type FontFace._(JSObject _) implements JSObject {
  external factory FontFace(
    String family,
    JSAny source, [
    FontFaceDescriptors descriptors,
  ]);

  external JSPromise load();
  external set family(String value);
  external String get family;
  external set style(String value);
  external String get style;
  external set weight(String value);
  external String get weight;
  external set stretch(String value);
  external String get stretch;
  external set unicodeRange(String value);
  external String get unicodeRange;
  external set featureSettings(String value);
  external String get featureSettings;
  external set variationSettings(String value);
  external String get variationSettings;
  external set display(String value);
  external String get display;
  external set ascentOverride(String value);
  external String get ascentOverride;
  external set descentOverride(String value);
  external String get descentOverride;
  external set lineGapOverride(String value);
  external String get lineGapOverride;
  external FontFaceLoadStatus get status;
  external JSPromise get loaded;
  external FontFaceFeatures get features;
  external FontFaceVariations get variations;
  external FontFacePalettes get palettes;
}
extension type FontFaceFeatures._(JSObject _) implements JSObject {}
extension type FontFaceVariationAxis._(JSObject _) implements JSObject {
  external String get name;
  external String get axisTag;
  external num get minimumValue;
  external num get maximumValue;
  external num get defaultValue;
}
extension type FontFaceVariations._(JSObject _) implements JSObject {}
extension type FontFacePalette._(JSObject _) implements JSObject {
  external int get length;
  external bool get usableWithLightBackground;
  external bool get usableWithDarkBackground;
}
extension type FontFacePalettes._(JSObject _) implements JSObject {
  external int get length;
}
extension type FontFaceSetLoadEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory FontFaceSetLoadEventInit({JSArray fontfaces});

  external set fontfaces(JSArray value);
  external JSArray get fontfaces;
}
extension type FontFaceSetLoadEvent._(JSObject _) implements Event, JSObject {
  external factory FontFaceSetLoadEvent(
    String type, [
    FontFaceSetLoadEventInit eventInitDict,
  ]);

  external JSArray get fontfaces;
}
extension type FontFaceSet._(JSObject _) implements EventTarget, JSObject {
  external factory FontFaceSet(JSArray initialFaces);

  external FontFaceSet add(FontFace font);
  external bool delete(FontFace font);
  external void clear();
  external JSPromise load(
    String font, [
    String text,
  ]);
  external bool check(
    String font, [
    String text,
  ]);
  external set onloading(EventHandler value);
  external EventHandler get onloading;
  external set onloadingdone(EventHandler value);
  external EventHandler get onloadingdone;
  external set onloadingerror(EventHandler value);
  external EventHandler get onloadingerror;
  external JSPromise get ready;
  external FontFaceSetLoadStatus get status;
}
