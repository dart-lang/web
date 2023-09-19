// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Helper layer library that exposes enums commonly used from `dart:html`.
library;

import '../dom/html.dart';

abstract final class KeyLocation {
  // Note: this library uses legacy constant names for backwards compatibility.
  // ignore: constant_identifier_names
  static const int STANDARD = 0;
  // ignore: constant_identifier_names
  static const int LEFT = 1;
  // ignore: constant_identifier_names
  static const int RIGHT = 2;
  // ignore: constant_identifier_names
  static const int NUMPAD = 3;
  // ignore: constant_identifier_names
  static const int JOYSTICK = 4;
  // ignore: constant_identifier_names
  static const int MOBILE = 5;
}

abstract final class KeyCode {
  // These constant names were borrowed from Closure's Keycode enumeration
  // class.
  // https://github.com/google/closure-library/blob/master/closure/goog/events/keycodes.js
  // ignore: constant_identifier_names
  static const int WIN_KEY_FF_LINUX = 0;
  // ignore: constant_identifier_names
  static const int MAC_ENTER = 3;
  // ignore: constant_identifier_names
  static const int BACKSPACE = 8;
  // ignore: constant_identifier_names
  static const int TAB = 9;
  // NUM_CENTER is also NUMLOCK for FF and Safari on Mac.
  // ignore: constant_identifier_names
  static const int NUM_CENTER = 12;
  // ignore: constant_identifier_names
  static const int ENTER = 13;
  // ignore: constant_identifier_names
  static const int SHIFT = 16;
  // ignore: constant_identifier_names
  static const int CTRL = 17;
  // ignore: constant_identifier_names
  static const int ALT = 18;
  // ignore: constant_identifier_names
  static const int PAUSE = 19;
  // ignore: constant_identifier_names
  static const int CAPS_LOCK = 20;
  // ignore: constant_identifier_names
  static const int ESC = 27;
  // ignore: constant_identifier_names
  static const int SPACE = 32;
  // ignore: constant_identifier_names
  static const int PAGE_UP = 33;
  // ignore: constant_identifier_names
  static const int PAGE_DOWN = 34;
  // ignore: constant_identifier_names
  static const int END = 35;
  // ignore: constant_identifier_names
  static const int HOME = 36;
  // ignore: constant_identifier_names
  static const int LEFT = 37;
  // ignore: constant_identifier_names
  static const int UP = 38;
  // ignore: constant_identifier_names
  static const int RIGHT = 39;
  // ignore: constant_identifier_names
  static const int DOWN = 40;
  // ignore: constant_identifier_names
  static const int NUM_NORTH_EAST = 33;
  // ignore: constant_identifier_names
  static const int NUM_SOUTH_EAST = 34;
  // ignore: constant_identifier_names
  static const int NUM_SOUTH_WEST = 35;
  // ignore: constant_identifier_names
  static const int NUM_NORTH_WEST = 36;
  // ignore: constant_identifier_names
  static const int NUM_WEST = 37;
  // ignore: constant_identifier_names
  static const int NUM_NORTH = 38;
  // ignore: constant_identifier_names
  static const int NUM_EAST = 39;
  // ignore: constant_identifier_names
  static const int NUM_SOUTH = 40;
  // ignore: constant_identifier_names
  static const int PRINT_SCREEN = 44;
  // ignore: constant_identifier_names
  static const int INSERT = 45;
  // ignore: constant_identifier_names
  static const int NUM_INSERT = 45;
  // ignore: constant_identifier_names
  static const int DELETE = 46;
  // ignore: constant_identifier_names
  static const int NUM_DELETE = 46;
  // ignore: constant_identifier_names
  static const int ZERO = 48;
  // ignore: constant_identifier_names
  static const int ONE = 49;
  // ignore: constant_identifier_names
  static const int TWO = 50;
  // ignore: constant_identifier_names
  static const int THREE = 51;
  // ignore: constant_identifier_names
  static const int FOUR = 52;
  // ignore: constant_identifier_names
  static const int FIVE = 53;
  // ignore: constant_identifier_names
  static const int SIX = 54;
  // ignore: constant_identifier_names
  static const int SEVEN = 55;
  // ignore: constant_identifier_names
  static const int EIGHT = 56;
  // ignore: constant_identifier_names
  static const int NINE = 57;
  // ignore: constant_identifier_names
  static const int FF_SEMICOLON = 59;
  // ignore: constant_identifier_names
  static const int FF_EQUALS = 61;
  // CAUTION: The question mark is for US-keyboard layouts.
  // It varies for other locales and keyboard layouts.
  // ignore: constant_identifier_names
  static const int QUESTION_MARK = 63;
  // ignore: constant_identifier_names
  static const int A = 65;
  // ignore: constant_identifier_names
  static const int B = 66;
  // ignore: constant_identifier_names
  static const int C = 67;
  // ignore: constant_identifier_names
  static const int D = 68;
  // ignore: constant_identifier_names
  static const int E = 69;
  // ignore: constant_identifier_names
  static const int F = 70;
  // ignore: constant_identifier_names
  static const int G = 71;
  // ignore: constant_identifier_names
  static const int H = 72;
  // ignore: constant_identifier_names
  static const int I = 73;
  // ignore: constant_identifier_names
  static const int J = 74;
  // ignore: constant_identifier_names
  static const int K = 75;
  // ignore: constant_identifier_names
  static const int L = 76;
  // ignore: constant_identifier_names
  static const int M = 77;
  // ignore: constant_identifier_names
  static const int N = 78;
  // ignore: constant_identifier_names
  static const int O = 79;
  // ignore: constant_identifier_names
  static const int P = 80;
  // ignore: constant_identifier_names
  static const int Q = 81;
  // ignore: constant_identifier_names
  static const int R = 82;
  // ignore: constant_identifier_names
  static const int S = 83;
  // ignore: constant_identifier_names
  static const int T = 84;
  // ignore: constant_identifier_names
  static const int U = 85;
  // ignore: constant_identifier_names
  static const int V = 86;
  // ignore: constant_identifier_names
  static const int W = 87;
  // ignore: constant_identifier_names
  static const int X = 88;
  // ignore: constant_identifier_names
  static const int Y = 89;
  // ignore: constant_identifier_names
  static const int Z = 90;
  // ignore: constant_identifier_names
  static const int META = 91;
  // ignore: constant_identifier_names
  static const int WIN_KEY_LEFT = 91; // Note that it's the same value as META.
  // ignore: constant_identifier_names
  static const int WIN_KEY_RIGHT = 92;
  // ignore: constant_identifier_names
  static const int CONTEXT_MENU = 93;
  // ignore: constant_identifier_names
  static const int NUM_ZERO = 96;
  // ignore: constant_identifier_names
  static const int NUM_ONE = 97;
  // ignore: constant_identifier_names
  static const int NUM_TWO = 98;
  // ignore: constant_identifier_names
  static const int NUM_THREE = 99;
  // ignore: constant_identifier_names
  static const int NUM_FOUR = 100;
  // ignore: constant_identifier_names
  static const int NUM_FIVE = 101;
  // ignore: constant_identifier_names
  static const int NUM_SIX = 102;
  // ignore: constant_identifier_names
  static const int NUM_SEVEN = 103;
  // ignore: constant_identifier_names
  static const int NUM_EIGHT = 104;
  // ignore: constant_identifier_names
  static const int NUM_NINE = 105;
  // ignore: constant_identifier_names
  static const int NUM_MULTIPLY = 106;
  // ignore: constant_identifier_names
  static const int NUM_PLUS = 107;
  // ignore: constant_identifier_names
  static const int NUM_MINUS = 109;
  // ignore: constant_identifier_names
  static const int NUM_PERIOD = 110;
}

abstract final class Device {
  static String get userAgent => window.navigator.userAgent;
  static final bool isOpera = userAgent.contains('Opera');
  static final bool isIE = !isOpera && userAgent.contains('Trident/');
  static final bool isFirefox = userAgent.contains('Firefox');
  static final bool isWebKit = !isOpera && userAgent.contains('WebKit');
  static final String cssPrefix = '-$propertyPrefix-';
  static final String propertyPrefix =
      isFirefox ? 'moz' : (isIE ? 'ms' : (isOpera ? 'o' : 'webkit'));
}
