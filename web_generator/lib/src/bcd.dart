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
  static final Map<String, Set<BCDPropertyStatus>> _eventHandlers = {};

  /// Returns whether [name] is an event handler that is supported in any
  /// interface.
  static bool isEventHandlerSupported(String name) =>
      _eventHandlers[name]?.any((bcd) => bcd.shouldGenerate) == true;

  static BrowserCompatData read() {
    final path =
        p.join('node_modules', '@mdn', 'browser-compat-data', 'data.json');
    final content = (fs.readFileSync(
      path.toJS,
      JSReadFileOptions(encoding: 'utf8'.toJS),
    ) as JSString)
        .toDart;

    final contentMap = jsonDecode(content) as Map;
    final api = contentMap['api'] as Map<String, dynamic>;
    // MDN files WebAssembly compat data in a separate folder, so we need to
    // unify.
    final webassembly = (contentMap['webassembly']
        as Map<String, dynamic>)['api'] as Map<String, dynamic>;
    api.addAll(webassembly);
    // Add info for the namespace as well.
    api['WebAssembly'] = webassembly;

    final interfaces = <BCDInterfaceStatus>{};
    final globals = <String, Map<String, dynamic>>{};
    final globalInterfaces = <BCDInterfaceStatus>{};
    const globalsFilePrefix = 'api/_globals';

    for (final symbolName in api.symbolNames) {
      final apiInfo = api[symbolName] as Map<String, dynamic>;
      final interface = BCDInterfaceStatus(symbolName, apiInfo);
      if (interface._sourceFile.startsWith(globalsFilePrefix)) {
        // MDN stores global members e.g. `isSecureContext` in the same location
        // as the interfaces. These are not interfaces, but rather properties
        // that should go in `Window` and `WorkerGlobalScope`. We cache the
        // compat data and add them directly to the relevant interfaces later.
        // https://github.com/mdn/browser-compat-data/blob/main/docs/data-guidelines/api.md#global-apis
        globals[symbolName] = apiInfo;
        // The compat data for the console namespace is within this property. It
        // should be exposed both as a global and as a namespace.
        if (symbolName == 'console') interfaces.add(interface);
      } else {
        interfaces.add(interface);
      }
      if (symbolName == 'Window' || symbolName == 'WorkerGlobalScope') {
        globalInterfaces.add(interface);
      }
    }

    globals.forEach((name, apiInfo) {
      for (final globalInterface in globalInterfaces) {
        globalInterface.addProperty(name, apiInfo);
      }
    });

    return BrowserCompatData(Map.fromIterable(
      interfaces,
      key: (i) => (i as BCDInterfaceStatus).name,
    ));
  }

  final Map<String, BCDInterfaceStatus> interfaces;

  BrowserCompatData(this.interfaces);

  BCDInterfaceStatus? retrieveInterfaceFor(String name) => interfaces[name];

  bool shouldGenerateInterface(String name) =>
      retrieveInterfaceFor(name)?.shouldGenerate ?? false;
}

class BCDInterfaceStatus extends BCDItem {
  final Map<String, BCDPropertyStatus> _properties = {};

  BCDInterfaceStatus(super.name, super.json) {
    for (final symbolName in json.symbolNames) {
      addProperty(symbolName, json[symbolName] as Map<String, dynamic>);
    }
  }

  void addProperty(String property, Map<String, dynamic> compat) {
    // Event compatibility data is stored as `<name_of_event>_event`. In order
    // to have compatibility data for `onX` properties, we need to replace such
    // property names. See https://github.com/mdn/browser-compat-data/blob/main/docs/data-guidelines/api.md#dom-events-eventname_event
    // for more details.
    late BCDPropertyStatus status;
    const eventSuffix = '_event';
    if (property.endsWith(eventSuffix)) {
      property = 'on${property.replaceAll(eventSuffix, '')}';
      status = BCDPropertyStatus(property, compat, this);
      BrowserCompatData._eventHandlers
          .putIfAbsent(property, () => {})
          .add(status);
    } else {
      status = BCDPropertyStatus(property, compat, this);
    }
    _properties[property] = status;
  }

  BCDPropertyStatus? retrievePropertyFor(String name, {bool isStatic = false}) {
    if (isStatic) name = '${name}_static';
    return _properties[name];
  }

  bool get shouldGenerate => standardTrack && !experimental;
}

class BCDPropertyStatus extends BCDItem {
  final BCDInterfaceStatus parent;

  BCDPropertyStatus(super.name, super.json, this.parent);

  bool get shouldGenerate => standardTrack && !experimental;
}

abstract class BCDItem {
  final String name;
  final Map<String, dynamic> json;

  BCDItem(this.name, this.json);

  Map<String, dynamic> get _compat => json['__compat'] as Map<String, dynamic>;
  String get _sourceFile => _compat['source_file'] as String;
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
