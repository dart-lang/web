// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef BinaryData = JSAny?;
typedef FontFaceLoadStatus = JSString;
typedef FontFaceSetLoadStatus = JSString;

@JS()
@staticInterop
@anonymous
class FontFaceDescriptors implements JSObject {
  external factory FontFaceDescriptors({
    JSString style,
    JSString weight,
    JSString stretch,
    JSString unicodeRange,
    JSString variant,
    JSString featureSettings,
    JSString variationSettings,
    JSString display,
    JSString ascentOverride,
    JSString descentOverride,
    JSString lineGapOverride,
  });
}

extension FontFaceDescriptorsExtension on FontFaceDescriptors {
  external set style(JSString value);
  external JSString get style;
  external set weight(JSString value);
  external JSString get weight;
  external set stretch(JSString value);
  external JSString get stretch;
  external set unicodeRange(JSString value);
  external JSString get unicodeRange;
  external set variant(JSString value);
  external JSString get variant;
  external set featureSettings(JSString value);
  external JSString get featureSettings;
  external set variationSettings(JSString value);
  external JSString get variationSettings;
  external set display(JSString value);
  external JSString get display;
  external set ascentOverride(JSString value);
  external JSString get ascentOverride;
  external set descentOverride(JSString value);
  external JSString get descentOverride;
  external set lineGapOverride(JSString value);
  external JSString get lineGapOverride;
}

@JS('FontFace')
@staticInterop
class FontFace implements JSObject {
  external factory FontFace(
    JSString family,
    JSAny? source, [
    FontFaceDescriptors descriptors,
  ]);
}

extension FontFaceExtension on FontFace {
  external JSPromise load();
  external set family(JSString value);
  external JSString get family;
  external set style(JSString value);
  external JSString get style;
  external set weight(JSString value);
  external JSString get weight;
  external set stretch(JSString value);
  external JSString get stretch;
  external set unicodeRange(JSString value);
  external JSString get unicodeRange;
  external set variant(JSString value);
  external JSString get variant;
  external set featureSettings(JSString value);
  external JSString get featureSettings;
  external set variationSettings(JSString value);
  external JSString get variationSettings;
  external set display(JSString value);
  external JSString get display;
  external set ascentOverride(JSString value);
  external JSString get ascentOverride;
  external set descentOverride(JSString value);
  external JSString get descentOverride;
  external set lineGapOverride(JSString value);
  external JSString get lineGapOverride;
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
  external JSString get name;
  external JSString get axisTag;
  external JSNumber get minimumValue;
  external JSNumber get maximumValue;
  external JSNumber get defaultValue;
}

@JS('FontFaceVariations')
@staticInterop
class FontFaceVariations implements JSObject {}

extension FontFaceVariationsExtension on FontFaceVariations {}

@JS('FontFacePalette')
@staticInterop
class FontFacePalette implements JSObject {}

extension FontFacePaletteExtension on FontFacePalette {
  external JSNumber get length;
  external JSBoolean get usableWithLightBackground;
  external JSBoolean get usableWithDarkBackground;
}

@JS('FontFacePalettes')
@staticInterop
class FontFacePalettes implements JSObject {}

extension FontFacePalettesExtension on FontFacePalettes {
  external JSNumber get length;
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
    JSString type, [
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
  external JSBoolean delete(FontFace font);
  external JSVoid clear();
  external JSPromise load(
    JSString font, [
    JSString text,
  ]);
  external JSBoolean check(
    JSString font, [
    JSString text,
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
