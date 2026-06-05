# NoCall 에이전트 핵심 운영 규칙

> 프로젝트: NoCall | KAIST KEI504 스타트업 마케팅 7조 | 최종 갱신: 2026-06-05
> 이 규칙은 루트 `CLAUDE.md`의 `llm_working_rules`를 확장하며, 모든 에이전트·LLM 세션에 적용됩니다.

---

## 규칙 1 — 파일 탐색 순서 (Navigation Order)

작업 시작 시 반드시 아래 순서로 컨텍스트를 로드한다.

1. `/Users/jycho/Developer/StartUp101/CLAUDE.md` — 루트 마스터 인덱스 (프로젝트 전체 구조·경로 파악)
2. `.claude/context/project-context.md` — 현재 상태 부트스트랩 (가설, 피벗 히스토리, 결정 사항)
3. 요청과 관련된 **해당 폴더의 `CLAUDE.md`** — 예: `customer-discovery/CLAUDE.md`
4. 실제 소스 파일 (key_artifacts 우선)

단계를 건너뛰거나 순서를 바꾸지 않는다. 컨텍스트 없이 소스 파일을 직접 읽는 것은 금지이다.

---

## 규칙 2 — 바이너리 파일 취급 (Binary Handling)

아래 확장자 파일은 LLM이 직접 읽을 수 없다. 반드시 대응 텍스트 버전을 사용한다.

| 파일 유형 | 접근 금지 경로 | 사용할 텍스트 대안 |
|---|---|---|
| 강의 녹음 (m4a) | `lectures/recordings-audio/*.m4a` | `lectures/recordings-transcripts/*_original.txt` (UTF-8 변환본 우선) |
| 강의 PDF | `lectures/pdfs/*.pdf` | `lectures/ocr-text/*.txt` |
| 발표 PPTX | `presentations/midterm/*.pptx` | `presentations/midterm/speech-drafts/*.md` 또는 `Evaluation_Template.md` |
| 인터뷰 녹취 원본 | `_internal/녹취록_원본_UTF16BE/*_original.txt` | `customer-discovery/interviews/transcripts/*_utf8.txt` |

**절대 열지 않을 경로:**
- `lectures/recordings-audio/` — 오디오 바이너리, 텍스트 없음
- `_internal/녹취록_원본_UTF16BE/` — UTF-16BE 인코딩 원본 (D1 결함 참조), `_utf8.txt` 사용

---

## 규칙 3 — 데이터 단일 출처 (Source of Truth)

**유일한 권위 있는 데이터셋:**
```
/Users/jycho/Developer/StartUp101/research/survey/raw-data/Startup101_B_Team7_Consumer_Survey.csv
```

- 모든 정량 수치 (n=46, 셀프 선호 21명, 직원 호출 33%, 바코드 오류 44% 등)는 위 CSV에서 직접 재생성한다.
- 기존 `.md` 파일(예: `research/survey/analysis/*.md`)의 수치를 그대로 복사하는 것을 금지한다. 수치가 stale할 수 있다.
- 분석 결과 `.md` 파일은 CSV에서 재계산한 후에만 덮어쓰기가 허용된다.
- 수치 인용 시 반드시 `(출처: Startup101_B_Team7_Consumer_Survey.csv, n=46)` 형태로 명기한다.

---

## 규칙 4 — `_internal/` 폴더 접근 금지 (Internal Skip)

`_internal/` 폴더는 `llm_skip: true`이다.

- `_internal/sb_publishable_token.txt` 등 API 토큰·인증 정보는 절대 읽거나 출력하거나 참조하지 않는다.
- `_internal/` 하위의 어떤 파일도 응답·분석·코드에 포함하지 않는다.
- 사용자가 해당 경로를 직접 요청할 경우, 접근 금지 이유를 설명하고 거절한다.

---

## 규칙 5 — 언어 사용 원칙 (Korean/English Usage)

2026-06-05 기준 폴더·파일명 영문화 완료.

- **모든 산출물·커뮤니케이션**: 한국어 기본 (보고서, 인사이트, 제안서, 메시지)
- **폴더/파일 경로**: 영문 실제 경로 사용. 예: `customer-discovery/personas/ICGC_Smart_Shopper.txt`
- **코드·기술 용어**: 영문 유지 (변수명, API, 프레임워크명 등)
- **경로 표기**: 반드시 절대경로 사용. 예: `/Users/jycho/Developer/StartUp101/research/survey/raw-data/`
- 상대경로(`./`, `../`) 사용 금지 — 혼동 방지

---

## 규칙 6 — 증거 기반 원칙 (Evidence Discipline: "No Evidence, No Strategy")

NoCall의 슬로건이자 팀의 핵심 운영 원칙이다.

