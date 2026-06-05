# NoCall 2026-1학기 OKR
> 기준일: 2026-06-05 | 팀: KAIST KEI504 스타트업 마케팅 7조
> 슬로건: **"No Evidence, No Strategy"** — 증거 파일이 없는 KR은 무효 처리

---

## 원칙

- 모든 KR은 근거 파일(source file)을 명시해야 유효하다.
- 수치는 실제 수집된 데이터에서 추출한다. 추정치는 "(추정)" 표기 필수.
- 상태 플래그: `달성` / `진행중` / `미착수`

---

## O1. CPF(Customer-Problem Fit) 가설 확증

> **핵심 명제**: 오프라인 마트 셀프계산대의 직원호출 모순이 충분히 강한 Pain Point이며,
> 비대면·예약 기반 솔루션에 실제 수요가 존재한다.

### KR 1-1. 정량 증거 — 설문 n=46 분석 완료
- **목표**: 셀프 선호자 81% 불편 경험, 불편의 77%가 직원호출 귀결 구조를 데이터로 확정
- **현재 수치**:
  - 셀프 선호자 21명 중 17명(81%) 불편 경험 보고
  - 바코드 오류 44% + 직원호출 필요 33% = 복합 직원호출 귀결 77%
- **상태**: `달성` (2026-04-16 완료)
- **근거 파일**: `research/survey/analysis/Team7_Survey_Analysis_Insights.md`

### KR 1-2. 정성 증거 — 현장 인터뷰 5건 이상 확보 (Mom Test 기준)
- **목표**: Mom Test 기준 황금 인용(Golden Quote) 3개 이상 + Three Signals(Problem / Workaround / Budget) 확보
- **현재 상태**:
  - 20대 여성 인터뷰: 1건 완료
  - 30대 여성 인터뷰: 1건 완료
  - 60대 부부 인터뷰: 1건 완료
  - 인터뷰 4: 1건 완료
  - 인터뷰 5 (2026-05-11 현장 섭외): 1건 완료 (= 5건, 목표 달성)
- **상태**: `달성` (5/5건, 100%)
- **근거 파일**: `customer-discovery/interviews/transcripts/` 내 *_utf8.txt 5건
- **주의**: 황금 인용 확정 여부는 녹취록 분석 후 별도 문서화 필요

### KR 1-3. 타깃 세그먼트 커버리지 확대 — 50대 대형마트 현장 인터뷰 3-5건 추가
- **목표**: ICGC 가설 타깃(대형마트 + 저녁피크 + 대기Pain) 동시충족 세그먼트를 n=4(8.7%)에서 유의미 수준(목표 n=15 이상, 30%)으로 확대
- **배경**: 현재 설문 샘플이 20대(65%)·편의점(72%) 편향 — 실제 가설 타깃 세그먼트 커버 4명(8.7%)은 CPF 판정 불충분
- **세부 액션**:
  1. 50대 대형마트 이용자 현장 인터뷰 3-5건 확보 (미착수)
  2. 인터뷰 대상: 퇴근 후 오후 6-8시 마트 방문자, 셀프계산대 사용 경험자
  3. Mom Test 질문지 재활용: `customer-discovery/interviews/questionnaires/`
- **상태**: `미착수`
- **근거 파일**: `research/survey/analysis/Data_Analysis_Insights_Junyoung.md` (ICGC 정합성 검증 섹션)

### KR 1-4. 구조적 모순 명문화 — "셀프인데 직원호출" 역설 Three Signals 완성
- **목표**: Problem Signal(고통 발화) + Workaround Signal(우회 행동) + Budget Signal(시간·감정 비용 지불 의사) 각 1개 이상 현장 인터뷰에서 확인
- **현재 근거**:
  - Problem: "극 I라서 사람 대면하기가 두렵습니다" / "사람이 싫음. 부담이 있는데 셀프는 부담 없어서 좋음"
  - Workaround: "정문과 후문 계산대 줄 비교 후 빠른 쪽으로 바꾸기" / "오픈런으로 선제 회피"
  - Budget: 대기 경험자 7/7명(100%) 우회 행동 취함 → 시간 비용 지불 의사 간접 확인
- **상태**: `진행중` (Problem·Workaround 확보, Budget Signal 정성 강화 필요)
- **근거 파일**: `research/survey/analysis/Team7_Survey_Analysis_Insights.md` (인사이트 2, 3, 4)

