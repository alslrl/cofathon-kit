# cofathon-kit

AI 코딩 에이전트(Codex)용 개인 작업 지침입니다. 과하게 만들지 않고, 요청한 범위만 단순하게 구현하도록 하는 규칙을 담았습니다.

## 설정 (작업 폴더 루트에서)

```bash
git clone --depth 1 https://github.com/alslrl/cofathon-kit .kit && bash .kit/setup.sh
```

`setup.sh`가 하는 일: `.kit/AGENTS.md`의 내용을 작업 폴더의 `AGENTS.md` 끝에 덧붙입니다(없으면 새로 만듭니다).

설정 후 Codex를 다시 실행해야 지침을 읽습니다.

## 들어 있는 것

- `AGENTS.md`: 작업 원칙과 규칙 (Codex가 자동으로 읽음)
- `.agents/skills/handoff/`: 새 세션 인수인계 문서 작성 스킬 (참고용, `setup.sh`는 설치하지 않음)

과제 결과물이나 정답 코드는 들어 있지 않습니다.
