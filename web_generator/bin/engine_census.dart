// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:args/args.dart';
import 'package:io/ansi.dart' as ansi;
import 'package:io/io.dart';
import 'package:path/path.dart' as p;
import 'package:web_generator/src/engine_census.dart';

void main(List<String> arguments) async {
  final ArgResults argResult;
  try {
    argResult = _parser.parse(arguments);
  } on FormatException catch (e) {
    print('''
${ansi.lightRed.wrap(e.message)}

$_usage''');
    exitCode = ExitCode.usage.code;
    return;
  }

  if (argResult['help'] as bool) {
    print(_usage);
    return;
  }

  final webGeneratorDir = p.normalize(p.fromUri(Platform.script.resolve('..')));
  final paths = EngineCensusPaths(
    webGeneratorDir: webGeneratorDir,
    cacheDir: argResult['cache-dir'] as String?,
    outDir: argResult['out-dir'] as String?,
  );

  final rest = argResult.rest;
  final cmd = rest.isEmpty ? 'all' : rest.first;
  final cmdArgs = rest.isEmpty ? const <String>[] : rest.sublist(1);

  switch (cmd) {
    case 'fetch':
      await fetchEngines(
        paths,
        refOverrides: {
          if (argResult['blink-ref'] != null)
            'blink': argResult['blink-ref'] as String,
          if (argResult['gecko-ref'] != null)
            'gecko': argResult['gecko-ref'] as String,
          if (argResult['webkit-ref'] != null)
            'webkit': argResult['webkit-ref'] as String,
        },
      );
    case 'parse':
      final corpus = cmdArgs.isEmpty ? 'all' : cmdArgs.first;
      final out = cmdArgs.length > 1 ? cmdArgs[1] : null;
      await parseCorpora(paths, targetCorpus: corpus, customOutPath: out);
    case 'compare':
      compareCorpora(paths);
    case 'report':
      generateReport(paths);
    case 'lookup':
      if (cmdArgs.isEmpty) {
        print(
          ansi.lightRed.wrap(
            'Expected at least one Interface.member query (e.g. MouseEvent.clientX).',
          ),
        );
        exitCode = ExitCode.usage.code;
        return;
      }
      lookupMembers(paths, cmdArgs);
    case 'all':
      if (argResult['fetch'] as bool) {
        await fetchEngines(
          paths,
          refOverrides: {
            if (argResult['blink-ref'] != null)
              'blink': argResult['blink-ref'] as String,
            if (argResult['gecko-ref'] != null)
              'gecko': argResult['gecko-ref'] as String,
            if (argResult['webkit-ref'] != null)
              'webkit': argResult['webkit-ref'] as String,
          },
        );
      }
      await parseCorpora(paths);
      compareCorpora(paths);
      generateReport(paths);
    default:
      if (cmd.contains('.')) {
        lookupMembers(paths, rest);
      } else {
        print(ansi.lightRed.wrap('Unknown subcommand: $cmd\n\n$_usage'));
        exitCode = ExitCode.usage.code;
      }
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
    help:
        'Directory for sparse engine checkouts (defaults to ~/.cache/engine_idl).',
  )
  ..addOption(
    'out-dir',
    help:
        'Output directory for census JSON and SUMMARY.md (defaults to .dart_tool/engine_census).',
  )
  ..addOption('blink-ref', help: 'Override Blink (Chromium) git ref.')
  ..addOption('gecko-ref', help: 'Override Gecko (Firefox) git ref.')
  ..addOption('webkit-ref', help: 'Override WebKit (Safari) git ref.');
