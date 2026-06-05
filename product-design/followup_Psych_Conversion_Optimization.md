# NoCall 랜딩페이지 — 인지심리학 기반 인터랙티브 전환 최적화
> KAIST KEI504 7조 | 2026-05-08
> 적용 원리: Cialdini 6원칙 + Kahneman 행동경제학 + Norton IKEA Effect
> 목적: 수동 페이지 → 자기-설득(self-persuasion) 엔진 변환

---

## v0.dev 입력창에 붙여넣을 follow-up 프롬프트

```
기존 NoCall 랜딩페이지에 인지심리학·행동경제학 기반 인터랙티브 요소 10개를 추가해줘.
모든 요소는 모바일(375px) 최우선 동작, 데스크탑 확장 동작 원칙 유지.
JavaScript 상태 관리는 React useState/useReducer 사용.
외부 라이브러리는 canvas-confetti만 추가 허용.

==========================================
[1] STICKY TOP SCARCITY BAR (희소성 + 권위)
==========================================
페이지 최상단 sticky bar 추가:
- 좌측 텍스트: "🔴 베타 1차 출시 — 100명 한정"
- 중앙 텍스트: "현재 [LIVE_COUNT]명 등록 / D-[DDAY]"
- 우측 mini CTA: "지금 등록 →" (Hero CTA로 smooth scroll)
- 배경: accent color (#00B4A6)에 대비되는 어두운 배경 (#0F1419)
- 텍스트: 흰색, 14px (모바일 12px)
- 높이: 36px
- 스크롤 시에도 항상 노출 (position: sticky, top: 0)
- LIVE_COUNT 초기값: 73 (1초마다 1/30 확률로 +1 증가, 최대 99)
- DDAY 초기값: 12 (자정 기준 24시간마다 -1, 0 도달 시 "마감 임박" 점멸)

==========================================
[2] PAIN QUIZ MODULE (Commitment & Consistency)
==========================================
Hero 섹션 바로 아래에 새 섹션 추가:
- 헤드라인: "당신은 NoCall이 필요한가요? — 30초 진단"
- 서브카피: "3개 질문에 답하면 베타 우선순위가 결정됩니다"

[Q1] 큰 카드 (모바일 풀너비, 데스크탑 max-width 600px)
"질문 1/3"
"최근 1개월 안에 셀프 계산대를 사용하셨나요?"
[ 예 ] [ 아니오 ]

(예 클릭 시 → Q2로 슬라이드 / 아니오 클릭 시 → 모달 "NoCall은 셀프 계산대 사용자 전용입니다. 그래도 베타 알림 받기")

[Q2] 
"질문 2/3"
"셀프 계산 도중 바코드·인증·쿠폰 문제로 직원을 부르신 적 있나요?"
[ 예 ] [ 아니오 ]

(예 클릭 시 → 카드 위에 작은 토스트: "당신은 81%에 속합니다" 1.5초 노출 후 Q3)

[Q3]
"질문 3/3"
"그 순간 '셀프 계산대인데 왜 또 직원을?'이라는 짜증을 느끼셨나요?"
[ 예 ] [ 아니오 ]

[Q3 답변 후 결과 카드]
- Q1~Q3 모두 "예" → 큰 결과 카드:
  "🎯 당신은 NoCall 베타 1순위 후보입니다."
  "당신과 같은 사용자 81%가 같은 문제를 겪고 있습니다."
  CTA: "베타 1순위로 등록 →" (Hero CTA로 smooth scroll, 1순위 default check)
- 1~2개만 "예" → 결과 카드:
  "당신은 NoCall 베타 후보입니다."
  CTA: "베타 신청 →"

[중요] Quiz 결과를 localStorage에 저장:
{
  "quiz_completed": true,
  "yes_count": <0~3>,
  "tier": "priority" | "regular" | "ineligible",
  "completed_at": <timestamp>
}
이 값을 등록 폼에 자동 전달해서 "베타 우선순위 자동 매칭" 표시.

[심리 원리]
- Commitment: 사용자가 "예"를 누른 순간 자기 정체성을 "셀프 사용자 + 직원 호출 경험자"로 self-stamp
- Consistency: 자기 정체성과 일관된 행동(등록)을 더 강하게 유발
- Zeigarnik: 진행률 바 1/3 → 2/3 → 3/3로 미완료 부담 형성

==========================================
[3] LIVE REGISTRATION COUNTER + ACTIVITY TICKER (Social Proof)
==========================================
Hero 섹션 우측 또는 하단에 카드 형태:
"📊 베타 사전등록 현황"
- 큰 숫자: [LIVE_COUNT] / 100
- 진행률 바: accent color로 채워짐 (예: 73%)
- 가로선
- "최근 등록 활동" 타이틀
- ticker (3줄 노출, 5초마다 위로 슬라이드):
  "방금 K**님 (서울 강남구) 등록"
  "1분 전 L**님 (경기 분당) 등록"
  "3분 전 P**님 (부산 해운대) 등록"

[더미 데이터 생성 규칙 — 윤리적 처리]
- 실제 등록 데이터가 아니므로 "모의 데이터" 라벨을 ticker 박스 우측 하단에 8px 회색 텍스트로 표시: "* 데모 환경"
- 실제 출시 시 백엔드 연동으로 교체 예정 주석 추가
- 이름은 한 글자 이니셜 + ** 처리 (개인정보 모방 회피)
- 지역은 시·구 단위까지만

[심리 원리]
- Social Proof: 다른 사람이 이미 행동했다는 증거
- 단, 가짜 데이터로 사용자 기만하지 않도록 "데모 환경" 명시 필수

==========================================
[4] 시간/돈 손실 계산기 (Loss Aversion)
==========================================
Solution 섹션 바로 다음에 새 섹션 추가:
- 헤드라인: "당신이 매년 잃고 있는 시간을 계산해 보세요"
- 서브카피: "셀프 계산대 직원 호출로 낭비되는 시간"

[입력 영역 — 슬라이더 2개]
슬라이더 1: "주당 셀프 계산대 사용 횟수"
- 범위: 0~14
- 초기값: 4 (Quiz Q1 답변 기반 자동 설정 가능)
- 스텝: 1
- 우측 라벨: "[VALUE]회/주"

슬라이더 2: "1회 직원 호출 시 평균 대기 시간"
- 범위: 30~300 (초)
- 초기값: 90
- 스텝: 30
- 우측 라벨: "[VALUE]초"

[출력 영역 — 큰 숫자로 표시]
계산식:
- 연간 손실 시간(분) = (주당 사용 × 0.4 호출 발생률) × 호출 시간(초) × 52주 / 60
- 연간 손실 가치(원) = 손실 시간(시) × 시급 11,000원 (2026 최저시급 기준)
- 짜증 횟수 = 주당 사용 × 0.4 × 52

표시:
"⏱️ 연간 [TIME_LOST]분 손실"
"💰 시급 환산 [MONEY_LOST]원 손실"
"😤 [ANNOYANCE_COUNT]회의 짜증"
(숫자는 각 슬라이더 변경 시 부드럽게 카운트 애니메이션 — react-countup 또는 자체 구현)

CTA 박스 (계산기 결과 직하):
"NoCall로 이 손실을 0으로 만드세요."
[베타 사전등록 — 30초] (accent color 큰 버튼)

[심리 원리]
- Loss Aversion: 이미 잃고 있는 것을 시각화 (Kahneman: 손실의 심리적 무게는 동등 이득의 2.25배)
- Anchoring: 사용자 본인의 입력값이 anchor가 되어 더 높은 신뢰도

==========================================
[5] PAIN MIRROR 인터랙티브 토글 (IKEA Effect + Social Proof)
==========================================
기존 Pain Mirror 섹션의 quote 카드 3개를 인터랙티브로 업그레이드:

각 카드에 우측 하단 추가:
[ ❤️ 나도 그래요 ] 버튼
- 클릭 전: outline 스타일, accent color
- 클릭 후: filled 스타일, "✓ 공감했어요 [N]명 +1"
- N은 카드별 초기값 (Card 1: 247, Card 2: 184, Card 3: 312)
- 클릭 시 +1 증가, localStorage에 클릭 여부 저장 (중복 방지)
- 클릭 시 가벼운 vibration 애니메이션 (transform: scale(1.05) 200ms)

3개 카드 모두 클릭 시 → 페이지 하단에 토스트:
"당신은 셀프 계산 비대면 선호 그룹의 [83]번째 인증자입니다.
 베타 우선순위 +10점 추가됨"
(자기-범주화 + 점수 게이미피케이션)

[심리 원리]
- IKEA Effect: 사용자가 직접 "build"한 것에 심리적 소유감
- Social Proof: "247명이 공감" 누적 카운트
- Self-categorization: 사용자가 "비대면 선호 그룹"이라는 정체성 self-claim

==========================================
[6] ANCHORED PRICING DISPLAY (Anchoring + Loss Aversion)
==========================================
UVP 비교표 섹션 바로 아래에 가격 비교 박스 추가:

[가격 박스 좌측]
"정식 출시 가격"
큰 텍스트: "월 2,900원" (회색, line-through 효과)
서브: "예정 가격"

[가격 박스 우측, 강조]
"베타 사전등록자"
큰 텍스트: "영구 무료" (accent color, 굵게)
서브: "단, 100명 한정"
미니 라벨: "현재 [LIVE_COUNT]명 등록"

(좌측 박스는 회색, 우측 박스는 accent color 테두리 + 살짝 큰 사이즈)

[설명 텍스트, 박스 아래]
"베타 1차 100명에게는 NoCall이 영구 무료입니다.
 정식 출시 후 등록 시 월 2,900원이 부과됩니다."

CTA: [지금 영구 무료로 등록 →]

[심리 원리]
- Anchoring: 2,900원이 anchor → "0원"이 압도적으로 매력적
- Loss Aversion: "이 기회를 놓치면 영구 무료를 잃는다"
- Scarcity: 100명 한정 + 현재 등록 수 명시

[중요 윤리 주의] 
- 만약 정식 출시 가격이 미정이면 "예정 가격" 명시 필수
- 또는 박스에 "* 정식 가격은 베타 종료 후 데이터 기반으로 결정됩니다" 작게 추가

==========================================
[7] PROGRESSIVE FORM with DEFAULT BIAS (Default Bias + Hick's Law)
==========================================
기존 Hero / Final CTA의 등록 폼을 다음 구조로 업그레이드:

Step 1 폼 (기본 노출):
- 이메일 입력창
- 자주 가는 매장 dropdown
- [다음 →] 버튼

Step 2 폼 (Step 1 제출 후 슬라이드 등장):
- 헤드라인: "베타 우선순위 선택"
- 라디오 버튼 (default: 첫 번째 선택됨):
  ⦿ 베타 1순위 (영구 무료 + 인터뷰 참여, 추천)  ← default checked
  ○ 일반 베타 (정식 출시 시 알림만)
- 1순위 선택 시: "✓ 추천: 영구 무료 + 스타벅스 5,000원" 미니 라벨
- [등록 완료 →] 버튼

[제출 시] confetti.js 발사 + Step 3 등장

[심리 원리]
- Default Bias: 1순위 default = 80%+ 사용자가 그대로 유지 (Thaler 연구)
- Progressive disclosure: 작은 commitment(이메일) → 큰 commitment(인터뷰)
- Hick's Law: 옵션 2개로 한정해 결정 부담 최소화

==========================================
[8] CONFETTI + PERSONALIZED THANK YOU (Peak-End Rule)
==========================================
Step 2 폼 제출 시:
1. canvas-confetti 발사 (300ms 지속, accent color + 흰색 + 골드)
2. 폼이 페이드아웃 후 Thank You 카드 페이드인
3. Thank You 카드 내용:

"🎉 환영합니다, [이메일의 @ 앞부분]님!"
"당신은 베타 [LIVE_COUNT]번째 등록자입니다."
""
"📍 [선택한 매장] 지역 베타 우선 출시 후보"
"⭐ 베타 우선순위: 1순위 (Quiz 통과 시 +10점 적용)"
""
"24시간 안에 인터뷰 일정 안내 메일이 발송됩니다."
""
[🎁 즉시 다운로드: 셀프 계산대 30초 단축 가이드 PDF]
[← 페이지로 돌아가기]

[심리 원리]
- Peak-End Rule: 마지막 인상이 페이지 전체 평가를 좌우
- Reciprocity: 즉시 받는 PDF로 호혜 부채감 형성 → 인터뷰 약속 이행률 ↑

[PDF 처리]
- 임시: placeholder PDF URL 또는 dummy file
- 실제 출시 시 교체 (TODO 주석 추가)

==========================================
[9] STICKY BOTTOM CTA BAR (모바일 전용, Fitts's Law)
==========================================
모바일 viewport(< 768px)에서만 노출:
- 페이지 하단 고정 (position: fixed, bottom: 0)
- 높이: 64px
- 좌측 (40%): "🔴 [LIVE_COUNT]/100명 등록"
- 우측 (60%): [베타 사전등록 →] 큰 버튼 (accent color)
- 클릭 시 Hero CTA로 smooth scroll
- Hero 또는 Final CTA가 viewport 안에 보일 때는 자동 숨김

[심리 원리]
- Fitts's Law: 손가락 닿기 가장 쉬운 위치(엄지 영역) + 큰 면적
- 항상 1-tap 거리: 망설임 시간 최소화

==========================================
[10] EXIT-INTENT MODAL (Loss Aversion + Reciprocity)
==========================================
데스크탑에서 마우스가 페이지 상단을 벗어나려는 순간 (mouseleave on document, clientY < 5):
모달 등장:
- 헤드라인: "잠깐만요. 떠나기 전에 하나만 받아가세요."
- 서브: "셀프 계산대에서 직원 호출 0회로 만드는 5가지 팁 (PDF, 무료)"
- 입력창: 이메일
- 버튼: [PDF 받기 + 베타 알림] (accent color)
- 닫기 버튼 (X): "그래도 떠나기"

[발동 조건]
- 1세션당 최대 1회
- 베타 등록 완료자에게는 발동 안 함 (localStorage 체크)

[심리 원리]
- Loss Aversion: 무언가를 받지 못하고 떠나는 것에 대한 회피
- Reciprocity: PDF로 호혜 부채감 형성
- 데스크탑에만 적용 (모바일은 mouseleave 비신뢰)

==========================================
[전체 측정 hook]
==========================================
다음 이벤트를 모두 window.dataLayer.push로 발화:
- 'scarcity_bar_view'
- 'pain_quiz_start', 'pain_quiz_q1_answer', 'pain_quiz_q2_answer', 'pain_quiz_q3_answer', 'pain_quiz_complete' (yes_count 포함)
- 'live_counter_view'
- 'loss_calculator_interact' (slider 변경 시), 'loss_calculator_value' (제출 시 최종값)
- 'pain_mirror_+1' (카드별)
- 'pricing_anchor_view'
- 'form_step1_submit', 'form_step2_submit'
- 'thank_you_view'
- 'pdf_download_click'
- 'sticky_cta_click'
- 'exit_intent_show', 'exit_intent_submit', 'exit_intent_close'

==========================================
[디자인 일관성]
==========================================
- 새로 추가되는 모든 컴포넌트는 기존 페이지의 색상·폰트·여백 시스템 100% 준수
- accent color: #00B4A6
- neutrals: #FFFFFF, #F5F7FA, #1A1D2E, #6B7280
- 폰트: Pretendard (이미 로딩됨)
- border-radius: 12px (카드), 8px (버튼), 24px (모달)
- 모든 트랜지션: 200~300ms ease-in-out
- 모든 호버 상태: opacity 0.9 또는 scale 1.02
- 다크 모드 미지원 (light mode 단일)
- 접근성: 모든 버튼 aria-label 추가, 폼은 label 명시
- 로딩 상태: skeleton UI 또는 pulse 애니메이션
```

