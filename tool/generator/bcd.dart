// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert' hide json;
import 'dart:js_interop';

import 'package:path/path.dart' as p;

import 'filesystem_api.dart';

/// A class to read from the browser-compat-data files and parse interface and
/// property status (standards track, experimental, deprecated) and supported
/// browser (chrome, safari, firefox) info.
class BrowserCompatData {
  static BrowserCompatData read() {
    final path =
        p.join('node_modules', '@mdn', 'browser-compat-data', 'data.json');
    final content = (fs.readFileSync(
      path.toJS,
      JSReadFileOptions(encoding: 'utf8'.toJS),
    ) as JSString)
        .toDart;

    final api = (jsonDecode(content) as Map)['api'] as Map<String, dynamic>;
    final interfaces = api.symbolNames
        .map((key) => BCDInterfaceStatus(key, api[key] as Map<String, dynamic>))
        .toList();
    return BrowserCompatData(Map.fromIterable(
      interfaces,
      key: (i) => (i as BCDInterfaceStatus).name,
    ));
  }

  final Map<String, BCDInterfaceStatus> interfaces;

  BrowserCompatData(this.interfaces);

  BCDInterfaceStatus? retrieveInterfaceFor(String name) => interfaces[name];
}

class BCDInterfaceStatus extends BCDItem {
  late final Map<String, BCDPropertyStatus> properties;

  BCDInterfaceStatus(super.name, super.json) {
    properties = Map.fromIterable(
      json.symbolNames,
      value: (name) => BCDPropertyStatus(
          name as String, json[name] as Map<String, dynamic>, this),
    );
  }

  BCDPropertyStatus? retrievePropertyFor(String name) => properties[name];

  bool get shouldGenerate =>
      standardTrack && chromeSupported && firefoxSupported && safariSupported;
}

class BCDPropertyStatus extends BCDItem {
  final BCDInterfaceStatus parent;

  BCDPropertyStatus(super.name, super.json, this.parent);
}

abstract class BCDItem {
  final String name;
  final Map<String, dynamic> json;

  BCDItem(this.name, this.json);

  Map<String, dynamic> get _compat => json['__compat'] as Map<String, dynamic>;
  Map<String, dynamic> get _status => _compat['status'] as Map<String, dynamic>;
  Map<String, dynamic> get _support =>
      _compat['support'] as Map<String, dynamic>;

  bool get deprecated => _status['deprecated'] as bool? ?? false;
  bool get experimental => _status['experimental'] as bool? ?? false;
  bool get standardTrack => _status['standard_track'] as bool? ?? false;

  List<String> get status => [
        if (standardTrack) 'standards-track',
        if (deprecated) 'deprecated',
        if (experimental) 'experimental',
      ];

  String get _statusDescription => status.join(', ');

  bool get chromeSupported => _supportedInBrowser('chrome');
  bool get firefoxSupported => _supportedInBrowser('firefox');
  bool get safariSupported => _supportedInBrowser('safari');

  List<String> get browsers => [
        if (chromeSupported) 'chrome',
        if (firefoxSupported) 'firefox',
        if (safariSupported) 'safari',
      ];

  String get _browsersDescription => browsers.join(', ');

  bool _supportedInBrowser(String browser) {
    final map = (_support[browser] is List
        ? (_support[browser] as List).first
        : _support[browser]) as Map<String, dynamic>;

    if (map.containsKey('version_removed')) {
      return false;
    }

    final value = map['version_added'];
    if (value is String) return true;
    if (value is bool) return value;
    return false;
  }

  @override
  String toString() => '$name ($_browsersDescription) [$_statusDescription]';
}

extension BCDJsonDataExtension on Map<String, dynamic> {
  /// Return keys which correspond to symbol names (i.e., filter out non-symbol
  /// metadata (`__meta`, `__compat`, ...).
  Iterable<String> get symbolNames => keys.where((key) => !key.startsWith('_'));
}
