// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef BinaryData = JSAny?;
typedef FontFaceLoadStatus = String;
typedef FontFaceSetLoadStatus = String;

@JS()
@staticInterop
@anonymous
class FontFaceDescriptors implements JSObject {
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
}

extension FontFaceDescriptorsExtension on FontFaceDescriptors {
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

@JS('FontFace')
@staticInterop
class FontFace implements JSObject {
  external factory FontFace(
    String family,
    JSAny? source, [
    FontFaceDescriptors descriptors,
  ]);
}

extension FontFaceExtension on FontFace {
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

@JS('FontFaceFeatures')
@staticInterop
class FontFaceFeatures implements JSObject {}

@JS('FontFaceVariationAxis')
@staticInterop
class FontFaceVariationAxis implements JSObject {}

extension FontFaceVariationAxisExtension on FontFaceVariationAxis {
  external String get name;
  external String get axisTag;
  external num get minimumValue;
  external num get maximumValue;
  external num get defaultValue;
}

@JS('FontFaceVariations')
@staticInterop
class FontFaceVariations implements JSObject {}

extension FontFaceVariationsExtension on FontFaceVariations {}

@JS('FontFacePalette')
@staticInterop
class FontFacePalette implements JSObject {}

extension FontFacePaletteExtension on FontFacePalette {
  external int get length;
  external bool get usableWithLightBackground;
  external bool get usableWithDarkBackground;
}

@JS('FontFacePalettes')
@staticInterop
class FontFacePalettes implements JSObject {}

extension FontFacePalettesExtension on FontFacePalettes {
  external int get length;
}

@JS()
@staticInterop
@anonymous
class FontFaceSetLoadEventInit implements EventInit {
  external factory FontFaceSetLoadEventInit({JSArray fontfaces});
}

extension FontFaceSetLoadEventInitExtension on FontFaceSetLoadEventInit {
  external set fontfaces(JSArray value);
  external JSArray get fontfaces;
}

@JS('FontFaceSetLoadEvent')
@staticInterop
class FontFaceSetLoadEvent implements Event {
  external factory FontFaceSetLoadEvent(
    String type, [
    FontFaceSetLoadEventInit eventInitDict,
  ]);
}

extension FontFaceSetLoadEventExtension on FontFaceSetLoadEvent {
  external JSArray get fontfaces;
}

@JS('FontFaceSet')
@staticInterop
class FontFaceSet implements EventTarget {
  external factory FontFaceSet(JSArray initialFaces);
}

extension FontFaceSetExtension on FontFaceSet {
  external FontFaceSet add(FontFace font);
  external bool delete(FontFace font);
  external JSVoid clear();
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

@JS('FontFaceSource')
@staticInterop
class FontFaceSource implements JSObject {}

extension FontFaceSourceExtension on FontFaceSource {
  external FontFaceSet get fonts;
}
