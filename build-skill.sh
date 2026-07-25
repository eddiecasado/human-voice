#!/usr/bin/env bash
# Rebuild human-voice-v1.skill from the current SKILL.md and LICENSE.
#
# SKILL.md is the file we edit; the .skill is a zipped package an agent loads.
# Run this after SKILL.md changes so the package matches, then commit the
# updated human-voice-v1.skill.
#
# Usage, from the repo root:
#   ./build-skill.sh

set -euo pipefail
cd "$(dirname "$0")"

if [ ! -f SKILL.md ]; then
  echo "SKILL.md not found. Run this from the repo root." >&2
  exit 1
fi

rm -f human-voice-v1.skill
# -X strips extra file attributes so the archive is reproducible.
zip -q -X human-voice-v1.skill SKILL.md LICENSE

echo "Rebuilt human-voice-v1.skill:"
unzip -l human-voice-v1.skill