**허용:**
- 실제 설문 응답 인용 시 `(출처: Startup101_B_Team7_Consumer_Survey.csv)` 명기
- 인터뷰 발언 인용 시 `(출처: customer-discovery/interviews/transcripts/[파일명].txt)` 명기
- 강의 내용 인용 시 `(출처: lectures/ocr-text/[파일명].txt)` 명기

**금지:**
- 근거 파일 경로 없는 수치·주장 제시 금지
- 솔루션·기능 우선 제안 금지 — 반드시 Pain Point 근거 확인 후 제안
- "~할 것 같다", "보통 이런 경우" 등 추측성 시장 규모 금지 (fabricated market size 금지)
- 미래 의향 질문("이 서비스를 사용하시겠습니까?") 기반 수요 추정 금지 — Mom Test 원칙 준수
- 인터뷰에서 얻지 않은 Pain을 창작하거나 과장하는 것 금지

---

## 규칙 7 — 중복 읽기 금지 (Dual-Format Deduplication)

동일 자료가 두 가지 포맷으로 존재할 때, 하나만 읽는다.

| 중복 쌍 | 읽을 것 | 읽지 말 것 |
|---|---|---|
| PDF + OCR 텍스트 | `lectures/ocr-text/*.txt` | `lectures/pdfs/*.pdf` |
| 녹취 UTF-8 + 원본 | `interviews/transcripts/*_utf8.txt` | `_internal/녹취록_원본_UTF16BE/*_original.txt` |
| CSV + 분석 .md | CSV (최신 수치 필요 시) | 분석 .md (수치 참조 목적 단독 사용 금지) |
| PPTX + speech-draft .md | `presentations/midterm/speech-drafts/*.md` | `presentations/midterm/*.pptx` |

---

## 규칙 8 — 증거 공백 명시 의무 (Evidence Gap Disclosure)

에이전트는 알려진 데이터 한계를 은폐하거나 축소하지 않는다. 분석·제안 시 반드시 아래 증거 공백을 명시한다.

### 확인된 주요 공백

1. **타깃 세그먼트 커버리지 부족 (n=4, 8.7%)**
   - 가설 타깃: "대형마트 + 피크타임 + 강한 대기 Pain"을 동시에 충족하는 응답자
   - 실제 CSV 데이터에서 이 조건을 동시 충족하는 응답자는 4명(8.7%)뿐
   - 50대 대형마트 이용자 추가 현장 인터뷰 3~5건이 필요하다고 판단됨
   - 이 공백을 메우기 전까지 ICGC Constraint의 50대 타깃 주장은 약근거 상태

2. **30분 대기 시간 과장 (3~6배 추정)**
   - ICGC 페르소나의 Constraint에 "최대 30분 대기"로 기술됨
   - 실제 설문 결과: 5~10분 대기 경험자 6명(13%), 3~5분 8명(17%), 3분 미만 69%
   - 실제 최장 대기는 5~10분 — 30분 주장은 3~6배 과장되어 있음
   - 솔루션 피치 시 30분 수치를 그대로 사용하는 것은 허위 주장에 해당

3. **Just Walk Out / 카트 실시간 가격 확인 수요 미검증**
   - ICGC Goal에 기술된 "Checkout-free", "카트 실시간 가격 확인" 기능에 대한 직접 언급은 설문·인터뷰 데이터에서 0건
   - 이 기능은 현재 근거 없는 가설 상태이며, 추가 인터뷰로 검증 전까지 MVP 핵심으로 제시 금지

4. **Mom Test 약점**
   - 현재 설문은 인식 질문 중심 ("불편하신 적 있으세요?")
   - 실제 낭비된 시간, 구매 포기 건수, 행동 기반 데이터는 수집되지 않음
   - 설문 인사이트를 행동 증거로 오인하여 사용하지 않도록 주의

에이전트는 이 공백을 보고서·발표 자료·전략 제안에서 반드시 명시하고, 현재 데이터로 커버되는 범위와 커버되지 않는 범위를 구분하여 제시한다.

---

---

## 규칙 9 — Python 패키지 관리 (uv 강제)

이 프로젝트에서 Python 패키지 설치 및 스크립트 실행은 반드시 `uv`를 사용한다.

| 작업 | 사용할 명령 | 금지 명령 |
|---|---|---|
| 패키지 설치 | `uv tool install <pkg>` | `pip install`, `pip3 install` |
| 일회성 실행 | `uvx <pkg> [args]` | `pipx run` |
| 스크립트 실행 | `uv run python script.py` | `python3 script.py` (패키지 의존 시) |
| 가상환경 생성 | `uv venv` | `python -m venv` |

**이유**: 재현 가능한 환경 보장, 시스템 Python 오염 방지, 속도.
`settings.json` deny 목록: `pip install*`, `pip3 install*`, `conda install*` 차단됨.

---

*이 규칙은 `/Users/jycho/Developer/StartUp101/CLAUDE.md`의 `llm_working_rules` 섹션을 공식 확장한다.*
*규칙 충돌 시 이 파일이 우선 적용된다.*
