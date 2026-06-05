# NoCall 프로젝트 — 마스터 부트스트랩 컨텍스트

> 이 문서는 에이전트가 작업 시작 시 가장 먼저 읽어야 하는 핵심 컨텍스트입니다.
> 루트 CLAUDE.md → 이 파일 → 폴더별 CLAUDE.md → 실제 파일 순서로 읽으십시오.

---

## 프로젝트 정체성

```yaml
project:
  name: NoCall (노콜)
  course: KAIST StartUp101(B) HSS.20117
  team: 7조 (Team 7)
  semester: 2026-1학기
  stage: CPF (Customer Problem Fit) — 고객발견 → 가설검증

team:
  member: 조준영 (Junyoung Cho)
  email: chojunyoung070523@gmail.com
  professors:
    - 심재후
    - 형용준

domain:
  focus: 오프라인 마트 / 셀프계산대 / 대기시간 페인포인트
  slogan: "No Evidence, No Strategy"

core_hypothesis: |
  오프라인 마트의 계산 대기 / 셀프계산대 직원호출 모순이 충분히 강한
  Pain Point이며, 비대면·예약 기반 솔루션이 수요를 가진다
```

---

## 핵심 검증 인사이트 (n=46 설문 기반)

### 인사이트 1 — 셀프 계산대 역설 (81%)

- **핵심 수치**: 셀프 선호자 21명 중 17명(**81%**)이 불편 경험 보고
- 셀프를 "좋아서"가 아닌 "덜 나쁜 선택지"로 사용 중
- 동기 두 축: 속도/편의 vs **비대면·심리적 마찰 회피 (Social Friction Avoidance)**
- 진짜 동기는 기술 친화성이 아닌 **사회적 상호작용 회피**

### 인사이트 2 — Pain Point 카테고리 분포

| 불편 카테고리 | 건수 | 비율 |
|---|---|---|
| 바코드/인식 오류 | 12 | **44%** |
| 직원 호출 필요 | 9 | **33%** |
| 상품권/쿠폰 처리 어려움 | 4 | 15% |
| 주류/성인인증 | 4 | 15% |
| 취소/환불 불편 | 3 | 11% |
| 정확성 불안(누락 불안) | 3 | 11% |

**구조적 모순**: "셀프 계산대인데 결국 직원이 필요하다" — 바코드 오류(44%), 주류·성인인증(15%), 취소(11%) 세 카테고리 모두 직원 호출로 귀결. 셀프의 본질적 가치(비대면·자율성)를 훼손.

### 인사이트 3 — 대기 Pain 집중 세그먼트

- 대기 길다고 느낀 경험자: 7명 (전체의 15%)
- **7명 전원(100%)** 우회 행동 취함 (줄 바꾸기, 쿠팡 활용, 오픈런, 피크 시간 회피)
- 세그먼트: **50대 + 대형·창고형 매장** 집중
- 숨겨진 Pain 2명 추가 확인 (선제 회피 = 더 강한 Pain 신호)

### 인사이트 4 — 20대 셀프 선호의 심리적 핵심: 비대면

- 핵심 동기: **속도가 아닌 비대면 심리**
- 원문 인용: "극 I라서 사람 대면하기가 두렵습니다" / "사람이 싫음" / "직원이 불친절하면 기분이 나빠서..."
- 솔루션 방향: "속도"보다 "직원 개입 최소화"가 더 강력한 가치 제안

---

## ICGC 가설 vs 실데이터 미스매치

```yaml
icgc_validation:
  Identity:
    hypothesis: "기술 친화적 스마트 쇼핑객"
    actual: "사회적 마찰 회피 동기 — 기술 친화성 아님"
    verdict: 부분 지지, 페르소나 정의 수정 필요

  Context:
    hypothesis: "대형마트 + 저녁 피크 + 강한 Pain을 동시 충족하는 타깃"
    actual: "가설 타깃 동시 충족자 단 4명 (n=46의 8.7%)"
    verdict: 가장 심각한 미스매치 — 샘플 커버리지 부족

  Constraints:
    hypothesis: "최대 30분 대기 시간 감내"
    actual: "실제 최장 대기 5~10분 (13%) — 30분 대기는 3~6배 과장"
    verdict: 제약 조건 과장, 재측정 필요

  Goal:
    hypothesis: "Just Walk Out / 카트 실시간 가격 확인 수요"
    actual: "직접 언급 건수: 0건"
    verdict: 근거 없음 — 데이터 미지지
```

**샘플 편향 요약**: 20대 65%, 편의점 72% — 가설 타깃(50대, 대형마트) 실제 커버 4명(8.7%)에 불과.

---

## 핵심 아티팩트 (Key Artifacts)

