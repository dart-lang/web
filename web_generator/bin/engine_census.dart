// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:args/args.dart';
import 'package:io/ansi.dart' as ansi;
import 'package:io/io.dart';
import 'package:path/path.dart' as p;
import 'package:web_generator/src/engine_census.dart';

Future<void> main(List<String> arguments) async {
  final ArgResults argResult;
  try {
    argResult = _parser.parse(arguments);
  } on FormatException catch (e) {
    stderr.writeln('''
${ansi.lightRed.wrap(e.message)}

$_usage''');
    exitCode = ExitCode.usage.code;
    return;
  }

  if (argResult.flag('help')) {
    print(_usage);
    return;
  }

  final webGeneratorDir = p.normalize(p.fromUri(Platform.script.resolve('..')));
  final paths = EngineCensusPaths(
    webGeneratorDir: webGeneratorDir,
    cacheDir: argResult.option('cache-dir'),
    outDir: argResult.option('out-dir'),
  );
  final refOverrides = <String, String>{
    'blink': ?argResult.option('blink-ref'),
    'gecko': ?argResult.option('gecko-ref'),
    'webkit': ?argResult.option('webkit-ref'),
  };

  final rest = argResult.rest;
  switch (rest) {
    case []:
    case ['all']:
      if (argResult.flag('fetch')) {
        await fetchEngines(paths, refOverrides: refOverrides);
      }
      await parseCorpora(paths);
      compareCorpora(paths);
      generateReport(paths);
    case ['fetch']:
      await fetchEngines(paths, refOverrides: refOverrides);
    case ['parse']:
      await parseCorpora(paths);
    case ['parse', final corpus]:
      await parseCorpora(paths, targetCorpus: corpus);
    case ['parse', final corpus, final out, ...]:
      await parseCorpora(paths, targetCorpus: corpus, customOutPath: out);
    case ['compare']:
      compareCorpora(paths);
    case ['report']:
      generateReport(paths);
    case ['lookup', ...final queries] when queries.isNotEmpty:
      lookupMembers(paths, queries);
    case ['lookup']:
      stderr.writeln(
        ansi.lightRed.wrap(
          'Expected at least one Interface.member query (e.g. MouseEvent.clientX).',
        ),
      );
      exitCode = ExitCode.usage.code;
    case [final query, ...] when query.contains('.'):
      lookupMembers(paths, rest);
    case [final cmd, ...]:
      stderr.writeln(ansi.lightRed.wrap('Unknown subcommand: $cmd\n\n$_usage'));
      exitCode = ExitCode.usage.code;
  }
}

final String _usage = '''
Compare @webref/idl against shipping Blink, Gecko, and WebKit WebIDL corpora.

Usage: dart bin/engine_census.dart [subcommand] [options]

Subcommands:
  all (default)                   Run parse, compare, and report into .dart_tool/engine_census/
  fetch                           Clone or update sparse checkouts in ~/.cache/engine_idl
  parse [corpus] [outfile.json]   Parse webref | blink | gecko | webkit | all
  compare                         Compare parsed corpora and write disagreements.json
  report                          Render .dart_tool/engine_census/SUMMARY.md
  lookup <Interface.member...>    Inspect member signatures and flags across all 4 corpora

Options:
${_parser.usage}''';

final ArgParser _parser = ArgParser()
  ..addFlag(
    'help',
    abbr: 'h',
    negatable: false,
    help: 'Show usage information.',
  )
  ..addFlag(
    'fetch',
    negatable: false,
    help: 'Fetch/update engine checkouts before running `all`.',
  )
  ..addOption(
    'cache-dir',
    help: 'Directory for sparse engine checkouts (defaults to ~/.cache/engine_idl).',
  )
  ..addOption(
    'out-dir',
    help: 'Output directory for census JSON and SUMMARY.md (defaults to .dart_tool/engine_census).',
  )
  ..addOption('blink-ref', help: 'Override Blink (Chromium) git ref.')
  ..addOption('gecko-ref', help: 'Override Gecko (Firefox) git ref.')
  ..addOption('webkit-ref', help: 'Override WebKit (Safari) git ref.');