---

## O2. MVP 수요검증 (Smoke Test) — 랜딩페이지 전환율 목표

> **핵심 명제**: NoCall 랜딩페이지 방문자 → 베타 사전등록 종합 전환율 **8% 이상** 달성 시 가설 확증.

### KR 2-1. 종합 전환율 8% 이상 달성 (가설 확증 임계선)
- **목표**: 방문자 → 베타 사전등록 완료 전환율 ≥ 8%
- **측정 방법**: 폼 제출 완료 수 / 총 랜딩페이지 방문자 수 × 100
- **현재 상태**: 랜딩페이지 미배포 (v0.dev 프롬프트 완성 단계)
- **상태**: `미착수`
- **근거 파일**: `product-design/System_Prompt_NoCall.md` (가설 검증 측정 지표 표)

### KR 2-2. 퍼널 단계별 중간 지표 달성
- **목표치** (모두 동시 충족 필요):

  | 단계 | 지표 | 목표 | 상태 |
  |---|---|---|---|
  | 광고 → 랜딩 | CTR | ≥ 3% | `미착수` |
  | 랜딩 → CTA 클릭 | Click-through | ≥ 25% | `미착수` |
  | CTA 클릭 → 폼 제출 | Conversion | ≥ 30% | `미착수` |
  | 체류 시간 | Median time on page | ≥ 30초 | `미착수` |
  | 스크롤 깊이 | 75% scroll 도달 비율 | ≥ 40% | `미착수` |

- **근거 파일**: `product-design/System_Prompt_NoCall.md` (가설 검증 측정 지표 표)

### KR 2-3. 최소 유효 트래픽 200 visitor 확보 (7일 이내)
- **목표**: 통계적 유의성 확보를 위한 최소 방문자 200명 (7일 기준)
- **배경**: 100명 미만 트래픽은 통계적 의미 없음 — 슬로건("No Evidence") 위반
- **확보 채널**:
  1. KAIST 커뮤니티 페이스북 / 에브리타임
  2. 카카오톡 광고 (소액 집행)
  3. 팀원 네트워크 직접 공유
- **상태**: `미착수`
- **근거 파일**: `product-design/System_Prompt_NoCall.md` (가설 검증 측정 지표 — 트래픽 주의사항)

### KR 2-4. 전환율 8% 미달 시 A/B 테스트 3 Variant 순차 가동
- **목표**: 8% 미달 판정 후 2주 이내 Variant B/C/D 순차 테스트 실행
- **Variant 정의**:
  - **B**: 헤드라인 → "셀프 계산대 90초, 매번 직원 호출에 막히시나요?"
  - **C**: CTA → "베타 신청" → "30초 무료 체험 신청"
  - **D**: Pain Mirror 섹션 위치 → Solution 다음으로 이동
- **조건**: variant당 n≥200, 통계적 유의성 p<0.05 확보 후 판정
- **상태**: `미착수` (전제 조건: KR 2-1 실패 시 가동)
- **근거 파일**: `product-design/System_Prompt_NoCall.md` (A/B 테스트 후속 계획)

---

## O3. 발표 성과 — Proof Day → Demo Day

> **핵심 명제**: 심재후 교수 평가 기준(ICGC 구체성·Mom Test·증거기반)을 충족하는
> 가설→검증→증거→CPF 판결 구조의 발표 자료를 완성한다.

### KR 3-1. Proof Day 중간발표 통과
- **목표**: 팀 7조 중간발표 제출 및 통과
- **상태**: `달성` (2026-05 완료)
- **근거 파일**: `presentations/midterm/final/Team7_Proof_Day_Midterm_Final.pptx`

### KR 3-2. 기말 Demo Day 발표 자료 완성 (가설→검증→증거→CPF 판결 구조)
- **목표**: 아래 4-파트 구조를 모두 갖춘 발표 덱 완성
  1. **가설 (Hypothesis)**: ICGC Smart Shopper 페르소나 + 셀프계산대 역설
  2. **검증 과정 (Validation)**: 설문 n=46 + 현장 인터뷰 5건 이상
  3. **증거 (Evidence)**: 황금 인용 3개+ / 직원호출 77% 구조 데이터 / Smoke Test 전환율
  4. **CPF 판결 (Verdict)**: Pivot A(셀프 완결) 또는 추가 검증 필요 선언
