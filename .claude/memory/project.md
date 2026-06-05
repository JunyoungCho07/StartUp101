# NoCall 프로젝트 — 지속 메모리 파일
> 최초 작성: 2026-06-05 | 업데이트 주기: 가설 상태 또는 주요 결정 변경 시마다 수정
> Source: KAIST StartUp101-B, 7조 | 담당자: 조준영 (chojunyoung070523@gmail.com)

---

> **편집 지침**: 이 파일은 에이전트가 세션 간 지식을 누적하는 living document입니다.
> - 새 항목 추가 시: 기존 내용을 삭제하지 말고 **아래에 append** 하세요.
> - 기존 항목 수정 시: 날짜와 근거를 함께 기록하세요.
> - 가설 상태, 검증 결과, 주요 결정이 바뀔 때마다 해당 섹션을 업데이트하세요.

---

## 1. 가설 현황 (Hypothesis Status)

### 핵심 가설
> "오프라인 마트의 계산 대기 / 셀프계산대 직원호출 모순이 충분히 강한 Pain Point이며,
>  비대면·예약 기반 솔루션이 수요를 가진다"

| 구분 | 상태 | 근거 | 날짜 |
|---|---|---|---|
| 셀프계산대 직원호출 모순 존재 | **정량 부분지지** | 셀프 선호자 21명 중 17명(81%) 불편 경험; 불편의 77%가 직원호출로 귀결 | 2026-04-16 |
| 비대면 선호 동기 | **확인됨** | "사람과 상호작용하기 싫어서" 응답 다수 (인사이트 4) | 2026-04-16 |
| 대기 시간 Pain 강도 | **과장 수정 필요** | 가설 30분 vs 실제 최장 5~10분(13%) — 3~6배 과장 | 2026-04-16 |
| MVP 수요검증 (8% 전환율) | **미실시 (TBD)** | v0.dev 랜딩페이지 smoke test 계획 수립됨, 아직 트래픽 미집행 | TBD |
| Just Walk Out / Checkout-free 수요 | **근거 없음** | 설문 n=46 중 직접 언급 0건 | 2026-04-16 |

### 데이터가 가리키는 방향
데이터는 **경로 A — Pivot** 을 강하게 지지함.

- **경로 A (Pivot — 권장)**: 타깃을 "셀프 선호하지만 반복적 오류로 직원 호출 강요되는 쇼핑객"으로 재정의. 직원 개입 0회 셀프 완결을 핵심 Goal로 설정. 지지 근거: 셀프 선호자 81% 불편, 불편의 77%가 동일 구조적 모순 (바코드 44% + 직원호출 33%).
- **경로 B (Persevere — 현재 데이터로 불가)**: 50대 대형마트 세그먼트 커버리지 n=4(8.7%)로 통계적 근거 불충분.

*Source: `/Users/jycho/Developer/StartUp101/research/survey/` (분석 결과)*

---

## 2. 검증된 인사이트 (Validated Insights)

### 인사이트 V-1: 셀프 역설 (Self-Checkout Paradox)
- **날짜**: 2026-04-16
- **수치**: 셀프 선호자 21명 중 17명(81%)이 불편 경험 보고
- **해석**: 이들은 셀프를 "좋아서"가 아닌 "덜 나쁜 선택지"로 사용 중
- **Source**: `02_Customer_Discovery/Surveys/Team7_Survey_Analysis_Insights.md`

### 인사이트 V-2: 불편의 구조적 동일성
- **날짜**: 2026-04-16
- **수치**: 불편의 77% = 바코드 인식 오류(44%) + 직원 호출 필요(33%) → 둘 다 직원 호출로 귀결
- **추가**: 주류·성인인증(15%) + 취소/환불(11%)도 직원 호출 귀결 = 셀프의 본질 가치(비대면·자율성) 훼손
- **핵심 구조**: "셀프 계산대인데 결국 직원이 필요하다" — 이 모순이 NoCall의 존재 이유
- **Source**: `02_Customer_Discovery/Surveys/Team7_Survey_Analysis_Insights.md`