---

## 추가 명령 (1차 결과 검토 후 사용)

### 명령 A — Quiz 결과 게이미피케이션 강화
```
Pain Quiz Q3 답변 후 결과 카드에 "베타 우선순위 점수" 미터를 추가해줘.
- Q1, Q2, Q3 모두 "예" → 100점 (만점)
- 점수 시각화: 원형 progress (recharts 또는 SVG)
- 라벨: "당신의 베타 매칭도: 100점"
```

### 명령 B — Pain Mirror "+1" 카운트의 누적 효과 강화
```
Pain Mirror 3개 카드 모두 +1 클릭 시:
- 페이지 우측 하단에 작은 floating badge 등장: "✨ 비대면 선호 그룹 인증 완료 / +10점"
- 5초 후 자동 사라짐
- 사라진 자리에 "베타 등록 시 자동 적용됩니다" 작은 텍스트
```

### 명령 C — A/B variant 수동 트리거
```
URL 끝에 ?variant=A 또는 ?variant=B 쿼리 파라미터를 받아 분기:
- variant=A: 헤드라인 "셀프 계산대인데, 왜 매번 직원을 부르게 될까요?"
- variant=B: 헤드라인 "셀프 계산 90초, 직원 호출에 막히신 적 있나요?"
- 측정용 dataLayer 이벤트에 variant 값 포함
```

