// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:web/helpers.dart';

late ContextEvent $contextEvent;
late WebGL $webGL;

final HTMLAudioElement $audio = createAudioElement();
final HTMLIFrameElement $iframe = createIFrameElement();
final HTMLCanvasElement $canvas0 = createCanvasElement();

late TouchList $touchList;
late TouchListWrapper $touchListWrapper;
final $touchListInit = TouchListWrapper($touchList);

Node testExtensions(
  CanvasRenderingContext2D ctx2d,
  HTMLImageElement img,
  Node node,
  Node child,
  HTMLDivElement div,
) {
  ctx2d.drawImageScaled(img, 0, 0, 10, 10);
  node.text = 'hello';
  div.text = 'world';
  div.parentNode!.text = 'chained';
  div.append(child);
  return node.append(child);
}
