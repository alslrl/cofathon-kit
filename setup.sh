#!/usr/bin/env bash
set -e
KIT="$(cd "$(dirname "$0")" && pwd)"
{ [ -s AGENTS.md ] && printf '\n\n'; cat "$KIT/AGENTS.md"; } >> AGENTS.md
echo "done: AGENTS.md updated"
echo "Codex를 다시 실행하세요."
