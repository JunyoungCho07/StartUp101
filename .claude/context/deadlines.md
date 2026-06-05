# NoCall 프로젝트 — 타임라인 & 마일스톤 (2026-1학기)

> 기준일: **2026-06-05** | 팀: KAIST KEI504 스타트업 마케팅 7조 | 프로젝트: NoCall

---

## 전체 일정표

| 날짜 | 마일스톤 | 산출물 / 파일 | 상태 |
|------|----------|---------------|------|
| 2026-03-09 | OT / 킥오프 강의 | `lectures/recordings-transcripts/2026-03-09_203301_startup_lecture_original.txt` | ✅ 완료 |
| 2026-03-27 | 2차 강의 — 고객발견 방법론 | `lectures/recordings-transcripts/2026-03-27_130717_startup_lecture_original.txt` | ✅ 완료 |
| 2026-04-03 | 3차 강의 — Mom Test / 인터뷰 설계 | `lectures/recordings-transcripts/2026-04-03_130405_startup_lecture_original.txt` | ✅ 완료 |
| 2026-04-10 | 4차 강의 — 페르소나·ICGC 프레임워크 | `lectures/recordings-transcripts/2026-04-10_130854_startup_lecture_original.txt` | ✅ 완료 |
| 2026-04-15 | 설문 배포·수집 완료 (n=46) | `research/survey/raw-data/` (CSV) | ✅ 완료 |
| 2026-04-16 | 설문 분석 보고서 작성 | `research/survey/analysis/` — 셀프 선호자 81% 불편 경험, 직원 호출 구조적 모순 발견 | ✅ 완료 |
| 2026-04-17 | 5차 강의 — Proof Day 준비 | `lectures/recordings-transcripts/2026-04-17_130328_startup_lecture_original.txt` | ✅ 완료 |
| 2026-05-08 | 6차 강의 — v0.dev AI 랜딩페이지 실습 | `lectures/recordings-transcripts/2026-05-08_131457_startup_lecture_original.txt` | ✅ 완료 |
| 2026-05-08 | NoCall v0.dev 랜딩 시스템 프롬프트 완성 | `product-design/System_Prompt_NoCall.md` — 베타 사전등록 전환율 목표 8% | ✅ 완료 |
| 2026-05-11 | 현장 인터뷰 5건 수행 | `customer-discovery/interviews/` — 셀프계산대 역설(비대면 선호 + 직원 호출 강제) 정성 검증 | ✅ 완료 |
| 2026-05-15 | 7차 강의 — 중간발표 피드백·스토리텔링 | `lectures/recordings-transcripts/2026-05-15_131214_startup_lecture_original.txt` | ✅ 완료 |
| 2026-05-xx | **Proof Day 중간발표** 제출 | `presentations/midterm/final/Team7_Proof_Day_Midterm_Final.pptx` — 심 교수님 평가 통과 | ✅ 완료 |
| 2026-05-29 | 기말 발표요령 자료 배포 | `lectures/pdfs/팀별 기말 발표요령_20260529_PDF.pdf` (강의 자료) | ✅ 완료 |
| **2026-06-05** | **폴더 영문화 전체 재구조화** | 루트 CLAUDE.md reorg_log 반영 — 한국어 폴더명 → 영어 통일 | ✅ 완료 (오늘) |
| 2026-06-xx | **v0 smoke test — 7일 트래픽 운영** | 랜딩페이지 배포 후 최소 200 visitor 확보, 베타 사전등록 집계 | 🔄 진행중 |
| **2026-06-12** | **기말 Demo Day 발표 (금)** | `presentations/` (기말본 작성 필요 — Final_Presentation_Checklist.txt 기준) | 📅 예정 |
| **2026-07-xx** | **NoCall 베타 출시 목표** | MVP 앱 + 협력 매장 협의 (`product-design/System_Prompt_NoCall.md` FAQ 기준) | 📅 예정 |

---

## D-Day 카운트다운 (기준: 2026-06-05)

| 마일스톤 | 예상 날짜 | D-Day |
|----------|-----------|-------|
| v0 smoke test 완료 (7일 운영) | ~2026-06-12 | **D-7** |
| 기말 Demo Day 발표 | **2026-06-12 (금)** | **D-7** |
| 베타 출시 | 2026-07-xx | D-26 이상 |

> 기말 Demo Day: **2026-06-12 (금요일)** — `lectures/ocr-text/Syllabus.txt` 15주차 항목으로 확인됨.

---

## 핵심 산출물 — 발표·대본 참조 가이드

> **바이너리 .pptx 파일은 LLM이 직접 읽지 못합니다.**
> 발표 내용 및 대본은 아래 텍스트 파일을 참조하세요.

| 발표 | 바이너리 (열람 불가) | 텍스트 초안 (참조 가능) |
|------|----------------------|------------------------|
| Proof Day 중간발표 | `presentations/midterm/final/Team7_Proof_Day_Midterm_Final.pptx` | `presentations/midterm/speech-drafts/` 텍스트 초안 및 `presentations/midterm/Evaluation_Template.md` |
| 기말 Demo Day | 기말본 (미완성) | `lectures/ocr-text/Team_Final_Presentation_Guide.txt`, `lectures/ocr-text/Final_Presentation_Checklist.txt` |

---

## NoCall 가설 검증 진행 상황 요약

| 단계 | 내용 | 근거 |
|------|------|------|
| 문제 발견 | 셀프계산대 선호자 21명 중 17명(81%)이 불편 경험 | 설문 n=46, 2026-04-16 |
| 구조적 모순 확인 | 바코드 오류(44%) + 직원 호출 필요(33%) + 성인인증(15%) = 셀프의 비대면 가치 훼손 | 설문 분석 |
| 페르소나 정의 | ICGC Smart Shopper — 사회적 마찰 회피(Social Friction Avoidance)가 핵심 동기 | `customer-discovery/personas/ICGC_Smart_Shopper.txt` |
| MVP 가설 | "셀프 계산대인데, 진짜로 셀프로 끝낸다" — 직원 호출 0회 | `product-design/System_Prompt_NoCall.md` |
| 가설 검증 지표 | 방문자 → 베타 사전등록 전환율 **8% 이상** = 가설 확증 | v0 smoke test 진행중 |

---

## 다음 액션 아이템 (2026-06-05 기준)

1. ~~즉시: Syllabus.txt에서 Demo Day 날짜 확인~~ → **완료. 2026-06-12 (금) 확인됨**
2. **D-7 이내**: v0 랜딩페이지 배포 + 카카오톡 광고 또는 KAIST 커뮤니티 SNS로 200 visitor 확보
3. **기말 발표 전**: `lectures/ocr-text/Final_Presentation_Checklist.txt` 및 `Team_Final_Presentation_Guide.txt` 기반으로 Demo Day 스크립트 작성
4. **2026-07 베타 출시**: 협력 매장 협의 시작, MVP 앱 개발 우선순위 확정

---

*최종 업데이트: 2026-06-05 (Demo Day 날짜 확정 + 경로 수정) | 작성: Claude (Cowork) | 팀원: 조준영 (chojunyoung070523@gmail.com)*
