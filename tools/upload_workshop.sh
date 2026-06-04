#!/usr/bin/env bash
# upload_workshop.sh — push the mod to Steam Workshop via steamcmd.
#
# Required because EU5 has no macOS build; can't use the in-game uploader.
# Author plays via Boosteroid; the mod must reach Workshop through CLI.
#
# Usage:   ./tools/upload_workshop.sh "Your changenote here"
# First-time run will prompt for password + Steam Guard; credentials are
# then cached by steamcmd for subsequent non-interactive runs.

set -euo pipefail

MOD_DIR="/Users/mohammadsoheilsadabadi/Library/Application Support/Steam/steamapps/workshop/content/3450310/3634535722"
BUILD_VDF="$MOD_DIR/build.vdf"
META_JSON="$MOD_DIR/.metadata/metadata.json"
STEAM_USER="soheils"

CHANGENOTE="${1:-Mod update}"

# Bump the patch component of metadata.json's version. Regex over a JSON parser
# to preserve the file's tab indentation and field ordering.
python3 - "$META_JSON" <<'PY'
import re, sys
path = sys.argv[1]
with open(path) as f:
    s = f.read()
m = re.search(r'("version"\s*:\s*")(\d+)\.(\d+)\.(\d+)(")', s)
if not m:
    sys.exit("metadata.json: version field not found")
major, minor, patch = int(m.group(2)), int(m.group(3)), int(m.group(4)) + 1
s = s[:m.start()] + f'{m.group(1)}{major}.{minor}.{patch}{m.group(5)}' + s[m.end():]
with open(path, "w") as f:
    f.write(s)
print(f"version bumped to {major}.{minor}.{patch}")
PY

# Rewrite the changenote line in build.vdf in place. Python over sed because
# the path has spaces and the changenote may contain special characters.
python3 - "$BUILD_VDF" "$CHANGENOTE" <<'PY'
import re, sys
path, note = sys.argv[1], sys.argv[2]
with open(path) as f:
    s = f.read()
s = re.sub(
    r'("changenote"\s*)"[^"]*"',
    lambda m: m.group(1) + '"' + note.replace('"', '\\"') + '"',
    s,
)
with open(path, "w") as f:
    f.write(s)
PY

steamcmd +login "$STEAM_USER" +workshop_build_item "$BUILD_VDF" +quit