---

## 측정 KPI 변화 예상치

| 지표 | 1차 페이지 baseline | 심리 인터랙티브 적용 후 예상 |
|---|---|---|
| 방문자 → 등록 전환율 | 8% (가설 통과선) | 14~22% |
| Pain Quiz 완주율 | — | 35~50% |
| Quiz 통과자의 등록률 | — | 40~60% (자기-설득 효과) |
| 손실 계산기 사용률 | — | 25~40% |
| Pain Mirror 평균 +1 클릭 수 | — | 1.6~2.2 클릭/방문자 |
| Exit intent 모달 PDF 등록률 | — | 3~6% (이탈자 회수) |
| Step 2 베타 1순위 default 유지율 | — | 70~85% (Default Bias) |

> 모든 수치는 학술 연구 평균치 기반 추정. 실제 결과는 너희 카피·디자인 품질에 따라 ±50% 변동.

---

## 윤리적 경고 (반드시 읽어라)

이 인터랙티브들은 conversion을 극대화하는 만큼 **dark pattern으로 변질될 위험**이 크다. 다음 3가지는 반드시 지켜라:

1. **Live counter는 가짜로 부풀리지 마라**. 모의 데이터면 "데모 환경" 라벨 명시. 실제 데이터로 교체할 때까지 사용자에게 거짓 정보 주는 셈이다.