- **상태**: `미착수`
- **근거 파일**: `presentations/midterm/Evaluation_Template.md`, `lectures/ocr-text/Final_Presentation_Checklist.txt`

### KR 3-3. 심재후 교수 평가 기준 3항목 전원 충족
- **목표**: 다음 3개 기준 모두 "충족" 판정

  | 평가 기준 | 충족 조건 | 현재 상태 |
  |---|---|---|
  | ICGC 구체성 | 타깃이 "20~50대 비대면 선호 마트 쇼핑객" 수준이 아닌, 직원호출 모순 경험자로 좁혀진 구체 페르소나 제시 | `진행중` |
  | Mom Test 충족 | 인터뷰에서 미래 행동 약속이 아닌 과거 행동·지불 사실 확인 3건 이상 | `진행중` |
  | 증거 기반 주장 | 모든 수치 주장에 근거 파일 명시 (슬로건 "No Evidence, No Strategy" 준수) | `진행중` |

- **근거 파일**: `.claude/agents/professor-shim-evaluator.md`, `research/survey/analysis/Team7_Survey_Analysis_Insights.md`

---

## O4. 세그먼트 Pivot — 가설 타깃 재정의

> **핵심 명제**: 현재 설문 샘플 구조의 편향(20대 65%, 편의점 72%)을 인정하고,
> 데이터가 실제로 지지하는 세그먼트로 가설을 수정한다.

### KR 4-1. Pivot A 세그먼트 재정의 완료
- **목표**: 기존 ICGC("Just Walk Out" 목표, 최대 30분 대기 제약)를 데이터 지지 방향으로 수정
  - **수정 Identity**: "셀프를 선호하지만 바코드 오류·성인 인증으로 결국 직원 호출하는 비대면 선호 쇼핑객"
  - **수정 Goal**: "Just Walk Out" → "직원 개입 없이 셀프 계산 완결"
  - **수정 Constraints**: "최대 30분 대기" (3-6배 과장) → "3분 미만 대기도 직원호출 시 비대면 가치 훼손"
- **근거**: 가설 "최대 30분" vs 실제 "최장 5-10분(13%)" — 3-6배 과장 확인
- **상태**: `진행중` (분석 완료, 공식 문서화 미완)
- **근거 파일**: `research/survey/analysis/Data_Analysis_Insights_Junyoung.md` (ICGC 가설 vs 실제 정합성 검증 섹션)

### KR 4-2. 수정된 ICGC 페르소나 파일 갱신
- **목표**: `customer-discovery/personas/ICGC_Smart_Shopper.txt`를 Pivot A 반영 내용으로 업데이트
- **변경 핵심**:
  - Goal: "Checkout-free" → "직원 호출 0회 셀프 완결"
  - Constraints: "30분 대기" → "직원 개입 시 비대면 가치 훼손 (대기 시간 무관)"
- **상태**: `미착수`
- **근거 파일**: `customer-discovery/personas/ICGC_Smart_Shopper.txt` (현재 버전 — 갱신 필요)

---

## 진행 현황 요약

| Objective | 전체 KR | 달성 | 진행중 | 미착수 |
|---|---|---|---|---|
| O1. CPF 가설 확증 | 4 | 2 | 2 | 0 |
| O2. MVP Smoke Test | 4 | 0 | 0 | 4 |
| O3. 발표 성과 | 3 | 1 | 2 | 0 |
| O4. 세그먼트 Pivot | 2 | 0 | 1 | 1 |
| **합계** | **13** | **3** | **5** | **5** |

---

## 무효 KR 경고

> 아래 항목은 현재 근거 파일이 없어 "No Evidence, No Strategy" 원칙상 **무효** 상태입니다.
> 해당 KR을 진행하려면 반드시 근거 데이터·파일을 먼저 생성해야 합니다.

| KR | 누락 근거 | 조치 |
|---|---|---|
| O2 KR 2-1~2-4 | 랜딩페이지 미배포 → 실측 데이터 없음 | v0.dev 배포 후 Analytics 연결 필요 |
| O4 KR 4-2 | ICGC 파일 갱신 미완 | Pivot 결정 후 즉시 파일 업데이트 |

---

*최종 업데이트: 2026-06-05 (경로 전면 수정 + KR 1-2 달성 반영) | 작성: 조준영 (chojunyoung070523@gmail.com)*
*본 문서는 `.claude/context/` 인프라 파일 — LLM 컨텍스트 로딩용*
