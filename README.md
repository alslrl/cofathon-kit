# cofathon-kit

AI 코딩 에이전트(Codex)용 개인 작업 지침입니다. 과하게 만들지 않고, 요청한 범위만 단순하게 구현하도록 하는 규칙을 담았습니다.

## 설정 (작업 폴더 루트에서)

```bash
git clone --depth 1 https://github.com/alslrl/cofathon-kit .kit && bash .kit/setup.sh
```

`setup.sh`가 하는 일: `.kit/AGENTS.md`의 내용을 작업 폴더의 `AGENTS.md` 끝에 덧붙이고(없으면 새로 만듭니다), `REQUIREMENTS.md`와 `INTERVIEW.md`가 없으면 템플릿에서 복사합니다. 이미 있는 파일은 건드리지 않습니다. 작업 폴더가 git 저장소면 `.kit/`를 `.git/info/exclude`에 넣어 커밋에서 빠지게 합니다.

설정 후 Codex를 다시 실행해야 지침을 읽습니다.

## 들어 있는 것

- `AGENTS.md`: 작업 원칙과 규칙 (Codex가 자동으로 읽음)
- `templates/`: 요구사항 표, 계획, 담당자 대화, 검증 방법 절의 모양
- `guides/`: 인터뷰 방법(interview.md), 서술형 대비 문서 형식(qa-prep.md), 과제 지도(task-map.md). 필요한 세션만 읽음
- `.agents/skills/handoff/`: 새 세션 인수인계 문서 작성 스킬 (참고용, `setup.sh`는 설치하지 않음)

과제 결과물이나 정답 코드는 들어 있지 않습니다.
