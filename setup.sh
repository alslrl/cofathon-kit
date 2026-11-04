#!/usr/bin/env bash
set -e
KIT="$(cd "$(dirname "$0")" && pwd)"
{ [ -s AGENTS.md ] && printf '\n\n'; cat "$KIT/AGENTS.md"; } >> AGENTS.md
for f in REQUIREMENTS.md INTERVIEW.md; do
  [ -e "$f" ] || cp "$KIT/templates/$f" "$f"
done
echo "done: AGENTS.md updated, REQUIREMENTS.md·INTERVIEW.md ready"
echo "Codex를 다시 실행하세요."
