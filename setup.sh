#!/usr/bin/env bash
set -e
KIT="$(cd "$(dirname "$0")" && pwd)"
{ [ -s AGENTS.md ] && printf '\n\n'; cat "$KIT/AGENTS.md"; } >> AGENTS.md
for f in REQUIREMENTS.md INTERVIEW.md; do
  [ -e "$f" ] || cp "$KIT/templates/$f" "$f"
done
if [ -d .git ]; then
  mkdir -p .git/info
  grep -qxF '.kit/' .git/info/exclude 2>/dev/null || echo '.kit/' >> .git/info/exclude
fi
echo "done: AGENTS.md updated, REQUIREMENTS.md·INTERVIEW.md ready, .kit/ excluded from git"
echo "Codex를 다시 실행하세요."
