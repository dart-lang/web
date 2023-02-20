// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';

typedef BinaryData = JSAny;
typedef FontFaceLoadStatus = JSString;
typedef FontFaceSetLoadStatus = JSString;

@JS()
@staticInterop
@anonymous
class FontFaceDescriptors {
  external factory FontFaceDescriptors({
    JSString style = 'normal',
    JSString weight = 'normal',
    JSString stretch = 'normal',
    JSString unicodeRange = 'U+0-10FFFF',
    JSString variant = 'normal',
    JSString featureSettings = 'normal',
    JSString variationSettings = 'normal',
    JSString display = 'auto',
    JSString ascentOverride = 'normal',
    JSString descentOverride = 'normal',
    JSString lineGapOverride = 'normal',
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
class FontFace {
  external factory FontFace();

  external factory FontFace.a1(
    JSString family,
    JSAny source,
  );

  external factory FontFace.a2(
    JSString family,
    JSAny source,
    FontFaceDescriptors descriptors,
  );
}

extension FontFaceExtension on FontFace {
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
  external JSPromise load();
  external JSPromise get loaded;
  external FontFaceFeatures get features;
  external FontFaceVariations get variations;
  external FontFacePalettes get palettes;
}

@JS('FontFaceFeatures')
@staticInterop
class FontFaceFeatures {
  external factory FontFaceFeatures();
}

@JS('FontFaceVariationAxis')
@staticInterop
class FontFaceVariationAxis {
  external factory FontFaceVariationAxis();
}

extension FontFaceVariationAxisExtension on FontFaceVariationAxis {
  external JSString get name;
  external JSString get axisTag;
  external JSNumber get minimumValue;
  external JSNumber get maximumValue;
  external JSNumber get defaultValue;
}

@JS('FontFaceVariations')
@staticInterop
class FontFaceVariations {
  external factory FontFaceVariations();
}

extension FontFaceVariationsExtension on FontFaceVariations {}

@JS('FontFacePalette')
@staticInterop
class FontFacePalette {
  external factory FontFacePalette();
}

extension FontFacePaletteExtension on FontFacePalette {
  external JSNumber get length;
  external JSBoolean get usableWithLightBackground;
  external JSBoolean get usableWithDarkBackground;
}

@JS('FontFacePalettes')
@staticInterop
class FontFacePalettes {
  external factory FontFacePalettes();
}

extension FontFacePalettesExtension on FontFacePalettes {
  external JSNumber get length;
}

@JS()
@staticInterop
@anonymous
class FontFaceSetLoadEventInit extends EventInit {
  external factory FontFaceSetLoadEventInit({JSArray fontfaces = const []});
}

extension FontFaceSetLoadEventInitExtension on FontFaceSetLoadEventInit {
  external set fontfaces(JSArray value);
  external JSArray get fontfaces;
}

@JS('FontFaceSetLoadEvent')
@staticInterop
class FontFaceSetLoadEvent extends Event {
  external factory FontFaceSetLoadEvent();

  external factory FontFaceSetLoadEvent.a1(JSString type);

  external factory FontFaceSetLoadEvent.a2(
    JSString type,
    FontFaceSetLoadEventInit eventInitDict,
  );
}

extension FontFaceSetLoadEventExtension on FontFaceSetLoadEvent {
  external JSArray get fontfaces;
}

@JS('FontFaceSet')
@staticInterop
class FontFaceSet extends EventTarget {
  external factory FontFaceSet();

  external factory FontFaceSet.a1(JSArray initialFaces);
}

extension FontFaceSetExtension on FontFaceSet {
  external FontFaceSet add(FontFace font);
  external JSBoolean delete(FontFace font);
  external JSVoid clear();
  external set onloading(EventHandler value);
  external EventHandler get onloading;
  external set onloadingdone(EventHandler value);
  external EventHandler get onloadingdone;
  external set onloadingerror(EventHandler value);
  external EventHandler get onloadingerror;
  external JSPromise load(JSString font);
  external JSPromise load1(
    JSString font,
    JSString text,
  );
  external JSBoolean check(JSString font);
  external JSBoolean check1(
    JSString font,
    JSString text,
  );
  external JSPromise get ready;
  external FontFaceSetLoadStatus get status;
}

@JS('FontFaceSource')
@staticInterop
class FontFaceSource {
  external factory FontFaceSource();
}

extension FontFaceSourceExtension on FontFaceSource {
  external FontFaceSet get fonts;
}
