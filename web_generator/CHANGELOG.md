## 1.0.0-wip

- Initial separation of `web_generator` from `web`.
- New IDL interface `RHL` added. `ExtendedAttribute` idl interface updated to
  expose its `rhs` property and `Interfacelike` idl interface updated to expose
  `extAttrs` property. The generator now adds a
  `JS(LegacyNamespace.$extensionTypeName)` annotation on `JS` objects if
  they've an IDL extended attribute `[LegacyNamespace=Foo]` defined in their IDL
  description.
- Added `--generate-all` option to generate all bindings, including experimental
  and non-standard APIs.
