// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

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

/// The **`FontFace`** interface of the
/// [CSS Font Loading API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Font_Loading_API)
/// represents a single usable font face.
///
/// This interface defines the source of a font face, either a URL to an
/// external resource or a buffer, and font properties such as `style`,
/// `weight`, and so on.
/// For URL font sources it allows authors to trigger when the remote font is
/// fetched and loaded, and to track loading status.
extension type FontFace._(JSObject _) implements JSObject {
  external factory FontFace(
    String family,
    JSAny source, [
    FontFaceDescriptors descriptors,
  ]);

  /// The **`load()`** method of the [FontFace] interface requests and loads a
  /// font whose `source` was specified as a URL. It returns a `Promise` that
  /// resolves with the current `FontFace` object.
  ///
  /// If the `source` for the font face was specified as binary data, or the
  /// font [FontFace/status] property of the font face is anything other than
  /// `unloaded`, then this method does nothing.
  external JSPromise<FontFace> load();
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
  external JSPromise<FontFace> get loaded;
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
  external factory FontFaceSetLoadEventInit({JSArray<FontFace> fontfaces});

  external set fontfaces(JSArray<FontFace> value);
  external JSArray<FontFace> get fontfaces;
}

/// The **`FontFaceSetLoadEvent`** interface of the
/// [CSS Font Loading API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Font_Loading_API)
/// represents events fired at a [FontFaceSet] after it starts loading font
/// faces.
///
/// Events are fired when font loading starts
/// ([`loading`](https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet/loading_event)),
/// loading completes
/// ([`loadingdone`](https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet/loadingdone_event))
/// or there is an error loading one of the fonts
/// ([`loadingerror`](https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet/loadingerror_event)).
extension type FontFaceSetLoadEvent._(JSObject _) implements Event, JSObject {
  external factory FontFaceSetLoadEvent(
    String type, [
    FontFaceSetLoadEventInit eventInitDict,
  ]);

  external JSArray<FontFace> get fontfaces;
}

/// The **`FontFaceSet`** interface of the
/// [CSS Font Loading API](https://developer.mozilla.org/en-US/docs/Web/API/CSS_Font_Loading_API)
/// manages the loading of font-faces and querying of their download status.
///
/// A `FontFaceSet` instance is a
/// [`Set`-like object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set#set-like_browser_apis)
/// that can hold an ordered set of [FontFace] objects.
///
/// This property is available as [Document.fonts], or `self.fonts` in
/// [web workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API).
extension type FontFaceSet._(JSObject _) implements EventTarget, JSObject {
  external factory FontFaceSet(JSArray<FontFace> initialFaces);

  /// The **`add()`** method of the [FontFaceSet] interface adds a new font to
  /// the set.
  external FontFaceSet add(FontFace font);

  /// The **`delete()`** method of the [FontFaceSet] interface removes a font
  /// from the set.
  ///
  /// Font faces that were added to the set using the CSS  rule remain connected
  /// to the corresponding CSS, and cannot be deleted.
  external bool delete(FontFace font);

  /// The **`clear()`** method of the [FontFaceSet] interface removes all fonts
  /// added via this interface. Fonts added with the  rule are not removed.
  external void clear();

  /// The `load()` method of the [FontFaceSet] forces all the fonts given in
  /// parameters to be loaded.
  external JSPromise<JSArray<FontFace>> load(
    String font, [
    String text,
  ]);

  /// The `check()` method of the [FontFaceSet] returns `true` if you can render
  /// some text using the given font specification without attempting to use any
  /// fonts in this `FontFaceSet` that are not yet fully loaded. This means you
  /// can use the font specification without causing a
  /// [font swap](https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face/font-display#the_font_display_timeline).
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
  external JSPromise<FontFaceSet> get ready;
  external FontFaceSetLoadStatus get status;
}
