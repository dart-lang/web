// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'package:test/test.dart';

import '../tool/scrape_mdn.dart';

void main() {
  group('convertMdnToMarkdown', () {
    test('simple', () {
      compare('''
Hello world
''', '''
Hello world
''');
    });

    test('removes front matter', () {
      compare('''
---
title: AudioNode
slug: Web/API/AudioNode
page-type: web-api-interface
browser-compat: api.AudioNode
---

Hello world
''', '''
Hello world
''');
    });

    test('strips InheritanceDiagram', () {
      compare('''
Hello world

{{InheritanceDiagram}}

foo bar
''', '''
Hello world

foo bar
''');
    });

    test('strips AvailableInWorkers', () {
      compare('''
Hello world

{{AvailableInWorkers("notservice")}}

foo bar
''', '''
Hello world

@AvailableInWorkers("notservice")

foo bar
''');
    });

    test('strips DefaultAPISidebar', () {
      compare('''
{{DefaultAPISidebar("Streams API")}}

The **`enqueue()`** method of the {{domxref("TransformStreamDefaultController")}} interface enqueues the given chunk in the readable side of the stream.

For more information on readable streams and chunks see [Using Readable Streams](/en-US/docs/Web/API/Streams_API/Using_readable_streams).
''', '''
The **`enqueue()`** method of the [TransformStreamDefaultController] interface enqueues the given chunk in the readable side of the stream.

For more information on readable streams and chunks see [Using Readable Streams](/en-US/docs/Web/API/Streams_API/Using_readable_streams).
''');
    });

    test('reference domxref', () {
      compare('''
Examples include:

- the audio destination,
- intermediate processing module (e.g. a filter like {{domxref("BiquadFilterNode")}} or {{domxref("ConvolverNode")}}), or
- volume control (like {{domxref("GainNode")}})
''', '''
Examples include:

- the audio destination,
- intermediate processing module (e.g. a filter like [BiquadFilterNode] or [ConvolverNode]), or
- volume control (like [GainNode])
''');

      compare('''
Examples include:

... of {{domxref("Response.type", "type")}} ...
''', '''
Examples include:

... of [Response.type] ...
''');

      compare('''
The **`sampleRate`** property of the {{
  domxref("AudioBuffer") }} interface returns a float representing the sample rate, in
samples per second, of the PCM data stored in the buffer.
''', '''
The **`sampleRate`** property of the [AudioBuffer] interface returns a float representing the sample rate, in
samples per second, of the PCM data stored in the buffer.
''');
    });

    test('reference jsxref', () {
      compare('''
... or functions such as {{jsxref("Array.forEach", "forEach()")}}.

- {{jsxref("JSON.parse()")}} - counterpart for {{jsxref("JSON")}} documents.
''', '''
... or functions such as `forEach()`.

- `JSON.parse()` - counterpart for `JSON` documents.
''');
    });
  });
}

void compare(String source, String output) {
  expect(
    convertMdnToMarkdown(source),
    output.trimRight(),
  );
}
