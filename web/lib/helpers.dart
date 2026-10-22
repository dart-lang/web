/// This file is intentionally retained as a stub for `dart fix` bulk fix compatibility.
///
/// Dart < 3.15 does not hook up `uri_does_not_exist` to the `DataDriven` fix engine,
/// meaning `dart fix --apply` cannot migrate imports of deleted libraries.
/// However, it does hook up `deprecated_member_use`. By keeping this library around
/// as a `@Deprecated` stub, downstream users on Dart 3.13 and 3.14 will get bulk
/// migration fixes through `deprecated_member_use`.
///
/// See the fix_data.yaml `package:web/helpers.dart -> package:web/web.dart` rule.
@Deprecated('Use web.dart instead')
library;

export 'web.dart';
