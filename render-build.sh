#!/usr/bin/env bash
set -euo pipefail

rm -rf dist
mkdir -p dist
cp public/index.html public/copilot.svg dist/

if [[ -n "${LOCATOR_TARGET_B64:-}" ]]; then
  printf '%s' "$LOCATOR_TARGET_B64" | base64 --decode > dist/target.json
else
  printf '%s\n' '{"active":false,"url":null,"updatedAt":"","generation":0}' > dist/target.json
fi

