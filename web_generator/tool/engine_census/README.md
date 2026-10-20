# Browser Engine WebIDL Census

These scripts compare `@webref/idl` against the shipping WebIDL and feature-flag
definitions of Blink (Chromium), Gecko (Firefox), and WebKit (Safari) to audit
and maintain `js_interop_gen/lib/src/engine_overrides.json`.

## Prerequisites

- `node` (with `npm install` completed in `web_generator/`).
- `python3` with `PyYAML` (`import yaml`) for parsing Gecko and WebKit YAML
  preference files.

## Quick start

Run from `web_generator/`:

```shell
# 1. Fetch or update sparse checkouts of Blink, Gecko, and WebKit in ~/.cache/engine_idl
#    at the refs pinned in js_interop_gen/lib/src/engine_overrides.json:
bash tool/engine_census/fetch.sh

# 2. Parse all 4 corpora (webref, blink, gecko, webkit) into .dart_tool/engine_census/:
node tool/engine_census/parse.js

# 3. Compare engine IDLs against @webref/idl:
node tool/engine_census/compare.js

# 4. Render .dart_tool/engine_census/SUMMARY.md:
node tool/engine_census/report.js
```

## Inspecting a specific member (`lookup.js`)

After running `parse.js`, query any `Interface.member` across all 4 corpora:

```shell
node tool/engine_census/lookup.js MouseEvent.clientX Element.scroll OfflineAudioContext.startRendering
```

## Outputs (`.dart_tool/engine_census/`)

- `webref.json`, `blink.json`, `gecko.json`, `webkit.json`: Normalized interface,
  mixin, dictionary, enum, and typedef maps with feature-flag gating (`on`,
  `off`, `unknown`).
- `members_all.json`: Per-member signature matrix across all 4 corpora.
- `disagreements.json`: Structured diffs (`agreeVsWebref`, `extraInEngines`,
  `missingInEngines`, `typeDiffs`).
- `SUMMARY.md`: Human-readable Markdown report ranked by disagreement class
  (`int-vs-float`, `nullability`, `optionality`, `arity`, `return`, etc.).

## Updating browser engine revisions

To roll the baseline to newer Chrome, Firefox, or Safari tags:

1. Update the `revisions` block (`version` and `ref`) in
   `js_interop_gen/lib/src/engine_overrides.json`.
2. Run `bash tool/engine_census/fetch.sh` and copy the printed commit SHAs into
   `revisions.<engine>.sha` in `js_interop_gen/lib/src/engine_overrides.json`.
3. Re-run `parse.js`, `compare.js`, and `report.js` to audit new divergences,
   then run `dart bin/update_idl_bindings.dart` to refresh `web_generator/README.md`
   and `web/tool/api.txt`.