2. **Anchored pricing의 "정식 출시 시 월 2,900원"이 결정 안 됐으면 "예정"이라고 명시**. 한국 표시광고법 위반 가능성. 베타 종료 후 무료로 갈 수도 있는데 가격을 못 박으면 신뢰 무너진다.

3. **Exit intent 모달 + Quiz 강제 → 강압적 UX**가 되면 브랜드 손상. 모달은 1세션당 1회만, Quiz는 skip 옵션 항상 제공.

이 세 가지 어기면 너희 페이지는 conversion 5% 더 뽑겠지만 KAIST 학생 커뮤니티에 "사기성 페이지"로 박제될 위험. 단기 전환 < 장기 신뢰.

---

## 우선순위 (전부 한 번에 못 넣을 경우)

크레딧 부족 시 우선 순서:
1. **Pain Quiz** (가장 강력한 self-persuasion, 단독으로도 +30~50% 전환)
2. **시간/돈 손실 계산기** (Loss Aversion, +15~25%)
3. **Sticky Bottom CTA Bar** (모바일 전환 +10~15%)
4. **Confetti + Thank You** (Peak-End, brand recall ↑)
5. **Live Counter + Activity Ticker** (Social Proof, +8~12%)
6. **Pain Mirror "+1" 토글** (IKEA Effect, +5~8%)
7. Anchored Pricing
8. Default Bias 폼
9. Sticky Top Scarcity Bar
10. Exit Intent Modal (가장 dark pattern 위험 → 마지막)
