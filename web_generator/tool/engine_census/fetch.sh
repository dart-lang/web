#!/usr/bin/env bash
# Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
# for details. All rights reserved. Use of this source code is governed by a
# BSD-style license that can be found in the LICENSE file.

# Fetches or updates sparse checkouts of Blink (Chromium), Gecko (Firefox),
# and WebKit (Safari) WebIDL and feature-flag files in ~/.cache/engine_idl.
#
# By default, reads pinned engine refs from
# js_interop_gen/lib/src/engine_overrides.json. Override with BLINK_REF,
# GECKO_REF, WEBKIT_REF, or ENGINE_IDL_CACHE environment variables.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OVERRIDES_JSON="$SCRIPT_DIR/../../../js_interop_gen/lib/src/engine_overrides.json"
CACHE_DIR="${ENGINE_IDL_CACHE:-$HOME/.cache/engine_idl}"

read_ref() {
  node -e "
    const fs = require('fs');
    const j = JSON.parse(fs.readFileSync(process.argv[1], 'utf8'));
    console.log(j.revisions[process.argv[2]].ref);
  " "$OVERRIDES_JSON" "$1"
}

BLINK_REF="${BLINK_REF:-$(read_ref blink)}"
GECKO_REF="${GECKO_REF:-$(read_ref gecko)}"
WEBKIT_REF="${WEBKIT_REF:-$(read_ref webkit)}"

mkdir -p "$CACHE_DIR"

sync_engine() {
  local dir="$1"
  local url="$2"
  local ref="$3"
  shift 3
  local repo_dir="$CACHE_DIR/$dir"

  if [[ ! -d "$repo_dir/.git" ]]; then
    git clone --filter=blob:none --no-checkout --depth 1 --branch "$ref" "$url" "$repo_dir"
    git -C "$repo_dir" sparse-checkout init --no-cone
    printf '%s\n' "$@" > "$repo_dir/.git/info/sparse-checkout"
    git -C "$repo_dir" checkout "$ref"
  else
    printf '%s\n' "$@" > "$repo_dir/.git/info/sparse-checkout"
    local cur_head target_head
    cur_head="$(git -C "$repo_dir" rev-parse HEAD 2>/dev/null || true)"
    target_head="$(git -C "$repo_dir" rev-parse --verify --quiet "$ref^{commit}" 2>/dev/null || true)"
    if [[ -z "$target_head" || "$cur_head" != "$target_head" ]]; then
      git -C "$repo_dir" fetch --filter=blob:none --depth 1 origin "$ref"
      git -C "$repo_dir" checkout FETCH_HEAD
    else
      git -C "$repo_dir" sparse-checkout reapply
    fi
  fi
  echo "$dir ($ref): $(git -C "$repo_dir" rev-parse HEAD)"
}

sync_engine blink https://github.com/chromium/chromium.git "$BLINK_REF" \
  '/third_party/blink/renderer/**/*.idl' \
  '/third_party/blink/renderer/platform/runtime_enabled_features.json5' \
  '/content/child/runtime_features.cc' \
  '/content/public/common/content_features.cc' \
  '/third_party/blink/common/features.cc' \
  '/services/network/public/cpp/features.cc' \
  '/media/base/media_switches.cc' \
  '/ui/base/ui_base_features.cc' \
  '/device/base/features.cc' \
  '/third_party/blink/common/features_generated.cc' &

sync_engine gecko https://github.com/mozilla-firefox/firefox.git "$GECKO_REF" \
  '/dom/webidl/*.webidl' \
  '/modules/libpref/init/StaticPrefList.yaml' \
  '/modules/libpref/init/all.js' \
  '/browser/app/profile/firefox.js' &

sync_engine webkit https://github.com/WebKit/WebKit.git "$WEBKIT_REF" \
  '/Source/WebCore/**/*.idl' \
  '/Source/WTF/Scripts/Preferences/*.yaml' \
  '/Source/WebCore/Configurations/Version.xcconfig' \
  '/Source/WebKit/Configurations/Version.xcconfig' \
  '/Source/WTF/wtf/PlatformEnable*.h' \
  '/Source/WTF/wtf/PlatformHave*.h' \
  '/Configurations/Version.xcconfig' &

wait
