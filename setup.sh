#!/usr/bin/env bash
set -e
KIT="$(cd "$(dirname "$0")" && pwd)"
{ [ -s AGENTS.md ] && printf '\n\n'; cat "$KIT/AGENTS.md"; } >> AGENTS.md
mkdir -p .agents/skills
cp -R "$KIT/.agents/skills/." .agents/skills/
echo "done: AGENTS.md updated, skills -> .agents/skills ($(ls "$KIT/.agents/skills" | tr '\n' ' '))"
echo "Codex를 다시 실행하세요."