```yaml
key_artifacts:
  source_of_truth:
    path: /Users/jycho/Developer/StartUp101/research/survey/raw-data/
    role: 원본 설문 CSV — 모든 정량 분석의 원천. 재분석 시 이 파일에서 재생성.

  survey_insights_team:
    path: /Users/jycho/Developer/StartUp101/research/survey/analysis/Team7_Survey_Analysis_Insights.md
    role: 설문 핵심 인사이트 통합본 (n=46, 셀프계산대 역설 발견)

  survey_insights_individual:
    path: /Users/jycho/Developer/StartUp101/research/survey/analysis/Data_Analysis_Insights_Junyoung.md
    role: 개별 세그먼트 분석 통찰 (조준영)

  persona:
    path: /Users/jycho/Developer/StartUp101/customer-discovery/personas/ICGC_Smart_Shopper.txt
    role: 타깃 페르소나 (Identity·Context·Goal·Constraint 프레임워크)

  interviews:
    path: /Users/jycho/Developer/StartUp101/customer-discovery/interviews/transcripts/
    role: 현장 인터뷰 녹취 텍스트 (정성 데이터 원천)

  mvp_landing_prompt:
    path: /Users/jycho/Developer/StartUp101/product-design/System_Prompt_NoCall.md
    role: MVP 랜딩페이지 v0.dev 시스템 프롬프트 (가설검증용)

  midterm_presentation:
    path: /Users/jycho/Developer/StartUp101/presentations/midterm/
    role: Proof Day 중간발표 자료 (최종본/작업본/대본/평가 템플릿)

  lecture_summary:
    path: /Users/jycho/Developer/StartUp101/lectures/consolidated-summary.md
    role: 전 강의 통합 노트 (LLM 컨텍스트 부트스트랩용)
```

---

## 데이터 소스 맵

| 유형 | 경로 | 포함 내용 |
|---|---|---|
| 정량 데이터 | `/research/survey/` | 원본 CSV, 분석 .md, 시각화 |
| 정성 데이터 | `/customer-discovery/` | 인터뷰 녹취, 페르소나, 설문 청사진 |
| MVP 설계 | `/product-design/` | v0.dev 랜딩 프롬프트, 후속 최적화 문서 |
| 발표 자료 | `/presentations/` | 중간발표 최종본·작업본·대본·평가 템플릿 |
| 강의 자료 | `/lectures/` | OCR 텍스트, 녹음 녹취록, 통합 노트 |
| 내부 도구 | `/_internal/` | llm_skip: true — 참조 금지 |

---

## 네비게이션 규칙

```yaml
navigation_chain:
  1: "루트 CLAUDE.md (프로젝트 전체 구조 파악)"
  2: "이 파일 (.claude/context/project-context.md — 핵심 컨텍스트 부트스트랩)"
  3: "해당 폴더 CLAUDE.md (세부 파일 목록 확인)"
  4: "실제 파일 (작업 수행)"

request_routing:
  인터뷰·설문·페인포인트: customer-discovery/CLAUDE.md
  발표·Proof Day·대본: presentations/CLAUDE.md
  NoCall·랜딩페이지·v0: product-design/CLAUDE.md
  강의·커리큘럼: lectures/CLAUDE.md
  설문 설계·청사진: research/survey/CLAUDE.md
  페르소나·ICGC: customer-discovery/personas/CLAUDE.md
  시각화·차트: research/survey/analysis/

llm_working_rules:
  1: "바이너리(m4a, pptx, docx, pdf) 파일은 직접 읽지 못함. OCR_Text/ 또는 Transcripts/ 텍스트 버전 사용"
  2: "PDF와 OCR 텍스트는 동일 자료의 듀얼 포맷 — 중복 읽기 금지"
  3: "분석 업데이트 시 source_of_truth(CSV)에서 재생성, 기존 .md 파일 덮어쓰기 가능"
  4: "_internal/ 폴더는 llm_skip: true — 절대 참조 금지"
  5: "key_artifacts에 있는 파일이 핵심 컨텍스트 — 먼저 읽을 것"
```

---

## 전략적 분기점 (현재 상태 기준: 2026-06-05)

### 경로 A — Pivot (데이터 지지 방향) ★ 권장

**방향**: "셀프 선호하지만 반복적 오류로 결국 직원 호출해야 하는 쇼핑객" 대상, **직원 개입 없이 셀프 계산 완결**을 Goal로 재설정

**지지 근거**:
- 셀프 선호자 81%가 불편 경험 (강한 Pain 확인)
- 불편의 77% (바코드44% + 직원호출33%)가 동일한 구조적 모순에서 발생
- NoCall 솔루션 (AI 바코드 인식 + 모바일 본인인증 + 쿠폰 자동매칭)과 직접 정합
- 20대 비대면 심리와 솔루션 가치 제안 일치

**NoCall UVP**: "셀프 계산대인데, 진짜로 셀프로 끝낸다" — 직원 호출 0회

---

### 경로 B — Persevere (원가설 유지)

**방향**: 타깃 세그먼트 커버리지 부족(n=4, 8.7%) 인정 + 50대 대형마트 이용자 추가 현장 인터뷰 3~5건 계획 선언

**한계**:
- 현재 데이터로 근거 불충분
- 30분 대기 가정이 실제 데이터 대비 3~6배 과장 — 발표 평가에서 약점 노출 위험
- Just Walk Out 수요 직접 언급 0건 — 가설 핵심 전제가 미검증 상태

---

## MVP 가설 검증 지표

| 단계 | 측정 항목 | 성공 임계값 |
|---|---|---|
| 광고 → 랜딩 도착 | CTR | 3% 이상 |
| 랜딩 → CTA 클릭 | Click-through | 25% 이상 |
| CTA → 폼 제출 | Conversion | 30% 이상 |
| **종합 (방문자 → 등록)** | **Total Conversion** | **8% 이상 → 가설 확증** |
| 체류 시간 | Median time on page | 30초 이상 |

> 7일간 트래픽 100명 미만이면 통계적 의미 없음. 최소 200 visitor 확보 필요.

---

*최종 업데이트: 2026-06-05 | 담당: 조준영*
