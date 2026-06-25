#!/usr/bin/env bash
# upload_workshop.sh — push the mod to Steam Workshop via steamcmd.
#
# Required because EU5 has no macOS build; can't use the in-game uploader.
# Author plays via Boosteroid; the mod must reach Workshop through CLI.
#
# Usage:   ./tools/upload_workshop.sh "Your changenote here"
# Dry run: DRY_RUN=1 ./tools/upload_workshop.sh "note"
# DRY_RUN=0 ./tools/upload_better.sh "note"
# -> stages everything, prints what would ship, skips steamcmd,
# does NOT bump the version, and leaves the staging dir in place.
# First-time real run will prompt for password + Steam Guard; credentials are
# then cached by steamcmd for subsequent non-interactive runs.
set -euo pipefail
MOD_DIR="/Users/mohammadsoheilsadabadi/Documents/Paradox Interactive/Europa Universalis V/mod/wip-pers-world"
SRC_VDF="$MOD_DIR/build.vdf"
META_JSON="$MOD_DIR/.metadata/metadata.json"
STEAM_USER="soheils"
CHANGENOTE="${1:-Mod update}"
DRY_RUN="${DRY_RUN:-0}"
STAGING_ROOT="/Users/mohammadsoheilsadabadi/Documents/mod_staging"

# Whitelist: only these are actual mod content. Everything else in MOD_DIR
# (.claude, .idea, .vscode, docs/, tools/, .gitignore, build.vdf, CLAUDE.md)
# is dev tooling and must not ship to the Workshop. As the mod grows, add new
# game directories (gfx, common, events, localization, ...) to this list.
INCLUDE=(
    .metadata
    in_game
    main_menu
)

# A workshop_build_item upload ships the ENTIRE contentfolder — the item VDF
# has no per-file exclude. So instead of pointing steamcmd at MOD_DIR, we copy
# the whitelist into a throwaway staging dir and upload that.
mkdir -p "$STAGING_ROOT"
STAGE_DIR="$(mktemp -d "$STAGING_ROOT/wip-pers-world.XXXXXX")"
STAGE_VDF="$(mktemp "$STAGING_ROOT/build.vdf.XXXXXX")"

# On a dry run, leave the staged files so they can be inspected; otherwise
# clean up on exit (success or failure).
cleanup() {
    if [[ "$DRY_RUN" == "1" ]]; then
        echo "dry-run: staging dir left in place: $STAGE_DIR" >&2
        echo "dry-run: staged vdf left in place:   $STAGE_VDF" >&2
    else
        rm -rf "$STAGE_DIR" "$STAGE_VDF"
    fi
}
trap cleanup EXIT

# Bump the patch component of metadata.json's version (the source of truth in
# MOD_DIR, so the bump persists across runs). Skipped on dry runs so repeated
# previews don't inflate the version. Regex over a JSON parser to preserve the
# file's tab indentation and field ordering.
if [[ "$DRY_RUN" != "1" ]]; then
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
else
    echo "dry-run: skipping version bump"
fi

# Copy only the whitelisted content into the staging dir.
for item in "${INCLUDE[@]}"; do
    src="$MOD_DIR/$item"
    if [[ ! -e "$src" ]]; then
        echo "warning: '$item' not found in MOD_DIR, skipping" >&2
        continue
    fi
    cp -R "$src" "$STAGE_DIR/"
done

# Build a throwaway VDF: copy the real build.vdf so every other field (title,
# description, visibility, previewfile, ids) is preserved verbatim, then point
# contentfolder at the staging dir and rewrite the changenote. Python over sed
# because paths have spaces and the changenote may contain special characters.
cp "$SRC_VDF" "$STAGE_VDF"
python3 - "$STAGE_VDF" "$STAGE_DIR" "$CHANGENOTE" <<'PY'
import re, sys
path, content, note = sys.argv[1], sys.argv[2], sys.argv[3]
with open(path) as f:
    s = f.read()
s = re.sub(r'("contentfolder"\s*)"[^"]*"',
           lambda m: m.group(1) + '"' + content.replace('"', '\\"') + '"', s)
s = re.sub(r'("changenote"\s*)"[^"]*"',
           lambda m: m.group(1) + '"' + note.replace('"', '\\"') + '"', s)
with open(path, "w") as f:
    f.write(s)
PY

if [[ "$DRY_RUN" == "1" ]]; then
    echo "=== dry run: staged contents (would be uploaded) ==="
    find "$STAGE_DIR" -maxdepth 2 -mindepth 1 | sort
    echo "=== resolved fields in staged build.vdf ==="
    grep -E '"(contentfolder|changenote)"' "$STAGE_VDF" || true
    echo "=== skipping steamcmd upload ==="
else
    steamcmd +login "$STEAM_USER" +workshop_build_item "$STAGE_VDF" +quit
fi