### 인사이트 V-3: 20대 셀프 선호 동기 = 사회적 마찰 회피
- **날짜**: 2026-04-16
- **수치**: 비대면/심리 축 응답 18건 중 11건이 사회적 마찰 회피 동기
- **핵심 인용**:
  - "극 I라서 사람 대면하기가 두렵습니다"
  - "사람이 싫음. 직원이 계산해줄 때 부담이 있는데, 셀프는 그런 부담이 없어서 좋음."
  - "직원이 불친절하면 기분이 나빠서..."
- **솔루션 방향**: "속도"보다 "직원 개입 최소화"가 더 강력한 가치 제안 — **UVP 재정의 결정의 근거**
- **Source**: `02_Customer_Discovery/Surveys/Team7_Survey_Analysis_Insights.md`

### 인사이트 V-4: 대기 Pain은 50대 + 대형·창고형 매장에 집중
- **날짜**: 2026-04-16
- **수치**: 대기 길다고 느낀 경험자 7명 전원 우회 행동 취함 (100%)
- **우회 행동 유형**: 줄 바꾸기, 온라인(쿠팡 등) 활용, 오픈런, 피크 시간 회피
- **숨겨진 Pain 2건 추가 확인**:
  - 여성/50대: "대기시간이 길어질까싶어 사람이 덜 모이는 오픈런 합니다" → 선제 회피 = 더 강한 Pain
  - 여성/20대: "정문과 후문의 계산대 대기 줄을 비교하고 더 빠른 곳으로 바꾸기" → 최적화 행동 내면화
- **주의**: 이 세그먼트(50대+대형마트) 샘플 n=4(8.7%) — 현재 커버리지 극히 부족
- **Source**: `02_Customer_Discovery/Surveys/Team7_Survey_Analysis_Insights.md`

---

## 3. 미해결 질문 (Open Questions)

| # | 질문 | 우선순위 | 해결 방법 | 기한 |
|---|---|---|---|---|
| OQ-1 | 50대 대형마트 이용자 현장 인터뷰 부족 (n=4, 8.7% 커버리지) — 이 세그먼트 Pain이 실제로 유효한가? | 높음 | 현장 인터뷰 3~5건 추가 실시 | TBD |
| OQ-2 | 실제 낭비된 시간·구매 포기 행동 미측정 (Mom Test 약점: 인식 질문 중심) | 높음 | 후속 인터뷰에서 "마지막으로 계산 대기 때문에 구매를 포기한 적이 언제?" 질문 포함 | TBD |
| OQ-3 | 누가 돈을 내는가? (마트 본사 B2B vs 쇼핑객 B2C) — 비즈니스 모델 미정 | 높음 | 수익 모델 섹션 별도 결정 필요 | TBD |
| OQ-4 | Just Walk Out / Checkout-free 수요 근거 0건 — ICGC Goal 재정의 필요한가? | 중간 | ICGC 페르소나 Goal 섹션 수정 (현재 v1 기준 과도하게 낙관적) | TBD |
| OQ-5 | ICGC Constraint "최대 30분 대기" 가정 3~6배 과장 — 실제 대기 Pain 임계값은 몇 분인가? | 중간 | 후속 설문 또는 인터뷰에서 "몇 분 이상이면 포기하겠냐?" 직접 질문 | TBD |
| OQ-6 | MVP 수요검증: v0.dev 랜딩페이지 8% 전환율 달성 가능한가? | 높음 | 최소 200 visitor 확보 후 측정 (카카오톡 광고 또는 KAIST 커뮤니티) | TBD |

*Source: `02_Customer_Discovery/Surveys/Data_Analysis_Insights_Junyoung.md`*

---

## 4. 핵심 결정 로그 (Decisions Log)

