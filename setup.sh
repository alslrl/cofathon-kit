#!/usr/bin/env bash
set -e
KIT="$(cd "$(dirname "$0")" && pwd)"
{ [ -s AGENTS.md ] && printf '\n\n'; cat "$KIT/AGENTS.md"; } >> AGENTS.md
for f in REQUIREMENTS.md INTERVIEW.md; do
  [ -e "$f" ] || cp "$KIT/templates/$f" "$f"
done
if [ -d .git ]; then
  { mkdir -p .git/info && { grep -qxF '.kit/' .git/info/exclude 2>/dev/null || echo '.kit/' >> .git/info/exclude; }; } 2>/dev/null \
    || echo "note: .git/info/exclude에 쓰지 못했습니다. .kit/는 커밋하지 마세요."
  if [ -z "$(git config user.name 2>/dev/null)" ] || [ -z "$(git config user.email 2>/dev/null)" ]; then
    { git config user.name "Seho Sohn (Codex)" && git config user.email codex@localhost; } 2>/dev/null \
      && echo "note: 이 폴더에만 git 사용자 설정을 넣었습니다." \
      || echo "note: git 사용자 설정을 넣지 못했습니다."
  fi
fi
echo "done: AGENTS.md updated, REQUIREMENTS.md·INTERVIEW.md ready, .kit/ excluded from git"
echo "Codex를 다시 실행하세요."