### D-1: NoCall UVP 재정의 — '속도'에서 '직원 개입 최소화'로
- **날짜**: 2026-05-08 (System_Prompt_NoCall.md 작성 시점 반영)
- **결정**: 핵심 가치 제안을 "빠른 계산"에서 "직원 호출 0회 셀프 완결"로 재정의
- **근거**: 인사이트 V-3 — 20대 동기는 속도가 아닌 사회적 마찰 회피; "셀프인데 직원 불러야 함" 모순 해소가 더 강력
- **영향**: v0.dev 랜딩페이지 헤드라인 = "셀프 계산대인데, 왜 매번 직원을 부르게 될까요?"
- **Source**: `/Users/jycho/Developer/StartUp101/product-design/System_Prompt_NoCall.md`

### D-2: v0.dev Smoke Test로 수요검증 채택
- **날짜**: 2026-05-08
- **결정**: MVP 없이 랜딩페이지 + 베타 사전등록 전환율(목표 8% 이상)로 수요 검증 먼저 실시
- **검증 지표**:
  - 방문자 → 등록 종합 전환율 8% 이상 → 가설 확증
  - 체류 시간 Median 30초 이상, 75% 스크롤 40% 이상
- **상태**: 랜딩페이지 프롬프트 완성, 트래픽 미집행
- **Source**: `/Users/jycho/Developer/StartUp101/product-design/System_Prompt_NoCall.md`

### D-3: 녹취록 인코딩 결함 해결 (D1 resolved)
- **날짜**: 2026-05-15
- **결정**: 녹취록 4개 _original.txt 파일이 UTF-16 BE 인코딩이었음. `iconv -f UTF-16BE -t UTF-8`로 변환 → `*_utf8.txt` 생성. 원본은 `_internal/녹취록_원본_UTF16BE/` 보존
- **Source**: `CLAUDE.md` resolved_defects D1

### D-4: 전체 폴더명 영문화 완료
- **날짜**: 2026-06-05
- **결정**: 한국어 폴더명 → 영어로 전면 통일. 모든 CLAUDE.md 파일 경로 참조 수정 완료
- **영향 경로**:
  - `02_Customer_Discovery/` → `customer-discovery/`
  - `01_Lecture_Materials/` → `lectures/`
  - `04_Midterm_Presentation/` → `presentations/midterm/`
  - `06_Product_Design_v0/` → `product-design/`
  - `03_Survey_Design/` + `05_Analysis_Results/` → `research/`
- **Source**: `CLAUDE.md` reorg_log 2026-06-05

### D-5: Proof Day 중간발표 제출 완료
- **날짜**: 2026-06-05 이전 (정확한 날짜 미기록)
- **결정**: `presentations/midterm/` 폴더에 최종본 저장. 루트 잔존 파일 → Working_Drafts/로 이동 (D2 resolved)
- **Source**: `CLAUDE.md` resolved_defects D2 + reorg_log

---

## 5. 다음 액션 (Next Actions)

| 액션 | 담당 | 우선순위 | 기한 |
|---|---|---|---|
| v0.dev 랜딩페이지 배포 + 트래픽 200명 확보 | 조준영 | 긴급 | TBD |
| 50대 대형마트 이용자 현장 인터뷰 3~5건 실시 | 조준영 | 높음 | TBD |
| ICGC 페르소나 Goal + Constraint 섹션 수정 (Just Walk Out 제거, 대기시간 30분 → 실제값) | 조준영 | 중간 | TBD |
| Mom Test 후속 질문지: 실제 낭비 시간·구매 포기 측정 항목 추가 | 조준영 | 높음 | TBD |
| 비즈니스 모델 결정: B2B(마트) vs B2C(쇼핑객) vs 하이브리드 | 팀 전체 | 높음 | TBD |

---

*최종 업데이트: 2026-06-05 | 담당: Claude (자동 생성) + 조준영 (확인)*
